
find_entry:
[00031a5c] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00031a60] 2649                      movea.l    a1,a3
[00031a62] 2628 000e                 move.l     14(a0),d3
[00031a66] e48b                      lsr.l      #2,d3
[00031a68] 2468 0004                 movea.l    4(a0),a2
[00031a6c] 601a                      bra.s      find_entry_1
find_entry_4:
[00031a6e] 2252                      movea.l    (a2),a1
[00031a70] 43e9 0016                 lea.l      22(a1),a1
[00031a74] 204b                      movea.l    a3,a0
[00031a76] 4eb9 0007 68fe            jsr        strcmp
[00031a7c] 4a40                      tst.w      d0
[00031a7e] 6604                      bne.s      find_entry_2
[00031a80] 2052                      movea.l    (a2),a0
[00031a82] 600a                      bra.s      find_entry_3
find_entry_2:
[00031a84] 584a                      addq.w     #4,a2
[00031a86] 5343                      subq.w     #1,d3
find_entry_1:
[00031a88] 4a43                      tst.w      d3
[00031a8a] 6ee2                      bgt.s      find_entry_4
[00031a8c] 91c8                      suba.l     a0,a0
find_entry_3:
[00031a8e] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00031a92] 4e75                      rts

add_entry:
[00031a94] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00031a98] 2448                      movea.l    a0,a2
[00031a9a] 2849                      movea.l    a1,a4
[00031a9c] 7004                      moveq.l    #4,d0
[00031a9e] 4eb9 0001 62aa            jsr        objextent
[00031aa4] 4a40                      tst.w      d0
[00031aa6] 6704                      beq.s      add_entry_1
[00031aa8] 70ff                      moveq.l    #-1,d0
[00031aaa] 604e                      bra.s      add_entry_2
add_entry_1:
[00031aac] 262a 000e                 move.l     14(a2),d3
[00031ab0] e48b                      lsr.l      #2,d3
[00031ab2] 5343                      subq.w     #1,d3
[00031ab4] 58aa 000e                 addq.l     #4,14(a2)
[00031ab8] 266a 0004                 movea.l    4(a2),a3
[00031abc] 3003                      move.w     d3,d0
[00031abe] 48c0                      ext.l      d0
[00031ac0] e588                      lsl.l      #2,d0
[00031ac2] d7c0                      adda.l     d0,a3
[00031ac4] 6008                      bra.s      add_entry_3
add_entry_5:
[00031ac6] 2753 0004                 move.l     (a3),4(a3)
[00031aca] 594b                      subq.w     #4,a3
[00031acc] 5343                      subq.w     #1,d3
add_entry_3:
[00031ace] 4a43                      tst.w      d3
[00031ad0] 6b14                      bmi.s      add_entry_4
[00031ad2] 2253                      movea.l    (a3),a1
[00031ad4] 43e9 0016                 lea.l      22(a1),a1
[00031ad8] 41ec 0016                 lea.l      22(a4),a0
[00031adc] 4eb9 0007 68fe            jsr        strcmp
[00031ae2] 4a40                      tst.w      d0
[00031ae4] 6be0                      bmi.s      add_entry_5
add_entry_4:
[00031ae6] 274c 0004                 move.l     a4,4(a3)
[00031aea] 202a 0012                 move.l     18(a2),d0
[00031aee] 6708                      beq.s      add_entry_6
[00031af0] 2040                      movea.l    d0,a0
[00031af2] 0068 0020 0056            ori.w      #$0020,86(a0)
add_entry_6:
[00031af8] 4240                      clr.w      d0
add_entry_2:
[00031afa] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00031afe] 4e75                      rts

del_entry:
[00031b00] 2f03                      move.l     d3,-(a7)
[00031b02] 2f0a                      move.l     a2,-(a7)
[00031b04] 2028 000e                 move.l     14(a0),d0
[00031b08] e488                      lsr.l      #2,d0
[00031b0a] 5340                      subq.w     #1,d0
[00031b0c] 2468 0004                 movea.l    4(a0),a2
[00031b10] 4241                      clr.w      d1
[00031b12] 6002                      bra.s      del_entry_1
del_entry_3:
[00031b14] 5241                      addq.w     #1,d1
del_entry_1:
[00031b16] b041                      cmp.w      d1,d0
[00031b18] 6d0c                      blt.s      del_entry_2
[00031b1a] 3401                      move.w     d1,d2
[00031b1c] 48c2                      ext.l      d2
[00031b1e] e58a                      lsl.l      #2,d2
[00031b20] b3f2 2800                 cmpa.l     0(a2,d2.l),a1
[00031b24] 66ee                      bne.s      del_entry_3
del_entry_2:
[00031b26] b041                      cmp.w      d1,d0
[00031b28] 6d2c                      blt.s      del_entry_4
[00031b2a] 6014                      bra.s      del_entry_5
del_entry_6:
[00031b2c] 3401                      move.w     d1,d2
[00031b2e] 48c2                      ext.l      d2
[00031b30] e58a                      lsl.l      #2,d2
[00031b32] 3601                      move.w     d1,d3
[00031b34] 48c3                      ext.l      d3
[00031b36] e58b                      lsl.l      #2,d3
[00031b38] 25b2 2804 3800            move.l     4(a2,d2.l),0(a2,d3.l)
[00031b3e] 5241                      addq.w     #1,d1
del_entry_5:
[00031b40] b041                      cmp.w      d1,d0
[00031b42] 6ee8                      bgt.s      del_entry_6
[00031b44] 59a8 000e                 subq.l     #4,14(a0)
[00031b48] 2028 0012                 move.l     18(a0),d0
[00031b4c] 6708                      beq.s      del_entry_4
[00031b4e] 2240                      movea.l    d0,a1
[00031b50] 0069 0020 0056            ori.w      #$0020,86(a1)
del_entry_4:
[00031b56] 245f                      movea.l    (a7)+,a2
[00031b58] 261f                      move.l     (a7)+,d3
[00031b5a] 4e75                      rts

delete:
[00031b5c] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00031b60] 2448                      movea.l    a0,a2
[00031b62] 2279 0010 1f12            movea.l    ACSblk,a1
[00031b68] b1e9 0240                 cmpa.l     576(a1),a0
[00031b6c] 6654                      bne.s      delete_1
[00031b6e] 2650                      movea.l    (a0),a3
[00031b70] 4269 0248                 clr.w      584(a1)
[00031b74] 6042                      bra.s      delete_2
delete_3:
[00031b76] 3203                      move.w     d3,d1
[00031b78] 48c1                      ext.l      d1
[00031b7a] 2001                      move.l     d1,d0
[00031b7c] d080                      add.l      d0,d0
[00031b7e] d081                      add.l      d1,d0
[00031b80] e788                      lsl.l      #3,d0
[00031b82] 206a 0014                 movea.l    20(a2),a0
[00031b86] 41f0 0818                 lea.l      24(a0,d0.l),a0
[00031b8a] 2868 000c                 movea.l    12(a0),a4
[00031b8e] 342c 0038                 move.w     56(a4),d2
[00031b92] c47c 0100                 and.w      #$0100,d2
[00031b96] 6720                      beq.s      delete_2
[00031b98] 204a                      movea.l    a2,a0
[00031b9a] 3003                      move.w     d3,d0
[00031b9c] 4eb9 0004 492a            jsr        Adr_del
[00031ba2] 026c feff 0038            andi.w     #$FEFF,56(a4)
[00031ba8] 224c                      movea.l    a4,a1
[00031baa] 2053                      movea.l    (a3),a0
[00031bac] 2a6b 001e                 movea.l    30(a3),a5
[00031bb0] 4e95                      jsr        (a5)
[00031bb2] 006a 0020 0056            ori.w      #$0020,86(a2)
delete_2:
[00031bb8] 4eb9 0004 484c            jsr        Adr_next
[00031bbe] 3600                      move.w     d0,d3
[00031bc0] 6eb4                      bgt.s      delete_3
delete_1:
[00031bc2] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00031bc6] 4e75                      rts

li_changename:
[00031bc8] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00031bcc] 2079 0010 1f12            movea.l    ACSblk,a0
[00031bd2] 4268 0248                 clr.w      584(a0)
[00031bd6] 4eb9 0004 484c            jsr        Adr_next
[00031bdc] 3600                      move.w     d0,d3
[00031bde] 6f00 008c                 ble        li_changename_1
[00031be2] 48c0                      ext.l      d0
[00031be4] 2200                      move.l     d0,d1
[00031be6] d281                      add.l      d1,d1
[00031be8] d280                      add.l      d0,d1
[00031bea] e789                      lsl.l      #3,d1
[00031bec] 2079 0010 1f12            movea.l    ACSblk,a0
[00031bf2] 2268 0258                 movea.l    600(a0),a1
[00031bf6] 2069 0014                 movea.l    20(a1),a0
[00031bfa] 41f0 1818                 lea.l      24(a0,d1.l),a0
[00031bfe] 2651                      movea.l    (a1),a3
[00031c00] 2468 000c                 movea.l    12(a0),a2
[00031c04] 2f2b 0010                 move.l     16(a3),-(a7)
[00031c08] 2053                      movea.l    (a3),a0
[00031c0a] 224a                      movea.l    a2,a1
[00031c0c] 4eb9 0001 46c2            jsr        new2label
[00031c12] 584f                      addq.w     #4,a7
[00031c14] 4a40                      tst.w      d0
[00031c16] 6754                      beq.s      li_changename_1
[00031c18] 2f2b 0010                 move.l     16(a3),-(a7)
[00031c1c] 486a 0016                 pea.l      22(a2)
[00031c20] 224a                      movea.l    a2,a1
[00031c22] 2053                      movea.l    (a3),a0
[00031c24] 4eb9 0001 6448            jsr        objname
[00031c2a] 504f                      addq.w     #8,a7
[00031c2c] 4eb9 0004 4a26            jsr        Adr_unselect
[00031c32] 224a                      movea.l    a2,a1
[00031c34] 206b 0004                 movea.l    4(a3),a0
[00031c38] 6100 fec6                 bsr        del_entry
[00031c3c] 224a                      movea.l    a2,a1
[00031c3e] 206b 0004                 movea.l    4(a3),a0
[00031c42] 6100 fe50                 bsr        add_entry
[00031c46] 202b 0026                 move.l     38(a3),d0
[00031c4a] 670a                      beq.s      li_changename_2
[00031c4c] 224a                      movea.l    a2,a1
[00031c4e] 2053                      movea.l    (a3),a0
[00031c50] 2840                      movea.l    d0,a4
[00031c52] 7002                      moveq.l    #2,d0
[00031c54] 4e94                      jsr        (a4)
li_changename_2:
[00031c56] 266a 0012                 movea.l    18(a2),a3
[00031c5a] 200b                      move.l     a3,d0
[00031c5c] 670e                      beq.s      li_changename_1
[00031c5e] 93c9                      suba.l     a1,a1
[00031c60] 303c 2710                 move.w     #$2710,d0
[00031c64] 204b                      movea.l    a3,a0
[00031c66] 246b 0004                 movea.l    4(a3),a2
[00031c6a] 4e92                      jsr        (a2)
li_changename_1:
[00031c6c] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00031c70] 4e75                      rts

li_setfree:
[00031c72] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00031c76] 2079 0010 1f12            movea.l    ACSblk,a0
[00031c7c] 2468 0258                 movea.l    600(a0),a2
[00031c80] 2652                      movea.l    (a2),a3
[00031c82] 4268 0248                 clr.w      584(a0)
[00031c86] 604e                      bra.s      li_setfree_1
li_setfree_3:
[00031c88] 3203                      move.w     d3,d1
[00031c8a] 48c1                      ext.l      d1
[00031c8c] 2001                      move.l     d1,d0
[00031c8e] d080                      add.l      d0,d0
[00031c90] d081                      add.l      d1,d0
[00031c92] e788                      lsl.l      #3,d0
[00031c94] 286a 0014                 movea.l    20(a2),a4
[00031c98] 49f4 0818                 lea.l      24(a4,d0.l),a4
[00031c9c] 206a 0014                 movea.l    20(a2),a0
[00031ca0] 0270 ffef 080a            andi.w     #$FFEF,10(a0,d0.l)
[00031ca6] 206c 000c                 movea.l    12(a4),a0
[00031caa] 3428 0038                 move.w     56(a0),d2
[00031cae] c47c 0100                 and.w      #$0100,d2
[00031cb2] 6618                      bne.s      li_setfree_2
[00031cb4] 2253                      movea.l    (a3),a1
[00031cb6] 0069 0001 0006            ori.w      #$0001,6(a1)
[00031cbc] 5268 0036                 addq.w     #1,54(a0)
[00031cc0] 0068 0100 0038            ori.w      #$0100,56(a0)
[00031cc6] 006a 0020 0056            ori.w      #$0020,86(a2)
li_setfree_2:
[00031ccc] 3003                      move.w     d3,d0
[00031cce] 204a                      movea.l    a2,a0
[00031cd0] 4eb9 0004 492a            jsr        Adr_del
li_setfree_1:
[00031cd6] 4eb9 0004 484c            jsr        Adr_next
[00031cdc] 3600                      move.w     d0,d3
[00031cde] 6ea8                      bgt.s      li_setfree_3
[00031ce0] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00031ce4] 4e75                      rts

li_open:
[00031ce6] 2079 0010 1f12            movea.l    ACSblk,a0
[00031cec] 2068 0258                 movea.l    600(a0),a0
[00031cf0] 4eb9 0003 1cf8            jsr        li_wopen
[00031cf6] 4e75                      rts

li_wopen:
[00031cf8] 3f03                      move.w     d3,-(a7)
[00031cfa] 2f0a                      move.l     a2,-(a7)
[00031cfc] 2448                      movea.l    a0,a2
[00031cfe] 2279 0010 1f12            movea.l    ACSblk,a1
[00031d04] 4269 0248                 clr.w      584(a1)
[00031d08] 6018                      bra.s      li_wopen_1
li_wopen_3:
[00031d0a] 3003                      move.w     d3,d0
[00031d0c] 204a                      movea.l    a2,a0
[00031d0e] 4eb9 0003 2270            jsr        open_wi
[00031d14] 4a40                      tst.w      d0
[00031d16] 6714                      beq.s      li_wopen_2
[00031d18] 3003                      move.w     d3,d0
[00031d1a] 204a                      movea.l    a2,a0
[00031d1c] 4eb9 0004 492a            jsr        Adr_del
li_wopen_1:
[00031d22] 4eb9 0004 484c            jsr        Adr_next
[00031d28] 3600                      move.w     d0,d3
[00031d2a] 6ede                      bgt.s      li_wopen_3
li_wopen_2:
[00031d2c] 245f                      movea.l    (a7)+,a2
[00031d2e] 361f                      move.w     (a7)+,d3
[00031d30] 4e75                      rts

li_info:
[00031d32] 2079 0010 1f12            movea.l    ACSblk,a0
[00031d38] 2068 0258                 movea.l    600(a0),a0
[00031d3c] 4eb9 0003 1d44            jsr        li_winfo
[00031d42] 4e75                      rts

li_winfo:
[00031d44] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00031d48] 4fef ffde                 lea.l      -34(a7),a7
[00031d4c] 2f48 001e                 move.l     a0,30(a7)
[00031d50] 2650                      movea.l    (a0),a3
[00031d52] 2279 0010 1f12            movea.l    ACSblk,a1
[00031d58] 3029 0246                 move.w     582(a1),d0
[00031d5c] 6706                      beq.s      li_winfo_1
[00031d5e] b1e9 0240                 cmpa.l     576(a1),a0
[00031d62] 677c                      beq.s      li_winfo_2
li_winfo_1:
[00031d64] 41f9 000c 1734            lea.l      WI_INFO_LISTSELF,a0
[00031d6a] 2279 000c 173c            movea.l    $000C173C,a1
[00031d70] 4e91                      jsr        (a1)
[00031d72] 2848                      movea.l    a0,a4
[00031d74] 200c                      move.l     a4,d0
[00031d76] 6700 0152                 beq        li_winfo_3
[00031d7a] 2253                      movea.l    (a3),a1
[00031d7c] 2269 0008                 movea.l    8(a1),a1
[00031d80] 206c 0014                 movea.l    20(a4),a0
[00031d84] 7007                      moveq.l    #7,d0
[00031d86] 4eb9 0004 afe0            jsr        Aob_puttext
[00031d8c] 226b 0004                 movea.l    4(a3),a1
[00031d90] 43e9 0016                 lea.l      22(a1),a1
[00031d94] 7006                      moveq.l    #6,d0
[00031d96] 206c 0014                 movea.l    20(a4),a0
[00031d9a] 4eb9 0004 afe0            jsr        Aob_puttext
[00031da0] 206b 0004                 movea.l    4(a3),a0
[00031da4] 2028 000e                 move.l     14(a0),d0
[00031da8] e488                      lsr.l      #2,d0
[00031daa] 2f00                      move.l     d0,-(a7)
[00031dac] 43f9 000c 199a            lea.l      $000C199A,a1
[00031db2] 41ef 0004                 lea.l      4(a7),a0
[00031db6] 4eb9 0007 5680            jsr        sprintf
[00031dbc] 584f                      addq.w     #4,a7
[00031dbe] 43d7                      lea.l      (a7),a1
[00031dc0] 7005                      moveq.l    #5,d0
[00031dc2] 206c 0014                 movea.l    20(a4),a0
[00031dc6] 4eb9 0004 afe0            jsr        Aob_puttext
[00031dcc] 204c                      movea.l    a4,a0
[00031dce] 4eb9 0005 1292            jsr        Awi_dialog
[00031dd4] 204c                      movea.l    a4,a0
[00031dd6] 4eb9 0005 0330            jsr        Awi_delete
[00031ddc] 6000 00ec                 bra        li_winfo_3
li_winfo_2:
[00031de0] 2079 0010 1f12            movea.l    ACSblk,a0
[00031de6] 4268 0248                 clr.w      584(a0)
[00031dea] 6000 00d2                 bra        li_winfo_4
li_winfo_5:
[00031dee] 3203                      move.w     d3,d1
[00031df0] 48c1                      ext.l      d1
[00031df2] 2001                      move.l     d1,d0
[00031df4] d080                      add.l      d0,d0
[00031df6] d081                      add.l      d1,d0
[00031df8] e788                      lsl.l      #3,d0
[00031dfa] 206f 001e                 movea.l    30(a7),a0
[00031dfe] 2268 0014                 movea.l    20(a0),a1
[00031e02] 41f1 0818                 lea.l      24(a1,d0.l),a0
[00031e06] 2f48 001a                 move.l     a0,26(a7)
[00031e0a] 2468 000c                 movea.l    12(a0),a2
[00031e0e] 41f9 000c 1692            lea.l      WI_INFO_LIST,a0
[00031e14] 2279 000c 169a            movea.l    $000C169A,a1
[00031e1a] 4e91                      jsr        (a1)
[00031e1c] 2848                      movea.l    a0,a4
[00031e1e] 200c                      move.l     a4,d0
[00031e20] 6700 009c                 beq        li_winfo_4
[00031e24] 2253                      movea.l    (a3),a1
[00031e26] 2269 0008                 movea.l    8(a1),a1
[00031e2a] 206c 0014                 movea.l    20(a4),a0
[00031e2e] 7008                      moveq.l    #8,d0
[00031e30] 4eb9 0004 afe0            jsr        Aob_puttext
[00031e36] 226b 0004                 movea.l    4(a3),a1
[00031e3a] 43e9 0016                 lea.l      22(a1),a1
[00031e3e] 7009                      moveq.l    #9,d0
[00031e40] 206c 0014                 movea.l    20(a4),a0
[00031e44] 4eb9 0004 afe0            jsr        Aob_puttext
[00031e4a] 43ea 0016                 lea.l      22(a2),a1
[00031e4e] 700a                      moveq.l    #10,d0
[00031e50] 206c 0014                 movea.l    20(a4),a0
[00031e54] 4eb9 0004 afe0            jsr        Aob_puttext
[00031e5a] 2f2a 000e                 move.l     14(a2),-(a7)
[00031e5e] 43f9 000c 199a            lea.l      $000C199A,a1
[00031e64] 41ef 0004                 lea.l      4(a7),a0
[00031e68] 4eb9 0007 5680            jsr        sprintf
[00031e6e] 584f                      addq.w     #4,a7
[00031e70] 43d7                      lea.l      (a7),a1
[00031e72] 700b                      moveq.l    #11,d0
[00031e74] 206c 0014                 movea.l    20(a4),a0
[00031e78] 4eb9 0004 afe0            jsr        Aob_puttext
[00031e7e] 3f2a 0036                 move.w     54(a2),-(a7)
[00031e82] 43f9 000c 199e            lea.l      $000C199E,a1
[00031e88] 41ef 0002                 lea.l      2(a7),a0
[00031e8c] 4eb9 0007 5680            jsr        sprintf
[00031e92] 544f                      addq.w     #2,a7
[00031e94] 43d7                      lea.l      (a7),a1
[00031e96] 700d                      moveq.l    #13,d0
[00031e98] 206c 0014                 movea.l    20(a4),a0
[00031e9c] 4eb9 0004 afe0            jsr        Aob_puttext
[00031ea2] 204c                      movea.l    a4,a0
[00031ea4] 4eb9 0005 1292            jsr        Awi_dialog
[00031eaa] 204c                      movea.l    a4,a0
[00031eac] 4eb9 0005 0330            jsr        Awi_delete
[00031eb2] 3003                      move.w     d3,d0
[00031eb4] 206f 001e                 movea.l    30(a7),a0
[00031eb8] 4eb9 0004 492a            jsr        Adr_del
li_winfo_4:
[00031ebe] 4eb9 0004 484c            jsr        Adr_next
[00031ec4] 3600                      move.w     d0,d3
[00031ec6] 6e00 ff26                 bgt        li_winfo_5
li_winfo_3:
[00031eca] 4fef 0022                 lea.l      34(a7),a7
[00031ece] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00031ed2] 4e75                      rts

dragged:
[00031ed4] 2079 0010 1f12            movea.l    ACSblk,a0
[00031eda] 2068 0258                 movea.l    600(a0),a0
[00031ede] 4eb9 0003 1f9c            jsr        drag
[00031ee4] 4e75                      rts

generate:
[00031ee6] 48e7 003c                 movem.l    a2-a5,-(a7)
[00031eea] 594f                      subq.w     #4,a7
[00031eec] 2648                      movea.l    a0,a3
[00031eee] 2449                      movea.l    a1,a2
[00031ef0] 200a                      move.l     a2,d0
[00031ef2] 6768                      beq.s      generate_1
[00031ef4] 286b 0004                 movea.l    4(a3),a4
[00031ef8] 3239 0007 78f2            move.w     runasdemo,d1
[00031efe] 6712                      beq.s      generate_2
[00031f00] 242c 000e                 move.l     14(a4),d2
[00031f04] e48a                      lsr.l      #2,d2
[00031f06] 5542                      subq.w     #2,d2
[00031f08] 6d08                      blt.s      generate_2
[00031f0a] 4eb9 0001 1146            jsr        acs_register
[00031f10] 604a                      bra.s      generate_1
generate_2:
[00031f12] 224a                      movea.l    a2,a1
[00031f14] 2053                      movea.l    (a3),a0
[00031f16] 2a6b 001a                 movea.l    26(a3),a5
[00031f1a] 4e95                      jsr        (a5)
[00031f1c] 2a48                      movea.l    a0,a5
[00031f1e] 200d                      move.l     a5,d0
[00031f20] 6770                      beq.s      generate_3
[00031f22] 43ea 0016                 lea.l      22(a2),a1
[00031f26] 41ed 0016                 lea.l      22(a5),a0
[00031f2a] 4eb9 0007 6950            jsr        strcpy
[00031f30] 4857                      pea.l      (a7)
[00031f32] 224d                      movea.l    a5,a1
[00031f34] 2053                      movea.l    (a3),a0
[00031f36] 4eb9 0001 6374            jsr        uniquename
[00031f3c] 584f                      addq.w     #4,a7
[00031f3e] 2f2b 0010                 move.l     16(a3),-(a7)
[00031f42] 224d                      movea.l    a5,a1
[00031f44] 2053                      movea.l    (a3),a0
[00031f46] 4eb9 0001 46c2            jsr        new2label
[00031f4c] 584f                      addq.w     #4,a7
[00031f4e] 4a40                      tst.w      d0
[00031f50] 660e                      bne.s      generate_4
[00031f52] 224d                      movea.l    a5,a1
[00031f54] 2053                      movea.l    (a3),a0
[00031f56] 246b 001e                 movea.l    30(a3),a2
[00031f5a] 4e92                      jsr        (a2)
generate_1:
[00031f5c] 91c8                      suba.l     a0,a0
[00031f5e] 6034                      bra.s      generate_5
generate_4:
[00031f60] 2f2b 0010                 move.l     16(a3),-(a7)
[00031f64] 486d 0016                 pea.l      22(a5)
[00031f68] 224d                      movea.l    a5,a1
[00031f6a] 2053                      movea.l    (a3),a0
[00031f6c] 4eb9 0001 6448            jsr        objname
[00031f72] 504f                      addq.w     #8,a7
[00031f74] 224d                      movea.l    a5,a1
[00031f76] 204c                      movea.l    a4,a0
[00031f78] 6100 fb1a                 bsr        add_entry
[00031f7c] 202b 0026                 move.l     38(a3),d0
[00031f80] 670a                      beq.s      generate_6
[00031f82] 224d                      movea.l    a5,a1
[00031f84] 2053                      movea.l    (a3),a0
[00031f86] 2440                      movea.l    d0,a2
[00031f88] 7001                      moveq.l    #1,d0
[00031f8a] 4e92                      jsr        (a2)
generate_6:
[00031f8c] 006d 0100 0038            ori.w      #$0100,56(a5)
generate_3:
[00031f92] 204d                      movea.l    a5,a0
generate_5:
[00031f94] 584f                      addq.w     #4,a7
[00031f96] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00031f9a] 4e75                      rts

drag:
[00031f9c] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00031fa0] 594f                      subq.w     #4,a7
[00031fa2] 2e88                      move.l     a0,(a7)
[00031fa4] 2650                      movea.l    (a0),a3
[00031fa6] 41f9 0010 1f12            lea.l      ACSblk,a0
[00031fac] 2250                      movea.l    (a0),a1
[00031fae] 2869 0240                 movea.l    576(a1),a4
[00031fb2] 4269 0248                 clr.w      584(a1)
[00031fb6] 2250                      movea.l    (a0),a1
[00031fb8] 3629 0246                 move.w     582(a1),d3
[00031fbc] 3003                      move.w     d3,d0
[00031fbe] 48c0                      ext.l      d0
[00031fc0] e588                      lsl.l      #2,d0
[00031fc2] 4eb9 0004 7cc8            jsr        Ax_malloc
[00031fc8] 2a48                      movea.l    a0,a5
[00031fca] 244d                      movea.l    a5,a2
[00031fcc] 200a                      move.l     a2,d0
[00031fce] 6700 0090                 beq        drag_1
[00031fd2] 603a                      bra.s      drag_2
drag_4:
[00031fd4] 3004                      move.w     d4,d0
[00031fd6] c07c 1000                 and.w      #$1000,d0
[00031fda] 671c                      beq.s      drag_3
[00031fdc] 3404                      move.w     d4,d2
[00031fde] c47c 0fff                 and.w      #$0FFF,d2
[00031fe2] 48c2                      ext.l      d2
[00031fe4] 2202                      move.l     d2,d1
[00031fe6] d281                      add.l      d1,d1
[00031fe8] d282                      add.l      d2,d1
[00031fea] e789                      lsl.l      #3,d1
[00031fec] 206c 0018                 movea.l    24(a4),a0
[00031ff0] 43f0 1818                 lea.l      24(a0,d1.l),a1
[00031ff4] 24c9                      move.l     a1,(a2)+
[00031ff6] 6016                      bra.s      drag_2
drag_3:
[00031ff8] 3204                      move.w     d4,d1
[00031ffa] 48c1                      ext.l      d1
[00031ffc] 2001                      move.l     d1,d0
[00031ffe] d080                      add.l      d0,d0
[00032000] d081                      add.l      d1,d0
[00032002] e788                      lsl.l      #3,d0
[00032004] 206c 0014                 movea.l    20(a4),a0
[00032008] 43f0 0818                 lea.l      24(a0,d0.l),a1
[0003200c] 24c9                      move.l     a1,(a2)+
drag_2:
[0003200e] 4eb9 0004 484c            jsr        Adr_next
[00032014] 3800                      move.w     d0,d4
[00032016] 6ebc                      bgt.s      drag_4
[00032018] 4eb9 0004 4a26            jsr        Adr_unselect
[0003201e] 4244                      clr.w      d4
[00032020] 6032                      bra.s      drag_5
drag_8:
[00032022] 3004                      move.w     d4,d0
[00032024] 48c0                      ext.l      d0
[00032026] e588                      lsl.l      #2,d0
[00032028] 2475 0800                 movea.l    0(a5,d0.l),a2
[0003202c] 0c6a 0002 0016            cmpi.w     #$0002,22(a2)
[00032032] 660a                      bne.s      drag_6
[00032034] 2057                      movea.l    (a7),a0
[00032036] 4eb9 0003 2068            jsr        li_newwi
[0003203c] 6014                      bra.s      drag_7
drag_6:
[0003203e] 302a 0016                 move.w     22(a2),d0
[00032042] b06b 0014                 cmp.w      20(a3),d0
[00032046] 660a                      bne.s      drag_7
[00032048] 226a 000c                 movea.l    12(a2),a1
[0003204c] 204b                      movea.l    a3,a0
[0003204e] 6100 fe96                 bsr        generate
drag_7:
[00032052] 5244                      addq.w     #1,d4
drag_5:
[00032054] b644                      cmp.w      d4,d3
[00032056] 6eca                      bgt.s      drag_8
[00032058] 204d                      movea.l    a5,a0
[0003205a] 4eb9 0004 7e26            jsr        Ax_free
drag_1:
[00032060] 584f                      addq.w     #4,a7
[00032062] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00032066] 4e75                      rts

li_newwi:
[00032068] 2f0a                      move.l     a2,-(a7)
[0003206a] 2f0b                      move.l     a3,-(a7)
[0003206c] 514f                      subq.w     #8,a7
[0003206e] 2448                      movea.l    a0,a2
[00032070] 2650                      movea.l    (a0),a3
[00032072] 226b 0016                 movea.l    22(a3),a1
[00032076] 204b                      movea.l    a3,a0
[00032078] 6100 fe6c                 bsr        generate
[0003207c] 2f48 0004                 move.l     a0,4(a7)
[00032080] 2008                      move.l     a0,d0
[00032082] 671a                      beq.s      li_newwi_1
[00032084] 006a 0004 0054            ori.w      #$0004,84(a2)
[0003208a] 2e93                      move.l     (a3),(a7)
[0003208c] 41d7                      lea.l      (a7),a0
[0003208e] 226b 0008                 movea.l    8(a3),a1
[00032092] 2269 0008                 movea.l    8(a1),a1
[00032096] 4e91                      jsr        (a1)
[00032098] 026a fffb 0054            andi.w     #$FFFB,84(a2)
li_newwi_1:
[0003209e] 504f                      addq.w     #8,a7
[000320a0] 265f                      movea.l    (a7)+,a3
[000320a2] 245f                      movea.l    (a7)+,a2
[000320a4] 4e75                      rts

li_new:
[000320a6] 2079 0010 1f12            movea.l    ACSblk,a0
[000320ac] 2068 0258                 movea.l    600(a0),a0
[000320b0] 6100 ffb6                 bsr.w      li_newwi
[000320b4] 4e75                      rts

li_init:
[000320b6] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[000320ba] 2448                      movea.l    a0,a2
[000320bc] 2279 0010 1f12            movea.l    ACSblk,a1
[000320c2] b1e9 0240                 cmpa.l     576(a1),a0
[000320c6] 6606                      bne.s      li_init_1
[000320c8] 4eb9 0004 4a26            jsr        Adr_unselect
li_init_1:
[000320ce] 2652                      movea.l    (a2),a3
[000320d0] 2a6b 0004                 movea.l    4(a3),a5
[000320d4] 4243                      clr.w      d3
[000320d6] 3803                      move.w     d3,d4
[000320d8] 286a 0014                 movea.l    20(a2),a4
[000320dc] 200c                      move.l     a4,d0
[000320de] 6710                      beq.s      li_init_2
[000320e0] 382c 0010                 move.w     16(a4),d4
[000320e4] 362c 0012                 move.w     18(a4),d3
[000320e8] 204c                      movea.l    a4,a0
[000320ea] 4eb9 0004 7e26            jsr        Ax_free
li_init_2:
[000320f0] 204d                      movea.l    a5,a0
[000320f2] 226b 0022                 movea.l    34(a3),a1
[000320f6] 4e91                      jsr        (a1)
[000320f8] 2848                      movea.l    a0,a4
[000320fa] 200c                      move.l     a4,d0
[000320fc] 6616                      bne.s      li_init_3
[000320fe] 41f9 000c 15d8            lea.l      LIST_NOT,a0
[00032104] 4eb9 0004 9a5c            jsr        Aob_create
[0003210a] 2848                      movea.l    a0,a4
[0003210c] 2548 0014                 move.l     a0,20(a2)
[00032110] 70ff                      moveq.l    #-1,d0
[00032112] 6044                      bra.s      li_init_4
li_init_3:
[00032114] 4bec 0018                 lea.l      24(a4),a5
[00032118] 2b7c 0003 1ed4 0004       move.l     #dragged,4(a5)
[00032120] 3a2c 0002                 move.w     2(a4),d5
[00032124] 601a                      bra.s      li_init_5
li_init_6:
[00032126] 3205                      move.w     d5,d1
[00032128] 48c1                      ext.l      d1
[0003212a] 2001                      move.l     d1,d0
[0003212c] d080                      add.l      d0,d0
[0003212e] d081                      add.l      d1,d0
[00032130] e788                      lsl.l      #3,d0
[00032132] 4bf4 0818                 lea.l      24(a4,d0.l),a5
[00032136] 2abc 0003 225a            move.l     #open_it,(a5)
[0003213c] 3a34 0800                 move.w     0(a4,d0.l),d5
li_init_5:
[00032140] 4a45                      tst.w      d5
[00032142] 6ee2                      bgt.s      li_init_6
[00032144] 254c 0014                 move.l     a4,20(a2)
[00032148] 3944 0010                 move.w     d4,16(a4)
[0003214c] 3943 0012                 move.w     d3,18(a4)
[00032150] 006a 0010 0056            ori.w      #$0010,86(a2)
[00032156] 4240                      clr.w      d0
li_init_4:
[00032158] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0003215c] 4e75                      rts

li_make:
[0003215e] 48e7 003c                 movem.l    a2-a5,-(a7)
[00032162] 4fef ffb6                 lea.l      -74(a7),a7
[00032166] 2a48                      movea.l    a0,a5
[00032168] 2448                      movea.l    a0,a2
[0003216a] 266a 0004                 movea.l    4(a2),a3
[0003216e] 286b 0012                 movea.l    18(a3),a4
[00032172] 200c                      move.l     a4,d0
[00032174] 670c                      beq.s      li_make_1
[00032176] 204c                      movea.l    a4,a0
[00032178] 4eb9 0004 f0ca            jsr        Awi_show
[0003217e] 6000 00ce                 bra        li_make_2
li_make_1:
[00032182] 702a                      moveq.l    #42,d0
[00032184] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003218a] 2448                      movea.l    a0,a2
[0003218c] 200a                      move.l     a2,d0
[0003218e] 6700 00ba                 beq        li_make_3
[00032192] 702a                      moveq.l    #42,d0
[00032194] 224d                      movea.l    a5,a1
[00032196] 4eb9 0007 6f44            jsr        memcpy
[0003219c] 4bf9 000c 1878            lea.l      WI_LIST,a5
[000321a2] 2b6a 000c 004a            move.l     12(a2),74(a5)
[000321a8] 1f7c 0020 0004            move.b     #$20,4(a7)
[000321ae] 2052                      movea.l    (a2),a0
[000321b0] 2268 0008                 movea.l    8(a0),a1
[000321b4] 41ef 0005                 lea.l      5(a7),a0
[000321b8] 4eb9 0007 6950            jsr        strcpy
[000321be] 41ef 0004                 lea.l      4(a7),a0
[000321c2] 2b48 004e                 move.l     a0,78(a5)
[000321c6] 226a 0008                 movea.l    8(a2),a1
[000321ca] 2b69 005a 005a            move.l     90(a1),90(a5)
[000321d0] 705c                      moveq.l    #92,d0
[000321d2] 2052                      movea.l    (a2),a0
[000321d4] 2068 0008                 movea.l    8(a0),a0
[000321d8] 4eb9 0007 68e2            jsr        strrchr
[000321de] 2e88                      move.l     a0,(a7)
[000321e0] 6608                      bne.s      li_make_4
[000321e2] 2252                      movea.l    (a2),a1
[000321e4] 2ea9 0008                 move.l     8(a1),(a7)
[000321e8] 6002                      bra.s      li_make_5
li_make_4:
[000321ea] 5297                      addq.l     #1,(a7)
li_make_5:
[000321ec] 206d 005a                 movea.l    90(a5),a0
[000321f0] 2157 0008                 move.l     (a7),8(a0)
[000321f4] 204d                      movea.l    a5,a0
[000321f6] 4eb9 0004 f41a            jsr        Awi_create
[000321fc] 2848                      movea.l    a0,a4
[000321fe] 200c                      move.l     a4,d0
[00032200] 660a                      bne.s      li_make_6
[00032202] 204a                      movea.l    a2,a0
[00032204] 4eb9 0004 7e26            jsr        Ax_free
[0003220a] 603e                      bra.s      li_make_3
li_make_6:
[0003220c] 2052                      movea.l    (a2),a0
[0003220e] 4868 0168                 pea.l      360(a0)
[00032212] 43eb 003a                 lea.l      58(a3),a1
[00032216] 204c                      movea.l    a4,a0
[00032218] 4eb9 0001 47a8            jsr        wi_pos
[0003221e] 584f                      addq.w     #4,a7
[00032220] 288a                      move.l     a2,(a4)
[00032222] 274c 0012                 move.l     a4,18(a3)
[00032226] 202a 0016                 move.l     22(a2),d0
[0003222a] 660a                      bne.s      li_make_7
[0003222c] 206c 005e                 movea.l    94(a4),a0
[00032230] 0068 0008 018a            ori.w      #$0008,394(a0)
li_make_7:
[00032236] 204c                      movea.l    a4,a0
[00032238] 226c 000c                 movea.l    12(a4),a1
[0003223c] 4e91                      jsr        (a1)
[0003223e] 4a40                      tst.w      d0
[00032240] 670c                      beq.s      li_make_2
[00032242] 204c                      movea.l    a4,a0
[00032244] 4eb9 0003 244e            jsr        term
li_make_3:
[0003224a] 91c8                      suba.l     a0,a0
[0003224c] 6002                      bra.s      li_make_8
li_make_2:
[0003224e] 204c                      movea.l    a4,a0
li_make_8:
[00032250] 4fef 004a                 lea.l      74(a7),a7
[00032254] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00032258] 4e75                      rts

open_it:
[0003225a] 2079 0010 1f12            movea.l    ACSblk,a0
[00032260] 3028 0260                 move.w     608(a0),d0
[00032264] 2068 0258                 movea.l    600(a0),a0
[00032268] 4eb9 0003 2270            jsr        open_wi
[0003226e] 4e75                      rts

open_wi:
[00032270] 2f0a                      move.l     a2,-(a7)
[00032272] 2f0b                      move.l     a3,-(a7)
[00032274] 514f                      subq.w     #8,a7
[00032276] 2448                      movea.l    a0,a2
[00032278] 2650                      movea.l    (a0),a3
[0003227a] 006a 0004 0054            ori.w      #$0004,84(a2)
[00032280] 2e93                      move.l     (a3),(a7)
[00032282] 226b 0004                 movea.l    4(a3),a1
[00032286] 2069 0004                 movea.l    4(a1),a0
[0003228a] 72fe                      moveq.l    #-2,d1
[0003228c] d240                      add.w      d0,d1
[0003228e] e241                      asr.w      #1,d1
[00032290] 48c1                      ext.l      d1
[00032292] e589                      lsl.l      #2,d1
[00032294] 2f70 1800 0004            move.l     0(a0,d1.l),4(a7)
[0003229a] 41d7                      lea.l      (a7),a0
[0003229c] 226b 0008                 movea.l    8(a3),a1
[000322a0] 2269 0008                 movea.l    8(a1),a1
[000322a4] 4e91                      jsr        (a1)
[000322a6] 2008                      move.l     a0,d0
[000322a8] 6704                      beq.s      open_wi_1
[000322aa] 7001                      moveq.l    #1,d0
[000322ac] 6002                      bra.s      open_wi_2
open_wi_1:
[000322ae] 4240                      clr.w      d0
open_wi_2:
[000322b0] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[000322b6] 504f                      addq.w     #8,a7
[000322b8] 265f                      movea.l    (a7)+,a3
[000322ba] 245f                      movea.l    (a7)+,a2
[000322bc] 4e75                      rts

li_service:
[000322be] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[000322c2] 2448                      movea.l    a0,a2
[000322c4] 3800                      move.w     d0,d4
[000322c6] 2a49                      movea.l    a1,a5
[000322c8] 7602                      moveq.l    #2,d3
[000322ca] b07c 000b                 cmp.w      #$000B,d0
[000322ce] 6700 00f8                 beq        li_service_1
[000322d2] 6e14                      bgt.s      li_service_2
[000322d4] 5540                      subq.w     #2,d0
[000322d6] 6726                      beq.s      li_service_3
[000322d8] 5740                      subq.w     #3,d0
[000322da] 674c                      beq.s      li_service_4
[000322dc] 5340                      subq.w     #1,d0
[000322de] 6748                      beq.s      li_service_4
[000322e0] 5940                      subq.w     #4,d0
[000322e2] 6730                      beq.s      li_service_5
[000322e4] 6000 0152                 bra        li_service_6
li_service_2:
[000322e8] 907c 000f                 sub.w      #$000F,d0
[000322ec] 6730                      beq.s      li_service_7
[000322ee] 5340                      subq.w     #1,d0
[000322f0] 6718                      beq.s      li_service_8
[000322f2] 907c 03dd                 sub.w      #$03DD,d0
[000322f6] 6700 00da                 beq        li_service_9
[000322fa] 6000 013c                 bra        li_service_6
li_service_3:
[000322fe] 204a                      movea.l    a2,a0
[00032300] 4eb9 0003 244e            jsr        term
[00032306] 6000 013e                 bra        li_service_10
li_service_8:
[0003230a] 204a                      movea.l    a2,a0
[0003230c] 6100 fc8e                 bsr        drag
[00032310] 6000 0134                 bra        li_service_10
li_service_5:
[00032314] 204a                      movea.l    a2,a0
[00032316] 6100 f9e0                 bsr        li_wopen
[0003231a] 6000 012a                 bra        li_service_10
li_service_7:
[0003231e] 204a                      movea.l    a2,a0
[00032320] 6100 fa22                 bsr        li_winfo
[00032324] 6000 0120                 bra        li_service_10
li_service_4:
[00032328] 206a 005e                 movea.l    94(a2),a0
[0003232c] 0068 0008 027a            ori.w      #$0008,634(a0)
[00032332] 2079 0010 1f12            movea.l    ACSblk,a0
[00032338] 0c68 0001 0246            cmpi.w     #$0001,582(a0)
[0003233e] 6642                      bne.s      li_service_11
[00032340] 226a 005e                 movea.l    94(a2),a1
[00032344] 0269 fff7 024a            andi.w     #$FFF7,586(a1)
[0003234a] 2079 0010 1f12            movea.l    ACSblk,a0
[00032350] 2268 0254                 movea.l    596(a0),a1
[00032354] 3211                      move.w     (a1),d1
[00032356] 48c1                      ext.l      d1
[00032358] 2001                      move.l     d1,d0
[0003235a] d080                      add.l      d0,d0
[0003235c] d081                      add.l      d1,d0
[0003235e] e788                      lsl.l      #3,d0
[00032360] 266a 0014                 movea.l    20(a2),a3
[00032364] 47f3 0818                 lea.l      24(a3,d0.l),a3
[00032368] 286b 000c                 movea.l    12(a3),a4
[0003236c] 342c 0038                 move.w     56(a4),d2
[00032370] c47c 0100                 and.w      #$0100,d2
[00032374] 6716                      beq.s      li_service_12
[00032376] 206a 005e                 movea.l    94(a2),a0
[0003237a] 0268 fff7 027a            andi.w     #$FFF7,634(a0)
[00032380] 600a                      bra.s      li_service_12
li_service_11:
[00032382] 206a 005e                 movea.l    94(a2),a0
[00032386] 0068 0008 024a            ori.w      #$0008,586(a0)
li_service_12:
[0003238c] 2079 0010 1f12            movea.l    ACSblk,a0
[00032392] 3028 0246                 move.w     582(a0),d0
[00032396] 6f18                      ble.s      li_service_13
[00032398] 226a 005e                 movea.l    94(a2),a1
[0003239c] 0269 fff7 01ba            andi.w     #$FFF7,442(a1)
[000323a2] 206a 005e                 movea.l    94(a2),a0
[000323a6] 0268 fff7 021a            andi.w     #$FFF7,538(a0)
[000323ac] 6000 0098                 bra        li_service_10
li_service_13:
[000323b0] 206a 005e                 movea.l    94(a2),a0
[000323b4] 0068 0008 01ba            ori.w      #$0008,442(a0)
[000323ba] 206a 005e                 movea.l    94(a2),a0
[000323be] 0068 0008 021a            ori.w      #$0008,538(a0)
[000323c4] 6000 0080                 bra        li_service_10
li_service_1:
[000323c8] 204a                      movea.l    a2,a0
[000323ca] 6100 f790                 bsr        delete
[000323ce] 6000 0076                 bra.w      li_service_10
li_service_9:
[000323d2] 2052                      movea.l    (a2),a0
[000323d4] 0c68 271c 0014            cmpi.w     #$271C,20(a0)
[000323da] 666a                      bne.s      li_service_10
[000323dc] 604e                      bra.s      li_service_14
li_service_16:
[000323de] 7020                      moveq.l    #32,d0
[000323e0] 3403                      move.w     d3,d2
[000323e2] 48c2                      ext.l      d2
[000323e4] 2202                      move.l     d2,d1
[000323e6] d281                      add.l      d1,d1
[000323e8] d282                      add.l      d2,d1
[000323ea] e789                      lsl.l      #3,d1
[000323ec] 206a 0014                 movea.l    20(a2),a0
[000323f0] c070 1808                 and.w      8(a0,d1.l),d0
[000323f4] 6650                      bne.s      li_service_10
[000323f6] 3030 1820                 move.w     32(a0,d1.l),d0
[000323fa] c07c 8000                 and.w      #$8000,d0
[000323fe] 672a                      beq.s      li_service_15
[00032400] 2648                      movea.l    a0,a3
[00032402] 47f3 1818                 lea.l      24(a3,d1.l),a3
[00032406] 286b 000c                 movea.l    12(a3),a4
[0003240a] 240c                      move.l     a4,d2
[0003240c] 671c                      beq.s      li_service_15
[0003240e] 202c 0004                 move.l     4(a4),d0
[00032412] 6716                      beq.s      li_service_15
[00032414] 224d                      movea.l    a5,a1
[00032416] 2040                      movea.l    d0,a0
[00032418] 4eb9 0007 6a4c            jsr        strstr
[0003241e] 2008                      move.l     a0,d0
[00032420] 6708                      beq.s      li_service_15
[00032422] 3003                      move.w     d3,d0
[00032424] 204a                      movea.l    a2,a0
[00032426] 6100 fe48                 bsr        open_wi
li_service_15:
[0003242a] 5443                      addq.w     #2,d3
li_service_14:
[0003242c] 206a 0014                 movea.l    20(a2),a0
[00032430] b668 0004                 cmp.w      4(a0),d3
[00032434] 6da8                      blt.s      li_service_16
[00032436] 600e                      bra.s      li_service_10
li_service_6:
[00032438] 224d                      movea.l    a5,a1
[0003243a] 3004                      move.w     d4,d0
[0003243c] 204a                      movea.l    a2,a0
[0003243e] 4eb9 0005 1276            jsr        Awi_service
[00032444] 6002                      bra.s      li_service_17
li_service_10:
[00032446] 7001                      moveq.l    #1,d0
li_service_17:
[00032448] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0003244c] 4e75                      rts

term:
[0003244e] 2f0a                      move.l     a2,-(a7)
[00032450] 2f0b                      move.l     a3,-(a7)
[00032452] 2448                      movea.l    a0,a2
[00032454] 2650                      movea.l    (a0),a3
[00032456] 226b 0004                 movea.l    4(a3),a1
[0003245a] 42a9 0012                 clr.l      18(a1)
[0003245e] 302a 0056                 move.w     86(a2),d0
[00032462] c07c 0800                 and.w      #$0800,d0
[00032466] 6716                      beq.s      term_1
[00032468] 43ea 002c                 lea.l      44(a2),a1
[0003246c] 206b 0004                 movea.l    4(a3),a0
[00032470] 41e8 003a                 lea.l      58(a0),a0
[00032474] 7008                      moveq.l    #8,d0
[00032476] 4eb9 0007 6f44            jsr        memcpy
[0003247c] 6014                      bra.s      term_2
term_1:
[0003247e] 7008                      moveq.l    #8,d0
[00032480] 43ea 0024                 lea.l      36(a2),a1
[00032484] 206b 0004                 movea.l    4(a3),a0
[00032488] 41e8 003a                 lea.l      58(a0),a0
[0003248c] 4eb9 0007 6f44            jsr        memcpy
term_2:
[00032492] 204b                      movea.l    a3,a0
[00032494] 4eb9 0004 7e26            jsr        Ax_free
[0003249a] 206a 0014                 movea.l    20(a2),a0
[0003249e] 4eb9 0004 7e26            jsr        Ax_free
[000324a4] 42aa 0014                 clr.l      20(a2)
[000324a8] 204a                      movea.l    a2,a0
[000324aa] 4eb9 0005 0330            jsr        Awi_delete
[000324b0] 265f                      movea.l    (a7)+,a3
[000324b2] 245f                      movea.l    (a7)+,a2
[000324b4] 4e75                      rts

work_icon:
[000324b6] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[000324ba] 594f                      subq.w     #4,a7
[000324bc] 2e89                      move.l     a1,(a7)
[000324be] 2468 0004                 movea.l    4(a0),a2
[000324c2] 33c0 000c 1998            move.w     d0,$000C1998
[000324c8] 2628 000e                 move.l     14(a0),d3
[000324cc] e48b                      lsr.l      #2,d3
[000324ce] 7201                      moveq.l    #1,d1
[000324d0] d243                      add.w      d3,d1
[000324d2] 48c1                      ext.l      d1
[000324d4] 2001                      move.l     d1,d0
[000324d6] e588                      lsl.l      #2,d0
[000324d8] d081                      add.l      d1,d0
[000324da] e588                      lsl.l      #2,d0
[000324dc] d081                      add.l      d1,d0
[000324de] d080                      add.l      d0,d0
[000324e0] d081                      add.l      d1,d0
[000324e2] d080                      add.l      d0,d0
[000324e4] 4eb9 0004 7cc8            jsr        Ax_malloc
[000324ea] 2648                      movea.l    a0,a3
[000324ec] 200b                      move.l     a3,d0
[000324ee] 6606                      bne.s      work_icon_1
[000324f0] 91c8                      suba.l     a0,a0
[000324f2] 6000 00b8                 bra        work_icon_2
work_icon_1:
[000324f6] 7030                      moveq.l    #48,d0
[000324f8] 43f9 000c 193a            lea.l      inner,a1
[000324fe] 204b                      movea.l    a3,a0
[00032500] 4eb9 0007 6f44            jsr        memcpy
[00032506] 284b                      movea.l    a3,a4
[00032508] 4a43                      tst.w      d3
[0003250a] 6f00 0098                 ble        work_icon_3
[0003250e] 3203                      move.w     d3,d1
[00032510] d241                      add.w      d1,d1
[00032512] 48c1                      ext.l      d1
[00032514] 2001                      move.l     d1,d0
[00032516] d080                      add.l      d0,d0
[00032518] d081                      add.l      d1,d0
[0003251a] e788                      lsl.l      #3,d0
[0003251c] 4bf3 0830                 lea.l      48(a3,d0.l),a5
[00032520] 7801                      moveq.l    #1,d4
[00032522] 606a                      bra.s      work_icon_4
work_icon_6:
[00032524] 5244                      addq.w     #1,d4
[00032526] 49ec 0030                 lea.l      48(a4),a4
[0003252a] 7030                      moveq.l    #48,d0
[0003252c] 43f9 000c 196a            lea.l      proto,a1
[00032532] 204c                      movea.l    a4,a0
[00032534] 4eb9 0007 6f44            jsr        memcpy
[0003253a] 7026                      moveq.l    #38,d0
[0003253c] 2257                      movea.l    (a7),a1
[0003253e] 204d                      movea.l    a5,a0
[00032540] 4eb9 0007 6f44            jsr        memcpy
[00032546] 3004                      move.w     d4,d0
[00032548] d040                      add.w      d0,d0
[0003254a] 3880                      move.w     d0,(a4)
[0003254c] 294d 000c                 move.l     a5,12(a4)
[00032550] 3204                      move.w     d4,d1
[00032552] 48c1                      ext.l      d1
[00032554] e589                      lsl.l      #2,d1
[00032556] 2072 18f8                 movea.l    -8(a2,d1.l),a0
[0003255a] 2948 0024                 move.l     a0,36(a4)
[0003255e] 3428 0038                 move.w     56(a0),d2
[00032562] c47c 0100                 and.w      #$0100,d2
[00032566] 6606                      bne.s      work_icon_5
[00032568] 006c 0010 000a            ori.w      #$0010,10(a4)
work_icon_5:
[0003256e] 204c                      movea.l    a4,a0
[00032570] 4eb9 0004 a34e            jsr        Aob_icon
[00032576] 3004                      move.w     d4,d0
[00032578] 48c0                      ext.l      d0
[0003257a] e588                      lsl.l      #2,d0
[0003257c] 2072 08f8                 movea.l    -8(a2,d0.l),a0
[00032580] 41e8 0016                 lea.l      22(a0),a0
[00032584] 2b48 0008                 move.l     a0,8(a5)
[00032588] 4bed 0026                 lea.l      38(a5),a5
[0003258c] 5343                      subq.w     #1,d3
work_icon_4:
[0003258e] 4a43                      tst.w      d3
[00032590] 6e92                      bgt.s      work_icon_6
[00032592] 377c 0002 0002            move.w     #$0002,2(a3)
[00032598] 70ff                      moveq.l    #-1,d0
[0003259a] d044                      add.w      d4,d0
[0003259c] d040                      add.w      d0,d0
[0003259e] 3740 0004                 move.w     d0,4(a3)
[000325a2] 4254                      clr.w      (a4)
work_icon_3:
[000325a4] 006c 0020 0020            ori.w      #$0020,32(a4)
[000325aa] 204b                      movea.l    a3,a0
work_icon_2:
[000325ac] 584f                      addq.w     #4,a7
[000325ae] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[000325b2] 4e75                      rts

li_scope:
[000325b4] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[000325b8] 594f                      subq.w     #4,a7
[000325ba] 2079 0010 1f12            movea.l    ACSblk,a0
[000325c0] 2468 0258                 movea.l    600(a0),a2
[000325c4] 2e92                      move.l     (a2),(a7)
[000325c6] 4268 0248                 clr.w      584(a0)
[000325ca] 6000 00aa                 bra        li_scope_1
li_scope_7:
[000325ce] 3203                      move.w     d3,d1
[000325d0] 48c1                      ext.l      d1
[000325d2] 2001                      move.l     d1,d0
[000325d4] d080                      add.l      d0,d0
[000325d6] d081                      add.l      d1,d0
[000325d8] e788                      lsl.l      #3,d0
[000325da] 206a 0014                 movea.l    20(a2),a0
[000325de] 41f0 0818                 lea.l      24(a0,d0.l),a0
[000325e2] 2868 000c                 movea.l    12(a0),a4
[000325e6] 41f9 000c 17d6            lea.l      WI_INFO_SCOPE,a0
[000325ec] 2279 000c 17de            movea.l    $000C17DE,a1
[000325f2] 4e91                      jsr        (a1)
[000325f4] 2648                      movea.l    a0,a3
[000325f6] 200b                      move.l     a3,d0
[000325f8] 6700 007c                 beq.w      li_scope_1
[000325fc] 322c 0038                 move.w     56(a4),d1
[00032600] c27c 0500                 and.w      #$0500,d1
[00032604] b27c 0100                 cmp.w      #$0100,d1
[00032608] 6616                      bne.s      li_scope_2
[0003260a] 226b 0014                 movea.l    20(a3),a1
[0003260e] 0269 fffe 003a            andi.w     #$FFFE,58(a1)
[00032614] 226b 0014                 movea.l    20(a3),a1
[00032618] 0069 0001 006a            ori.w      #$0001,106(a1)
[0003261e] 6014                      bra.s      li_scope_3
li_scope_2:
[00032620] 206b 0014                 movea.l    20(a3),a0
[00032624] 0068 0001 003a            ori.w      #$0001,58(a0)
[0003262a] 206b 0014                 movea.l    20(a3),a0
[0003262e] 0268 fffe 006a            andi.w     #$FFFE,106(a0)
li_scope_3:
[00032634] 204b                      movea.l    a3,a0
[00032636] 4eb9 0005 1292            jsr        Awi_dialog
[0003263c] 5d40                      subq.w     #6,d0
[0003263e] 6624                      bne.s      li_scope_4
[00032640] 7001                      moveq.l    #1,d0
[00032642] 206b 0014                 movea.l    20(a3),a0
[00032646] c068 006a                 and.w      106(a0),d0
[0003264a] 6708                      beq.s      li_scope_5
[0003264c] 026c fbff 0038            andi.w     #$FBFF,56(a4)
[00032652] 6006                      bra.s      li_scope_6
li_scope_5:
[00032654] 006c 0400 0038            ori.w      #$0400,56(a4)
li_scope_6:
[0003265a] 2057                      movea.l    (a7),a0
[0003265c] 2250                      movea.l    (a0),a1
[0003265e] 0069 0001 0006            ori.w      #$0001,6(a1)
li_scope_4:
[00032664] 204b                      movea.l    a3,a0
[00032666] 4eb9 0005 0330            jsr        Awi_delete
[0003266c] 3003                      move.w     d3,d0
[0003266e] 204a                      movea.l    a2,a0
[00032670] 4eb9 0004 492a            jsr        Adr_del
li_scope_1:
[00032676] 4eb9 0004 484c            jsr        Adr_next
[0003267c] 3600                      move.w     d0,d3
[0003267e] 6e00 ff4e                 bgt        li_scope_7
[00032682] 584f                      addq.w     #4,a7
[00032684] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00032688] 4e75                      rts

		.data

proto_alert:
[000c0a24]                           dc.b '[1][Alarmbox][ OK ]',0
ABOUT:
[000c0a38]                           dc.b '  šber mich ...',0
TEXT_002:
[000c0a48]                           dc.b $00
TEXT_003:
[000c0a49]                           dc.b $4f
[000c0a4a]                           dc.w $4b00
TEXT_006:
[000c0a4c]                           dc.b '1234567890123456789012345678901',0
TEXT_008:
[000c0a6c]                           dc.b 'Abbruch',0
TEXT_009:
[000c0a74]                           dc.b 'Global',0
TEXT_01:
[000c0a7b]                           dc.b '  Info...   ^I',0
TEXT_010:
[000c0a8a]                           dc.b 'Lokal',0
TEXT_02:
[000c0a90]                           dc.b '  Scope...  '
[000c0a9c]                           dc.w $0743
[000c0a9e]                           dc.b $00
TEXT_03:
[000c0a9f]                           dc.b '  Neu...    ^N',0
TEXT_04:
[000c0aae]                           dc.b '  Frei      ^F',0
TEXT_05:
[000c0abd]                           dc.b '  ™ffnen    ^O',0
TEXT_059:
[000c0acc]                           dc.b '12345678901234567890',0
TEXT_069:
[000c0ae1]                           dc.b 'Datei:',0
TEXT_07:
[000c0ae8]                           dc.b ' Referenztypen-Kollision ',0
TEXT_070:
[000c0b02]                           dc.b 'Liste:',0
TEXT_071:
[000c0b09]                           dc.b 'Objekt:',0
TEXT_08:
[000c0b11]                           dc.b 'Neu:',0
TEXT_09:
[000c0b16]                           dc.b ' Information ',0
TEXT_10:
[000c0b24]                           dc.b 'Alt',0
TEXT_11:
[000c0b28]                           dc.b 'Neu',0
TEXT_12:
[000c0b2c]                           dc.b 'Alt:',0
TEXT_13:
[000c0b31]                           dc.b ' Listen-Information ',0
TEXT_133:
[000c0b46]                           dc.b '123456',0
TEXT_14:
[000c0b4d]                           dc.b ' Sichtbarkeit ',0
TEXT_15:
[000c0b5c]                           dc.b '  Name...   '
[000c0b68]                           dc.w $074e
[000c0b6a]                           dc.b $00
TEXT_170:
[000c0b6b]                           dc.b '  šber mich ...     ',0
TEXT_171:
[000c0b80]                           dc.b '--------------------',0
TEXT_176:
[000c0b95]                           dc.b ' Optionen ',0
TEXT_190:
[000c0ba0]                           dc.b 'Gr”že:',0
TEXT_192:
[000c0ba7]                           dc.b 'Nutzen:',0
TEXT_195:
[000c0baf]                           dc.b 'Objekte:',0
al_list:
[000c0bb8]                           dc.b ' ALARMBOX LISTE ',0
al_name:
[000c0bc9]                           dc.b 'ALARMBOX NAME',0
ic_list:
[000c0bd7]                           dc.b ' IKONEN LISTE ',0
ic_name:
[000c0be6]                           dc.b 'IKONEN NAME',0
if_list:
[000c0bf2]                           dc.b ' DATEN LISTE ',0
if_name:
[000c0c00]                           dc.b 'DATEN NAME',0
im_list:
[000c0c0b]                           dc.b ' BILDER LISTE ',0
im_name:
[000c0c1a]                           dc.b 'BILD NAME',0
[000c0c24]                           dc.b $00
[000c0c25]                           dc.b $00
[000c0c26]                           dc.b $00
me_list:
[000c0c27]                           dc.b ' MENš LISTE ',0
me_name:
[000c0c34]                           dc.b 'MENš NAME',0
mf_list:
[000c0c3e]                           dc.b ' MAUSFORMEN LISTE ',0
mf_name:
[000c0c51]                           dc.b 'MAUSFORM NAME',0
ob_list:
[000c0c5f]                           dc.b ' OBJEKTBŽUME LISTE ',0
ob_name:
[000c0c73]                           dc.b 'OBJEKTBAUM NAME',0
proto_string:
[000c0c83]                           dc.b 'Freier String',0
proto_wihelpfile:
[000c0c91]                           dc.b $00
proto_wihelptitle:
[000c0c92]                           dc.b $00
proto_wiinfo:
[000c0c93]                           dc.b $00
proto_winame:
[000c0c94]                           dc.b ' Hinweis ',0
pu_list:
[000c0c9e]                           dc.b ' POPUP LISTE ',0
pu_name:
[000c0cac]                           dc.b 'POPUP NAME',0
rf_list:
[000c0cb7]                           dc.b ' REFERENZEN LISTE ',0
rf_name:
[000c0cca]                           dc.b 'REFERENZ NAME',0
st_list:
[000c0cd8]                           dc.b ' TEXTE LISTE ',0
st_name:
[000c0ce6]                           dc.b 'TEXT NAME',0
te_list:
[000c0cf0]                           dc.b ' TEDINFO LISTE ',0
te_name:
[000c0d00]                           dc.b 'TEDINFO NAME',0
us_list:
[000c0d0d]                           dc.b ' USERBLK LISTE ',0
us_name:
[000c0d1d]                           dc.b 'USERBLK NAME',0
wi_list:
[000c0d2a]                           dc.b ' FENSTER LISTE ',0
wi_name:
[000c0d3a]                           dc.b 'FENSTER NAME',0
[000c0d47]                           dc.b $00
TEDI_002:
[000c0d48] 000c0b46                  dc.l TEXT_133
[000c0d4c] 000c0a48                  dc.l TEXT_002
[000c0d50] 000c0a48                  dc.l TEXT_002
[000c0d54]                           dc.b $00
[000c0d55]                           dc.b $03
[000c0d56]                           dc.b $00
[000c0d57]                           dc.b $06
[000c0d58]                           dc.b $00
[000c0d59]                           dc.b $01
[000c0d5a]                           dc.w $1101
[000c0d5c]                           dc.b $00
[000c0d5d]                           dc.b $00
[000c0d5e]                           dc.b $00
[000c0d5f]                           dc.b $00
[000c0d60]                           dc.b $00
[000c0d61]                           dc.b $07
[000c0d62]                           dc.b $00
[000c0d63]                           dc.b $01
TEDI_003:
[000c0d64] 000c0a4c                  dc.l TEXT_006
[000c0d68] 000c0a48                  dc.l TEXT_002
[000c0d6c] 000c0a48                  dc.l TEXT_002
[000c0d70]                           dc.b $00
[000c0d71]                           dc.b $03
[000c0d72]                           dc.b $00
[000c0d73]                           dc.b $06
[000c0d74]                           dc.b $00
[000c0d75]                           dc.b $00
[000c0d76]                           dc.w $1180
[000c0d78]                           dc.b $00
[000c0d79]                           dc.b $00
[000c0d7a]                           dc.b $00
[000c0d7b]                           dc.b $00
[000c0d7c]                           dc.b $00
[000c0d7d]                           dc.b $20
[000c0d7e]                           dc.b $00
[000c0d7f]                           dc.b $01
TEDI_006:
[000c0d80] 000c0b46                  dc.l TEXT_133
[000c0d84] 000c0a48                  dc.l TEXT_002
[000c0d88] 000c0a48                  dc.l TEXT_002
[000c0d8c]                           dc.b $00
[000c0d8d]                           dc.b $03
[000c0d8e]                           dc.b $00
[000c0d8f]                           dc.b $06
[000c0d90]                           dc.b $00
[000c0d91]                           dc.b $01
[000c0d92]                           dc.w $1180
[000c0d94]                           dc.b $00
[000c0d95]                           dc.b $00
[000c0d96]                           dc.b $00
[000c0d97]                           dc.b $00
[000c0d98]                           dc.b $00
[000c0d99]                           dc.b $07
[000c0d9a]                           dc.b $00
[000c0d9b]                           dc.b $01
TEDI_008:
[000c0d9c] 000c0a4c                  dc.l TEXT_006
[000c0da0] 000c0a48                  dc.l TEXT_002
[000c0da4] 000c0a48                  dc.l TEXT_002
[000c0da8]                           dc.b $00
[000c0da9]                           dc.b $03
[000c0daa]                           dc.b $00
[000c0dab]                           dc.b $06
[000c0dac]                           dc.b $00
[000c0dad]                           dc.b $02
[000c0dae]                           dc.w $1180
[000c0db0]                           dc.b $00
[000c0db1]                           dc.b $00
[000c0db2]                           dc.b $00
[000c0db3]                           dc.b $00
[000c0db4]                           dc.b $00
[000c0db5]                           dc.b $20
[000c0db6]                           dc.b $00
[000c0db7]                           dc.b $01
TEDI_009:
[000c0db8] 000c0acc                  dc.l TEXT_059
[000c0dbc] 000c0a48                  dc.l TEXT_002
[000c0dc0] 000c0a48                  dc.l TEXT_002
[000c0dc4]                           dc.b $00
[000c0dc5]                           dc.b $03
[000c0dc6]                           dc.b $00
[000c0dc7]                           dc.b $06
[000c0dc8]                           dc.b $00
[000c0dc9]                           dc.b $00
[000c0dca]                           dc.w $1180
[000c0dcc]                           dc.b $00
[000c0dcd]                           dc.b $00
[000c0dce]                           dc.b $00
[000c0dcf]                           dc.b $00
[000c0dd0]                           dc.b $00
[000c0dd1]                           dc.b $15
[000c0dd2]                           dc.b $00
[000c0dd3]                           dc.b $01
TEDI_011:
[000c0dd4] 000c0a4c                  dc.l TEXT_006
[000c0dd8] 000c0a48                  dc.l TEXT_002
[000c0ddc] 000c0a48                  dc.l TEXT_002
[000c0de0]                           dc.b $00
[000c0de1]                           dc.b $03
[000c0de2]                           dc.b $00
[000c0de3]                           dc.b $06
[000c0de4]                           dc.b $00
[000c0de5]                           dc.b $00
[000c0de6]                           dc.w $1100
[000c0de8]                           dc.b $00
[000c0de9]                           dc.b $00
[000c0dea]                           dc.b $00
[000c0deb]                           dc.b $00
[000c0dec]                           dc.b $00
[000c0ded]                           dc.b $20
[000c0dee]                           dc.b $00
[000c0def]                           dc.b $01
A_3DBUTTON01:
[000c0df0] 0005a4e2                  dc.l A_3Dbutton
[000c0df4]                           dc.w $29c1
[000c0df6]                           dc.w $0178
[000c0df8] 00059318                  dc.l Auo_string
[000c0dfc] 000c0b28                  dc.l TEXT_11
[000c0e00]                           dc.b $00
[000c0e01]                           dc.b $00
[000c0e02]                           dc.b $00
[000c0e03]                           dc.b $00
[000c0e04]                           dc.b $00
[000c0e05]                           dc.b $00
[000c0e06]                           dc.b $00
[000c0e07]                           dc.b $00
[000c0e08]                           dc.b $00
[000c0e09]                           dc.b $00
[000c0e0a]                           dc.b $00
[000c0e0b]                           dc.b $00
[000c0e0c]                           dc.b $00
[000c0e0d]                           dc.b $00
[000c0e0e]                           dc.b $00
[000c0e0f]                           dc.b $00
A_3DBUTTON05:
[000c0e10] 0005a4e2                  dc.l A_3Dbutton
[000c0e14]                           dc.w $29e2
[000c0e16]                           dc.w $01f8
[000c0e18] 00059318                  dc.l Auo_string
[000c0e1c]                           dc.b $00
[000c0e1d]                           dc.b $00
[000c0e1e]                           dc.b $00
[000c0e1f]                           dc.b $00
[000c0e20]                           dc.b $00
[000c0e21]                           dc.b $00
[000c0e22]                           dc.b $00
[000c0e23]                           dc.b $00
[000c0e24]                           dc.b $00
[000c0e25]                           dc.b $00
[000c0e26]                           dc.b $00
[000c0e27]                           dc.b $00
[000c0e28]                           dc.b $00
[000c0e29]                           dc.b $00
[000c0e2a]                           dc.b $00
[000c0e2b]                           dc.b $00
[000c0e2c]                           dc.b $00
[000c0e2d]                           dc.b $00
[000c0e2e]                           dc.b $00
[000c0e2f]                           dc.b $00
A_3DBUTTON06:
[000c0e30] 0005a4e2                  dc.l A_3Dbutton
[000c0e34]                           dc.w $29c1
[000c0e36]                           dc.w $0178
[000c0e38] 00059318                  dc.l Auo_string
[000c0e3c] 000c0a6c                  dc.l TEXT_008
[000c0e40]                           dc.b $00
[000c0e41]                           dc.b $00
[000c0e42]                           dc.b $00
[000c0e43]                           dc.b $00
[000c0e44]                           dc.b $00
[000c0e45]                           dc.b $00
[000c0e46]                           dc.b $00
[000c0e47]                           dc.b $00
[000c0e48]                           dc.b $00
[000c0e49]                           dc.b $00
[000c0e4a]                           dc.b $00
[000c0e4b]                           dc.b $00
[000c0e4c]                           dc.b $00
[000c0e4d]                           dc.b $00
[000c0e4e]                           dc.b $00
[000c0e4f]                           dc.b $00
A_3DBUTTON07:
[000c0e50] 0005a4e2                  dc.l A_3Dbutton
[000c0e54]                           dc.w $29c1
[000c0e56]                           dc.w $0178
[000c0e58] 00059318                  dc.l Auo_string
[000c0e5c] 000c0b24                  dc.l TEXT_10
[000c0e60]                           dc.b $00
[000c0e61]                           dc.b $00
[000c0e62]                           dc.b $00
[000c0e63]                           dc.b $00
[000c0e64]                           dc.b $00
[000c0e65]                           dc.b $00
[000c0e66]                           dc.b $00
[000c0e67]                           dc.b $00
[000c0e68]                           dc.b $00
[000c0e69]                           dc.b $00
[000c0e6a]                           dc.b $00
[000c0e6b]                           dc.b $00
[000c0e6c]                           dc.b $00
[000c0e6d]                           dc.b $00
[000c0e6e]                           dc.b $00
[000c0e6f]                           dc.b $00
A_3DBUTTON09:
[000c0e70] 0005a4e2                  dc.l A_3Dbutton
[000c0e74]                           dc.w $29c1
[000c0e76]                           dc.w $0178
[000c0e78] 00059318                  dc.l Auo_string
[000c0e7c] 000c0a49                  dc.l TEXT_003
[000c0e80]                           dc.b $00
[000c0e81]                           dc.b $00
[000c0e82]                           dc.b $00
[000c0e83]                           dc.b $00
[000c0e84]                           dc.b $00
[000c0e85]                           dc.b $00
[000c0e86]                           dc.b $00
[000c0e87]                           dc.b $00
[000c0e88]                           dc.b $00
[000c0e89]                           dc.b $00
[000c0e8a]                           dc.b $00
[000c0e8b]                           dc.b $00
[000c0e8c]                           dc.b $00
[000c0e8d]                           dc.b $00
[000c0e8e]                           dc.b $00
[000c0e8f]                           dc.b $00
A_CHECKBOX01:
[000c0e90] 000593fc                  dc.l A_checkbox
[000c0e94]                           dc.b $00
[000c0e95]                           dc.b $00
[000c0e96]                           dc.b $00
[000c0e97]                           dc.b $01
[000c0e98] 00059318                  dc.l Auo_string
[000c0e9c] 000c0a74                  dc.l TEXT_009
[000c0ea0]                           dc.b $00
[000c0ea1]                           dc.b $00
[000c0ea2]                           dc.b $00
[000c0ea3]                           dc.b $00
[000c0ea4]                           dc.b $00
[000c0ea5]                           dc.b $00
[000c0ea6]                           dc.b $00
[000c0ea7]                           dc.b $00
[000c0ea8]                           dc.b $00
[000c0ea9]                           dc.b $00
[000c0eaa]                           dc.b $00
[000c0eab]                           dc.b $00
[000c0eac]                           dc.b $00
[000c0ead]                           dc.b $00
[000c0eae]                           dc.b $00
[000c0eaf]                           dc.b $00
A_CHECKBOX03:
[000c0eb0] 000593fc                  dc.l A_checkbox
[000c0eb4]                           dc.b $00
[000c0eb5]                           dc.b $00
[000c0eb6]                           dc.b $00
[000c0eb7]                           dc.b $01
[000c0eb8] 00059318                  dc.l Auo_string
[000c0ebc] 000c0a8a                  dc.l TEXT_010
[000c0ec0]                           dc.b $00
[000c0ec1]                           dc.b $00
[000c0ec2]                           dc.b $00
[000c0ec3]                           dc.b $00
[000c0ec4]                           dc.b $00
[000c0ec5]                           dc.b $00
[000c0ec6]                           dc.b $00
[000c0ec7]                           dc.b $00
[000c0ec8]                           dc.b $00
[000c0ec9]                           dc.b $00
[000c0eca]                           dc.b $00
[000c0ecb]                           dc.b $00
[000c0ecc]                           dc.b $00
[000c0ecd]                           dc.b $00
[000c0ece]                           dc.b $00
[000c0ecf]                           dc.b $00
MEN_LIST:
[000c0ed0]                           dc.w $ffff
[000c0ed2]                           dc.b $00
[000c0ed3]                           dc.b $01
[000c0ed4]                           dc.b $00
[000c0ed5]                           dc.b $05
[000c0ed6]                           dc.b $00
[000c0ed7]                           dc.b $19
[000c0ed8]                           dc.b $00
[000c0ed9]                           dc.b $00
[000c0eda]                           dc.b $00
[000c0edb]                           dc.b $00
[000c0edc]                           dc.b $00
[000c0edd]                           dc.b $00
[000c0ede]                           dc.b $00
[000c0edf]                           dc.b $00
[000c0ee0]                           dc.b $00
[000c0ee1]                           dc.b $00
[000c0ee2]                           dc.b $00
[000c0ee3]                           dc.b $00
[000c0ee4]                           dc.b $00
[000c0ee5]                           dc.b $5a
[000c0ee6]                           dc.b $00
[000c0ee7]                           dc.b $19
_01_MEN_LIST:
[000c0ee8]                           dc.b $00
[000c0ee9]                           dc.b $05
[000c0eea]                           dc.b $00
[000c0eeb]                           dc.b $02
[000c0eec]                           dc.b $00
[000c0eed]                           dc.b $02
[000c0eee]                           dc.b $00
[000c0eef]                           dc.b $14
[000c0ef0]                           dc.b $00
[000c0ef1]                           dc.b $00
[000c0ef2]                           dc.b $00
[000c0ef3]                           dc.b $00
[000c0ef4]                           dc.b $00
[000c0ef5]                           dc.b $00
[000c0ef6]                           dc.w $1100
[000c0ef8]                           dc.b $00
[000c0ef9]                           dc.b $00
[000c0efa]                           dc.b $00
[000c0efb]                           dc.b $00
[000c0efc]                           dc.b $00
[000c0efd]                           dc.b $5a
[000c0efe]                           dc.w $0201
_02_MEN_LIST:
[000c0f00]                           dc.b $00
[000c0f01]                           dc.b $01
[000c0f02]                           dc.b $00
[000c0f03]                           dc.b $03
[000c0f04]                           dc.b $00
[000c0f05]                           dc.b $04
[000c0f06]                           dc.b $00
[000c0f07]                           dc.b $19
[000c0f08]                           dc.b $00
[000c0f09]                           dc.b $00
[000c0f0a]                           dc.b $00
[000c0f0b]                           dc.b $00
[000c0f0c]                           dc.b $00
[000c0f0d]                           dc.b $00
[000c0f0e]                           dc.b $00
[000c0f0f]                           dc.b $00
[000c0f10]                           dc.b $00
[000c0f11]                           dc.b $02
[000c0f12]                           dc.b $00
[000c0f13]                           dc.b $00
[000c0f14]                           dc.b $00
[000c0f15]                           dc.b $10
[000c0f16]                           dc.w $0301
_03_MEN_LIST:
[000c0f18]                           dc.b $00
[000c0f19]                           dc.b $04
[000c0f1a]                           dc.w $ffff
[000c0f1c]                           dc.w $ffff
[000c0f1e]                           dc.b $00
[000c0f1f]                           dc.b $20
[000c0f20]                           dc.b $00
[000c0f21]                           dc.b $00
[000c0f22]                           dc.b $00
[000c0f23]                           dc.b $00
[000c0f24] 000c0a48                  dc.l TEXT_002
[000c0f28]                           dc.b $00
[000c0f29]                           dc.b $00
[000c0f2a]                           dc.b $00
[000c0f2b]                           dc.b $00
[000c0f2c]                           dc.b $00
[000c0f2d]                           dc.b $06
[000c0f2e]                           dc.w $0301
_04_MEN_LIST:
[000c0f30]                           dc.b $00
[000c0f31]                           dc.b $02
[000c0f32]                           dc.w $ffff
[000c0f34]                           dc.w $ffff
[000c0f36]                           dc.b $00
[000c0f37]                           dc.b $20
[000c0f38]                           dc.b $00
[000c0f39]                           dc.b $00
[000c0f3a]                           dc.b $00
[000c0f3b]                           dc.b $00
[000c0f3c] 000c0b95                  dc.l TEXT_176
[000c0f40]                           dc.b $00
[000c0f41]                           dc.b $06
[000c0f42]                           dc.b $00
[000c0f43]                           dc.b $00
[000c0f44]                           dc.b $00
[000c0f45]                           dc.b $0a
[000c0f46]                           dc.w $0301
_05_MEN_LIST:
[000c0f48]                           dc.b $00
[000c0f49]                           dc.b $00
[000c0f4a]                           dc.b $00
[000c0f4b]                           dc.b $06
[000c0f4c]                           dc.b $00
[000c0f4d]                           dc.b $0f
[000c0f4e]                           dc.b $00
[000c0f4f]                           dc.b $19
[000c0f50]                           dc.b $00
[000c0f51]                           dc.b $00
[000c0f52]                           dc.b $00
[000c0f53]                           dc.b $00
[000c0f54]                           dc.b $00
[000c0f55]                           dc.b $00
[000c0f56]                           dc.b $00
[000c0f57]                           dc.b $00
[000c0f58]                           dc.b $00
[000c0f59]                           dc.b $00
[000c0f5a]                           dc.w $0301
[000c0f5c]                           dc.b $00
[000c0f5d]                           dc.b $50
[000c0f5e]                           dc.b $00
[000c0f5f]                           dc.b $13
_06_MEN_LIST:
[000c0f60]                           dc.b $00
[000c0f61]                           dc.b $0f
[000c0f62]                           dc.b $00
[000c0f63]                           dc.b $07
[000c0f64]                           dc.b $00
[000c0f65]                           dc.b $0e
[000c0f66]                           dc.b $00
[000c0f67]                           dc.b $14
[000c0f68]                           dc.b $00
[000c0f69]                           dc.b $00
[000c0f6a]                           dc.b $00
[000c0f6b]                           dc.b $00
[000c0f6c]                           dc.b $00
[000c0f6d]                           dc.b $ff
[000c0f6e]                           dc.w $1100
[000c0f70]                           dc.b $00
[000c0f71]                           dc.b $02
[000c0f72]                           dc.b $00
[000c0f73]                           dc.b $00
[000c0f74]                           dc.b $00
[000c0f75]                           dc.b $14
[000c0f76]                           dc.b $00
[000c0f77]                           dc.b $08
_07_MEN_LIST:
[000c0f78]                           dc.b $00
[000c0f79]                           dc.b $08
[000c0f7a]                           dc.w $ffff
[000c0f7c]                           dc.w $ffff
[000c0f7e]                           dc.b $00
[000c0f7f]                           dc.b $1c
[000c0f80]                           dc.b $00
[000c0f81]                           dc.b $00
[000c0f82]                           dc.w $2000
[000c0f84] 000c0b6b                  dc.l TEXT_170
[000c0f88]                           dc.b $00
[000c0f89]                           dc.b $00
[000c0f8a]                           dc.b $00
[000c0f8b]                           dc.b $00
[000c0f8c]                           dc.b $00
[000c0f8d]                           dc.b $14
[000c0f8e]                           dc.b $00
[000c0f8f]                           dc.b $01
_08_MEN_LIST:
[000c0f90]                           dc.b $00
[000c0f91]                           dc.b $09
[000c0f92]                           dc.w $ffff
[000c0f94]                           dc.w $ffff
[000c0f96]                           dc.b $00
[000c0f97]                           dc.b $1c
[000c0f98]                           dc.b $00
[000c0f99]                           dc.b $00
[000c0f9a]                           dc.w $2000
[000c0f9c] 000c0b80                  dc.l TEXT_171
[000c0fa0]                           dc.b $00
[000c0fa1]                           dc.b $00
[000c0fa2]                           dc.b $00
[000c0fa3]                           dc.b $01
[000c0fa4]                           dc.b $00
[000c0fa5]                           dc.b $14
[000c0fa6]                           dc.b $00
[000c0fa7]                           dc.b $01
_09_MEN_LIST:
[000c0fa8]                           dc.b $00
[000c0fa9]                           dc.b $0a
[000c0faa]                           dc.w $ffff
[000c0fac]                           dc.w $ffff
[000c0fae]                           dc.b $00
[000c0faf]                           dc.b $1c
[000c0fb0]                           dc.b $00
[000c0fb1]                           dc.b $00
[000c0fb2]                           dc.w $2000
[000c0fb4] 000c0a48                  dc.l TEXT_002
[000c0fb8]                           dc.b $00
[000c0fb9]                           dc.b $00
[000c0fba]                           dc.b $00
[000c0fbb]                           dc.b $02
[000c0fbc]                           dc.b $00
[000c0fbd]                           dc.b $14
[000c0fbe]                           dc.b $00
[000c0fbf]                           dc.b $01
_10_MEN_LIST:
[000c0fc0]                           dc.b $00
[000c0fc1]                           dc.b $0b
[000c0fc2]                           dc.w $ffff
[000c0fc4]                           dc.w $ffff
[000c0fc6]                           dc.b $00
[000c0fc7]                           dc.b $1c
[000c0fc8]                           dc.b $00
[000c0fc9]                           dc.b $00
[000c0fca]                           dc.w $2000
[000c0fcc] 000c0a48                  dc.l TEXT_002
[000c0fd0]                           dc.b $00
[000c0fd1]                           dc.b $00
[000c0fd2]                           dc.b $00
[000c0fd3]                           dc.b $03
[000c0fd4]                           dc.b $00
[000c0fd5]                           dc.b $14
[000c0fd6]                           dc.b $00
[000c0fd7]                           dc.b $01
_11_MEN_LIST:
[000c0fd8]                           dc.b $00
[000c0fd9]                           dc.b $0c
[000c0fda]                           dc.w $ffff
[000c0fdc]                           dc.w $ffff
[000c0fde]                           dc.b $00
[000c0fdf]                           dc.b $1c
[000c0fe0]                           dc.b $00
[000c0fe1]                           dc.b $00
[000c0fe2]                           dc.w $2000
[000c0fe4] 000c0a48                  dc.l TEXT_002
[000c0fe8]                           dc.b $00
[000c0fe9]                           dc.b $00
[000c0fea]                           dc.b $00
[000c0feb]                           dc.b $04
[000c0fec]                           dc.b $00
[000c0fed]                           dc.b $14
[000c0fee]                           dc.b $00
[000c0fef]                           dc.b $01
_12_MEN_LIST:
[000c0ff0]                           dc.b $00
[000c0ff1]                           dc.b $0d
[000c0ff2]                           dc.w $ffff
[000c0ff4]                           dc.w $ffff
[000c0ff6]                           dc.b $00
[000c0ff7]                           dc.b $1c
[000c0ff8]                           dc.b $00
[000c0ff9]                           dc.b $00
[000c0ffa]                           dc.w $2000
[000c0ffc] 000c0a48                  dc.l TEXT_002
[000c1000]                           dc.b $00
[000c1001]                           dc.b $00
[000c1002]                           dc.b $00
[000c1003]                           dc.b $05
[000c1004]                           dc.b $00
[000c1005]                           dc.b $14
[000c1006]                           dc.b $00
[000c1007]                           dc.b $01
_13_MEN_LIST:
[000c1008]                           dc.b $00
[000c1009]                           dc.b $0e
[000c100a]                           dc.w $ffff
[000c100c]                           dc.w $ffff
[000c100e]                           dc.b $00
[000c100f]                           dc.b $1c
[000c1010]                           dc.b $00
[000c1011]                           dc.b $00
[000c1012]                           dc.w $2000
[000c1014] 000c0a48                  dc.l TEXT_002
[000c1018]                           dc.b $00
[000c1019]                           dc.b $00
[000c101a]                           dc.b $00
[000c101b]                           dc.b $06
[000c101c]                           dc.b $00
[000c101d]                           dc.b $14
[000c101e]                           dc.b $00
[000c101f]                           dc.b $01
_14_MEN_LIST:
[000c1020]                           dc.b $00
[000c1021]                           dc.b $06
[000c1022]                           dc.w $ffff
[000c1024]                           dc.w $ffff
[000c1026]                           dc.b $00
[000c1027]                           dc.b $1c
[000c1028]                           dc.b $00
[000c1029]                           dc.b $00
[000c102a]                           dc.w $2000
[000c102c] 000c0a48                  dc.l TEXT_002
[000c1030]                           dc.b $00
[000c1031]                           dc.b $00
[000c1032]                           dc.b $00
[000c1033]                           dc.b $07
[000c1034]                           dc.b $00
[000c1035]                           dc.b $12
[000c1036]                           dc.b $00
[000c1037]                           dc.b $01
_15_MEN_LIST:
[000c1038]                           dc.b $00
[000c1039]                           dc.b $05
[000c103a]                           dc.b $00
[000c103b]                           dc.b $10
[000c103c]                           dc.b $00
[000c103d]                           dc.b $1a
[000c103e]                           dc.b $00
[000c103f]                           dc.b $14
[000c1040]                           dc.b $00
[000c1041]                           dc.b $00
[000c1042]                           dc.b $00
[000c1043]                           dc.b $00
[000c1044]                           dc.b $00
[000c1045]                           dc.b $ff
[000c1046]                           dc.w $1101
[000c1048]                           dc.b $00
[000c1049]                           dc.b $08
[000c104a]                           dc.b $00
[000c104b]                           dc.b $00
[000c104c]                           dc.b $00
[000c104d]                           dc.b $15
[000c104e]                           dc.b $00
[000c104f]                           dc.b $06
_16_MEN_LIST:
[000c1050]                           dc.b $00
[000c1051]                           dc.b $12
[000c1052]                           dc.w $ffff
[000c1054]                           dc.w $ffff
[000c1056]                           dc.b $00
[000c1057]                           dc.b $1c
[000c1058]                           dc.b $00
[000c1059]                           dc.b $00
[000c105a]                           dc.w $0100
[000c105c] 000c0a9f                  dc.l TEXT_03
[000c1060]                           dc.b $00
[000c1061]                           dc.b $00
[000c1062]                           dc.b $00
[000c1063]                           dc.b $00
[000c1064]                           dc.b $00
[000c1065]                           dc.b $15
[000c1066]                           dc.b $00
[000c1067]                           dc.b $01
_16aMEN_LIST:
[000c1068] 000320a6                  dc.l li_new
[000c106c]                           dc.b $00
[000c106d]                           dc.b $00
[000c106e]                           dc.b $00
[000c106f]                           dc.b $00
[000c1070]                           dc.w $8000
[000c1072]                           dc.w $844e
[000c1074]                           dc.b $00
[000c1075]                           dc.b $00
[000c1076]                           dc.b $00
[000c1077]                           dc.b $00
[000c1078]                           dc.b $00
[000c1079]                           dc.b $00
[000c107a]                           dc.b $00
[000c107b]                           dc.b $00
[000c107c]                           dc.b $00
[000c107d]                           dc.b $00
[000c107e]                           dc.b $00
[000c107f]                           dc.b $00
_18_MEN_LIST:
[000c1080]                           dc.b $00
[000c1081]                           dc.b $14
[000c1082]                           dc.w $ffff
[000c1084]                           dc.w $ffff
[000c1086]                           dc.b $00
[000c1087]                           dc.b $1c
[000c1088]                           dc.b $00
[000c1089]                           dc.b $00
[000c108a]                           dc.w $0108
[000c108c] 000c0aae                  dc.l TEXT_04
[000c1090]                           dc.b $00
[000c1091]                           dc.b $00
[000c1092]                           dc.b $00
[000c1093]                           dc.b $04
[000c1094]                           dc.b $00
[000c1095]                           dc.b $15
[000c1096]                           dc.b $00
[000c1097]                           dc.b $01
_18aMEN_LIST:
[000c1098] 00031c72                  dc.l li_setfree
[000c109c]                           dc.b $00
[000c109d]                           dc.b $00
[000c109e]                           dc.b $00
[000c109f]                           dc.b $00
[000c10a0]                           dc.w $8000
[000c10a2]                           dc.w $8446
[000c10a4]                           dc.b $00
[000c10a5]                           dc.b $00
[000c10a6]                           dc.b $00
[000c10a7]                           dc.b $00
[000c10a8]                           dc.b $00
[000c10a9]                           dc.b $00
[000c10aa]                           dc.b $00
[000c10ab]                           dc.b $00
[000c10ac]                           dc.b $00
[000c10ad]                           dc.b $00
[000c10ae]                           dc.b $00
[000c10af]                           dc.b $00
_20_MEN_LIST:
[000c10b0]                           dc.b $00
[000c10b1]                           dc.b $16
[000c10b2]                           dc.w $ffff
[000c10b4]                           dc.w $ffff
[000c10b6]                           dc.b $00
[000c10b7]                           dc.b $1c
[000c10b8]                           dc.b $00
[000c10b9]                           dc.b $00
[000c10ba]                           dc.w $0100
[000c10bc] 000c0a7b                  dc.l TEXT_01
[000c10c0]                           dc.b $00
[000c10c1]                           dc.b $00
[000c10c2]                           dc.b $00
[000c10c3]                           dc.b $03
[000c10c4]                           dc.b $00
[000c10c5]                           dc.b $15
[000c10c6]                           dc.b $00
[000c10c7]                           dc.b $01
_20aMEN_LIST:
[000c10c8] 00031d32                  dc.l li_info
[000c10cc]                           dc.b $00
[000c10cd]                           dc.b $00
[000c10ce]                           dc.b $00
[000c10cf]                           dc.b $00
[000c10d0]                           dc.w $8000
[000c10d2]                           dc.w $8449
[000c10d4]                           dc.b $00
[000c10d5]                           dc.b $00
[000c10d6]                           dc.b $00
[000c10d7]                           dc.b $00
[000c10d8]                           dc.b $00
[000c10d9]                           dc.b $00
[000c10da]                           dc.b $00
[000c10db]                           dc.b $00
[000c10dc]                           dc.b $00
[000c10dd]                           dc.b $00
[000c10de]                           dc.b $00
[000c10df]                           dc.b $00
_22_MEN_LIST:
[000c10e0]                           dc.b $00
[000c10e1]                           dc.b $18
[000c10e2]                           dc.w $ffff
[000c10e4]                           dc.w $ffff
[000c10e6]                           dc.b $00
[000c10e7]                           dc.b $1c
[000c10e8]                           dc.b $00
[000c10e9]                           dc.b $00
[000c10ea]                           dc.w $0108
[000c10ec] 000c0abd                  dc.l TEXT_05
[000c10f0]                           dc.b $00
[000c10f1]                           dc.b $00
[000c10f2]                           dc.b $00
[000c10f3]                           dc.b $02
[000c10f4]                           dc.b $00
[000c10f5]                           dc.b $15
[000c10f6]                           dc.b $00
[000c10f7]                           dc.b $01
_22aMEN_LIST:
[000c10f8] 00031ce6                  dc.l li_open
[000c10fc]                           dc.b $00
[000c10fd]                           dc.b $00
[000c10fe]                           dc.b $00
[000c10ff]                           dc.b $00
[000c1100]                           dc.w $8000
[000c1102]                           dc.w $844f
[000c1104]                           dc.b $00
[000c1105]                           dc.b $00
[000c1106]                           dc.b $00
[000c1107]                           dc.b $00
[000c1108]                           dc.b $00
[000c1109]                           dc.b $00
[000c110a]                           dc.b $00
[000c110b]                           dc.b $00
[000c110c]                           dc.b $00
[000c110d]                           dc.b $00
[000c110e]                           dc.b $00
[000c110f]                           dc.b $00
_24_MEN_LIST:
[000c1110]                           dc.b $00
[000c1111]                           dc.b $1a
[000c1112]                           dc.w $ffff
[000c1114]                           dc.w $ffff
[000c1116]                           dc.b $00
[000c1117]                           dc.b $1c
[000c1118]                           dc.b $00
[000c1119]                           dc.b $00
[000c111a]                           dc.w $0108
[000c111c] 000c0b5c                  dc.l TEXT_15
[000c1120]                           dc.b $00
[000c1121]                           dc.b $00
[000c1122]                           dc.b $00
[000c1123]                           dc.b $01
[000c1124]                           dc.b $00
[000c1125]                           dc.b $15
[000c1126]                           dc.b $00
[000c1127]                           dc.b $01
_24aMEN_LIST:
[000c1128] 00031bc8                  dc.l li_changename
[000c112c]                           dc.b $00
[000c112d]                           dc.b $00
[000c112e]                           dc.b $00
[000c112f]                           dc.b $00
[000c1130]                           dc.w $8000
[000c1132]                           dc.w $884e
[000c1134]                           dc.b $00
[000c1135]                           dc.b $00
[000c1136]                           dc.b $00
[000c1137]                           dc.b $00
[000c1138]                           dc.b $00
[000c1139]                           dc.b $00
[000c113a]                           dc.b $00
[000c113b]                           dc.b $00
[000c113c]                           dc.b $00
[000c113d]                           dc.b $00
[000c113e]                           dc.b $00
[000c113f]                           dc.b $00
_26_MEN_LIST:
[000c1140]                           dc.b $00
[000c1141]                           dc.b $0f
[000c1142]                           dc.w $ffff
[000c1144]                           dc.w $ffff
[000c1146]                           dc.b $00
[000c1147]                           dc.b $1c
[000c1148]                           dc.b $00
[000c1149]                           dc.b $00
[000c114a]                           dc.w $0108
[000c114c] 000c0a90                  dc.l TEXT_02
[000c1150]                           dc.b $00
[000c1151]                           dc.b $00
[000c1152]                           dc.b $00
[000c1153]                           dc.b $05
[000c1154]                           dc.b $00
[000c1155]                           dc.b $15
[000c1156]                           dc.b $00
[000c1157]                           dc.b $01
_26aMEN_LIST:
[000c1158] 000325b4                  dc.l li_scope
[000c115c]                           dc.b $00
[000c115d]                           dc.b $00
[000c115e]                           dc.b $00
[000c115f]                           dc.b $00
[000c1160]                           dc.w $8020
[000c1162]                           dc.w $8843
[000c1164]                           dc.b $00
[000c1165]                           dc.b $00
[000c1166]                           dc.b $00
[000c1167]                           dc.b $00
[000c1168]                           dc.b $00
[000c1169]                           dc.b $00
[000c116a]                           dc.b $00
[000c116b]                           dc.b $00
[000c116c]                           dc.b $00
[000c116d]                           dc.b $00
[000c116e]                           dc.b $00
[000c116f]                           dc.b $00
DIFF_TYPE:
[000c1170]                           dc.w $ffff
[000c1172]                           dc.b $00
[000c1173]                           dc.b $01
[000c1174]                           dc.b $00
[000c1175]                           dc.b $01
[000c1176]                           dc.b $00
[000c1177]                           dc.b $19
[000c1178]                           dc.b $00
[000c1179]                           dc.b $00
[000c117a]                           dc.b $00
[000c117b]                           dc.b $00
[000c117c]                           dc.b $00
[000c117d]                           dc.b $ff
[000c117e]                           dc.w $1141
[000c1180]                           dc.b $00
[000c1181]                           dc.b $00
[000c1182]                           dc.b $00
[000c1183]                           dc.b $00
[000c1184]                           dc.b $00
[000c1185]                           dc.b $24
[000c1186]                           dc.b $00
[000c1187]                           dc.b $09
_01_DIFF_TYPE:
[000c1188]                           dc.b $00
[000c1189]                           dc.b $00
[000c118a]                           dc.b $00
[000c118b]                           dc.b $02
[000c118c]                           dc.b $00
[000c118d]                           dc.b $0c
[000c118e]                           dc.b $00
[000c118f]                           dc.b $18
[000c1190]                           dc.b $00
[000c1191]                           dc.b $40
[000c1192]                           dc.b $00
[000c1193]                           dc.b $10
[000c1194] 000c0e10                  dc.l A_3DBUTTON05
[000c1198]                           dc.b $00
[000c1199]                           dc.b $00
[000c119a]                           dc.b $00
[000c119b]                           dc.b $00
[000c119c]                           dc.b $00
[000c119d]                           dc.b $24
[000c119e]                           dc.b $00
[000c119f]                           dc.b $09
_02_DIFF_TYPE:
[000c11a0]                           dc.b $00
[000c11a1]                           dc.b $03
[000c11a2]                           dc.w $ffff
[000c11a4]                           dc.w $ffff
[000c11a6]                           dc.b $00
[000c11a7]                           dc.b $1c
[000c11a8]                           dc.b $00
[000c11a9]                           dc.b $40
[000c11aa]                           dc.b $00
[000c11ab]                           dc.b $00
[000c11ac] 000c0b2c                  dc.l TEXT_12
[000c11b0]                           dc.b $00
[000c11b1]                           dc.b $05
[000c11b2]                           dc.b $00
[000c11b3]                           dc.b $03
[000c11b4]                           dc.b $00
[000c11b5]                           dc.b $04
[000c11b6]                           dc.b $00
[000c11b7]                           dc.b $01
_03_DIFF_TYPE:
[000c11b8]                           dc.b $00
[000c11b9]                           dc.b $04
[000c11ba]                           dc.w $ffff
[000c11bc]                           dc.w $ffff
[000c11be]                           dc.b $00
[000c11bf]                           dc.b $16
[000c11c0]                           dc.b $00
[000c11c1]                           dc.b $40
[000c11c2]                           dc.b $00
[000c11c3]                           dc.b $00
[000c11c4] 000c0db8                  dc.l TEDI_009
[000c11c8]                           dc.b $00
[000c11c9]                           dc.b $0b
[000c11ca]                           dc.b $00
[000c11cb]                           dc.b $03
[000c11cc]                           dc.b $00
[000c11cd]                           dc.b $14
[000c11ce]                           dc.b $00
[000c11cf]                           dc.b $01
_04_DIFF_TYPE:
[000c11d0]                           dc.b $00
[000c11d1]                           dc.b $05
[000c11d2]                           dc.w $ffff
[000c11d4]                           dc.w $ffff
[000c11d6]                           dc.b $00
[000c11d7]                           dc.b $16
[000c11d8]                           dc.b $00
[000c11d9]                           dc.b $40
[000c11da]                           dc.b $00
[000c11db]                           dc.b $00
[000c11dc] 000c0db8                  dc.l TEDI_009
[000c11e0]                           dc.b $00
[000c11e1]                           dc.b $0b
[000c11e2]                           dc.b $00
[000c11e3]                           dc.b $04
[000c11e4]                           dc.b $00
[000c11e5]                           dc.b $14
[000c11e6]                           dc.b $00
[000c11e7]                           dc.b $01
_05_DIFF_TYPE:
[000c11e8]                           dc.b $00
[000c11e9]                           dc.b $06
[000c11ea]                           dc.w $ffff
[000c11ec]                           dc.w $ffff
[000c11ee]                           dc.b $00
[000c11ef]                           dc.b $1c
[000c11f0]                           dc.b $00
[000c11f1]                           dc.b $40
[000c11f2]                           dc.b $00
[000c11f3]                           dc.b $00
[000c11f4] 000c0b11                  dc.l TEXT_08
[000c11f8]                           dc.b $00
[000c11f9]                           dc.b $05
[000c11fa]                           dc.b $00
[000c11fb]                           dc.b $04
[000c11fc]                           dc.b $00
[000c11fd]                           dc.b $04
[000c11fe]                           dc.b $00
[000c11ff]                           dc.b $01
_06_DIFF_TYPE:
[000c1200]                           dc.b $00
[000c1201]                           dc.b $08
[000c1202]                           dc.w $ffff
[000c1204]                           dc.w $ffff
[000c1206]                           dc.b $00
[000c1207]                           dc.b $18
[000c1208]                           dc.w $4007
[000c120a]                           dc.b $00
[000c120b]                           dc.b $10
[000c120c] 000c0df0                  dc.l A_3DBUTTON01
[000c1210]                           dc.b $00
[000c1211]                           dc.b $01
[000c1212]                           dc.b $00
[000c1213]                           dc.b $06
[000c1214]                           dc.b $00
[000c1215]                           dc.b $0a
[000c1216]                           dc.b $00
[000c1217]                           dc.b $02
_06aDIFF_TYPE:
[000c1218]                           dc.b $00
[000c1219]                           dc.b $00
[000c121a]                           dc.b $00
[000c121b]                           dc.b $00
[000c121c]                           dc.b $00
[000c121d]                           dc.b $00
[000c121e]                           dc.b $00
[000c121f]                           dc.b $00
[000c1220]                           dc.w $8000
[000c1222]                           dc.w $884e
[000c1224]                           dc.b $00
[000c1225]                           dc.b $00
[000c1226]                           dc.b $00
[000c1227]                           dc.b $00
[000c1228]                           dc.b $00
[000c1229]                           dc.b $00
[000c122a]                           dc.b $00
[000c122b]                           dc.b $00
[000c122c]                           dc.b $00
[000c122d]                           dc.b $00
[000c122e]                           dc.b $00
[000c122f]                           dc.b $00
_08_DIFF_TYPE:
[000c1230]                           dc.b $00
[000c1231]                           dc.b $0a
[000c1232]                           dc.w $ffff
[000c1234]                           dc.w $ffff
[000c1236]                           dc.b $00
[000c1237]                           dc.b $18
[000c1238]                           dc.w $4005
[000c123a]                           dc.b $00
[000c123b]                           dc.b $10
[000c123c] 000c0e50                  dc.l A_3DBUTTON07
[000c1240]                           dc.b $00
[000c1241]                           dc.b $0d
[000c1242]                           dc.b $00
[000c1243]                           dc.b $06
[000c1244]                           dc.b $00
[000c1245]                           dc.b $0a
[000c1246]                           dc.b $00
[000c1247]                           dc.b $02
_08aDIFF_TYPE:
[000c1248]                           dc.b $00
[000c1249]                           dc.b $00
[000c124a]                           dc.b $00
[000c124b]                           dc.b $00
[000c124c]                           dc.b $00
[000c124d]                           dc.b $00
[000c124e]                           dc.b $00
[000c124f]                           dc.b $00
[000c1250]                           dc.w $8000
[000c1252]                           dc.w $884c
[000c1254]                           dc.b $00
[000c1255]                           dc.b $00
[000c1256]                           dc.b $00
[000c1257]                           dc.b $00
[000c1258]                           dc.b $00
[000c1259]                           dc.b $00
[000c125a]                           dc.b $00
[000c125b]                           dc.b $00
[000c125c]                           dc.b $00
[000c125d]                           dc.b $00
[000c125e]                           dc.b $00
[000c125f]                           dc.b $00
_10_DIFF_TYPE:
[000c1260]                           dc.b $00
[000c1261]                           dc.b $0c
[000c1262]                           dc.w $ffff
[000c1264]                           dc.w $ffff
[000c1266]                           dc.b $00
[000c1267]                           dc.b $18
[000c1268]                           dc.w $4005
[000c126a]                           dc.b $00
[000c126b]                           dc.b $10
[000c126c] 000c0e30                  dc.l A_3DBUTTON06
[000c1270]                           dc.b $00
[000c1271]                           dc.b $19
[000c1272]                           dc.b $00
[000c1273]                           dc.b $06
[000c1274]                           dc.b $00
[000c1275]                           dc.b $0a
[000c1276]                           dc.b $00
[000c1277]                           dc.b $02
_10aDIFF_TYPE:
[000c1278]                           dc.b $00
[000c1279]                           dc.b $00
[000c127a]                           dc.b $00
[000c127b]                           dc.b $00
[000c127c]                           dc.b $00
[000c127d]                           dc.b $00
[000c127e]                           dc.b $00
[000c127f]                           dc.b $00
[000c1280]                           dc.w $8000
[000c1282]                           dc.w $8841
[000c1284]                           dc.b $00
[000c1285]                           dc.b $00
[000c1286]                           dc.b $00
[000c1287]                           dc.b $00
[000c1288]                           dc.b $00
[000c1289]                           dc.b $00
[000c128a]                           dc.b $00
[000c128b]                           dc.b $00
[000c128c]                           dc.b $00
[000c128d]                           dc.b $00
[000c128e]                           dc.b $00
[000c128f]                           dc.b $00
_12_DIFF_TYPE:
[000c1290]                           dc.b $00
[000c1291]                           dc.b $01
[000c1292]                           dc.w $ffff
[000c1294]                           dc.w $ffff
[000c1296]                           dc.b $00
[000c1297]                           dc.b $16
[000c1298]                           dc.b $00
[000c1299]                           dc.b $60
[000c129a]                           dc.b $00
[000c129b]                           dc.b $00
[000c129c] 000c0d9c                  dc.l TEDI_008
[000c12a0]                           dc.b $00
[000c12a1]                           dc.b $02
[000c12a2]                           dc.b $00
[000c12a3]                           dc.b $01
[000c12a4]                           dc.b $00
[000c12a5]                           dc.b $20
[000c12a6]                           dc.b $00
[000c12a7]                           dc.b $01
INFO_LIST:
[000c12a8]                           dc.w $ffff
[000c12aa]                           dc.b $00
[000c12ab]                           dc.b $01
[000c12ac]                           dc.b $00
[000c12ad]                           dc.b $01
[000c12ae]                           dc.b $00
[000c12af]                           dc.b $19
[000c12b0]                           dc.b $00
[000c12b1]                           dc.b $00
[000c12b2]                           dc.b $00
[000c12b3]                           dc.b $00
[000c12b4]                           dc.b $00
[000c12b5]                           dc.b $ff
[000c12b6]                           dc.w $1141
[000c12b8]                           dc.b $00
[000c12b9]                           dc.b $00
[000c12ba]                           dc.b $00
[000c12bb]                           dc.b $00
[000c12bc]                           dc.b $00
[000c12bd]                           dc.b $28
[000c12be]                           dc.b $00
[000c12bf]                           dc.b $09
_01_INFO_LIST:
[000c12c0]                           dc.b $00
[000c12c1]                           dc.b $00
[000c12c2]                           dc.b $00
[000c12c3]                           dc.b $02
[000c12c4]                           dc.b $00
[000c12c5]                           dc.b $0d
[000c12c6]                           dc.b $00
[000c12c7]                           dc.b $18
[000c12c8]                           dc.b $00
[000c12c9]                           dc.b $00
[000c12ca]                           dc.b $00
[000c12cb]                           dc.b $10
[000c12cc] 000c0e10                  dc.l A_3DBUTTON05
[000c12d0]                           dc.b $00
[000c12d1]                           dc.b $00
[000c12d2]                           dc.b $00
[000c12d3]                           dc.b $00
[000c12d4]                           dc.b $00
[000c12d5]                           dc.b $28
[000c12d6]                           dc.b $00
[000c12d7]                           dc.b $09
_02_INFO_LIST:
[000c12d8]                           dc.b $00
[000c12d9]                           dc.b $04
[000c12da]                           dc.w $ffff
[000c12dc]                           dc.w $ffff
[000c12de]                           dc.b $00
[000c12df]                           dc.b $18
[000c12e0]                           dc.b $00
[000c12e1]                           dc.b $07
[000c12e2]                           dc.b $00
[000c12e3]                           dc.b $10
[000c12e4] 000c0e70                  dc.l A_3DBUTTON09
[000c12e8]                           dc.b $00
[000c12e9]                           dc.b $0e
[000c12ea]                           dc.b $00
[000c12eb]                           dc.b $06
[000c12ec]                           dc.b $00
[000c12ed]                           dc.b $0c
[000c12ee]                           dc.b $00
[000c12ef]                           dc.b $02
_02aINFO_LIST:
[000c12f0]                           dc.b $00
[000c12f1]                           dc.b $00
[000c12f2]                           dc.b $00
[000c12f3]                           dc.b $00
[000c12f4]                           dc.b $00
[000c12f5]                           dc.b $00
[000c12f6]                           dc.b $00
[000c12f7]                           dc.b $00
[000c12f8]                           dc.w $8000
[000c12fa]                           dc.w $884f
[000c12fc]                           dc.b $00
[000c12fd]                           dc.b $00
[000c12fe]                           dc.b $00
[000c12ff]                           dc.b $00
[000c1300]                           dc.b $00
[000c1301]                           dc.b $00
[000c1302]                           dc.b $00
[000c1303]                           dc.b $00
[000c1304]                           dc.b $00
[000c1305]                           dc.b $00
[000c1306]                           dc.b $00
[000c1307]                           dc.b $00
_04_INFO_LIST:
[000c1308]                           dc.b $00
[000c1309]                           dc.b $05
[000c130a]                           dc.w $ffff
[000c130c]                           dc.w $ffff
[000c130e]                           dc.b $00
[000c130f]                           dc.b $1c
[000c1310]                           dc.b $00
[000c1311]                           dc.b $00
[000c1312]                           dc.b $00
[000c1313]                           dc.b $00
[000c1314] 000c0ae1                  dc.l TEXT_069
[000c1318]                           dc.b $00
[000c1319]                           dc.b $01
[000c131a]                           dc.b $00
[000c131b]                           dc.b $01
[000c131c]                           dc.b $00
[000c131d]                           dc.b $06
[000c131e]                           dc.b $00
[000c131f]                           dc.b $01
_05_INFO_LIST:
[000c1320]                           dc.b $00
[000c1321]                           dc.b $06
[000c1322]                           dc.w $ffff
[000c1324]                           dc.w $ffff
[000c1326]                           dc.b $00
[000c1327]                           dc.b $1c
[000c1328]                           dc.b $00
[000c1329]                           dc.b $00
[000c132a]                           dc.b $00
[000c132b]                           dc.b $00
[000c132c] 000c0b02                  dc.l TEXT_070
[000c1330]                           dc.b $00
[000c1331]                           dc.b $01
[000c1332]                           dc.b $00
[000c1333]                           dc.b $02
[000c1334]                           dc.b $00
[000c1335]                           dc.b $06
[000c1336]                           dc.b $00
[000c1337]                           dc.b $01
_06_INFO_LIST:
[000c1338]                           dc.b $00
[000c1339]                           dc.b $07
[000c133a]                           dc.w $ffff
[000c133c]                           dc.b $ff
[000c133d]                           dc.b $ff
[000c133e]                           dc.b $00
[000c133f]                           dc.b $1c
[000c1340]                           dc.b $00
[000c1341]                           dc.b $00
[000c1342]                           dc.b $00
[000c1343]                           dc.b $00
[000c1344] 000c0b09                  dc.l TEXT_071
[000c1348]                           dc.b $00
[000c1349]                           dc.b $01
[000c134a]                           dc.b $00
[000c134b]                           dc.b $03
[000c134c]                           dc.b $00
[000c134d]                           dc.b $07
[000c134e]                           dc.b $00
[000c134f]                           dc.b $01
_07_INFO_LIST:
[000c1350]                           dc.b $00
[000c1351]                           dc.b $08
[000c1352]                           dc.w $ffff
[000c1354]                           dc.w $ffff
[000c1356]                           dc.b $00
[000c1357]                           dc.b $1c
[000c1358]                           dc.b $00
[000c1359]                           dc.b $00
[000c135a]                           dc.b $00
[000c135b]                           dc.b $00
[000c135c] 000c0ba0                  dc.l TEXT_190
[000c1360]                           dc.b $00
[000c1361]                           dc.b $01
[000c1362]                           dc.b $00
[000c1363]                           dc.b $04
[000c1364]                           dc.b $00
[000c1365]                           dc.b $06
[000c1366]                           dc.b $00
[000c1367]                           dc.b $01
_08_INFO_LIST:
[000c1368]                           dc.b $00
[000c1369]                           dc.b $09
[000c136a]                           dc.w $ffff
[000c136c]                           dc.w $ffff
[000c136e]                           dc.b $00
[000c136f]                           dc.b $16
[000c1370]                           dc.b $00
[000c1371]                           dc.b $00
[000c1372]                           dc.b $00
[000c1373]                           dc.b $00
[000c1374] 000c0dd4                  dc.l TEDI_011
[000c1378]                           dc.b $00
[000c1379]                           dc.b $08
[000c137a]                           dc.b $00
[000c137b]                           dc.b $01
[000c137c]                           dc.b $00
[000c137d]                           dc.b $1f
[000c137e]                           dc.b $00
[000c137f]                           dc.b $01
_09_INFO_LIST:
[000c1380]                           dc.b $00
[000c1381]                           dc.b $0a
[000c1382]                           dc.w $ffff
[000c1384]                           dc.w $ffff
[000c1386]                           dc.b $00
[000c1387]                           dc.b $16
[000c1388]                           dc.b $00
[000c1389]                           dc.b $00
[000c138a]                           dc.b $00
[000c138b]                           dc.b $00
[000c138c] 000c0dd4                  dc.l TEDI_011
[000c1390]                           dc.b $00
[000c1391]                           dc.b $08
[000c1392]                           dc.b $00
[000c1393]                           dc.b $02
[000c1394]                           dc.b $00
[000c1395]                           dc.b $1f
[000c1396]                           dc.b $00
[000c1397]                           dc.b $01
_10_INFO_LIST:
[000c1398]                           dc.b $00
[000c1399]                           dc.b $0b
[000c139a]                           dc.w $ffff
[000c139c]                           dc.w $ffff
[000c139e]                           dc.b $00
[000c139f]                           dc.b $16
[000c13a0]                           dc.b $00
[000c13a1]                           dc.b $00
[000c13a2]                           dc.b $00
[000c13a3]                           dc.b $00
[000c13a4] 000c0dd4                  dc.l TEDI_011
[000c13a8]                           dc.b $00
[000c13a9]                           dc.b $08
[000c13aa]                           dc.b $00
[000c13ab]                           dc.b $03
[000c13ac]                           dc.b $00
[000c13ad]                           dc.b $1f
[000c13ae]                           dc.b $00
[000c13af]                           dc.b $01
_11_INFO_LIST:
[000c13b0]                           dc.b $00
[000c13b1]                           dc.b $0c
[000c13b2]                           dc.w $ffff
[000c13b4]                           dc.w $ffff
[000c13b6]                           dc.b $00
[000c13b7]                           dc.b $16
[000c13b8]                           dc.b $00
[000c13b9]                           dc.b $00
[000c13ba]                           dc.b $00
[000c13bb]                           dc.b $00
[000c13bc] 000c0d48                  dc.l TEDI_002
[000c13c0]                           dc.b $00
[000c13c1]                           dc.b $08
[000c13c2]                           dc.b $00
[000c13c3]                           dc.b $04
[000c13c4]                           dc.b $00
[000c13c5]                           dc.b $06
[000c13c6]                           dc.b $00
[000c13c7]                           dc.b $01
_12_INFO_LIST:
[000c13c8]                           dc.b $00
[000c13c9]                           dc.b $0d
[000c13ca]                           dc.w $ffff
[000c13cc]                           dc.w $ffff
[000c13ce]                           dc.b $00
[000c13cf]                           dc.b $1c
[000c13d0]                           dc.b $00
[000c13d1]                           dc.b $00
[000c13d2]                           dc.b $00
[000c13d3]                           dc.b $00
[000c13d4] 000c0ba7                  dc.l TEXT_192
[000c13d8]                           dc.b $00
[000c13d9]                           dc.b $1a
[000c13da]                           dc.b $00
[000c13db]                           dc.b $04
[000c13dc]                           dc.b $00
[000c13dd]                           dc.b $07
[000c13de]                           dc.b $00
[000c13df]                           dc.b $01
_13_INFO_LIST:
[000c13e0]                           dc.b $00
[000c13e1]                           dc.b $01
[000c13e2]                           dc.w $ffff
[000c13e4]                           dc.w $ffff
[000c13e6]                           dc.b $00
[000c13e7]                           dc.b $16
[000c13e8]                           dc.b $00
[000c13e9]                           dc.b $20
[000c13ea]                           dc.b $00
[000c13eb]                           dc.b $00
[000c13ec] 000c0d48                  dc.l TEDI_002
[000c13f0]                           dc.b $00
[000c13f1]                           dc.b $21
[000c13f2]                           dc.b $00
[000c13f3]                           dc.b $04
[000c13f4]                           dc.b $00
[000c13f5]                           dc.b $06
[000c13f6]                           dc.b $00
[000c13f7]                           dc.b $01
INFO_LISTSELF:
[000c13f8]                           dc.w $ffff
[000c13fa]                           dc.b $00
[000c13fb]                           dc.b $01
[000c13fc]                           dc.b $00
[000c13fd]                           dc.b $01
[000c13fe]                           dc.b $00
[000c13ff]                           dc.b $19
[000c1400]                           dc.b $00
[000c1401]                           dc.b $00
[000c1402]                           dc.b $00
[000c1403]                           dc.b $00
[000c1404]                           dc.b $00
[000c1405]                           dc.b $ff
[000c1406]                           dc.w $1141
[000c1408]                           dc.b $00
[000c1409]                           dc.b $00
[000c140a]                           dc.b $00
[000c140b]                           dc.b $00
[000c140c]                           dc.b $00
[000c140d]                           dc.b $2a
[000c140e]                           dc.b $00
[000c140f]                           dc.b $08
_01_INFO_LISTSELF:
[000c1410]                           dc.b $00
[000c1411]                           dc.b $00
[000c1412]                           dc.b $00
[000c1413]                           dc.b $02
[000c1414]                           dc.b $00
[000c1415]                           dc.b $08
[000c1416]                           dc.b $00
[000c1417]                           dc.b $18
[000c1418]                           dc.b $00
[000c1419]                           dc.b $00
[000c141a]                           dc.w $0510
[000c141c] 000c0e10                  dc.l A_3DBUTTON05
[000c1420]                           dc.b $00
[000c1421]                           dc.b $00
[000c1422]                           dc.b $00
[000c1423]                           dc.b $00
[000c1424]                           dc.b $00
[000c1425]                           dc.b $2a
[000c1426]                           dc.b $00
[000c1427]                           dc.b $08
_02_INFO_LISTSELF:
[000c1428]                           dc.b $00
[000c1429]                           dc.b $03
[000c142a]                           dc.w $ffff
[000c142c]                           dc.w $ffff
[000c142e]                           dc.b $00
[000c142f]                           dc.b $1c
[000c1430]                           dc.b $00
[000c1431]                           dc.b $00
[000c1432]                           dc.b $00
[000c1433]                           dc.b $00
[000c1434] 000c0ae1                  dc.l TEXT_069
[000c1438]                           dc.b $00
[000c1439]                           dc.b $01
[000c143a]                           dc.b $00
[000c143b]                           dc.b $01
[000c143c]                           dc.b $00
[000c143d]                           dc.b $06
[000c143e]                           dc.b $00
[000c143f]                           dc.b $01
_03_INFO_LISTSELF:
[000c1440]                           dc.b $00
[000c1441]                           dc.b $04
[000c1442]                           dc.w $ffff
[000c1444]                           dc.w $ffff
[000c1446]                           dc.b $00
[000c1447]                           dc.b $1c
[000c1448]                           dc.b $00
[000c1449]                           dc.b $00
[000c144a]                           dc.b $00
[000c144b]                           dc.b $00
[000c144c] 000c0b02                  dc.l TEXT_070
[000c1450]                           dc.b $00
[000c1451]                           dc.b $01
[000c1452]                           dc.b $00
[000c1453]                           dc.b $02
[000c1454]                           dc.b $00
[000c1455]                           dc.b $06
[000c1456]                           dc.b $00
[000c1457]                           dc.b $01
_04_INFO_LISTSELF:
[000c1458]                           dc.b $00
[000c1459]                           dc.b $05
[000c145a]                           dc.w $ffff
[000c145c]                           dc.w $ffff
[000c145e]                           dc.b $00
[000c145f]                           dc.b $1c
[000c1460]                           dc.b $00
[000c1461]                           dc.b $00
[000c1462]                           dc.b $00
[000c1463]                           dc.b $00
[000c1464] 000c0baf                  dc.l TEXT_195
[000c1468]                           dc.b $00
[000c1469]                           dc.b $01
[000c146a]                           dc.b $00
[000c146b]                           dc.b $03
[000c146c]                           dc.b $00
[000c146d]                           dc.b $08
[000c146e]                           dc.b $00
[000c146f]                           dc.b $01
_05_INFO_LISTSELF:
[000c1470]                           dc.b $00
[000c1471]                           dc.b $06
[000c1472]                           dc.w $ffff
[000c1474]                           dc.w $ffff
[000c1476]                           dc.b $00
[000c1477]                           dc.b $16
[000c1478]                           dc.b $00
[000c1479]                           dc.b $00
[000c147a]                           dc.b $00
[000c147b]                           dc.b $00
[000c147c] 000c0d80                  dc.l TEDI_006
[000c1480]                           dc.b $00
[000c1481]                           dc.b $0a
[000c1482]                           dc.b $00
[000c1483]                           dc.b $03
[000c1484]                           dc.b $00
[000c1485]                           dc.b $06
[000c1486]                           dc.b $00
[000c1487]                           dc.b $01
_06_INFO_LISTSELF:
[000c1488]                           dc.b $00
[000c1489]                           dc.b $07
[000c148a]                           dc.w $ffff
[000c148c]                           dc.w $ffff
[000c148e]                           dc.b $00
[000c148f]                           dc.b $16
[000c1490]                           dc.b $00
[000c1491]                           dc.b $00
[000c1492]                           dc.b $00
[000c1493]                           dc.b $00
[000c1494] 000c0d64                  dc.l TEDI_003
[000c1498]                           dc.b $00
[000c1499]                           dc.b $0a
[000c149a]                           dc.b $00
[000c149b]                           dc.b $02
[000c149c]                           dc.b $00
[000c149d]                           dc.b $1f
[000c149e]                           dc.b $00
[000c149f]                           dc.b $01
_07_INFO_LISTSELF:
[000c14a0]                           dc.b $00
[000c14a1]                           dc.b $08
[000c14a2]                           dc.w $ffff
[000c14a4]                           dc.w $ffff
[000c14a6]                           dc.b $00
[000c14a7]                           dc.b $16
[000c14a8]                           dc.b $00
[000c14a9]                           dc.b $00
[000c14aa]                           dc.b $00
[000c14ab]                           dc.b $00
[000c14ac] 000c0d64                  dc.l TEDI_003
[000c14b0]                           dc.b $00
[000c14b1]                           dc.b $0a
[000c14b2]                           dc.b $00
[000c14b3]                           dc.b $01
[000c14b4]                           dc.b $00
[000c14b5]                           dc.b $1f
[000c14b6]                           dc.b $00
[000c14b7]                           dc.b $01
_08_INFO_LISTSELF:
[000c14b8]                           dc.b $00
[000c14b9]                           dc.b $01
[000c14ba]                           dc.w $ffff
[000c14bc]                           dc.w $ffff
[000c14be]                           dc.b $00
[000c14bf]                           dc.b $18
[000c14c0]                           dc.b $00
[000c14c1]                           dc.b $07
[000c14c2]                           dc.b $00
[000c14c3]                           dc.b $10
[000c14c4] 000c0e70                  dc.l A_3DBUTTON09
[000c14c8]                           dc.b $00
[000c14c9]                           dc.b $0f
[000c14ca]                           dc.b $00
[000c14cb]                           dc.b $05
[000c14cc]                           dc.b $00
[000c14cd]                           dc.b $0c
[000c14ce]                           dc.b $00
[000c14cf]                           dc.b $02
_08aINFO_LISTSELF:
[000c14d0]                           dc.b $00
[000c14d1]                           dc.b $00
[000c14d2]                           dc.b $00
[000c14d3]                           dc.b $00
[000c14d4]                           dc.b $00
[000c14d5]                           dc.b $00
[000c14d6]                           dc.b $00
[000c14d7]                           dc.b $00
[000c14d8]                           dc.w $8020
[000c14da]                           dc.w $884f
[000c14dc]                           dc.b $00
[000c14dd]                           dc.b $00
[000c14de]                           dc.b $00
[000c14df]                           dc.b $00
[000c14e0]                           dc.b $00
[000c14e1]                           dc.b $00
[000c14e2]                           dc.b $00
[000c14e3]                           dc.b $00
[000c14e4]                           dc.b $00
[000c14e5]                           dc.b $00
[000c14e6]                           dc.b $00
[000c14e7]                           dc.b $00
INFO_SCOPE:
[000c14e8]                           dc.w $ffff
[000c14ea]                           dc.b $00
[000c14eb]                           dc.b $01
[000c14ec]                           dc.b $00
[000c14ed]                           dc.b $01
[000c14ee]                           dc.b $00
[000c14ef]                           dc.b $19
[000c14f0]                           dc.b $00
[000c14f1]                           dc.b $00
[000c14f2]                           dc.b $00
[000c14f3]                           dc.b $00
[000c14f4]                           dc.b $00
[000c14f5]                           dc.b $ff
[000c14f6]                           dc.w $1141
[000c14f8]                           dc.b $00
[000c14f9]                           dc.b $00
[000c14fa]                           dc.b $00
[000c14fb]                           dc.b $00
[000c14fc]                           dc.b $00
[000c14fd]                           dc.b $18
[000c14fe]                           dc.b $00
[000c14ff]                           dc.b $06
_01_INFO_SCOPE:
[000c1500]                           dc.b $00
[000c1501]                           dc.b $00
[000c1502]                           dc.b $00
[000c1503]                           dc.b $02
[000c1504]                           dc.b $00
[000c1505]                           dc.b $08
[000c1506]                           dc.b $00
[000c1507]                           dc.b $18
[000c1508]                           dc.b $00
[000c1509]                           dc.b $40
[000c150a]                           dc.b $00
[000c150b]                           dc.b $10
[000c150c] 000c0e10                  dc.l A_3DBUTTON05
[000c1510]                           dc.b $00
[000c1511]                           dc.b $00
[000c1512]                           dc.b $00
[000c1513]                           dc.b $00
[000c1514]                           dc.b $00
[000c1515]                           dc.b $18
[000c1516]                           dc.b $00
[000c1517]                           dc.b $06
_02_INFO_SCOPE:
[000c1518]                           dc.b $00
[000c1519]                           dc.b $04
[000c151a]                           dc.w $ffff
[000c151c]                           dc.w $ffff
[000c151e]                           dc.b $00
[000c151f]                           dc.b $18
[000c1520]                           dc.b $00
[000c1521]                           dc.b $11
[000c1522]                           dc.b $00
[000c1523]                           dc.b $00
[000c1524] 000c0eb0                  dc.l A_CHECKBOX03
[000c1528]                           dc.b $00
[000c1529]                           dc.b $02
[000c152a]                           dc.b $00
[000c152b]                           dc.b $01
[000c152c]                           dc.b $00
[000c152d]                           dc.b $08
[000c152e]                           dc.b $00
[000c152f]                           dc.b $01
_02aINFO_SCOPE:
[000c1530]                           dc.b $00
[000c1531]                           dc.b $00
[000c1532]                           dc.b $00
[000c1533]                           dc.b $00
[000c1534]                           dc.b $00
[000c1535]                           dc.b $00
[000c1536]                           dc.b $00
[000c1537]                           dc.b $00
[000c1538]                           dc.w $8000
[000c153a]                           dc.w $884c
[000c153c]                           dc.b $00
[000c153d]                           dc.b $00
[000c153e]                           dc.b $00
[000c153f]                           dc.b $00
[000c1540]                           dc.b $00
[000c1541]                           dc.b $00
[000c1542]                           dc.b $00
[000c1543]                           dc.b $00
[000c1544]                           dc.b $00
[000c1545]                           dc.b $00
[000c1546]                           dc.b $00
[000c1547]                           dc.b $00
_04_INFO_SCOPE:
[000c1548]                           dc.b $00
[000c1549]                           dc.b $06
[000c154a]                           dc.w $ffff
[000c154c]                           dc.w $ffff
[000c154e]                           dc.b $00
[000c154f]                           dc.b $18
[000c1550]                           dc.b $00
[000c1551]                           dc.b $11
[000c1552]                           dc.b $00
[000c1553]                           dc.b $00
[000c1554] 000c0e90                  dc.l A_CHECKBOX01
[000c1558]                           dc.b $00
[000c1559]                           dc.b $0d
[000c155a]                           dc.b $00
[000c155b]                           dc.b $01
[000c155c]                           dc.b $00
[000c155d]                           dc.b $09
[000c155e]                           dc.b $00
[000c155f]                           dc.b $01
_04aINFO_SCOPE:
[000c1560]                           dc.b $00
[000c1561]                           dc.b $00
[000c1562]                           dc.b $00
[000c1563]                           dc.b $00
[000c1564]                           dc.b $00
[000c1565]                           dc.b $00
[000c1566]                           dc.b $00
[000c1567]                           dc.b $00
[000c1568]                           dc.w $8000
[000c156a]                           dc.w $8847
[000c156c]                           dc.b $00
[000c156d]                           dc.b $00
[000c156e]                           dc.b $00
[000c156f]                           dc.b $00
[000c1570]                           dc.b $00
[000c1571]                           dc.b $00
[000c1572]                           dc.b $00
[000c1573]                           dc.b $00
[000c1574]                           dc.b $00
[000c1575]                           dc.b $00
[000c1576]                           dc.b $00
[000c1577]                           dc.b $00
_06_INFO_SCOPE:
[000c1578]                           dc.b $00
[000c1579]                           dc.b $08
[000c157a]                           dc.w $ffff
[000c157c]                           dc.w $ffff
[000c157e]                           dc.b $00
[000c157f]                           dc.b $18
[000c1580]                           dc.w $4007
[000c1582]                           dc.b $00
[000c1583]                           dc.b $10
[000c1584] 000c0e70                  dc.l A_3DBUTTON09
[000c1588]                           dc.b $00
[000c1589]                           dc.b $01
[000c158a]                           dc.b $00
[000c158b]                           dc.b $03
[000c158c]                           dc.b $00
[000c158d]                           dc.b $0a
[000c158e]                           dc.b $00
[000c158f]                           dc.b $02
_06aINFO_SCOPE:
[000c1590]                           dc.b $00
[000c1591]                           dc.b $00
[000c1592]                           dc.b $00
[000c1593]                           dc.b $00
[000c1594]                           dc.b $00
[000c1595]                           dc.b $00
[000c1596]                           dc.b $00
[000c1597]                           dc.b $00
[000c1598]                           dc.w $8000
[000c159a]                           dc.w $884f
[000c159c]                           dc.b $00
[000c159d]                           dc.b $00
[000c159e]                           dc.b $00
[000c159f]                           dc.b $00
[000c15a0]                           dc.b $00
[000c15a1]                           dc.b $00
[000c15a2]                           dc.b $00
[000c15a3]                           dc.b $00
[000c15a4]                           dc.b $00
[000c15a5]                           dc.b $00
[000c15a6]                           dc.b $00
[000c15a7]                           dc.b $00
_08_INFO_SCOPE:
[000c15a8]                           dc.b $00
[000c15a9]                           dc.b $01
[000c15aa]                           dc.w $ffff
[000c15ac]                           dc.w $ffff
[000c15ae]                           dc.b $00
[000c15af]                           dc.b $18
[000c15b0]                           dc.w $4005
[000c15b2]                           dc.b $00
[000c15b3]                           dc.b $10
[000c15b4] 000c0e30                  dc.l A_3DBUTTON06
[000c15b8]                           dc.b $00
[000c15b9]                           dc.b $0d
[000c15ba]                           dc.b $00
[000c15bb]                           dc.b $03
[000c15bc]                           dc.b $00
[000c15bd]                           dc.b $0a
[000c15be]                           dc.b $00
[000c15bf]                           dc.b $02
_08aINFO_SCOPE:
[000c15c0]                           dc.b $00
[000c15c1]                           dc.b $00
[000c15c2]                           dc.b $00
[000c15c3]                           dc.b $00
[000c15c4]                           dc.b $00
[000c15c5]                           dc.b $00
[000c15c6]                           dc.b $00
[000c15c7]                           dc.b $00
[000c15c8]                           dc.w $8020
[000c15ca]                           dc.w $8841
[000c15cc]                           dc.b $00
[000c15cd]                           dc.b $00
[000c15ce]                           dc.b $00
[000c15cf]                           dc.b $00
[000c15d0]                           dc.b $00
[000c15d1]                           dc.b $00
[000c15d2]                           dc.b $00
[000c15d3]                           dc.b $00
[000c15d4]                           dc.b $00
[000c15d5]                           dc.b $00
[000c15d6]                           dc.b $00
[000c15d7]                           dc.b $00
LIST_NOT:
[000c15d8]                           dc.w $ffff
[000c15da]                           dc.w $ffff
[000c15dc]                           dc.w $ffff
[000c15de]                           dc.b $00
[000c15df]                           dc.b $14
[000c15e0]                           dc.b $00
[000c15e1]                           dc.b $60
[000c15e2]                           dc.b $00
[000c15e3]                           dc.b $00
[000c15e4]                           dc.b $00
[000c15e5]                           dc.b $00
[000c15e6]                           dc.w $1142
[000c15e8]                           dc.b $00
[000c15e9]                           dc.b $00
[000c15ea]                           dc.b $00
[000c15eb]                           dc.b $00
[000c15ec]                           dc.b $00
[000c15ed]                           dc.b $20
[000c15ee]                           dc.b $00
[000c15ef]                           dc.b $0c
WI_DIFF_TYPE:
[000c15f0]                           dc.b $00
[000c15f1]                           dc.b $00
[000c15f2]                           dc.b $00
[000c15f3]                           dc.b $00
[000c15f4] 00051276                  dc.l Awi_service
[000c15f8] 0004f0ee                  dc.l Awi_selfcreate
[000c15fc] 0004f69e                  dc.l Awi_open
[000c1600] 0004e610                  dc.l Awi_init
[000c1604] 000c1170                  dc.l DIFF_TYPE
[000c1608]                           dc.b $00
[000c1609]                           dc.b $00
[000c160a]                           dc.b $00
[000c160b]                           dc.b $00
[000c160c]                           dc.b $00
[000c160d]                           dc.b $00
[000c160e]                           dc.b $00
[000c160f]                           dc.b $00
[000c1610]                           dc.w $ffff
[000c1612]                           dc.w $200b
[000c1614]                           dc.b $00
[000c1615]                           dc.b $00
[000c1616]                           dc.b $00
[000c1617]                           dc.b $00
[000c1618]                           dc.b $00
[000c1619]                           dc.b $78
[000c161a]                           dc.b $00
[000c161b]                           dc.b $32
[000c161c]                           dc.b $00
[000c161d]                           dc.b $00
[000c161e]                           dc.b $00
[000c161f]                           dc.b $00
[000c1620]                           dc.b $00
[000c1621]                           dc.b $00
[000c1622]                           dc.b $00
[000c1623]                           dc.b $00
[000c1624]                           dc.b $00
[000c1625]                           dc.b $00
[000c1626]                           dc.b $00
[000c1627]                           dc.b $00
[000c1628]                           dc.b $00
[000c1629]                           dc.b $00
[000c162a]                           dc.b $00
[000c162b]                           dc.b $00
[000c162c]                           dc.w $ffff
[000c162e]                           dc.w $ffff
[000c1630]                           dc.w $ffff
[000c1632]                           dc.w $ffff
[000c1634]                           dc.b $00
[000c1635]                           dc.b $00
[000c1636]                           dc.b $00
[000c1637]                           dc.b $00
[000c1638]                           dc.w $f8f8
[000c163a] 000c0ae8                  dc.l TEXT_07
[000c163e] 000c0a48                  dc.l TEXT_002
[000c1642]                           dc.w $2710
[000c1644]                           dc.b $00
[000c1645]                           dc.b $00
[000c1646]                           dc.b $00
[000c1647]                           dc.b $00
[000c1648]                           dc.w $ffff
[000c164a]                           dc.b $00
[000c164b]                           dc.b $00
[000c164c]                           dc.b $00
[000c164d]                           dc.b $00
[000c164e]                           dc.b $00
[000c164f]                           dc.b $00
[000c1650]                           dc.b $00
[000c1651]                           dc.b $00
[000c1652] 0005ef2c                  dc.l Awi_keys
[000c1656] 0004b600                  dc.l Awi_obchange
[000c165a] 0004b8cc                  dc.l Awi_redraw
[000c165e] 00050454                  dc.l Awi_topped
[000c1662] 0005013e                  dc.l Awi_closed
[000c1666] 00050496                  dc.l Awi_fulled
[000c166a] 0004bcc8                  dc.l Awi_arrowed
[000c166e] 0004beea                  dc.l Awi_hslid
[000c1672] 0004bf56                  dc.l Awi_vslid
[000c1676] 000506ca                  dc.l Awi_sized
[000c167a] 000507bc                  dc.l Awi_moved
[000c167e] 00050f9c                  dc.l Awi_iconify
[000c1682] 0005117c                  dc.l Awi_uniconify
[000c1686] 00052328                  dc.l Awi_gemscript
[000c168a]                           dc.b $00
[000c168b]                           dc.b $00
[000c168c]                           dc.b $00
[000c168d]                           dc.b $00
[000c168e]                           dc.b $00
[000c168f]                           dc.b $00
[000c1690]                           dc.b $00
[000c1691]                           dc.b $00
WI_INFO_LIST:
[000c1692]                           dc.b $00
[000c1693]                           dc.b $00
[000c1694]                           dc.b $00
[000c1695]                           dc.b $00
[000c1696] 00051276                  dc.l Awi_service
[000c169a] 0004f0ee                  dc.l Awi_selfcreate
[000c169e] 0004f69e                  dc.l Awi_open
[000c16a2] 0004e610                  dc.l Awi_init
[000c16a6] 000c12a8                  dc.l INFO_LIST
[000c16aa]                           dc.b $00
[000c16ab]                           dc.b $00
[000c16ac]                           dc.b $00
[000c16ad]                           dc.b $00
[000c16ae]                           dc.b $00
[000c16af]                           dc.b $00
[000c16b0]                           dc.b $00
[000c16b1]                           dc.b $00
[000c16b2]                           dc.w $ffff
[000c16b4]                           dc.w $200b
[000c16b6]                           dc.b $00
[000c16b7]                           dc.b $00
[000c16b8]                           dc.b $00
[000c16b9]                           dc.b $00
[000c16ba]                           dc.b $00
[000c16bb]                           dc.b $78
[000c16bc]                           dc.b $00
[000c16bd]                           dc.b $32
[000c16be]                           dc.b $00
[000c16bf]                           dc.b $00
[000c16c0]                           dc.b $00
[000c16c1]                           dc.b $00
[000c16c2]                           dc.b $00
[000c16c3]                           dc.b $00
[000c16c4]                           dc.b $00
[000c16c5]                           dc.b $00
[000c16c6]                           dc.b $00
[000c16c7]                           dc.b $00
[000c16c8]                           dc.b $00
[000c16c9]                           dc.b $00
[000c16ca]                           dc.b $00
[000c16cb]                           dc.b $00
[000c16cc]                           dc.b $00
[000c16cd]                           dc.b $00
[000c16ce]                           dc.w $ffff
[000c16d0]                           dc.w $ffff
[000c16d2]                           dc.w $ffff
[000c16d4]                           dc.w $ffff
[000c16d6]                           dc.b $00
[000c16d7]                           dc.b $00
[000c16d8]                           dc.b $00
[000c16d9]                           dc.b $00
[000c16da]                           dc.w $f8f8
[000c16dc] 000c0b31                  dc.l TEXT_13
[000c16e0] 000c0a48                  dc.l TEXT_002
[000c16e4]                           dc.w $2710
[000c16e6]                           dc.b $00
[000c16e7]                           dc.b $00
[000c16e8]                           dc.b $00
[000c16e9]                           dc.b $00
[000c16ea]                           dc.w $ffff
[000c16ec]                           dc.b $00
[000c16ed]                           dc.b $00
[000c16ee]                           dc.b $00
[000c16ef]                           dc.b $00
[000c16f0]                           dc.b $00
[000c16f1]                           dc.b $00
[000c16f2]                           dc.b $00
[000c16f3]                           dc.b $00
[000c16f4] 0005ef2c                  dc.l Awi_keys
[000c16f8] 0004b600                  dc.l Awi_obchange
[000c16fc] 0004b8cc                  dc.l Awi_redraw
[000c1700] 00050454                  dc.l Awi_topped
[000c1704] 0005013e                  dc.l Awi_closed
[000c1708] 00050496                  dc.l Awi_fulled
[000c170c] 0004bcc8                  dc.l Awi_arrowed
[000c1710] 0004beea                  dc.l Awi_hslid
[000c1714] 0004bf56                  dc.l Awi_vslid
[000c1718] 000506ca                  dc.l Awi_sized
[000c171c] 000507bc                  dc.l Awi_moved
[000c1720] 00050f9c                  dc.l Awi_iconify
[000c1724] 0005117c                  dc.l Awi_uniconify
[000c1728] 00052328                  dc.l Awi_gemscript
[000c172c]                           dc.b $00
[000c172d]                           dc.b $00
[000c172e]                           dc.b $00
[000c172f]                           dc.b $00
[000c1730]                           dc.b $00
[000c1731]                           dc.b $00
[000c1732]                           dc.b $00
[000c1733]                           dc.b $00
WI_INFO_LISTSELF:
[000c1734]                           dc.b $00
[000c1735]                           dc.b $00
[000c1736]                           dc.b $00
[000c1737]                           dc.b $00
[000c1738] 00051276                  dc.l Awi_service
[000c173c] 0004f0ee                  dc.l Awi_selfcreate
[000c1740] 0004f69e                  dc.l Awi_open
[000c1744] 0004e610                  dc.l Awi_init
[000c1748] 000c13f8                  dc.l INFO_LISTSELF
[000c174c]                           dc.b $00
[000c174d]                           dc.b $00
[000c174e]                           dc.b $00
[000c174f]                           dc.b $00
[000c1750]                           dc.b $00
[000c1751]                           dc.b $00
[000c1752]                           dc.b $00
[000c1753]                           dc.b $00
[000c1754]                           dc.w $ffff
[000c1756]                           dc.w $200b
[000c1758]                           dc.b $00
[000c1759]                           dc.b $00
[000c175a]                           dc.b $00
[000c175b]                           dc.b $00
[000c175c]                           dc.b $00
[000c175d]                           dc.b $78
[000c175e]                           dc.b $00
[000c175f]                           dc.b $32
[000c1760]                           dc.b $00
[000c1761]                           dc.b $00
[000c1762]                           dc.b $00
[000c1763]                           dc.b $00
[000c1764]                           dc.b $00
[000c1765]                           dc.b $00
[000c1766]                           dc.b $00
[000c1767]                           dc.b $00
[000c1768]                           dc.b $00
[000c1769]                           dc.b $00
[000c176a]                           dc.b $00
[000c176b]                           dc.b $00
[000c176c]                           dc.b $00
[000c176d]                           dc.b $00
[000c176e]                           dc.b $00
[000c176f]                           dc.b $00
[000c1770]                           dc.w $ffff
[000c1772]                           dc.w $ffff
[000c1774]                           dc.w $ffff
[000c1776]                           dc.w $ffff
[000c1778]                           dc.b $00
[000c1779]                           dc.b $00
[000c177a]                           dc.b $00
[000c177b]                           dc.b $00
[000c177c]                           dc.w $f8f8
[000c177e] 000c0b16                  dc.l TEXT_09
[000c1782] 000c0a48                  dc.l TEXT_002
[000c1786]                           dc.w $2710
[000c1788]                           dc.b $00
[000c1789]                           dc.b $00
[000c178a]                           dc.b $00
[000c178b]                           dc.b $00
[000c178c]                           dc.w $ffff
[000c178e]                           dc.b $00
[000c178f]                           dc.b $00
[000c1790]                           dc.b $00
[000c1791]                           dc.b $00
[000c1792]                           dc.b $00
[000c1793]                           dc.b $00
[000c1794]                           dc.b $00
[000c1795]                           dc.b $00
[000c1796] 0005ef2c                  dc.l Awi_keys
[000c179a] 0004b600                  dc.l Awi_obchange
[000c179e] 0004b8cc                  dc.l Awi_redraw
[000c17a2] 00050454                  dc.l Awi_topped
[000c17a6] 0005013e                  dc.l Awi_closed
[000c17aa] 00050496                  dc.l Awi_fulled
[000c17ae] 0004bcc8                  dc.l Awi_arrowed
[000c17b2] 0004beea                  dc.l Awi_hslid
[000c17b6] 0004bf56                  dc.l Awi_vslid
[000c17ba] 000506ca                  dc.l Awi_sized
[000c17be] 000507bc                  dc.l Awi_moved
[000c17c2] 00050f9c                  dc.l Awi_iconify
[000c17c6] 0005117c                  dc.l Awi_uniconify
[000c17ca] 00052328                  dc.l Awi_gemscript
[000c17ce]                           dc.b $00
[000c17cf]                           dc.b $00
[000c17d0]                           dc.b $00
[000c17d1]                           dc.b $00
[000c17d2]                           dc.b $00
[000c17d3]                           dc.b $00
[000c17d4]                           dc.b $00
[000c17d5]                           dc.b $00
WI_INFO_SCOPE:
[000c17d6]                           dc.b $00
[000c17d7]                           dc.b $00
[000c17d8]                           dc.b $00
[000c17d9]                           dc.b $00
[000c17da] 00051276                  dc.l Awi_service
[000c17de] 0004f0ee                  dc.l Awi_selfcreate
[000c17e2] 0004f69e                  dc.l Awi_open
[000c17e6] 0004e610                  dc.l Awi_init
[000c17ea] 000c14e8                  dc.l INFO_SCOPE
[000c17ee]                           dc.b $00
[000c17ef]                           dc.b $00
[000c17f0]                           dc.b $00
[000c17f1]                           dc.b $00
[000c17f2]                           dc.b $00
[000c17f3]                           dc.b $00
[000c17f4]                           dc.b $00
[000c17f5]                           dc.b $00
[000c17f6]                           dc.w $ffff
[000c17f8]                           dc.w $200b
[000c17fa]                           dc.b $00
[000c17fb]                           dc.b $00
[000c17fc]                           dc.b $00
[000c17fd]                           dc.b $00
[000c17fe]                           dc.b $00
[000c17ff]                           dc.b $78
[000c1800]                           dc.b $00
[000c1801]                           dc.b $32
[000c1802]                           dc.b $00
[000c1803]                           dc.b $00
[000c1804]                           dc.b $00
[000c1805]                           dc.b $00
[000c1806]                           dc.b $00
[000c1807]                           dc.b $00
[000c1808]                           dc.b $00
[000c1809]                           dc.b $00
[000c180a]                           dc.b $00
[000c180b]                           dc.b $00
[000c180c]                           dc.b $00
[000c180d]                           dc.b $00
[000c180e]                           dc.b $00
[000c180f]                           dc.b $00
[000c1810]                           dc.b $00
[000c1811]                           dc.b $00
[000c1812]                           dc.w $ffff
[000c1814]                           dc.w $ffff
[000c1816]                           dc.w $ffff
[000c1818]                           dc.w $ffff
[000c181a]                           dc.b $00
[000c181b]                           dc.b $00
[000c181c]                           dc.b $00
[000c181d]                           dc.b $00
[000c181e]                           dc.w $f8f8
[000c1820] 000c0b4d                  dc.l TEXT_14
[000c1824] 000c0a48                  dc.l TEXT_002
[000c1828]                           dc.w $2710
[000c182a]                           dc.b $00
[000c182b]                           dc.b $00
[000c182c]                           dc.b $00
[000c182d]                           dc.b $00
[000c182e]                           dc.w $ffff
[000c1830]                           dc.b $00
[000c1831]                           dc.b $00
[000c1832]                           dc.b $00
[000c1833]                           dc.b $00
[000c1834]                           dc.b $00
[000c1835]                           dc.b $00
[000c1836]                           dc.b $00
[000c1837]                           dc.b $00
[000c1838] 0005ef2c                  dc.l Awi_keys
[000c183c] 0004b600                  dc.l Awi_obchange
[000c1840] 0004b8cc                  dc.l Awi_redraw
[000c1844] 00050454                  dc.l Awi_topped
[000c1848] 0005013e                  dc.l Awi_closed
[000c184c] 00050496                  dc.l Awi_fulled
[000c1850] 0004bcc8                  dc.l Awi_arrowed
[000c1854] 0004beea                  dc.l Awi_hslid
[000c1858] 0004bf56                  dc.l Awi_vslid
[000c185c] 000506ca                  dc.l Awi_sized
[000c1860] 000507bc                  dc.l Awi_moved
[000c1864] 00050f9c                  dc.l Awi_iconify
[000c1868] 0005117c                  dc.l Awi_uniconify
[000c186c] 00052328                  dc.l Awi_gemscript
[000c1870]                           dc.b $00
[000c1871]                           dc.b $00
[000c1872]                           dc.b $00
[000c1873]                           dc.b $00
[000c1874]                           dc.b $00
[000c1875]                           dc.b $00
[000c1876]                           dc.b $00
[000c1877]                           dc.b $00
WI_LIST:
[000c1878]                           dc.b $00
[000c1879]                           dc.b $00
[000c187a]                           dc.b $00
[000c187b]                           dc.b $00
[000c187c] 000322be                  dc.l li_service
[000c1880] 0003215e                  dc.l li_make
[000c1884] 0004f69e                  dc.l Awi_open
[000c1888] 000320b6                  dc.l li_init
[000c188c]                           dc.b $00
[000c188d]                           dc.b $00
[000c188e]                           dc.b $00
[000c188f]                           dc.b $00
[000c1890]                           dc.b $00
[000c1891]                           dc.b $00
[000c1892]                           dc.b $00
[000c1893]                           dc.b $00
[000c1894]                           dc.b $00
[000c1895]                           dc.b $00
[000c1896]                           dc.b $00
[000c1897]                           dc.b $00
[000c1898]                           dc.w $ffff
[000c189a]                           dc.w $61ff
[000c189c]                           dc.b $00
[000c189d]                           dc.b $00
[000c189e]                           dc.b $00
[000c189f]                           dc.b $00
[000c18a0]                           dc.b $00
[000c18a1]                           dc.b $22
[000c18a2]                           dc.b $00
[000c18a3]                           dc.b $0e
[000c18a4]                           dc.b $00
[000c18a5]                           dc.b $00
[000c18a6]                           dc.b $00
[000c18a7]                           dc.b $00
[000c18a8]                           dc.b $00
[000c18a9]                           dc.b $00
[000c18aa]                           dc.b $00
[000c18ab]                           dc.b $00
[000c18ac]                           dc.b $00
[000c18ad]                           dc.b $00
[000c18ae]                           dc.b $00
[000c18af]                           dc.b $00
[000c18b0]                           dc.b $00
[000c18b1]                           dc.b $00
[000c18b2]                           dc.b $00
[000c18b3]                           dc.b $00
[000c18b4]                           dc.w $ffff
[000c18b6]                           dc.w $ffff
[000c18b8]                           dc.w $ffff
[000c18ba]                           dc.w $ffff
[000c18bc]                           dc.b $00
[000c18bd]                           dc.b $00
[000c18be]                           dc.b $00
[000c18bf]                           dc.b $00
[000c18c0]                           dc.w $f8f8
[000c18c2] 000c0a48                  dc.l TEXT_002
[000c18c6] 000c0a48                  dc.l TEXT_002
[000c18ca]                           dc.w $2710
[000c18cc]                           dc.w $011b
[000c18ce]                           dc.b $00
[000c18cf]                           dc.b $00
[000c18d0]                           dc.w $ffff
[000c18d2]                           dc.b $00
[000c18d3]                           dc.b $00
[000c18d4]                           dc.b $00
[000c18d5]                           dc.b $00
[000c18d6] 000c0ed0                  dc.l MEN_LIST
[000c18da] 0005ef2c                  dc.l Awi_keys
[000c18de] 0004b600                  dc.l Awi_obchange
[000c18e2] 0004b8cc                  dc.l Awi_redraw
[000c18e6] 00050454                  dc.l Awi_topped
[000c18ea] 0005013e                  dc.l Awi_closed
[000c18ee] 00050496                  dc.l Awi_fulled
[000c18f2] 0004bcc8                  dc.l Awi_arrowed
[000c18f6] 0004beea                  dc.l Awi_hslid
[000c18fa] 0004bf56                  dc.l Awi_vslid
[000c18fe] 000506ca                  dc.l Awi_sized
[000c1902] 000507bc                  dc.l Awi_moved
[000c1906] 00050f9c                  dc.l Awi_iconify
[000c190a] 0005117c                  dc.l Awi_uniconify
[000c190e] 00052328                  dc.l Awi_gemscript
[000c1912]                           dc.b $00
[000c1913]                           dc.b $00
[000c1914]                           dc.b $00
[000c1915]                           dc.b $00
[000c1916]                           dc.b $00
[000c1917]                           dc.b $00
[000c1918]                           dc.b $00
[000c1919]                           dc.b $00
dither:
[000c191a] 0005a4e2                  dc.l A_3Dbutton
[000c191e]                           dc.b $00
[000c191f]                           dc.b $00
[000c1920]                           dc.b $00
[000c1921]                           dc.b $78
[000c1922] 00059318                  dc.l Auo_string
[000c1926]                           dc.b $00
[000c1927]                           dc.b $00
[000c1928]                           dc.b $00
[000c1929]                           dc.b $00
[000c192a]                           dc.b $00
[000c192b]                           dc.b $00
[000c192c]                           dc.b $00
[000c192d]                           dc.b $00
[000c192e]                           dc.b $00
[000c192f]                           dc.b $00
[000c1930]                           dc.b $00
[000c1931]                           dc.b $00
[000c1932]                           dc.b $00
[000c1933]                           dc.b $00
[000c1934]                           dc.b $00
[000c1935]                           dc.b $00
[000c1936]                           dc.b $00
[000c1937]                           dc.b $00
[000c1938]                           dc.b $00
[000c1939]                           dc.b $00
inner:
[000c193a]                           dc.w $ffff
[000c193c]                           dc.w $ffff
[000c193e]                           dc.w $ffff
[000c1940]                           dc.b $00
[000c1941]                           dc.b $18
[000c1942]                           dc.w $1800
[000c1944]                           dc.b $00
[000c1945]                           dc.b $00
[000c1946] 000c191a                  dc.l dither
[000c194a]                           dc.b $00
[000c194b]                           dc.b $00
[000c194c]                           dc.b $00
[000c194d]                           dc.b $00
[000c194e]                           dc.b $00
[000c194f]                           dc.b $64
[000c1950]                           dc.b $00
[000c1951]                           dc.b $64
pra00:
[000c1952]                           dc.b $00
[000c1953]                           dc.b $00
[000c1954]                           dc.b $00
[000c1955]                           dc.b $00
[000c1956]                           dc.b $00
[000c1957]                           dc.b $00
[000c1958]                           dc.b $00
[000c1959]                           dc.b $00
[000c195a]                           dc.w $8000
[000c195c]                           dc.b $00
[000c195d]                           dc.b $00
[000c195e]                           dc.b $00
[000c195f]                           dc.b $00
[000c1960]                           dc.b $00
[000c1961]                           dc.b $00
[000c1962]                           dc.b $00
[000c1963]                           dc.b $00
[000c1964]                           dc.b $00
[000c1965]                           dc.b $00
[000c1966]                           dc.b $00
[000c1967]                           dc.b $00
[000c1968]                           dc.b $00
[000c1969]                           dc.b $00
proto:
[000c196a]                           dc.b $00
[000c196b]                           dc.b $00
[000c196c]                           dc.w $ffff
[000c196e]                           dc.w $ffff
[000c1970]                           dc.b $00
[000c1971]                           dc.b $1f
[000c1972]                           dc.w $2005
[000c1974]                           dc.b $00
[000c1975]                           dc.b $00
[000c1976]                           dc.b $00
[000c1977]                           dc.b $00
[000c1978]                           dc.b $00
[000c1979]                           dc.b $00
[000c197a]                           dc.b $00
[000c197b]                           dc.b $08
[000c197c]                           dc.b $00
[000c197d]                           dc.b $08
[000c197e]                           dc.b $00
[000c197f]                           dc.b $48
[000c1980]                           dc.b $00
[000c1981]                           dc.b $28
pra02:
[000c1982]                           dc.b $00
[000c1983]                           dc.b $00
[000c1984]                           dc.b $00
[000c1985]                           dc.b $00
[000c1986]                           dc.b $00
[000c1987]                           dc.b $00
[000c1988]                           dc.b $00
[000c1989]                           dc.b $00
[000c198a]                           dc.w $8000
[000c198c]                           dc.b $00
[000c198d]                           dc.b $00
[000c198e]                           dc.b $00
[000c198f]                           dc.b $00
[000c1990]                           dc.b $00
[000c1991]                           dc.b $00
[000c1992]                           dc.b $00
[000c1993]                           dc.b $00
[000c1994]                           dc.b $00
[000c1995]                           dc.b $00
[000c1996]                           dc.b $00
[000c1997]                           dc.b $00
[000c1998]                           dc.b $00
[000c1999]                           dc.b $00
xc199a:
[000c199a]                           dc.b '%li',0
xc199e:
[000c199e]                           dc.w $2569
[000c19a0]                           dc.b $00
		.even

