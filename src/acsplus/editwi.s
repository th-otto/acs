
undirty:
[0003b388] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003b38c] 2448                      movea.l    a0,a2
[0003b38e] 2650                      movea.l    (a0),a3
[0003b390] 026b ff7f 0294            andi.w     #$FF7F,660(a3)
[0003b396] 93c9                      suba.l     a1,a1
[0003b398] 303c 00f9                 move.w     #$00F9,d0
[0003b39c] 206a 0014                 movea.l    20(a2),a0
[0003b3a0] 4eb9 0003 8e52            jsr        Auo_editor
[0003b3a6] 49f9 000f ff04            lea.l      buffer,a4
[0003b3ac] 486b 0192                 pea.l      402(a3)
[0003b3b0] 43eb 0068                 lea.l      104(a3),a1
[0003b3b4] 204c                      movea.l    a4,a0
[0003b3b6] 4eb9 0007 5680            jsr        sprintf
[0003b3bc] 584f                      addq.w     #4,a7
[0003b3be] 224c                      movea.l    a4,a1
[0003b3c0] 204a                      movea.l    a2,a0
[0003b3c2] 4eb9 0003 ce3c            jsr        set_title
[0003b3c8] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003b3cc] 4e75                      rts

dirty:
[0003b3ce] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003b3d2] 554f                      subq.w     #2,a7
[0003b3d4] 2448                      movea.l    a0,a2
[0003b3d6] 2650                      movea.l    (a0),a3
[0003b3d8] 303c 0080                 move.w     #$0080,d0
[0003b3dc] c06b 0294                 and.w      660(a3),d0
[0003b3e0] 663c                      bne.s      dirty_1
[0003b3e2] 43d7                      lea.l      (a7),a1
[0003b3e4] 206a 0014                 movea.l    20(a2),a0
[0003b3e8] 303c 00fa                 move.w     #$00FA,d0
[0003b3ec] 4eb9 0003 8e52            jsr        Auo_editor
[0003b3f2] 3017                      move.w     (a7),d0
[0003b3f4] 6728                      beq.s      dirty_1
[0003b3f6] 006b 0080 0294            ori.w      #$0080,660(a3)
[0003b3fc] 49f9 000f ff04            lea.l      buffer,a4
[0003b402] 486b 0192                 pea.l      402(a3)
[0003b406] 43eb 0088                 lea.l      136(a3),a1
[0003b40a] 204c                      movea.l    a4,a0
[0003b40c] 4eb9 0007 5680            jsr        sprintf
[0003b412] 584f                      addq.w     #4,a7
[0003b414] 224c                      movea.l    a4,a1
[0003b416] 204a                      movea.l    a2,a0
[0003b418] 4eb9 0003 ce3c            jsr        set_title
dirty_1:
[0003b41e] 544f                      addq.w     #2,a7
[0003b420] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003b424] 4e75                      rts

edit_key:
[0003b426] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0003b42a] 4fef fdae                 lea.l      -594(a7),a7
[0003b42e] 2f48 024e                 move.l     a0,590(a7)
[0003b432] 3f41 024c                 move.w     d1,588(a7)
[0003b436] 2668 0014                 movea.l    20(a0),a3
[0003b43a] 76ff                      moveq.l    #-1,d3
[0003b43c] 2f50 0240                 move.l     (a0),576(a7)
[0003b440] 3f7c 0008 0216            move.w     #$0008,534(a7)
[0003b446] 42af 022c                 clr.l      556(a7)
[0003b44a] 2f6b 000c 0244            move.l     12(a3),580(a7)
[0003b450] 226f 0244                 movea.l    580(a7),a1
[0003b454] 2a69 0008                 movea.l    8(a1),a5
[0003b458] 303c 00d5                 move.w     #$00D5,d0
[0003b45c] 204b                      movea.l    a3,a0
[0003b45e] 93c9                      suba.l     a1,a1
[0003b460] 4e95                      jsr        (a5)
[0003b462] 45ef 0218                 lea.l      536(a7),a2
[0003b466] 6000 0e06                 bra        edit_key_1
edit_key_138:
[0003b46a] 302f 024c                 move.w     588(a7),d0
[0003b46e] 6a00 0bf0                 bpl        edit_key_2
[0003b472] 122f 024d                 move.b     589(a7),d1
[0003b476] 4881                      ext.w      d1
[0003b478] b27c 0079                 cmp.w      #$0079,d1
[0003b47c] 6200 0bdc                 bhi        edit_key_3
[0003b480] d241                      add.w      d1,d1
[0003b482] 323b 1006                 move.w     $0003B48A(pc,d1.w),d1
[0003b486] 4efb 1002                 jmp        $0003B48A(pc,d1.w)
J30:
[0003b48a] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b48c] 0276                      dc.w $0276   ; edit_key_4-J30
[0003b48e] 02d0                      dc.w $02d0   ; edit_key_5-J30
[0003b490] 0490                      dc.w $0490   ; edit_key_6-J30
[0003b492] 032a                      dc.w $032a   ; edit_key_7-J30
[0003b494] 0276                      dc.w $0276   ; edit_key_4-J30
[0003b496] 02d0                      dc.w $02d0   ; edit_key_5-J30
[0003b498] 0644                      dc.w $0644   ; edit_key_8-J30
[0003b49a] 0814                      dc.w $0814   ; edit_key_9-J30
[0003b49c] 0a7c                      dc.w $0a7c   ; edit_key_10-J30
[0003b49e] 0974                      dc.w $0974   ; edit_key_11-J30
[0003b4a0] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4a2] 0644                      dc.w $0644   ; edit_key_8-J30
[0003b4a4] 0974                      dc.w $0974   ; edit_key_11-J30
[0003b4a6] 010a                      dc.w $010a   ; edit_key_12-J30
[0003b4a8] 00f4                      dc.w $00f4   ; edit_key_13-J30
[0003b4aa] 0b5c                      dc.w $0b5c   ; edit_key_14-J30
[0003b4ac] 0b5c                      dc.w $0b5c   ; edit_key_14-J30
[0003b4ae] 0b5c                      dc.w $0b5c   ; edit_key_14-J30
[0003b4b0] 0b5c                      dc.w $0b5c   ; edit_key_14-J30
[0003b4b2] 0b5c                      dc.w $0b5c   ; edit_key_14-J30
[0003b4b4] 0b5c                      dc.w $0b5c   ; edit_key_14-J30
[0003b4b6] 0b5c                      dc.w $0b5c   ; edit_key_14-J30
[0003b4b8] 0b5c                      dc.w $0b5c   ; edit_key_14-J30
[0003b4ba] 0b5c                      dc.w $0b5c   ; edit_key_14-J30
[0003b4bc] 0b5c                      dc.w $0b5c   ; edit_key_14-J30
[0003b4be] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4c0] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4c2] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4c4] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4c6] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4c8] 0694                      dc.w $0694   ; edit_key_15-J30
[0003b4ca] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4cc] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4ce] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4d0] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4d2] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4d4] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4d6] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4d8] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4da] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4dc] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4de] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4e0] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4e2] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4e4] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4e6] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4e8] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4ea] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4ec] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4ee] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4f0] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4f2] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4f4] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4f6] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4f8] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4fa] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4fc] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b4fe] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b500] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b502] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b504] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b506] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b508] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b50a] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b50c] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b50e] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b510] 0b30                      dc.w $0b30   ; edit_key_16-J30
[0003b512] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b514] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b516] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b518] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b51a] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b51c] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b51e] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b520] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b522] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b524] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b526] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b528] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b52a] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b52c] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b52e] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b530] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b532] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b534] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b536] 0b46                      dc.w $0b46   ; edit_key_17-J30
[0003b538] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b53a] 0b1a                      dc.w $0b1a   ; edit_key_18-J30
[0003b53c] 0b04                      dc.w $0b04   ; edit_key_19-J30
[0003b53e] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b540] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b542] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b544] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b546] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b548] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b54a] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b54c] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b54e] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b550] 0b30                      dc.w $0b30   ; edit_key_16-J30
[0003b552] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b554] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b556] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b558] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b55a] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b55c] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b55e] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b560] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b562] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b564] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b566] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b568] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b56a] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b56c] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b56e] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b570] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b572] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b574] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b576] 0b46                      dc.w $0b46   ; edit_key_17-J30
[0003b578] 0bd0                      dc.w $0bd0   ; edit_key_3-J30
[0003b57a] 0b1a                      dc.w $0b1a   ; edit_key_18-J30
[0003b57c] 0b04                      dc.w $0b04   ; edit_key_19-J30
edit_key_13:
[0003b57e] 93c9                      suba.l     a1,a1
[0003b580] 303c 00eb                 move.w     #$00EB,d0
[0003b584] 204b                      movea.l    a3,a0
[0003b586] 4e95                      jsr        (a5)
[0003b588] 93c9                      suba.l     a1,a1
[0003b58a] 7005                      moveq.l    #5,d0
[0003b58c] 204b                      movea.l    a3,a0
[0003b58e] 4e95                      jsr        (a5)
[0003b590] 6000 0cc6                 bra        edit_key_20
edit_key_12:
[0003b594] 43ef 021c                 lea.l      540(a7),a1
[0003b598] 303c 00e3                 move.w     #$00E3,d0
[0003b59c] 204b                      movea.l    a3,a0
[0003b59e] 4e95                      jsr        (a5)
[0003b5a0] 202f 021c                 move.l     540(a7),d0
[0003b5a4] 6a00 009c                 bpl        edit_key_21
[0003b5a8] 43ef 0010                 lea.l      16(a7),a1
[0003b5ac] 204b                      movea.l    a3,a0
[0003b5ae] 303c 0107                 move.w     #$0107,d0
[0003b5b2] 4e95                      jsr        (a5)
[0003b5b4] 43ef 0238                 lea.l      568(a7),a1
[0003b5b8] 303c 00d8                 move.w     #$00D8,d0
[0003b5bc] 204b                      movea.l    a3,a0
[0003b5be] 4e95                      jsr        (a5)
[0003b5c0] 43ef 0234                 lea.l      564(a7),a1
[0003b5c4] 303c 00e7                 move.w     #$00E7,d0
[0003b5c8] 204b                      movea.l    a3,a0
[0003b5ca] 4e95                      jsr        (a5)
[0003b5cc] 202f 0238                 move.l     568(a7),d0
[0003b5d0] 2e80                      move.l     d0,(a7)
[0003b5d2] 2f40 0224                 move.l     d0,548(a7)
[0003b5d6] 2f40 021c                 move.l     d0,540(a7)
[0003b5da] 43d7                      lea.l      (a7),a1
[0003b5dc] 204b                      movea.l    a3,a0
[0003b5de] 303c 00ca                 move.w     #$00CA,d0
[0003b5e2] 4e95                      jsr        (a5)
[0003b5e4] 24af 0234                 move.l     564(a7),(a2)
[0003b5e8] 601c                      bra.s      edit_key_22
edit_key_24:
[0003b5ea] 2212                      move.l     (a2),d1
[0003b5ec] 206f 0008                 movea.l    8(a7),a0
[0003b5f0] 1030 1800                 move.b     0(a0,d1.l),d0
[0003b5f4] 4880                      ext.w      d0
[0003b5f6] 206f 0010                 movea.l    16(a7),a0
[0003b5fa] 4eb9 0007 68ce            jsr        strchr
[0003b600] 2008                      move.l     a0,d0
[0003b602] 6606                      bne.s      edit_key_23
[0003b604] 5392                      subq.l     #1,(a2)
edit_key_22:
[0003b606] 2012                      move.l     (a2),d0
[0003b608] 6ae0                      bpl.s      edit_key_24
edit_key_23:
[0003b60a] 7001                      moveq.l    #1,d0
[0003b60c] d092                      add.l      (a2),d0
[0003b60e] 2f40 0220                 move.l     d0,544(a7)
[0003b612] 24af 0234                 move.l     564(a7),(a2)
[0003b616] 601c                      bra.s      edit_key_25
edit_key_27:
[0003b618] 2212                      move.l     (a2),d1
[0003b61a] 206f 0008                 movea.l    8(a7),a0
[0003b61e] 1030 1800                 move.b     0(a0,d1.l),d0
[0003b622] 4880                      ext.w      d0
[0003b624] 206f 0010                 movea.l    16(a7),a0
[0003b628] 4eb9 0007 68ce            jsr        strchr
[0003b62e] 2008                      move.l     a0,d0
[0003b630] 660a                      bne.s      edit_key_26
[0003b632] 5292                      addq.l     #1,(a2)
edit_key_25:
[0003b634] 2012                      move.l     (a2),d0
[0003b636] b0af 0004                 cmp.l      4(a7),d0
[0003b63a] 6ddc                      blt.s      edit_key_27
edit_key_26:
[0003b63c] 2f52 0228                 move.l     (a2),552(a7)
[0003b640] 602c                      bra.s      edit_key_28
edit_key_21:
[0003b642] 93c9                      suba.l     a1,a1
[0003b644] 303c 00e2                 move.w     #$00E2,d0
[0003b648] 204b                      movea.l    a3,a0
[0003b64a] 4e95                      jsr        (a5)
[0003b64c] 2eaf 021c                 move.l     540(a7),(a7)
[0003b650] 43d7                      lea.l      (a7),a1
[0003b652] 303c 00ca                 move.w     #$00CA,d0
[0003b656] 204b                      movea.l    a3,a0
[0003b658] 4e95                      jsr        (a5)
[0003b65a] 202f 021c                 move.l     540(a7),d0
[0003b65e] b0af 0224                 cmp.l      548(a7),d0
[0003b662] 670a                      beq.s      edit_key_28
[0003b664] 2f40 0224                 move.l     d0,548(a7)
[0003b668] 2f6f 0004 0228            move.l     4(a7),552(a7)
edit_key_28:
[0003b66e] 202f 0228                 move.l     552(a7),d0
[0003b672] b0af 0220                 cmp.l      544(a7),d0
[0003b676] 6f00 09e2                 ble        edit_key_3
[0003b67a] 42af 0248                 clr.l      584(a7)
[0003b67e] 41ef 0248                 lea.l      584(a7),a0
[0003b682] 303c 03e8                 move.w     #$03E8,d0
[0003b686] 4eb9 0004 ef62            jsr        Awi_sendall
[0003b68c] 43f9 000c 85c5            lea.l      $000C85C5,a1
[0003b692] 41ef 0014                 lea.l      20(a7),a0
[0003b696] 4eb9 0007 6950            jsr        strcpy
[0003b69c] 202f 0228                 move.l     552(a7),d0
[0003b6a0] 90af 0220                 sub.l      544(a7),d0
[0003b6a4] 222f 0220                 move.l     544(a7),d1
[0003b6a8] 226f 0008                 movea.l    8(a7),a1
[0003b6ac] d3c1                      adda.l     d1,a1
[0003b6ae] 41ef 0014                 lea.l      20(a7),a0
[0003b6b2] 4eb9 0007 69da            jsr        strncat
[0003b6b8] 43ef 021c                 lea.l      540(a7),a1
[0003b6bc] 303c 00e4                 move.w     #$00E4,d0
[0003b6c0] 204b                      movea.l    a3,a0
[0003b6c2] 4e95                      jsr        (a5)
[0003b6c4] 202f 0248                 move.l     584(a7),d0
[0003b6c8] 6716                      beq.s      edit_key_29
[0003b6ca] 43ef 0014                 lea.l      20(a7),a1
[0003b6ce] 2040                      movea.l    d0,a0
[0003b6d0] 2840                      movea.l    d0,a4
[0003b6d2] 286c 0004                 movea.l    4(a4),a4
[0003b6d6] 303c 03e9                 move.w     #$03E9,d0
[0003b6da] 4e94                      jsr        (a4)
[0003b6dc] 6000 0b7a                 bra        edit_key_20
edit_key_29:
[0003b6e0] 42a7                      clr.l      -(a7)
[0003b6e2] 43ef 0019                 lea.l      25(a7),a1
[0003b6e6] 206f 0244                 movea.l    580(a7),a0
[0003b6ea] 41e8 0697                 lea.l      1687(a0),a0
[0003b6ee] 4eb9 0005 89ee            jsr        Aev_AcHelp
[0003b6f4] 584f                      addq.w     #4,a7
[0003b6f6] 5340                      subq.w     #1,d0
[0003b6f8] 6700 0b5e                 beq        edit_key_20
[0003b6fc] 6000 095c                 bra        edit_key_3
edit_key_4:
[0003b700] 43ef 021c                 lea.l      540(a7),a1
[0003b704] 303c 00e3                 move.w     #$00E3,d0
[0003b708] 204b                      movea.l    a3,a0
[0003b70a] 4e95                      jsr        (a5)
[0003b70c] 202f 021c                 move.l     540(a7),d0
[0003b710] 6a00 00b4                 bpl        edit_key_30
[0003b714] 0c2f 0001 024d            cmpi.b     #$01,589(a7)
[0003b71a] 660a                      bne.s      edit_key_31
[0003b71c] 322f 024c                 move.w     588(a7),d1
[0003b720] c27c 0300                 and.w      #$0300,d1
[0003b724] 6712                      beq.s      edit_key_32
edit_key_31:
[0003b726] 0c2f 0005 024d            cmpi.b     #$05,589(a7)
[0003b72c] 660e                      bne.s      edit_key_33
[0003b72e] 302f 024c                 move.w     588(a7),d0
[0003b732] c07c 0300                 and.w      #$0300,d0
[0003b736] 6704                      beq.s      edit_key_33
edit_key_32:
[0003b738] 7001                      moveq.l    #1,d0
[0003b73a] 6002                      bra.s      edit_key_34
edit_key_33:
[0003b73c] 4240                      clr.w      d0
edit_key_34:
[0003b73e] 4a40                      tst.w      d0
[0003b740] 670c                      beq.s      edit_key_35
[0003b742] 93c9                      suba.l     a1,a1
[0003b744] 700b                      moveq.l    #11,d0
[0003b746] 204b                      movea.l    a3,a0
[0003b748] 4e95                      jsr        (a5)
[0003b74a] 6000 0b0c                 bra        edit_key_20
edit_key_35:
[0003b74e] 93c9                      suba.l     a1,a1
[0003b750] 700d                      moveq.l    #13,d0
[0003b752] 204b                      movea.l    a3,a0
[0003b754] 4e95                      jsr        (a5)
[0003b756] 6000 0b00                 bra        edit_key_20
edit_key_5:
[0003b75a] 43ef 021c                 lea.l      540(a7),a1
[0003b75e] 303c 00e3                 move.w     #$00E3,d0
[0003b762] 204b                      movea.l    a3,a0
[0003b764] 4e95                      jsr        (a5)
[0003b766] 202f 021c                 move.l     540(a7),d0
[0003b76a] 6a00 01c0                 bpl        edit_key_36
[0003b76e] 0c2f 0002 024d            cmpi.b     #$02,589(a7)
[0003b774] 660a                      bne.s      edit_key_37
[0003b776] 322f 024c                 move.w     588(a7),d1
[0003b77a] c27c 0300                 and.w      #$0300,d1
[0003b77e] 6712                      beq.s      edit_key_38
edit_key_37:
[0003b780] 0c2f 0006 024d            cmpi.b     #$06,589(a7)
[0003b786] 660e                      bne.s      edit_key_39
[0003b788] 302f 024c                 move.w     588(a7),d0
[0003b78c] c07c 0300                 and.w      #$0300,d0
[0003b790] 6704                      beq.s      edit_key_39
edit_key_38:
[0003b792] 7001                      moveq.l    #1,d0
[0003b794] 6002                      bra.s      edit_key_40
edit_key_39:
[0003b796] 4240                      clr.w      d0
edit_key_40:
[0003b798] 4a40                      tst.w      d0
[0003b79a] 670c                      beq.s      edit_key_41
[0003b79c] 93c9                      suba.l     a1,a1
[0003b79e] 700a                      moveq.l    #10,d0
[0003b7a0] 204b                      movea.l    a3,a0
[0003b7a2] 4e95                      jsr        (a5)
[0003b7a4] 6000 0ab2                 bra        edit_key_20
edit_key_41:
[0003b7a8] 93c9                      suba.l     a1,a1
[0003b7aa] 700c                      moveq.l    #12,d0
[0003b7ac] 204b                      movea.l    a3,a0
[0003b7ae] 4e95                      jsr        (a5)
[0003b7b0] 6000 0aa6                 bra        edit_key_20
edit_key_7:
[0003b7b4] 43ef 021c                 lea.l      540(a7),a1
[0003b7b8] 303c 00e3                 move.w     #$00E3,d0
[0003b7bc] 204b                      movea.l    a3,a0
[0003b7be] 4e95                      jsr        (a5)
[0003b7c0] 202f 021c                 move.l     540(a7),d0
[0003b7c4] 6b24                      bmi.s      edit_key_42
edit_key_30:
[0003b7c6] 93c9                      suba.l     a1,a1
[0003b7c8] 303c 00e2                 move.w     #$00E2,d0
[0003b7cc] 204b                      movea.l    a3,a0
[0003b7ce] 4e95                      jsr        (a5)
[0003b7d0] 43ef 021c                 lea.l      540(a7),a1
[0003b7d4] 7011                      moveq.l    #17,d0
[0003b7d6] 204b                      movea.l    a3,a0
[0003b7d8] 4e95                      jsr        (a5)
[0003b7da] 43ef 0220                 lea.l      544(a7),a1
[0003b7de] 303c 00d7                 move.w     #$00D7,d0
[0003b7e2] 204b                      movea.l    a3,a0
[0003b7e4] 4e95                      jsr        (a5)
[0003b7e6] 6000 0a70                 bra        edit_key_20
edit_key_42:
[0003b7ea] 302f 024c                 move.w     588(a7),d0
[0003b7ee] c07c 0400                 and.w      #$0400,d0
[0003b7f2] 6700 00c6                 beq        edit_key_43
[0003b7f6] 93c9                      suba.l     a1,a1
[0003b7f8] 204b                      movea.l    a3,a0
[0003b7fa] 303c 00e2                 move.w     #$00E2,d0
[0003b7fe] 4e95                      jsr        (a5)
[0003b800] 43ef 0238                 lea.l      568(a7),a1
[0003b804] 303c 00d8                 move.w     #$00D8,d0
[0003b808] 204b                      movea.l    a3,a0
[0003b80a] 4e95                      jsr        (a5)
[0003b80c] 43ef 0234                 lea.l      564(a7),a1
[0003b810] 303c 00e7                 move.w     #$00E7,d0
[0003b814] 204b                      movea.l    a3,a0
[0003b816] 4e95                      jsr        (a5)
[0003b818] 202f 0234                 move.l     564(a7),d0
[0003b81c] 6626                      bne.s      edit_key_44
[0003b81e] 222f 0238                 move.l     568(a7),d1
[0003b822] 6700 0a34                 beq        edit_key_20
[0003b826] 53af 0238                 subq.l     #1,568(a7)
[0003b82a] 43ef 0238                 lea.l      568(a7),a1
[0003b82e] 204b                      movea.l    a3,a0
[0003b830] 7011                      moveq.l    #17,d0
[0003b832] 4e95                      jsr        (a5)
[0003b834] 43ef 0234                 lea.l      564(a7),a1
[0003b838] 303c 00e8                 move.w     #$00E8,d0
[0003b83c] 204b                      movea.l    a3,a0
[0003b83e] 4e95                      jsr        (a5)
[0003b840] 6000 024a                 bra        edit_key_45
edit_key_44:
[0003b844] 43ef 0010                 lea.l      16(a7),a1
[0003b848] 303c 0107                 move.w     #$0107,d0
[0003b84c] 204b                      movea.l    a3,a0
[0003b84e] 4e95                      jsr        (a5)
[0003b850] 2eaf 0238                 move.l     568(a7),(a7)
[0003b854] 43d7                      lea.l      (a7),a1
[0003b856] 303c 00ca                 move.w     #$00CA,d0
[0003b85a] 204b                      movea.l    a3,a0
[0003b85c] 4e95                      jsr        (a5)
[0003b85e] 70ff                      moveq.l    #-1,d0
[0003b860] d0af 0234                 add.l      564(a7),d0
[0003b864] 2480                      move.l     d0,(a2)
[0003b866] 6040                      bra.s      edit_key_46
edit_key_51:
[0003b868] 2212                      move.l     (a2),d1
[0003b86a] 206f 0008                 movea.l    8(a7),a0
[0003b86e] 1030 18ff                 move.b     -1(a0,d1.l),d0
[0003b872] 4880                      ext.w      d0
[0003b874] 206f 0010                 movea.l    16(a7),a0
[0003b878] 4eb9 0007 68ce            jsr        strchr
[0003b87e] 2008                      move.l     a0,d0
[0003b880] 6624                      bne.s      edit_key_47
[0003b882] 601c                      bra.s      edit_key_48
edit_key_50:
[0003b884] 2212                      move.l     (a2),d1
[0003b886] 206f 0008                 movea.l    8(a7),a0
[0003b88a] 1030 18ff                 move.b     -1(a0,d1.l),d0
[0003b88e] 4880                      ext.w      d0
[0003b890] 206f 0010                 movea.l    16(a7),a0
[0003b894] 4eb9 0007 68ce            jsr        strchr
[0003b89a] 2008                      move.l     a0,d0
[0003b89c] 660e                      bne.s      edit_key_49
[0003b89e] 5392                      subq.l     #1,(a2)
edit_key_48:
[0003b8a0] 2012                      move.l     (a2),d0
[0003b8a2] 6ee0                      bgt.s      edit_key_50
[0003b8a4] 6006                      bra.s      edit_key_49
edit_key_47:
[0003b8a6] 5392                      subq.l     #1,(a2)
edit_key_46:
[0003b8a8] 2012                      move.l     (a2),d0
[0003b8aa] 6ebc                      bgt.s      edit_key_51
edit_key_49:
[0003b8ac] 224a                      movea.l    a2,a1
[0003b8ae] 303c 00d7                 move.w     #$00D7,d0
[0003b8b2] 204b                      movea.l    a3,a0
[0003b8b4] 4e95                      jsr        (a5)
[0003b8b6] 6000 09a0                 bra        edit_key_20
edit_key_43:
[0003b8ba] 302f 024c                 move.w     588(a7),d0
[0003b8be] c07c 0300                 and.w      #$0300,d0
[0003b8c2] 6710                      beq.s      edit_key_52
edit_key_65:
[0003b8c4] 43ef 022c                 lea.l      556(a7),a1
[0003b8c8] 303c 00d7                 move.w     #$00D7,d0
[0003b8cc] 204b                      movea.l    a3,a0
[0003b8ce] 4e95                      jsr        (a5)
[0003b8d0] 6000 0986                 bra        edit_key_20
edit_key_52:
[0003b8d4] 43ef 0234                 lea.l      564(a7),a1
[0003b8d8] 303c 00e7                 move.w     #$00E7,d0
[0003b8dc] 204b                      movea.l    a3,a0
[0003b8de] 4e95                      jsr        (a5)
[0003b8e0] 202f 0234                 move.l     564(a7),d0
[0003b8e4] 6708                      beq.s      edit_key_53
[0003b8e6] 53af 0234                 subq.l     #1,564(a7)
[0003b8ea] 6000 01a0                 bra        edit_key_45
edit_key_53:
[0003b8ee] 43ef 0238                 lea.l      568(a7),a1
[0003b8f2] 303c 00d8                 move.w     #$00D8,d0
[0003b8f6] 204b                      movea.l    a3,a0
[0003b8f8] 4e95                      jsr        (a5)
[0003b8fa] 202f 0238                 move.l     568(a7),d0
[0003b8fe] 6f00 0958                 ble        edit_key_20
[0003b902] 93c9                      suba.l     a1,a1
[0003b904] 204b                      movea.l    a3,a0
[0003b906] 700b                      moveq.l    #11,d0
[0003b908] 4e95                      jsr        (a5)
edit_key_71:
[0003b90a] 43ef 0230                 lea.l      560(a7),a1
[0003b90e] 303c 00e8                 move.w     #$00E8,d0
[0003b912] 204b                      movea.l    a3,a0
[0003b914] 4e95                      jsr        (a5)
[0003b916] 6000 014a                 bra        edit_key_54
edit_key_6:
[0003b91a] 43ef 021c                 lea.l      540(a7),a1
[0003b91e] 303c 00e3                 move.w     #$00E3,d0
[0003b922] 204b                      movea.l    a3,a0
[0003b924] 4e95                      jsr        (a5)
[0003b926] 202f 021c                 move.l     540(a7),d0
[0003b92a] 6b24                      bmi.s      edit_key_55
edit_key_36:
[0003b92c] 93c9                      suba.l     a1,a1
[0003b92e] 303c 00e2                 move.w     #$00E2,d0
[0003b932] 204b                      movea.l    a3,a0
[0003b934] 4e95                      jsr        (a5)
[0003b936] 43ef 0224                 lea.l      548(a7),a1
[0003b93a] 7011                      moveq.l    #17,d0
[0003b93c] 204b                      movea.l    a3,a0
[0003b93e] 4e95                      jsr        (a5)
[0003b940] 43ef 0228                 lea.l      552(a7),a1
[0003b944] 303c 00d7                 move.w     #$00D7,d0
[0003b948] 204b                      movea.l    a3,a0
[0003b94a] 4e95                      jsr        (a5)
[0003b94c] 6000 090a                 bra        edit_key_20
edit_key_55:
[0003b950] 302f 024c                 move.w     588(a7),d0
[0003b954] c07c 0400                 and.w      #$0400,d0
[0003b958] 6700 00e8                 beq        edit_key_56
[0003b95c] 93c9                      suba.l     a1,a1
[0003b95e] 204b                      movea.l    a3,a0
[0003b960] 303c 00e2                 move.w     #$00E2,d0
[0003b964] 4e95                      jsr        (a5)
[0003b966] 43ef 0238                 lea.l      568(a7),a1
[0003b96a] 303c 00d8                 move.w     #$00D8,d0
[0003b96e] 204b                      movea.l    a3,a0
[0003b970] 4e95                      jsr        (a5)
[0003b972] 43ef 0234                 lea.l      564(a7),a1
[0003b976] 303c 00e7                 move.w     #$00E7,d0
[0003b97a] 204b                      movea.l    a3,a0
[0003b97c] 4e95                      jsr        (a5)
[0003b97e] 43ef 023c                 lea.l      572(a7),a1
[0003b982] 303c 00e9                 move.w     #$00E9,d0
[0003b986] 204b                      movea.l    a3,a0
[0003b988] 4e95                      jsr        (a5)
[0003b98a] 43ef 0230                 lea.l      560(a7),a1
[0003b98e] 303c 00e8                 move.w     #$00E8,d0
[0003b992] 204b                      movea.l    a3,a0
[0003b994] 4e95                      jsr        (a5)
[0003b996] 202f 0234                 move.l     564(a7),d0
[0003b99a] b0af 0230                 cmp.l      560(a7),d0
[0003b99e] 662e                      bne.s      edit_key_57
[0003b9a0] 72ff                      moveq.l    #-1,d1
[0003b9a2] d2af 023c                 add.l      572(a7),d1
[0003b9a6] 242f 0238                 move.l     568(a7),d2
[0003b9aa] b481                      cmp.l      d1,d2
[0003b9ac] 6700 08aa                 beq        edit_key_20
[0003b9b0] 43ef 022c                 lea.l      556(a7),a1
[0003b9b4] 204b                      movea.l    a3,a0
[0003b9b6] 303c 00d7                 move.w     #$00D7,d0
[0003b9ba] 4e95                      jsr        (a5)
[0003b9bc] 52af 0238                 addq.l     #1,568(a7)
[0003b9c0] 43ef 0238                 lea.l      568(a7),a1
[0003b9c4] 7011                      moveq.l    #17,d0
[0003b9c6] 204b                      movea.l    a3,a0
[0003b9c8] 4e95                      jsr        (a5)
[0003b9ca] 6000 088c                 bra        edit_key_20
edit_key_57:
[0003b9ce] 43ef 0010                 lea.l      16(a7),a1
[0003b9d2] 303c 0107                 move.w     #$0107,d0
[0003b9d6] 204b                      movea.l    a3,a0
[0003b9d8] 4e95                      jsr        (a5)
[0003b9da] 2eaf 0238                 move.l     568(a7),(a7)
[0003b9de] 43d7                      lea.l      (a7),a1
[0003b9e0] 303c 00ca                 move.w     #$00CA,d0
[0003b9e4] 204b                      movea.l    a3,a0
[0003b9e6] 4e95                      jsr        (a5)
[0003b9e8] 24af 0234                 move.l     564(a7),(a2)
[0003b9ec] 6048                      bra.s      edit_key_58
edit_key_62:
[0003b9ee] 2212                      move.l     (a2),d1
[0003b9f0] 206f 0008                 movea.l    8(a7),a0
[0003b9f4] 1030 1800                 move.b     0(a0,d1.l),d0
[0003b9f8] 4880                      ext.w      d0
[0003b9fa] 206f 0010                 movea.l    16(a7),a0
[0003b9fe] 4eb9 0007 68ce            jsr        strchr
[0003ba04] 2008                      move.l     a0,d0
[0003ba06] 672c                      beq.s      edit_key_59
[0003ba08] 601e                      bra.s      edit_key_60
edit_key_61:
[0003ba0a] 2212                      move.l     (a2),d1
[0003ba0c] 206f 0008                 movea.l    8(a7),a0
[0003ba10] 1030 1800                 move.b     0(a0,d1.l),d0
[0003ba14] 4880                      ext.w      d0
[0003ba16] 206f 0010                 movea.l    16(a7),a0
[0003ba1a] 4eb9 0007 68ce            jsr        strchr
[0003ba20] 2008                      move.l     a0,d0
[0003ba22] 6700 fe88                 beq        edit_key_49
[0003ba26] 5292                      addq.l     #1,(a2)
edit_key_60:
[0003ba28] 2012                      move.l     (a2),d0
[0003ba2a] b0af 0230                 cmp.l      560(a7),d0
[0003ba2e] 6dda                      blt.s      edit_key_61
[0003ba30] 6000 fe7a                 bra        edit_key_49
edit_key_59:
[0003ba34] 5292                      addq.l     #1,(a2)
edit_key_58:
[0003ba36] 2012                      move.l     (a2),d0
[0003ba38] b0af 0230                 cmp.l      560(a7),d0
[0003ba3c] 6db0                      blt.s      edit_key_62
[0003ba3e] 6000 fe6c                 bra        edit_key_49
edit_key_56:
[0003ba42] 93c9                      suba.l     a1,a1
[0003ba44] 303c 00e2                 move.w     #$00E2,d0
[0003ba48] 204b                      movea.l    a3,a0
[0003ba4a] 4e95                      jsr        (a5)
[0003ba4c] 43ef 0230                 lea.l      560(a7),a1
[0003ba50] 303c 00e8                 move.w     #$00E8,d0
[0003ba54] 204b                      movea.l    a3,a0
[0003ba56] 4e95                      jsr        (a5)
[0003ba58] 302f 024c                 move.w     588(a7),d0
[0003ba5c] c07c 0300                 and.w      #$0300,d0
[0003ba60] 6710                      beq.s      edit_key_63
edit_key_54:
[0003ba62] 43ef 0230                 lea.l      560(a7),a1
[0003ba66] 303c 00d7                 move.w     #$00D7,d0
[0003ba6a] 204b                      movea.l    a3,a0
[0003ba6c] 4e95                      jsr        (a5)
[0003ba6e] 6000 07e8                 bra        edit_key_20
edit_key_63:
[0003ba72] 43ef 0234                 lea.l      564(a7),a1
[0003ba76] 303c 00e7                 move.w     #$00E7,d0
[0003ba7a] 204b                      movea.l    a3,a0
[0003ba7c] 4e95                      jsr        (a5)
[0003ba7e] 202f 0234                 move.l     564(a7),d0
[0003ba82] b0af 0230                 cmp.l      560(a7),d0
[0003ba86] 6c14                      bge.s      edit_key_64
[0003ba88] 52af 0234                 addq.l     #1,564(a7)
edit_key_45:
[0003ba8c] 43ef 0234                 lea.l      564(a7),a1
[0003ba90] 303c 00d7                 move.w     #$00D7,d0
[0003ba94] 204b                      movea.l    a3,a0
[0003ba96] 4e95                      jsr        (a5)
[0003ba98] 6000 07be                 bra        edit_key_20
edit_key_64:
[0003ba9c] 43ef 023c                 lea.l      572(a7),a1
[0003baa0] 303c 00e9                 move.w     #$00E9,d0
[0003baa4] 204b                      movea.l    a3,a0
[0003baa6] 4e95                      jsr        (a5)
[0003baa8] 43ef 0238                 lea.l      568(a7),a1
[0003baac] 303c 00d8                 move.w     #$00D8,d0
[0003bab0] 204b                      movea.l    a3,a0
[0003bab2] 4e95                      jsr        (a5)
[0003bab4] 7001                      moveq.l    #1,d0
[0003bab6] d0af 0238                 add.l      568(a7),d0
[0003baba] b0af 023c                 cmp.l      572(a7),d0
[0003babe] 6c00 0798                 bge        edit_key_20
[0003bac2] 93c9                      suba.l     a1,a1
[0003bac4] 204b                      movea.l    a3,a0
[0003bac6] 700a                      moveq.l    #10,d0
[0003bac8] 4e95                      jsr        (a5)
[0003baca] 6000 fdf8                 bra        edit_key_65
edit_key_8:
[0003bace] 0c2f 000c 024d            cmpi.b     #$0C,589(a7)
[0003bad4] 660a                      bne.s      edit_key_66
[0003bad6] 302f 024c                 move.w     588(a7),d0
[0003bada] c07c 0300                 and.w      #$0300,d0
[0003bade] 6712                      beq.s      edit_key_67
edit_key_66:
[0003bae0] 0c2f 0007 024d            cmpi.b     #$07,589(a7)
[0003bae6] 660e                      bne.s      edit_key_68
[0003bae8] 302f 024c                 move.w     588(a7),d0
[0003baec] c07c 0300                 and.w      #$0300,d0
[0003baf0] 6704                      beq.s      edit_key_68
edit_key_67:
[0003baf2] 7c01                      moveq.l    #1,d6
[0003baf4] 6002                      bra.s      edit_key_69
edit_key_68:
[0003baf6] 4246                      clr.w      d6
edit_key_69:
[0003baf8] 93c9                      suba.l     a1,a1
[0003bafa] 303c 00e2                 move.w     #$00E2,d0
[0003bafe] 204b                      movea.l    a3,a0
[0003bb00] 4e95                      jsr        (a5)
[0003bb02] 4a46                      tst.w      d6
[0003bb04] 670c                      beq.s      edit_key_70
[0003bb06] 93c9                      suba.l     a1,a1
[0003bb08] 700e                      moveq.l    #14,d0
[0003bb0a] 204b                      movea.l    a3,a0
[0003bb0c] 4e95                      jsr        (a5)
[0003bb0e] 6000 fdb4                 bra        edit_key_65
edit_key_70:
[0003bb12] 93c9                      suba.l     a1,a1
[0003bb14] 700f                      moveq.l    #15,d0
[0003bb16] 204b                      movea.l    a3,a0
[0003bb18] 4e95                      jsr        (a5)
[0003bb1a] 6000 fdee                 bra        edit_key_71
edit_key_15:
[0003bb1e] 43ef 021c                 lea.l      540(a7),a1
[0003bb22] 303c 00e3                 move.w     #$00E3,d0
[0003bb26] 204b                      movea.l    a3,a0
[0003bb28] 4e95                      jsr        (a5)
[0003bb2a] 202f 021c                 move.l     540(a7),d0
[0003bb2e] 6b24                      bmi.s      edit_key_72
edit_key_85:
[0003bb30] 23ef 021c 000c 8274       move.l     540(a7),subdel
[0003bb38] 23ef 0220 000c 8278       move.l     544(a7),$000C8278
[0003bb40] 23ef 0224 000c 827c       move.l     548(a7),$000C827C
[0003bb48] 23ef 0228 000c 8280       move.l     552(a7),$000C8280
[0003bb50] 6000 029a                 bra        edit_key_73
edit_key_72:
[0003bb54] 43ef 0238                 lea.l      568(a7),a1
[0003bb58] 303c 00d8                 move.w     #$00D8,d0
[0003bb5c] 204b                      movea.l    a3,a0
[0003bb5e] 4e95                      jsr        (a5)
[0003bb60] 43ef 0234                 lea.l      564(a7),a1
[0003bb64] 303c 00e7                 move.w     #$00E7,d0
[0003bb68] 204b                      movea.l    a3,a0
[0003bb6a] 4e95                      jsr        (a5)
[0003bb6c] 43ef 0230                 lea.l      560(a7),a1
[0003bb70] 303c 00e8                 move.w     #$00E8,d0
[0003bb74] 204b                      movea.l    a3,a0
[0003bb76] 4e95                      jsr        (a5)
[0003bb78] 202f 0234                 move.l     564(a7),d0
[0003bb7c] b0af 0230                 cmp.l      560(a7),d0
[0003bb80] 6c00 00e2                 bge        edit_key_74
[0003bb84] 222f 0238                 move.l     568(a7),d1
[0003bb88] 23c1 000c 827c            move.l     d1,$000C827C
[0003bb8e] 23c1 000c 8274            move.l     d1,subdel
[0003bb94] 23c0 000c 8278            move.l     d0,$000C8278
[0003bb9a] 322f 024c                 move.w     588(a7),d1
[0003bb9e] c27c 0300                 and.w      #$0300,d1
[0003bba2] 670c                      beq.s      edit_key_75
[0003bba4] 23ef 0230 000c 8280       move.l     560(a7),$000C8280
[0003bbac] 6000 023e                 bra        edit_key_73
edit_key_75:
[0003bbb0] 302f 024c                 move.w     588(a7),d0
[0003bbb4] c07c 0400                 and.w      #$0400,d0
[0003bbb8] 6700 009a                 beq        edit_key_76
[0003bbbc] 43ef 0010                 lea.l      16(a7),a1
[0003bbc0] 204b                      movea.l    a3,a0
[0003bbc2] 303c 0107                 move.w     #$0107,d0
[0003bbc6] 4e95                      jsr        (a5)
[0003bbc8] 2eaf 0238                 move.l     568(a7),(a7)
[0003bbcc] 43d7                      lea.l      (a7),a1
[0003bbce] 303c 00ca                 move.w     #$00CA,d0
[0003bbd2] 204b                      movea.l    a3,a0
[0003bbd4] 4e95                      jsr        (a5)
[0003bbd6] 24af 0234                 move.l     564(a7),(a2)
[0003bbda] 2212                      move.l     (a2),d1
[0003bbdc] 206f 0008                 movea.l    8(a7),a0
[0003bbe0] 1030 1800                 move.b     0(a0,d1.l),d0
[0003bbe4] 4880                      ext.w      d0
[0003bbe6] 206f 0010                 movea.l    16(a7),a0
[0003bbea] 4eb9 0007 68ce            jsr        strchr
[0003bbf0] 2f48 000c                 move.l     a0,12(a7)
[0003bbf4] 6002                      bra.s      edit_key_77
edit_key_84:
[0003bbf6] 5292                      addq.l     #1,(a2)
edit_key_77:
[0003bbf8] 2012                      move.l     (a2),d0
[0003bbfa] b0af 0004                 cmp.l      4(a7),d0
[0003bbfe] 6c4a                      bge.s      edit_key_78
[0003bc00] 222f 000c                 move.l     12(a7),d1
[0003bc04] 6720                      beq.s      edit_key_79
[0003bc06] 206f 0008                 movea.l    8(a7),a0
[0003bc0a] 1030 0800                 move.b     0(a0,d0.l),d0
[0003bc0e] 4880                      ext.w      d0
[0003bc10] 206f 0010                 movea.l    16(a7),a0
[0003bc14] 4eb9 0007 68ce            jsr        strchr
[0003bc1a] 2008                      move.l     a0,d0
[0003bc1c] 6704                      beq.s      edit_key_80
[0003bc1e] 7001                      moveq.l    #1,d0
[0003bc20] 6002                      bra.s      edit_key_81
edit_key_80:
[0003bc22] 4240                      clr.w      d0
edit_key_81:
[0003bc24] 6020                      bra.s      edit_key_82
edit_key_79:
[0003bc26] 2212                      move.l     (a2),d1
[0003bc28] 206f 0008                 movea.l    8(a7),a0
[0003bc2c] 1030 1800                 move.b     0(a0,d1.l),d0
[0003bc30] 4880                      ext.w      d0
[0003bc32] 206f 0010                 movea.l    16(a7),a0
[0003bc36] 4eb9 0007 68ce            jsr        strchr
[0003bc3c] 2008                      move.l     a0,d0
[0003bc3e] 6604                      bne.s      edit_key_83
[0003bc40] 7001                      moveq.l    #1,d0
[0003bc42] 6002                      bra.s      edit_key_82
edit_key_83:
[0003bc44] 4240                      clr.w      d0
edit_key_82:
[0003bc46] 4a40                      tst.w      d0
[0003bc48] 66ac                      bne.s      edit_key_84
edit_key_78:
[0003bc4a] 23d2 000c 8280            move.l     (a2),$000C8280
[0003bc50] 6000 019a                 bra        edit_key_73
edit_key_76:
[0003bc54] 7001                      moveq.l    #1,d0
[0003bc56] d0af 0234                 add.l      564(a7),d0
[0003bc5a] 23c0 000c 8280            move.l     d0,$000C8280
[0003bc60] 6000 018a                 bra        edit_key_73
edit_key_74:
[0003bc64] 43ef 023c                 lea.l      572(a7),a1
[0003bc68] 303c 00e9                 move.w     #$00E9,d0
[0003bc6c] 204b                      movea.l    a3,a0
[0003bc6e] 4e95                      jsr        (a5)
[0003bc70] 7001                      moveq.l    #1,d0
[0003bc72] d0af 0238                 add.l      568(a7),d0
[0003bc76] b0af 023c                 cmp.l      572(a7),d0
[0003bc7a] 6c00 05dc                 bge        edit_key_20
[0003bc7e] 23ef 0238 000c 8274       move.l     568(a7),subdel
[0003bc86] 23c0 000c 827c            move.l     d0,$000C827C
edit_key_97:
[0003bc8c] 23ef 0230 000c 8278       move.l     560(a7),$000C8278
[0003bc94] 42b9 000c 8280            clr.l      $000C8280
[0003bc9a] 6000 0150                 bra        edit_key_73
edit_key_9:
[0003bc9e] 43ef 021c                 lea.l      540(a7),a1
[0003bca2] 303c 00e3                 move.w     #$00E3,d0
[0003bca6] 204b                      movea.l    a3,a0
[0003bca8] 4e95                      jsr        (a5)
[0003bcaa] 202f 021c                 move.l     540(a7),d0
[0003bcae] 6a00 fe80                 bpl        edit_key_85
[0003bcb2] 43ef 0238                 lea.l      568(a7),a1
[0003bcb6] 204b                      movea.l    a3,a0
[0003bcb8] 303c 00d8                 move.w     #$00D8,d0
[0003bcbc] 4e95                      jsr        (a5)
[0003bcbe] 43ef 0234                 lea.l      564(a7),a1
[0003bcc2] 303c 00e7                 move.w     #$00E7,d0
[0003bcc6] 204b                      movea.l    a3,a0
[0003bcc8] 4e95                      jsr        (a5)
[0003bcca] 43ef 0230                 lea.l      560(a7),a1
[0003bcce] 303c 00e8                 move.w     #$00E8,d0
[0003bcd2] 204b                      movea.l    a3,a0
[0003bcd4] 4e95                      jsr        (a5)
[0003bcd6] 202f 0234                 move.l     564(a7),d0
[0003bcda] 6f00 00dc                 ble        edit_key_86
[0003bcde] 222f 0238                 move.l     568(a7),d1
[0003bce2] 23c1 000c 827c            move.l     d1,$000C827C
[0003bce8] 23c1 000c 8274            move.l     d1,subdel
[0003bcee] 23c0 000c 8280            move.l     d0,$000C8280
[0003bcf4] 322f 024c                 move.w     588(a7),d1
[0003bcf8] c27c 0300                 and.w      #$0300,d1
[0003bcfc] 670a                      beq.s      edit_key_87
[0003bcfe] 42b9 000c 8278            clr.l      $000C8278
[0003bd04] 6000 00e6                 bra        edit_key_73
edit_key_87:
[0003bd08] 302f 024c                 move.w     588(a7),d0
[0003bd0c] c07c 0400                 and.w      #$0400,d0
[0003bd10] 6700 0098                 beq        edit_key_88
[0003bd14] 43ef 0010                 lea.l      16(a7),a1
[0003bd18] 204b                      movea.l    a3,a0
[0003bd1a] 303c 0107                 move.w     #$0107,d0
[0003bd1e] 4e95                      jsr        (a5)
[0003bd20] 2eaf 0238                 move.l     568(a7),(a7)
[0003bd24] 43d7                      lea.l      (a7),a1
[0003bd26] 303c 00ca                 move.w     #$00CA,d0
[0003bd2a] 204b                      movea.l    a3,a0
[0003bd2c] 4e95                      jsr        (a5)
[0003bd2e] 70ff                      moveq.l    #-1,d0
[0003bd30] d0af 0234                 add.l      564(a7),d0
[0003bd34] 2480                      move.l     d0,(a2)
[0003bd36] 206f 0008                 movea.l    8(a7),a0
[0003bd3a] 1030 0800                 move.b     0(a0,d0.l),d0
[0003bd3e] 4880                      ext.w      d0
[0003bd40] 206f 0010                 movea.l    16(a7),a0
[0003bd44] 4eb9 0007 68ce            jsr        strchr
[0003bd4a] 2f48 000c                 move.l     a0,12(a7)
[0003bd4e] 6002                      bra.s      edit_key_89
edit_key_96:
[0003bd50] 5392                      subq.l     #1,(a2)
edit_key_89:
[0003bd52] 2012                      move.l     (a2),d0
[0003bd54] 6b4a                      bmi.s      edit_key_90
[0003bd56] 222f 000c                 move.l     12(a7),d1
[0003bd5a] 6720                      beq.s      edit_key_91
[0003bd5c] 206f 0008                 movea.l    8(a7),a0
[0003bd60] 1030 0800                 move.b     0(a0,d0.l),d0
[0003bd64] 4880                      ext.w      d0
[0003bd66] 206f 0010                 movea.l    16(a7),a0
[0003bd6a] 4eb9 0007 68ce            jsr        strchr
[0003bd70] 2008                      move.l     a0,d0
[0003bd72] 6704                      beq.s      edit_key_92
[0003bd74] 7001                      moveq.l    #1,d0
[0003bd76] 6002                      bra.s      edit_key_93
edit_key_92:
[0003bd78] 4240                      clr.w      d0
edit_key_93:
[0003bd7a] 6020                      bra.s      edit_key_94
edit_key_91:
[0003bd7c] 2212                      move.l     (a2),d1
[0003bd7e] 206f 0008                 movea.l    8(a7),a0
[0003bd82] 1030 1800                 move.b     0(a0,d1.l),d0
[0003bd86] 4880                      ext.w      d0
[0003bd88] 206f 0010                 movea.l    16(a7),a0
[0003bd8c] 4eb9 0007 68ce            jsr        strchr
[0003bd92] 2008                      move.l     a0,d0
[0003bd94] 6604                      bne.s      edit_key_95
[0003bd96] 7001                      moveq.l    #1,d0
[0003bd98] 6002                      bra.s      edit_key_94
edit_key_95:
[0003bd9a] 4240                      clr.w      d0
edit_key_94:
[0003bd9c] 4a40                      tst.w      d0
[0003bd9e] 66b0                      bne.s      edit_key_96
edit_key_90:
[0003bda0] 5292                      addq.l     #1,(a2)
[0003bda2] 23d2 000c 8278            move.l     (a2),$000C8278
[0003bda8] 6042                      bra.s      edit_key_73
edit_key_88:
[0003bdaa] 70ff                      moveq.l    #-1,d0
[0003bdac] d0af 0234                 add.l      564(a7),d0
[0003bdb0] 23c0 000c 8278            move.l     d0,$000C8278
[0003bdb6] 6034                      bra.s      edit_key_73
edit_key_86:
[0003bdb8] 202f 0238                 move.l     568(a7),d0
[0003bdbc] 6f00 049a                 ble        edit_key_20
[0003bdc0] 93c9                      suba.l     a1,a1
[0003bdc2] 204b                      movea.l    a3,a0
[0003bdc4] 700b                      moveq.l    #11,d0
[0003bdc6] 4e95                      jsr        (a5)
[0003bdc8] 43ef 0230                 lea.l      560(a7),a1
[0003bdcc] 303c 00e8                 move.w     #$00E8,d0
[0003bdd0] 204b                      movea.l    a3,a0
[0003bdd2] 4e95                      jsr        (a5)
[0003bdd4] 70ff                      moveq.l    #-1,d0
[0003bdd6] d0af 0238                 add.l      568(a7),d0
[0003bdda] 23c0 000c 8274            move.l     d0,subdel
[0003bde0] 23ef 0238 000c 827c       move.l     568(a7),$000C827C
[0003bde8] 6000 fea2                 bra        edit_key_97
edit_key_73:
[0003bdec] 43f9 000c 8274            lea.l      subdel,a1
[0003bdf2] 303c 00ea                 move.w     #$00EA,d0
[0003bdf6] 204b                      movea.l    a3,a0
[0003bdf8] 4e95                      jsr        (a5)
[0003bdfa] 6000 045c                 bra        edit_key_20
edit_key_11:
[0003bdfe] 43ef 021c                 lea.l      540(a7),a1
[0003be02] 303c 00e3                 move.w     #$00E3,d0
[0003be06] 204b                      movea.l    a3,a0
[0003be08] 4e95                      jsr        (a5)
[0003be0a] 202f 021c                 move.l     540(a7),d0
[0003be0e] 6b30                      bmi.s      edit_key_98
[0003be10] 23c0 000c 825c            move.l     d0,subcr
[0003be16] 23ef 0220 000c 8260       move.l     544(a7),$000C8260
[0003be1e] 23ef 0224 000c 8264       move.l     548(a7),$000C8264
[0003be26] 23ef 0228 000c 8268       move.l     552(a7),$000C8268
[0003be2e] 43f9 000c 825c            lea.l      subcr,a1
[0003be34] 204b                      movea.l    a3,a0
[0003be36] 303c 00ea                 move.w     #$00EA,d0
[0003be3a] 4e95                      jsr        (a5)
[0003be3c] 6000 041a                 bra        edit_key_20
edit_key_98:
[0003be40] 43ef 0238                 lea.l      568(a7),a1
[0003be44] 303c 00d8                 move.w     #$00D8,d0
[0003be48] 204b                      movea.l    a3,a0
[0003be4a] 4e95                      jsr        (a5)
[0003be4c] 43ef 0234                 lea.l      564(a7),a1
[0003be50] 303c 00e7                 move.w     #$00E7,d0
[0003be54] 204b                      movea.l    a3,a0
[0003be56] 4e95                      jsr        (a5)
[0003be58] 202f 0238                 move.l     568(a7),d0
[0003be5c] 23c0 000c 8264            move.l     d0,$000C8264
[0003be62] 23c0 000c 825c            move.l     d0,subcr
[0003be68] 222f 0234                 move.l     564(a7),d1
[0003be6c] 23c1 000c 8268            move.l     d1,$000C8268
[0003be72] 23c1 000c 8260            move.l     d1,$000C8260
[0003be78] 43f9 000c 825c            lea.l      subcr,a1
[0003be7e] 303c 00ea                 move.w     #$00EA,d0
[0003be82] 204b                      movea.l    a3,a0
[0003be84] 4e95                      jsr        (a5)
[0003be86] 2eaf 0238                 move.l     568(a7),(a7)
[0003be8a] 43d7                      lea.l      (a7),a1
[0003be8c] 303c 00ca                 move.w     #$00CA,d0
[0003be90] 204b                      movea.l    a3,a0
[0003be92] 4e95                      jsr        (a5)
[0003be94] 4292                      clr.l      (a2)
[0003be96] 6010                      bra.s      edit_key_99
edit_key_101:
[0003be98] 2012                      move.l     (a2),d0
[0003be9a] 206f 0008                 movea.l    8(a7),a0
[0003be9e] 0c30 0009 0800            cmpi.b     #$09,0(a0,d0.l)
[0003bea4] 660a                      bne.s      edit_key_100
[0003bea6] 5292                      addq.l     #1,(a2)
edit_key_99:
[0003bea8] 2012                      move.l     (a2),d0
[0003beaa] b0af 0004                 cmp.l      4(a7),d0
[0003beae] 6de8                      blt.s      edit_key_101
edit_key_100:
[0003beb0] 2012                      move.l     (a2),d0
[0003beb2] 6f00 03a4                 ble        edit_key_20
[0003beb6] b0af 0004                 cmp.l      4(a7),d0
[0003beba] 6e00 039c                 bgt        edit_key_20
[0003bebe] 2079 000c 8258            movea.l    $000C8258,a0
[0003bec4] 2250                      movea.l    (a0),a1
[0003bec6] 12bc 0009                 move.b     #$09,(a1)
[0003beca] 7001                      moveq.l    #1,d0
[0003becc] d0af 0238                 add.l      568(a7),d0
[0003bed0] 23c0 000c 824c            move.l     d0,$000C824C
[0003bed6] 23c0 000c 8244            move.l     d0,subins
[0003bedc] 7a00                      moveq.l    #0,d5
[0003bede] 601e                      bra.s      edit_key_102
edit_key_103:
[0003bee0] 23c5 000c 8250            move.l     d5,$000C8250
[0003bee6] 23c5 000c 8248            move.l     d5,$000C8248
[0003beec] 43f9 000c 8244            lea.l      subins,a1
[0003bef2] 303c 00ea                 move.w     #$00EA,d0
[0003bef6] 204b                      movea.l    a3,a0
[0003bef8] 4e95                      jsr        (a5)
[0003befa] 5285                      addq.l     #1,d5
[0003befc] 5392                      subq.l     #1,(a2)
edit_key_102:
[0003befe] 2012                      move.l     (a2),d0
[0003bf00] 6ede                      bgt.s      edit_key_103
[0003bf02] 6000 0354                 bra        edit_key_20
edit_key_10:
[0003bf06] 43ef 021c                 lea.l      540(a7),a1
[0003bf0a] 303c 00e3                 move.w     #$00E3,d0
[0003bf0e] 204b                      movea.l    a3,a0
[0003bf10] 4e95                      jsr        (a5)
[0003bf12] 2079 000c 8258            movea.l    $000C8258,a0
[0003bf18] 2250                      movea.l    (a0),a1
[0003bf1a] 12af 024d                 move.b     589(a7),(a1)
[0003bf1e] 202f 021c                 move.l     540(a7),d0
[0003bf22] 6b20                      bmi.s      edit_key_104
[0003bf24] 23c0 000c 8244            move.l     d0,subins
[0003bf2a] 23ef 0220 000c 8248       move.l     544(a7),$000C8248
[0003bf32] 23ef 0224 000c 824c       move.l     548(a7),$000C824C
[0003bf3a] 23ef 0228 000c 8250       move.l     552(a7),$000C8250
[0003bf42] 6038                      bra.s      edit_key_105
edit_key_104:
[0003bf44] 43ef 0238                 lea.l      568(a7),a1
[0003bf48] 303c 00d8                 move.w     #$00D8,d0
[0003bf4c] 204b                      movea.l    a3,a0
[0003bf4e] 4e95                      jsr        (a5)
[0003bf50] 43ef 0234                 lea.l      564(a7),a1
[0003bf54] 303c 00e7                 move.w     #$00E7,d0
[0003bf58] 204b                      movea.l    a3,a0
[0003bf5a] 4e95                      jsr        (a5)
[0003bf5c] 202f 0238                 move.l     568(a7),d0
[0003bf60] 23c0 000c 824c            move.l     d0,$000C824C
[0003bf66] 23c0 000c 8244            move.l     d0,subins
[0003bf6c] 222f 0234                 move.l     564(a7),d1
[0003bf70] 23c1 000c 8250            move.l     d1,$000C8250
[0003bf76] 23c1 000c 8248            move.l     d1,$000C8248
edit_key_105:
[0003bf7c] 43f9 000c 8244            lea.l      subins,a1
[0003bf82] 303c 00ea                 move.w     #$00EA,d0
[0003bf86] 204b                      movea.l    a3,a0
[0003bf88] 4e95                      jsr        (a5)
[0003bf8a] 6000 02cc                 bra        edit_key_20
edit_key_19:
[0003bf8e] 302f 024c                 move.w     588(a7),d0
[0003bf92] c07c 0400                 and.w      #$0400,d0
[0003bf96] 670c                      beq.s      edit_key_18
[0003bf98] 204b                      movea.l    a3,a0
[0003bf9a] 4eb9 0003 c51c            jsr        cutline
[0003bfa0] 6000 02b6                 bra        edit_key_20
edit_key_18:
[0003bfa4] 302f 024c                 move.w     588(a7),d0
[0003bfa8] c07c 0400                 and.w      #$0400,d0
[0003bfac] 670c                      beq.s      edit_key_16
[0003bfae] 204b                      movea.l    a3,a0
[0003bfb0] 4eb9 0003 c4bc            jsr        cut
[0003bfb6] 6000 02a0                 bra        edit_key_20
edit_key_16:
[0003bfba] 302f 024c                 move.w     588(a7),d0
[0003bfbe] c07c 0400                 and.w      #$0400,d0
[0003bfc2] 670c                      beq.s      edit_key_17
[0003bfc4] 204b                      movea.l    a3,a0
[0003bfc6] 4eb9 0003 c358            jsr        copy
[0003bfcc] 6000 028a                 bra        edit_key_20
edit_key_17:
[0003bfd0] 302f 024c                 move.w     588(a7),d0
[0003bfd4] c07c 0400                 and.w      #$0400,d0
[0003bfd8] 670c                      beq.s      edit_key_14
[0003bfda] 204b                      movea.l    a3,a0
[0003bfdc] 4eb9 0003 c428            jsr        paste
[0003bfe2] 6000 0274                 bra        edit_key_20
edit_key_14:
[0003bfe6] 1c2f 024d                 move.b     589(a7),d6
[0003bfea] 4886                      ext.w      d6
[0003bfec] dc7c fff0                 add.w      #$FFF0,d6
[0003bff0] 302f 024c                 move.w     588(a7),d0
[0003bff4] c07c 0400                 and.w      #$0400,d0
[0003bff8] 6704                      beq.s      edit_key_106
[0003bffa] dc7c 0014                 add.w      #$0014,d6
edit_key_106:
[0003bffe] 302f 024c                 move.w     588(a7),d0
[0003c002] c07c 0300                 and.w      #$0300,d0
[0003c006] 6704                      beq.s      edit_key_107
[0003c008] dc7c 000a                 add.w      #$000A,d6
edit_key_107:
[0003c00c] 3006                      move.w     d6,d0
[0003c00e] 48c0                      ext.l      d0
[0003c010] e588                      lsl.l      #2,d0
[0003c012] 206f 0240                 movea.l    576(a7),a0
[0003c016] d1c0                      adda.l     d0,a0
[0003c018] 2228 00d2                 move.l     210(a0),d1
[0003c01c] 673c                      beq.s      edit_key_3
[0003c01e] 93c9                      suba.l     a1,a1
[0003c020] 204b                      movea.l    a3,a0
[0003c022] 303c 00e2                 move.w     #$00E2,d0
[0003c026] 4eb9 0003 8e52            jsr        Auo_editor
[0003c02c] 3006                      move.w     d6,d0
[0003c02e] 48c0                      ext.l      d0
[0003c030] e588                      lsl.l      #2,d0
[0003c032] 206f 0240                 movea.l    576(a7),a0
[0003c036] d1c0                      adda.l     d0,a0
[0003c038] 2268 00d2                 movea.l    210(a0),a1
[0003c03c] 5449                      addq.w     #2,a1
[0003c03e] 206f 024e                 movea.l    590(a7),a0
[0003c042] 4eb9 0003 cf14            jsr        put_string
[0003c048] 93c9                      suba.l     a1,a1
[0003c04a] 303c 00db                 move.w     #$00DB,d0
[0003c04e] 204b                      movea.l    a3,a0
[0003c050] 4eb9 0003 8e52            jsr        Auo_editor
[0003c056] 6000 0200                 bra        edit_key_20
edit_key_3:
[0003c05a] 76fe                      moveq.l    #-2,d3
[0003c05c] 6000 01fa                 bra        edit_key_20
edit_key_2:
[0003c060] 0c2f 0020 024d            cmpi.b     #$20,589(a7)
[0003c066] 6500 01f0                 bcs        edit_key_20
[0003c06a] 43ef 021c                 lea.l      540(a7),a1
[0003c06e] 303c 00e3                 move.w     #$00E3,d0
[0003c072] 204b                      movea.l    a3,a0
[0003c074] 4e95                      jsr        (a5)
[0003c076] 3c2f 024c                 move.w     588(a7),d6
[0003c07a] cc7c 00ff                 and.w      #$00FF,d6
[0003c07e] 3006                      move.w     d6,d0
[0003c080] 2079 000c 8258            movea.l    $000C8258,a0
[0003c086] 2250                      movea.l    (a0),a1
[0003c088] 1280                      move.b     d0,(a1)
[0003c08a] 222f 021c                 move.l     540(a7),d1
[0003c08e] 6b20                      bmi.s      edit_key_108
[0003c090] 23c1 000c 8244            move.l     d1,subins
[0003c096] 23ef 0220 000c 8248       move.l     544(a7),$000C8248
[0003c09e] 23ef 0224 000c 824c       move.l     548(a7),$000C824C
[0003c0a6] 23ef 0228 000c 8250       move.l     552(a7),$000C8250
[0003c0ae] 6038                      bra.s      edit_key_109
edit_key_108:
[0003c0b0] 43ef 0238                 lea.l      568(a7),a1
[0003c0b4] 303c 00d8                 move.w     #$00D8,d0
[0003c0b8] 204b                      movea.l    a3,a0
[0003c0ba] 4e95                      jsr        (a5)
[0003c0bc] 43ef 0234                 lea.l      564(a7),a1
[0003c0c0] 303c 00e7                 move.w     #$00E7,d0
[0003c0c4] 204b                      movea.l    a3,a0
[0003c0c6] 4e95                      jsr        (a5)
[0003c0c8] 202f 0238                 move.l     568(a7),d0
[0003c0cc] 23c0 000c 824c            move.l     d0,$000C824C
[0003c0d2] 23c0 000c 8244            move.l     d0,subins
[0003c0d8] 222f 0234                 move.l     564(a7),d1
[0003c0dc] 23c1 000c 8250            move.l     d1,$000C8250
[0003c0e2] 23c1 000c 8248            move.l     d1,$000C8248
edit_key_109:
[0003c0e8] 43f9 000c 8244            lea.l      subins,a1
[0003c0ee] 303c 00ea                 move.w     #$00EA,d0
[0003c0f2] 204b                      movea.l    a3,a0
[0003c0f4] 4e95                      jsr        (a5)
[0003c0f6] bc7c 005d                 cmp.w      #$005D,d6
[0003c0fa] 670e                      beq.s      edit_key_110
[0003c0fc] bc7c 007d                 cmp.w      #$007D,d6
[0003c100] 6708                      beq.s      edit_key_110
[0003c102] bc7c 0029                 cmp.w      #$0029,d6
[0003c106] 6600 0150                 bne        edit_key_20
edit_key_110:
[0003c10a] 7e01                      moveq.l    #1,d7
[0003c10c] 4244                      clr.w      d4
[0003c10e] 7aff                      moveq.l    #-1,d5
[0003c110] daaf 0234                 add.l      564(a7),d5
[0003c114] 2eaf 0238                 move.l     568(a7),(a7)
[0003c118] 6000 00bc                 bra        edit_key_111
edit_key_131:
[0003c11c] 43d7                      lea.l      (a7),a1
[0003c11e] 303c 00ca                 move.w     #$00CA,d0
[0003c122] 204b                      movea.l    a3,a0
[0003c124] 4e95                      jsr        (a5)
[0003c126] 202f 0004                 move.l     4(a7),d0
[0003c12a] 206f 0008                 movea.l    8(a7),a0
[0003c12e] 4230 0800                 clr.b      0(a0,d0.l)
[0003c132] baaf 0004                 cmp.l      4(a7),d5
[0003c136] 6c04                      bge.s      edit_key_112
[0003c138] 2005                      move.l     d5,d0
[0003c13a] 6004                      bra.s      edit_key_113
edit_key_112:
[0003c13c] 202f 0004                 move.l     4(a7),d0
edit_key_113:
[0003c140] 2480                      move.l     d0,(a2)
[0003c142] 6000 007c                 bra.w      edit_key_114
edit_key_128:
[0003c146] 2012                      move.l     (a2),d0
[0003c148] 206f 0008                 movea.l    8(a7),a0
[0003c14c] 1230 0800                 move.b     0(a0,d0.l),d1
[0003c150] 4881                      ext.w      d1
[0003c152] b27c 005d                 cmp.w      #$005D,d1
[0003c156] 672e                      beq.s      edit_key_115
[0003c158] 6e12                      bgt.s      edit_key_116
[0003c15a] 927c 0028                 sub.w      #$0028,d1
[0003c15e] 6744                      beq.s      edit_key_117
[0003c160] 5341                      subq.w     #1,d1
[0003c162] 6748                      beq.s      edit_key_118
[0003c164] 927c 0032                 sub.w      #$0032,d1
[0003c168] 670e                      beq.s      edit_key_119
[0003c16a] 604a                      bra.s      edit_key_120
edit_key_116:
[0003c16c] 927c 007b                 sub.w      #$007B,d1
[0003c170] 6722                      beq.s      edit_key_121
[0003c172] 5541                      subq.w     #2,d1
[0003c174] 6726                      beq.s      edit_key_122
[0003c176] 603e                      bra.s      edit_key_120
edit_key_119:
[0003c178] bc7c 005d                 cmp.w      #$005D,d6
[0003c17c] 6638                      bne.s      edit_key_120
edit_key_123:
[0003c17e] 4a44                      tst.w      d4
[0003c180] 6634                      bne.s      edit_key_120
[0003c182] 5347                      subq.w     #1,d7
[0003c184] 6030                      bra.s      edit_key_120
edit_key_115:
[0003c186] bc7c 005d                 cmp.w      #$005D,d6
[0003c18a] 662a                      bne.s      edit_key_120
edit_key_124:
[0003c18c] 4a44                      tst.w      d4
[0003c18e] 6626                      bne.s      edit_key_120
edit_key_125:
[0003c190] 5247                      addq.w     #1,d7
[0003c192] 6022                      bra.s      edit_key_120
edit_key_121:
[0003c194] bc7c 007d                 cmp.w      #$007D,d6
[0003c198] 661c                      bne.s      edit_key_120
[0003c19a] 60e2                      bra.s      edit_key_123
edit_key_122:
[0003c19c] bc7c 007d                 cmp.w      #$007D,d6
[0003c1a0] 6614                      bne.s      edit_key_120
[0003c1a2] 60e8                      bra.s      edit_key_124
edit_key_117:
[0003c1a4] bc7c 0029                 cmp.w      #$0029,d6
[0003c1a8] 660c                      bne.s      edit_key_120
[0003c1aa] 60d2                      bra.s      edit_key_123
edit_key_118:
[0003c1ac] bc7c 0029                 cmp.w      #$0029,d6
[0003c1b0] 6604                      bne.s      edit_key_120
[0003c1b2] 4a44                      tst.w      d4
[0003c1b4] 67da                      beq.s      edit_key_125
edit_key_120:
[0003c1b6] 4a47                      tst.w      d7
[0003c1b8] 6604                      bne.s      edit_key_126
[0003c1ba] 4a44                      tst.w      d4
[0003c1bc] 6708                      beq.s      edit_key_127
edit_key_126:
[0003c1be] 5392                      subq.l     #1,(a2)
edit_key_114:
[0003c1c0] 2012                      move.l     (a2),d0
[0003c1c2] 6a00 ff82                 bpl.w      edit_key_128
edit_key_127:
[0003c1c6] 2a3c 0000 03e8            move.l     #$000003E8,d5
[0003c1cc] 4a47                      tst.w      d7
[0003c1ce] 6604                      bne.s      edit_key_129
[0003c1d0] 4a44                      tst.w      d4
[0003c1d2] 6708                      beq.s      edit_key_130
edit_key_129:
[0003c1d4] 5397                      subq.l     #1,(a7)
edit_key_111:
[0003c1d6] 2017                      move.l     (a7),d0
[0003c1d8] 6a00 ff42                 bpl        edit_key_131
edit_key_130:
[0003c1dc] 4a47                      tst.w      d7
[0003c1de] 6668                      bne.s      edit_key_132
[0003c1e0] 4a44                      tst.w      d4
[0003c1e2] 6664                      bne.s      edit_key_132
[0003c1e4] 202f 0238                 move.l     568(a7),d0
[0003c1e8] b097                      cmp.l      (a7),d0
[0003c1ea] 6612                      bne.s      edit_key_133
[0003c1ec] 222f 0234                 move.l     564(a7),d1
[0003c1f0] 206f 0008                 movea.l    8(a7),a0
[0003c1f4] 1f70 1801 0214            move.b     1(a0,d1.l),532(a7)
[0003c1fa] 4230 1801                 clr.b      1(a0,d1.l)
edit_key_133:
[0003c1fe] 701e                      moveq.l    #30,d0
[0003c200] 2f00                      move.l     d0,-(a7)
[0003c202] 2212                      move.l     (a2),d1
[0003c204] 6a04                      bpl.s      edit_key_134
[0003c206] 7400                      moveq.l    #0,d2
[0003c208] 6002                      bra.s      edit_key_135
edit_key_134:
[0003c20a] 2412                      move.l     (a2),d2
edit_key_135:
[0003c20c] 226f 000c                 movea.l    12(a7),a1
[0003c210] d3c2                      adda.l     d2,a1
[0003c212] 41ef 0018                 lea.l      24(a7),a0
[0003c216] 201f                      move.l     (a7)+,d0
[0003c218] 4eb9 0007 6a1a            jsr        strncpy
[0003c21e] 422f 0032                 clr.b      50(a7)
[0003c222] 202f 0238                 move.l     568(a7),d0
[0003c226] b097                      cmp.l      (a7),d0
[0003c228] 660e                      bne.s      edit_key_136
[0003c22a] 222f 0234                 move.l     564(a7),d1
[0003c22e] 206f 0008                 movea.l    8(a7),a0
[0003c232] 11af 0214 1801            move.b     532(a7),1(a0,d1.l)
edit_key_136:
[0003c238] 43ef 0014                 lea.l      20(a7),a1
[0003c23c] 206f 024e                 movea.l    590(a7),a0
[0003c240] 4eb9 0003 ed16            jsr        info_string
[0003c246] 6010                      bra.s      edit_key_20
edit_key_132:
[0003c248] 43f9 000c 85c7            lea.l      $000C85C7,a1
[0003c24e] 206f 024e                 movea.l    590(a7),a0
[0003c252] 4eb9 0003 ed16            jsr        info_string
edit_key_20:
[0003c258] b67c ffff                 cmp.w      #$FFFF,d3
[0003c25c] 6d18                      blt.s      edit_key_137
[0003c25e] 536f 0216                 subq.w     #1,534(a7)
[0003c262] 6712                      beq.s      edit_key_137
[0003c264] 41ef 024c                 lea.l      588(a7),a0
[0003c268] 4eb9 0003 c2b8            jsr        next_key
edit_key_1:
[0003c26e] 102f 024d                 move.b     589(a7),d0
[0003c272] 6600 f1f6                 bne        edit_key_138
edit_key_137:
[0003c276] 43ef 021c                 lea.l      540(a7),a1
[0003c27a] 303c 00e3                 move.w     #$00E3,d0
[0003c27e] 204b                      movea.l    a3,a0
[0003c280] 4e95                      jsr        (a5)
[0003c282] 202f 021c                 move.l     540(a7),d0
[0003c286] 6a0a                      bpl.s      edit_key_139
[0003c288] 93c9                      suba.l     a1,a1
[0003c28a] 204b                      movea.l    a3,a0
[0003c28c] 303c 00db                 move.w     #$00DB,d0
[0003c290] 4e95                      jsr        (a5)
edit_key_139:
[0003c292] 93c9                      suba.l     a1,a1
[0003c294] 7005                      moveq.l    #5,d0
[0003c296] 204b                      movea.l    a3,a0
[0003c298] 4e95                      jsr        (a5)
[0003c29a] 93c9                      suba.l     a1,a1
[0003c29c] 303c 00d6                 move.w     #$00D6,d0
[0003c2a0] 204b                      movea.l    a3,a0
[0003c2a2] 4e95                      jsr        (a5)
[0003c2a4] 206f 024e                 movea.l    590(a7),a0
[0003c2a8] 6100 f124                 bsr        dirty
[0003c2ac] 3003                      move.w     d3,d0
[0003c2ae] 4fef 0252                 lea.l      594(a7),a7
[0003c2b2] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[0003c2b6] 4e75                      rts

next_key:
[0003c2b8] 2f0a                      move.l     a2,-(a7)
[0003c2ba] 2f0b                      move.l     a3,-(a7)
[0003c2bc] 594f                      subq.w     #4,a7
[0003c2be] 2648                      movea.l    a0,a3
[0003c2c0] 45ef 0002                 lea.l      2(a7),a2
[0003c2c4] 2f39 000d 99d6            move.l     _globl,-(a7)
[0003c2ca] 4852                      pea.l      (a2)
[0003c2cc] 2f0b                      move.l     a3,-(a7)
[0003c2ce] 486f 000c                 pea.l      12(a7)
[0003c2d2] 4852                      pea.l      (a2)
[0003c2d4] 4852                      pea.l      (a2)
[0003c2d6] 7005                      moveq.l    #5,d0
[0003c2d8] 2f00                      move.l     d0,-(a7)
[0003c2da] 4267                      clr.w      -(a7)
[0003c2dc] 4267                      clr.w      -(a7)
[0003c2de] 4267                      clr.w      -(a7)
[0003c2e0] 4267                      clr.w      -(a7)
[0003c2e2] 4267                      clr.w      -(a7)
[0003c2e4] 4267                      clr.w      -(a7)
[0003c2e6] 4267                      clr.w      -(a7)
[0003c2e8] 4267                      clr.w      -(a7)
[0003c2ea] 4267                      clr.w      -(a7)
[0003c2ec] 4267                      clr.w      -(a7)
[0003c2ee] 4267                      clr.w      -(a7)
[0003c2f0] 224a                      movea.l    a2,a1
[0003c2f2] 91c8                      suba.l     a0,a0
[0003c2f4] 4242                      clr.w      d2
[0003c2f6] 4241                      clr.w      d1
[0003c2f8] 7021                      moveq.l    #33,d0
[0003c2fa] 4eb9 0006 af70            jsr        mt_evnt_multi
[0003c300] 4fef 0032                 lea.l      50(a7),a7
[0003c304] c07c 0001                 and.w      #$0001,d0
[0003c308] 670e                      beq.s      next_key_1
[0003c30a] 3217                      move.w     (a7),d1
[0003c30c] 3013                      move.w     (a3),d0
[0003c30e] 4eb9 0004 1e3e            jsr        nkc_gemks2n
[0003c314] 3680                      move.w     d0,(a3)
[0003c316] 6002                      bra.s      next_key_2
next_key_1:
[0003c318] 4253                      clr.w      (a3)
next_key_2:
[0003c31a] 584f                      addq.w     #4,a7
[0003c31c] 265f                      movea.l    (a7)+,a3
[0003c31e] 245f                      movea.l    (a7)+,a2
[0003c320] 4e75                      rts

paste_free:
[0003c322] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0003c326] 45f9 000c 8290            lea.l      Apaste_text,a2
[0003c32c] 262a fffc                 move.l     -4(a2),d3
[0003c330] 2652                      movea.l    (a2),a3
[0003c332] 6008                      bra.s      paste_free_1
paste_free_2:
[0003c334] 205b                      movea.l    (a3)+,a0
[0003c336] 4eb9 0004 7d6c            jsr        Ax_ifree
paste_free_1:
[0003c33c] 2003                      move.l     d3,d0
[0003c33e] 5383                      subq.l     #1,d3
[0003c340] 4a80                      tst.l      d0
[0003c342] 66f0                      bne.s      paste_free_2
[0003c344] 2052                      movea.l    (a2),a0
[0003c346] 4eb9 0004 7d6c            jsr        Ax_ifree
[0003c34c] 4292                      clr.l      (a2)
[0003c34e] 42aa fffc                 clr.l      -4(a2)
[0003c352] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0003c356] 4e75                      rts

copy:
[0003c358] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0003c35c] 4fef ffe0                 lea.l      -32(a7),a7
[0003c360] 2f48 001c                 move.l     a0,28(a7)
[0003c364] 2068 000c                 movea.l    12(a0),a0
[0003c368] 2668 0008                 movea.l    8(a0),a3
[0003c36c] 43d7                      lea.l      (a7),a1
[0003c36e] 303c 00e3                 move.w     #$00E3,d0
[0003c372] 206f 001c                 movea.l    28(a7),a0
[0003c376] 4e93                      jsr        (a3)
[0003c378] 2017                      move.l     (a7),d0
[0003c37a] 6b00 00a0                 bmi        copy_1
[0003c37e] 6100 ffa2                 bsr.w      paste_free
[0003c382] 262f 0008                 move.l     8(a7),d3
[0003c386] 9697                      sub.l      (a7),d3
[0003c388] 5283                      addq.l     #1,d3
[0003c38a] 2003                      move.l     d3,d0
[0003c38c] e588                      lsl.l      #2,d0
[0003c38e] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003c394] 2848                      movea.l    a0,a4
[0003c396] 200c                      move.l     a4,d0
[0003c398] 6700 0082                 beq        copy_1
[0003c39c] 23c3 000c 828c            move.l     d3,Apaste_rows
[0003c3a2] 23c0 000c 8290            move.l     d0,Apaste_text
[0003c3a8] 2203                      move.l     d3,d1
[0003c3aa] e589                      lsl.l      #2,d1
[0003c3ac] 4240                      clr.w      d0
[0003c3ae] 4eb9 0007 712e            jsr        memset
[0003c3b4] 2617                      move.l     (a7),d3
[0003c3b6] 45ef 0010                 lea.l      16(a7),a2
[0003c3ba] 6052                      bra.s      copy_2
copy_6:
[0003c3bc] 2483                      move.l     d3,(a2)
[0003c3be] 224a                      movea.l    a2,a1
[0003c3c0] 303c 00ca                 move.w     #$00CA,d0
[0003c3c4] 206f 001c                 movea.l    28(a7),a0
[0003c3c8] 4e93                      jsr        (a3)
[0003c3ca] 202a 0004                 move.l     4(a2),d0
[0003c3ce] 6f2c                      ble.s      copy_3
[0003c3d0] 7001                      moveq.l    #1,d0
[0003c3d2] d0aa 0004                 add.l      4(a2),d0
[0003c3d6] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003c3dc] 2888                      move.l     a0,(a4)
[0003c3de] 2008                      move.l     a0,d0
[0003c3e0] 6736                      beq.s      copy_4
[0003c3e2] 226a 0008                 movea.l    8(a2),a1
[0003c3e6] 202a 0004                 move.l     4(a2),d0
[0003c3ea] 4eb9 0007 6a1a            jsr        strncpy
[0003c3f0] 202a 0004                 move.l     4(a2),d0
[0003c3f4] 2054                      movea.l    (a4),a0
[0003c3f6] 4230 0800                 clr.b      0(a0,d0.l)
[0003c3fa] 600e                      bra.s      copy_5
copy_3:
[0003c3fc] 41f9 000c 85c4            lea.l      $000C85C4,a0
[0003c402] 4eb9 0004 36d6            jsr        Ast_create
[0003c408] 2888                      move.l     a0,(a4)
copy_5:
[0003c40a] 584c                      addq.w     #4,a4
[0003c40c] 5283                      addq.l     #1,d3
copy_2:
[0003c40e] b6af 0008                 cmp.l      8(a7),d3
[0003c412] 6fa8                      ble.s      copy_6
[0003c414] 4240                      clr.w      d0
[0003c416] 6006                      bra.s      copy_7
copy_4:
[0003c418] 6100 ff08                 bsr        paste_free
copy_1:
[0003c41c] 70ff                      moveq.l    #-1,d0
copy_7:
[0003c41e] 4fef 0020                 lea.l      32(a7),a7
[0003c422] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003c426] 4e75                      rts

paste:
[0003c428] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003c42c] 4fef ffd0                 lea.l      -48(a7),a7
[0003c430] 2448                      movea.l    a0,a2
[0003c432] 206a 000c                 movea.l    12(a2),a0
[0003c436] 2668 0008                 movea.l    8(a0),a3
[0003c43a] 2039 000c 828c            move.l     Apaste_rows,d0
[0003c440] 6f70                      ble.s      paste_1
[0003c442] 49ef 0018                 lea.l      24(a7),a4
[0003c446] 2979 000c 828c 0010       move.l     Apaste_rows,16(a4)
[0003c44e] 2979 000c 8290 0014       move.l     Apaste_text,20(a4)
[0003c456] 43d7                      lea.l      (a7),a1
[0003c458] 303c 00e3                 move.w     #$00E3,d0
[0003c45c] 204a                      movea.l    a2,a0
[0003c45e] 4e93                      jsr        (a3)
[0003c460] 2017                      move.l     (a7),d0
[0003c462] 6b16                      bmi.s      paste_2
[0003c464] 2880                      move.l     d0,(a4)
[0003c466] 296f 0004 0004            move.l     4(a7),4(a4)
[0003c46c] 296f 0008 0008            move.l     8(a7),8(a4)
[0003c472] 296f 000c 000c            move.l     12(a7),12(a4)
[0003c478] 602e                      bra.s      paste_3
paste_2:
[0003c47a] 43ef 0014                 lea.l      20(a7),a1
[0003c47e] 303c 00d8                 move.w     #$00D8,d0
[0003c482] 204a                      movea.l    a2,a0
[0003c484] 4e93                      jsr        (a3)
[0003c486] 43ef 0010                 lea.l      16(a7),a1
[0003c48a] 303c 00e7                 move.w     #$00E7,d0
[0003c48e] 204a                      movea.l    a2,a0
[0003c490] 4e93                      jsr        (a3)
[0003c492] 202f 0014                 move.l     20(a7),d0
[0003c496] 2940 0008                 move.l     d0,8(a4)
[0003c49a] 2880                      move.l     d0,(a4)
[0003c49c] 222f 0010                 move.l     16(a7),d1
[0003c4a0] 2941 000c                 move.l     d1,12(a4)
[0003c4a4] 2941 0004                 move.l     d1,4(a4)
paste_3:
[0003c4a8] 224c                      movea.l    a4,a1
[0003c4aa] 303c 00ea                 move.w     #$00EA,d0
[0003c4ae] 204a                      movea.l    a2,a0
[0003c4b0] 4e93                      jsr        (a3)
paste_1:
[0003c4b2] 4fef 0030                 lea.l      48(a7),a7
[0003c4b6] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003c4ba] 4e75                      rts

cut:
[0003c4bc] 2f0a                      move.l     a2,-(a7)
[0003c4be] 2f0b                      move.l     a3,-(a7)
[0003c4c0] 4fef fff0                 lea.l      -16(a7),a7
[0003c4c4] 2448                      movea.l    a0,a2
[0003c4c6] 206a 000c                 movea.l    12(a2),a0
[0003c4ca] 2668 0008                 movea.l    8(a0),a3
[0003c4ce] 43d7                      lea.l      (a7),a1
[0003c4d0] 303c 00e3                 move.w     #$00E3,d0
[0003c4d4] 204a                      movea.l    a2,a0
[0003c4d6] 4e93                      jsr        (a3)
[0003c4d8] 2017                      move.l     (a7),d0
[0003c4da] 6b36                      bmi.s      cut_1
[0003c4dc] 204a                      movea.l    a2,a0
[0003c4de] 6100 fe78                 bsr        copy
[0003c4e2] 4a40                      tst.w      d0
[0003c4e4] 662c                      bne.s      cut_1
[0003c4e6] 23d7 000c 8274            move.l     (a7),subdel
[0003c4ec] 23ef 0004 000c 8278       move.l     4(a7),$000C8278
[0003c4f4] 23ef 0008 000c 827c       move.l     8(a7),$000C827C
[0003c4fc] 23ef 000c 000c 8280       move.l     12(a7),$000C8280
[0003c504] 43f9 000c 8274            lea.l      subdel,a1
[0003c50a] 303c 00ea                 move.w     #$00EA,d0
[0003c50e] 204a                      movea.l    a2,a0
[0003c510] 4e93                      jsr        (a3)
cut_1:
[0003c512] 4fef 0010                 lea.l      16(a7),a7
[0003c516] 265f                      movea.l    (a7)+,a3
[0003c518] 245f                      movea.l    (a7)+,a2
[0003c51a] 4e75                      rts

cutline:
[0003c51c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0003c520] 4fef ffec                 lea.l      -20(a7),a7
[0003c524] 2448                      movea.l    a0,a2
[0003c526] 206a 000c                 movea.l    12(a2),a0
[0003c52a] 2668 0008                 movea.l    8(a0),a3
[0003c52e] 93c9                      suba.l     a1,a1
[0003c530] 303c 00e2                 move.w     #$00E2,d0
[0003c534] 204a                      movea.l    a2,a0
[0003c536] 4e93                      jsr        (a3)
[0003c538] 43ef 000c                 lea.l      12(a7),a1
[0003c53c] 303c 00d8                 move.w     #$00D8,d0
[0003c540] 204a                      movea.l    a2,a0
[0003c542] 4e93                      jsr        (a3)
[0003c544] 43ef 0010                 lea.l      16(a7),a1
[0003c548] 303c 00e9                 move.w     #$00E9,d0
[0003c54c] 204a                      movea.l    a2,a0
[0003c54e] 4e93                      jsr        (a3)
[0003c550] 6100 fdd0                 bsr        paste_free
[0003c554] 7001                      moveq.l    #1,d0
[0003c556] d0af 000c                 add.l      12(a7),d0
[0003c55a] b0af 0010                 cmp.l      16(a7),d0
[0003c55e] 6c04                      bge.s      cutline_1
[0003c560] 7602                      moveq.l    #2,d3
[0003c562] 6002                      bra.s      cutline_2
cutline_1:
[0003c564] 7601                      moveq.l    #1,d3
cutline_2:
[0003c566] 2003                      move.l     d3,d0
[0003c568] e588                      lsl.l      #2,d0
[0003c56a] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003c570] 2848                      movea.l    a0,a4
[0003c572] 200c                      move.l     a4,d0
[0003c574] 6700 00c0                 beq        cutline_3
[0003c578] 23c3 000c 828c            move.l     d3,Apaste_rows
[0003c57e] 23c0 000c 8290            move.l     d0,Apaste_text
[0003c584] 2203                      move.l     d3,d1
[0003c586] e589                      lsl.l      #2,d1
[0003c588] 4240                      clr.w      d0
[0003c58a] 4eb9 0007 712e            jsr        memset
[0003c590] 2eaf 000c                 move.l     12(a7),(a7)
[0003c594] 43d7                      lea.l      (a7),a1
[0003c596] 303c 00ca                 move.w     #$00CA,d0
[0003c59a] 204a                      movea.l    a2,a0
[0003c59c] 4e93                      jsr        (a3)
[0003c59e] 202f 0004                 move.l     4(a7),d0
[0003c5a2] 6f28                      ble.s      cutline_4
[0003c5a4] 7001                      moveq.l    #1,d0
[0003c5a6] d0af 0004                 add.l      4(a7),d0
[0003c5aa] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003c5b0] 2888                      move.l     a0,(a4)
[0003c5b2] 202f 0004                 move.l     4(a7),d0
[0003c5b6] 226f 0008                 movea.l    8(a7),a1
[0003c5ba] 4eb9 0007 6a1a            jsr        strncpy
[0003c5c0] 202f 0004                 move.l     4(a7),d0
[0003c5c4] 2054                      movea.l    (a4),a0
[0003c5c6] 4230 0800                 clr.b      0(a0,d0.l)
[0003c5ca] 600e                      bra.s      cutline_5
cutline_4:
[0003c5cc] 41f9 000c 85c4            lea.l      $000C85C4,a0
[0003c5d2] 4eb9 0004 36d6            jsr        Ast_create
[0003c5d8] 2888                      move.l     a0,(a4)
cutline_5:
[0003c5da] 23ef 000c 000c 8274       move.l     12(a7),subdel
[0003c5e2] 42b9 000c 8278            clr.l      $000C8278
[0003c5e8] 7001                      moveq.l    #1,d0
[0003c5ea] d0af 000c                 add.l      12(a7),d0
[0003c5ee] b0af 0010                 cmp.l      16(a7),d0
[0003c5f2] 6c24                      bge.s      cutline_6
[0003c5f4] 584c                      addq.w     #4,a4
[0003c5f6] 41f9 000c 85c4            lea.l      $000C85C4,a0
[0003c5fc] 4eb9 0004 36d6            jsr        Ast_create
[0003c602] 2888                      move.l     a0,(a4)
[0003c604] 7001                      moveq.l    #1,d0
[0003c606] d0af 000c                 add.l      12(a7),d0
[0003c60a] 23c0 000c 827c            move.l     d0,$000C827C
[0003c610] 42b9 000c 8280            clr.l      $000C8280
[0003c616] 6010                      bra.s      cutline_7
cutline_6:
[0003c618] 23ef 000c 000c 827c       move.l     12(a7),$000C827C
[0003c620] 23ef 0004 000c 8280       move.l     4(a7),$000C8280
cutline_7:
[0003c628] 43f9 000c 8274            lea.l      subdel,a1
[0003c62e] 303c 00ea                 move.w     #$00EA,d0
[0003c632] 204a                      movea.l    a2,a0
[0003c634] 4e93                      jsr        (a3)
cutline_3:
[0003c636] 4fef 0014                 lea.l      20(a7),a7
[0003c63a] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003c63e] 4e75                      rts

edit_fulled:
[0003c640] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003c644] 2448                      movea.l    a0,a2
[0003c646] 47ea 0024                 lea.l      36(a2),a3
[0003c64a] 49ea 002c                 lea.l      44(a2),a4
[0003c64e] 7001                      moveq.l    #1,d0
[0003c650] c06a 0056                 and.w      86(a2),d0
[0003c654] 6724                      beq.s      edit_fulled_1
[0003c656] 3694                      move.w     (a4),(a3)
[0003c658] 376c 0002 0002            move.w     2(a4),2(a3)
[0003c65e] 376c 0004 0004            move.w     4(a4),4(a3)
[0003c664] 376c 0006 0006            move.w     6(a4),6(a3)
[0003c66a] 224c                      movea.l    a4,a1
[0003c66c] 4eb9 0003 d1be            jsr        edit_sized
[0003c672] 026a fffe 0056            andi.w     #$FFFE,86(a2)
[0003c678] 602a                      bra.s      edit_fulled_2
edit_fulled_1:
[0003c67a] 3893                      move.w     (a3),(a4)
[0003c67c] 396b 0002 0002            move.w     2(a3),2(a4)
[0003c682] 396b 0004 0004            move.w     4(a3),4(a4)
[0003c688] 396b 0006 0006            move.w     6(a3),6(a4)
[0003c68e] 2279 0010 1f12            movea.l    ACSblk,a1
[0003c694] 5049                      addq.w     #8,a1
[0003c696] 204a                      movea.l    a2,a0
[0003c698] 4eb9 0003 d1be            jsr        edit_sized
[0003c69e] 006a 0001 0056            ori.w      #$0001,86(a2)
edit_fulled_2:
[0003c6a4] 3f2b 0006                 move.w     6(a3),-(a7)
[0003c6a8] 3f2b 0004                 move.w     4(a3),-(a7)
[0003c6ac] 3f2b 0002                 move.w     2(a3),-(a7)
[0003c6b0] 3f13                      move.w     (a3),-(a7)
[0003c6b2] 7205                      moveq.l    #5,d1
[0003c6b4] 302a 0020                 move.w     32(a2),d0
[0003c6b8] 4eb9 0007 1656            jsr        wind_set
[0003c6be] 504f                      addq.w     #8,a7
[0003c6c0] 4eb9 0004 6d70            jsr        Aev_mess
[0003c6c6] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003c6ca] 4e75                      rts

edit_arrowed:
[0003c6cc] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[0003c6d0] 4fef fff6                 lea.l      -10(a7),a7
[0003c6d4] 3800                      move.w     d0,d4
[0003c6d6] 3f41 0008                 move.w     d1,8(a7)
[0003c6da] 2468 0014                 movea.l    20(a0),a2
[0003c6de] 45ea 0060                 lea.l      96(a2),a2
[0003c6e2] 266a 000c                 movea.l    12(a2),a3
[0003c6e6] 2868 0014                 movea.l    20(a0),a4
[0003c6ea] 49ec 0078                 lea.l      120(a4),a4
[0003c6ee] 2f6c 000c 0004            move.l     12(a4),4(a7)
[0003c6f4] 4243                      clr.w      d3
edit_arrowed_18:
[0003c6f6] 3004                      move.w     d4,d0
[0003c6f8] b07c 0007                 cmp.w      #$0007,d0
[0003c6fc] 6200 00b2                 bhi        edit_arrowed_1
[0003c700] d040                      add.w      d0,d0
[0003c702] 303b 0006                 move.w     $0003C70A(pc,d0.w),d0
[0003c706] 4efb 0002                 jmp        $0003C70A(pc,d0.w)
J31:
[0003c70a] 0038                      dc.w $0038   ; edit_arrowed_2-J31
[0003c70c] 004c                      dc.w $004c   ; edit_arrowed_3-J31
[0003c70e] 0010                      dc.w $0010   ; edit_arrowed_4-J31
[0003c710] 0024                      dc.w $0024   ; edit_arrowed_5-J31
[0003c712] 0064                      dc.w $0064   ; edit_arrowed_6-J31
[0003c714] 0074                      dc.w $0074   ; edit_arrowed_7-J31
[0003c716] 0086                      dc.w $0086   ; edit_arrowed_8-J31
[0003c718] 0096                      dc.w $0096   ; edit_arrowed_9-J31
edit_arrowed_4:
[0003c71a] 43ef 0008                 lea.l      8(a7),a1
[0003c71e] 700b                      moveq.l    #11,d0
[0003c720] 204c                      movea.l    a4,a0
[0003c722] 2a6f 0004                 movea.l    4(a7),a5
[0003c726] 2a6d 0008                 movea.l    8(a5),a5
[0003c72a] 4e95                      jsr        (a5)
[0003c72c] 603c                      bra.s      edit_arrowed_10
edit_arrowed_5:
[0003c72e] 43ef 0008                 lea.l      8(a7),a1
[0003c732] 700a                      moveq.l    #10,d0
[0003c734] 204c                      movea.l    a4,a0
[0003c736] 2a6f 0004                 movea.l    4(a7),a5
[0003c73a] 2a6d 0008                 movea.l    8(a5),a5
[0003c73e] 4e95                      jsr        (a5)
[0003c740] 6028                      bra.s      edit_arrowed_10
edit_arrowed_2:
[0003c742] 43ef 0008                 lea.l      8(a7),a1
[0003c746] 700d                      moveq.l    #13,d0
[0003c748] 204c                      movea.l    a4,a0
[0003c74a] 2a6f 0004                 movea.l    4(a7),a5
[0003c74e] 2a6d 0008                 movea.l    8(a5),a5
[0003c752] 4e95                      jsr        (a5)
[0003c754] 6012                      bra.s      edit_arrowed_11
edit_arrowed_3:
[0003c756] 43ef 0008                 lea.l      8(a7),a1
[0003c75a] 700c                      moveq.l    #12,d0
[0003c75c] 204c                      movea.l    a4,a0
[0003c75e] 2a6f 0004                 movea.l    4(a7),a5
[0003c762] 2a6d 0008                 movea.l    8(a5),a5
[0003c766] 4e95                      jsr        (a5)
edit_arrowed_11:
[0003c768] 4243                      clr.w      d3
edit_arrowed_10:
[0003c76a] 7a01                      moveq.l    #1,d5
[0003c76c] 6042                      bra.s      edit_arrowed_1
edit_arrowed_6:
[0003c76e] 43ef 0008                 lea.l      8(a7),a1
[0003c772] 700d                      moveq.l    #13,d0
[0003c774] 204a                      movea.l    a2,a0
[0003c776] 2a6b 0008                 movea.l    8(a3),a5
[0003c77a] 4e95                      jsr        (a5)
[0003c77c] 600e                      bra.s      edit_arrowed_12
edit_arrowed_7:
[0003c77e] 43ef 0008                 lea.l      8(a7),a1
[0003c782] 700c                      moveq.l    #12,d0
[0003c784] 204a                      movea.l    a2,a0
[0003c786] 2a6b 0008                 movea.l    8(a3),a5
[0003c78a] 4e95                      jsr        (a5)
edit_arrowed_12:
[0003c78c] 4243                      clr.w      d3
[0003c78e] 601e                      bra.s      edit_arrowed_13
edit_arrowed_8:
[0003c790] 43ef 0008                 lea.l      8(a7),a1
[0003c794] 700b                      moveq.l    #11,d0
[0003c796] 204a                      movea.l    a2,a0
[0003c798] 2a6b 0008                 movea.l    8(a3),a5
[0003c79c] 4e95                      jsr        (a5)
[0003c79e] 600e                      bra.s      edit_arrowed_13
edit_arrowed_9:
[0003c7a0] 43ef 0008                 lea.l      8(a7),a1
[0003c7a4] 700a                      moveq.l    #10,d0
[0003c7a6] 204a                      movea.l    a2,a0
[0003c7a8] 2a6b 0008                 movea.l    8(a3),a5
[0003c7ac] 4e95                      jsr        (a5)
edit_arrowed_13:
[0003c7ae] 4245                      clr.w      d5
edit_arrowed_1:
[0003c7b0] 4a45                      tst.w      d5
[0003c7b2] 672c                      beq.s      edit_arrowed_14
[0003c7b4] 3003                      move.w     d3,d0
[0003c7b6] 5343                      subq.w     #1,d3
[0003c7b8] 4a40                      tst.w      d0
[0003c7ba] 6612                      bne.s      edit_arrowed_15
[0003c7bc] 93c9                      suba.l     a1,a1
[0003c7be] 7005                      moveq.l    #5,d0
[0003c7c0] 204c                      movea.l    a4,a0
[0003c7c2] 2a6f 0004                 movea.l    4(a7),a5
[0003c7c6] 2a6d 0008                 movea.l    8(a5),a5
[0003c7ca] 4e95                      jsr        (a5)
[0003c7cc] 7604                      moveq.l    #4,d3
edit_arrowed_15:
[0003c7ce] 93c9                      suba.l     a1,a1
[0003c7d0] 7069                      moveq.l    #105,d0
[0003c7d2] 204c                      movea.l    a4,a0
[0003c7d4] 2a6f 0004                 movea.l    4(a7),a5
[0003c7d8] 2a6d 0008                 movea.l    8(a5),a5
[0003c7dc] 4e95                      jsr        (a5)
[0003c7de] 6022                      bra.s      edit_arrowed_16
edit_arrowed_14:
[0003c7e0] 3003                      move.w     d3,d0
[0003c7e2] 5343                      subq.w     #1,d3
[0003c7e4] 4a40                      tst.w      d0
[0003c7e6] 660e                      bne.s      edit_arrowed_17
[0003c7e8] 93c9                      suba.l     a1,a1
[0003c7ea] 7005                      moveq.l    #5,d0
[0003c7ec] 204a                      movea.l    a2,a0
[0003c7ee] 2a6b 0008                 movea.l    8(a3),a5
[0003c7f2] 4e95                      jsr        (a5)
[0003c7f4] 7604                      moveq.l    #4,d3
edit_arrowed_17:
[0003c7f6] 93c9                      suba.l     a1,a1
[0003c7f8] 7069                      moveq.l    #105,d0
[0003c7fa] 204a                      movea.l    a2,a0
[0003c7fc] 2a6b 0008                 movea.l    8(a3),a5
[0003c800] 4e95                      jsr        (a5)
edit_arrowed_16:
[0003c802] 2f39 000d 99d6            move.l     _globl,-(a7)
[0003c808] 486f 0006                 pea.l      6(a7)
[0003c80c] 486f 0008                 pea.l      8(a7)
[0003c810] 43ef 000e                 lea.l      14(a7),a1
[0003c814] 41ef 000e                 lea.l      14(a7),a0
[0003c818] 4eb9 0006 c978            jsr        mt_graf_mkstate
[0003c81e] 4fef 000c                 lea.l      12(a7),a7
[0003c822] 7001                      moveq.l    #1,d0
[0003c824] c057                      and.w      (a7),d0
[0003c826] 6600 fece                 bne        edit_arrowed_18
[0003c82a] b67c 0004                 cmp.w      #$0004,d3
[0003c82e] 6722                      beq.s      edit_arrowed_19
[0003c830] 4a45                      tst.w      d5
[0003c832] 6712                      beq.s      edit_arrowed_20
[0003c834] 93c9                      suba.l     a1,a1
[0003c836] 204c                      movea.l    a4,a0
[0003c838] 246f 0004                 movea.l    4(a7),a2
[0003c83c] 246a 0008                 movea.l    8(a2),a2
[0003c840] 7005                      moveq.l    #5,d0
[0003c842] 4e92                      jsr        (a2)
[0003c844] 600c                      bra.s      edit_arrowed_19
edit_arrowed_20:
[0003c846] 93c9                      suba.l     a1,a1
[0003c848] 7005                      moveq.l    #5,d0
[0003c84a] 204c                      movea.l    a4,a0
[0003c84c] 246b 0008                 movea.l    8(a3),a2
[0003c850] 4e92                      jsr        (a2)
edit_arrowed_19:
[0003c852] 4fef 000a                 lea.l      10(a7),a7
[0003c856] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0003c85a] 4e75                      rts

edit_hslid:
[0003c85c] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003c860] 554f                      subq.w     #2,a7
[0003c862] 3e80                      move.w     d0,(a7)
[0003c864] 2468 0014                 movea.l    20(a0),a2
[0003c868] 45ea 0060                 lea.l      96(a2),a2
[0003c86c] 266a 000c                 movea.l    12(a2),a3
[0003c870] 43d7                      lea.l      (a7),a1
[0003c872] 204a                      movea.l    a2,a0
[0003c874] 286b 0008                 movea.l    8(a3),a4
[0003c878] 706a                      moveq.l    #106,d0
[0003c87a] 4e94                      jsr        (a4)
[0003c87c] 93c9                      suba.l     a1,a1
[0003c87e] 7005                      moveq.l    #5,d0
[0003c880] 204a                      movea.l    a2,a0
[0003c882] 286b 0008                 movea.l    8(a3),a4
[0003c886] 4e94                      jsr        (a4)
[0003c888] 93c9                      suba.l     a1,a1
[0003c88a] 7069                      moveq.l    #105,d0
[0003c88c] 204a                      movea.l    a2,a0
[0003c88e] 286b 0008                 movea.l    8(a3),a4
[0003c892] 4e94                      jsr        (a4)
[0003c894] 544f                      addq.w     #2,a7
[0003c896] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003c89a] 4e75                      rts

edit_init:
[0003c89c] 48e7 0034                 movem.l    a2-a3/a5,-(a7)
[0003c8a0] 4fef ffb6                 lea.l      -74(a7),a7
[0003c8a4] 2448                      movea.l    a0,a2
[0003c8a6] 2650                      movea.l    (a0),a3
[0003c8a8] 302b 0294                 move.w     660(a3),d0
[0003c8ac] c07c 0200                 and.w      #$0200,d0
[0003c8b0] 6600 00ea                 bne        edit_init_1
[0003c8b4] 006a 0020 0056            ori.w      #$0020,86(a2)
[0003c8ba] 302a 0056                 move.w     86(a2),d0
[0003c8be] c07c 0800                 and.w      #$0800,d0
[0003c8c2] 6600 00d8                 bne        edit_init_1
[0003c8c6] 536b 00c8                 subq.w     #1,200(a3)
[0003c8ca] 302b 00c8                 move.w     200(a3),d0
[0003c8ce] 6e00 00cc                 bgt        edit_init_1
[0003c8d2] 2a6a 0014                 movea.l    20(a2),a5
[0003c8d6] 43ef 0014                 lea.l      20(a7),a1
[0003c8da] 204d                      movea.l    a5,a0
[0003c8dc] 303c 00d8                 move.w     #$00D8,d0
[0003c8e0] 4eb9 0003 8e52            jsr        Auo_editor
[0003c8e6] 43ef 0010                 lea.l      16(a7),a1
[0003c8ea] 303c 00ff                 move.w     #$00FF,d0
[0003c8ee] 204d                      movea.l    a5,a0
[0003c8f0] 4eb9 0003 8e52            jsr        Auo_editor
[0003c8f6] 43d7                      lea.l      (a7),a1
[0003c8f8] 303c 00e3                 move.w     #$00E3,d0
[0003c8fc] 204d                      movea.l    a5,a0
[0003c8fe] 4eb9 0003 8e52            jsr        Auo_editor
[0003c904] 4bef 0018                 lea.l      24(a7),a5
[0003c908] 2017                      move.l     (a7),d0
[0003c90a] 6b46                      bmi.s      edit_init_2
[0003c90c] 7201                      moveq.l    #1,d1
[0003c90e] d2af 0008                 add.l      8(a7),d1
[0003c912] 2f01                      move.l     d1,-(a7)
[0003c914] 7401                      moveq.l    #1,d2
[0003c916] d4af 0010                 add.l      16(a7),d2
[0003c91a] 2f02                      move.l     d2,-(a7)
[0003c91c] 7001                      moveq.l    #1,d0
[0003c91e] d0af 0008                 add.l      8(a7),d0
[0003c922] 2f00                      move.l     d0,-(a7)
[0003c924] 7201                      moveq.l    #1,d1
[0003c926] d2af 0010                 add.l      16(a7),d1
[0003c92a] 2f01                      move.l     d1,-(a7)
[0003c92c] 43f9 000c 85d7            lea.l      $000C85D7,a1
[0003c932] 204d                      movea.l    a5,a0
[0003c934] 4eb9 0007 5680            jsr        sprintf
[0003c93a] 4fef 0010                 lea.l      16(a7),a7
[0003c93e] 224d                      movea.l    a5,a1
[0003c940] 204a                      movea.l    a2,a0
[0003c942] 4eb9 0003 ed16            jsr        info_string
[0003c948] 277c ffff ffff 00ca       move.l     #$FFFFFFFF,202(a3)
[0003c950] 604a                      bra.s      edit_init_1
edit_init_2:
[0003c952] 202b 00ca                 move.l     202(a3),d0
[0003c956] b0af 0010                 cmp.l      16(a7),d0
[0003c95a] 660a                      bne.s      edit_init_3
[0003c95c] 222b 00ce                 move.l     206(a3),d1
[0003c960] b2af 0014                 cmp.l      20(a7),d1
[0003c964] 6736                      beq.s      edit_init_1
edit_init_3:
[0003c966] 7001                      moveq.l    #1,d0
[0003c968] d0af 0014                 add.l      20(a7),d0
[0003c96c] 2f00                      move.l     d0,-(a7)
[0003c96e] 7201                      moveq.l    #1,d1
[0003c970] d2af 0014                 add.l      20(a7),d1
[0003c974] 2f01                      move.l     d1,-(a7)
[0003c976] 43f9 000c 85e3            lea.l      $000C85E3,a1
[0003c97c] 204d                      movea.l    a5,a0
[0003c97e] 4eb9 0007 5680            jsr        sprintf
[0003c984] 504f                      addq.w     #8,a7
[0003c986] 224d                      movea.l    a5,a1
[0003c988] 204a                      movea.l    a2,a0
[0003c98a] 4eb9 0003 ed16            jsr        info_string
[0003c990] 276f 0010 00ca            move.l     16(a7),202(a3)
[0003c996] 276f 0014 00ce            move.l     20(a7),206(a3)
edit_init_1:
[0003c99c] 4240                      clr.w      d0
[0003c99e] 4fef 004a                 lea.l      74(a7),a7
[0003c9a2] 4cdf 2c00                 movem.l    (a7)+,a2-a3/a5
[0003c9a6] 4e75                      rts

edit_make:
[0003c9a8] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[0003c9ac] 4fef f9b6                 lea.l      -1610(a7),a7
[0003c9b0] 2f7c 3b9a c9ff 0008       move.l     #$3B9AC9FF,8(a7)
[0003c9b8] 2f7c 0000 0100 0004       move.l     #$00000100,4(a7)
[0003c9c0] 47f9 000c 7b96            lea.l      proto,a3
[0003c9c6] 203c 0000 06a0            move.l     #$000006A0,d0
[0003c9cc] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003c9d2] 2448                      movea.l    a0,a2
[0003c9d4] 200a                      move.l     a2,d0
[0003c9d6] 673c                      beq.s      edit_make_1
[0003c9d8] 203c 0000 06a0            move.l     #$000006A0,d0
[0003c9de] 224b                      movea.l    a3,a1
[0003c9e0] 4eb9 0007 6f44            jsr        memcpy
[0003c9e6] 722c                      moveq.l    #44,d1
[0003c9e8] 4240                      clr.w      d0
[0003c9ea] 41eb 00d2                 lea.l      210(a3),a0
[0003c9ee] 4eb9 0007 712e            jsr        memset
[0003c9f4] 277c 000c 8316 f534       move.l     #edit,-2764(a3)
[0003c9fc] 41eb f520                 lea.l      -2784(a3),a0
[0003ca00] 4eb9 0004 f41a            jsr        Awi_create
[0003ca06] 2848                      movea.l    a0,a4
[0003ca08] 200c                      move.l     a4,d0
[0003ca0a] 660e                      bne.s      edit_make_2
[0003ca0c] 204a                      movea.l    a2,a0
[0003ca0e] 4eb9 0004 7e26            jsr        Ax_free
edit_make_1:
[0003ca14] 91c8                      suba.l     a0,a0
[0003ca16] 6000 0376                 bra        edit_make_3
edit_make_2:
[0003ca1a] 2f39 000d 99d6            move.l     _globl,-(a7)
[0003ca20] 486f 0004                 pea.l      4(a7)
[0003ca24] 486f 0008                 pea.l      8(a7)
[0003ca28] 4267                      clr.w      -(a7)
[0003ca2a] 4267                      clr.w      -(a7)
[0003ca2c] 4267                      clr.w      -(a7)
[0003ca2e] 43ef 0012                 lea.l      18(a7),a1
[0003ca32] 41ef 0014                 lea.l      20(a7),a0
[0003ca36] 4242                      clr.w      d2
[0003ca38] 322c 0022                 move.w     34(a4),d1
[0003ca3c] 7001                      moveq.l    #1,d0
[0003ca3e] 4eb9 0006 d60a            jsr        mt_wind_calc
[0003ca44] 4fef 0012                 lea.l      18(a7),a7
[0003ca48] 7008                      moveq.l    #8,d0
[0003ca4a] d06c 0024                 add.w      36(a4),d0
[0003ca4e] c07c fff0                 and.w      #$FFF0,d0
[0003ca52] 906f 0002                 sub.w      2(a7),d0
[0003ca56] 3940 0024                 move.w     d0,36(a4)
[0003ca5a] 288a                      move.l     a2,(a4)
[0003ca5c] 4def 001a                 lea.l      26(a7),a6
[0003ca60] 4bf9 0010 1f12            lea.l      ACSblk,a5
[0003ca66] 302b 06fe                 move.w     1790(a3),d0
[0003ca6a] 6600 0142                 bne        edit_make_4
[0003ca6e] 41f9 000c 85ee            lea.l      $000C85EE,a0
[0003ca74] 4eb9 0004 7066            jsr        Af_cfgfile
[0003ca7a] 4240                      clr.w      d0
[0003ca7c] 4eb9 0007 29f0            jsr        Fopen
[0003ca82] 2600                      move.l     d0,d3
[0003ca84] 6f00 0110                 ble        edit_make_5
[0003ca88] 41ef 0016                 lea.l      22(a7),a0
[0003ca8c] 7204                      moveq.l    #4,d1
[0003ca8e] 3003                      move.w     d3,d0
[0003ca90] 4eb9 0007 2a02            jsr        Fread
[0003ca96] 7204                      moveq.l    #4,d1
[0003ca98] b280                      cmp.l      d0,d1
[0003ca9a] 6600 00f2                 bne        edit_make_6
[0003ca9e] 0caf 4145 4431 0016       cmpi.l     #$41454431,22(a7)
[0003caa6] 6600 00e6                 bne        edit_make_6
[0003caaa] 4242                      clr.w      d2
[0003caac] 7000                      moveq.l    #0,d0
[0003caae] 3203                      move.w     d3,d1
[0003cab0] 4eb9 0007 2a2e            jsr        Fseek
[0003cab6] 4a80                      tst.l      d0
[0003cab8] 6600 00d4                 bne        edit_make_6
[0003cabc] 41ef 011c                 lea.l      284(a7),a0
[0003cac0] 223c 0000 052e            move.l     #$0000052E,d1
[0003cac6] 3003                      move.w     d3,d0
[0003cac8] 4eb9 0007 2a02            jsr        Fread
[0003cace] b0bc 0000 052e            cmp.l      #$0000052E,d0
[0003cad4] 6600 00b8                 bne        edit_make_6
[0003cad8] 203c 0000 052e            move.l     #$0000052E,d0
[0003cade] 43ef 011c                 lea.l      284(a7),a1
[0003cae2] 41eb fad2                 lea.l      -1326(a3),a0
[0003cae6] 4eb9 0007 6f44            jsr        memcpy
[0003caec] 41ef 0016                 lea.l      22(a7),a0
[0003caf0] 7204                      moveq.l    #4,d1
[0003caf2] 3003                      move.w     d3,d0
[0003caf4] 4eb9 0007 2a02            jsr        Fread
[0003cafa] 7204                      moveq.l    #4,d1
[0003cafc] b280                      cmp.l      d0,d1
[0003cafe] 6600 008e                 bne        edit_make_6
[0003cb02] 7800                      moveq.l    #0,d4
[0003cb04] 6000 0080                 bra        edit_make_7
edit_make_10:
[0003cb08] 204e                      movea.l    a6,a0
[0003cb0a] 223c 0000 0102            move.l     #$00000102,d1
[0003cb10] 3003                      move.w     d3,d0
[0003cb12] 4eb9 0007 2a02            jsr        Fread
[0003cb18] b0bc 0000 0102            cmp.l      #$00000102,d0
[0003cb1e] 666e                      bne.s      edit_make_6
[0003cb20] 182e 0001                 move.b     1(a6),d4
[0003cb24] 4884                      ext.w      d4
[0003cb26] d87c fff0                 add.w      #$FFF0,d4
[0003cb2a] 48c4                      ext.l      d4
[0003cb2c] 3016                      move.w     (a6),d0
[0003cb2e] c07c 0400                 and.w      #$0400,d0
[0003cb32] 6706                      beq.s      edit_make_8
[0003cb34] d8bc 0000 0014            add.l      #$00000014,d4
edit_make_8:
[0003cb3a] 3016                      move.w     (a6),d0
[0003cb3c] c07c 0300                 and.w      #$0300,d0
[0003cb40] 6706                      beq.s      edit_make_9
[0003cb42] d8bc 0000 000a            add.l      #$0000000A,d4
edit_make_9:
[0003cb48] 203c 0000 0102            move.l     #$00000102,d0
[0003cb4e] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003cb54] 2004                      move.l     d4,d0
[0003cb56] e588                      lsl.l      #2,d0
[0003cb58] 43f2 0800                 lea.l      0(a2,d0.l),a1
[0003cb5c] 2348 00d2                 move.l     a0,210(a1)
[0003cb60] 3204                      move.w     d4,d1
[0003cb62] e549                      lsl.w      #2,d1
[0003cb64] 43eb 00d2                 lea.l      210(a3),a1
[0003cb68] 2388 1000                 move.l     a0,0(a1,d1.w)
[0003cb6c] 6720                      beq.s      edit_make_6
[0003cb6e] 224e                      movea.l    a6,a1
[0003cb70] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0003cb74] 2068 00d2                 movea.l    210(a0),a0
[0003cb78] 203c 0000 0102            move.l     #$00000102,d0
[0003cb7e] 4eb9 0007 6f44            jsr        memcpy
[0003cb84] 5284                      addq.l     #1,d4
edit_make_7:
[0003cb86] b8af 0016                 cmp.l      22(a7),d4
[0003cb8a] 6d00 ff7c                 blt        edit_make_10
edit_make_6:
[0003cb8e] 3003                      move.w     d3,d0
[0003cb90] 4eb9 0007 29ae            jsr        Fclose
edit_make_5:
[0003cb96] 102b fef6                 move.b     -266(a3),d0
[0003cb9a] 6654                      bne.s      edit_make_11
[0003cb9c] 2255                      movea.l    (a5),a1
[0003cb9e] 43e9 03e6                 lea.l      998(a1),a1
[0003cba2] 41eb fef6                 lea.l      -266(a3),a0
[0003cba6] 4eb9 0007 6950            jsr        strcpy
[0003cbac] 6042                      bra.s      edit_make_11
edit_make_4:
[0003cbae] 7800                      moveq.l    #0,d4
[0003cbb0] 6038                      bra.s      edit_make_12
edit_make_14:
[0003cbb2] 3004                      move.w     d4,d0
[0003cbb4] e548                      lsl.w      #2,d0
[0003cbb6] 41eb 00d2                 lea.l      210(a3),a0
[0003cbba] 2230 0000                 move.l     0(a0,d0.w),d1
[0003cbbe] 6728                      beq.s      edit_make_13
[0003cbc0] 203c 0000 0102            move.l     #$00000102,d0
[0003cbc6] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003cbcc] 2004                      move.l     d4,d0
[0003cbce] e588                      lsl.l      #2,d0
[0003cbd0] 43f2 0800                 lea.l      0(a2,d0.l),a1
[0003cbd4] 2348 00d2                 move.l     a0,210(a1)
[0003cbd8] 6716                      beq.s      edit_make_11
[0003cbda] 224e                      movea.l    a6,a1
[0003cbdc] 203c 0000 0102            move.l     #$00000102,d0
[0003cbe2] 4eb9 0007 6f44            jsr        memcpy
edit_make_13:
[0003cbe8] 5284                      addq.l     #1,d4
edit_make_12:
[0003cbea] 7028                      moveq.l    #40,d0
[0003cbec] b084                      cmp.l      d4,d0
[0003cbee] 6ec2                      bgt.s      edit_make_14
edit_make_11:
[0003cbf0] 026b 007f fbf4            andi.w     #$007F,-1036(a3)
[0003cbf6] 203c 0000 052e            move.l     #$0000052E,d0
[0003cbfc] 43eb fad2                 lea.l      -1326(a3),a1
[0003cc00] 41ea 0172                 lea.l      370(a2),a0
[0003cc04] 4eb9 0007 6f44            jsr        memcpy
[0003cc0a] 206b f538                 movea.l    -2760(a3),a0
[0003cc0e] b1fc 000c 6e8e            cmpa.l     #_ED_TOOL,a0
[0003cc14] 6706                      beq.s      edit_make_15
[0003cc16] 006a 0200 0294            ori.w      #$0200,660(a2)
edit_make_15:
[0003cc1c] 006c 0060 0054            ori.w      #$0060,84(a4)
[0003cc22] 4240                      clr.w      d0
[0003cc24] 206c 0014                 movea.l    20(a4),a0
[0003cc28] 3140 0046                 move.w     d0,70(a0)
[0003cc2c] 206c 0014                 movea.l    20(a4),a0
[0003cc30] 3140 0044                 move.w     d0,68(a0)
[0003cc34] 2c6c 0014                 movea.l    20(a4),a6
[0003cc38] 322a 0178                 move.w     376(a2),d1
[0003cc3c] 6712                      beq.s      edit_make_16
[0003cc3e] 2055                      movea.l    (a5),a0
[0003cc40] b268 000c                 cmp.w      12(a0),d1
[0003cc44] 6e0a                      bgt.s      edit_make_16
[0003cc46] 342a 017a                 move.w     378(a2),d2
[0003cc4a] b468 000e                 cmp.w      14(a0),d2
[0003cc4e] 6f26                      ble.s      edit_make_17
edit_make_16:
[0003cc50] 2055                      movea.l    (a5),a0
[0003cc52] 3028 000c                 move.w     12(a0),d0
[0003cc56] 3228 000c                 move.w     12(a0),d1
[0003cc5a] e441                      asr.w      #2,d1
[0003cc5c] 9041                      sub.w      d1,d0
[0003cc5e] 3d40 0014                 move.w     d0,20(a6)
[0003cc62] 2055                      movea.l    (a5),a0
[0003cc64] 3228 000e                 move.w     14(a0),d1
[0003cc68] 3428 000e                 move.w     14(a0),d2
[0003cc6c] e442                      asr.w      #2,d2
[0003cc6e] 9242                      sub.w      d2,d1
[0003cc70] 3d41 0016                 move.w     d1,22(a6)
[0003cc74] 600c                      bra.s      edit_make_18
edit_make_17:
[0003cc76] 3d6a 0178 0014            move.w     376(a2),20(a6)
[0003cc7c] 3d6a 017a 0016            move.w     378(a2),22(a6)
edit_make_18:
[0003cc82] 43ef 0004                 lea.l      4(a7),a1
[0003cc86] 303c 00d2                 move.w     #$00D2,d0
[0003cc8a] 204e                      movea.l    a6,a0
[0003cc8c] 4eb9 0003 8e52            jsr        Auo_editor
[0003cc92] 43ea 0596                 lea.l      1430(a2),a1
[0003cc96] 303c 0106                 move.w     #$0106,d0
[0003cc9a] 204e                      movea.l    a6,a0
[0003cc9c] 4eb9 0003 8e52            jsr        Auo_editor
[0003cca2] 43ea 0180                 lea.l      384(a2),a1
[0003cca6] 303c 00fe                 move.w     #$00FE,d0
[0003ccaa] 204e                      movea.l    a6,a0
[0003ccac] 4eb9 0003 8e52            jsr        Auo_editor
[0003ccb2] 43ea 017c                 lea.l      380(a2),a1
[0003ccb6] 303c 00cf                 move.w     #$00CF,d0
[0003ccba] 204e                      movea.l    a6,a0
[0003ccbc] 4eb9 0003 8e52            jsr        Auo_editor
[0003ccc2] 43ea 017e                 lea.l      382(a2),a1
[0003ccc6] 303c 00d0                 move.w     #$00D0,d0
[0003ccca] 204e                      movea.l    a6,a0
[0003cccc] 4eb9 0003 8e52            jsr        Auo_editor
[0003ccd2] 93c9                      suba.l     a1,a1
[0003ccd4] 303c 00ee                 move.w     #$00EE,d0
[0003ccd8] 204e                      movea.l    a6,a0
[0003ccda] 4eb9 0003 8e52            jsr        Auo_editor
[0003cce0] 4bef 000c                 lea.l      12(a7),a5
[0003cce4] 2a8c                      move.l     a4,(a5)
[0003cce6] 206c 0014                 movea.l    20(a4),a0
[0003ccea] 41e8 0060                 lea.l      96(a0),a0
[0003ccee] 2b48 0004                 move.l     a0,4(a5)
[0003ccf2] 3b7c 0004 0008            move.w     #$0004,8(a5)
[0003ccf8] 224d                      movea.l    a5,a1
[0003ccfa] 303c 00c9                 move.w     #$00C9,d0
[0003ccfe] 204e                      movea.l    a6,a0
[0003cd00] 4eb9 0003 8e52            jsr        Auo_editor
[0003cd06] 206c 0014                 movea.l    20(a4),a0
[0003cd0a] 41e8 0078                 lea.l      120(a0),a0
[0003cd0e] 2b48 0004                 move.l     a0,4(a5)
[0003cd12] 3b7c 0005 0008            move.w     #$0005,8(a5)
[0003cd18] 224d                      movea.l    a5,a1
[0003cd1a] 303c 00c8                 move.w     #$00C8,d0
[0003cd1e] 204e                      movea.l    a6,a0
[0003cd20] 4eb9 0003 8e52            jsr        Auo_editor
[0003cd26] 43ef 0008                 lea.l      8(a7),a1
[0003cd2a] 303c 00cd                 move.w     #$00CD,d0
[0003cd2e] 204e                      movea.l    a6,a0
[0003cd30] 4eb9 0003 8e52            jsr        Auo_editor
[0003cd36] 93c9                      suba.l     a1,a1
[0003cd38] 303c 00e0                 move.w     #$00E0,d0
[0003cd3c] 204e                      movea.l    a6,a0
[0003cd3e] 4eb9 0003 8e52            jsr        Auo_editor
[0003cd44] 93c9                      suba.l     a1,a1
[0003cd46] 303c 00d3                 move.w     #$00D3,d0
[0003cd4a] 204e                      movea.l    a6,a0
[0003cd4c] 4eb9 0003 8e52            jsr        Auo_editor
[0003cd52] 93c9                      suba.l     a1,a1
[0003cd54] 303c 00d6                 move.w     #$00D6,d0
[0003cd58] 204e                      movea.l    a6,a0
[0003cd5a] 4eb9 0003 8e52            jsr        Auo_editor
[0003cd60] 43ea 0176                 lea.l      374(a2),a1
[0003cd64] 303c 00ec                 move.w     #$00EC,d0
[0003cd68] 204e                      movea.l    a6,a0
[0003cd6a] 4eb9 0003 8e52            jsr        Auo_editor
[0003cd70] 93c9                      suba.l     a1,a1
[0003cd72] 7006                      moveq.l    #6,d0
[0003cd74] 204e                      movea.l    a6,a0
[0003cd76] 4eb9 0003 8e52            jsr        Auo_editor
[0003cd7c] 526b 06fe                 addq.w     #1,1790(a3)
[0003cd80] 204c                      movea.l    a4,a0
[0003cd82] 6100 e504                 bsr        set_icon
[0003cd86] 204c                      movea.l    a4,a0
[0003cd88] 6100 e5fe                 bsr        undirty
[0003cd8c] 204c                      movea.l    a4,a0
edit_make_3:
[0003cd8e] 4fef 064a                 lea.l      1610(a7),a7
[0003cd92] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[0003cd96] 4e75                      rts

term:
[0003cd98] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003cd9c] 2448                      movea.l    a0,a2
[0003cd9e] 302a 0056                 move.w     86(a2),d0
[0003cda2] c07c 0200                 and.w      #$0200,d0
[0003cda6] 6600 008e                 bne        term_1
[0003cdaa] 2650                      movea.l    (a0),a3
[0003cdac] 323c 0080                 move.w     #$0080,d1
[0003cdb0] c26b 0294                 and.w      660(a3),d1
[0003cdb4] 674a                      beq.s      term_2
[0003cdb6] 2279 0010 1f12            movea.l    ACSblk,a1
[0003cdbc] 3429 023a                 move.w     570(a1),d2
[0003cdc0] 6716                      beq.s      term_3
[0003cdc2] 43eb 00b8                 lea.l      184(a3),a1
[0003cdc6] 41f9 000c 4160            lea.l      WARN_SAVED,a0
[0003cdcc] 4eb9 0005 ef8c            jsr        alert_str
[0003cdd2] 5340                      subq.w     #1,d0
[0003cdd4] 662a                      bne.s      term_2
[0003cdd6] 601a                      bra.s      term_4
term_3:
[0003cdd8] 43eb 00b8                 lea.l      184(a3),a1
[0003cddc] 41f9 000c 4112            lea.l      WARN_2SAVED,a0
[0003cde2] 4eb9 0005 ef8c            jsr        alert_str
[0003cde8] 5340                      subq.w     #1,d0
[0003cdea] 6706                      beq.s      term_4
[0003cdec] 5540                      subq.w     #2,d0
[0003cdee] 6746                      beq.s      term_1
[0003cdf0] 600e                      bra.s      term_2
term_4:
[0003cdf2] 006a 0200 0056            ori.w      #$0200,86(a2)
[0003cdf8] 204a                      movea.l    a2,a0
[0003cdfa] 4eb9 0003 e142            jsr        ed_save
term_2:
[0003ce00] 006a 0200 0056            ori.w      #$0200,86(a2)
[0003ce06] 202b 0004                 move.l     4(a3),d0
[0003ce0a] 4e71                      nop
[0003ce0c] 2853                      movea.l    (a3),a4
[0003ce0e] 200c                      move.l     a4,d0
[0003ce10] 670e                      beq.s      term_5
[0003ce12] 224a                      movea.l    a2,a1
[0003ce14] 303c 00d1                 move.w     #$00D1,d0
[0003ce18] 204c                      movea.l    a4,a0
[0003ce1a] 2a6c 0004                 movea.l    4(a4),a5
[0003ce1e] 4e95                      jsr        (a5)
term_5:
[0003ce20] 5379 000c 8294            subq.w     #1,editors
[0003ce26] 204b                      movea.l    a3,a0
[0003ce28] 4eb9 0004 7e26            jsr        Ax_free
[0003ce2e] 204a                      movea.l    a2,a0
[0003ce30] 4eb9 0005 0330            jsr        Awi_delete
term_1:
[0003ce36] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003ce3a] 4e75                      rts

set_title:
[0003ce3c] 2f0a                      move.l     a2,-(a7)
[0003ce3e] 2f0b                      move.l     a3,-(a7)
[0003ce40] 2448                      movea.l    a0,a2
[0003ce42] 266a 004a                 movea.l    74(a2),a3
[0003ce46] 2049                      movea.l    a1,a0
[0003ce48] 4eb9 0004 36d6            jsr        Ast_create
[0003ce4e] 2548 004a                 move.l     a0,74(a2)
[0003ce52] 6606                      bne.s      set_title_1
[0003ce54] 254b 004a                 move.l     a3,74(a2)
[0003ce58] 6020                      bra.s      set_title_2
set_title_1:
[0003ce5a] 204b                      movea.l    a3,a0
[0003ce5c] 4eb9 0004 371c            jsr        Ast_delete
[0003ce62] 302a 0020                 move.w     32(a2),d0
[0003ce66] 6f12                      ble.s      set_title_2
[0003ce68] 4267                      clr.w      -(a7)
[0003ce6a] 4267                      clr.w      -(a7)
[0003ce6c] 2f2a 004a                 move.l     74(a2),-(a7)
[0003ce70] 7202                      moveq.l    #2,d1
[0003ce72] 4eb9 0007 1656            jsr        wind_set
[0003ce78] 504f                      addq.w     #8,a7
set_title_2:
[0003ce7a] 265f                      movea.l    (a7)+,a3
[0003ce7c] 245f                      movea.l    (a7)+,a2
[0003ce7e] 4e75                      rts

get_all:
[0003ce80] 48e7 002c                 movem.l    a2/a4-a5,-(a7)
[0003ce84] 4fef fff0                 lea.l      -16(a7),a7
[0003ce88] 2448                      movea.l    a0,a2
[0003ce8a] 2849                      movea.l    a1,a4
[0003ce8c] 303c 00d5                 move.w     #$00D5,d0
[0003ce90] 93c9                      suba.l     a1,a1
[0003ce92] 4eb9 0003 8e52            jsr        Auo_editor
[0003ce98] 93c9                      suba.l     a1,a1
[0003ce9a] 303c 00e2                 move.w     #$00E2,d0
[0003ce9e] 204a                      movea.l    a2,a0
[0003cea0] 4eb9 0003 8e52            jsr        Auo_editor
[0003cea6] 93c9                      suba.l     a1,a1
[0003cea8] 303c 00d6                 move.w     #$00D6,d0
[0003ceac] 204a                      movea.l    a2,a0
[0003ceae] 4eb9 0003 8e52            jsr        Auo_editor
[0003ceb4] 43d7                      lea.l      (a7),a1
[0003ceb6] 303c 00e9                 move.w     #$00E9,d0
[0003ceba] 204a                      movea.l    a2,a0
[0003cebc] 4eb9 0003 8e52            jsr        Auo_editor
[0003cec2] 4bef 0004                 lea.l      4(a7),a5
[0003cec6] 4295                      clr.l      (a5)
[0003cec8] 6038                      bra.s      get_all_1
get_all_4:
[0003ceca] 224d                      movea.l    a5,a1
[0003cecc] 303c 00ca                 move.w     #$00CA,d0
[0003ced0] 204a                      movea.l    a2,a0
[0003ced2] 4eb9 0003 8e52            jsr        Auo_editor
[0003ced8] 202d 0004                 move.l     4(a5),d0
[0003cedc] 6f0c                      ble.s      get_all_2
[0003cede] 226d 0008                 movea.l    8(a5),a1
[0003cee2] 204c                      movea.l    a4,a0
[0003cee4] 4eb9 0007 6a1a            jsr        strncpy
get_all_2:
[0003ceea] d9ed 0004                 adda.l     4(a5),a4
[0003ceee] 70ff                      moveq.l    #-1,d0
[0003cef0] d097                      add.l      (a7),d0
[0003cef2] 2215                      move.l     (a5),d1
[0003cef4] b280                      cmp.l      d0,d1
[0003cef6] 6708                      beq.s      get_all_3
[0003cef8] 18fc 000d                 move.b     #$0D,(a4)+
[0003cefc] 18fc 000a                 move.b     #$0A,(a4)+
get_all_3:
[0003cf00] 5295                      addq.l     #1,(a5)
get_all_1:
[0003cf02] 2015                      move.l     (a5),d0
[0003cf04] b097                      cmp.l      (a7),d0
[0003cf06] 6dc2                      blt.s      get_all_4
[0003cf08] 4214                      clr.b      (a4)
[0003cf0a] 4fef 0010                 lea.l      16(a7),a7
[0003cf0e] 4cdf 3400                 movem.l    (a7)+,a2/a4-a5
[0003cf12] 4e75                      rts

put_string:
[0003cf14] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0003cf18] 2848                      movea.l    a0,a4
[0003cf1a] 2449                      movea.l    a1,a2
[0003cf1c] 2049                      movea.l    a1,a0
[0003cf1e] 4eb9 0007 69b0            jsr        strlen
[0003cf24] 2600                      move.l     d0,d3
[0003cf26] 47f9 000f ff04            lea.l      buffer,a3
[0003cf2c] 602c                      bra.s      put_string_1
put_string_2:
[0003cf2e] 203c 0000 2000            move.l     #$00002000,d0
[0003cf34] 224a                      movea.l    a2,a1
[0003cf36] 204b                      movea.l    a3,a0
[0003cf38] 4eb9 0007 6f44            jsr        memcpy
[0003cf3e] 203c 0000 2000            move.l     #$00002000,d0
[0003cf44] 224b                      movea.l    a3,a1
[0003cf46] 206c 0014                 movea.l    20(a4),a0
[0003cf4a] 4eb9 0003 d8ea            jsr        put_block
[0003cf50] 96bc 0000 2000            sub.l      #$00002000,d3
[0003cf56] 45ea 2000                 lea.l      8192(a2),a2
put_string_1:
[0003cf5a] b6bc 0000 2000            cmp.l      #$00002000,d3
[0003cf60] 6ecc                      bgt.s      put_string_2
[0003cf62] 2003                      move.l     d3,d0
[0003cf64] 224a                      movea.l    a2,a1
[0003cf66] 204b                      movea.l    a3,a0
[0003cf68] 4eb9 0007 6f44            jsr        memcpy
[0003cf6e] 2003                      move.l     d3,d0
[0003cf70] 224b                      movea.l    a3,a1
[0003cf72] 206c 0014                 movea.l    20(a4),a0
[0003cf76] 4eb9 0003 d8ea            jsr        put_block
[0003cf7c] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003cf80] 4e75                      rts

edit_service_23:
edit_service:
[0003cf82] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003cf86] 2448                      movea.l    a0,a2
[0003cf88] 3600                      move.w     d0,d3
[0003cf8a] 2849                      movea.l    a1,a4
[0003cf8c] 2650                      movea.l    (a0),a3
[0003cf8e] b07c 00cd                 cmp.w      #$00CD,d0
[0003cf92] 6700 00ce                 beq        edit_service_1
[0003cf96] 6e40                      bgt.s      edit_service_2
[0003cf98] b07c 00c9                 cmp.w      #$00C9,d0
[0003cf9c] 6700 013e                 beq        edit_service_3
[0003cfa0] 6e1e                      bgt.s      edit_service_4
[0003cfa2] 5540                      subq.w     #2,d0
[0003cfa4] 675c                      beq.s      edit_service_5
[0003cfa6] 907c 000d                 sub.w      #$000D,d0
[0003cfaa] 6700 0184                 beq        edit_service_6
[0003cfae] 5540                      subq.w     #2,d0
[0003cfb0] 6700 01ac                 beq        edit_service_7
[0003cfb4] 907c 00b7                 sub.w      #$00B7,d0
[0003cfb8] 6700 007e                 beq.w      edit_service_8
[0003cfbc] 6000 0192                 bra        edit_service_9
edit_service_4:
[0003cfc0] 907c 00ca                 sub.w      #$00CA,d0
[0003cfc4] 6700 012a                 beq        edit_service_10
[0003cfc8] 5340                      subq.w     #1,d0
[0003cfca] 6700 00b8                 beq        edit_service_11
[0003cfce] 5340                      subq.w     #1,d0
[0003cfd0] 6700 00de                 beq        edit_service_12
[0003cfd4] 6000 017a                 bra        edit_service_9
edit_service_2:
[0003cfd8] 907c 00ce                 sub.w      #$00CE,d0
[0003cfdc] b07c 0009                 cmp.w      #$0009,d0
[0003cfe0] 6200 016e                 bhi        edit_service_9
[0003cfe4] d040                      add.w      d0,d0
[0003cfe6] 303b 0006                 move.w     $0003CFEE(pc,d0.w),d0
[0003cfea] 4efb 0002                 jmp        $0003CFEE(pc,d0.w)
J32:
[0003cfee] 0052                      dc.w $0052   ; edit_service_13-J32
[0003cff0] 0060                      dc.w $0060   ; edit_service_14-J32
[0003cff2] 0044                      dc.w $0044   ; edit_service_15-J32
[0003cff4] 0162                      dc.w $0162   ; edit_service_9-J32
[0003cff6] 0162                      dc.w $0162   ; edit_service_9-J32
[0003cff8] 008c                      dc.w $008c   ; edit_service_16-J32
[0003cffa] 0080                      dc.w $0080   ; edit_service_17-J32
[0003cffc] 001e                      dc.w $001e   ; edit_service_18-J32
[0003cffe] 0138                      dc.w $0138   ; edit_service_19-J32
[0003d000] 0154                      dc.w $0154   ; edit_service_20-J32
edit_service_5:
[0003d002] 204a                      dc.w $204a   ; edit_service_21-J32
[0003d004] 6100                      dc.w $6100   ; edit_service_22-J32
[0003d006] fd92                      dc.w $fd92   ; edit_service_23-J32
[0003d008] 6000                      dc.w $6000   ; edit_service_24-J32
[0003d00a] 0154                      dc.w $0154   ; edit_service_20-J32
edit_service_18:
[0003d00c] 200c                      move.l     a4,d0
[0003d00e] 6714                      beq.s      edit_service_25
[0003d010] 422b 00a8                 clr.b      168(a3)
[0003d014] 224c                      movea.l    a4,a1
[0003d016] 41eb 00a8                 lea.l      168(a3),a0
[0003d01a] 700f                      moveq.l    #15,d0
[0003d01c] 4eb9 0007 69da            jsr        strncat
[0003d022] 6004                      bra.s      edit_service_26
edit_service_25:
[0003d024] 422b 00a8                 clr.b      168(a3)
edit_service_26:
[0003d028] 204a                      movea.l    a2,a0
[0003d02a] 6100 e25c                 bsr        set_icon
[0003d02e] 6000 012e                 bra        edit_service_7
edit_service_15:
[0003d032] 268c                      move.l     a4,(a3)
[0003d034] 6000 0128                 bra        edit_service_7
edit_service_8:
[0003d038] 28aa 0014                 move.l     20(a2),(a4)
[0003d03c] 6000 0120                 bra        edit_service_7
edit_service_13:
[0003d040] 224c                      movea.l    a4,a1
[0003d042] 206a 0014                 movea.l    20(a2),a0
[0003d046] 6100 fe38                 bsr        get_all
[0003d04a] 6000 0112                 bra        edit_service_7
edit_service_14:
[0003d04e] 224c                      movea.l    a4,a1
[0003d050] 303c 00fb                 move.w     #$00FB,d0
[0003d054] 206a 0014                 movea.l    20(a2),a0
[0003d058] 4eb9 0003 8e52            jsr        Auo_editor
[0003d05e] 6000 00fe                 bra        edit_service_7
edit_service_1:
[0003d062] 224c                      movea.l    a4,a1
[0003d064] 204a                      movea.l    a2,a0
[0003d066] 6100 feac                 bsr        put_string
[0003d06a] 6000 00f2                 bra        edit_service_7
edit_service_17:
[0003d06e] 206a 0014                 movea.l    20(a2),a0
[0003d072] 6100 e2a4                 bsr        home
[0003d076] 6000 00e6                 bra        edit_service_7
edit_service_16:
[0003d07a] 204a                      movea.l    a2,a0
[0003d07c] 6100 e30a                 bsr        undirty
[0003d080] 6000 00dc                 bra        edit_service_7
edit_service_11:
[0003d084] 7020                      moveq.l    #32,d0
[0003d086] 224c                      movea.l    a4,a1
[0003d088] 41eb 0068                 lea.l      104(a3),a0
[0003d08c] 4eb9 0007 6a1a            jsr        strncpy
[0003d092] 422b 0087                 clr.b      135(a3)
[0003d096] 303c 0080                 move.w     #$0080,d0
[0003d09a] c06b 0294                 and.w      660(a3),d0
[0003d09e] 6600 00be                 bne        edit_service_7
[0003d0a2] 43eb 0068                 lea.l      104(a3),a1
[0003d0a6] 204a                      movea.l    a2,a0
[0003d0a8] 6100 fd92                 bsr        set_title
[0003d0ac] 6000 00b0                 bra        edit_service_7
edit_service_12:
[0003d0b0] 7020                      moveq.l    #32,d0
[0003d0b2] 224c                      movea.l    a4,a1
[0003d0b4] 41eb 0088                 lea.l      136(a3),a0
[0003d0b8] 4eb9 0007 6a1a            jsr        strncpy
[0003d0be] 422b 00a7                 clr.b      167(a3)
[0003d0c2] 303c 0080                 move.w     #$0080,d0
[0003d0c6] c06b 0294                 and.w      660(a3),d0
[0003d0ca] 6700 0092                 beq        edit_service_7
[0003d0ce] 43eb 0088                 lea.l      136(a3),a1
[0003d0d2] 204a                      movea.l    a2,a0
[0003d0d4] 6100 fd66                 bsr        set_title
[0003d0d8] 6000 0084                 bra        edit_service_7
edit_service_3:
[0003d0dc] 7010                      moveq.l    #16,d0
[0003d0de] 224c                      movea.l    a4,a1
[0003d0e0] 41eb 0182                 lea.l      386(a3),a0
[0003d0e4] 4eb9 0007 6a1a            jsr        strncpy
[0003d0ea] 422b 0191                 clr.b      401(a3)
[0003d0ee] 606e                      bra.s      edit_service_7
edit_service_10:
[0003d0f0] 200c                      move.l     a4,d0
[0003d0f2] 6626                      bne.s      edit_service_27
[0003d0f4] 486b 0182                 pea.l      386(a3)
[0003d0f8] 43eb 0192                 lea.l      402(a3),a1
[0003d0fc] 41eb 0008                 lea.l      8(a3),a0
[0003d100] 4eb9 0005 ff74            jsr        Af_select
[0003d106] 584f                      addq.w     #4,a7
[0003d108] 2a48                      movea.l    a0,a5
[0003d10a] 200d                      move.l     a5,d0
[0003d10c] 6750                      beq.s      edit_service_7
[0003d10e] 224d                      movea.l    a5,a1
[0003d110] 204a                      movea.l    a2,a0
[0003d112] 4eb9 0003 d9fa            jsr        open_file
[0003d118] 6044                      bra.s      edit_service_7
edit_service_27:
[0003d11a] 224c                      movea.l    a4,a1
[0003d11c] 204a                      movea.l    a2,a0
[0003d11e] 4eb9 0003 d9fa            jsr        open_file
[0003d124] 6038                      bra.s      edit_service_7
edit_service_19:
[0003d126] 204a                      movea.l    a2,a0
[0003d128] 4eb9 0003 e142            jsr        ed_save
[0003d12e] 602e                      bra.s      edit_service_7
edit_service_6:
[0003d130] 4bf9 000c 733e            lea.l      WIED_INFOBOX,a5
[0003d136] 224d                      movea.l    a5,a1
[0003d138] 204d                      movea.l    a5,a0
[0003d13a] 4eb9 0005 1612            jsr        Awi_doform
[0003d140] 601c                      bra.s      edit_service_7
edit_service_20:
[0003d142] 43eb 0192                 lea.l      402(a3),a1
[0003d146] 204c                      movea.l    a4,a0
[0003d148] 4eb9 0007 6950            jsr        strcpy
[0003d14e] 600e                      bra.s      edit_service_7
edit_service_9:
[0003d150] 224c                      movea.l    a4,a1
[0003d152] 3003                      move.w     d3,d0
[0003d154] 204a                      movea.l    a2,a0
[0003d156] 4eb9 0005 1276            jsr        Awi_service
[0003d15c] 6002                      bra.s      edit_service_28
edit_service_7:
[0003d15e] 7001                      moveq.l    #1,d0
edit_service_28:
[0003d160] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003d164] 4e75                      rts
edit_service_21:
edit_service_24:
edit_service_22:

edit_moved:
[0003d166] 2f0b                      move.l     a3,-(a7)
[0003d168] 2f0c                      move.l     a4,-(a7)
[0003d16a] 594f                      subq.w     #4,a7
[0003d16c] 2648                      movea.l    a0,a3
[0003d16e] 2849                      movea.l    a1,a4
[0003d170] 2f39 000d 99d6            move.l     _globl,-(a7)
[0003d176] 486f 0004                 pea.l      4(a7)
[0003d17a] 486f 0008                 pea.l      8(a7)
[0003d17e] 4267                      clr.w      -(a7)
[0003d180] 4267                      clr.w      -(a7)
[0003d182] 4267                      clr.w      -(a7)
[0003d184] 43ef 0012                 lea.l      18(a7),a1
[0003d188] 41ef 0014                 lea.l      20(a7),a0
[0003d18c] 4242                      clr.w      d2
[0003d18e] 322b 0022                 move.w     34(a3),d1
[0003d192] 7001                      moveq.l    #1,d0
[0003d194] 4eb9 0006 d60a            jsr        mt_wind_calc
[0003d19a] 4fef 0012                 lea.l      18(a7),a7
[0003d19e] 7008                      moveq.l    #8,d0
[0003d1a0] d054                      add.w      (a4),d0
[0003d1a2] c07c fff0                 and.w      #$FFF0,d0
[0003d1a6] 906f 0002                 sub.w      2(a7),d0
[0003d1aa] 3880                      move.w     d0,(a4)
[0003d1ac] 224c                      movea.l    a4,a1
[0003d1ae] 204b                      movea.l    a3,a0
[0003d1b0] 4eb9 0005 07bc            jsr        Awi_moved
[0003d1b6] 584f                      addq.w     #4,a7
[0003d1b8] 285f                      movea.l    (a7)+,a4
[0003d1ba] 265f                      movea.l    (a7)+,a3
[0003d1bc] 4e75                      rts

edit_sized:
[0003d1be] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003d1c2] 594f                      subq.w     #4,a7
[0003d1c4] 2448                      movea.l    a0,a2
[0003d1c6] 2a49                      movea.l    a1,a5
[0003d1c8] 266a 0014                 movea.l    20(a2),a3
[0003d1cc] 286a 005e                 movea.l    94(a2),a4
[0003d1d0] 2f39 000d 99d6            move.l     _globl,-(a7)
[0003d1d6] 486b 0016                 pea.l      22(a3)
[0003d1da] 486b 0014                 pea.l      20(a3)
[0003d1de] 3f2d 0006                 move.w     6(a5),-(a7)
[0003d1e2] 3f2d 0004                 move.w     4(a5),-(a7)
[0003d1e6] 4267                      clr.w      -(a7)
[0003d1e8] 43ef 0012                 lea.l      18(a7),a1
[0003d1ec] 41ef 0014                 lea.l      20(a7),a0
[0003d1f0] 4242                      clr.w      d2
[0003d1f2] 322a 0022                 move.w     34(a2),d1
[0003d1f6] 7001                      moveq.l    #1,d0
[0003d1f8] 4eb9 0006 d60a            jsr        mt_wind_calc
[0003d1fe] 4fef 0012                 lea.l      18(a7),a7
[0003d202] 7008                      moveq.l    #8,d0
[0003d204] d055                      add.w      (a5),d0
[0003d206] c07c fff0                 and.w      #$FFF0,d0
[0003d20a] 906f 0002                 sub.w      2(a7),d0
[0003d20e] 3a80                      move.w     d0,(a5)
[0003d210] 220c                      move.l     a4,d1
[0003d212] 6716                      beq.s      edit_sized_1
[0003d214] 302c 0002                 move.w     2(a4),d0
[0003d218] 48c0                      ext.l      d0
[0003d21a] 2400                      move.l     d0,d2
[0003d21c] d482                      add.l      d2,d2
[0003d21e] d480                      add.l      d0,d2
[0003d220] e78a                      lsl.l      #3,d2
[0003d222] 3234 2816                 move.w     22(a4,d2.l),d1
[0003d226] 936b 0016                 sub.w      d1,22(a3)
edit_sized_1:
[0003d22a] 202a 0018                 move.l     24(a2),d0
[0003d22e] 670a                      beq.s      edit_sized_2
[0003d230] 2040                      movea.l    d0,a0
[0003d232] 3228 0016                 move.w     22(a0),d1
[0003d236] 936b 0016                 sub.w      d1,22(a3)
edit_sized_2:
[0003d23a] 93c9                      suba.l     a1,a1
[0003d23c] 303c 00ee                 move.w     #$00EE,d0
[0003d240] 204b                      movea.l    a3,a0
[0003d242] 4eb9 0003 8e52            jsr        Auo_editor
[0003d248] 93c9                      suba.l     a1,a1
[0003d24a] 303c 00fd                 move.w     #$00FD,d0
[0003d24e] 204b                      movea.l    a3,a0
[0003d250] 4eb9 0003 8e52            jsr        Auo_editor
[0003d256] 224d                      movea.l    a5,a1
[0003d258] 204a                      movea.l    a2,a0
[0003d25a] 4eb9 0005 06ca            jsr        Awi_sized
[0003d260] 584f                      addq.w     #4,a7
[0003d262] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003d266] 4e75                      rts

edit_vslid:
[0003d268] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003d26c] 554f                      subq.w     #2,a7
[0003d26e] 3e80                      move.w     d0,(a7)
[0003d270] 2468 0014                 movea.l    20(a0),a2
[0003d274] 45ea 0078                 lea.l      120(a2),a2
[0003d278] 266a 000c                 movea.l    12(a2),a3
[0003d27c] 43d7                      lea.l      (a7),a1
[0003d27e] 204a                      movea.l    a2,a0
[0003d280] 286b 0008                 movea.l    8(a3),a4
[0003d284] 706a                      moveq.l    #106,d0
[0003d286] 4e94                      jsr        (a4)
[0003d288] 93c9                      suba.l     a1,a1
[0003d28a] 7005                      moveq.l    #5,d0
[0003d28c] 204a                      movea.l    a2,a0
[0003d28e] 286b 0008                 movea.l    8(a3),a4
[0003d292] 4e94                      jsr        (a4)
[0003d294] 93c9                      suba.l     a1,a1
[0003d296] 7069                      moveq.l    #105,d0
[0003d298] 204a                      movea.l    a2,a0
[0003d29a] 286b 0008                 movea.l    8(a3),a4
[0003d29e] 4e94                      jsr        (a4)
[0003d2a0] 544f                      addq.w     #2,a7
[0003d2a2] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003d2a6] 4e75                      rts

Aed_copy:
[0003d2a8] 323c 8463                 move.w     #$8463,d1
[0003d2ac] 4240                      clr.w      d0
[0003d2ae] 2079 0010 1f12            movea.l    ACSblk,a0
[0003d2b4] 2068 0258                 movea.l    600(a0),a0
[0003d2b8] 6100 e16c                 bsr        edit_key
[0003d2bc] 4e75                      rts

Aed_cut:
[0003d2be] 323c 8478                 move.w     #$8478,d1
[0003d2c2] 4240                      clr.w      d0
[0003d2c4] 2079 0010 1f12            movea.l    ACSblk,a0
[0003d2ca] 2068 0258                 movea.l    600(a0),a0
[0003d2ce] 6100 e156                 bsr        edit_key
[0003d2d2] 4e75                      rts

Aed_cutline:
[0003d2d4] 323c 8479                 move.w     #$8479,d1
[0003d2d8] 4240                      clr.w      d0
[0003d2da] 2079 0010 1f12            movea.l    ACSblk,a0
[0003d2e0] 2068 0258                 movea.l    600(a0),a0
[0003d2e4] 6100 e140                 bsr        edit_key
[0003d2e8] 4e75                      rts

find_next:
[0003d2ea] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003d2ee] 4fef ffe0                 lea.l      -32(a7),a7
[0003d2f2] 2468 0014                 movea.l    20(a0),a2
[0003d2f6] 2650                      movea.l    (a0),a3
[0003d2f8] 4beb 0296                 lea.l      662(a3),a5
[0003d2fc] 1015                      move.b     (a5),d0
[0003d2fe] 6700 0108                 beq        find_next_1
[0003d302] 7204                      moveq.l    #4,d1
[0003d304] c26b 0294                 and.w      660(a3),d1
[0003d308] 6710                      beq.s      find_next_2
[0003d30a] 93c9                      suba.l     a1,a1
[0003d30c] 204a                      movea.l    a2,a0
[0003d30e] 303c 00f3                 move.w     #$00F3,d0
[0003d312] 4eb9 0003 8e52            jsr        Auo_editor
[0003d318] 600e                      bra.s      find_next_3
find_next_2:
[0003d31a] 93c9                      suba.l     a1,a1
[0003d31c] 303c 00f4                 move.w     #$00F4,d0
[0003d320] 204a                      movea.l    a2,a0
[0003d322] 4eb9 0003 8e52            jsr        Auo_editor
find_next_3:
[0003d328] 7001                      moveq.l    #1,d0
[0003d32a] c06b 0294                 and.w      660(a3),d0
[0003d32e] 6710                      beq.s      find_next_4
[0003d330] 93c9                      suba.l     a1,a1
[0003d332] 204a                      movea.l    a2,a0
[0003d334] 303c 00f6                 move.w     #$00F6,d0
[0003d338] 4eb9 0003 8e52            jsr        Auo_editor
[0003d33e] 600e                      bra.s      find_next_5
find_next_4:
[0003d340] 93c9                      suba.l     a1,a1
[0003d342] 303c 00f5                 move.w     #$00F5,d0
[0003d346] 204a                      movea.l    a2,a0
[0003d348] 4eb9 0003 8e52            jsr        Auo_editor
find_next_5:
[0003d34e] 7002                      moveq.l    #2,d0
[0003d350] c06b 0294                 and.w      660(a3),d0
[0003d354] 6710                      beq.s      find_next_6
[0003d356] 93c9                      suba.l     a1,a1
[0003d358] 204a                      movea.l    a2,a0
[0003d35a] 303c 00f7                 move.w     #$00F7,d0
[0003d35e] 4eb9 0003 8e52            jsr        Auo_editor
[0003d364] 600e                      bra.s      find_next_7
find_next_6:
[0003d366] 93c9                      suba.l     a1,a1
[0003d368] 303c 00f8                 move.w     #$00F8,d0
[0003d36c] 204a                      movea.l    a2,a0
[0003d36e] 4eb9 0003 8e52            jsr        Auo_editor
find_next_7:
[0003d374] 93c9                      suba.l     a1,a1
[0003d376] 303c 00d5                 move.w     #$00D5,d0
[0003d37a] 204a                      movea.l    a2,a0
[0003d37c] 4eb9 0003 8e52            jsr        Auo_editor
[0003d382] 49ef 0010                 lea.l      16(a7),a4
[0003d386] 224c                      movea.l    a4,a1
[0003d388] 303c 00e3                 move.w     #$00E3,d0
[0003d38c] 204a                      movea.l    a2,a0
[0003d38e] 4eb9 0003 8e52            jsr        Auo_editor
[0003d394] 224d                      movea.l    a5,a1
[0003d396] 303c 00f2                 move.w     #$00F2,d0
[0003d39a] 204a                      movea.l    a2,a0
[0003d39c] 4eb9 0003 8e52            jsr        Auo_editor
[0003d3a2] 43d7                      lea.l      (a7),a1
[0003d3a4] 303c 00e3                 move.w     #$00E3,d0
[0003d3a8] 204a                      movea.l    a2,a0
[0003d3aa] 4eb9 0003 8e52            jsr        Auo_editor
[0003d3b0] 2017                      move.l     (a7),d0
[0003d3b2] 6b24                      bmi.s      find_next_8
[0003d3b4] 2214                      move.l     (a4),d1
[0003d3b6] b280                      cmp.l      d0,d1
[0003d3b8] 6626                      bne.s      find_next_9
[0003d3ba] 242c 0004                 move.l     4(a4),d2
[0003d3be] b4af 0004                 cmp.l      4(a7),d2
[0003d3c2] 661c                      bne.s      find_next_9
[0003d3c4] 206c 0008                 movea.l    8(a4),a0
[0003d3c8] b1ef 0008                 cmpa.l     8(a7),a0
[0003d3cc] 6612                      bne.s      find_next_9
[0003d3ce] 226c 000c                 movea.l    12(a4),a1
[0003d3d2] b3ef 000c                 cmpa.l     12(a7),a1
[0003d3d6] 6608                      bne.s      find_next_9
find_next_8:
[0003d3d8] 0a6b 0004 0294            eori.w     #$0004,660(a3)
[0003d3de] 601a                      bra.s      find_next_10
find_next_9:
[0003d3e0] 93c9                      suba.l     a1,a1
[0003d3e2] 303c 00db                 move.w     #$00DB,d0
[0003d3e6] 204a                      movea.l    a2,a0
[0003d3e8] 4eb9 0003 8e52            jsr        Auo_editor
[0003d3ee] 93c9                      suba.l     a1,a1
[0003d3f0] 7005                      moveq.l    #5,d0
[0003d3f2] 204a                      movea.l    a2,a0
[0003d3f4] 4eb9 0003 8e52            jsr        Auo_editor
find_next_10:
[0003d3fa] 93c9                      suba.l     a1,a1
[0003d3fc] 303c 00d6                 move.w     #$00D6,d0
[0003d400] 204a                      movea.l    a2,a0
[0003d402] 4eb9 0003 8e52            jsr        Auo_editor
find_next_1:
[0003d408] 4fef 0020                 lea.l      32(a7),a7
[0003d40c] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003d410] 4e75                      rts

Aed_find:
[0003d412] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003d416] 2079 0010 1f12            movea.l    ACSblk,a0
[0003d41c] 2468 0258                 movea.l    600(a0),a2
[0003d420] 2652                      movea.l    (a2),a3
[0003d422] 49f9 000c 7158            lea.l      WIED_FIND,a4
[0003d428] 204c                      movea.l    a4,a0
[0003d42a] 226c 0008                 movea.l    8(a4),a1
[0003d42e] 4e91                      jsr        (a1)
[0003d430] 2a48                      movea.l    a0,a5
[0003d432] 200d                      move.l     a5,d0
[0003d434] 6700 00c8                 beq        Aed_find_1
[0003d438] 43eb 0296                 lea.l      662(a3),a1
[0003d43c] 206d 0014                 movea.l    20(a5),a0
[0003d440] 7003                      moveq.l    #3,d0
[0003d442] 4eb9 0004 afe0            jsr        Aob_puttext
[0003d448] 7002                      moveq.l    #2,d0
[0003d44a] c06b 0294                 and.w      660(a3),d0
[0003d44e] 206d 0014                 movea.l    20(a5),a0
[0003d452] 41e8 00d8                 lea.l      216(a0),a0
[0003d456] 6100 df1c                 bsr        set_select
[0003d45a] 7004                      moveq.l    #4,d0
[0003d45c] c06b 0294                 and.w      660(a3),d0
[0003d460] 206d 0014                 movea.l    20(a5),a0
[0003d464] 41e8 0078                 lea.l      120(a0),a0
[0003d468] 6100 df0a                 bsr        set_select
[0003d46c] 7001                      moveq.l    #1,d0
[0003d46e] c06b 0294                 and.w      660(a3),d0
[0003d472] 206d 0014                 movea.l    20(a5),a0
[0003d476] 41e8 00a8                 lea.l      168(a0),a0
[0003d47a] 6100 def8                 bsr        set_select
[0003d47e] 204d                      movea.l    a5,a0
[0003d480] 4eb9 0005 1292            jsr        Awi_dialog
[0003d486] b07c 000b                 cmp.w      #$000B,d0
[0003d48a] 666a                      bne.s      Aed_find_2
[0003d48c] 43eb 0296                 lea.l      662(a3),a1
[0003d490] 7003                      moveq.l    #3,d0
[0003d492] 206d 0014                 movea.l    20(a5),a0
[0003d496] 4eb9 0004 b154            jsr        Aob_gettext
[0003d49c] 4a40                      tst.w      d0
[0003d49e] 6756                      beq.s      Aed_find_2
[0003d4a0] 43eb 0296                 lea.l      662(a3),a1
[0003d4a4] 41ec 0634                 lea.l      1588(a4),a0
[0003d4a8] 4eb9 0007 6950            jsr        strcpy
[0003d4ae] 026b fff8 0294            andi.w     #$FFF8,660(a3)
[0003d4b4] 7001                      moveq.l    #1,d0
[0003d4b6] 206d 0014                 movea.l    20(a5),a0
[0003d4ba] c068 00e2                 and.w      226(a0),d0
[0003d4be] 6706                      beq.s      Aed_find_3
[0003d4c0] 006b 0002 0294            ori.w      #$0002,660(a3)
Aed_find_3:
[0003d4c6] 7001                      moveq.l    #1,d0
[0003d4c8] 206d 0014                 movea.l    20(a5),a0
[0003d4cc] c068 0082                 and.w      130(a0),d0
[0003d4d0] 6706                      beq.s      Aed_find_4
[0003d4d2] 006b 0004 0294            ori.w      #$0004,660(a3)
Aed_find_4:
[0003d4d8] 7001                      moveq.l    #1,d0
[0003d4da] 206d 0014                 movea.l    20(a5),a0
[0003d4de] c068 00b2                 and.w      178(a0),d0
[0003d4e2] 6706                      beq.s      Aed_find_5
[0003d4e4] 006b 0001 0294            ori.w      #$0001,660(a3)
Aed_find_5:
[0003d4ea] 396b 0294 0632            move.w     660(a3),1586(a4)
[0003d4f0] 204a                      movea.l    a2,a0
[0003d4f2] 6100 fdf6                 bsr        find_next
Aed_find_2:
[0003d4f6] 204d                      movea.l    a5,a0
[0003d4f8] 4eb9 0005 0330            jsr        Awi_delete
Aed_find_1:
[0003d4fe] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003d502] 4e75                      rts

Aed_findnext:
[0003d504] 2079 0010 1f12            movea.l    ACSblk,a0
[0003d50a] 2068 0258                 movea.l    600(a0),a0
[0003d50e] 6100 fdda                 bsr        find_next
[0003d512] 4e75                      rts

Aed_findsel:
[0003d514] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003d518] 4fef ffe4                 lea.l      -28(a7),a7
[0003d51c] 2079 0010 1f12            movea.l    ACSblk,a0
[0003d522] 2468 0258                 movea.l    600(a0),a2
[0003d526] 266a 0014                 movea.l    20(a2),a3
[0003d52a] 2852                      movea.l    (a2),a4
[0003d52c] 43d7                      lea.l      (a7),a1
[0003d52e] 303c 00e3                 move.w     #$00E3,d0
[0003d532] 204b                      movea.l    a3,a0
[0003d534] 4eb9 0003 8e52            jsr        Auo_editor
[0003d53a] 2017                      move.l     (a7),d0
[0003d53c] 6a2c                      bpl.s      Aed_findsel_1
[0003d53e] 93c9                      suba.l     a1,a1
[0003d540] 204b                      movea.l    a3,a0
[0003d542] 303c 00d5                 move.w     #$00D5,d0
[0003d546] 4eb9 0003 8e52            jsr        Auo_editor
[0003d54c] 93c9                      suba.l     a1,a1
[0003d54e] 303c 00fc                 move.w     #$00FC,d0
[0003d552] 204b                      movea.l    a3,a0
[0003d554] 4eb9 0003 8e52            jsr        Auo_editor
[0003d55a] 93c9                      suba.l     a1,a1
[0003d55c] 303c 00d6                 move.w     #$00D6,d0
[0003d560] 204b                      movea.l    a3,a0
[0003d562] 4eb9 0003 8e52            jsr        Auo_editor
[0003d568] 6044                      bra.s      Aed_findsel_2
Aed_findsel_1:
[0003d56a] 4bef 0010                 lea.l      16(a7),a5
[0003d56e] 2a97                      move.l     (a7),(a5)
[0003d570] 224d                      movea.l    a5,a1
[0003d572] 303c 00ca                 move.w     #$00CA,d0
[0003d576] 204b                      movea.l    a3,a0
[0003d578] 4eb9 0003 8e52            jsr        Auo_editor
[0003d57e] 263c 0000 00ff            move.l     #$000000FF,d3
[0003d584] 202d 0004                 move.l     4(a5),d0
[0003d588] 6f24                      ble.s      Aed_findsel_2
[0003d58a] b680                      cmp.l      d0,d3
[0003d58c] 6f02                      ble.s      Aed_findsel_3
[0003d58e] 2600                      move.l     d0,d3
Aed_findsel_3:
[0003d590] 2003                      move.l     d3,d0
[0003d592] 226d 0008                 movea.l    8(a5),a1
[0003d596] 41ec 0296                 lea.l      662(a4),a0
[0003d59a] 4eb9 0007 6a1a            jsr        strncpy
[0003d5a0] 41f4 3800                 lea.l      0(a4,d3.l),a0
[0003d5a4] 4228 0296                 clr.b      662(a0)
[0003d5a8] 204a                      movea.l    a2,a0
[0003d5aa] 6100 fd3e                 bsr        find_next
Aed_findsel_2:
[0003d5ae] 4fef 001c                 lea.l      28(a7),a7
[0003d5b2] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003d5b6] 4e75                      rts

Aed_font:
[0003d5b8] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0003d5bc] 4fef fff4                 lea.l      -12(a7),a7
[0003d5c0] 2079 0010 1f12            movea.l    ACSblk,a0
[0003d5c6] 2468 0258                 movea.l    600(a0),a2
[0003d5ca] 2652                      movea.l    (a2),a3
[0003d5cc] 4243                      clr.w      d3
[0003d5ce] 49ef 0006                 lea.l      6(a7),a4
[0003d5d2] 2f39 000d 99d6            move.l     _globl,-(a7)
[0003d5d8] 486f 0008                 pea.l      8(a7)
[0003d5dc] 4854                      pea.l      (a4)
[0003d5de] 224c                      movea.l    a4,a1
[0003d5e0] 204c                      movea.l    a4,a0
[0003d5e2] 4eb9 0006 c978            jsr        mt_graf_mkstate
[0003d5e8] 4fef 000c                 lea.l      12(a7),a7
[0003d5ec] 7003                      moveq.l    #3,d0
[0003d5ee] c06f 0004                 and.w      4(a7),d0
[0003d5f2] 6600 0084                 bne        Aed_font_1
[0003d5f6] 41ef 0008                 lea.l      8(a7),a0
[0003d5fa] 203c 7846 534c            move.l     #$7846534C,d0
[0003d600] 4eb9 0007 2bf4            jsr        Ash_getcookie
[0003d606] 4a40                      tst.w      d0
[0003d608] 676e                      beq.s      Aed_font_1
[0003d60a] 3f6b 017c 0002            move.w     380(a3),2(a7)
[0003d610] 3eab 017e                 move.w     382(a3),(a7)
[0003d614] 4857                      pea.l      (a7)
[0003d616] 486f 0006                 pea.l      6(a7)
[0003d61a] 4879 000c 85f5            pea.l      $000C85F5
[0003d620] 3f3c 00fb                 move.w     #$00FB,-(a7)
[0003d624] 4267                      clr.w      -(a7)
[0003d626] 206f 0018                 movea.l    24(a7),a0
[0003d62a] 2068 000c                 movea.l    12(a0),a0
[0003d62e] 4e90                      jsr        (a0)
[0003d630] 4fef 0010                 lea.l      16(a7),a7
[0003d634] 3800                      move.w     d0,d4
[0003d636] 4a40                      tst.w      d0
[0003d638] 6b3c                      bmi.s      Aed_font_2
[0003d63a] 7601                      moveq.l    #1,d3
[0003d63c] 376f 0002 017c            move.w     2(a7),380(a3)
[0003d642] 322f 0002                 move.w     2(a7),d1
[0003d646] 2079 0010 1f12            movea.l    ACSblk,a0
[0003d64c] 3028 0010                 move.w     16(a0),d0
[0003d650] 4eb9 0006 5216            jsr        vst_font
[0003d656] 4854                      pea.l      (a4)
[0003d658] 4854                      pea.l      (a4)
[0003d65a] 43eb 017e                 lea.l      382(a3),a1
[0003d65e] 204c                      movea.l    a4,a0
[0003d660] 322f 0008                 move.w     8(a7),d1
[0003d664] 2a79 0010 1f12            movea.l    ACSblk,a5
[0003d66a] 302d 0010                 move.w     16(a5),d0
[0003d66e] 4eb9 0006 5132            jsr        vst_point
[0003d674] 504f                      addq.w     #8,a7
Aed_font_2:
[0003d676] 5344                      subq.w     #1,d4
Aed_font_1:
[0003d678] 4a43                      tst.w      d3
[0003d67a] 6612                      bne.s      Aed_font_3
[0003d67c] 4240                      clr.w      d0
[0003d67e] 43eb 017e                 lea.l      382(a3),a1
[0003d682] 41eb 017c                 lea.l      380(a3),a0
[0003d686] 4eb9 0003 f748            jsr        A_fontsel
[0003d68c] 3800                      move.w     d0,d4
Aed_font_3:
[0003d68e] 4a44                      tst.w      d4
[0003d690] 6600 008e                 bne        Aed_font_4
[0003d694] 33eb 017c 000c 7672       move.w     380(a3),$000C7672
[0003d69c] 33eb 017e 000c 7674       move.w     382(a3),$000C7674
[0003d6a4] 286a 0014                 movea.l    20(a2),a4
[0003d6a8] 93c9                      suba.l     a1,a1
[0003d6aa] 303c 00d5                 move.w     #$00D5,d0
[0003d6ae] 204c                      movea.l    a4,a0
[0003d6b0] 4eb9 0003 8e52            jsr        Auo_editor
[0003d6b6] 93c9                      suba.l     a1,a1
[0003d6b8] 303c 00db                 move.w     #$00DB,d0
[0003d6bc] 204c                      movea.l    a4,a0
[0003d6be] 4eb9 0003 8e52            jsr        Auo_editor
[0003d6c4] 43eb 017c                 lea.l      380(a3),a1
[0003d6c8] 303c 00cf                 move.w     #$00CF,d0
[0003d6cc] 204c                      movea.l    a4,a0
[0003d6ce] 4eb9 0003 8e52            jsr        Auo_editor
[0003d6d4] 43eb 017e                 lea.l      382(a3),a1
[0003d6d8] 303c 00d0                 move.w     #$00D0,d0
[0003d6dc] 204c                      movea.l    a4,a0
[0003d6de] 4eb9 0003 8e52            jsr        Auo_editor
[0003d6e4] 93c9                      suba.l     a1,a1
[0003d6e6] 303c 00ee                 move.w     #$00EE,d0
[0003d6ea] 204c                      movea.l    a4,a0
[0003d6ec] 4eb9 0003 8e52            jsr        Auo_editor
[0003d6f2] 93c9                      suba.l     a1,a1
[0003d6f4] 303c 00fd                 move.w     #$00FD,d0
[0003d6f8] 204c                      movea.l    a4,a0
[0003d6fa] 4eb9 0003 8e52            jsr        Auo_editor
[0003d700] 93c9                      suba.l     a1,a1
[0003d702] 303c 00d6                 move.w     #$00D6,d0
[0003d706] 204c                      movea.l    a4,a0
[0003d708] 4eb9 0003 8e52            jsr        Auo_editor
[0003d70e] 006a 0010 0056            ori.w      #$0010,86(a2)
[0003d714] 43ea 0024                 lea.l      36(a2),a1
[0003d718] 204a                      movea.l    a2,a0
[0003d71a] 4eb9 0005 06ca            jsr        Awi_sized
Aed_font_4:
[0003d720] 4fef 000c                 lea.l      12(a7),a7
[0003d724] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0003d728] 4e75                      rts

Aed_gotoline:
[0003d72a] 2f0a                      move.l     a2,-(a7)
[0003d72c] 2f0b                      move.l     a3,-(a7)
[0003d72e] 594f                      subq.w     #4,a7
[0003d730] 41f9 000c 71fa            lea.l      WIED_GOTOLINE,a0
[0003d736] 2279 000c 7202            movea.l    $000C7202,a1
[0003d73c] 4e91                      jsr        (a1)
[0003d73e] 2448                      movea.l    a0,a2
[0003d740] 200a                      move.l     a2,d0
[0003d742] 6700 00b8                 beq        Aed_gotoline_1
[0003d746] 2279 0010 1f12            movea.l    ACSblk,a1
[0003d74c] 2069 0258                 movea.l    600(a1),a0
[0003d750] 2668 0014                 movea.l    20(a0),a3
[0003d754] 43d7                      lea.l      (a7),a1
[0003d756] 303c 00d8                 move.w     #$00D8,d0
[0003d75a] 204b                      movea.l    a3,a0
[0003d75c] 4eb9 0003 8e52            jsr        Auo_editor
[0003d762] 7001                      moveq.l    #1,d0
[0003d764] d097                      add.l      (a7),d0
[0003d766] 2f00                      move.l     d0,-(a7)
[0003d768] 43f9 000c 85fd            lea.l      $000C85FD,a1
[0003d76e] 206a 0014                 movea.l    20(a2),a0
[0003d772] 7004                      moveq.l    #4,d0
[0003d774] 4eb9 0004 afac            jsr        Aob_printf
[0003d77a] 584f                      addq.w     #4,a7
[0003d77c] 204a                      movea.l    a2,a0
[0003d77e] 4eb9 0005 1292            jsr        Awi_dialog
[0003d784] 5b40                      subq.w     #5,d0
[0003d786] 666c                      bne.s      Aed_gotoline_2
[0003d788] 4857                      pea.l      (a7)
[0003d78a] 43f9 000c 85fd            lea.l      $000C85FD,a1
[0003d790] 7004                      moveq.l    #4,d0
[0003d792] 206a 0014                 movea.l    20(a2),a0
[0003d796] 4eb9 0004 b0b2            jsr        Aob_scanf
[0003d79c] 584f                      addq.w     #4,a7
[0003d79e] 2017                      move.l     (a7),d0
[0003d7a0] 6f02                      ble.s      Aed_gotoline_3
[0003d7a2] 5397                      subq.l     #1,(a7)
Aed_gotoline_3:
[0003d7a4] 93c9                      suba.l     a1,a1
[0003d7a6] 303c 00d5                 move.w     #$00D5,d0
[0003d7aa] 204b                      movea.l    a3,a0
[0003d7ac] 4eb9 0003 8e52            jsr        Auo_editor
[0003d7b2] 93c9                      suba.l     a1,a1
[0003d7b4] 303c 00e2                 move.w     #$00E2,d0
[0003d7b8] 204b                      movea.l    a3,a0
[0003d7ba] 4eb9 0003 8e52            jsr        Auo_editor
[0003d7c0] 43d7                      lea.l      (a7),a1
[0003d7c2] 7011                      moveq.l    #17,d0
[0003d7c4] 204b                      movea.l    a3,a0
[0003d7c6] 4eb9 0003 8e52            jsr        Auo_editor
[0003d7cc] 93c9                      suba.l     a1,a1
[0003d7ce] 303c 00db                 move.w     #$00DB,d0
[0003d7d2] 204b                      movea.l    a3,a0
[0003d7d4] 4eb9 0003 8e52            jsr        Auo_editor
[0003d7da] 93c9                      suba.l     a1,a1
[0003d7dc] 7005                      moveq.l    #5,d0
[0003d7de] 204b                      movea.l    a3,a0
[0003d7e0] 4eb9 0003 8e52            jsr        Auo_editor
[0003d7e6] 93c9                      suba.l     a1,a1
[0003d7e8] 303c 00d6                 move.w     #$00D6,d0
[0003d7ec] 204b                      movea.l    a3,a0
[0003d7ee] 4eb9 0003 8e52            jsr        Auo_editor
Aed_gotoline_2:
[0003d7f4] 204a                      movea.l    a2,a0
[0003d7f6] 4eb9 0005 0330            jsr        Awi_delete
Aed_gotoline_1:
[0003d7fc] 584f                      addq.w     #4,a7
[0003d7fe] 265f                      movea.l    (a7)+,a3
[0003d800] 245f                      movea.l    (a7)+,a2
[0003d802] 4e75                      rts

Aed_info:
[0003d804] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0003d808] 4fef ffdc                 lea.l      -36(a7),a7
[0003d80c] 41f9 000c 729c            lea.l      WIED_INFO,a0
[0003d812] 2279 000c 72a4            movea.l    $000C72A4,a1
[0003d818] 4e91                      jsr        (a1)
[0003d81a] 2448                      movea.l    a0,a2
[0003d81c] 200a                      move.l     a2,d0
[0003d81e] 6700 00c0                 beq        Aed_info_1
[0003d822] 2279 0010 1f12            movea.l    ACSblk,a1
[0003d828] 2069 0258                 movea.l    600(a1),a0
[0003d82c] 2668 0014                 movea.l    20(a0),a3
[0003d830] 43ef 0014                 lea.l      20(a7),a1
[0003d834] 303c 00e3                 move.w     #$00E3,d0
[0003d838] 204b                      movea.l    a3,a0
[0003d83a] 4eb9 0003 8e52            jsr        Auo_editor
[0003d840] 49ef 0004                 lea.l      4(a7),a4
[0003d844] 202f 0014                 move.l     20(a7),d0
[0003d848] 6a1e                      bpl.s      Aed_info_2
[0003d84a] 43d7                      lea.l      (a7),a1
[0003d84c] 204b                      movea.l    a3,a0
[0003d84e] 303c 00e9                 move.w     #$00E9,d0
[0003d852] 4eb9 0003 8e52            jsr        Auo_editor
[0003d858] 224c                      movea.l    a4,a1
[0003d85a] 303c 00fb                 move.w     #$00FB,d0
[0003d85e] 204b                      movea.l    a3,a0
[0003d860] 4eb9 0003 8e52            jsr        Auo_editor
[0003d866] 603c                      bra.s      Aed_info_3
Aed_info_2:
[0003d868] 202f 0014                 move.l     20(a7),d0
[0003d86c] 262f 001c                 move.l     28(a7),d3
[0003d870] 2203                      move.l     d3,d1
[0003d872] 9280                      sub.l      d0,d1
[0003d874] 5281                      addq.l     #1,d1
[0003d876] 2e81                      move.l     d1,(a7)
[0003d878] 28bc ffff fffe            move.l     #$FFFFFFFE,(a4)
[0003d87e] 2800                      move.l     d0,d4
[0003d880] 4bef 0008                 lea.l      8(a7),a5
[0003d884] 601a                      bra.s      Aed_info_4
Aed_info_5:
[0003d886] 2a84                      move.l     d4,(a5)
[0003d888] 224d                      movea.l    a5,a1
[0003d88a] 303c 00ca                 move.w     #$00CA,d0
[0003d88e] 204b                      movea.l    a3,a0
[0003d890] 4eb9 0003 8e52            jsr        Auo_editor
[0003d896] 7002                      moveq.l    #2,d0
[0003d898] d0ad 0004                 add.l      4(a5),d0
[0003d89c] d194                      add.l      d0,(a4)
[0003d89e] 5284                      addq.l     #1,d4
Aed_info_4:
[0003d8a0] b684                      cmp.l      d4,d3
[0003d8a2] 6ce2                      bge.s      Aed_info_5
Aed_info_3:
[0003d8a4] 2f17                      move.l     (a7),-(a7)
[0003d8a6] 43f9 000c 85fd            lea.l      $000C85FD,a1
[0003d8ac] 7004                      moveq.l    #4,d0
[0003d8ae] 206a 0014                 movea.l    20(a2),a0
[0003d8b2] 4eb9 0004 afac            jsr        Aob_printf
[0003d8b8] 584f                      addq.w     #4,a7
[0003d8ba] 2f14                      move.l     (a4),-(a7)
[0003d8bc] 43f9 000c 85fd            lea.l      $000C85FD,a1
[0003d8c2] 7006                      moveq.l    #6,d0
[0003d8c4] 206a 0014                 movea.l    20(a2),a0
[0003d8c8] 4eb9 0004 afac            jsr        Aob_printf
[0003d8ce] 584f                      addq.w     #4,a7
[0003d8d0] 204a                      movea.l    a2,a0
[0003d8d2] 4eb9 0005 1292            jsr        Awi_dialog
[0003d8d8] 204a                      movea.l    a2,a0
[0003d8da] 4eb9 0005 0330            jsr        Awi_delete
Aed_info_1:
[0003d8e0] 4fef 0024                 lea.l      36(a7),a7
[0003d8e4] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0003d8e8] 4e75                      rts

put_block:
[0003d8ea] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0003d8ee] 4fef ffdc                 lea.l      -36(a7),a7
[0003d8f2] 2448                      movea.l    a0,a2
[0003d8f4] 2f49 0020                 move.l     a1,32(a7)
[0003d8f8] 2600                      move.l     d0,d3
[0003d8fa] 4a80                      tst.l      d0
[0003d8fc] 6f00 00aa                 ble        put_block_1
[0003d900] 4231 0800                 clr.b      0(a1,d0.l)
[0003d904] e588                      lsl.l      #2,d0
[0003d906] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003d90c] 2648                      movea.l    a0,a3
[0003d90e] 200b                      move.l     a3,d0
[0003d910] 6700 0096                 beq        put_block_1
[0003d914] 49ef 0008                 lea.l      8(a7),a4
[0003d918] 294b 0014                 move.l     a3,20(a4)
[0003d91c] 7801                      moveq.l    #1,d4
[0003d91e] 206f 0020                 movea.l    32(a7),a0
[0003d922] 224b                      movea.l    a3,a1
[0003d924] 22c8                      move.l     a0,(a1)+
[0003d926] 6030                      bra.s      put_block_2
put_block_6:
[0003d928] 0c10 000d                 cmpi.b     #$0D,(a0)
[0003d92c] 6612                      bne.s      put_block_3
[0003d92e] 4210                      clr.b      (a0)
[0003d930] 7001                      moveq.l    #1,d0
[0003d932] b083                      cmp.l      d3,d0
[0003d934] 6c1a                      bge.s      put_block_4
[0003d936] 0c28 000a 0001            cmpi.b     #$0A,1(a0)
[0003d93c] 6712                      beq.s      put_block_4
[0003d93e] 6006                      bra.s      put_block_5
put_block_3:
[0003d940] 0c10 000a                 cmpi.b     #$0A,(a0)
[0003d944] 660a                      bne.s      put_block_4
put_block_5:
[0003d946] 4218                      clr.b      (a0)+
[0003d948] 5284                      addq.l     #1,d4
[0003d94a] 22c8                      move.l     a0,(a1)+
[0003d94c] 5383                      subq.l     #1,d3
[0003d94e] 6008                      bra.s      put_block_2
put_block_4:
[0003d950] 5248                      addq.w     #1,a0
[0003d952] 5383                      subq.l     #1,d3
[0003d954] 4a83                      tst.l      d3
[0003d956] 6ed0                      bgt.s      put_block_6
put_block_2:
[0003d958] 4a83                      tst.l      d3
[0003d95a] 6ecc                      bgt.s      put_block_6
[0003d95c] 43d7                      lea.l      (a7),a1
[0003d95e] 303c 00e7                 move.w     #$00E7,d0
[0003d962] 204a                      movea.l    a2,a0
[0003d964] 4eb9 0003 8e52            jsr        Auo_editor
[0003d96a] 43ef 0004                 lea.l      4(a7),a1
[0003d96e] 303c 00d8                 move.w     #$00D8,d0
[0003d972] 204a                      movea.l    a2,a0
[0003d974] 4eb9 0003 8e52            jsr        Auo_editor
[0003d97a] 202f 0004                 move.l     4(a7),d0
[0003d97e] 2940 0008                 move.l     d0,8(a4)
[0003d982] 2880                      move.l     d0,(a4)
[0003d984] 2217                      move.l     (a7),d1
[0003d986] 2941 000c                 move.l     d1,12(a4)
[0003d98a] 2941 0004                 move.l     d1,4(a4)
[0003d98e] 2944 0010                 move.l     d4,16(a4)
[0003d992] 224c                      movea.l    a4,a1
[0003d994] 303c 00ea                 move.w     #$00EA,d0
[0003d998] 204a                      movea.l    a2,a0
[0003d99a] 4eb9 0003 8e52            jsr        Auo_editor
[0003d9a0] 204b                      movea.l    a3,a0
[0003d9a2] 4eb9 0004 7d6c            jsr        Ax_ifree
put_block_1:
[0003d9a8] 4fef 0024                 lea.l      36(a7),a7
[0003d9ac] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[0003d9b0] 4e75                      rts

merge:
[0003d9b2] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0003d9b6] 2448                      movea.l    a0,a2
[0003d9b8] 3600                      move.w     d0,d3
[0003d9ba] 93c9                      suba.l     a1,a1
[0003d9bc] 303c 00e0                 move.w     #$00E0,d0
[0003d9c0] 4eb9 0003 8e52            jsr        Auo_editor
merge_2:
[0003d9c6] 47f9 000f ff04            lea.l      buffer,a3
[0003d9cc] 204b                      movea.l    a3,a0
[0003d9ce] 223c 0000 2000            move.l     #$00002000,d1
[0003d9d4] 3003                      move.w     d3,d0
[0003d9d6] 4eb9 0007 2a02            jsr        Fread
[0003d9dc] 2800                      move.l     d0,d4
[0003d9de] 4a80                      tst.l      d0
[0003d9e0] 6f0a                      ble.s      merge_1
[0003d9e2] 224b                      movea.l    a3,a1
[0003d9e4] 204a                      movea.l    a2,a0
[0003d9e6] 6100 ff02                 bsr        put_block
[0003d9ea] 60da                      bra.s      merge_2
merge_1:
[0003d9ec] 3003                      move.w     d3,d0
[0003d9ee] 4eb9 0007 29ae            jsr        Fclose
[0003d9f4] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0003d9f8] 4e75                      rts

open_file:
[0003d9fa] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003d9fe] 2448                      movea.l    a0,a2
[0003da00] 2a49                      movea.l    a1,a5
[0003da02] 2650                      movea.l    (a0),a3
[0003da04] 286a 0014                 movea.l    20(a2),a4
[0003da08] 4240                      clr.w      d0
[0003da0a] 2049                      movea.l    a1,a0
[0003da0c] 4eb9 0007 29f0            jsr        Fopen
[0003da12] 2600                      move.l     d0,d3
[0003da14] 93c9                      suba.l     a1,a1
[0003da16] 204c                      movea.l    a4,a0
[0003da18] 303c 00d5                 move.w     #$00D5,d0
[0003da1c] 4eb9 0003 8e52            jsr        Auo_editor
[0003da22] 93c9                      suba.l     a1,a1
[0003da24] 303c 00ce                 move.w     #$00CE,d0
[0003da28] 204c                      movea.l    a4,a0
[0003da2a] 4eb9 0003 8e52            jsr        Auo_editor
[0003da30] 4a83                      tst.l      d3
[0003da32] 6f0a                      ble.s      open_file_1
[0003da34] 2003                      move.l     d3,d0
[0003da36] 204c                      movea.l    a4,a0
[0003da38] 6100 ff78                 bsr        merge
[0003da3c] 600e                      bra.s      open_file_2
open_file_1:
[0003da3e] 43f9 000c 8601            lea.l      $000C8601,a1
[0003da44] 204a                      movea.l    a2,a0
[0003da46] 4eb9 0003 ed16            jsr        info_string
open_file_2:
[0003da4c] 93c9                      suba.l     a1,a1
[0003da4e] 7006                      moveq.l    #6,d0
[0003da50] 204c                      movea.l    a4,a0
[0003da52] 4eb9 0003 8e52            jsr        Auo_editor
[0003da58] 93c9                      suba.l     a1,a1
[0003da5a] 303c 00d6                 move.w     #$00D6,d0
[0003da5e] 204c                      movea.l    a4,a0
[0003da60] 4eb9 0003 8e52            jsr        Auo_editor
[0003da66] 204c                      movea.l    a4,a0
[0003da68] 6100 d8ae                 bsr        home
[0003da6c] 224d                      movea.l    a5,a1
[0003da6e] 41eb 0192                 lea.l      402(a3),a0
[0003da72] 4eb9 0007 6950            jsr        strcpy
[0003da78] 204a                      movea.l    a2,a0
[0003da7a] 6100 d80c                 bsr        set_icon
[0003da7e] 204a                      movea.l    a2,a0
[0003da80] 6100 d906                 bsr        undirty
[0003da84] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003da88] 4e75                      rts

Aed_open:
[0003da8a] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003da8e] 2079 0010 1f12            movea.l    ACSblk,a0
[0003da94] 2468 0258                 movea.l    600(a0),a2
[0003da98] 2652                      movea.l    (a2),a3
[0003da9a] 303c 0080                 move.w     #$0080,d0
[0003da9e] c06b 0294                 and.w      660(a3),d0
[0003daa2] 672e                      beq.s      Aed_open_1
[0003daa4] 43eb 00b8                 lea.l      184(a3),a1
[0003daa8] 41f9 000c 4112            lea.l      WARN_2SAVED,a0
[0003daae] 4eb9 0005 ef8c            jsr        alert_str
[0003dab4] 5340                      subq.w     #1,d0
[0003dab6] 6706                      beq.s      Aed_open_2
[0003dab8] 5540                      subq.w     #2,d0
[0003daba] 6738                      beq.s      Aed_open_3
[0003dabc] 6014                      bra.s      Aed_open_1
Aed_open_2:
[0003dabe] 006b 0100 0294            ori.w      #$0100,660(a3)
[0003dac4] 204a                      movea.l    a2,a0
[0003dac6] 4eb9 0003 e142            jsr        ed_save
[0003dacc] 026b feff 0294            andi.w     #$FEFF,660(a3)
Aed_open_1:
[0003dad2] 486b 0182                 pea.l      386(a3)
[0003dad6] 43eb 0192                 lea.l      402(a3),a1
[0003dada] 41eb 0008                 lea.l      8(a3),a0
[0003dade] 4eb9 0005 ff74            jsr        Af_select
[0003dae4] 584f                      addq.w     #4,a7
[0003dae6] 2848                      movea.l    a0,a4
[0003dae8] 200c                      move.l     a4,d0
[0003daea] 6708                      beq.s      Aed_open_3
[0003daec] 224c                      movea.l    a4,a1
[0003daee] 204a                      movea.l    a2,a0
[0003daf0] 6100 ff08                 bsr        open_file
Aed_open_3:
[0003daf4] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003daf8] 4e75                      rts

merge_it:
[0003dafa] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0003dafe] 4fef fff0                 lea.l      -16(a7),a7
[0003db02] 2448                      movea.l    a0,a2
[0003db04] 2649                      movea.l    a1,a3
[0003db06] 4240                      clr.w      d0
[0003db08] 2049                      movea.l    a1,a0
[0003db0a] 4eb9 0007 29f0            jsr        Fopen
[0003db10] 2600                      move.l     d0,d3
[0003db12] 6b00 00a4                 bmi        merge_it_1
[0003db16] 266a 0014                 movea.l    20(a2),a3
[0003db1a] 93c9                      suba.l     a1,a1
[0003db1c] 204b                      movea.l    a3,a0
[0003db1e] 303c 00d5                 move.w     #$00D5,d0
[0003db22] 4eb9 0003 8e52            jsr        Auo_editor
[0003db28] 93c9                      suba.l     a1,a1
[0003db2a] 303c 00e2                 move.w     #$00E2,d0
[0003db2e] 204b                      movea.l    a3,a0
[0003db30] 4eb9 0003 8e52            jsr        Auo_editor
[0003db36] 43d7                      lea.l      (a7),a1
[0003db38] 303c 00d8                 move.w     #$00D8,d0
[0003db3c] 204b                      movea.l    a3,a0
[0003db3e] 4eb9 0003 8e52            jsr        Auo_editor
[0003db44] 43ef 0004                 lea.l      4(a7),a1
[0003db48] 303c 00e7                 move.w     #$00E7,d0
[0003db4c] 204b                      movea.l    a3,a0
[0003db4e] 4eb9 0003 8e52            jsr        Auo_editor
[0003db54] 2003                      move.l     d3,d0
[0003db56] 204b                      movea.l    a3,a0
[0003db58] 6100 fe58                 bsr        merge
[0003db5c] 93c9                      suba.l     a1,a1
[0003db5e] 303c 00db                 move.w     #$00DB,d0
[0003db62] 204b                      movea.l    a3,a0
[0003db64] 4eb9 0003 8e52            jsr        Auo_editor
[0003db6a] 93c9                      suba.l     a1,a1
[0003db6c] 7005                      moveq.l    #5,d0
[0003db6e] 204b                      movea.l    a3,a0
[0003db70] 4eb9 0003 8e52            jsr        Auo_editor
[0003db76] 43ef 0008                 lea.l      8(a7),a1
[0003db7a] 303c 00d8                 move.w     #$00D8,d0
[0003db7e] 204b                      movea.l    a3,a0
[0003db80] 4eb9 0003 8e52            jsr        Auo_editor
[0003db86] 43ef 000c                 lea.l      12(a7),a1
[0003db8a] 303c 00e7                 move.w     #$00E7,d0
[0003db8e] 204b                      movea.l    a3,a0
[0003db90] 4eb9 0003 8e52            jsr        Auo_editor
[0003db96] 43d7                      lea.l      (a7),a1
[0003db98] 303c 00e4                 move.w     #$00E4,d0
[0003db9c] 204b                      movea.l    a3,a0
[0003db9e] 4eb9 0003 8e52            jsr        Auo_editor
[0003dba4] 93c9                      suba.l     a1,a1
[0003dba6] 303c 00d6                 move.w     #$00D6,d0
[0003dbaa] 204b                      movea.l    a3,a0
[0003dbac] 4eb9 0003 8e52            jsr        Auo_editor
[0003dbb2] 204a                      movea.l    a2,a0
[0003dbb4] 6100 d818                 bsr        dirty
merge_it_1:
[0003dbb8] 4fef 0010                 lea.l      16(a7),a7
[0003dbbc] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0003dbc0] 4e75                      rts

Aed_merge:
[0003dbc2] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003dbc6] 2079 0010 1f12            movea.l    ACSblk,a0
[0003dbcc] 2468 0258                 movea.l    600(a0),a2
[0003dbd0] 2652                      movea.l    (a2),a3
[0003dbd2] 486b 0182                 pea.l      386(a3)
[0003dbd6] 43eb 0192                 lea.l      402(a3),a1
[0003dbda] 41eb 0008                 lea.l      8(a3),a0
[0003dbde] 4eb9 0005 ff74            jsr        Af_select
[0003dbe4] 584f                      addq.w     #4,a7
[0003dbe6] 2848                      movea.l    a0,a4
[0003dbe8] 200c                      move.l     a4,d0
[0003dbea] 6708                      beq.s      Aed_merge_1
[0003dbec] 224c                      movea.l    a4,a1
[0003dbee] 204a                      movea.l    a2,a0
[0003dbf0] 6100 ff08                 bsr        merge_it
Aed_merge_1:
[0003dbf4] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003dbf8] 4e75                      rts

Aed_paste:
[0003dbfa] 323c 8476                 move.w     #$8476,d1
[0003dbfe] 4240                      clr.w      d0
[0003dc00] 2079 0010 1f12            movea.l    ACSblk,a0
[0003dc06] 2068 0258                 movea.l    600(a0),a0
[0003dc0a] 6100 d81a                 bsr        edit_key
[0003dc0e] 4e75                      rts

Aed_quit:
[0003dc10] 2079 0010 1f12            movea.l    ACSblk,a0
[0003dc16] 2068 0258                 movea.l    600(a0),a0
[0003dc1a] 6100 f17c                 bsr        term
[0003dc1e] 4e75                      rts

replace_next:
[0003dc20] 48e7 003a                 movem.l    a2-a4/a6,-(a7)
[0003dc24] 4fef ffbc                 lea.l      -68(a7),a7
[0003dc28] 2f48 0040                 move.l     a0,64(a7)
[0003dc2c] 2668 0014                 movea.l    20(a0),a3
[0003dc30] 2850                      movea.l    (a0),a4
[0003dc32] 43ec 0396                 lea.l      918(a4),a1
[0003dc36] 2f49 003c                 move.l     a1,60(a7)
[0003dc3a] 1011                      move.b     (a1),d0
[0003dc3c] 6700 01da                 beq        replace_next_1
[0003dc40] 7240                      moveq.l    #64,d1
[0003dc42] c26c 0294                 and.w      660(a4),d1
[0003dc46] 6710                      beq.s      replace_next_2
[0003dc48] 204b                      movea.l    a3,a0
[0003dc4a] 303c 00f3                 move.w     #$00F3,d0
[0003dc4e] 93c9                      suba.l     a1,a1
[0003dc50] 4eb9 0003 8e52            jsr        Auo_editor
[0003dc56] 600e                      bra.s      replace_next_3
replace_next_2:
[0003dc58] 93c9                      suba.l     a1,a1
[0003dc5a] 303c 00f4                 move.w     #$00F4,d0
[0003dc5e] 204b                      movea.l    a3,a0
[0003dc60] 4eb9 0003 8e52            jsr        Auo_editor
replace_next_3:
[0003dc66] 7010                      moveq.l    #16,d0
[0003dc68] c06c 0294                 and.w      660(a4),d0
[0003dc6c] 6710                      beq.s      replace_next_4
[0003dc6e] 93c9                      suba.l     a1,a1
[0003dc70] 204b                      movea.l    a3,a0
[0003dc72] 303c 00f6                 move.w     #$00F6,d0
[0003dc76] 4eb9 0003 8e52            jsr        Auo_editor
[0003dc7c] 600e                      bra.s      replace_next_5
replace_next_4:
[0003dc7e] 93c9                      suba.l     a1,a1
[0003dc80] 303c 00f5                 move.w     #$00F5,d0
[0003dc84] 204b                      movea.l    a3,a0
[0003dc86] 4eb9 0003 8e52            jsr        Auo_editor
replace_next_5:
[0003dc8c] 7020                      moveq.l    #32,d0
[0003dc8e] c06c 0294                 and.w      660(a4),d0
[0003dc92] 6710                      beq.s      replace_next_6
[0003dc94] 93c9                      suba.l     a1,a1
[0003dc96] 204b                      movea.l    a3,a0
[0003dc98] 303c 00f7                 move.w     #$00F7,d0
[0003dc9c] 4eb9 0003 8e52            jsr        Auo_editor
[0003dca2] 600e                      bra.s      replace_next_7
replace_next_6:
[0003dca4] 93c9                      suba.l     a1,a1
[0003dca6] 303c 00f8                 move.w     #$00F8,d0
[0003dcaa] 204b                      movea.l    a3,a0
[0003dcac] 4eb9 0003 8e52            jsr        Auo_editor
replace_next_7:
[0003dcb2] 93c9                      suba.l     a1,a1
[0003dcb4] 303c 00d5                 move.w     #$00D5,d0
[0003dcb8] 204b                      movea.l    a3,a0
[0003dcba] 4eb9 0003 8e52            jsr        Auo_editor
[0003dcc0] 4def 0028                 lea.l      40(a7),a6
[0003dcc4] 224e                      movea.l    a6,a1
[0003dcc6] 303c 00e3                 move.w     #$00E3,d0
[0003dcca] 204b                      movea.l    a3,a0
[0003dccc] 4eb9 0003 8e52            jsr        Auo_editor
replace_next_12:
[0003dcd2] 45ef 0018                 lea.l      24(a7),a2
[0003dcd6] 2016                      move.l     (a6),d0
[0003dcd8] 6b32                      bmi.s      replace_next_8
[0003dcda] 7240                      moveq.l    #64,d1
[0003dcdc] c26c 0294                 and.w      660(a4),d1
[0003dce0] 672a                      beq.s      replace_next_8
[0003dce2] 93c9                      suba.l     a1,a1
[0003dce4] 204b                      movea.l    a3,a0
[0003dce6] 303c 00e2                 move.w     #$00E2,d0
[0003dcea] 4eb9 0003 8e52            jsr        Auo_editor
[0003dcf0] 224e                      movea.l    a6,a1
[0003dcf2] 7011                      moveq.l    #17,d0
[0003dcf4] 204b                      movea.l    a3,a0
[0003dcf6] 4eb9 0003 8e52            jsr        Auo_editor
[0003dcfc] 43ee 0004                 lea.l      4(a6),a1
[0003dd00] 303c 00d7                 move.w     #$00D7,d0
[0003dd04] 204b                      movea.l    a3,a0
[0003dd06] 4eb9 0003 8e52            jsr        Auo_editor
replace_next_8:
[0003dd0c] 226f 003c                 movea.l    60(a7),a1
[0003dd10] 303c 00f2                 move.w     #$00F2,d0
[0003dd14] 204b                      movea.l    a3,a0
[0003dd16] 4eb9 0003 8e52            jsr        Auo_editor
[0003dd1c] 224a                      movea.l    a2,a1
[0003dd1e] 303c 00e3                 move.w     #$00E3,d0
[0003dd22] 204b                      movea.l    a3,a0
[0003dd24] 4eb9 0003 8e52            jsr        Auo_editor
[0003dd2a] 2012                      move.l     (a2),d0
[0003dd2c] 6b24                      bmi.s      replace_next_9
[0003dd2e] 2216                      move.l     (a6),d1
[0003dd30] b280                      cmp.l      d0,d1
[0003dd32] 6626                      bne.s      replace_next_10
[0003dd34] 242e 0004                 move.l     4(a6),d2
[0003dd38] b4aa 0004                 cmp.l      4(a2),d2
[0003dd3c] 661c                      bne.s      replace_next_10
[0003dd3e] 206e 0008                 movea.l    8(a6),a0
[0003dd42] b1ea 0008                 cmpa.l     8(a2),a0
[0003dd46] 6612                      bne.s      replace_next_10
[0003dd48] 226e 000c                 movea.l    12(a6),a1
[0003dd4c] b3ea 000c                 cmpa.l     12(a2),a1
[0003dd50] 6608                      bne.s      replace_next_10
replace_next_9:
[0003dd52] 0a6c 0040 0294            eori.w     #$0040,660(a4)
[0003dd58] 607c                      bra.s      replace_next_11
replace_next_10:
[0003dd5a] 2e92                      move.l     (a2),(a7)
[0003dd5c] 2f6a 0004 0004            move.l     4(a2),4(a7)
[0003dd62] 2f6a 0008 0008            move.l     8(a2),8(a7)
[0003dd68] 2f6a 000c 000c            move.l     12(a2),12(a7)
[0003dd6e] 2f7c 0000 0001 0010       move.l     #$00000001,16(a7)
[0003dd76] 41ec 0496                 lea.l      1174(a4),a0
[0003dd7a] 2f48 0038                 move.l     a0,56(a7)
[0003dd7e] 43ef 0038                 lea.l      56(a7),a1
[0003dd82] 2f49 0014                 move.l     a1,20(a7)
[0003dd86] 43d7                      lea.l      (a7),a1
[0003dd88] 303c 00ea                 move.w     #$00EA,d0
[0003dd8c] 204b                      movea.l    a3,a0
[0003dd8e] 4eb9 0003 8e52            jsr        Auo_editor
[0003dd94] 43ea 0008                 lea.l      8(a2),a1
[0003dd98] 303c 00d8                 move.w     #$00D8,d0
[0003dd9c] 204b                      movea.l    a3,a0
[0003dd9e] 4eb9 0003 8e52            jsr        Auo_editor
[0003dda4] 43ea 000c                 lea.l      12(a2),a1
[0003dda8] 303c 00e7                 move.w     #$00E7,d0
[0003ddac] 204b                      movea.l    a3,a0
[0003ddae] 4eb9 0003 8e52            jsr        Auo_editor
[0003ddb4] 93c9                      suba.l     a1,a1
[0003ddb6] 7005                      moveq.l    #5,d0
[0003ddb8] 204b                      movea.l    a3,a0
[0003ddba] 4eb9 0003 8e52            jsr        Auo_editor
[0003ddc0] 7010                      moveq.l    #16,d0
[0003ddc2] 224a                      movea.l    a2,a1
[0003ddc4] 204e                      movea.l    a6,a0
[0003ddc6] 4eb9 0007 6f44            jsr        memcpy
[0003ddcc] 7008                      moveq.l    #8,d0
[0003ddce] c06c 0294                 and.w      660(a4),d0
[0003ddd2] 6600 fefe                 bne        replace_next_12
replace_next_11:
[0003ddd6] 93c9                      suba.l     a1,a1
[0003ddd8] 303c 00db                 move.w     #$00DB,d0
[0003dddc] 204b                      movea.l    a3,a0
[0003ddde] 4eb9 0003 8e52            jsr        Auo_editor
[0003dde4] 93c9                      suba.l     a1,a1
[0003dde6] 7005                      moveq.l    #5,d0
[0003dde8] 204b                      movea.l    a3,a0
[0003ddea] 4eb9 0003 8e52            jsr        Auo_editor
[0003ddf0] 2016                      move.l     (a6),d0
[0003ddf2] 6b0e                      bmi.s      replace_next_13
[0003ddf4] 224e                      movea.l    a6,a1
[0003ddf6] 204b                      movea.l    a3,a0
[0003ddf8] 303c 00e4                 move.w     #$00E4,d0
[0003ddfc] 4eb9 0003 8e52            jsr        Auo_editor
replace_next_13:
[0003de02] 93c9                      suba.l     a1,a1
[0003de04] 303c 00d6                 move.w     #$00D6,d0
[0003de08] 204b                      movea.l    a3,a0
[0003de0a] 4eb9 0003 8e52            jsr        Auo_editor
[0003de10] 206f 0040                 movea.l    64(a7),a0
[0003de14] 6100 d5b8                 bsr        dirty
replace_next_1:
[0003de18] 4fef 0044                 lea.l      68(a7),a7
[0003de1c] 4cdf 5c00                 movem.l    (a7)+,a2-a4/a6
[0003de20] 4e75                      rts

Aed_replace:
[0003de22] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003de26] 2079 0010 1f12            movea.l    ACSblk,a0
[0003de2c] 2468 0258                 movea.l    600(a0),a2
[0003de30] 2652                      movea.l    (a2),a3
[0003de32] 4bf9 000c 7668            lea.l      protocnf,a5
[0003de38] 41ed febc                 lea.l      -324(a5),a0
[0003de3c] 226d fec4                 movea.l    -316(a5),a1
[0003de40] 4e91                      jsr        (a1)
[0003de42] 2848                      movea.l    a0,a4
[0003de44] 200c                      move.l     a4,d0
[0003de46] 6700 0118                 beq        Aed_replace_1
[0003de4a] 43eb 0396                 lea.l      918(a3),a1
[0003de4e] 7005                      moveq.l    #5,d0
[0003de50] 206c 0014                 movea.l    20(a4),a0
[0003de54] 4eb9 0004 afe0            jsr        Aob_puttext
[0003de5a] 43eb 0496                 lea.l      1174(a3),a1
[0003de5e] 7006                      moveq.l    #6,d0
[0003de60] 206c 0014                 movea.l    20(a4),a0
[0003de64] 4eb9 0004 afe0            jsr        Aob_puttext
[0003de6a] 7020                      moveq.l    #32,d0
[0003de6c] c06b 0294                 and.w      660(a3),d0
[0003de70] 206c 0014                 movea.l    20(a4),a0
[0003de74] 41e8 0138                 lea.l      312(a0),a0
[0003de78] 6100 d4fa                 bsr        set_select
[0003de7c] 7040                      moveq.l    #64,d0
[0003de7e] c06b 0294                 and.w      660(a3),d0
[0003de82] 206c 0014                 movea.l    20(a4),a0
[0003de86] 41e8 00d8                 lea.l      216(a0),a0
[0003de8a] 6100 d4e8                 bsr        set_select
[0003de8e] 7010                      moveq.l    #16,d0
[0003de90] c06b 0294                 and.w      660(a3),d0
[0003de94] 206c 0014                 movea.l    20(a4),a0
[0003de98] 41e8 0168                 lea.l      360(a0),a0
[0003de9c] 6100 d4d6                 bsr        set_select
[0003dea0] 7008                      moveq.l    #8,d0
[0003dea2] c06b 0294                 and.w      660(a3),d0
[0003dea6] 206c 0014                 movea.l    20(a4),a0
[0003deaa] 41e8 0108                 lea.l      264(a0),a0
[0003deae] 6100 d4c4                 bsr        set_select
[0003deb2] 204c                      movea.l    a4,a0
[0003deb4] 4eb9 0005 1292            jsr        Awi_dialog
[0003deba] b07c 0011                 cmp.w      #$0011,d0
[0003debe] 6600 0098                 bne        Aed_replace_2
[0003dec2] 43eb 0396                 lea.l      918(a3),a1
[0003dec6] 7005                      moveq.l    #5,d0
[0003dec8] 206c 0014                 movea.l    20(a4),a0
[0003decc] 4eb9 0004 b154            jsr        Aob_gettext
[0003ded2] 43eb 0496                 lea.l      1174(a3),a1
[0003ded6] 7006                      moveq.l    #6,d0
[0003ded8] 206c 0014                 movea.l    20(a4),a0
[0003dedc] 4eb9 0004 b154            jsr        Aob_gettext
[0003dee2] 43eb 0396                 lea.l      918(a3),a1
[0003dee6] 41ed 0224                 lea.l      548(a5),a0
[0003deea] 4eb9 0007 6950            jsr        strcpy
[0003def0] 43eb 0496                 lea.l      1174(a3),a1
[0003def4] 41ed 0324                 lea.l      804(a5),a0
[0003def8] 4eb9 0007 6950            jsr        strcpy
[0003defe] 026b ff87 0294            andi.w     #$FF87,660(a3)
[0003df04] 7001                      moveq.l    #1,d0
[0003df06] 206c 0014                 movea.l    20(a4),a0
[0003df0a] c068 0142                 and.w      322(a0),d0
[0003df0e] 6706                      beq.s      Aed_replace_3
[0003df10] 006b 0020 0294            ori.w      #$0020,660(a3)
Aed_replace_3:
[0003df16] 7001                      moveq.l    #1,d0
[0003df18] 206c 0014                 movea.l    20(a4),a0
[0003df1c] c068 00e2                 and.w      226(a0),d0
[0003df20] 6706                      beq.s      Aed_replace_4
[0003df22] 006b 0040 0294            ori.w      #$0040,660(a3)
Aed_replace_4:
[0003df28] 7001                      moveq.l    #1,d0
[0003df2a] 206c 0014                 movea.l    20(a4),a0
[0003df2e] c068 0172                 and.w      370(a0),d0
[0003df32] 6706                      beq.s      Aed_replace_5
[0003df34] 006b 0010 0294            ori.w      #$0010,660(a3)
Aed_replace_5:
[0003df3a] 7001                      moveq.l    #1,d0
[0003df3c] 206c 0014                 movea.l    20(a4),a0
[0003df40] c068 0112                 and.w      274(a0),d0
[0003df44] 6706                      beq.s      Aed_replace_6
[0003df46] 006b 0008 0294            ori.w      #$0008,660(a3)
Aed_replace_6:
[0003df4c] 3b6b 0294 0122            move.w     660(a3),290(a5)
[0003df52] 204a                      movea.l    a2,a0
[0003df54] 6100 fcca                 bsr        replace_next
Aed_replace_2:
[0003df58] 204c                      movea.l    a4,a0
[0003df5a] 4eb9 0005 0330            jsr        Awi_delete
Aed_replace_1:
[0003df60] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003df64] 4e75                      rts

Aed_replacenext:
[0003df66] 2079 0010 1f12            movea.l    ACSblk,a0
[0003df6c] 2068 0258                 movea.l    600(a0),a0
[0003df70] 6100 fcae                 bsr        replace_next
[0003df74] 4e75                      rts

save_text:
[0003df76] 48e7 1e34                 movem.l    d3-d6/a2-a3/a5,-(a7)
[0003df7a] 4fef ffdc                 lea.l      -36(a7),a7
[0003df7e] 2f48 0020                 move.l     a0,32(a7)
[0003df82] 3a00                      move.w     d0,d5
[0003df84] 45f9 000f ff04            lea.l      buffer,a2
[0003df8a] 264a                      movea.l    a2,a3
[0003df8c] 7600                      moveq.l    #0,d3
[0003df8e] 43ef 0010                 lea.l      16(a7),a1
[0003df92] 303c 00e3                 move.w     #$00E3,d0
[0003df96] 206f 0020                 movea.l    32(a7),a0
[0003df9a] 4eb9 0003 8e52            jsr        Auo_editor
[0003dfa0] 4bef 000c                 lea.l      12(a7),a5
[0003dfa4] 202f 0010                 move.l     16(a7),d0
[0003dfa8] 6f08                      ble.s      save_text_1
[0003dfaa] 2800                      move.l     d0,d4
[0003dfac] 2aaf 0018                 move.l     24(a7),(a5)
[0003dfb0] 6014                      bra.s      save_text_2
save_text_1:
[0003dfb2] 224d                      movea.l    a5,a1
[0003dfb4] 303c 00e9                 move.w     #$00E9,d0
[0003dfb8] 206f 0020                 movea.l    32(a7),a0
[0003dfbc] 4eb9 0003 8e52            jsr        Auo_editor
[0003dfc2] 5395                      subq.l     #1,(a5)
[0003dfc4] 7800                      moveq.l    #0,d4
save_text_2:
[0003dfc6] 2e84                      move.l     d4,(a7)
[0003dfc8] 6000 0076                 bra.w      save_text_3
save_text_10:
[0003dfcc] 43d7                      lea.l      (a7),a1
[0003dfce] 303c 00ca                 move.w     #$00CA,d0
[0003dfd2] 206f 0020                 movea.l    32(a7),a0
[0003dfd6] 4eb9 0003 8e52            jsr        Auo_editor
[0003dfdc] 2017                      move.l     (a7),d0
[0003dfde] b095                      cmp.l      (a5),d0
[0003dfe0] 6606                      bne.s      save_text_4
[0003dfe2] 282f 0004                 move.l     4(a7),d4
[0003dfe6] 6006                      bra.s      save_text_5
save_text_4:
[0003dfe8] 7802                      moveq.l    #2,d4
[0003dfea] d8af 0004                 add.l      4(a7),d4
save_text_5:
[0003dfee] 2003                      move.l     d3,d0
[0003dff0] d084                      add.l      d4,d0
[0003dff2] b0bc 0000 2000            cmp.l      #$00002000,d0
[0003dff8] 6d16                      blt.s      save_text_6
[0003dffa] 204a                      movea.l    a2,a0
[0003dffc] 2203                      move.l     d3,d1
[0003dffe] 3005                      move.w     d5,d0
[0003e000] 4eb9 0007 2a8e            jsr        Fwrite
[0003e006] 2c00                      move.l     d0,d6
[0003e008] b680                      cmp.l      d0,d3
[0003e00a] 6652                      bne.s      save_text_7
[0003e00c] 264a                      movea.l    a2,a3
[0003e00e] 7600                      moveq.l    #0,d3
save_text_6:
[0003e010] d684                      add.l      d4,d3
[0003e012] 202f 0004                 move.l     4(a7),d0
[0003e016] 6f0c                      ble.s      save_text_8
[0003e018] 226f 0008                 movea.l    8(a7),a1
[0003e01c] 204b                      movea.l    a3,a0
[0003e01e] 4eb9 0007 6a1a            jsr        strncpy
save_text_8:
[0003e024] 47f2 3000                 lea.l      0(a2,d3.w),a3
[0003e028] 2017                      move.l     (a7),d0
[0003e02a] b095                      cmp.l      (a5),d0
[0003e02c] 6710                      beq.s      save_text_9
[0003e02e] 43f9 000c 860e            lea.l      $000C860E,a1
[0003e034] 41eb fffe                 lea.l      -2(a3),a0
[0003e038] 4eb9 0007 6950            jsr        strcpy
save_text_9:
[0003e03e] 5297                      addq.l     #1,(a7)
save_text_3:
[0003e040] 2017                      move.l     (a7),d0
[0003e042] b095                      cmp.l      (a5),d0
[0003e044] 6f00 ff86                 ble.w      save_text_10
[0003e048] 4a83                      tst.l      d3
[0003e04a] 6f2e                      ble.s      save_text_11
[0003e04c] 204a                      movea.l    a2,a0
[0003e04e] 2203                      move.l     d3,d1
[0003e050] 3005                      move.w     d5,d0
[0003e052] 4eb9 0007 2a8e            jsr        Fwrite
[0003e058] 2c00                      move.l     d0,d6
[0003e05a] b680                      cmp.l      d0,d3
[0003e05c] 671c                      beq.s      save_text_11
save_text_7:
[0003e05e] 91c8                      suba.l     a0,a0
[0003e060] 700a                      moveq.l    #10,d0
[0003e062] 2279 0010 1f12            movea.l    ACSblk,a1
[0003e068] 2269 03d6                 movea.l    982(a1),a1
[0003e06c] 4e91                      jsr        (a1)
[0003e06e] 3005                      move.w     d5,d0
[0003e070] 4eb9 0007 29ae            jsr        Fclose
[0003e076] 70ff                      moveq.l    #-1,d0
[0003e078] 600a                      bra.s      save_text_12
save_text_11:
[0003e07a] 3005                      move.w     d5,d0
[0003e07c] 4eb9 0007 29ae            jsr        Fclose
[0003e082] 4240                      clr.w      d0
save_text_12:
[0003e084] 4fef 0024                 lea.l      36(a7),a7
[0003e088] 4cdf 2c78                 movem.l    (a7)+,d3-d6/a2-a3/a5
[0003e08c] 4e75                      rts

save_it:
[0003e08e] 48e7 182c                 movem.l    d3-d4/a2/a4-a5,-(a7)
[0003e092] 4fef ff00                 lea.l      -256(a7),a7
[0003e096] 2a48                      movea.l    a0,a5
[0003e098] 2449                      movea.l    a1,a2
[0003e09a] 41d7                      lea.l      (a7),a0
[0003e09c] 4eb9 0007 6950            jsr        strcpy
[0003e0a2] 702e                      moveq.l    #46,d0
[0003e0a4] 41d7                      lea.l      (a7),a0
[0003e0a6] 4eb9 0007 68e2            jsr        strrchr
[0003e0ac] 2848                      movea.l    a0,a4
[0003e0ae] 200c                      move.l     a4,d0
[0003e0b0] 6610                      bne.s      save_it_1
[0003e0b2] 43f9 000c 8611            lea.l      $000C8611,a1
[0003e0b8] 41d7                      lea.l      (a7),a0
[0003e0ba] 4eb9 0007 6886            jsr        strcat
[0003e0c0] 600e                      bra.s      save_it_2
save_it_1:
[0003e0c2] 43f9 000c 8611            lea.l      $000C8611,a1
[0003e0c8] 204c                      movea.l    a4,a0
[0003e0ca] 4eb9 0007 6950            jsr        strcpy
save_it_2:
[0003e0d0] 43d7                      lea.l      (a7),a1
[0003e0d2] 204a                      movea.l    a2,a0
[0003e0d4] 4240                      clr.w      d0
[0003e0d6] 4eb9 0007 2a18            jsr        Frename
[0003e0dc] 2600                      move.l     d0,d3
[0003e0de] 204a                      movea.l    a2,a0
[0003e0e0] 4240                      clr.w      d0
[0003e0e2] 4eb9 0007 29be            jsr        Fcreate
[0003e0e8] 2800                      move.l     d0,d4
[0003e0ea] 4a80                      tst.l      d0
[0003e0ec] 6b3e                      bmi.s      save_it_3
[0003e0ee] 204d                      movea.l    a5,a0
[0003e0f0] 6100 fe84                 bsr        save_text
[0003e0f4] 4a40                      tst.w      d0
[0003e0f6] 6716                      beq.s      save_it_4
[0003e0f8] 204a                      movea.l    a2,a0
[0003e0fa] 4eb9 0007 29d0            jsr        Fdelete
[0003e100] 224a                      movea.l    a2,a1
[0003e102] 41d7                      lea.l      (a7),a0
[0003e104] 4240                      clr.w      d0
[0003e106] 4eb9 0007 2a18            jsr        Frename
[0003e10c] 600c                      bra.s      save_it_5
save_it_4:
[0003e10e] 4a83                      tst.l      d3
[0003e110] 6608                      bne.s      save_it_5
[0003e112] 41d7                      lea.l      (a7),a0
[0003e114] 4eb9 0007 29d0            jsr        Fdelete
save_it_5:
[0003e11a] 204a                      movea.l    a2,a0
[0003e11c] 4eb9 0005 84d8            jsr        Aev_OlgaUpdate
[0003e122] 204a                      movea.l    a2,a0
[0003e124] 4eb9 0005 6a66            jsr        Aev_DhstSaved
[0003e12a] 600c                      bra.s      save_it_6
save_it_3:
[0003e12c] 224a                      movea.l    a2,a1
[0003e12e] 41d7                      lea.l      (a7),a0
[0003e130] 4240                      clr.w      d0
[0003e132] 4eb9 0007 2a18            jsr        Frename
save_it_6:
[0003e138] 4fef 0100                 lea.l      256(a7),a7
[0003e13c] 4cdf 3418                 movem.l    (a7)+,d3-d4/a2/a4-a5
[0003e140] 4e75                      rts

ed_save:
[0003e142] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003e146] 2448                      movea.l    a0,a2
[0003e148] 2850                      movea.l    (a0),a4
[0003e14a] 2654                      movea.l    (a4),a3
[0003e14c] 200b                      move.l     a3,d0
[0003e14e] 671c                      beq.s      ed_save_1
[0003e150] 322c 0294                 move.w     660(a4),d1
[0003e154] c27c 0100                 and.w      #$0100,d1
[0003e158] 6612                      bne.s      ed_save_1
[0003e15a] 2248                      movea.l    a0,a1
[0003e15c] 2a6b 0004                 movea.l    4(a3),a5
[0003e160] 204b                      movea.l    a3,a0
[0003e162] 303c 00d2                 move.w     #$00D2,d0
[0003e166] 4e95                      jsr        (a5)
[0003e168] 5340                      subq.w     #1,d0
[0003e16a] 674e                      beq.s      ed_save_2
ed_save_1:
[0003e16c] 47ec 0192                 lea.l      402(a4),a3
[0003e170] 1013                      move.b     (a3),d0
[0003e172] 660a                      bne.s      ed_save_3
[0003e174] 204a                      movea.l    a2,a0
[0003e176] 4eb9 0003 e1d0            jsr        ed_saveas
[0003e17c] 603c                      bra.s      ed_save_2
ed_save_3:
[0003e17e] 286a 0014                 movea.l    20(a2),a4
[0003e182] 93c9                      suba.l     a1,a1
[0003e184] 303c 00d5                 move.w     #$00D5,d0
[0003e188] 204c                      movea.l    a4,a0
[0003e18a] 4eb9 0003 8e52            jsr        Auo_editor
[0003e190] 93c9                      suba.l     a1,a1
[0003e192] 303c 00e2                 move.w     #$00E2,d0
[0003e196] 204c                      movea.l    a4,a0
[0003e198] 4eb9 0003 8e52            jsr        Auo_editor
[0003e19e] 93c9                      suba.l     a1,a1
[0003e1a0] 303c 00d6                 move.w     #$00D6,d0
[0003e1a4] 204c                      movea.l    a4,a0
[0003e1a6] 4eb9 0003 8e52            jsr        Auo_editor
[0003e1ac] 224b                      movea.l    a3,a1
[0003e1ae] 204c                      movea.l    a4,a0
[0003e1b0] 6100 fedc                 bsr        save_it
[0003e1b4] 204a                      movea.l    a2,a0
[0003e1b6] 6100 d1d0                 bsr        undirty
ed_save_2:
[0003e1ba] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003e1be] 4e75                      rts

Aed_save:
[0003e1c0] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e1c6] 2068 0258                 movea.l    600(a0),a0
[0003e1ca] 6100 ff76                 bsr        ed_save
[0003e1ce] 4e75                      rts

ed_saveas:
[0003e1d0] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003e1d4] 4fef fff0                 lea.l      -16(a7),a7
[0003e1d8] 2448                      movea.l    a0,a2
[0003e1da] 266a 0014                 movea.l    20(a2),a3
[0003e1de] 43d7                      lea.l      (a7),a1
[0003e1e0] 303c 00e3                 move.w     #$00E3,d0
[0003e1e4] 204b                      movea.l    a3,a0
[0003e1e6] 4eb9 0003 8e52            jsr        Auo_editor
[0003e1ec] 4243                      clr.w      d3
[0003e1ee] 2017                      move.l     (a7),d0
[0003e1f0] 6b40                      bmi.s      ed_saveas_1
[0003e1f2] 41f9 000c 406c            lea.l      ASK_SELECT,a0
[0003e1f8] 7001                      moveq.l    #1,d0
[0003e1fa] 4eb9 0005 17fe            jsr        Awi_alert
[0003e200] 5540                      subq.w     #2,d0
[0003e202] 662c                      bne.s      ed_saveas_2
[0003e204] 93c9                      suba.l     a1,a1
[0003e206] 303c 00d5                 move.w     #$00D5,d0
[0003e20a] 204b                      movea.l    a3,a0
[0003e20c] 4eb9 0003 8e52            jsr        Auo_editor
[0003e212] 93c9                      suba.l     a1,a1
[0003e214] 303c 00e2                 move.w     #$00E2,d0
[0003e218] 204b                      movea.l    a3,a0
[0003e21a] 4eb9 0003 8e52            jsr        Auo_editor
[0003e220] 93c9                      suba.l     a1,a1
[0003e222] 303c 00d6                 move.w     #$00D6,d0
[0003e226] 204b                      movea.l    a3,a0
[0003e228] 4eb9 0003 8e52            jsr        Auo_editor
[0003e22e] 6002                      bra.s      ed_saveas_1
ed_saveas_2:
[0003e230] 7601                      moveq.l    #1,d3
ed_saveas_1:
[0003e232] 2852                      movea.l    (a2),a4
[0003e234] 43ec 0192                 lea.l      402(a4),a1
[0003e238] 41f9 000c 7688            lea.l      $000C7688,a0
[0003e23e] 4eb9 0007 6950            jsr        strcpy
[0003e244] 486c 0182                 pea.l      386(a4)
[0003e248] 43ec 0192                 lea.l      402(a4),a1
[0003e24c] 41ec 0048                 lea.l      72(a4),a0
[0003e250] 4eb9 0005 ff74            jsr        Af_select
[0003e256] 584f                      addq.w     #4,a7
[0003e258] 2a48                      movea.l    a0,a5
[0003e25a] 200d                      move.l     a5,d0
[0003e25c] 6724                      beq.s      ed_saveas_3
[0003e25e] 224d                      movea.l    a5,a1
[0003e260] 204b                      movea.l    a3,a0
[0003e262] 6100 fe2a                 bsr        save_it
[0003e266] 4a43                      tst.w      d3
[0003e268] 6618                      bne.s      ed_saveas_3
[0003e26a] 224d                      movea.l    a5,a1
[0003e26c] 41ec 0192                 lea.l      402(a4),a0
[0003e270] 4eb9 0007 6950            jsr        strcpy
[0003e276] 204a                      movea.l    a2,a0
[0003e278] 6100 d00e                 bsr        set_icon
[0003e27c] 204a                      movea.l    a2,a0
[0003e27e] 6100 d108                 bsr        undirty
ed_saveas_3:
[0003e282] 4fef 0010                 lea.l      16(a7),a7
[0003e286] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003e28a] 4e75                      rts

Aed_saveas:
[0003e28c] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e292] 2068 0258                 movea.l    600(a0),a0
[0003e296] 6100 ff38                 bsr        ed_saveas
[0003e29a] 4e75                      rts

Aed_selall:
[0003e29c] 2f0a                      move.l     a2,-(a7)
[0003e29e] 2f0c                      move.l     a4,-(a7)
[0003e2a0] 4fef ffe0                 lea.l      -32(a7),a7
[0003e2a4] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e2aa] 2268 0258                 movea.l    600(a0),a1
[0003e2ae] 2469 0014                 movea.l    20(a1),a2
[0003e2b2] 43ef 001c                 lea.l      28(a7),a1
[0003e2b6] 303c 00e9                 move.w     #$00E9,d0
[0003e2ba] 204a                      movea.l    a2,a0
[0003e2bc] 4eb9 0003 8e52            jsr        Auo_editor
[0003e2c2] 70ff                      moveq.l    #-1,d0
[0003e2c4] d0af 001c                 add.l      28(a7),d0
[0003e2c8] 2e80                      move.l     d0,(a7)
[0003e2ca] 43d7                      lea.l      (a7),a1
[0003e2cc] 204a                      movea.l    a2,a0
[0003e2ce] 303c 00ca                 move.w     #$00CA,d0
[0003e2d2] 4eb9 0003 8e52            jsr        Auo_editor
[0003e2d8] 49ef 000c                 lea.l      12(a7),a4
[0003e2dc] 224c                      movea.l    a4,a1
[0003e2de] 303c 00e3                 move.w     #$00E3,d0
[0003e2e2] 204a                      movea.l    a2,a0
[0003e2e4] 4eb9 0003 8e52            jsr        Auo_editor
[0003e2ea] 2014                      move.l     (a4),d0
[0003e2ec] 664c                      bne.s      Aed_selall_1
[0003e2ee] 222c 0004                 move.l     4(a4),d1
[0003e2f2] 6646                      bne.s      Aed_selall_1
[0003e2f4] 242c 0008                 move.l     8(a4),d2
[0003e2f8] 9480                      sub.l      d0,d2
[0003e2fa] 5282                      addq.l     #1,d2
[0003e2fc] 206f 001c                 movea.l    28(a7),a0
[0003e300] b1c2                      cmpa.l     d2,a0
[0003e302] 6636                      bne.s      Aed_selall_1
[0003e304] 226c 000c                 movea.l    12(a4),a1
[0003e308] b3ef 0004                 cmpa.l     4(a7),a1
[0003e30c] 662c                      bne.s      Aed_selall_1
[0003e30e] 204a                      movea.l    a2,a0
[0003e310] 303c 00e2                 move.w     #$00E2,d0
[0003e314] 93c9                      suba.l     a1,a1
[0003e316] 4eb9 0003 8e52            jsr        Auo_editor
[0003e31c] 93c9                      suba.l     a1,a1
[0003e31e] 303c 00db                 move.w     #$00DB,d0
[0003e322] 204a                      movea.l    a2,a0
[0003e324] 4eb9 0003 8e52            jsr        Auo_editor
[0003e32a] 93c9                      suba.l     a1,a1
[0003e32c] 303c 00d6                 move.w     #$00D6,d0
[0003e330] 204a                      movea.l    a2,a0
[0003e332] 4eb9 0003 8e52            jsr        Auo_editor
[0003e338] 6056                      bra.s      Aed_selall_2
Aed_selall_1:
[0003e33a] 2014                      move.l     (a4),d0
[0003e33c] 6b0e                      bmi.s      Aed_selall_3
[0003e33e] 93c9                      suba.l     a1,a1
[0003e340] 204a                      movea.l    a2,a0
[0003e342] 303c 00e2                 move.w     #$00E2,d0
[0003e346] 4eb9 0003 8e52            jsr        Auo_editor
Aed_selall_3:
[0003e34c] 70ff                      moveq.l    #-1,d0
[0003e34e] d0af 001c                 add.l      28(a7),d0
[0003e352] 2e80                      move.l     d0,(a7)
[0003e354] 2940 0008                 move.l     d0,8(a4)
[0003e358] 43d7                      lea.l      (a7),a1
[0003e35a] 204a                      movea.l    a2,a0
[0003e35c] 303c 00ca                 move.w     #$00CA,d0
[0003e360] 4eb9 0003 8e52            jsr        Auo_editor
[0003e366] 7000                      moveq.l    #0,d0
[0003e368] 2940 0004                 move.l     d0,4(a4)
[0003e36c] 2880                      move.l     d0,(a4)
[0003e36e] 296f 0004 000c            move.l     4(a7),12(a4)
[0003e374] 93c9                      suba.l     a1,a1
[0003e376] 303c 00d5                 move.w     #$00D5,d0
[0003e37a] 204a                      movea.l    a2,a0
[0003e37c] 4eb9 0003 8e52            jsr        Auo_editor
[0003e382] 224c                      movea.l    a4,a1
[0003e384] 303c 00e4                 move.w     #$00E4,d0
[0003e388] 204a                      movea.l    a2,a0
[0003e38a] 4eb9 0003 8e52            jsr        Auo_editor
Aed_selall_2:
[0003e390] 4fef 0020                 lea.l      32(a7),a7
[0003e394] 285f                      movea.l    (a7)+,a4
[0003e396] 245f                      movea.l    (a7)+,a2
[0003e398] 4e75                      rts

Aed_swap:
[0003e39a] 48e7 003a                 movem.l    a2-a4/a6,-(a7)
[0003e39e] 4fef ffec                 lea.l      -20(a7),a7
[0003e3a2] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e3a8] 2268 0258                 movea.l    600(a0),a1
[0003e3ac] 2469 0014                 movea.l    20(a1),a2
[0003e3b0] 303c 00e2                 move.w     #$00E2,d0
[0003e3b4] 204a                      movea.l    a2,a0
[0003e3b6] 93c9                      suba.l     a1,a1
[0003e3b8] 4eb9 0003 8e52            jsr        Auo_editor
[0003e3be] 93c9                      suba.l     a1,a1
[0003e3c0] 303c 00db                 move.w     #$00DB,d0
[0003e3c4] 204a                      movea.l    a2,a0
[0003e3c6] 4eb9 0003 8e52            jsr        Auo_editor
[0003e3cc] 47ef 0010                 lea.l      16(a7),a3
[0003e3d0] 224b                      movea.l    a3,a1
[0003e3d2] 303c 00d8                 move.w     #$00D8,d0
[0003e3d6] 204a                      movea.l    a2,a0
[0003e3d8] 4eb9 0003 8e52            jsr        Auo_editor
[0003e3de] 49ef 000c                 lea.l      12(a7),a4
[0003e3e2] 224c                      movea.l    a4,a1
[0003e3e4] 303c 00e7                 move.w     #$00E7,d0
[0003e3e8] 204a                      movea.l    a2,a0
[0003e3ea] 4eb9 0003 8e52            jsr        Auo_editor
[0003e3f0] 2e93                      move.l     (a3),(a7)
[0003e3f2] 43d7                      lea.l      (a7),a1
[0003e3f4] 303c 00ca                 move.w     #$00CA,d0
[0003e3f8] 204a                      movea.l    a2,a0
[0003e3fa] 4eb9 0003 8e52            jsr        Auo_editor
[0003e400] 2014                      move.l     (a4),d0
[0003e402] 6f78                      ble.s      Aed_swap_1
[0003e404] b0af 0004                 cmp.l      4(a7),d0
[0003e408] 6c72                      bge.s      Aed_swap_1
[0003e40a] 4df9 000c 83ae            lea.l      subswap,a6
[0003e410] 2014                      move.l     (a4),d0
[0003e412] 206f 0008                 movea.l    8(a7),a0
[0003e416] 1d70 0800 fff8            move.b     0(a0,d0.l),-8(a6)
[0003e41c] 1d70 08ff fff9            move.b     -1(a0,d0.l),-7(a6)
[0003e422] 2213                      move.l     (a3),d1
[0003e424] 2d41 0008                 move.l     d1,8(a6)
[0003e428] 2c81                      move.l     d1,(a6)
[0003e42a] 74ff                      moveq.l    #-1,d2
[0003e42c] d480                      add.l      d0,d2
[0003e42e] 2d42 0004                 move.l     d2,4(a6)
[0003e432] 7201                      moveq.l    #1,d1
[0003e434] d280                      add.l      d0,d1
[0003e436] 2d41 000c                 move.l     d1,12(a6)
[0003e43a] 224e                      movea.l    a6,a1
[0003e43c] 204a                      movea.l    a2,a0
[0003e43e] 303c 00ea                 move.w     #$00EA,d0
[0003e442] 4eb9 0003 8e52            jsr        Auo_editor
[0003e448] 224b                      movea.l    a3,a1
[0003e44a] 7011                      moveq.l    #17,d0
[0003e44c] 204a                      movea.l    a2,a0
[0003e44e] 4eb9 0003 8e52            jsr        Auo_editor
[0003e454] 224c                      movea.l    a4,a1
[0003e456] 303c 00d7                 move.w     #$00D7,d0
[0003e45a] 204a                      movea.l    a2,a0
[0003e45c] 4eb9 0003 8e52            jsr        Auo_editor
[0003e462] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e468] 2068 0258                 movea.l    600(a0),a0
[0003e46c] 6100 cf60                 bsr        dirty
[0003e470] 93c9                      suba.l     a1,a1
[0003e472] 7005                      moveq.l    #5,d0
[0003e474] 204a                      movea.l    a2,a0
[0003e476] 4eb9 0003 8e52            jsr        Auo_editor
Aed_swap_1:
[0003e47c] 4fef 0014                 lea.l      20(a7),a7
[0003e480] 4cdf 5c00                 movem.l    (a7)+,a2-a4/a6
[0003e484] 4e75                      rts

Aed_undo:
[0003e486] 323c 800f                 move.w     #$800F,d1
[0003e48a] 4240                      clr.w      d0
[0003e48c] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e492] 2068 0258                 movea.l    600(a0),a0
[0003e496] 6100 cf8e                 bsr        edit_key
[0003e49a] 4e75                      rts

Aed_option:
[0003e49c] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003e4a0] 4fef fff0                 lea.l      -16(a7),a7
[0003e4a4] 41f9 000c 7482            lea.l      WIED_OPTION,a0
[0003e4aa] 2279 000c 748a            movea.l    $000C748A,a1
[0003e4b0] 4e91                      jsr        (a1)
[0003e4b2] 2448                      movea.l    a0,a2
[0003e4b4] 200a                      move.l     a2,d0
[0003e4b6] 6700 0226                 beq        Aed_option_1
[0003e4ba] 2279 0010 1f12            movea.l    ACSblk,a1
[0003e4c0] 2069 0258                 movea.l    600(a1),a0
[0003e4c4] 2668 0014                 movea.l    20(a0),a3
[0003e4c8] 2850                      movea.l    (a0),a4
[0003e4ca] 206a 0014                 movea.l    20(a2),a0
[0003e4ce] 41e8 0078                 lea.l      120(a0),a0
[0003e4d2] 2f48 0008                 move.l     a0,8(a7)
[0003e4d6] 2f68 000c 000c            move.l     12(a0),12(a7)
[0003e4dc] 43ec 0180                 lea.l      384(a4),a1
[0003e4e0] 303c 0191                 move.w     #$0191,d0
[0003e4e4] 206f 000c                 movea.l    12(a7),a0
[0003e4e8] 2a68 0008                 movea.l    8(a0),a5
[0003e4ec] 206f 0008                 movea.l    8(a7),a0
[0003e4f0] 4e95                      jsr        (a5)
[0003e4f2] 43ef 0004                 lea.l      4(a7),a1
[0003e4f6] 303c 00f1                 move.w     #$00F1,d0
[0003e4fa] 204b                      movea.l    a3,a0
[0003e4fc] 4eb9 0003 8e52            jsr        Auo_editor
[0003e502] 302f 0004                 move.w     4(a7),d0
[0003e506] 6716                      beq.s      Aed_option_2
[0003e508] 206a 0014                 movea.l    20(a2),a0
[0003e50c] 0068 0001 012a            ori.w      #$0001,298(a0)
[0003e512] 206a 0014                 movea.l    20(a2),a0
[0003e516] 0268 fffe 00fa            andi.w     #$FFFE,250(a0)
[0003e51c] 6014                      bra.s      Aed_option_3
Aed_option_2:
[0003e51e] 206a 0014                 movea.l    20(a2),a0
[0003e522] 0068 0001 00fa            ori.w      #$0001,250(a0)
[0003e528] 206a 0014                 movea.l    20(a2),a0
[0003e52c] 0268 fffe 012a            andi.w     #$FFFE,298(a0)
Aed_option_3:
[0003e532] 43ef 0006                 lea.l      6(a7),a1
[0003e536] 303c 00f0                 move.w     #$00F0,d0
[0003e53a] 204b                      movea.l    a3,a0
[0003e53c] 4eb9 0003 8e52            jsr        Auo_editor
[0003e542] 3f2f 0006                 move.w     6(a7),-(a7)
[0003e546] 43f9 000c 8616            lea.l      $000C8616,a1
[0003e54c] 7008                      moveq.l    #8,d0
[0003e54e] 206a 0014                 movea.l    20(a2),a0
[0003e552] 4eb9 0004 afac            jsr        Aob_printf
[0003e558] 544f                      addq.w     #2,a7
[0003e55a] 43ec 0182                 lea.l      386(a4),a1
[0003e55e] 7012                      moveq.l    #18,d0
[0003e560] 206a 0014                 movea.l    20(a2),a0
[0003e564] 4eb9 0004 afe0            jsr        Aob_puttext
[0003e56a] 43ec 0697                 lea.l      1687(a4),a1
[0003e56e] 7011                      moveq.l    #17,d0
[0003e570] 206a 0014                 movea.l    20(a2),a0
[0003e574] 4eb9 0004 afe0            jsr        Aob_puttext
[0003e57a] 43d7                      lea.l      (a7),a1
[0003e57c] 303c 0107                 move.w     #$0107,d0
[0003e580] 204b                      movea.l    a3,a0
[0003e582] 4eb9 0003 8e52            jsr        Auo_editor
[0003e588] 2257                      movea.l    (a7),a1
[0003e58a] 7010                      moveq.l    #16,d0
[0003e58c] 206a 0014                 movea.l    20(a2),a0
[0003e590] 4eb9 0004 afe0            jsr        Aob_puttext
[0003e596] 204a                      movea.l    a2,a0
[0003e598] 4eb9 0005 1292            jsr        Awi_dialog
[0003e59e] b07c 0014                 cmp.w      #$0014,d0
[0003e5a2] 6600 0132                 bne        Aed_option_4
[0003e5a6] 43d7                      lea.l      (a7),a1
[0003e5a8] 7003                      moveq.l    #3,d0
[0003e5aa] 206a 0014                 movea.l    20(a2),a0
[0003e5ae] 41e8 0180                 lea.l      384(a0),a0
[0003e5b2] 4eb9 0005 e010            jsr        Auo_boxed
[0003e5b8] 2257                      movea.l    (a7),a1
[0003e5ba] 303c 0106                 move.w     #$0106,d0
[0003e5be] 204b                      movea.l    a3,a0
[0003e5c0] 4eb9 0003 8e52            jsr        Auo_editor
[0003e5c6] 486f 0006                 pea.l      6(a7)
[0003e5ca] 43f9 000c 8619            lea.l      $000C8619,a1
[0003e5d0] 7008                      moveq.l    #8,d0
[0003e5d2] 206a 0014                 movea.l    20(a2),a0
[0003e5d6] 4eb9 0004 b0b2            jsr        Aob_scanf
[0003e5dc] 584f                      addq.w     #4,a7
[0003e5de] 43ec 0182                 lea.l      386(a4),a1
[0003e5e2] 7012                      moveq.l    #18,d0
[0003e5e4] 206a 0014                 movea.l    20(a2),a0
[0003e5e8] 4eb9 0004 b154            jsr        Aob_gettext
[0003e5ee] 43ec 0697                 lea.l      1687(a4),a1
[0003e5f2] 7011                      moveq.l    #17,d0
[0003e5f4] 206a 0014                 movea.l    20(a2),a0
[0003e5f8] 4eb9 0004 b154            jsr        Aob_gettext
[0003e5fe] 102c 0697                 move.b     1687(a4),d0
[0003e602] 6728                      beq.s      Aed_option_5
[0003e604] 41ec 0697                 lea.l      1687(a4),a0
[0003e608] 4eb9 0007 6bc4            jsr        strupr
[0003e60e] 4eb9 0007 69b0            jsr        strlen
[0003e614] 600c                      bra.s      Aed_option_6
Aed_option_7:
[0003e616] 41f4 0000                 lea.l      0(a4,d0.w),a0
[0003e61a] 117c 0020 0697            move.b     #$20,1687(a0)
[0003e620] 5240                      addq.w     #1,d0
Aed_option_6:
[0003e622] b07c 0008                 cmp.w      #$0008,d0
[0003e626] 6dee                      blt.s      Aed_option_7
[0003e628] 422c 069f                 clr.b      1695(a4)
Aed_option_5:
[0003e62c] 43ec 0180                 lea.l      384(a4),a1
[0003e630] 303c 0192                 move.w     #$0192,d0
[0003e634] 206f 0008                 movea.l    8(a7),a0
[0003e638] 2a6f 000c                 movea.l    12(a7),a5
[0003e63c] 2a6d 0008                 movea.l    8(a5),a5
[0003e640] 4e95                      jsr        (a5)
[0003e642] 33ec 0180 000c 7676       move.w     384(a4),$000C7676
[0003e64a] 33ef 0006 000c 766c       move.w     6(a7),$000C766C
[0003e652] 43ec 0182                 lea.l      386(a4),a1
[0003e656] 41f9 000c 7678            lea.l      $000C7678,a0
[0003e65c] 4eb9 0007 6950            jsr        strcpy
[0003e662] 93c9                      suba.l     a1,a1
[0003e664] 303c 00d5                 move.w     #$00D5,d0
[0003e668] 204b                      movea.l    a3,a0
[0003e66a] 4eb9 0003 8e52            jsr        Auo_editor
[0003e670] 43f9 000c 7676            lea.l      $000C7676,a1
[0003e676] 303c 00fe                 move.w     #$00FE,d0
[0003e67a] 204b                      movea.l    a3,a0
[0003e67c] 4eb9 0003 8e52            jsr        Auo_editor
[0003e682] 43ef 0006                 lea.l      6(a7),a1
[0003e686] 303c 00ec                 move.w     #$00EC,d0
[0003e68a] 204b                      movea.l    a3,a0
[0003e68c] 4eb9 0003 8e52            jsr        Auo_editor
[0003e692] 7001                      moveq.l    #1,d0
[0003e694] 206a 0014                 movea.l    20(a2),a0
[0003e698] c068 00fa                 and.w      250(a0),d0
[0003e69c] 6710                      beq.s      Aed_option_8
[0003e69e] 93c9                      suba.l     a1,a1
[0003e6a0] 204b                      movea.l    a3,a0
[0003e6a2] 303c 00e0                 move.w     #$00E0,d0
[0003e6a6] 4eb9 0003 8e52            jsr        Auo_editor
[0003e6ac] 600e                      bra.s      Aed_option_9
Aed_option_8:
[0003e6ae] 93c9                      suba.l     a1,a1
[0003e6b0] 303c 00e1                 move.w     #$00E1,d0
[0003e6b4] 204b                      movea.l    a3,a0
[0003e6b6] 4eb9 0003 8e52            jsr        Auo_editor
Aed_option_9:
[0003e6bc] 93c9                      suba.l     a1,a1
[0003e6be] 7006                      moveq.l    #6,d0
[0003e6c0] 204b                      movea.l    a3,a0
[0003e6c2] 4eb9 0003 8e52            jsr        Auo_editor
[0003e6c8] 93c9                      suba.l     a1,a1
[0003e6ca] 303c 00d6                 move.w     #$00D6,d0
[0003e6ce] 204b                      movea.l    a3,a0
[0003e6d0] 4eb9 0003 8e52            jsr        Auo_editor
Aed_option_4:
[0003e6d6] 204a                      movea.l    a2,a0
[0003e6d8] 4eb9 0005 0330            jsr        Awi_delete
Aed_option_1:
[0003e6de] 4fef 0010                 lea.l      16(a7),a7
[0003e6e2] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003e6e6] 4e75                      rts

Aed_wrap:
[0003e6e8] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0003e6ec] 4fef ffd6                 lea.l      -42(a7),a7
[0003e6f0] 45f9 000c 83ce            lea.l      subs,a2
[0003e6f6] 41ea f1f8                 lea.l      -3592(a2),a0
[0003e6fa] 226a f200                 movea.l    -3584(a2),a1
[0003e6fe] 4e91                      jsr        (a1)
[0003e700] 2f48 0026                 move.l     a0,38(a7)
[0003e704] 6700 018a                 beq        Aed_wrap_1
[0003e708] 3f2a f3ba                 move.w     -3142(a2),-(a7)
[0003e70c] 43f9 000c 8616            lea.l      $000C8616,a1
[0003e712] 7003                      moveq.l    #3,d0
[0003e714] 2068 0014                 movea.l    20(a0),a0
[0003e718] 4eb9 0004 afac            jsr        Aob_printf
[0003e71e] 544f                      addq.w     #2,a7
[0003e720] 206f 0026                 movea.l    38(a7),a0
[0003e724] 4eb9 0005 1292            jsr        Awi_dialog
[0003e72a] 5b40                      subq.w     #5,d0
[0003e72c] 6600 0158                 bne        Aed_wrap_2
[0003e730] 47ef 0024                 lea.l      36(a7),a3
[0003e734] 4853                      pea.l      (a3)
[0003e736] 43f9 000c 8616            lea.l      $000C8616,a1
[0003e73c] 7003                      moveq.l    #3,d0
[0003e73e] 206f 002a                 movea.l    42(a7),a0
[0003e742] 2068 0014                 movea.l    20(a0),a0
[0003e746] 4eb9 0004 b0b2            jsr        Aob_scanf
[0003e74c] 584f                      addq.w     #4,a7
[0003e74e] 3013                      move.w     (a3),d0
[0003e750] 6f00 0134                 ble        Aed_wrap_2
[0003e754] 3540 f3ba                 move.w     d0,-3142(a2)
[0003e758] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e75e] 2268 0258                 movea.l    600(a0),a1
[0003e762] 2869 0014                 movea.l    20(a1),a4
[0003e766] 43ef 0010                 lea.l      16(a7),a1
[0003e76a] 204c                      movea.l    a4,a0
[0003e76c] 303c 00e3                 move.w     #$00E3,d0
[0003e770] 4eb9 0003 8e52            jsr        Auo_editor
[0003e776] 202f 0010                 move.l     16(a7),d0
[0003e77a] 6b18                      bmi.s      Aed_wrap_3
[0003e77c] 2600                      move.l     d0,d3
[0003e77e] 2f6f 0018 000c            move.l     24(a7),12(a7)
[0003e784] 93c9                      suba.l     a1,a1
[0003e786] 204c                      movea.l    a4,a0
[0003e788] 303c 00e2                 move.w     #$00E2,d0
[0003e78c] 4eb9 0003 8e52            jsr        Auo_editor
[0003e792] 6016                      bra.s      Aed_wrap_4
Aed_wrap_3:
[0003e794] 7600                      moveq.l    #0,d3
[0003e796] 43ef 000c                 lea.l      12(a7),a1
[0003e79a] 303c 00e9                 move.w     #$00E9,d0
[0003e79e] 204c                      movea.l    a4,a0
[0003e7a0] 4eb9 0003 8e52            jsr        Auo_editor
[0003e7a6] 53af 000c                 subq.l     #1,12(a7)
Aed_wrap_4:
[0003e7aa] 93c9                      suba.l     a1,a1
[0003e7ac] 303c 00d5                 move.w     #$00D5,d0
[0003e7b0] 204c                      movea.l    a4,a0
[0003e7b2] 4eb9 0003 8e52            jsr        Auo_editor
[0003e7b8] 43ef 0020                 lea.l      32(a7),a1
[0003e7bc] 303c 0107                 move.w     #$0107,d0
[0003e7c0] 204c                      movea.l    a4,a0
[0003e7c2] 4eb9 0003 8e52            jsr        Auo_editor
Aed_wrap_9:
[0003e7c8] 2e83                      move.l     d3,(a7)
[0003e7ca] 43d7                      lea.l      (a7),a1
[0003e7cc] 303c 00ca                 move.w     #$00CA,d0
[0003e7d0] 204c                      movea.l    a4,a0
[0003e7d2] 4eb9 0003 8e52            jsr        Auo_editor
[0003e7d8] 382f 0006                 move.w     6(a7),d4
[0003e7dc] b853                      cmp.w      (a3),d4
[0003e7de] 6f4e                      ble.s      Aed_wrap_5
[0003e7e0] 3813                      move.w     (a3),d4
[0003e7e2] 2a6f 0008                 movea.l    8(a7),a5
[0003e7e6] dac4                      adda.w     d4,a5
Aed_wrap_8:
[0003e7e8] b87c 0001                 cmp.w      #$0001,d4
[0003e7ec] 6c04                      bge.s      Aed_wrap_6
[0003e7ee] 3813                      move.w     (a3),d4
[0003e7f0] 6018                      bra.s      Aed_wrap_7
Aed_wrap_6:
[0003e7f2] 534d                      subq.w     #1,a5
[0003e7f4] 1015                      move.b     (a5),d0
[0003e7f6] 4880                      ext.w      d0
[0003e7f8] 206f 0020                 movea.l    32(a7),a0
[0003e7fc] 4eb9 0007 68ce            jsr        strchr
[0003e802] 2008                      move.l     a0,d0
[0003e804] 6604                      bne.s      Aed_wrap_7
[0003e806] 5344                      subq.w     #1,d4
[0003e808] 60de                      bra.s      Aed_wrap_8
Aed_wrap_7:
[0003e80a] 2543 0008                 move.l     d3,8(a2)
[0003e80e] 2483                      move.l     d3,(a2)
[0003e810] 3004                      move.w     d4,d0
[0003e812] 48c0                      ext.l      d0
[0003e814] 2540 000c                 move.l     d0,12(a2)
[0003e818] 2540 0004                 move.l     d0,4(a2)
[0003e81c] 224a                      movea.l    a2,a1
[0003e81e] 204c                      movea.l    a4,a0
[0003e820] 303c 00ea                 move.w     #$00EA,d0
[0003e824] 4eb9 0003 8e52            jsr        Auo_editor
[0003e82a] 52af 000c                 addq.l     #1,12(a7)
Aed_wrap_5:
[0003e82e] 5283                      addq.l     #1,d3
[0003e830] b6af 000c                 cmp.l      12(a7),d3
[0003e834] 6f92                      ble.s      Aed_wrap_9
[0003e836] 93c9                      suba.l     a1,a1
[0003e838] 303c 00ed                 move.w     #$00ED,d0
[0003e83c] 204c                      movea.l    a4,a0
[0003e83e] 4eb9 0003 8e52            jsr        Auo_editor
[0003e844] 93c9                      suba.l     a1,a1
[0003e846] 303c 00db                 move.w     #$00DB,d0
[0003e84a] 204c                      movea.l    a4,a0
[0003e84c] 4eb9 0003 8e52            jsr        Auo_editor
[0003e852] 93c9                      suba.l     a1,a1
[0003e854] 7005                      moveq.l    #5,d0
[0003e856] 204c                      movea.l    a4,a0
[0003e858] 4eb9 0003 8e52            jsr        Auo_editor
[0003e85e] 93c9                      suba.l     a1,a1
[0003e860] 303c 00d6                 move.w     #$00D6,d0
[0003e864] 204c                      movea.l    a4,a0
[0003e866] 4eb9 0003 8e52            jsr        Auo_editor
[0003e86c] 93c9                      suba.l     a1,a1
[0003e86e] 7005                      moveq.l    #5,d0
[0003e870] 204c                      movea.l    a4,a0
[0003e872] 4eb9 0003 8e52            jsr        Auo_editor
[0003e878] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e87e] 2068 0258                 movea.l    600(a0),a0
[0003e882] 6100 cb4a                 bsr        dirty
Aed_wrap_2:
[0003e886] 206f 0026                 movea.l    38(a7),a0
[0003e88a] 4eb9 0005 0330            jsr        Awi_delete
Aed_wrap_1:
[0003e890] 4fef 002a                 lea.l      42(a7),a7
[0003e894] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0003e898] 4e75                      rts

Aed_toclip:
[0003e89a] 4fef ff80                 lea.l      -128(a7),a7
[0003e89e] 43f9 000c 861d            lea.l      $000C861D,a1
[0003e8a4] 2f09                      move.l     a1,-(a7)
[0003e8a6] 2279 0010 1f12            movea.l    ACSblk,a1
[0003e8ac] 43e9 0356                 lea.l      854(a1),a1
[0003e8b0] 41ef 0004                 lea.l      4(a7),a0
[0003e8b4] 4eb9 0007 6950            jsr        strcpy
[0003e8ba] 225f                      movea.l    (a7)+,a1
[0003e8bc] 4eb9 0007 6886            jsr        strcat
[0003e8c2] 43d7                      lea.l      (a7),a1
[0003e8c4] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e8ca] 2068 0258                 movea.l    600(a0),a0
[0003e8ce] 2068 0014                 movea.l    20(a0),a0
[0003e8d2] 6100 f7ba                 bsr        save_it
[0003e8d6] 4fef 0080                 lea.l      128(a7),a7
[0003e8da] 4e75                      rts

Aed_fromclip:
[0003e8dc] 4fef ff80                 lea.l      -128(a7),a7
[0003e8e0] 43f9 000c 861d            lea.l      $000C861D,a1
[0003e8e6] 2f09                      move.l     a1,-(a7)
[0003e8e8] 2279 0010 1f12            movea.l    ACSblk,a1
[0003e8ee] 43e9 0356                 lea.l      854(a1),a1
[0003e8f2] 41ef 0004                 lea.l      4(a7),a0
[0003e8f6] 4eb9 0007 6950            jsr        strcpy
[0003e8fc] 225f                      movea.l    (a7)+,a1
[0003e8fe] 4eb9 0007 6886            jsr        strcat
[0003e904] 43d7                      lea.l      (a7),a1
[0003e906] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e90c] 2068 0258                 movea.l    600(a0),a0
[0003e910] 6100 f1e8                 bsr        merge_it
[0003e914] 4fef 0080                 lea.l      128(a7),a7
[0003e918] 4e75                      rts

Aed_saveoptions:
[0003e91a] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0003e91e] 5d4f                      subq.w     #6,a7
[0003e920] 49f9 0010 1f12            lea.l      ACSblk,a4
[0003e926] 2054                      movea.l    (a4),a0
[0003e928] 2268 0258                 movea.l    600(a0),a1
[0003e92c] 2451                      movea.l    (a1),a2
[0003e92e] 47f9 000c 7668            lea.l      protocnf,a3
[0003e934] 203c 0000 052e            move.l     #$0000052E,d0
[0003e93a] 43ea 0172                 lea.l      370(a2),a1
[0003e93e] 204b                      movea.l    a3,a0
[0003e940] 4eb9 0007 6f44            jsr        memcpy
[0003e946] 26bc 4145 4431            move.l     #$41454431,(a3)
[0003e94c] 026b ff7f 0122            andi.w     #$FF7F,290(a3)
[0003e952] 2054                      movea.l    (a4),a0
[0003e954] 2268 0258                 movea.l    600(a0),a1
[0003e958] 2069 0014                 movea.l    20(a1),a0
[0003e95c] 3768 0014 0006            move.w     20(a0),6(a3)
[0003e962] 3768 0016 0008            move.w     22(a0),8(a3)
[0003e968] 2848                      movea.l    a0,a4
[0003e96a] 43ef 0002                 lea.l      2(a7),a1
[0003e96e] 303c 0107                 move.w     #$0107,d0
[0003e972] 4eb9 0003 8e52            jsr        Auo_editor
[0003e978] 226f 0002                 movea.l    2(a7),a1
[0003e97c] 41eb 0424                 lea.l      1060(a3),a0
[0003e980] 4eb9 0007 6950            jsr        strcpy
[0003e986] 41f9 000c 85ee            lea.l      $000C85EE,a0
[0003e98c] 4eb9 0004 7066            jsr        Af_cfgfile
[0003e992] 4240                      clr.w      d0
[0003e994] 4eb9 0007 29be            jsr        Fcreate
[0003e99a] 2600                      move.l     d0,d3
[0003e99c] 6f00 0076                 ble.w      Aed_saveoptions_1
[0003e9a0] 41ea 0172                 lea.l      370(a2),a0
[0003e9a4] 223c 0000 052e            move.l     #$0000052E,d1
[0003e9aa] 3003                      move.w     d3,d0
[0003e9ac] 4eb9 0007 2a8e            jsr        Fwrite
[0003e9b2] 4244                      clr.w      d4
[0003e9b4] 3e84                      move.w     d4,(a7)
[0003e9b6] 6014                      bra.s      Aed_saveoptions_2
Aed_saveoptions_4:
[0003e9b8] 3004                      move.w     d4,d0
[0003e9ba] 48c0                      ext.l      d0
[0003e9bc] e588                      lsl.l      #2,d0
[0003e9be] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0003e9c2] 2228 00d2                 move.l     210(a0),d1
[0003e9c6] 6702                      beq.s      Aed_saveoptions_3
[0003e9c8] 5257                      addq.w     #1,(a7)
Aed_saveoptions_3:
[0003e9ca] 5244                      addq.w     #1,d4
Aed_saveoptions_2:
[0003e9cc] b87c 0028                 cmp.w      #$0028,d4
[0003e9d0] 6de6                      blt.s      Aed_saveoptions_4
[0003e9d2] 41d7                      lea.l      (a7),a0
[0003e9d4] 7204                      moveq.l    #4,d1
[0003e9d6] 3003                      move.w     d3,d0
[0003e9d8] 4eb9 0007 2a8e            jsr        Fwrite
[0003e9de] 4244                      clr.w      d4
[0003e9e0] 3e84                      move.w     d4,(a7)
[0003e9e2] 6022                      bra.s      Aed_saveoptions_5
Aed_saveoptions_7:
[0003e9e4] 3004                      move.w     d4,d0
[0003e9e6] 48c0                      ext.l      d0
[0003e9e8] e588                      lsl.l      #2,d0
[0003e9ea] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0003e9ee] 2228 00d2                 move.l     210(a0),d1
[0003e9f2] 6710                      beq.s      Aed_saveoptions_6
[0003e9f4] 2041                      movea.l    d1,a0
[0003e9f6] 3003                      move.w     d3,d0
[0003e9f8] 223c 0000 0102            move.l     #$00000102,d1
[0003e9fe] 4eb9 0007 2a8e            jsr        Fwrite
Aed_saveoptions_6:
[0003ea04] 5244                      addq.w     #1,d4
Aed_saveoptions_5:
[0003ea06] b87c 0028                 cmp.w      #$0028,d4
[0003ea0a] 6dd8                      blt.s      Aed_saveoptions_7
[0003ea0c] 3003                      move.w     d3,d0
[0003ea0e] 4eb9 0007 29ae            jsr        Fclose
Aed_saveoptions_1:
[0003ea14] 5c4f                      addq.w     #6,a7
[0003ea16] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[0003ea1a] 4e75                      rts

sel_edit:
[0003ea1c] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[0003ea20] 4fef ffe0                 lea.l      -32(a7),a7
[0003ea24] 7600                      moveq.l    #0,d3
[0003ea26] 45ef 000c                 lea.l      12(a7),a2
[0003ea2a] 47f9 0010 1f12            lea.l      ACSblk,a3
[0003ea30] 224a                      movea.l    a2,a1
[0003ea32] 303c 00e3                 move.w     #$00E3,d0
[0003ea36] 2053                      movea.l    (a3),a0
[0003ea38] 2068 0258                 movea.l    600(a0),a0
[0003ea3c] 2868 0014                 movea.l    20(a0),a4
[0003ea40] 204c                      movea.l    a4,a0
[0003ea42] 4eb9 0003 8e52            jsr        Auo_editor
[0003ea48] 2012                      move.l     (a2),d0
[0003ea4a] 6b00 0156                 bmi        sel_edit_1
[0003ea4e] 2053                      movea.l    (a3),a0
[0003ea50] 0c68 0002 02ca            cmpi.w     #$0002,714(a0)
[0003ea56] 6600 014a                 bne        sel_edit_1
[0003ea5a] 2800                      move.l     d0,d4
[0003ea5c] 601a                      bra.s      sel_edit_2
sel_edit_3:
[0003ea5e] 2e84                      move.l     d4,(a7)
[0003ea60] 43d7                      lea.l      (a7),a1
[0003ea62] 303c 00ca                 move.w     #$00CA,d0
[0003ea66] 204c                      movea.l    a4,a0
[0003ea68] 4eb9 0003 8e52            jsr        Auo_editor
[0003ea6e] 7001                      moveq.l    #1,d0
[0003ea70] d0af 0004                 add.l      4(a7),d0
[0003ea74] d680                      add.l      d0,d3
[0003ea76] 5284                      addq.l     #1,d4
sel_edit_2:
[0003ea78] b8aa 0008                 cmp.l      8(a2),d4
[0003ea7c] 6fe0                      ble.s      sel_edit_3
[0003ea7e] 7002                      moveq.l    #2,d0
[0003ea80] d083                      add.l      d3,d0
[0003ea82] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003ea88] 2a48                      movea.l    a0,a5
[0003ea8a] 200d                      move.l     a5,d0
[0003ea8c] 6700 0114                 beq        sel_edit_1
[0003ea90] 4210                      clr.b      (a0)
[0003ea92] 7600                      moveq.l    #0,d3
[0003ea94] 2812                      move.l     (a2),d4
[0003ea96] 6030                      bra.s      sel_edit_4
sel_edit_5:
[0003ea98] 2e84                      move.l     d4,(a7)
[0003ea9a] 43d7                      lea.l      (a7),a1
[0003ea9c] 303c 00ca                 move.w     #$00CA,d0
[0003eaa0] 204c                      movea.l    a4,a0
[0003eaa2] 4eb9 0003 8e52            jsr        Auo_editor
[0003eaa8] 202f 0004                 move.l     4(a7),d0
[0003eaac] 226f 0008                 movea.l    8(a7),a1
[0003eab0] 41f5 3800                 lea.l      0(a5,d3.l),a0
[0003eab4] 4eb9 0007 6f44            jsr        memcpy
[0003eaba] d6af 0004                 add.l      4(a7),d3
[0003eabe] 1bbc 000a 3800            move.b     #$0A,0(a5,d3.l)
[0003eac4] 5283                      addq.l     #1,d3
[0003eac6] 5284                      addq.l     #1,d4
sel_edit_4:
[0003eac8] b8aa 0008                 cmp.l      8(a2),d4
[0003eacc] 6fca                      ble.s      sel_edit_5
[0003eace] 4235 38ff                 clr.b      -1(a5,d3.l)
[0003ead2] 2053                      movea.l    (a3),a0
[0003ead4] 2268 0258                 movea.l    600(a0),a1
[0003ead8] 2869 0014                 movea.l    20(a1),a4
[0003eadc] 49ec 0030                 lea.l      48(a4),a4
[0003eae0] 4dec 0018                 lea.l      24(a4),a6
[0003eae4] 2d4d 000c                 move.l     a5,12(a6)
[0003eae8] 3d7c 001f 0016            move.w     #$001F,22(a6)
[0003eaee] 2053                      movea.l    (a3),a0
[0003eaf0] 3028 0012                 move.w     18(a0),d0
[0003eaf4] d040                      add.w      d0,d0
[0003eaf6] 3940 0014                 move.w     d0,20(a4)
[0003eafa] 2053                      movea.l    (a3),a0
[0003eafc] 3968 0014 0016            move.w     20(a0),22(a4)
[0003eb02] 2053                      movea.l    (a3),a0
[0003eb04] 3028 0262                 move.w     610(a0),d0
[0003eb08] 2268 0258                 movea.l    600(a0),a1
[0003eb0c] 9069 0034                 sub.w      52(a1),d0
[0003eb10] 9068 0012                 sub.w      18(a0),d0
[0003eb14] 3940 0010                 move.w     d0,16(a4)
[0003eb18] 2053                      movea.l    (a3),a0
[0003eb1a] 3228 0264                 move.w     612(a0),d1
[0003eb1e] 2268 0258                 movea.l    600(a0),a1
[0003eb22] 9269 0036                 sub.w      54(a1),d1
[0003eb26] 3428 0014                 move.w     20(a0),d2
[0003eb2a] e242                      asr.w      #1,d2
[0003eb2c] 9242                      sub.w      d2,d1
[0003eb2e] 3941 0012                 move.w     d1,18(a4)
[0003eb32] 026c ff7f 0008            andi.w     #$FF7F,8(a4)
[0003eb38] 7002                      moveq.l    #2,d0
[0003eb3a] 2053                      movea.l    (a3),a0
[0003eb3c] 2068 0258                 movea.l    600(a0),a0
[0003eb40] 4eb9 0004 487c            jsr        Adr_add
[0003eb46] 2053                      movea.l    (a3),a0
[0003eb48] 3228 0264                 move.w     612(a0),d1
[0003eb4c] 3028 0262                 move.w     610(a0),d0
[0003eb50] 4eb9 0004 557a            jsr        Adr_drag
[0003eb56] 7002                      moveq.l    #2,d0
[0003eb58] 2053                      movea.l    (a3),a0
[0003eb5a] 2068 0258                 movea.l    600(a0),a0
[0003eb5e] 4eb9 0004 492a            jsr        Adr_del
[0003eb64] 4240                      clr.w      d0
[0003eb66] 3940 0016                 move.w     d0,22(a4)
[0003eb6a] 3940 0014                 move.w     d0,20(a4)
[0003eb6e] 3940 0012                 move.w     d0,18(a4)
[0003eb72] 3940 0010                 move.w     d0,16(a4)
[0003eb76] 006c 0080 0008            ori.w      #$0080,8(a4)
[0003eb7c] 204d                      movea.l    a5,a0
[0003eb7e] 4eb9 0004 7e26            jsr        Ax_free
[0003eb84] 42ae 000c                 clr.l      12(a6)
[0003eb88] 426e 0016                 clr.w      22(a6)
[0003eb8c] 93c9                      suba.l     a1,a1
[0003eb8e] 303c 00e2                 move.w     #$00E2,d0
[0003eb92] 2053                      movea.l    (a3),a0
[0003eb94] 2468 0258                 movea.l    600(a0),a2
[0003eb98] 206a 0014                 movea.l    20(a2),a0
[0003eb9c] 4eb9 0003 8e52            jsr        Auo_editor
sel_edit_1:
[0003eba2] 4eb9 0003 9a96            jsr        Aus_editor
[0003eba8] 2053                      movea.l    (a3),a0
[0003ebaa] 2268 0258                 movea.l    600(a0),a1
[0003ebae] 2f51 001c                 move.l     (a1),28(a7)
[0003ebb2] 246f 001c                 movea.l    28(a7),a2
[0003ebb6] 426a 00c8                 clr.w      200(a2)
[0003ebba] 4fef 0020                 lea.l      32(a7),a7
[0003ebbe] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[0003ebc2] 4e75                      rts

ins_string:
[0003ebc4] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[0003ebc8] 4fef fff0                 lea.l      -16(a7),a7
[0003ebcc] 2079 0010 1f12            movea.l    ACSblk,a0
[0003ebd2] 2468 0240                 movea.l    576(a0),a2
[0003ebd6] 2668 0258                 movea.l    600(a0),a3
[0003ebda] b7ca                      cmpa.l     a2,a3
[0003ebdc] 6700 012e                 beq        ins_string_1
[0003ebe0] 4eb9 0004 4840            jsr        Adr_start
[0003ebe6] 4eb9 0004 484c            jsr        Adr_next
[0003ebec] 3600                      move.w     d0,d3
[0003ebee] 4a40                      tst.w      d0
[0003ebf0] 6b00 011a                 bmi        ins_string_1
[0003ebf4] 48c0                      ext.l      d0
[0003ebf6] 2200                      move.l     d0,d1
[0003ebf8] d281                      add.l      d1,d1
[0003ebfa] d280                      add.l      d0,d1
[0003ebfc] e789                      lsl.l      #3,d1
[0003ebfe] 286a 0014                 movea.l    20(a2),a4
[0003ec02] 49f4 1818                 lea.l      24(a4,d1.l),a4
[0003ec06] 342c 0016                 move.w     22(a4),d2
[0003ec0a] 947c 000b                 sub.w      #$000B,d2
[0003ec0e] 6712                      beq.s      ins_string_2
[0003ec10] 947c 0009                 sub.w      #$0009,d2
[0003ec14] 6700 00b6                 beq        ins_string_3
[0003ec18] 947c 000b                 sub.w      #$000B,d2
[0003ec1c] 6704                      beq.s      ins_string_2
[0003ec1e] 6000 00ec                 bra        ins_string_1
ins_string_2:
[0003ec22] 3003                      move.w     d3,d0
[0003ec24] 204a                      movea.l    a2,a0
[0003ec26] 4eb9 0004 492a            jsr        Adr_del
[0003ec2c] 2a6b 0014                 movea.l    20(a3),a5
[0003ec30] 93c9                      suba.l     a1,a1
[0003ec32] 303c 00d5                 move.w     #$00D5,d0
[0003ec36] 204d                      movea.l    a5,a0
[0003ec38] 4eb9 0003 8e52            jsr        Auo_editor
[0003ec3e] 93c9                      suba.l     a1,a1
[0003ec40] 303c 00e2                 move.w     #$00E2,d0
[0003ec44] 204d                      movea.l    a5,a0
[0003ec46] 4eb9 0003 8e52            jsr        Auo_editor
[0003ec4c] 43d7                      lea.l      (a7),a1
[0003ec4e] 303c 00d8                 move.w     #$00D8,d0
[0003ec52] 204d                      movea.l    a5,a0
[0003ec54] 4eb9 0003 8e52            jsr        Auo_editor
[0003ec5a] 43ef 0004                 lea.l      4(a7),a1
[0003ec5e] 303c 00e7                 move.w     #$00E7,d0
[0003ec62] 204d                      movea.l    a5,a0
[0003ec64] 4eb9 0003 8e52            jsr        Auo_editor
[0003ec6a] 226c 000c                 movea.l    12(a4),a1
[0003ec6e] 204b                      movea.l    a3,a0
[0003ec70] 6100 e2a2                 bsr        put_string
[0003ec74] 43ef 0008                 lea.l      8(a7),a1
[0003ec78] 303c 00d8                 move.w     #$00D8,d0
[0003ec7c] 204d                      movea.l    a5,a0
[0003ec7e] 4eb9 0003 8e52            jsr        Auo_editor
[0003ec84] 43ef 000c                 lea.l      12(a7),a1
[0003ec88] 303c 00e7                 move.w     #$00E7,d0
[0003ec8c] 204d                      movea.l    a5,a0
[0003ec8e] 4eb9 0003 8e52            jsr        Auo_editor
[0003ec94] 43d7                      lea.l      (a7),a1
[0003ec96] 303c 00e4                 move.w     #$00E4,d0
[0003ec9a] 204d                      movea.l    a5,a0
[0003ec9c] 4eb9 0003 8e52            jsr        Auo_editor
[0003eca2] 93c9                      suba.l     a1,a1
[0003eca4] 303c 00db                 move.w     #$00DB,d0
[0003eca8] 204d                      movea.l    a5,a0
[0003ecaa] 4eb9 0003 8e52            jsr        Auo_editor
[0003ecb0] 93c9                      suba.l     a1,a1
[0003ecb2] 7005                      moveq.l    #5,d0
[0003ecb4] 204d                      movea.l    a5,a0
[0003ecb6] 4eb9 0003 8e52            jsr        Auo_editor
[0003ecbc] 93c9                      suba.l     a1,a1
[0003ecbe] 303c 00d6                 move.w     #$00D6,d0
[0003ecc2] 204d                      movea.l    a5,a0
[0003ecc4] 4eb9 0003 8e52            jsr        Auo_editor
[0003ecca] 6040                      bra.s      ins_string_1
ins_string_3:
[0003eccc] 2c53                      movea.l    (a3),a6
[0003ecce] 303c 0080                 move.w     #$0080,d0
[0003ecd2] c06e 0294                 and.w      660(a6),d0
[0003ecd6] 6720                      beq.s      ins_string_4
[0003ecd8] 43ee 00b8                 lea.l      184(a6),a1
[0003ecdc] 41f9 000c 4112            lea.l      WARN_2SAVED,a0
[0003ece2] 4eb9 0005 ef8c            jsr        alert_str
[0003ece8] 5340                      subq.w     #1,d0
[0003ecea] 6706                      beq.s      ins_string_5
[0003ecec] 5540                      subq.w     #2,d0
[0003ecee] 671c                      beq.s      ins_string_1
[0003ecf0] 6006                      bra.s      ins_string_4
ins_string_5:
[0003ecf2] 204b                      movea.l    a3,a0
[0003ecf4] 6100 f44c                 bsr        ed_save
ins_string_4:
[0003ecf8] 3003                      move.w     d3,d0
[0003ecfa] 204a                      movea.l    a2,a0
[0003ecfc] 4eb9 0004 492a            jsr        Adr_del
[0003ed02] 226c 000c                 movea.l    12(a4),a1
[0003ed06] 204b                      movea.l    a3,a0
[0003ed08] 6100 ecf0                 bsr        open_file
ins_string_1:
[0003ed0c] 4fef 0010                 lea.l      16(a7),a7
[0003ed10] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[0003ed14] 4e75                      rts

info_string:
[0003ed16] 2f0a                      move.l     a2,-(a7)
[0003ed18] 2f0b                      move.l     a3,-(a7)
[0003ed1a] 2448                      movea.l    a0,a2
[0003ed1c] 2650                      movea.l    (a0),a3
[0003ed1e] 302b 0294                 move.w     660(a3),d0
[0003ed22] c07c 0200                 and.w      #$0200,d0
[0003ed26] 6620                      bne.s      info_string_1
[0003ed28] 206a 0018                 movea.l    24(a2),a0
[0003ed2c] 700d                      moveq.l    #13,d0
[0003ed2e] 4eb9 0004 afe0            jsr        Aob_puttext
[0003ed34] 72ff                      moveq.l    #-1,d1
[0003ed36] 303c 100d                 move.w     #$100D,d0
[0003ed3a] 204a                      movea.l    a2,a0
[0003ed3c] 226a 0066                 movea.l    102(a2),a1
[0003ed40] 4e91                      jsr        (a1)
[0003ed42] 377c 0005 00c8            move.w     #$0005,200(a3)
info_string_1:
[0003ed48] 265f                      movea.l    (a7)+,a3
[0003ed4a] 245f                      movea.l    (a7)+,a2
[0003ed4c] 4e75                      rts

acc_fkey:
[0003ed4e] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003ed52] 4fef fefe                 lea.l      -258(a7),a7
[0003ed56] 2a48                      movea.l    a0,a5
[0003ed58] 2649                      movea.l    a1,a3
[0003ed5a] 43f9 000c 83e6            lea.l      $000C83E6,a1
[0003ed60] 41d7                      lea.l      (a7),a0
[0003ed62] 703f                      moveq.l    #63,d0
acc_fkey_1:
[0003ed64] 20d9                      move.l     (a1)+,(a0)+
[0003ed66] 51c8 fffc                 dbf        d0,acc_fkey_1
[0003ed6a] 30d9                      move.w     (a1)+,(a0)+
[0003ed6c] 2853                      movea.l    (a3),a4
[0003ed6e] 302d 0016                 move.w     22(a5),d0
[0003ed72] 907c 000b                 sub.w      #$000B,d0
[0003ed76] 6712                      beq.s      acc_fkey_2
[0003ed78] 907c 0009                 sub.w      #$0009,d0
[0003ed7c] 670c                      beq.s      acc_fkey_2
[0003ed7e] 907c 000a                 sub.w      #$000A,d0
[0003ed82] 6706                      beq.s      acc_fkey_2
[0003ed84] 5340                      subq.w     #1,d0
[0003ed86] 6702                      beq.s      acc_fkey_2
[0003ed88] 6038                      bra.s      acc_fkey_3
acc_fkey_2:
[0003ed8a] 203c 0000 00ff            move.l     #$000000FF,d0
[0003ed90] 226d 000c                 movea.l    12(a5),a1
[0003ed94] 41ef 0002                 lea.l      2(a7),a0
[0003ed98] 4eb9 0007 69da            jsr        strncat
[0003ed9e] 224b                      movea.l    a3,a1
[0003eda0] 41d7                      lea.l      (a7),a0
[0003eda2] 4eb9 0003 ee54            jsr        edit_fkey
[0003eda8] 5340                      subq.w     #1,d0
[0003edaa] 661a                      bne.s      acc_fkey_4
[0003edac] 43d7                      lea.l      (a7),a1
[0003edae] 303c 0192                 move.w     #$0192,d0
[0003edb2] 206c 0004                 movea.l    4(a4),a0
[0003edb6] 266c 0004                 movea.l    4(a4),a3
[0003edba] 246b 0004                 movea.l    4(a3),a2
[0003edbe] 4e92                      jsr        (a2)
[0003edc0] 6004                      bra.s      acc_fkey_4
acc_fkey_3:
[0003edc2] 4240                      clr.w      d0
[0003edc4] 6002                      bra.s      acc_fkey_5
acc_fkey_4:
[0003edc6] 7001                      moveq.l    #1,d0
acc_fkey_5:
[0003edc8] 4fef 0102                 lea.l      258(a7),a7
[0003edcc] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003edd0] 4e75                      rts

comp_fkey:
[0003edd2] 1028 0001                 move.b     1(a0),d0
[0003edd6] 4880                      ext.w      d0
[0003edd8] d07c fff0                 add.w      #$FFF0,d0
[0003eddc] 3210                      move.w     (a0),d1
[0003edde] c27c 0400                 and.w      #$0400,d1
[0003ede2] 6704                      beq.s      comp_fkey_1
[0003ede4] d07c 0014                 add.w      #$0014,d0
comp_fkey_1:
[0003ede8] 3210                      move.w     (a0),d1
[0003edea] c27c 0300                 and.w      #$0300,d1
[0003edee] 6704                      beq.s      comp_fkey_2
[0003edf0] d07c 000a                 add.w      #$000A,d0
comp_fkey_2:
[0003edf4] 1229 0001                 move.b     1(a1),d1
[0003edf8] 4881                      ext.w      d1
[0003edfa] d27c fff0                 add.w      #$FFF0,d1
[0003edfe] 3411                      move.w     (a1),d2
[0003ee00] c47c 0400                 and.w      #$0400,d2
[0003ee04] 6704                      beq.s      comp_fkey_3
[0003ee06] d27c 0014                 add.w      #$0014,d1
comp_fkey_3:
[0003ee0a] 3411                      move.w     (a1),d2
[0003ee0c] c47c 0300                 and.w      #$0300,d2
[0003ee10] 6704                      beq.s      comp_fkey_4
[0003ee12] d27c 000a                 add.w      #$000A,d1
comp_fkey_4:
[0003ee16] b240                      cmp.w      d0,d1
[0003ee18] 6f04                      ble.s      comp_fkey_5
[0003ee1a] 70ff                      moveq.l    #-1,d0
[0003ee1c] 4e75                      rts
comp_fkey_5:
[0003ee1e] b240                      cmp.w      d0,d1
[0003ee20] 6c04                      bge.s      comp_fkey_6
[0003ee22] 7001                      moveq.l    #1,d0
[0003ee24] 4e75                      rts
comp_fkey_6:
[0003ee26] 4240                      clr.w      d0
[0003ee28] 4e75                      rts

drag_fkey:
[0003ee2a] 2f0a                      move.l     a2,-(a7)
[0003ee2c] 2f0b                      move.l     a3,-(a7)
[0003ee2e] 2648                      movea.l    a0,a3
[0003ee30] 2449                      movea.l    a1,a2
[0003ee32] 41ea 0002                 lea.l      2(a2),a0
[0003ee36] 4eb9 0004 36d6            jsr        Ast_create
[0003ee3c] 2748 000c                 move.l     a0,12(a3)
[0003ee40] 6604                      bne.s      drag_fkey_1
[0003ee42] 4240                      clr.w      d0
[0003ee44] 6008                      bra.s      drag_fkey_2
drag_fkey_1:
[0003ee46] 377c 000b 0016            move.w     #$000B,22(a3)
[0003ee4c] 7001                      moveq.l    #1,d0
drag_fkey_2:
[0003ee4e] 265f                      movea.l    (a7)+,a3
[0003ee50] 245f                      movea.l    (a7)+,a2
[0003ee52] 4e75                      rts

edit_fkey:
[0003ee54] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0003ee58] 554f                      subq.w     #2,a7
[0003ee5a] 2648                      movea.l    a0,a3
[0003ee5c] 2849                      movea.l    a1,a4
[0003ee5e] 4243                      clr.w      d3
[0003ee60] 41f9 000c 73e0            lea.l      WIED_NEWFKEY,a0
[0003ee66] 2279 000c 73e8            movea.l    $000C73E8,a1
[0003ee6c] 4e91                      jsr        (a1)
[0003ee6e] 2448                      movea.l    a0,a2
[0003ee70] 200a                      move.l     a2,d0
[0003ee72] 6606                      bne.s      edit_fkey_1
[0003ee74] 4240                      clr.w      d0
[0003ee76] 6000 00cc                 bra        edit_fkey_2
edit_fkey_1:
[0003ee7a] 248c                      move.l     a4,(a2)
[0003ee7c] 43eb 0002                 lea.l      2(a3),a1
[0003ee80] 7009                      moveq.l    #9,d0
[0003ee82] 206a 0014                 movea.l    20(a2),a0
[0003ee86] 4eb9 0004 afe0            jsr        Aob_puttext
[0003ee8c] 0c53 0010                 cmpi.w     #$0010,(a3)
[0003ee90] 6c04                      bge.s      edit_fkey_3
[0003ee92] 36bc 0010                 move.w     #$0010,(a3)
edit_fkey_3:
[0003ee96] 3013                      move.w     (a3),d0
[0003ee98] c07c 0300                 and.w      #$0300,d0
[0003ee9c] 670a                      beq.s      edit_fkey_4
[0003ee9e] 206a 0014                 movea.l    20(a2),a0
[0003eea2] 0068 0001 003a            ori.w      #$0001,58(a0)
edit_fkey_4:
[0003eea8] 3013                      move.w     (a3),d0
[0003eeaa] c07c 0400                 and.w      #$0400,d0
[0003eeae] 670a                      beq.s      edit_fkey_5
[0003eeb0] 206a 0014                 movea.l    20(a2),a0
[0003eeb4] 0068 0001 006a            ori.w      #$0001,106(a0)
edit_fkey_5:
[0003eeba] 102b 0001                 move.b     1(a3),d0
[0003eebe] 4880                      ext.w      d0
[0003eec0] d07c fff0                 add.w      #$FFF0,d0
[0003eec4] 3e80                      move.w     d0,(a7)
[0003eec6] 43d7                      lea.l      (a7),a1
[0003eec8] 206a 0014                 movea.l    20(a2),a0
[0003eecc] 41e8 0090                 lea.l      144(a0),a0
[0003eed0] 303c 0191                 move.w     #$0191,d0
[0003eed4] 4eb9 0005 c2fa            jsr        Auo_cycle
[0003eeda] 204a                      movea.l    a2,a0
[0003eedc] 4eb9 0005 1292            jsr        Awi_dialog
[0003eee2] b07c 000a                 cmp.w      #$000A,d0
[0003eee6] 6652                      bne.s      edit_fkey_6
[0003eee8] 43eb 0002                 lea.l      2(a3),a1
[0003eeec] 7009                      moveq.l    #9,d0
[0003eeee] 206a 0014                 movea.l    20(a2),a0
[0003eef2] 4eb9 0004 b154            jsr        Aob_gettext
[0003eef8] 43d7                      lea.l      (a7),a1
[0003eefa] 303c 0192                 move.w     #$0192,d0
[0003eefe] 206a 0014                 movea.l    20(a2),a0
[0003ef02] 41e8 0090                 lea.l      144(a0),a0
[0003ef06] 4eb9 0005 c2fa            jsr        Auo_cycle
[0003ef0c] 7010                      moveq.l    #16,d0
[0003ef0e] d057                      add.w      (a7),d0
[0003ef10] 3680                      move.w     d0,(a3)
[0003ef12] 7201                      moveq.l    #1,d1
[0003ef14] 206a 0014                 movea.l    20(a2),a0
[0003ef18] c268 003a                 and.w      58(a0),d1
[0003ef1c] 6704                      beq.s      edit_fkey_7
[0003ef1e] 0053 0300                 ori.w      #$0300,(a3)
edit_fkey_7:
[0003ef22] 7001                      moveq.l    #1,d0
[0003ef24] 206a 0014                 movea.l    20(a2),a0
[0003ef28] c068 006a                 and.w      106(a0),d0
[0003ef2c] 6704                      beq.s      edit_fkey_8
[0003ef2e] 0053 0400                 ori.w      #$0400,(a3)
edit_fkey_8:
[0003ef32] 102b 0002                 move.b     2(a3),d0
[0003ef36] 6702                      beq.s      edit_fkey_6
[0003ef38] 7601                      moveq.l    #1,d3
edit_fkey_6:
[0003ef3a] 204a                      movea.l    a2,a0
[0003ef3c] 4eb9 0005 0330            jsr        Awi_delete
[0003ef42] 3003                      move.w     d3,d0
edit_fkey_2:
[0003ef44] 544f                      addq.w     #2,a7
[0003ef46] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003ef4a] 4e75                      rts

key_fkey:
[0003ef4c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0003ef50] 4fef fef2                 lea.l      -270(a7),a7
[0003ef54] 3600                      move.w     d0,d3
[0003ef56] 2450                      movea.l    (a0),a2
[0003ef58] 47ef 0004                 lea.l      4(a7),a3
[0003ef5c] 41ef 000c                 lea.l      12(a7),a0
[0003ef60] 2748 0004                 move.l     a0,4(a3)
[0003ef64] 43d7                      lea.l      (a7),a1
[0003ef66] 303c 0191                 move.w     #$0191,d0
[0003ef6a] 206a 0004                 movea.l    4(a2),a0
[0003ef6e] 286a 0004                 movea.l    4(a2),a4
[0003ef72] 286c 0004                 movea.l    4(a4),a4
[0003ef76] 4e94                      jsr        (a4)
[0003ef78] 4293                      clr.l      (a3)
[0003ef7a] 602c                      bra.s      key_fkey_1
key_fkey_4:
[0003ef7c] 224b                      movea.l    a3,a1
[0003ef7e] 303c 0194                 move.w     #$0194,d0
[0003ef82] 206a 0004                 movea.l    4(a2),a0
[0003ef86] 286a 0004                 movea.l    4(a2),a4
[0003ef8a] 286c 0004                 movea.l    4(a4),a4
[0003ef8e] 4e94                      jsr        (a4)
[0003ef90] 4a40                      tst.w      d0
[0003ef92] 6712                      beq.s      key_fkey_2
[0003ef94] 3003                      move.w     d3,d0
[0003ef96] c07c 07ff                 and.w      #$07FF,d0
[0003ef9a] 322f 000c                 move.w     12(a7),d1
[0003ef9e] b240                      cmp.w      d0,d1
[0003efa0] 6604                      bne.s      key_fkey_2
[0003efa2] 2013                      move.l     (a3),d0
[0003efa4] 600a                      bra.s      key_fkey_3
key_fkey_2:
[0003efa6] 5293                      addq.l     #1,(a3)
key_fkey_1:
[0003efa8] 2013                      move.l     (a3),d0
[0003efaa] b097                      cmp.l      (a7),d0
[0003efac] 6dce                      blt.s      key_fkey_4
[0003efae] 70ff                      moveq.l    #-1,d0
key_fkey_3:
[0003efb0] 4fef 010e                 lea.l      270(a7),a7
[0003efb4] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003efb8] 4e75                      rts

mess_fkey:
[0003efba] 2f0a                      move.l     a2,-(a7)
[0003efbc] 2f0b                      move.l     a3,-(a7)
[0003efbe] 2448                      movea.l    a0,a2
[0003efc0] 3200                      move.w     d0,d1
[0003efc2] 5741                      subq.w     #3,d1
[0003efc4] 6706                      beq.s      mess_fkey_1
[0003efc6] 5341                      subq.w     #1,d1
[0003efc8] 6718                      beq.s      mess_fkey_2
[0003efca] 6022                      bra.s      mess_fkey_3
mess_fkey_1:
[0003efcc] 41f9 000c 40ad            lea.l      A_FKEYDBL,a0
[0003efd2] 7001                      moveq.l    #1,d0
[0003efd4] 4eb9 0005 17fe            jsr        Awi_alert
[0003efda] 5540                      subq.w     #2,d0
[0003efdc] 6610                      bne.s      mess_fkey_3
[0003efde] 4240                      clr.w      d0
[0003efe0] 600e                      bra.s      mess_fkey_4
mess_fkey_2:
[0003efe2] 93c9                      suba.l     a1,a1
[0003efe4] 700f                      moveq.l    #15,d0
[0003efe6] 204a                      movea.l    a2,a0
[0003efe8] 266a 0004                 movea.l    4(a2),a3
[0003efec] 4e93                      jsr        (a3)
mess_fkey_3:
[0003efee] 7001                      moveq.l    #1,d0
mess_fkey_4:
[0003eff0] 265f                      movea.l    (a7)+,a3
[0003eff2] 245f                      movea.l    (a7)+,a2
[0003eff4] 4e75                      rts

print_fkey:
[0003eff6] 2f0a                      move.l     a2,-(a7)
[0003eff8] 2f0b                      move.l     a3,-(a7)
[0003effa] 4fef ffd8                 lea.l      -40(a7),a7
[0003effe] 2448                      movea.l    a0,a2
[0003f000] 2649                      movea.l    a1,a3
[0003f002] 43f9 000c 84e8            lea.l      $000C84E8,a1
[0003f008] 41d7                      lea.l      (a7),a0
[0003f00a] 7027                      moveq.l    #39,d0
print_fkey_1:
[0003f00c] 10d9                      move.b     (a1)+,(a0)+
[0003f00e] 51c8 fffc                 dbf        d0,print_fkey_1
[0003f012] 43f9 000c 864f            lea.l      $000C864F,a1
[0003f018] 204a                      movea.l    a2,a0
[0003f01a] 4eb9 0007 6950            jsr        strcpy
[0003f020] 3013                      move.w     (a3),d0
[0003f022] c07c 0300                 and.w      #$0300,d0
[0003f026] 6704                      beq.s      print_fkey_2
[0003f028] 14bc 0001                 move.b     #$01,(a2)
print_fkey_2:
[0003f02c] 3013                      move.w     (a3),d0
[0003f02e] c07c 0400                 and.w      #$0400,d0
[0003f032] 6706                      beq.s      print_fkey_3
[0003f034] 157c 005e 0001            move.b     #$5E,1(a2)
print_fkey_3:
[0003f03a] 486b 0002                 pea.l      2(a3)
[0003f03e] 3f3c 00f9                 move.w     #$00F9,-(a7)
[0003f042] 102b 0001                 move.b     1(a3),d0
[0003f046] 4880                      ext.w      d0
[0003f048] e548                      lsl.w      #2,d0
[0003f04a] 2f37 00c6                 move.l     -58(a7,d0.w),-(a7)
[0003f04e] 43f9 000c 8652            lea.l      $000C8652,a1
[0003f054] 41ea 0002                 lea.l      2(a2),a0
[0003f058] 4eb9 0007 5680            jsr        sprintf
[0003f05e] 4fef 000a                 lea.l      10(a7),a7
[0003f062] 7001                      moveq.l    #1,d0
[0003f064] 4fef 0028                 lea.l      40(a7),a7
[0003f068] 265f                      movea.l    (a7)+,a3
[0003f06a] 245f                      movea.l    (a7)+,a2
[0003f06c] 4e75                      rts

term_fkey:
[0003f06e] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003f072] 4fef fef2                 lea.l      -270(a7),a7
[0003f076] 2450                      movea.l    (a0),a2
[0003f078] 47ef 000c                 lea.l      12(a7),a3
[0003f07c] 49ef 0004                 lea.l      4(a7),a4
[0003f080] 294b 0004                 move.l     a3,4(a4)
[0003f084] 43d7                      lea.l      (a7),a1
[0003f086] 303c 0191                 move.w     #$0191,d0
[0003f08a] 206a 0004                 movea.l    4(a2),a0
[0003f08e] 2a6a 0004                 movea.l    4(a2),a5
[0003f092] 2a6d 0004                 movea.l    4(a5),a5
[0003f096] 4e95                      jsr        (a5)
[0003f098] 7600                      moveq.l    #0,d3
[0003f09a] 6024                      bra.s      term_fkey_1
term_fkey_3:
[0003f09c] 2003                      move.l     d3,d0
[0003f09e] e588                      lsl.l      #2,d0
[0003f0a0] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0003f0a4] 2228 00d2                 move.l     210(a0),d1
[0003f0a8] 6714                      beq.s      term_fkey_2
[0003f0aa] 2041                      movea.l    d1,a0
[0003f0ac] 4eb9 0004 7e26            jsr        Ax_free
[0003f0b2] 2003                      move.l     d3,d0
[0003f0b4] e588                      lsl.l      #2,d0
[0003f0b6] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0003f0ba] 42a8 00d2                 clr.l      210(a0)
term_fkey_2:
[0003f0be] 5283                      addq.l     #1,d3
term_fkey_1:
[0003f0c0] 7028                      moveq.l    #40,d0
[0003f0c2] b083                      cmp.l      d3,d0
[0003f0c4] 6ed6                      bgt.s      term_fkey_3
[0003f0c6] 4294                      clr.l      (a4)
[0003f0c8] 6066                      bra.s      term_fkey_4
term_fkey_8:
[0003f0ca] 224c                      movea.l    a4,a1
[0003f0cc] 303c 0194                 move.w     #$0194,d0
[0003f0d0] 206a 0004                 movea.l    4(a2),a0
[0003f0d4] 2a6a 0004                 movea.l    4(a2),a5
[0003f0d8] 2a6d 0004                 movea.l    4(a5),a5
[0003f0dc] 4e95                      jsr        (a5)
[0003f0de] 4a40                      tst.w      d0
[0003f0e0] 674c                      beq.s      term_fkey_5
[0003f0e2] 162b 0001                 move.b     1(a3),d3
[0003f0e6] 4883                      ext.w      d3
[0003f0e8] d67c fff0                 add.w      #$FFF0,d3
[0003f0ec] 3013                      move.w     (a3),d0
[0003f0ee] c07c 0400                 and.w      #$0400,d0
[0003f0f2] 6704                      beq.s      term_fkey_6
[0003f0f4] d67c 0014                 add.w      #$0014,d3
term_fkey_6:
[0003f0f8] 3013                      move.w     (a3),d0
[0003f0fa] c07c 0300                 and.w      #$0300,d0
[0003f0fe] 6704                      beq.s      term_fkey_7
[0003f100] d67c 000a                 add.w      #$000A,d3
term_fkey_7:
[0003f104] 203c 0000 0102            move.l     #$00000102,d0
[0003f10a] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003f110] 3003                      move.w     d3,d0
[0003f112] 48c0                      ext.l      d0
[0003f114] e588                      lsl.l      #2,d0
[0003f116] 43f2 0800                 lea.l      0(a2,d0.l),a1
[0003f11a] 2348 00d2                 move.l     a0,210(a1)
[0003f11e] 670e                      beq.s      term_fkey_5
[0003f120] 224b                      movea.l    a3,a1
[0003f122] 203c 0000 0102            move.l     #$00000102,d0
[0003f128] 4eb9 0007 6f44            jsr        memcpy
term_fkey_5:
[0003f12e] 5294                      addq.l     #1,(a4)
term_fkey_4:
[0003f130] 2014                      move.l     (a4),d0
[0003f132] b097                      cmp.l      (a7),d0
[0003f134] 6d94                      blt.s      term_fkey_8
[0003f136] 42aa 0004                 clr.l      4(a2)
[0003f13a] 7001                      moveq.l    #1,d0
[0003f13c] 4fef 010e                 lea.l      270(a7),a7
[0003f140] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003f144] 4e75                      rts

Aed_fkey:
[0003f146] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0003f14a] 4fef ff4c                 lea.l      -180(a7),a7
[0003f14e] 41f9 000c 8510            lea.l      $000C8510,a0
[0003f154] 43d7                      lea.l      (a7),a1
[0003f156] 702c                      moveq.l    #44,d0
Aed_fkey_1:
[0003f158] 22d8                      move.l     (a0)+,(a1)+
[0003f15a] 51c8 fffc                 dbf        d0,Aed_fkey_1
[0003f15e] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f164] 2ea8 0258                 move.l     600(a0),(a7)
[0003f168] 43f9 000c 41a4            lea.l      FK_TITLE,a1
[0003f16e] 41ef 0004                 lea.l      4(a7),a0
[0003f172] 4eb9 0007 6950            jsr        strcpy
[0003f178] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f17e] 2268 0258                 movea.l    600(a0),a1
[0003f182] 2651                      movea.l    (a1),a3
[0003f184] 202b 0004                 move.l     4(a3),d0
[0003f188] 6654                      bne.s      Aed_fkey_2
[0003f18a] 41d7                      lea.l      (a7),a0
[0003f18c] 2279 000c 95a4            movea.l    $000C95A4,a1
[0003f192] 4e91                      jsr        (a1)
[0003f194] 2748 0004                 move.l     a0,4(a3)
[0003f198] 674e                      beq.s      Aed_fkey_3
[0003f19a] 4243                      clr.w      d3
[0003f19c] 6026                      bra.s      Aed_fkey_4
Aed_fkey_6:
[0003f19e] 3003                      move.w     d3,d0
[0003f1a0] 48c0                      ext.l      d0
[0003f1a2] e588                      lsl.l      #2,d0
[0003f1a4] 41f3 0800                 lea.l      0(a3,d0.l),a0
[0003f1a8] 2228 00d2                 move.l     210(a0),d1
[0003f1ac] 6714                      beq.s      Aed_fkey_5
[0003f1ae] 2241                      movea.l    d1,a1
[0003f1b0] 206b 0004                 movea.l    4(a3),a0
[0003f1b4] 246b 0004                 movea.l    4(a3),a2
[0003f1b8] 246a 0004                 movea.l    4(a2),a2
[0003f1bc] 303c 0192                 move.w     #$0192,d0
[0003f1c0] 4e92                      jsr        (a2)
Aed_fkey_5:
[0003f1c2] 5243                      addq.w     #1,d3
Aed_fkey_4:
[0003f1c4] b67c 0028                 cmp.w      #$0028,d3
[0003f1c8] 6dd4                      blt.s      Aed_fkey_6
[0003f1ca] 93c9                      suba.l     a1,a1
[0003f1cc] 303c 0190                 move.w     #$0190,d0
[0003f1d0] 206b 0004                 movea.l    4(a3),a0
[0003f1d4] 246b 0004                 movea.l    4(a3),a2
[0003f1d8] 246a 0004                 movea.l    4(a2),a2
[0003f1dc] 4e92                      jsr        (a2)
Aed_fkey_2:
[0003f1de] 206b 0004                 movea.l    4(a3),a0
[0003f1e2] 4eb9 0004 f0ca            jsr        Awi_show
Aed_fkey_3:
[0003f1e8] 4fef 00b4                 lea.l      180(a7),a7
[0003f1ec] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0003f1f0] 4e75                      rts

		.data

ASK_SELECT:
[000c406c]                           dc.b '[2][ | Nur den selektierten | Block speichern?| ][Ja|   Nein   ]',0
A_FKEYDBL:
[000c40ad]                           dc.b '[2][ Diese Funktionstaste ist| bereits belegt. Soll der| neue Text bernommen werden? ][Ja|  Nein  ]',0
WARN_2SAVED:
[000c4112]                           dc.b '[2][ Soll der modifizierte Text | ',$27,'%s',$27,'| gesichert werden?][JA|Nein| Abbruch ]',0
WARN_SAVED:
[000c4160]                           dc.b '[2][ Soll der modifizierte Text | ',$27,'%s',$27,'| gesichert werden?][JA|Nein]',0
FK_TITLE:
[000c41a4]                           dc.b ' Funktionstasten ',0
TEXT_002:
[000c41b6]                           dc.b $00
TEXT_004:
[000c41b7]                           dc.b '--------------------',0
TEXT_006:
[000c41cc]                           dc.b ' Datei',0
TEXT_01:
[000c41d3]                           dc.b 'Rckw„rts',0
TEXT_013:
[000c41dd]                           dc.b $4f
[000c41de]                           dc.w $4b00
TEXT_018:
[000c41e0]                           dc.b ' Suchen ',0
TEXT_02:
[000c41e9]                           dc.b 'Alles',0
TEXT_026:
[000c41ef]                           dc.b 'Abbruch',0
TEXT_03:
[000c41f7]                           dc.b 'Tabulatorweite:',0
TEXT_032:
[000c4207]                           dc.b ' Optionen',0
TEXT_04:
[000c4211]                           dc.b ' F 1 | F 2 | F 3 | F 4 | F 5 | F 6 | F 7 | F 8 | F 9 | F10 ',0
TEXT_05:
[000c424d]                           dc.b 'Zeilen:',0
TEXT_06:
[000c4255]                           dc.b 'Text:',0
TEXT_07:
[000c425b]                           dc.b 'Bytes:',0
TEXT_08:
[000c4262]                           dc.b '  Gehe zu...      ^L',0
TEXT_09:
[000c4277]                           dc.b '1234567',0
TEXT_10:
[000c427f]                           dc.b ' Ersatz:',0
TEXT_11:
[000c4288]                           dc.b ' Optionen ',0
TEXT_12:
[000c4293]                           dc.b ' Zeile Finden ',0
TEXT_13:
[000c42a2]                           dc.b 'Shift',0
TEXT_14:
[000c42a8]                           dc.b 'Darstellung:',0
TEXT_15:
[000c42b5]                           dc.b '  ...sichern',0
TEXT_16:
[000c42c2]                           dc.b '  Sichern als...  ^M',0
TEXT_17:
[000c42d7]                           dc.b '  Hinzufgen...',0
TEXT_18:
[000c42e7]                           dc.b '  Information...  ^I',0
TEXT_19:
[000c42fc]                           dc.b '  Sichern         ^S',0
TEXT_20:
[000c4311]                           dc.b '  Zum Klemmbrett   '
[000c4324]                           dc.w $015e
[000c4326]                           dc.w $4300
TEXT_21:
[000c4328]                           dc.b '  Ersetzen...     ^R',0
TEXT_22:
[000c433d]                           dc.b 'kontinuierlich',0
TEXT_23:
[000c434c]                           dc.b 'EDITOR',0
TEXT_24:
[000c4353]                           dc.b 'Dies ist der vorbereitete Editor, der im ACSpro-Entwicklerpaket mitgeliefert wird.',0
TEXT_25:
[000c43a6]                           dc.b '  Kopieren          ^C',0
TEXT_26:
[000c43bd]                           dc.b '  Zeile aussch.     ^Y',0
TEXT_27:
[000c43d4]                           dc.b '  Vom Klemmbrett   '
[000c43e7]                           dc.b $01
[000c43e8]                           dc.w $5e56
[000c43ea]                           dc.b $00
TEXT_28:
[000c43eb]                           dc.b '  ™ffnen...       ^O',0
TEXT_29:
[000c4400]                           dc.b '  Ausschneiden      ^X',0
TEXT_30:
[000c4417]                           dc.b '  šber mich...',0
TEXT_31:
[000c4426]                           dc.b 'Modus:',0
TEXT_32:
[000c442d]                           dc.b 'Zeile:',0
TEXT_33:
[000c4434]                           dc.b '  N„chster        ^T',0
TEXT_34:
[000c4449]                           dc.b '  Finden...       ^F',0
TEXT_35:
[000c445e]                           dc.b '  N„chster        ^G',0
TEXT_36:
[000c4473]                           dc.b '  Einstellungen...   '
[000c4488]                           dc.w $074f
[000c448a]                           dc.b $00
TEXT_37:
[000c448b]                           dc.b '  Zeichen tauschen  '
[000c449f]                           dc.b $07
[000c44a0]                           dc.w $5400
TEXT_38:
[000c44a2]                           dc.b '  Einfgen          ^V',0
TEXT_39:
[000c44b9]                           dc.b 'Cursor:',0
TEXT_40:
[000c44c1]                           dc.b '  Schrift...         '
[000c44d6]                           dc.w $0753
[000c44d8]                           dc.b $00
TEXT_41:
[000c44d9]                           dc.b 'Control',0
TEXT_42:
[000c44e1]                           dc.b 'Text:',0
TEXT_43:
[000c44e7]                           dc.b 'Umbruch:',0
TEXT_44:
[000c44f0]                           dc.b '  Block suchen  '
[000c4500]                           dc.w $0754
[000c4502]                           dc.w $4142
[000c4504]                           dc.b $00
TEXT_45:
[000c4505]                           dc.b 'Balken|Strich|Block|Rahmen',0
TEXT_46:
[000c4520]                           dc.b '  Umbrechen...       '
[000c4535]                           dc.b $07
[000c4536]                           dc.w $5500
TEXT_47:
[000c4538]                           dc.b ' Funktionstaste ',0
TEXT_48:
[000c4549]                           dc.b '  Funktionstasten... '
[000c455e]                           dc.w $0746
[000c4560]                           dc.b $00
TEXT_49:
[000c4561]                           dc.b 'Taste:',0
TEXT_50:
[000c4568]                           dc.b 'ABC=abc',0
TEXT_51:
[000c4570]                           dc.b 'Abbruch',0
TEXT_52:
[000c4578]                           dc.w $4f4b
[000c457a]                           dc.b $00
TEXT_53:
[000c457b]                           dc.b ' Bearbeiten ',0
TEXT_54:
[000c4588]                           dc.b ' Finden ',0
TEXT_55:
[000c4591]                           dc.b ' Information ',0
TEXT_56:
[000c459f]                           dc.b 'Wortweise',0
TEXT_57:
[000c45a9]                           dc.b ' Zeilenumbruch ',0
TEXT_58:
[000c45b9]                           dc.b 'Online-Hilfe:',0
TEXT_59:
[000c45c7]                           dc.b ' Ersetzen ',0
TEXT_60:
[000c45d2]                           dc.b 'Dateityp:',0
TEXT_61:
[000c45dc]                           dc.b 'Blockselektion:',0
TEXT_62:
[000c45ec]                           dc.b 'Worttrenner:',0
TEXT_63:
[000c45f9]                           dc.b '  L”schen         ^D',0
TEXT_64:
[000c460e]                           dc.b 'Spaltenblock',0
TEXT_66:
[000c461b]                           dc.b '  Rckg„ngig      UNDO',0
TEXT_67:
[000c4632]                           dc.b '  Alles ausw„hlen   ^A',0
[000c4649]                           dc.b $00
DATAS_01:
[000c464a]                           dc.b $00
[000c464b]                           dc.b $00
[000c464c]                           dc.b $00
[000c464d]                           dc.b $00
[000c464e]                           dc.w $0208
[000c4650]                           dc.w $ffff
[000c4652]                           dc.w $fffe
[000c4654]                           dc.w $8000
[000c4656]                           dc.b $00
[000c4657]                           dc.b $02
[000c4658]                           dc.w $9ce3
[000c465a]                           dc.w $8002
[000c465c]                           dc.w $9ce3
[000c465e]                           dc.w $8003
[000c4660]                           dc.w $ffff
[000c4662]                           dc.w $ffff
[000c4664]                           dc.w $bfff
[000c4666]                           dc.w $fffb
[000c4668]                           dc.w $bfff
[000c466a]                           dc.w $fffb
[000c466c]                           dc.w $bfff
[000c466e]                           dc.w $fffb
[000c4670]                           dc.w $bfff
[000c4672]                           dc.w $fffb
[000c4674]                           dc.w $bfff
[000c4676]                           dc.w $fffb
[000c4678]                           dc.w $ffff
[000c467a]                           dc.w $fffb
[000c467c]                           dc.w $ffff
[000c467e]                           dc.w $fffb
[000c4680]                           dc.w $ffff
[000c4682]                           dc.w $fffb
[000c4684]                           dc.w $ffff
[000c4686]                           dc.w $fffb
[000c4688]                           dc.w $ffff
[000c468a]                           dc.w $fffb
[000c468c]                           dc.w $ffff
[000c468e]                           dc.w $fffb
[000c4690]                           dc.w $ffff
[000c4692]                           dc.w $fffb
[000c4694]                           dc.w $ffff
[000c4696]                           dc.w $fffb
[000c4698]                           dc.w $ffff
[000c469a]                           dc.w $fffb
[000c469c]                           dc.w $bfff
[000c469e]                           dc.w $fffb
[000c46a0]                           dc.w $bfff
[000c46a2]                           dc.w $fffb
[000c46a4]                           dc.w $bfff
[000c46a6]                           dc.w $fffb
[000c46a8]                           dc.w $bfff
[000c46aa]                           dc.w $fffb
[000c46ac]                           dc.w $b840
[000c46ae]                           dc.w $5ffb
[000c46b0]                           dc.w $bfff
[000c46b2]                           dc.w $fffb
[000c46b4]                           dc.w $bfff
[000c46b6]                           dc.w $fffb
[000c46b8]                           dc.w $bfff
[000c46ba]                           dc.w $fffb
[000c46bc]                           dc.w $bfff
[000c46be]                           dc.w $fffb
[000c46c0]                           dc.w $bfff
[000c46c2]                           dc.w $fffb
[000c46c4]                           dc.w $bfff
[000c46c6]                           dc.w $fffb
[000c46c8]                           dc.w $ffff
[000c46ca]                           dc.w $ffff
[000c46cc]                           dc.w $0fff
[000c46ce]                           dc.w $ffff
[000c46d0]                           dc.w $ffff
[000c46d2]                           dc.w $fffe
[000c46d4]                           dc.w $8000
[000c46d6]                           dc.b $00
[000c46d7]                           dc.b $02
[000c46d8]                           dc.w $9ce3
[000c46da]                           dc.w $8002
[000c46dc]                           dc.w $9ce3
[000c46de]                           dc.w $8003
[000c46e0]                           dc.w $ffff
[000c46e2]                           dc.w $ffff
[000c46e4]                           dc.w $bfff
[000c46e6]                           dc.w $fffb
[000c46e8]                           dc.w $bfff
[000c46ea]                           dc.w $fffb
[000c46ec]                           dc.w $bfff
[000c46ee]                           dc.w $fffb
[000c46f0]                           dc.w $bfff
[000c46f2]                           dc.w $fffb
[000c46f4]                           dc.w $bfff
[000c46f6]                           dc.w $fffb
[000c46f8]                           dc.w $bfff
[000c46fa]                           dc.w $fffb
[000c46fc]                           dc.w $bfff
[000c46fe]                           dc.w $fffb
[000c4700]                           dc.w $bfff
[000c4702]                           dc.w $fffb
[000c4704]                           dc.w $bfff
[000c4706]                           dc.w $fffb
[000c4708]                           dc.w $bfff
[000c470a]                           dc.w $fffb
[000c470c]                           dc.w $bfff
[000c470e]                           dc.w $fffb
[000c4710]                           dc.w $bfff
[000c4712]                           dc.w $fffb
[000c4714]                           dc.w $bfff
[000c4716]                           dc.w $fffb
[000c4718]                           dc.w $bfff
[000c471a]                           dc.w $fffb
[000c471c]                           dc.w $bfff
[000c471e]                           dc.w $fffb
[000c4720]                           dc.w $bfff
[000c4722]                           dc.w $fffb
[000c4724]                           dc.w $bfff
[000c4726]                           dc.w $fffb
[000c4728]                           dc.w $b000
[000c472a]                           dc.w $0ffb
[000c472c]                           dc.w $b000
[000c472e]                           dc.w $0ffb
[000c4730]                           dc.w $b000
[000c4732]                           dc.w $0ffb
[000c4734]                           dc.w $bfff
[000c4736]                           dc.w $fffb
[000c4738]                           dc.w $bfff
[000c473a]                           dc.w $fffb
[000c473c]                           dc.w $bfff
[000c473e]                           dc.w $fffb
[000c4740]                           dc.w $bfff
[000c4742]                           dc.w $fffb
[000c4744]                           dc.w $bfff
[000c4746]                           dc.w $fffb
[000c4748]                           dc.w $ffff
[000c474a]                           dc.w $ffff
[000c474c]                           dc.w $0fff
[000c474e]                           dc.w $ffff
[000c4750]                           dc.w $ffff
[000c4752]                           dc.w $fffe
[000c4754]                           dc.w $8000
[000c4756]                           dc.b $00
[000c4757]                           dc.b $02
[000c4758]                           dc.w $9ce3
[000c475a]                           dc.w $8002
[000c475c]                           dc.w $9ce3
[000c475e]                           dc.w $8003
[000c4760]                           dc.w $ffff
[000c4762]                           dc.w $ffff
[000c4764]                           dc.w $bfff
[000c4766]                           dc.w $fffb
[000c4768]                           dc.w $bfff
[000c476a]                           dc.w $fffb
[000c476c]                           dc.w $bfff
[000c476e]                           dc.w $fffb
[000c4770]                           dc.w $bfff
[000c4772]                           dc.w $fffb
[000c4774]                           dc.w $bfff
[000c4776]                           dc.w $fffb
[000c4778]                           dc.w $bfff
[000c477a]                           dc.w $fffb
[000c477c]                           dc.w $bfff
[000c477e]                           dc.w $fffb
[000c4780]                           dc.w $bfff
[000c4782]                           dc.w $fffb
[000c4784]                           dc.w $bfff
[000c4786]                           dc.w $fffb
[000c4788]                           dc.w $bfff
[000c478a]                           dc.w $fffb
[000c478c]                           dc.w $bfff
[000c478e]                           dc.w $fffb
[000c4790]                           dc.w $bfff
[000c4792]                           dc.w $fffb
[000c4794]                           dc.w $bfff
[000c4796]                           dc.w $fffb
[000c4798]                           dc.w $bfff
[000c479a]                           dc.w $fffb
[000c479c]                           dc.w $bfff
[000c479e]                           dc.w $fffb
[000c47a0]                           dc.w $bfff
[000c47a2]                           dc.w $fffb
[000c47a4]                           dc.w $bfff
[000c47a6]                           dc.w $fffb
[000c47a8]                           dc.w $b000
[000c47aa]                           dc.w $0ffb
[000c47ac]                           dc.w $b000
[000c47ae]                           dc.w $0ffb
[000c47b0]                           dc.w $b000
[000c47b2]                           dc.w $0ffb
[000c47b4]                           dc.w $bfff
[000c47b6]                           dc.w $fffb
[000c47b8]                           dc.w $bfff
[000c47ba]                           dc.w $fffb
[000c47bc]                           dc.w $bfff
[000c47be]                           dc.w $fffb
[000c47c0]                           dc.w $bfff
[000c47c2]                           dc.w $fffb
[000c47c4]                           dc.w $bfff
[000c47c6]                           dc.w $fffb
[000c47c8]                           dc.w $ffff
[000c47ca]                           dc.w $ffff
[000c47cc]                           dc.w $0fff
[000c47ce]                           dc.w $ffff
[000c47d0]                           dc.w $ffff
[000c47d2]                           dc.w $fffe
[000c47d4]                           dc.w $8000
[000c47d6]                           dc.b $00
[000c47d7]                           dc.b $02
[000c47d8]                           dc.w $9ce3
[000c47da]                           dc.w $8002
[000c47dc]                           dc.w $8000
[000c47de]                           dc.b $00
[000c47df]                           dc.b $02
[000c47e0]                           dc.w $ffff
[000c47e2]                           dc.w $fffe
[000c47e4]                           dc.w $a000
[000c47e6]                           dc.b $00
[000c47e7]                           dc.b $0a
[000c47e8]                           dc.w $a000
[000c47ea]                           dc.b $00
[000c47eb]                           dc.b $0a
[000c47ec]                           dc.w $a000
[000c47ee]                           dc.b $00
[000c47ef]                           dc.b $0a
[000c47f0]                           dc.w $af3b
[000c47f2]                           dc.w $cf6a
[000c47f4]                           dc.w $a000
[000c47f6]                           dc.b $00
[000c47f7]                           dc.b $0a
[000c47f8]                           dc.w $a000
[000c47fa]                           dc.b $00
[000c47fb]                           dc.b $0a
[000c47fc]                           dc.w $aff3
[000c47fe]                           dc.w $faea
[000c4800]                           dc.w $a000
[000c4802]                           dc.b $00
[000c4803]                           dc.b $0a
[000c4804]                           dc.w $a000
[000c4806]                           dc.b $00
[000c4807]                           dc.b $0a
[000c4808]                           dc.w $addb
[000c480a]                           dc.w $776a
[000c480c]                           dc.w $a000
[000c480e]                           dc.b $00
[000c480f]                           dc.b $0a
[000c4810]                           dc.w $a000
[000c4812]                           dc.b $00
[000c4813]                           dc.b $0a
[000c4814]                           dc.w $afbb
[000c4816]                           dc.w $eeea
[000c4818]                           dc.w $a000
[000c481a]                           dc.b $00
[000c481b]                           dc.b $0a
[000c481c]                           dc.w $a000
[000c481e]                           dc.b $00
[000c481f]                           dc.b $0a
[000c4820]                           dc.w $aff7
[000c4822]                           dc.w $e7ea
[000c4824]                           dc.w $a000
[000c4826]                           dc.b $00
[000c4827]                           dc.b $0a
[000c4828]                           dc.w $a000
[000c482a]                           dc.b $00
[000c482b]                           dc.b $0a
[000c482c]                           dc.w $a000
[000c482e]                           dc.w $0dea
[000c4830]                           dc.w $a000
[000c4832]                           dc.b $00
[000c4833]                           dc.b $0a
[000c4834]                           dc.w $a000
[000c4836]                           dc.b $00
[000c4837]                           dc.b $0a
[000c4838]                           dc.w $aff7
[000c483a]                           dc.w $f7ea
[000c483c]                           dc.w $a000
[000c483e]                           dc.b $00
[000c483f]                           dc.b $0a
[000c4840]                           dc.w $a000
[000c4842]                           dc.b $00
[000c4843]                           dc.b $0a
[000c4844]                           dc.w $a000
[000c4846]                           dc.b $00
[000c4847]                           dc.b $0a
[000c4848]                           dc.w $ffff
[000c484a]                           dc.w $fffe
[000c484c]                           dc.b $00
[000c484d]                           dc.b $00
[000c484e]                           dc.b $00
[000c484f]                           dc.b $00
DATAS_02:
[000c4850]                           dc.w $ffff
[000c4852]                           dc.w $fffe
[000c4854]                           dc.w $ffff
[000c4856]                           dc.w $fffe
[000c4858]                           dc.w $ffff
[000c485a]                           dc.w $fffe
[000c485c]                           dc.w $ffff
[000c485e]                           dc.w $ffff
[000c4860]                           dc.w $ffff
[000c4862]                           dc.w $ffff
[000c4864]                           dc.w $ffff
[000c4866]                           dc.w $ffff
[000c4868]                           dc.w $ffff
[000c486a]                           dc.w $ffff
[000c486c]                           dc.w $ffff
[000c486e]                           dc.w $ffff
[000c4870]                           dc.w $ffff
[000c4872]                           dc.w $ffff
[000c4874]                           dc.w $ffff
[000c4876]                           dc.w $ffff
[000c4878]                           dc.w $ffff
[000c487a]                           dc.w $ffff
[000c487c]                           dc.w $ffff
[000c487e]                           dc.w $ffff
[000c4880]                           dc.w $ffff
[000c4882]                           dc.w $ffff
[000c4884]                           dc.w $ffff
[000c4886]                           dc.w $ffff
[000c4888]                           dc.w $ffff
[000c488a]                           dc.w $ffff
[000c488c]                           dc.w $ffff
[000c488e]                           dc.w $ffff
[000c4890]                           dc.w $ffff
[000c4892]                           dc.w $ffff
[000c4894]                           dc.w $ffff
[000c4896]                           dc.w $ffff
[000c4898]                           dc.w $ffff
[000c489a]                           dc.w $ffff
[000c489c]                           dc.w $ffff
[000c489e]                           dc.w $ffff
[000c48a0]                           dc.w $ffff
[000c48a2]                           dc.w $ffff
[000c48a4]                           dc.w $ffff
[000c48a6]                           dc.w $ffff
[000c48a8]                           dc.w $ffff
[000c48aa]                           dc.w $ffff
[000c48ac]                           dc.w $ffff
[000c48ae]                           dc.w $ffff
[000c48b0]                           dc.w $ffff
[000c48b2]                           dc.w $ffff
[000c48b4]                           dc.w $ffff
[000c48b6]                           dc.w $ffff
[000c48b8]                           dc.w $ffff
[000c48ba]                           dc.w $ffff
[000c48bc]                           dc.w $ffff
[000c48be]                           dc.w $ffff
[000c48c0]                           dc.w $ffff
[000c48c2]                           dc.w $ffff
[000c48c4]                           dc.w $ffff
[000c48c6]                           dc.w $ffff
[000c48c8]                           dc.w $ffff
[000c48ca]                           dc.w $ffff
[000c48cc]                           dc.w $0fff
[000c48ce]                           dc.w $ffff
DATAS_03:
[000c48d0]                           dc.b $00
[000c48d1]                           dc.b $00
[000c48d2]                           dc.b $00
[000c48d3]                           dc.b $00
[000c48d4]                           dc.w $0208
[000c48d6]                           dc.w $ffff
[000c48d8]                           dc.w $fffe
[000c48da]                           dc.w $8007
[000c48dc]                           dc.w $c002
[000c48de]                           dc.w $9ce4
[000c48e0]                           dc.w $4002
[000c48e2]                           dc.w $9ce7
[000c48e4]                           dc.w $c003
[000c48e6]                           dc.w $ffff
[000c48e8]                           dc.w $ffff
[000c48ea]                           dc.w $bfff
[000c48ec]                           dc.w $fffb
[000c48ee]                           dc.w $bfff
[000c48f0]                           dc.w $fffb
[000c48f2]                           dc.w $bfff
[000c48f4]                           dc.w $fffb
[000c48f6]                           dc.w $bfff
[000c48f8]                           dc.w $fffb
[000c48fa]                           dc.w $bfff
[000c48fc]                           dc.w $fffb
[000c48fe]                           dc.w $ffff
[000c4900]                           dc.w $fffb
[000c4902]                           dc.w $ffff
[000c4904]                           dc.w $fffb
[000c4906]                           dc.w $ffff
[000c4908]                           dc.w $06fb
[000c490a]                           dc.w $ffff
[000c490c]                           dc.w $fffb
[000c490e]                           dc.w $ffff
[000c4910]                           dc.w $fffb
[000c4912]                           dc.w $ffff
[000c4914]                           dc.w $fffb
[000c4916]                           dc.w $ffff
[000c4918]                           dc.w $fffb
[000c491a]                           dc.w $ffff
[000c491c]                           dc.w $fffb
[000c491e]                           dc.w $ffff
[000c4920]                           dc.w $fffb
[000c4922]                           dc.w $bfff
[000c4924]                           dc.w $fffb
[000c4926]                           dc.w $bfff
[000c4928]                           dc.w $fffb
[000c492a]                           dc.w $bfff
[000c492c]                           dc.w $fffb
[000c492e]                           dc.w $bfff
[000c4930]                           dc.w $fffb
[000c4932]                           dc.w $b840
[000c4934]                           dc.w $5ffb
[000c4936]                           dc.w $bfff
[000c4938]                           dc.w $fffb
[000c493a]                           dc.w $bfff
[000c493c]                           dc.w $fffb
[000c493e]                           dc.w $bfff
[000c4940]                           dc.w $fffb
[000c4942]                           dc.w $bfff
[000c4944]                           dc.w $fffb
[000c4946]                           dc.w $bfff
[000c4948]                           dc.w $fffb
[000c494a]                           dc.w $bfff
[000c494c]                           dc.w $fffb
[000c494e]                           dc.w $ffff
[000c4950]                           dc.w $ffff
[000c4952]                           dc.w $0fff
[000c4954]                           dc.w $ffff
[000c4956]                           dc.w $ffff
[000c4958]                           dc.w $fffe
[000c495a]                           dc.w $8007
[000c495c]                           dc.w $c002
[000c495e]                           dc.w $9ce4
[000c4960]                           dc.w $4002
[000c4962]                           dc.w $9ce7
[000c4964]                           dc.w $c003
[000c4966]                           dc.w $ffff
[000c4968]                           dc.w $ffff
[000c496a]                           dc.w $bfff
[000c496c]                           dc.w $fffb
[000c496e]                           dc.w $bfff
[000c4970]                           dc.w $fffb
[000c4972]                           dc.w $bfff
[000c4974]                           dc.w $fffb
[000c4976]                           dc.w $bfff
[000c4978]                           dc.w $fffb
[000c497a]                           dc.w $bfff
[000c497c]                           dc.w $fffb
[000c497e]                           dc.w $bfff
[000c4980]                           dc.w $fffb
[000c4982]                           dc.w $bfff
[000c4984]                           dc.w $fffb
[000c4986]                           dc.w $bffc
[000c4988]                           dc.b $00
[000c4989]                           dc.b $7b
[000c498a]                           dc.w $bfff
[000c498c]                           dc.w $fffb
[000c498e]                           dc.w $bfff
[000c4990]                           dc.w $fffb
[000c4992]                           dc.w $bfff
[000c4994]                           dc.w $fffb
[000c4996]                           dc.w $bfff
[000c4998]                           dc.w $fffb
[000c499a]                           dc.w $bfff
[000c499c]                           dc.w $fffb
[000c499e]                           dc.w $bfff
[000c49a0]                           dc.w $fffb
[000c49a2]                           dc.w $bfff
[000c49a4]                           dc.w $fffb
[000c49a6]                           dc.w $bfff
[000c49a8]                           dc.w $fffb
[000c49aa]                           dc.w $bfff
[000c49ac]                           dc.w $fffb
[000c49ae]                           dc.w $b000
[000c49b0]                           dc.w $0ffb
[000c49b2]                           dc.w $b000
[000c49b4]                           dc.w $0ffb
[000c49b6]                           dc.w $b000
[000c49b8]                           dc.w $0ffb
[000c49ba]                           dc.w $bfff
[000c49bc]                           dc.w $fffb
[000c49be]                           dc.w $bfff
[000c49c0]                           dc.w $fffb
[000c49c2]                           dc.w $bfff
[000c49c4]                           dc.w $fffb
[000c49c6]                           dc.w $bfff
[000c49c8]                           dc.w $fffb
[000c49ca]                           dc.w $bfff
[000c49cc]                           dc.w $fffb
[000c49ce]                           dc.w $ffff
[000c49d0]                           dc.w $ffff
[000c49d2]                           dc.w $0fff
[000c49d4]                           dc.w $ffff
[000c49d6]                           dc.w $ffff
[000c49d8]                           dc.w $fffe
[000c49da]                           dc.w $8007
[000c49dc]                           dc.w $c002
[000c49de]                           dc.w $9ce4
[000c49e0]                           dc.w $4002
[000c49e2]                           dc.w $9ce7
[000c49e4]                           dc.w $c003
[000c49e6]                           dc.w $ffff
[000c49e8]                           dc.w $ffff
[000c49ea]                           dc.w $bfff
[000c49ec]                           dc.w $fffb
[000c49ee]                           dc.w $bfff
[000c49f0]                           dc.w $fffb
[000c49f2]                           dc.w $bfff
[000c49f4]                           dc.w $fffb
[000c49f6]                           dc.w $bfff
[000c49f8]                           dc.w $fffb
[000c49fa]                           dc.w $bfff
[000c49fc]                           dc.w $fffb
[000c49fe]                           dc.w $bfff
[000c4a00]                           dc.w $fffb
[000c4a02]                           dc.w $bfff
[000c4a04]                           dc.w $fffb
[000c4a06]                           dc.w $bffc
[000c4a08]                           dc.b $00
[000c4a09]                           dc.b $7b
[000c4a0a]                           dc.w $bfff
[000c4a0c]                           dc.w $fffb
[000c4a0e]                           dc.w $bfff
[000c4a10]                           dc.w $fffb
[000c4a12]                           dc.w $bfff
[000c4a14]                           dc.w $fffb
[000c4a16]                           dc.w $bfff
[000c4a18]                           dc.w $fffb
[000c4a1a]                           dc.w $bfff
[000c4a1c]                           dc.w $fffb
[000c4a1e]                           dc.w $bfff
[000c4a20]                           dc.w $fffb
[000c4a22]                           dc.w $bfff
[000c4a24]                           dc.w $fffb
[000c4a26]                           dc.w $bfff
[000c4a28]                           dc.w $fffb
[000c4a2a]                           dc.w $bfff
[000c4a2c]                           dc.w $fffb
[000c4a2e]                           dc.w $b000
[000c4a30]                           dc.w $0ffb
[000c4a32]                           dc.w $b000
[000c4a34]                           dc.w $0ffb
[000c4a36]                           dc.w $b000
[000c4a38]                           dc.w $0ffb
[000c4a3a]                           dc.w $bfff
[000c4a3c]                           dc.w $fffb
[000c4a3e]                           dc.w $bfff
[000c4a40]                           dc.w $fffb
[000c4a42]                           dc.w $bfff
[000c4a44]                           dc.w $fffb
[000c4a46]                           dc.w $bfff
[000c4a48]                           dc.w $fffb
[000c4a4a]                           dc.w $bfff
[000c4a4c]                           dc.w $fffb
[000c4a4e]                           dc.w $ffff
[000c4a50]                           dc.w $ffff
[000c4a52]                           dc.w $0fff
[000c4a54]                           dc.w $ffff
[000c4a56]                           dc.w $ffff
[000c4a58]                           dc.w $fffe
[000c4a5a]                           dc.w $8007
[000c4a5c]                           dc.w $c002
[000c4a5e]                           dc.w $9ce4
[000c4a60]                           dc.w $4002
[000c4a62]                           dc.w $8007
[000c4a64]                           dc.w $c002
[000c4a66]                           dc.w $ffff
[000c4a68]                           dc.w $fffe
[000c4a6a]                           dc.w $a004
[000c4a6c]                           dc.b $00
[000c4a6d]                           dc.b $4a
[000c4a6e]                           dc.w $a005
[000c4a70]                           dc.w $fd4a
[000c4a72]                           dc.w $a004
[000c4a74]                           dc.b $00
[000c4a75]                           dc.b $4a
[000c4a76]                           dc.w $af3d
[000c4a78]                           dc.w $fd6a
[000c4a7a]                           dc.w $a004
[000c4a7c]                           dc.b $00
[000c4a7d]                           dc.b $4a
[000c4a7e]                           dc.w $a005
[000c4a80]                           dc.w $fd4a
[000c4a82]                           dc.w $affc
[000c4a84]                           dc.b $00
[000c4a85]                           dc.b $6a
[000c4a86]                           dc.w $a004
[000c4a88]                           dc.b $00
[000c4a89]                           dc.b $4a
[000c4a8a]                           dc.w $a004
[000c4a8c]                           dc.b $00
[000c4a8d]                           dc.b $4a
[000c4a8e]                           dc.w $addd
[000c4a90]                           dc.w $fd6a
[000c4a92]                           dc.w $a004
[000c4a94]                           dc.b $00
[000c4a95]                           dc.b $4a
[000c4a96]                           dc.w $a005
[000c4a98]                           dc.w $fd4a
[000c4a9a]                           dc.w $afbc
[000c4a9c]                           dc.b $00
[000c4a9d]                           dc.b $6a
[000c4a9e]                           dc.w $a007
[000c4aa0]                           dc.w $ffca
[000c4aa2]                           dc.w $a000
[000c4aa4]                           dc.b $00
[000c4aa5]                           dc.b $0a
[000c4aa6]                           dc.w $aff7
[000c4aa8]                           dc.w $e7ea
[000c4aaa]                           dc.w $a000
[000c4aac]                           dc.b $00
[000c4aad]                           dc.b $0a
[000c4aae]                           dc.w $a000
[000c4ab0]                           dc.b $00
[000c4ab1]                           dc.b $0a
[000c4ab2]                           dc.w $a000
[000c4ab4]                           dc.w $0dea
[000c4ab6]                           dc.w $a000
[000c4ab8]                           dc.b $00
[000c4ab9]                           dc.b $0a
[000c4aba]                           dc.w $a000
[000c4abc]                           dc.b $00
[000c4abd]                           dc.b $0a
[000c4abe]                           dc.w $aff7
[000c4ac0]                           dc.w $f7ea
[000c4ac2]                           dc.w $a000
[000c4ac4]                           dc.b $00
[000c4ac5]                           dc.b $0a
[000c4ac6]                           dc.w $a000
[000c4ac8]                           dc.b $00
[000c4ac9]                           dc.b $0a
[000c4aca]                           dc.w $a000
[000c4acc]                           dc.b $00
[000c4acd]                           dc.b $0a
[000c4ace]                           dc.w $ffff
[000c4ad0]                           dc.w $fffe
[000c4ad2]                           dc.b $00
[000c4ad3]                           dc.b $00
[000c4ad4]                           dc.b $00
[000c4ad5]                           dc.b $00
DATAS_04:
[000c4ad6]                           dc.w $ffff
[000c4ad8]                           dc.w $fffe
[000c4ada]                           dc.w $ffff
[000c4adc]                           dc.w $fffe
[000c4ade]                           dc.w $ffff
[000c4ae0]                           dc.w $fffe
[000c4ae2]                           dc.w $ffff
[000c4ae4]                           dc.w $ffff
[000c4ae6]                           dc.w $ffff
[000c4ae8]                           dc.w $ffff
[000c4aea]                           dc.w $ffff
[000c4aec]                           dc.w $ffff
[000c4aee]                           dc.w $ffff
[000c4af0]                           dc.w $ffff
[000c4af2]                           dc.w $ffff
[000c4af4]                           dc.w $ffff
[000c4af6]                           dc.w $ffff
[000c4af8]                           dc.w $ffff
[000c4afa]                           dc.w $ffff
[000c4afc]                           dc.w $ffff
[000c4afe]                           dc.w $ffff
[000c4b00]                           dc.w $ffff
[000c4b02]                           dc.w $ffff
[000c4b04]                           dc.w $ffff
[000c4b06]                           dc.w $ffff
[000c4b08]                           dc.w $ffff
[000c4b0a]                           dc.w $ffff
[000c4b0c]                           dc.w $ffff
[000c4b0e]                           dc.w $ffff
[000c4b10]                           dc.w $ffff
[000c4b12]                           dc.w $ffff
[000c4b14]                           dc.w $ffff
[000c4b16]                           dc.w $ffff
[000c4b18]                           dc.w $ffff
[000c4b1a]                           dc.w $ffff
[000c4b1c]                           dc.w $ffff
[000c4b1e]                           dc.w $ffff
[000c4b20]                           dc.w $ffff
[000c4b22]                           dc.w $ffff
[000c4b24]                           dc.w $ffff
[000c4b26]                           dc.w $ffff
[000c4b28]                           dc.w $ffff
[000c4b2a]                           dc.w $ffff
[000c4b2c]                           dc.w $ffff
[000c4b2e]                           dc.w $ffff
[000c4b30]                           dc.w $ffff
[000c4b32]                           dc.w $ffff
[000c4b34]                           dc.w $ffff
[000c4b36]                           dc.w $ffff
[000c4b38]                           dc.w $ffff
[000c4b3a]                           dc.w $ffff
[000c4b3c]                           dc.w $ffff
[000c4b3e]                           dc.w $ffff
[000c4b40]                           dc.w $ffff
[000c4b42]                           dc.w $ffff
[000c4b44]                           dc.w $ffff
[000c4b46]                           dc.w $ffff
[000c4b48]                           dc.w $ffff
[000c4b4a]                           dc.w $ffff
[000c4b4c]                           dc.w $ffff
[000c4b4e]                           dc.w $ffff
[000c4b50]                           dc.w $ffff
[000c4b52]                           dc.w $0fff
[000c4b54]                           dc.w $ffff
DATAS_05:
[000c4b56]                           dc.b $00
[000c4b57]                           dc.b $00
[000c4b58]                           dc.b $00
[000c4b59]                           dc.b $00
[000c4b5a]                           dc.b $00
[000c4b5b]                           dc.b $88
[000c4b5c]                           dc.b $00
[000c4b5d]                           dc.b $00
[000c4b5e]                           dc.w $7ffe
[000c4b60]                           dc.w $63fe
[000c4b62]                           dc.w $62fe
[000c4b64]                           dc.w $63fe
[000c4b66]                           dc.w $60fe
[000c4b68]                           dc.w $61fe
[000c4b6a]                           dc.w $611e
[000c4b6c]                           dc.w $6116
[000c4b6e]                           dc.w $7f1e
[000c4b70]                           dc.w $7f06
[000c4b72]                           dc.w $7f06
[000c4b74]                           dc.w $7f06
[000c4b76]                           dc.w $7f06
[000c4b78]                           dc.w $7ffe
[000c4b7a]                           dc.b $00
[000c4b7b]                           dc.b $00
[000c4b7c]                           dc.b $00
[000c4b7d]                           dc.b $00
[000c4b7e]                           dc.w $7ffe
[000c4b80]                           dc.w $63fe
[000c4b82]                           dc.w $62fe
[000c4b84]                           dc.w $63fe
[000c4b86]                           dc.w $60fe
[000c4b88]                           dc.w $61fe
[000c4b8a]                           dc.w $611e
[000c4b8c]                           dc.w $6116
[000c4b8e]                           dc.w $7f1e
[000c4b90]                           dc.w $7f06
[000c4b92]                           dc.w $7f06
[000c4b94]                           dc.w $7f06
[000c4b96]                           dc.w $7f06
[000c4b98]                           dc.w $7ffe
[000c4b9a]                           dc.b $00
[000c4b9b]                           dc.b $00
[000c4b9c]                           dc.b $00
[000c4b9d]                           dc.b $00
[000c4b9e]                           dc.w $7ffe
[000c4ba0]                           dc.w $63fe
[000c4ba2]                           dc.w $62fe
[000c4ba4]                           dc.w $63fe
[000c4ba6]                           dc.w $60fe
[000c4ba8]                           dc.w $61fe
[000c4baa]                           dc.w $611e
[000c4bac]                           dc.w $6116
[000c4bae]                           dc.w $7f1e
[000c4bb0]                           dc.w $7f06
[000c4bb2]                           dc.w $7f06
[000c4bb4]                           dc.w $7f06
[000c4bb6]                           dc.w $7f06
[000c4bb8]                           dc.w $7ffe
[000c4bba]                           dc.b $00
[000c4bbb]                           dc.b $00
[000c4bbc]                           dc.b $00
[000c4bbd]                           dc.b $01
[000c4bbe]                           dc.w $3e01
[000c4bc0]                           dc.w $2301
[000c4bc2]                           dc.b '"# !'
[000c4bc9]                           dc.b $f1
[000c4bca]                           dc.w $2119
[000c4bcc]                           dc.w $2115
[000c4bce]                           dc.w $3f1d
[000c4bd0]                           dc.w $0105
[000c4bd2]                           dc.w $0105
[000c4bd4]                           dc.w $0105
[000c4bd6]                           dc.w $0105
[000c4bd8]                           dc.w $01fd
[000c4bda]                           dc.w $ffff
DATAS_06:
[000c4bdc]                           dc.w $ffff
[000c4bde]                           dc.w $ffff
[000c4be0]                           dc.w $ffff
[000c4be2]                           dc.w $ffff
[000c4be4]                           dc.w $ffff
[000c4be6]                           dc.w $ffff
[000c4be8]                           dc.w $ffff
[000c4bea]                           dc.w $ffff
[000c4bec]                           dc.w $ffff
[000c4bee]                           dc.w $ffff
[000c4bf0]                           dc.w $ffff
[000c4bf2]                           dc.w $ffff
[000c4bf4]                           dc.w $ffff
[000c4bf6]                           dc.w $ffff
[000c4bf8]                           dc.w $ffff
[000c4bfa]                           dc.w $ffff
DATAS_07:
[000c4bfc]                           dc.b $00
[000c4bfd]                           dc.b $00
[000c4bfe]                           dc.b $00
[000c4bff]                           dc.b $00
[000c4c00]                           dc.b $00
[000c4c01]                           dc.b $88
[000c4c02]                           dc.b $00
[000c4c03]                           dc.b $00
[000c4c04]                           dc.w $7ffe
[000c4c06]                           dc.w $63fe
[000c4c08]                           dc.w $62fe
[000c4c0a]                           dc.w $63fe
[000c4c0c]                           dc.w $60fe
[000c4c0e]                           dc.w $61fe
[000c4c10]                           dc.w $611e
[000c4c12]                           dc.w $6116
[000c4c14]                           dc.w $7f1e
[000c4c16]                           dc.w $7f06
[000c4c18]                           dc.w $7f06
[000c4c1a]                           dc.w $7f06
[000c4c1c]                           dc.w $7f06
[000c4c1e]                           dc.w $7ffe
[000c4c20]                           dc.b $00
[000c4c21]                           dc.b $00
[000c4c22]                           dc.b $00
[000c4c23]                           dc.b $00
[000c4c24]                           dc.w $7ffe
[000c4c26]                           dc.w $63fe
[000c4c28]                           dc.w $62fe
[000c4c2a]                           dc.w $63fe
[000c4c2c]                           dc.w $60fe
[000c4c2e]                           dc.w $61fe
[000c4c30]                           dc.w $611e
[000c4c32]                           dc.w $6116
[000c4c34]                           dc.w $7f1e
[000c4c36]                           dc.w $7f06
[000c4c38]                           dc.w $7f06
[000c4c3a]                           dc.w $7f06
[000c4c3c]                           dc.w $7f06
[000c4c3e]                           dc.w $7ffe
[000c4c40]                           dc.b $00
[000c4c41]                           dc.b $00
[000c4c42]                           dc.b $00
[000c4c43]                           dc.b $00
[000c4c44]                           dc.w $7ffe
[000c4c46]                           dc.w $63fe
[000c4c48]                           dc.w $62fe
[000c4c4a]                           dc.w $63fe
[000c4c4c]                           dc.w $60fe
[000c4c4e]                           dc.w $61fe
[000c4c50]                           dc.w $611e
[000c4c52]                           dc.w $6116
[000c4c54]                           dc.w $7f1e
[000c4c56]                           dc.w $7f06
[000c4c58]                           dc.w $7f06
[000c4c5a]                           dc.w $7f06
[000c4c5c]                           dc.w $7f06
[000c4c5e]                           dc.w $7ffe
[000c4c60]                           dc.b $00
[000c4c61]                           dc.b $00
[000c4c62]                           dc.w $ffff
[000c4c64]                           dc.w $be00
[000c4c66]                           dc.w $a300
[000c4c68]                           dc.w $a280
[000c4c6a]                           dc.w $a380
[000c4c6c]                           dc.w $a080
[000c4c6e]                           dc.w $a1f0
[000c4c70]                           dc.w $a118
[000c4c72]                           dc.w $a114
[000c4c74]                           dc.w $bf1c
[000c4c76]                           dc.w $8104
[000c4c78]                           dc.w $8104
[000c4c7a]                           dc.w $8104
[000c4c7c]                           dc.w $8104
[000c4c7e]                           dc.w $81fc
[000c4c80]                           dc.w $8000
DATAS_08:
[000c4c82]                           dc.w $ffff
[000c4c84]                           dc.w $ffff
[000c4c86]                           dc.w $ffff
[000c4c88]                           dc.w $ffff
[000c4c8a]                           dc.w $ffff
[000c4c8c]                           dc.w $ffff
[000c4c8e]                           dc.w $ffff
[000c4c90]                           dc.w $ffff
[000c4c92]                           dc.w $ffff
[000c4c94]                           dc.w $ffff
[000c4c96]                           dc.w $ffff
[000c4c98]                           dc.w $ffff
[000c4c9a]                           dc.w $ffff
[000c4c9c]                           dc.w $ffff
[000c4c9e]                           dc.w $ffff
[000c4ca0]                           dc.w $ffff
DATAS_09:
[000c4ca2]                           dc.b $00
[000c4ca3]                           dc.b $00
[000c4ca4]                           dc.b $00
[000c4ca5]                           dc.b $00
[000c4ca6]                           dc.b $00
[000c4ca7]                           dc.b $88
[000c4ca8]                           dc.b $00
[000c4ca9]                           dc.b $00
[000c4caa]                           dc.w $7dde
[000c4cac]                           dc.w $7dde
[000c4cae]                           dc.w $7dde
[000c4cb0]                           dc.w $7c9e
[000c4cb2]                           dc.w $7ebe
[000c4cb4]                           dc.w $7e3e
[000c4cb6]                           dc.w $7f7e
[000c4cb8]                           dc.b '~>~Žx'
[000c4cbd]                           dc.b $b6
[000c4cbe]                           dc.w $76b6
[000c4cc0]                           dc.w $76b6
[000c4cc2]                           dc.w $76ce
[000c4cc4]                           dc.w $79fe
[000c4cc6]                           dc.b $00
[000c4cc7]                           dc.b $00
[000c4cc8]                           dc.b $00
[000c4cc9]                           dc.b $00
[000c4cca]                           dc.w $7dde
[000c4ccc]                           dc.w $7dde
[000c4cce]                           dc.w $7dde
[000c4cd0]                           dc.w $7c9e
[000c4cd2]                           dc.w $7ebe
[000c4cd4]                           dc.w $7e3e
[000c4cd6]                           dc.w $7f7e
[000c4cd8]                           dc.b '~>~Žx'
[000c4cdd]                           dc.b $b6
[000c4cde]                           dc.w $76b6
[000c4ce0]                           dc.w $76b6
[000c4ce2]                           dc.w $76ce
[000c4ce4]                           dc.w $79fe
[000c4ce6]                           dc.b $00
[000c4ce7]                           dc.b $00
[000c4ce8]                           dc.b $00
[000c4ce9]                           dc.b $00
[000c4cea]                           dc.w $7ffe
[000c4cec]                           dc.w $7ffe
[000c4cee]                           dc.w $7ffe
[000c4cf0]                           dc.w $7ffe
[000c4cf2]                           dc.w $7ffe
[000c4cf4]                           dc.w $7ffe
[000c4cf6]                           dc.w $7ffe
[000c4cf8]                           dc.w $7ffe
[000c4cfa]                           dc.w $7ffe
[000c4cfc]                           dc.w $7ffe
[000c4cfe]                           dc.w $7ffe
[000c4d00]                           dc.w $7ffe
[000c4d02]                           dc.w $7ffe
[000c4d04]                           dc.w $7ffe
[000c4d06]                           dc.b $00
[000c4d07]                           dc.b $00
[000c4d08]                           dc.b $00
[000c4d09]                           dc.b $01
[000c4d0a]                           dc.b $00
[000c4d0b]                           dc.b $01
[000c4d0c]                           dc.b $00
[000c4d0d]                           dc.b $01
[000c4d0e]                           dc.b $00
[000c4d0f]                           dc.b $01
[000c4d10]                           dc.b $00
[000c4d11]                           dc.b $01
[000c4d12]                           dc.b $00
[000c4d13]                           dc.b $01
[000c4d14]                           dc.b $00
[000c4d15]                           dc.b $01
[000c4d16]                           dc.b $00
[000c4d17]                           dc.b $01
[000c4d18]                           dc.b $00
[000c4d19]                           dc.b $01
[000c4d1a]                           dc.b $00
[000c4d1b]                           dc.b $01
[000c4d1c]                           dc.b $00
[000c4d1d]                           dc.b $01
[000c4d1e]                           dc.b $00
[000c4d1f]                           dc.b $01
[000c4d20]                           dc.b $00
[000c4d21]                           dc.b $01
[000c4d22]                           dc.b $00
[000c4d23]                           dc.b $01
[000c4d24]                           dc.b $00
[000c4d25]                           dc.b $01
[000c4d26]                           dc.w $ffff
DATAS_10:
[000c4d28]                           dc.w $ffff
[000c4d2a]                           dc.w $ffff
[000c4d2c]                           dc.w $ffff
[000c4d2e]                           dc.w $ffff
[000c4d30]                           dc.w $ffff
[000c4d32]                           dc.w $ffff
[000c4d34]                           dc.w $ffff
[000c4d36]                           dc.w $ffff
[000c4d38]                           dc.w $ffff
[000c4d3a]                           dc.w $ffff
[000c4d3c]                           dc.w $ffff
[000c4d3e]                           dc.w $ffff
[000c4d40]                           dc.w $ffff
[000c4d42]                           dc.w $ffff
[000c4d44]                           dc.w $ffff
[000c4d46]                           dc.w $ffff
DATAS_11:
[000c4d48]                           dc.b $00
[000c4d49]                           dc.b $00
[000c4d4a]                           dc.b $00
[000c4d4b]                           dc.b $00
[000c4d4c]                           dc.b $00
[000c4d4d]                           dc.b $88
[000c4d4e]                           dc.b $00
[000c4d4f]                           dc.b $00
[000c4d50]                           dc.w $7dde
[000c4d52]                           dc.w $7dde
[000c4d54]                           dc.w $7dde
[000c4d56]                           dc.w $7c9e
[000c4d58]                           dc.w $7ebe
[000c4d5a]                           dc.w $7e3e
[000c4d5c]                           dc.w $7f7e
[000c4d5e]                           dc.b '~>~Žx'
[000c4d63]                           dc.b $b6
[000c4d64]                           dc.w $76b6
[000c4d66]                           dc.w $76b6
[000c4d68]                           dc.w $76ce
[000c4d6a]                           dc.w $79fe
[000c4d6c]                           dc.b $00
[000c4d6d]                           dc.b $00
[000c4d6e]                           dc.b $00
[000c4d6f]                           dc.b $00
[000c4d70]                           dc.w $7dde
[000c4d72]                           dc.w $7dde
[000c4d74]                           dc.w $7dde
[000c4d76]                           dc.w $7c9e
[000c4d78]                           dc.w $7ebe
[000c4d7a]                           dc.w $7e3e
[000c4d7c]                           dc.w $7f7e
[000c4d7e]                           dc.b '~>~Žx'
[000c4d83]                           dc.b $b6
[000c4d84]                           dc.w $76b6
[000c4d86]                           dc.w $76b6
[000c4d88]                           dc.w $76ce
[000c4d8a]                           dc.w $79fe
[000c4d8c]                           dc.b $00
[000c4d8d]                           dc.b $00
[000c4d8e]                           dc.b $00
[000c4d8f]                           dc.b $00
[000c4d90]                           dc.w $7ffe
[000c4d92]                           dc.w $7ffe
[000c4d94]                           dc.w $7ffe
[000c4d96]                           dc.w $7ffe
[000c4d98]                           dc.w $7ffe
[000c4d9a]                           dc.w $7ffe
[000c4d9c]                           dc.w $7ffe
[000c4d9e]                           dc.w $7ffe
[000c4da0]                           dc.w $7ffe
[000c4da2]                           dc.w $7ffe
[000c4da4]                           dc.w $7ffe
[000c4da6]                           dc.w $7ffe
[000c4da8]                           dc.w $7ffe
[000c4daa]                           dc.w $7ffe
[000c4dac]                           dc.b $00
[000c4dad]                           dc.b $00
[000c4dae]                           dc.w $ffff
[000c4db0]                           dc.w $8000
[000c4db2]                           dc.w $8000
[000c4db4]                           dc.w $8000
[000c4db6]                           dc.w $8000
[000c4db8]                           dc.w $8000
[000c4dba]                           dc.w $8000
[000c4dbc]                           dc.w $8000
[000c4dbe]                           dc.w $8000
[000c4dc0]                           dc.w $8000
[000c4dc2]                           dc.w $8000
[000c4dc4]                           dc.w $8000
[000c4dc6]                           dc.w $8000
[000c4dc8]                           dc.w $8000
[000c4dca]                           dc.w $8000
[000c4dcc]                           dc.w $8000
DATAS_12:
[000c4dce]                           dc.w $ffff
[000c4dd0]                           dc.w $ffff
[000c4dd2]                           dc.w $ffff
[000c4dd4]                           dc.w $ffff
[000c4dd6]                           dc.w $ffff
[000c4dd8]                           dc.w $ffff
[000c4dda]                           dc.w $ffff
[000c4ddc]                           dc.w $ffff
[000c4dde]                           dc.w $ffff
[000c4de0]                           dc.w $ffff
[000c4de2]                           dc.w $ffff
[000c4de4]                           dc.w $ffff
[000c4de6]                           dc.w $ffff
[000c4de8]                           dc.w $ffff
[000c4dea]                           dc.w $ffff
[000c4dec]                           dc.w $ffff
DATAS_13:
[000c4dee]                           dc.b $00
[000c4def]                           dc.b $00
[000c4df0]                           dc.b $00
[000c4df1]                           dc.b $00
[000c4df2]                           dc.b $00
[000c4df3]                           dc.b $88
[000c4df4]                           dc.b $00
[000c4df5]                           dc.b $00
[000c4df6]                           dc.w $7ffc
[000c4df8]                           dc.w $7ffc
[000c4dfa]                           dc.b '`|`\`|a'
[000c4e01]                           dc.b $0c
[000c4e02]                           dc.w $610c
[000c4e04]                           dc.w $67cc
[000c4e06]                           dc.w $610c
[000c4e08]                           dc.w $610c
[000c4e0a]                           dc.w $600c
[000c4e0c]                           dc.w $600c
[000c4e0e]                           dc.w $7ffc
[000c4e10]                           dc.w $7ffc
[000c4e12]                           dc.b $00
[000c4e13]                           dc.b $00
[000c4e14]                           dc.b $00
[000c4e15]                           dc.b $00
[000c4e16]                           dc.w $7ffc
[000c4e18]                           dc.w $7ffc
[000c4e1a]                           dc.b '`|`\`|a'
[000c4e21]                           dc.b $0c
[000c4e22]                           dc.w $610c
[000c4e24]                           dc.w $67cc
[000c4e26]                           dc.w $610c
[000c4e28]                           dc.w $610c
[000c4e2a]                           dc.w $600c
[000c4e2c]                           dc.w $600c
[000c4e2e]                           dc.w $7ffc
[000c4e30]                           dc.w $7ffc
[000c4e32]                           dc.b $00
[000c4e33]                           dc.b $00
[000c4e34]                           dc.b $00
[000c4e35]                           dc.b $00
[000c4e36]                           dc.w $7ffc
[000c4e38]                           dc.w $7ffc
[000c4e3a]                           dc.b '`|`\`|a'
[000c4e41]                           dc.b $0c
[000c4e42]                           dc.w $610c
[000c4e44]                           dc.w $67cc
[000c4e46]                           dc.w $610c
[000c4e48]                           dc.w $610c
[000c4e4a]                           dc.w $600c
[000c4e4c]                           dc.w $600c
[000c4e4e]                           dc.w $7ffc
[000c4e50]                           dc.w $7ffc
[000c4e52]                           dc.b $00
[000c4e53]                           dc.b $00
[000c4e54]                           dc.b $00
[000c4e55]                           dc.b $02
[000c4e56]                           dc.b $00
[000c4e57]                           dc.b $02
[000c4e58]                           dc.w $3fc2
[000c4e5a]                           dc.b ' b R z!',$0a,'!',$0a,$27
[000c4e65]                           dc.b $ca
[000c4e66]                           dc.b '!',$0a,'!',$0a,' ',$0a,' ',$0a,'?'
[000c4e6f]                           dc.b $fa
[000c4e70]                           dc.b $00
[000c4e71]                           dc.b $02
[000c4e72]                           dc.w $fffe
DATAS_14:
[000c4e74]                           dc.w $fffe
[000c4e76]                           dc.w $fffe
[000c4e78]                           dc.w $fffe
[000c4e7a]                           dc.w $fffe
[000c4e7c]                           dc.w $fffe
[000c4e7e]                           dc.w $fffe
[000c4e80]                           dc.w $fffe
[000c4e82]                           dc.w $fffe
[000c4e84]                           dc.w $fffe
[000c4e86]                           dc.w $fffe
[000c4e88]                           dc.w $fffe
[000c4e8a]                           dc.w $fffe
[000c4e8c]                           dc.w $fffe
[000c4e8e]                           dc.w $fffe
[000c4e90]                           dc.w $fffe
[000c4e92]                           dc.w $fffe
DATAS_15:
[000c4e94]                           dc.b $00
[000c4e95]                           dc.b $00
[000c4e96]                           dc.b $00
[000c4e97]                           dc.b $00
[000c4e98]                           dc.b $00
[000c4e99]                           dc.b $88
[000c4e9a]                           dc.b $00
[000c4e9b]                           dc.b $00
[000c4e9c]                           dc.w $7ffc
[000c4e9e]                           dc.w $7ffc
[000c4ea0]                           dc.b '`|`\`|a'
[000c4ea7]                           dc.b $0c
[000c4ea8]                           dc.w $610c
[000c4eaa]                           dc.w $67cc
[000c4eac]                           dc.w $610c
[000c4eae]                           dc.w $610c
[000c4eb0]                           dc.w $600c
[000c4eb2]                           dc.w $600c
[000c4eb4]                           dc.w $7ffc
[000c4eb6]                           dc.w $7ffc
[000c4eb8]                           dc.b $00
[000c4eb9]                           dc.b $00
[000c4eba]                           dc.b $00
[000c4ebb]                           dc.b $00
[000c4ebc]                           dc.w $7ffc
[000c4ebe]                           dc.w $7ffc
[000c4ec0]                           dc.b '`|`\`|a'
[000c4ec7]                           dc.b $0c
[000c4ec8]                           dc.w $610c
[000c4eca]                           dc.w $67cc
[000c4ecc]                           dc.w $610c
[000c4ece]                           dc.w $610c
[000c4ed0]                           dc.w $600c
[000c4ed2]                           dc.w $600c
[000c4ed4]                           dc.w $7ffc
[000c4ed6]                           dc.w $7ffc
[000c4ed8]                           dc.b $00
[000c4ed9]                           dc.b $00
[000c4eda]                           dc.b $00
[000c4edb]                           dc.b $00
[000c4edc]                           dc.w $7ffc
[000c4ede]                           dc.w $7ffc
[000c4ee0]                           dc.b '`|`\`|a'
[000c4ee7]                           dc.b $0c
[000c4ee8]                           dc.w $610c
[000c4eea]                           dc.w $67cc
[000c4eec]                           dc.w $610c
[000c4eee]                           dc.w $610c
[000c4ef0]                           dc.w $600c
[000c4ef2]                           dc.w $600c
[000c4ef4]                           dc.w $7ffc
[000c4ef6]                           dc.w $7ffc
[000c4ef8]                           dc.b $00
[000c4ef9]                           dc.b $00
[000c4efa]                           dc.w $fffe
[000c4efc]                           dc.w $8000
[000c4efe]                           dc.w $bfc0
[000c4f00]                           dc.w $a060
[000c4f02]                           dc.w $a050
[000c4f04]                           dc.w $a078
[000c4f06]                           dc.w $a108
[000c4f08]                           dc.w $a108
[000c4f0a]                           dc.w $a7c8
[000c4f0c]                           dc.w $a108
[000c4f0e]                           dc.w $a108
[000c4f10]                           dc.w $a008
[000c4f12]                           dc.w $a008
[000c4f14]                           dc.w $bff8
[000c4f16]                           dc.w $8000
[000c4f18]                           dc.w $8000
DATAS_16:
[000c4f1a]                           dc.w $fffe
[000c4f1c]                           dc.w $fffe
[000c4f1e]                           dc.w $fffe
[000c4f20]                           dc.w $fffe
[000c4f22]                           dc.w $fffe
[000c4f24]                           dc.w $fffe
[000c4f26]                           dc.w $fffe
[000c4f28]                           dc.w $fffe
[000c4f2a]                           dc.w $fffe
[000c4f2c]                           dc.w $fffe
[000c4f2e]                           dc.w $fffe
[000c4f30]                           dc.w $fffe
[000c4f32]                           dc.w $fffe
[000c4f34]                           dc.w $fffe
[000c4f36]                           dc.w $fffe
[000c4f38]                           dc.w $fffe
DATAS_17:
[000c4f3a]                           dc.b $00
[000c4f3b]                           dc.b $00
[000c4f3c]                           dc.b $00
[000c4f3d]                           dc.b $00
[000c4f3e]                           dc.b $00
[000c4f3f]                           dc.b $88
[000c4f40]                           dc.b $00
[000c4f41]                           dc.b $00
[000c4f42]                           dc.w $7ffe
[000c4f44]                           dc.w $7ffe
[000c4f46]                           dc.w $7ffe
[000c4f48]                           dc.w $7ffe
[000c4f4a]                           dc.w $7ffe
[000c4f4c]                           dc.w $7ffe
[000c4f4e]                           dc.w $77fe
[000c4f50]                           dc.w $7ffe
[000c4f52]                           dc.w $7ffe
[000c4f54]                           dc.w $7ffe
[000c4f56]                           dc.w $7ffe
[000c4f58]                           dc.w $7ffe
[000c4f5a]                           dc.w $7ffe
[000c4f5c]                           dc.w $7ffe
[000c4f5e]                           dc.b $00
[000c4f5f]                           dc.b $00
[000c4f60]                           dc.b $00
[000c4f61]                           dc.b $00
[000c4f62]                           dc.w $7ffe
[000c4f64]                           dc.w $7ffe
[000c4f66]                           dc.w $7ffe
[000c4f68]                           dc.w $7ffe
[000c4f6a]                           dc.w $7ffe
[000c4f6c]                           dc.w $7ffe
[000c4f6e]                           dc.w $7ffe
[000c4f70]                           dc.w $7ffe
[000c4f72]                           dc.w $7ffe
[000c4f74]                           dc.w $7ffe
[000c4f76]                           dc.w $7ffe
[000c4f78]                           dc.w $7ffe
[000c4f7a]                           dc.w $7ffe
[000c4f7c]                           dc.w $7ffe
[000c4f7e]                           dc.b $00
[000c4f7f]                           dc.b $00
[000c4f80]                           dc.b $00
[000c4f81]                           dc.b $00
[000c4f82]                           dc.w $7ffe
[000c4f84]                           dc.w $7ffe
[000c4f86]                           dc.w $7ffe
[000c4f88]                           dc.w $77fe
[000c4f8a]                           dc.w $6abe
[000c4f8c]                           dc.w $757e
[000c4f8e]                           dc.w $6bfe
[000c4f90]                           dc.w $7602
[000c4f92]                           dc.w $6c06
[000c4f94]                           dc.w $780e
[000c4f96]                           dc.w $701e
[000c4f98]                           dc.w $7ffe
[000c4f9a]                           dc.w $7ffe
[000c4f9c]                           dc.w $7ffe
[000c4f9e]                           dc.b $00
[000c4f9f]                           dc.b $00
[000c4fa0]                           dc.b $00
[000c4fa1]                           dc.b $01
[000c4fa2]                           dc.b $00
[000c4fa3]                           dc.b $01
[000c4fa4]                           dc.b $00
[000c4fa5]                           dc.b $71
[000c4fa6]                           dc.w $1c8b
[000c4fa8]                           dc.w $23e7
[000c4faa]                           dc.b ' / !!'
[000c4faf]                           dc.b $ff
[000c4fb0]                           dc.w $2203
[000c4fb2]                           dc.w $2405
[000c4fb4]                           dc.w $2809
[000c4fb6]                           dc.w $3011
[000c4fb8]                           dc.w $3fe1
[000c4fba]                           dc.b $00
[000c4fbb]                           dc.b $01
[000c4fbc]                           dc.b $00
[000c4fbd]                           dc.b $01
[000c4fbe]                           dc.w $ffff
DATAS_18:
[000c4fc0]                           dc.w $ffff
[000c4fc2]                           dc.w $ffff
[000c4fc4]                           dc.w $ffff
[000c4fc6]                           dc.w $ffff
[000c4fc8]                           dc.w $ffff
[000c4fca]                           dc.w $ffff
[000c4fcc]                           dc.w $ffff
[000c4fce]                           dc.w $ffff
[000c4fd0]                           dc.w $ffff
[000c4fd2]                           dc.w $ffff
[000c4fd4]                           dc.w $ffff
[000c4fd6]                           dc.w $ffff
[000c4fd8]                           dc.w $ffff
[000c4fda]                           dc.w $ffff
[000c4fdc]                           dc.w $ffff
[000c4fde]                           dc.w $ffff
DATAS_19:
[000c4fe0]                           dc.b $00
[000c4fe1]                           dc.b $00
[000c4fe2]                           dc.b $00
[000c4fe3]                           dc.b $00
[000c4fe4]                           dc.b $00
[000c4fe5]                           dc.b $90
[000c4fe6]                           dc.b $00
[000c4fe7]                           dc.b $00
[000c4fe8]                           dc.w $7ffe
[000c4fea]                           dc.w $7ffe
[000c4fec]                           dc.w $7ffe
[000c4fee]                           dc.w $7ffe
[000c4ff0]                           dc.w $7ffe
[000c4ff2]                           dc.w $7ffe
[000c4ff4]                           dc.w $7ffe
[000c4ff6]                           dc.w $7ffe
[000c4ff8]                           dc.w $7ffe
[000c4ffa]                           dc.w $7ffe
[000c4ffc]                           dc.w $7ffe
[000c4ffe]                           dc.w $7ffe
[000c5000]                           dc.w $7ffe
[000c5002]                           dc.w $7ffe
[000c5004]                           dc.b $00
[000c5005]                           dc.b $00
[000c5006]                           dc.b $00
[000c5007]                           dc.b $00
[000c5008]                           dc.w $7ffe
[000c500a]                           dc.w $7ffe
[000c500c]                           dc.w $7ffe
[000c500e]                           dc.w $7ffe
[000c5010]                           dc.w $7ffe
[000c5012]                           dc.w $7ffe
[000c5014]                           dc.w $7ffe
[000c5016]                           dc.w $7ffe
[000c5018]                           dc.w $7ffe
[000c501a]                           dc.w $7ffe
[000c501c]                           dc.w $7ffe
[000c501e]                           dc.w $7ffe
[000c5020]                           dc.w $7ffe
[000c5022]                           dc.w $7ffe
[000c5024]                           dc.b $00
[000c5025]                           dc.b $00
[000c5026]                           dc.b $00
[000c5027]                           dc.b $00
[000c5028]                           dc.w $7ffe
[000c502a]                           dc.w $7ffe
[000c502c]                           dc.w $7ffe
[000c502e]                           dc.w $77fe
[000c5030]                           dc.w $6abe
[000c5032]                           dc.w $757e
[000c5034]                           dc.w $6bfe
[000c5036]                           dc.w $7602
[000c5038]                           dc.w $6c06
[000c503a]                           dc.w $780e
[000c503c]                           dc.w $701e
[000c503e]                           dc.w $7ffe
[000c5040]                           dc.w $7ffe
[000c5042]                           dc.w $7ffe
[000c5044]                           dc.b $00
[000c5045]                           dc.b $00
[000c5046]                           dc.w $ffff
[000c5048]                           dc.w $8000
[000c504a]                           dc.w $8070
[000c504c]                           dc.w $9c8a
[000c504e]                           dc.w $a3e6
[000c5050]                           dc.w $a02e
[000c5052]                           dc.w $a020
[000c5054]                           dc.w $a1fe
[000c5056]                           dc.w $a202
[000c5058]                           dc.w $a404
[000c505a]                           dc.w $a808
[000c505c]                           dc.w $b010
[000c505e]                           dc.w $bfe0
[000c5060]                           dc.w $8000
[000c5062]                           dc.w $8000
[000c5064]                           dc.w $8000
DATAS_20:
[000c5066]                           dc.w $ffff
[000c5068]                           dc.w $ffff
[000c506a]                           dc.w $ffff
[000c506c]                           dc.w $ffff
[000c506e]                           dc.w $ffff
[000c5070]                           dc.w $ffff
[000c5072]                           dc.w $ffff
[000c5074]                           dc.w $ffff
[000c5076]                           dc.w $ffff
[000c5078]                           dc.w $ffff
[000c507a]                           dc.w $ffff
[000c507c]                           dc.w $ffff
[000c507e]                           dc.w $ffff
[000c5080]                           dc.w $ffff
[000c5082]                           dc.w $ffff
[000c5084]                           dc.w $ffff
DATAS_21:
[000c5086]                           dc.b $00
[000c5087]                           dc.b $00
[000c5088]                           dc.b $00
[000c5089]                           dc.b $00
[000c508a]                           dc.b $00
[000c508b]                           dc.b $8e
[000c508c]                           dc.b $00
[000c508d]                           dc.b $00
[000c508e]                           dc.w $7ffe
[000c5090]                           dc.w $7ffe
[000c5092]                           dc.w $7ffe
[000c5094]                           dc.w $7ffe
[000c5096]                           dc.w $7ffe
[000c5098]                           dc.w $7ffe
[000c509a]                           dc.w $7ffe
[000c509c]                           dc.w $7f1e
[000c509e]                           dc.w $7f16
[000c50a0]                           dc.w $7f1e
[000c50a2]                           dc.w $7f06
[000c50a4]                           dc.w $7f06
[000c50a6]                           dc.w $7f06
[000c50a8]                           dc.w $7ffe
[000c50aa]                           dc.b $00
[000c50ab]                           dc.b $00
[000c50ac]                           dc.b $00
[000c50ad]                           dc.b $00
[000c50ae]                           dc.w $7ffe
[000c50b0]                           dc.w $7ffe
[000c50b2]                           dc.w $7ffe
[000c50b4]                           dc.w $781e
[000c50b6]                           dc.w $7ffe
[000c50b8]                           dc.w $7ffe
[000c50ba]                           dc.w $7ffe
[000c50bc]                           dc.w $7f1e
[000c50be]                           dc.w $7f16
[000c50c0]                           dc.w $7f1e
[000c50c2]                           dc.w $7f06
[000c50c4]                           dc.w $7f06
[000c50c6]                           dc.w $7f06
[000c50c8]                           dc.w $7ffe
[000c50ca]                           dc.b $00
[000c50cb]                           dc.b $00
[000c50cc]                           dc.b $00
[000c50cd]                           dc.b $00
[000c50ce]                           dc.w $7ffe
[000c50d0]                           dc.w $7ffe
[000c50d2]                           dc.w $57f6
[000c50d4]                           dc.w $681a
[000c50d6]                           dc.w $5ff6
[000c50d8]                           dc.w $6aaa
[000c50da]                           dc.w $55f6
[000c50dc]                           dc.w $6b1a
[000c50de]                           dc.w $5516
[000c50e0]                           dc.w $6b1e
[000c50e2]                           dc.w $5506
[000c50e4]                           dc.w $6b06
[000c50e6]                           dc.w $7f06
[000c50e8]                           dc.w $7ffe
[000c50ea]                           dc.b $00
[000c50eb]                           dc.b $00
[000c50ec]                           dc.b $00
[000c50ed]                           dc.b $01
[000c50ee]                           dc.w $03c1
[000c50f0]                           dc.w $7e7d
[000c50f2]                           dc.w $45a3
[000c50f4]                           dc.w $4813
[000c50f6]                           dc.w $4ff3
[000c50f8]                           dc.b $40
[000c50f9]                           dc.b $03
[000c50fa]                           dc.w $41f3
[000c50fc]                           dc.w $411b
[000c50fe]                           dc.w $4117
[000c5100]                           dc.w $411f
[000c5102]                           dc.w $4107
[000c5104]                           dc.w $4107
[000c5106]                           dc.w $3f05
[000c5108]                           dc.w $01fd
[000c510a]                           dc.w $ffff
DATAS_22:
[000c510c]                           dc.w $ffff
[000c510e]                           dc.w $ffff
[000c5110]                           dc.w $ffff
[000c5112]                           dc.w $ffff
[000c5114]                           dc.w $ffff
[000c5116]                           dc.w $ffff
[000c5118]                           dc.w $ffff
[000c511a]                           dc.w $ffff
[000c511c]                           dc.w $ffff
[000c511e]                           dc.w $ffff
[000c5120]                           dc.w $ffff
[000c5122]                           dc.w $ffff
[000c5124]                           dc.w $ffff
[000c5126]                           dc.w $ffff
[000c5128]                           dc.w $ffff
[000c512a]                           dc.w $ffff
DATAS_23:
[000c512c]                           dc.b $00
[000c512d]                           dc.b $00
[000c512e]                           dc.b $00
[000c512f]                           dc.b $00
[000c5130]                           dc.b $00
[000c5131]                           dc.b $88
[000c5132]                           dc.b $00
[000c5133]                           dc.b $00
[000c5134]                           dc.w $7ffe
[000c5136]                           dc.w $7ffe
[000c5138]                           dc.w $7ffe
[000c513a]                           dc.w $7ffe
[000c513c]                           dc.w $7ffe
[000c513e]                           dc.w $7ffe
[000c5140]                           dc.w $7ffe
[000c5142]                           dc.w $7f1e
[000c5144]                           dc.w $7f16
[000c5146]                           dc.w $7f1e
[000c5148]                           dc.w $7f06
[000c514a]                           dc.b $7f
[000c514b]                           dc.b $06
[000c514c]                           dc.w $7f06
[000c514e]                           dc.w $7ffe
[000c5150]                           dc.b $00
[000c5151]                           dc.b $00
[000c5152]                           dc.b $00
[000c5153]                           dc.b $00
[000c5154]                           dc.w $7ffe
[000c5156]                           dc.w $7ffe
[000c5158]                           dc.w $7ffe
[000c515a]                           dc.w $781e
[000c515c]                           dc.w $7ffe
[000c515e]                           dc.w $7ffe
[000c5160]                           dc.w $7ffe
[000c5162]                           dc.w $7f1e
[000c5164]                           dc.w $7f16
[000c5166]                           dc.w $7f1e
[000c5168]                           dc.w $7f06
[000c516a]                           dc.w $7f06
[000c516c]                           dc.w $7f06
[000c516e]                           dc.w $7ffe
[000c5170]                           dc.b $00
[000c5171]                           dc.b $00
[000c5172]                           dc.b $00
[000c5173]                           dc.b $00
[000c5174]                           dc.w $7ffe
[000c5176]                           dc.w $7ffe
[000c5178]                           dc.w $57f6
[000c517a]                           dc.w $681a
[000c517c]                           dc.w $5ff6
[000c517e]                           dc.w $6aaa
[000c5180]                           dc.w $55f6
[000c5182]                           dc.w $6b1a
[000c5184]                           dc.w $5516
[000c5186]                           dc.w $6b1e
[000c5188]                           dc.w $5506
[000c518a]                           dc.w $6b06
[000c518c]                           dc.w $7f06
[000c518e]                           dc.w $7ffe
[000c5190]                           dc.b $00
[000c5191]                           dc.b $00
[000c5192]                           dc.w $ffff
[000c5194]                           dc.w $83c0
[000c5196]                           dc.w $be7c
[000c5198]                           dc.w $c5a2
[000c519a]                           dc.w $c812
[000c519c]                           dc.w $cff2
[000c519e]                           dc.w $c002
[000c51a0]                           dc.w $c1f2
[000c51a2]                           dc.w $c11a
[000c51a4]                           dc.w $c116
[000c51a6]                           dc.w $c11e
[000c51a8]                           dc.w $c106
[000c51aa]                           dc.w $c106
[000c51ac]                           dc.w $bf06
[000c51ae]                           dc.w $81fc
[000c51b0]                           dc.w $8000
DATAS_24:
[000c51b2]                           dc.w $ffff
[000c51b4]                           dc.w $ffff
[000c51b6]                           dc.w $ffff
[000c51b8]                           dc.w $ffff
[000c51ba]                           dc.w $ffff
[000c51bc]                           dc.w $ffff
[000c51be]                           dc.w $ffff
[000c51c0]                           dc.w $ffff
[000c51c2]                           dc.w $ffff
[000c51c4]                           dc.w $ffff
[000c51c6]                           dc.w $ffff
[000c51c8]                           dc.w $ffff
[000c51ca]                           dc.w $ffff
[000c51cc]                           dc.w $ffff
[000c51ce]                           dc.b $ff
[000c51cf]                           dc.b $ff
[000c51d0]                           dc.w $ffff
DATAS_25:
[000c51d2]                           dc.b $00
[000c51d3]                           dc.b $00
[000c51d4]                           dc.b $00
[000c51d5]                           dc.b $00
[000c51d6]                           dc.b $00
[000c51d7]                           dc.b $96
[000c51d8]                           dc.b $00
[000c51d9]                           dc.b $00
[000c51da]                           dc.b $7f
[000c51db]                           dc.b $fe
[000c51dc]                           dc.w $7ffe
[000c51de]                           dc.b $68
[000c51df]                           dc.b $16
[000c51e0]                           dc.w $6bd6
[000c51e2]                           dc.b $68
[000c51e3]                           dc.b $16
[000c51e4]                           dc.w $6816
[000c51e6]                           dc.b $68
[000c51e7]                           dc.b $16
[000c51e8]                           dc.w $67e6
[000c51ea]                           dc.w $6006
[000c51ec]                           dc.b $67
[000c51ed]                           dc.b $f6
[000c51ee]                           dc.w $6796
[000c51f0]                           dc.w $6796
[000c51f2]                           dc.w $7ffe
[000c51f4]                           dc.w $7ffe
[000c51f6]                           dc.b $00
[000c51f7]                           dc.b $00
[000c51f8]                           dc.b $00
[000c51f9]                           dc.b $00
[000c51fa]                           dc.w $7ffe
[000c51fc]                           dc.w $7ffe
[000c51fe]                           dc.w $6816
[000c5200]                           dc.w $6bd6
[000c5202]                           dc.w $6816
[000c5204]                           dc.w $6816
[000c5206]                           dc.w $6816
[000c5208]                           dc.w $67e6
[000c520a]                           dc.w $6006
[000c520c]                           dc.w $67f6
[000c520e]                           dc.w $6796
[000c5210]                           dc.b $67
[000c5211]                           dc.b $96
[000c5212]                           dc.w $7ffe
[000c5214]                           dc.w $7ffe
[000c5216]                           dc.b $00
[000c5217]                           dc.b $00
[000c5218]                           dc.b $00
[000c5219]                           dc.b $00
[000c521a]                           dc.w $7ffe
[000c521c]                           dc.w $7ffe
[000c521e]                           dc.b $78
[000c521f]                           dc.b $1e
[000c5220]                           dc.w $7bde
[000c5222]                           dc.w $781e
[000c5224]                           dc.w $781e
[000c5226]                           dc.w $781e
[000c5228]                           dc.w $7ffe
[000c522a]                           dc.w $7ffe
[000c522c]                           dc.b $7f
[000c522d]                           dc.b $fe
[000c522e]                           dc.w $7f9e
[000c5230]                           dc.w $7f9e
[000c5232]                           dc.w $7ffe
[000c5234]                           dc.w $7ffe
[000c5236]                           dc.b $00
[000c5237]                           dc.b $00
[000c5238]                           dc.b $00
[000c5239]                           dc.b $01
[000c523a]                           dc.b $00
[000c523b]                           dc.b $01
[000c523c]                           dc.w $3ffd
[000c523e]                           dc.w $2815
[000c5240]                           dc.w $2815
[000c5242]                           dc.w $2815
[000c5244]                           dc.w $2815
[000c5246]                           dc.w $2815
[000c5248]                           dc.w $27e5
[000c524a]                           dc.w $2005
[000c524c]                           dc.w $27f5
[000c524e]                           dc.w $27f5
[000c5250]                           dc.w $27f5
[000c5252]                           dc.w $1ffd
[000c5254]                           dc.b $00
[000c5255]                           dc.b $01
[000c5256]                           dc.b $ff
[000c5257]                           dc.b $ff
DATAS_26:
[000c5258]                           dc.w $ffff
[000c525a]                           dc.w $ffff
[000c525c]                           dc.b $ff
[000c525d]                           dc.b $ff
[000c525e]                           dc.w $ffff
[000c5260]                           dc.w $ffff
[000c5262]                           dc.w $ffff
[000c5264]                           dc.w $ffff
[000c5266]                           dc.w $ffff
[000c5268]                           dc.w $ffff
[000c526a]                           dc.w $ffff
[000c526c]                           dc.w $ffff
[000c526e]                           dc.w $ffff
[000c5270]                           dc.w $ffff
[000c5272]                           dc.w $ffff
[000c5274]                           dc.w $ffff
[000c5276]                           dc.w $ffff
DATAS_27:
[000c5278]                           dc.b $00
[000c5279]                           dc.b $00
[000c527a]                           dc.b $00
[000c527b]                           dc.b $00
[000c527c]                           dc.b $00
[000c527d]                           dc.b $88
[000c527e]                           dc.b $00
[000c527f]                           dc.b $00
[000c5280]                           dc.w $7ffe
[000c5282]                           dc.b $7f
[000c5283]                           dc.b $fe
[000c5284]                           dc.w $6816
[000c5286]                           dc.w $6bd6
[000c5288]                           dc.b $68
[000c5289]                           dc.b $16
[000c528a]                           dc.w $6816
[000c528c]                           dc.w $6816
[000c528e]                           dc.w $67e6
[000c5290]                           dc.w $6006
[000c5292]                           dc.w $67f6
[000c5294]                           dc.w $6796
[000c5296]                           dc.w $6796
[000c5298]                           dc.w $7ffe
[000c529a]                           dc.w $7ffe
[000c529c]                           dc.b $00
[000c529d]                           dc.b $00
[000c529e]                           dc.b $00
[000c529f]                           dc.b $00
[000c52a0]                           dc.w $7ffe
[000c52a2]                           dc.w $7ffe
[000c52a4]                           dc.w $6816
[000c52a6]                           dc.w $6bd6
[000c52a8]                           dc.w $6816
[000c52aa]                           dc.w $6816
[000c52ac]                           dc.w $6816
[000c52ae]                           dc.w $67e6
[000c52b0]                           dc.w $6006
[000c52b2]                           dc.w $67f6
[000c52b4]                           dc.w $6796
[000c52b6]                           dc.w $6796
[000c52b8]                           dc.w $7ffe
[000c52ba]                           dc.w $7ffe
[000c52bc]                           dc.b $00
[000c52bd]                           dc.b $00
[000c52be]                           dc.b $00
[000c52bf]                           dc.b $00
[000c52c0]                           dc.w $7ffe
[000c52c2]                           dc.w $7ffe
[000c52c4]                           dc.w $781e
[000c52c6]                           dc.w $7bde
[000c52c8]                           dc.w $781e
[000c52ca]                           dc.w $781e
[000c52cc]                           dc.w $781e
[000c52ce]                           dc.w $7ffe
[000c52d0]                           dc.w $7ffe
[000c52d2]                           dc.w $7ffe
[000c52d4]                           dc.w $7f9e
[000c52d6]                           dc.w $7f9e
[000c52d8]                           dc.w $7ffe
[000c52da]                           dc.w $7ffe
[000c52dc]                           dc.b $00
[000c52dd]                           dc.b $00
[000c52de]                           dc.w $ffff
[000c52e0]                           dc.w $8000
[000c52e2]                           dc.w $bffc
[000c52e4]                           dc.w $a814
[000c52e6]                           dc.w $a814
[000c52e8]                           dc.w $a814
[000c52ea]                           dc.w $a814
[000c52ec]                           dc.w $a814
[000c52ee]                           dc.w $a7e4
[000c52f0]                           dc.w $a004
[000c52f2]                           dc.w $a7f4
[000c52f4]                           dc.w $a7f4
[000c52f6]                           dc.w $a7f4
[000c52f8]                           dc.w $9ffc
[000c52fa]                           dc.w $8000
[000c52fc]                           dc.w $8000
DATAS_28:
[000c52fe]                           dc.w $ffff
[000c5300]                           dc.w $ffff
[000c5302]                           dc.w $ffff
[000c5304]                           dc.w $ffff
[000c5306]                           dc.w $ffff
[000c5308]                           dc.w $ffff
[000c530a]                           dc.w $ffff
[000c530c]                           dc.w $ffff
[000c530e]                           dc.w $ffff
[000c5310]                           dc.w $ffff
[000c5312]                           dc.w $ffff
[000c5314]                           dc.w $ffff
[000c5316]                           dc.w $ffff
[000c5318]                           dc.w $ffff
[000c531a]                           dc.w $ffff
[000c531c]                           dc.w $ffff
DATAS_33:
[000c531e]                           dc.b $00
[000c531f]                           dc.b $00
[000c5320]                           dc.b $00
[000c5321]                           dc.b $00
[000c5322]                           dc.b $00
[000c5323]                           dc.b $88
[000c5324]                           dc.b $00
[000c5325]                           dc.b $00
[000c5326]                           dc.w $7ffe
[000c5328]                           dc.w $7ffe
[000c532a]                           dc.w $7ffe
[000c532c]                           dc.w $7ffe
[000c532e]                           dc.w $7ffe
[000c5330]                           dc.w $7ffe
[000c5332]                           dc.w $7ffe
[000c5334]                           dc.w $7ffe
[000c5336]                           dc.w $7ffe
[000c5338]                           dc.w $7ffe
[000c533a]                           dc.w $7ffe
[000c533c]                           dc.w $7ffe
[000c533e]                           dc.w $7ffe
[000c5340]                           dc.w $7ffe
[000c5342]                           dc.b $00
[000c5343]                           dc.b $00
[000c5344]                           dc.b $00
[000c5345]                           dc.b $00
[000c5346]                           dc.w $7ffe
[000c5348]                           dc.w $7ffe
[000c534a]                           dc.w $7ffe
[000c534c]                           dc.w $7ffe
[000c534e]                           dc.w $7ffe
[000c5350]                           dc.w $7ffe
[000c5352]                           dc.w $7ffe
[000c5354]                           dc.w $7ffe
[000c5356]                           dc.w $7ffe
[000c5358]                           dc.w $7ffe
[000c535a]                           dc.w $7ffe
[000c535c]                           dc.w $7ffe
[000c535e]                           dc.w $7ffe
[000c5360]                           dc.w $7ffe
[000c5362]                           dc.b $00
[000c5363]                           dc.b $00
[000c5364]                           dc.b $00
[000c5365]                           dc.b $00
[000c5366]                           dc.w $7ffe
[000c5368]                           dc.w $7ffe
[000c536a]                           dc.w $7ffe
[000c536c]                           dc.w $7ffe
[000c536e]                           dc.w $7ffe
[000c5370]                           dc.w $7ffe
[000c5372]                           dc.w $7ffe
[000c5374]                           dc.w $7ffe
[000c5376]                           dc.w $7ffe
[000c5378]                           dc.w $7ffe
[000c537a]                           dc.w $7ffe
[000c537c]                           dc.w $7ffe
[000c537e]                           dc.w $7ffe
[000c5380]                           dc.w $7ffe
[000c5382]                           dc.b $00
[000c5383]                           dc.b $00
[000c5384]                           dc.b $00
[000c5385]                           dc.b $01
[000c5386]                           dc.b $00
[000c5387]                           dc.b $01
[000c5388]                           dc.b $00
[000c5389]                           dc.b $01
[000c538a]                           dc.w $0201
[000c538c]                           dc.w $0601
[000c538e]                           dc.w $0fe1
[000c5390]                           dc.w $0611
[000c5392]                           dc.w $0209
[000c5394]                           dc.b $00
[000c5395]                           dc.b $09
[000c5396]                           dc.b $00
[000c5397]                           dc.b $09
[000c5398]                           dc.b $00
[000c5399]                           dc.b $11
[000c539a]                           dc.w $01e1
[000c539c]                           dc.b $00
[000c539d]                           dc.b $01
[000c539e]                           dc.b $00
[000c539f]                           dc.b $01
[000c53a0]                           dc.b $00
[000c53a1]                           dc.b $01
[000c53a2]                           dc.w $ffff
DATAS_34:
[000c53a4]                           dc.w $ffff
[000c53a6]                           dc.w $ffff
[000c53a8]                           dc.w $ffff
[000c53aa]                           dc.w $ffff
[000c53ac]                           dc.w $ffff
[000c53ae]                           dc.w $ffff
[000c53b0]                           dc.w $ffff
[000c53b2]                           dc.w $ffff
[000c53b4]                           dc.w $ffff
[000c53b6]                           dc.w $ffff
[000c53b8]                           dc.w $ffff
[000c53ba]                           dc.w $ffff
[000c53bc]                           dc.w $ffff
[000c53be]                           dc.w $ffff
[000c53c0]                           dc.w $ffff
[000c53c2]                           dc.w $ffff
DATAS_35:
[000c53c4]                           dc.b $00
[000c53c5]                           dc.b $00
[000c53c6]                           dc.b $00
[000c53c7]                           dc.b $00
[000c53c8]                           dc.b $00
[000c53c9]                           dc.b $88
[000c53ca]                           dc.b $00
[000c53cb]                           dc.b $00
[000c53cc]                           dc.w $7ffe
[000c53ce]                           dc.w $7ffe
[000c53d0]                           dc.w $7ffe
[000c53d2]                           dc.w $7ffe
[000c53d4]                           dc.w $7ffe
[000c53d6]                           dc.w $7ffe
[000c53d8]                           dc.w $7ffe
[000c53da]                           dc.w $7ffe
[000c53dc]                           dc.w $7ffe
[000c53de]                           dc.w $7ffe
[000c53e0]                           dc.w $7ffe
[000c53e2]                           dc.w $7ffe
[000c53e4]                           dc.w $7ffe
[000c53e6]                           dc.w $7ffe
[000c53e8]                           dc.b $00
[000c53e9]                           dc.b $00
[000c53ea]                           dc.b $00
[000c53eb]                           dc.b $00
[000c53ec]                           dc.w $7ffe
[000c53ee]                           dc.w $7ffe
[000c53f0]                           dc.w $7ffe
[000c53f2]                           dc.w $7ffe
[000c53f4]                           dc.w $7ffe
[000c53f6]                           dc.w $7ffe
[000c53f8]                           dc.w $7ffe
[000c53fa]                           dc.w $7ffe
[000c53fc]                           dc.w $7ffe
[000c53fe]                           dc.w $7ffe
[000c5400]                           dc.w $7ffe
[000c5402]                           dc.w $7ffe
[000c5404]                           dc.w $7ffe
[000c5406]                           dc.w $7ffe
[000c5408]                           dc.b $00
[000c5409]                           dc.b $00
[000c540a]                           dc.b $00
[000c540b]                           dc.b $00
[000c540c]                           dc.w $7ffe
[000c540e]                           dc.w $7ffe
[000c5410]                           dc.w $7ffe
[000c5412]                           dc.w $7ffe
[000c5414]                           dc.w $7ffe
[000c5416]                           dc.w $7ffe
[000c5418]                           dc.w $7ffe
[000c541a]                           dc.w $7ffe
[000c541c]                           dc.w $7ffe
[000c541e]                           dc.w $7ffe
[000c5420]                           dc.w $7ffe
[000c5422]                           dc.w $7ffe
[000c5424]                           dc.w $7ffe
[000c5426]                           dc.w $7ffe
[000c5428]                           dc.b $00
[000c5429]                           dc.b $00
[000c542a]                           dc.w $ffff
[000c542c]                           dc.w $8000
[000c542e]                           dc.w $8000
[000c5430]                           dc.w $8200
[000c5432]                           dc.w $8600
[000c5434]                           dc.w $8fe0
[000c5436]                           dc.w $8610
[000c5438]                           dc.w $8208
[000c543a]                           dc.w $8008
[000c543c]                           dc.w $8008
[000c543e]                           dc.w $8010
[000c5440]                           dc.w $81e0
[000c5442]                           dc.w $8000
[000c5444]                           dc.w $8000
[000c5446]                           dc.w $8000
[000c5448]                           dc.w $8000
DATAS_36:
[000c544a]                           dc.w $ffff
[000c544c]                           dc.w $ffff
[000c544e]                           dc.w $ffff
[000c5450]                           dc.w $ffff
[000c5452]                           dc.w $ffff
[000c5454]                           dc.w $ffff
[000c5456]                           dc.w $ffff
[000c5458]                           dc.w $ffff
[000c545a]                           dc.w $ffff
[000c545c]                           dc.w $ffff
[000c545e]                           dc.w $ffff
[000c5460]                           dc.w $ffff
[000c5462]                           dc.w $ffff
[000c5464]                           dc.w $ffff
[000c5466]                           dc.w $ffff
[000c5468]                           dc.w $ffff
TEDINFO_05:
[000c546a] 000c4277                  dc.l TEXT_09
[000c546e] 000c41b6                  dc.l TEXT_002
[000c5472] 000c41b6                  dc.l TEXT_002
[000c5476]                           dc.b $00
[000c5477]                           dc.b $03
[000c5478]                           dc.b $00
[000c5479]                           dc.b $06
[000c547a]                           dc.b $00
[000c547b]                           dc.b $01
[000c547c]                           dc.w $1180
[000c547e]                           dc.b $00
[000c547f]                           dc.b $00
[000c5480]                           dc.b $00
[000c5481]                           dc.b $00
[000c5482]                           dc.b $00
[000c5483]                           dc.b $08
[000c5484]                           dc.b $00
[000c5485]                           dc.b $01
A_3DBUTTON01:
[000c5486] 0005a4e2                  dc.l A_3Dbutton
[000c548a]                           dc.w $29f1
[000c548c]                           dc.w $01f8
[000c548e] 00059318                  dc.l Auo_string
[000c5492]                           dc.b $00
[000c5493]                           dc.b $00
[000c5494]                           dc.b $00
[000c5495]                           dc.b $00
[000c5496]                           dc.b $00
[000c5497]                           dc.b $00
[000c5498]                           dc.b $00
[000c5499]                           dc.b $00
[000c549a]                           dc.b $00
[000c549b]                           dc.b $00
[000c549c]                           dc.b $00
[000c549d]                           dc.b $00
[000c549e]                           dc.b $00
[000c549f]                           dc.b $00
[000c54a0]                           dc.b $00
[000c54a1]                           dc.b $00
[000c54a2]                           dc.b $00
[000c54a3]                           dc.b $00
[000c54a4]                           dc.b $00
[000c54a5]                           dc.b $00
A_3DBUTTON02:
[000c54a6] 0005a4e2                  dc.l A_3Dbutton
[000c54aa]                           dc.w $29c1
[000c54ac]                           dc.w $0178
[000c54ae] 00059318                  dc.l Auo_string
[000c54b2] 000c4570                  dc.l TEXT_51
[000c54b6]                           dc.b $00
[000c54b7]                           dc.b $00
[000c54b8]                           dc.b $00
[000c54b9]                           dc.b $00
[000c54ba]                           dc.b $00
[000c54bb]                           dc.b $00
[000c54bc]                           dc.b $00
[000c54bd]                           dc.b $00
[000c54be]                           dc.b $00
[000c54bf]                           dc.b $00
[000c54c0]                           dc.b $00
[000c54c1]                           dc.b $00
[000c54c2]                           dc.b $00
[000c54c3]                           dc.b $00
[000c54c4]                           dc.b $00
[000c54c5]                           dc.b $00
A_3DBUTTON03:
[000c54c6] 0005a4e2                  dc.l A_3Dbutton
[000c54ca]                           dc.w $2021
[000c54cc]                           dc.w $9178
[000c54ce] 00059318                  dc.l Auo_string
[000c54d2]                           dc.b $00
[000c54d3]                           dc.b $00
[000c54d4]                           dc.b $00
[000c54d5]                           dc.b $00
[000c54d6]                           dc.b $00
[000c54d7]                           dc.b $00
[000c54d8]                           dc.b $00
[000c54d9]                           dc.b $00
[000c54da]                           dc.b $00
[000c54db]                           dc.b $00
[000c54dc]                           dc.b $00
[000c54dd]                           dc.b $00
[000c54de]                           dc.b $00
[000c54df]                           dc.b $00
[000c54e0]                           dc.b $00
[000c54e1]                           dc.b $00
[000c54e2]                           dc.b $00
[000c54e3]                           dc.b $00
[000c54e4]                           dc.b $00
[000c54e5]                           dc.b $00
A_3DBUTTON04:
[000c54e6] 0005a4e2                  dc.l A_3Dbutton
[000c54ea]                           dc.w $2011
[000c54ec]                           dc.w $9178
[000c54ee] 00059318                  dc.l Auo_string
[000c54f2]                           dc.b $00
[000c54f3]                           dc.b $00
[000c54f4]                           dc.b $00
[000c54f5]                           dc.b $00
[000c54f6]                           dc.b $00
[000c54f7]                           dc.b $00
[000c54f8]                           dc.b $00
[000c54f9]                           dc.b $00
[000c54fa]                           dc.b $00
[000c54fb]                           dc.b $00
[000c54fc]                           dc.b $00
[000c54fd]                           dc.b $00
[000c54fe]                           dc.b $00
[000c54ff]                           dc.b $00
[000c5500]                           dc.b $00
[000c5501]                           dc.b $00
[000c5502]                           dc.b $00
[000c5503]                           dc.b $00
[000c5504]                           dc.b $00
[000c5505]                           dc.b $00
A_3DBUTTON05:
[000c5506] 0005a4e2                  dc.l A_3Dbutton
[000c550a]                           dc.w $29c1
[000c550c]                           dc.w $0178
[000c550e] 00059318                  dc.l Auo_string
[000c5512] 000c41dd                  dc.l TEXT_013
[000c5516]                           dc.b $00
[000c5517]                           dc.b $00
[000c5518]                           dc.b $00
[000c5519]                           dc.b $00
[000c551a]                           dc.b $00
[000c551b]                           dc.b $00
[000c551c]                           dc.b $00
[000c551d]                           dc.b $00
[000c551e]                           dc.b $00
[000c551f]                           dc.b $00
[000c5520]                           dc.b $00
[000c5521]                           dc.b $00
[000c5522]                           dc.b $00
[000c5523]                           dc.b $00
[000c5524]                           dc.b $00
[000c5525]                           dc.b $00
A_3DBUTTON06:
[000c5526] 0005a4e2                  dc.l A_3Dbutton
[000c552a]                           dc.w $29f1
[000c552c]                           dc.w $9178
[000c552e] 00059318                  dc.l Auo_string
[000c5532]                           dc.b $00
[000c5533]                           dc.b $00
[000c5534]                           dc.b $00
[000c5535]                           dc.b $00
[000c5536]                           dc.b $00
[000c5537]                           dc.b $00
[000c5538]                           dc.b $00
[000c5539]                           dc.b $00
[000c553a]                           dc.b $00
[000c553b]                           dc.b $00
[000c553c]                           dc.b $00
[000c553d]                           dc.b $00
[000c553e]                           dc.b $00
[000c553f]                           dc.b $00
[000c5540]                           dc.b $00
[000c5541]                           dc.b $00
[000c5542]                           dc.b $00
[000c5543]                           dc.b $00
[000c5544]                           dc.b $00
[000c5545]                           dc.b $00
A_3DBUTTON07:
[000c5546] 0005a4e2                  dc.l A_3Dbutton
[000c554a]                           dc.w $29c1
[000c554c]                           dc.w $0178
[000c554e] 00059318                  dc.l Auo_string
[000c5552] 000c41ef                  dc.l TEXT_026
[000c5556]                           dc.b $00
[000c5557]                           dc.b $00
[000c5558]                           dc.b $00
[000c5559]                           dc.b $00
[000c555a]                           dc.b $00
[000c555b]                           dc.b $00
[000c555c]                           dc.b $00
[000c555d]                           dc.b $00
[000c555e]                           dc.b $00
[000c555f]                           dc.b $00
[000c5560]                           dc.b $00
[000c5561]                           dc.b $00
[000c5562]                           dc.b $00
[000c5563]                           dc.b $00
[000c5564]                           dc.b $00
[000c5565]                           dc.b $00
A_3DBUTTON08:
[000c5566] 0005a4e2                  dc.l A_3Dbutton
[000c556a]                           dc.b $00
[000c556b]                           dc.b $01
[000c556c]                           dc.w $9170
[000c556e] 00059318                  dc.l Auo_string
[000c5572]                           dc.b $00
[000c5573]                           dc.b $00
[000c5574]                           dc.b $00
[000c5575]                           dc.b $00
[000c5576]                           dc.b $00
[000c5577]                           dc.b $00
[000c5578]                           dc.b $00
[000c5579]                           dc.b $00
[000c557a]                           dc.b $00
[000c557b]                           dc.b $00
[000c557c]                           dc.b $00
[000c557d]                           dc.b $00
[000c557e]                           dc.b $00
[000c557f]                           dc.b $00
[000c5580]                           dc.b $00
[000c5581]                           dc.b $00
[000c5582]                           dc.b $00
[000c5583]                           dc.b $00
[000c5584]                           dc.b $00
[000c5585]                           dc.b $00
A_3DBUTTON12:
[000c5586] 0005a4e2                  dc.l A_3Dbutton
[000c558a]                           dc.w $29f1
[000c558c]                           dc.w $0178
[000c558e] 00059318                  dc.l Auo_string
[000c5592]                           dc.b $00
[000c5593]                           dc.b $00
[000c5594]                           dc.b $00
[000c5595]                           dc.b $00
[000c5596]                           dc.b $00
[000c5597]                           dc.b $00
[000c5598]                           dc.b $00
[000c5599]                           dc.b $00
[000c559a]                           dc.b $00
[000c559b]                           dc.b $00
[000c559c]                           dc.b $00
[000c559d]                           dc.b $00
[000c559e]                           dc.b $00
[000c559f]                           dc.b $00
[000c55a0]                           dc.b $00
[000c55a1]                           dc.b $00
[000c55a2]                           dc.b $00
[000c55a3]                           dc.b $00
[000c55a4]                           dc.b $00
[000c55a5]                           dc.b $00
A_3DBUTTON20:
[000c55a6] 0005a4e2                  dc.l A_3Dbutton
[000c55aa]                           dc.w $29f1
[000c55ac]                           dc.w $0178
[000c55ae] 00059318                  dc.l Auo_string
[000c55b2]                           dc.b $00
[000c55b3]                           dc.b $00
[000c55b4]                           dc.b $00
[000c55b5]                           dc.b $00
[000c55b6]                           dc.b $00
[000c55b7]                           dc.b $00
[000c55b8]                           dc.b $00
[000c55b9]                           dc.b $00
[000c55ba]                           dc.b $00
[000c55bb]                           dc.b $00
[000c55bc]                           dc.b $00
[000c55bd]                           dc.b $00
[000c55be]                           dc.b $00
[000c55bf]                           dc.b $00
[000c55c0]                           dc.b $00
[000c55c1]                           dc.b $00
[000c55c2]                           dc.b $00
[000c55c3]                           dc.b $00
[000c55c4]                           dc.b $00
[000c55c5]                           dc.b $00
A_3DBUTTON21:
[000c55c6] 0005a4e2                  dc.l A_3Dbutton
[000c55ca]                           dc.w $29c1
[000c55cc]                           dc.w $0178
[000c55ce] 00059318                  dc.l Auo_string
[000c55d2] 000c4578                  dc.l TEXT_52
[000c55d6]                           dc.b $00
[000c55d7]                           dc.b $00
[000c55d8]                           dc.b $00
[000c55d9]                           dc.b $00
[000c55da]                           dc.b $00
[000c55db]                           dc.b $00
[000c55dc]                           dc.b $00
[000c55dd]                           dc.b $00
[000c55de]                           dc.b $00
[000c55df]                           dc.b $00
[000c55e0]                           dc.b $00
[000c55e1]                           dc.b $00
[000c55e2]                           dc.b $00
[000c55e3]                           dc.b $00
[000c55e4]                           dc.b $00
[000c55e5]                           dc.b $00
A_3DBUTTON22:
[000c55e6] 0005a4e2                  dc.l A_3Dbutton
[000c55ea]                           dc.w $2011
[000c55ec]                           dc.w $9170
[000c55ee] 00059318                  dc.l Auo_string
[000c55f2]                           dc.b $00
[000c55f3]                           dc.b $00
[000c55f4]                           dc.b $00
[000c55f5]                           dc.b $00
[000c55f6]                           dc.b $00
[000c55f7]                           dc.b $00
[000c55f8]                           dc.b $00
[000c55f9]                           dc.b $00
[000c55fa]                           dc.b $00
[000c55fb]                           dc.b $00
[000c55fc]                           dc.b $00
[000c55fd]                           dc.b $00
[000c55fe]                           dc.b $00
[000c55ff]                           dc.b $00
[000c5600]                           dc.b $00
[000c5601]                           dc.b $00
[000c5602]                           dc.b $00
[000c5603]                           dc.b $00
[000c5604]                           dc.b $00
[000c5605]                           dc.b $00
A_ARROWS02:
[000c5606] 0005b212                  dc.l A_arrows
[000c560a]                           dc.w $1301
[000c560c]                           dc.b $00
[000c560d]                           dc.b $01
[000c560e]                           dc.b $00
[000c560f]                           dc.b $00
[000c5610]                           dc.b $00
[000c5611]                           dc.b $00
[000c5612]                           dc.b $00
[000c5613]                           dc.b $00
[000c5614]                           dc.b $00
[000c5615]                           dc.b $00
[000c5616]                           dc.b $00
[000c5617]                           dc.b $00
[000c5618]                           dc.b $00
[000c5619]                           dc.b $00
[000c561a]                           dc.b $00
[000c561b]                           dc.b $00
[000c561c]                           dc.b $00
[000c561d]                           dc.b $00
[000c561e]                           dc.b $00
[000c561f]                           dc.b $00
[000c5620]                           dc.b $00
[000c5621]                           dc.b $00
[000c5622]                           dc.b $00
[000c5623]                           dc.b $00
[000c5624]                           dc.b $00
[000c5625]                           dc.b $00
A_ARROWS03:
[000c5626] 0005b212                  dc.l A_arrows
[000c562a]                           dc.w $2209
[000c562c]                           dc.b $00
[000c562d]                           dc.b $01
[000c562e]                           dc.b $00
[000c562f]                           dc.b $00
[000c5630]                           dc.b $00
[000c5631]                           dc.b $00
[000c5632]                           dc.b $00
[000c5633]                           dc.b $00
[000c5634]                           dc.b $00
[000c5635]                           dc.b $00
[000c5636]                           dc.b $00
[000c5637]                           dc.b $00
[000c5638]                           dc.b $00
[000c5639]                           dc.b $00
[000c563a]                           dc.b $00
[000c563b]                           dc.b $00
[000c563c]                           dc.b $00
[000c563d]                           dc.b $00
[000c563e]                           dc.b $00
[000c563f]                           dc.b $00
[000c5640]                           dc.b $00
[000c5641]                           dc.b $00
[000c5642]                           dc.b $00
[000c5643]                           dc.b $00
[000c5644]                           dc.b $00
[000c5645]                           dc.b $00
A_BOXED01:
[000c5646] 0005e9d2                  dc.l A_boxed
[000c564a]                           dc.w $9000
[000c564c]                           dc.w $ff12
[000c564e] 0005e010                  dc.l Auo_boxed
[000c5652]                           dc.b $00
[000c5653]                           dc.b $00
[000c5654]                           dc.b $00
[000c5655]                           dc.b $00
[000c5656]                           dc.b $00
[000c5657]                           dc.b $00
[000c5658]                           dc.b $00
[000c5659]                           dc.b $00
[000c565a]                           dc.b $00
[000c565b]                           dc.b $00
[000c565c]                           dc.b $00
[000c565d]                           dc.b $00
[000c565e]                           dc.b $00
[000c565f]                           dc.b $00
[000c5660]                           dc.b $00
[000c5661]                           dc.b $00
[000c5662]                           dc.b $00
[000c5663]                           dc.b $00
[000c5664]                           dc.b $00
[000c5665]                           dc.b $00
A_BOXED02:
[000c5666] 0005e9d2                  dc.l A_boxed
[000c566a]                           dc.w $9038
[000c566c]                           dc.w $ff12
[000c566e] 0005e010                  dc.l Auo_boxed
[000c5672]                           dc.b $00
[000c5673]                           dc.b $00
[000c5674]                           dc.b $00
[000c5675]                           dc.b $00
[000c5676]                           dc.b $00
[000c5677]                           dc.b $00
[000c5678]                           dc.b $00
[000c5679]                           dc.b $00
[000c567a]                           dc.b $00
[000c567b]                           dc.b $00
[000c567c]                           dc.b $00
[000c567d]                           dc.b $00
[000c567e]                           dc.b $00
[000c567f]                           dc.b $00
[000c5680]                           dc.b $00
[000c5681]                           dc.b $00
[000c5682]                           dc.b $00
[000c5683]                           dc.b $00
[000c5684]                           dc.b $00
[000c5685]                           dc.b $00
A_BOXED03:
[000c5686] 0005e9d2                  dc.l A_boxed
[000c568a]                           dc.w $9070
[000c568c]                           dc.w $0512
[000c568e] 0005e010                  dc.l Auo_boxed
[000c5692]                           dc.b $00
[000c5693]                           dc.b $00
[000c5694]                           dc.b $00
[000c5695]                           dc.b $00
[000c5696]                           dc.b $00
[000c5697]                           dc.b $00
[000c5698]                           dc.b $00
[000c5699]                           dc.b $00
[000c569a]                           dc.b $00
[000c569b]                           dc.b $00
[000c569c]                           dc.b $00
[000c569d]                           dc.b $00
[000c569e]                           dc.b $00
[000c569f]                           dc.b $00
[000c56a0]                           dc.b $00
[000c56a1]                           dc.b $00
[000c56a2]                           dc.b $00
[000c56a3]                           dc.b $00
[000c56a4]                           dc.b $00
[000c56a5]                           dc.b $00
A_BOXED06:
[000c56a6] 0005e9d2                  dc.l A_boxed
[000c56aa]                           dc.w $9000
[000c56ac]                           dc.w $ff12
[000c56ae] 0005e010                  dc.l Auo_boxed
[000c56b2]                           dc.b $00
[000c56b3]                           dc.b $00
[000c56b4]                           dc.b $00
[000c56b5]                           dc.b $00
[000c56b6]                           dc.b $00
[000c56b7]                           dc.b $00
[000c56b8]                           dc.b $00
[000c56b9]                           dc.b $00
[000c56ba]                           dc.b $00
[000c56bb]                           dc.b $00
[000c56bc]                           dc.b $00
[000c56bd]                           dc.b $00
[000c56be]                           dc.b $00
[000c56bf]                           dc.b $00
[000c56c0]                           dc.b $00
[000c56c1]                           dc.b $00
[000c56c2]                           dc.b $00
[000c56c3]                           dc.b $00
[000c56c4]                           dc.b $00
[000c56c5]                           dc.b $00
A_BOXED07:
[000c56c6] 0005e9d2                  dc.l A_boxed
[000c56ca]                           dc.w $9038
[000c56cc]                           dc.w $0b12
[000c56ce] 0005e010                  dc.l Auo_boxed
[000c56d2]                           dc.b $00
[000c56d3]                           dc.b $00
[000c56d4]                           dc.b $00
[000c56d5]                           dc.b $00
[000c56d6]                           dc.b $00
[000c56d7]                           dc.b $00
[000c56d8]                           dc.b $00
[000c56d9]                           dc.b $00
[000c56da]                           dc.b $00
[000c56db]                           dc.b $00
[000c56dc]                           dc.b $00
[000c56dd]                           dc.b $00
[000c56de]                           dc.b $00
[000c56df]                           dc.b $00
[000c56e0]                           dc.b $00
[000c56e1]                           dc.b $00
[000c56e2]                           dc.b $00
[000c56e3]                           dc.b $00
[000c56e4]                           dc.b $00
[000c56e5]                           dc.b $00
A_BOXED08:
[000c56e6] 0005e9d2                  dc.l A_boxed
[000c56ea]                           dc.w $9070
[000c56ec]                           dc.w $0212
[000c56ee] 0005e010                  dc.l Auo_boxed
[000c56f2]                           dc.b $00
[000c56f3]                           dc.b $00
[000c56f4]                           dc.b $00
[000c56f5]                           dc.b $00
[000c56f6]                           dc.b $00
[000c56f7]                           dc.b $00
[000c56f8]                           dc.b $00
[000c56f9]                           dc.b $00
[000c56fa]                           dc.b $00
[000c56fb]                           dc.b $00
[000c56fc]                           dc.b $00
[000c56fd]                           dc.b $00
[000c56fe]                           dc.b $00
[000c56ff]                           dc.b $00
[000c5700]                           dc.b $00
[000c5701]                           dc.b $00
[000c5702]                           dc.b $00
[000c5703]                           dc.b $00
[000c5704]                           dc.b $00
[000c5705]                           dc.b $00
A_BOXED09:
[000c5706] 0005e9d2                  dc.l A_boxed
[000c570a]                           dc.w $9018
[000c570c]                           dc.w $0812
[000c570e] 0005e010                  dc.l Auo_boxed
[000c5712]                           dc.b $00
[000c5713]                           dc.b $00
[000c5714]                           dc.b $00
[000c5715]                           dc.b $00
[000c5716]                           dc.b $00
[000c5717]                           dc.b $00
[000c5718]                           dc.b $00
[000c5719]                           dc.b $00
[000c571a]                           dc.b $00
[000c571b]                           dc.b $00
[000c571c]                           dc.b $00
[000c571d]                           dc.b $00
[000c571e]                           dc.b $00
[000c571f]                           dc.b $00
[000c5720]                           dc.b $00
[000c5721]                           dc.b $00
[000c5722]                           dc.b $00
[000c5723]                           dc.b $00
[000c5724]                           dc.b $00
[000c5725]                           dc.b $00
A_CHECKBOX01:
[000c5726] 000593fc                  dc.l A_checkbox
[000c572a]                           dc.b $00
[000c572b]                           dc.b $00
[000c572c]                           dc.b $00
[000c572d]                           dc.b $01
[000c572e] 00059318                  dc.l Auo_string
[000c5732] 000c42a2                  dc.l TEXT_13
[000c5736]                           dc.b $00
[000c5737]                           dc.b $00
[000c5738]                           dc.b $00
[000c5739]                           dc.b $00
[000c573a]                           dc.b $00
[000c573b]                           dc.b $00
[000c573c]                           dc.b $00
[000c573d]                           dc.b $00
[000c573e]                           dc.b $00
[000c573f]                           dc.b $00
[000c5740]                           dc.b $00
[000c5741]                           dc.b $00
[000c5742]                           dc.b $00
[000c5743]                           dc.b $00
[000c5744]                           dc.b $00
[000c5745]                           dc.b $00
A_CHECKBOX02:
[000c5746] 000593fc                  dc.l A_checkbox
[000c574a]                           dc.b $00
[000c574b]                           dc.b $00
[000c574c]                           dc.b $00
[000c574d]                           dc.b $01
[000c574e] 00059318                  dc.l Auo_string
[000c5752] 000c41e9                  dc.l TEXT_02
[000c5756]                           dc.b $00
[000c5757]                           dc.b $00
[000c5758]                           dc.b $00
[000c5759]                           dc.b $00
[000c575a]                           dc.b $00
[000c575b]                           dc.b $00
[000c575c]                           dc.b $00
[000c575d]                           dc.b $00
[000c575e]                           dc.b $00
[000c575f]                           dc.b $00
[000c5760]                           dc.b $00
[000c5761]                           dc.b $00
[000c5762]                           dc.b $00
[000c5763]                           dc.b $00
[000c5764]                           dc.b $00
[000c5765]                           dc.b $00
A_CHECKBOX03:
[000c5766] 000593fc                  dc.l A_checkbox
[000c576a]                           dc.b $00
[000c576b]                           dc.b $00
[000c576c]                           dc.b $00
[000c576d]                           dc.b $01
[000c576e] 00059318                  dc.l Auo_string
[000c5772] 000c4568                  dc.l TEXT_50
[000c5776]                           dc.b $00
[000c5777]                           dc.b $00
[000c5778]                           dc.b $00
[000c5779]                           dc.b $00
[000c577a]                           dc.b $00
[000c577b]                           dc.b $00
[000c577c]                           dc.b $00
[000c577d]                           dc.b $00
[000c577e]                           dc.b $00
[000c577f]                           dc.b $00
[000c5780]                           dc.b $00
[000c5781]                           dc.b $00
[000c5782]                           dc.b $00
[000c5783]                           dc.b $00
[000c5784]                           dc.b $00
[000c5785]                           dc.b $00
A_CHECKBOX04:
[000c5786] 000593fc                  dc.l A_checkbox
[000c578a]                           dc.b $00
[000c578b]                           dc.b $00
[000c578c]                           dc.b $00
[000c578d]                           dc.b $01
[000c578e] 00059318                  dc.l Auo_string
[000c5792] 000c460e                  dc.l TEXT_64
[000c5796]                           dc.b $00
[000c5797]                           dc.b $00
[000c5798]                           dc.b $00
[000c5799]                           dc.b $00
[000c579a]                           dc.b $00
[000c579b]                           dc.b $00
[000c579c]                           dc.b $00
[000c579d]                           dc.b $00
[000c579e]                           dc.b $00
[000c579f]                           dc.b $00
[000c57a0]                           dc.b $00
[000c57a1]                           dc.b $00
[000c57a2]                           dc.b $00
[000c57a3]                           dc.b $00
[000c57a4]                           dc.b $00
[000c57a5]                           dc.b $00
A_CHECKBOX05:
[000c57a6] 000593fc                  dc.l A_checkbox
[000c57aa]                           dc.b $00
[000c57ab]                           dc.b $00
[000c57ac]                           dc.b $00
[000c57ad]                           dc.b $01
[000c57ae] 00059318                  dc.l Auo_string
[000c57b2] 000c41d3                  dc.l TEXT_01
[000c57b6]                           dc.b $00
[000c57b7]                           dc.b $00
[000c57b8]                           dc.b $00
[000c57b9]                           dc.b $00
[000c57ba]                           dc.b $00
[000c57bb]                           dc.b $00
[000c57bc]                           dc.b $00
[000c57bd]                           dc.b $00
[000c57be]                           dc.b $00
[000c57bf]                           dc.b $00
[000c57c0]                           dc.b $00
[000c57c1]                           dc.b $00
[000c57c2]                           dc.b $00
[000c57c3]                           dc.b $00
[000c57c4]                           dc.b $00
[000c57c5]                           dc.b $00
A_CHECKBOX06:
[000c57c6] 000593fc                  dc.l A_checkbox
[000c57ca]                           dc.b $00
[000c57cb]                           dc.b $00
[000c57cc]                           dc.b $00
[000c57cd]                           dc.b $01
[000c57ce] 00059318                  dc.l Auo_string
[000c57d2] 000c459f                  dc.l TEXT_56
[000c57d6]                           dc.b $00
[000c57d7]                           dc.b $00
[000c57d8]                           dc.b $00
[000c57d9]                           dc.b $00
[000c57da]                           dc.b $00
[000c57db]                           dc.b $00
[000c57dc]                           dc.b $00
[000c57dd]                           dc.b $00
[000c57de]                           dc.b $00
[000c57df]                           dc.b $00
[000c57e0]                           dc.b $00
[000c57e1]                           dc.b $00
[000c57e2]                           dc.b $00
[000c57e3]                           dc.b $00
[000c57e4]                           dc.b $00
[000c57e5]                           dc.b $00
A_CHECKBOX07:
[000c57e6] 000593fc                  dc.l A_checkbox
[000c57ea]                           dc.b $00
[000c57eb]                           dc.b $00
[000c57ec]                           dc.b $00
[000c57ed]                           dc.b $01
[000c57ee] 00059318                  dc.l Auo_string
[000c57f2] 000c433d                  dc.l TEXT_22
[000c57f6]                           dc.b $00
[000c57f7]                           dc.b $00
[000c57f8]                           dc.b $00
[000c57f9]                           dc.b $00
[000c57fa]                           dc.b $00
[000c57fb]                           dc.b $00
[000c57fc]                           dc.b $00
[000c57fd]                           dc.b $00
[000c57fe]                           dc.b $00
[000c57ff]                           dc.b $00
[000c5800]                           dc.b $00
[000c5801]                           dc.b $00
[000c5802]                           dc.b $00
[000c5803]                           dc.b $00
[000c5804]                           dc.b $00
[000c5805]                           dc.b $00
A_CHECKBOX08:
[000c5806] 000593fc                  dc.l A_checkbox
[000c580a]                           dc.b $00
[000c580b]                           dc.b $00
[000c580c]                           dc.b $00
[000c580d]                           dc.b $01
[000c580e] 00059318                  dc.l Auo_string
[000c5812] 000c44d9                  dc.l TEXT_41
[000c5816]                           dc.b $00
[000c5817]                           dc.b $00
[000c5818]                           dc.b $00
[000c5819]                           dc.b $00
[000c581a]                           dc.b $00
[000c581b]                           dc.b $00
[000c581c]                           dc.b $00
[000c581d]                           dc.b $00
[000c581e]                           dc.b $00
[000c581f]                           dc.b $00
[000c5820]                           dc.b $00
[000c5821]                           dc.b $00
[000c5822]                           dc.b $00
[000c5823]                           dc.b $00
[000c5824]                           dc.b $00
[000c5825]                           dc.b $00
A_CYCLE01:
[000c5826] 0005bd1e                  dc.l A_cycle
[000c582a]                           dc.b $00
[000c582b]                           dc.b $01
[000c582c]                           dc.w $0290
[000c582e] 0005c2fa                  dc.l Auo_cycle
[000c5832] 000c4211                  dc.l TEXT_04
[000c5836]                           dc.b $00
[000c5837]                           dc.b $00
[000c5838]                           dc.b $00
[000c5839]                           dc.b $00
[000c583a]                           dc.b $00
[000c583b]                           dc.b $00
[000c583c]                           dc.b $00
[000c583d]                           dc.b $00
[000c583e]                           dc.b $00
[000c583f]                           dc.b $00
[000c5840]                           dc.b $00
[000c5841]                           dc.b $00
[000c5842]                           dc.b $00
[000c5843]                           dc.b $00
[000c5844]                           dc.b $00
[000c5845]                           dc.b $00
A_CYCLE02:
[000c5846] 0005bd1e                  dc.l A_cycle
[000c584a]                           dc.b $00
[000c584b]                           dc.b $01
[000c584c]                           dc.w $0290
[000c584e] 0005c2fa                  dc.l Auo_cycle
[000c5852] 000c4505                  dc.l TEXT_45
[000c5856]                           dc.b $00
[000c5857]                           dc.b $00
[000c5858]                           dc.b $00
[000c5859]                           dc.b $00
[000c585a]                           dc.b $00
[000c585b]                           dc.b $00
[000c585c]                           dc.b $00
[000c585d]                           dc.b $00
[000c585e]                           dc.b $00
[000c585f]                           dc.b $00
[000c5860]                           dc.b $00
[000c5861]                           dc.b $00
[000c5862]                           dc.b $00
[000c5863]                           dc.b $00
[000c5864]                           dc.b $00
[000c5865]                           dc.b $00
A_FTEXT02:
[000c5866] 0005b6f4                  dc.l A_ftext
[000c586a]                           dc.b $00
[000c586b]                           dc.b $01
[000c586c]                           dc.b $00
[000c586d]                           dc.b $0d
[000c586e] 0005bae4                  dc.l Auo_ftext
[000c5872] 000c4353                  dc.l TEXT_24
[000c5876]                           dc.b $00
[000c5877]                           dc.b $00
[000c5878]                           dc.b $00
[000c5879]                           dc.b $00
[000c587a]                           dc.b $00
[000c587b]                           dc.b $00
[000c587c]                           dc.b $00
[000c587d]                           dc.b $00
[000c587e]                           dc.b $00
[000c587f]                           dc.b $00
[000c5880]                           dc.b $00
[000c5881]                           dc.b $00
[000c5882]                           dc.b $00
[000c5883]                           dc.b $00
[000c5884]                           dc.b $00
[000c5885]                           dc.b $00
A_INNERFRAME02:
[000c5886] 00059f9c                  dc.l A_innerframe
[000c588a]                           dc.w $1000
[000c588c]                           dc.w $8f19
[000c588e] 00059318                  dc.l Auo_string
[000c5892] 000c4255                  dc.l TEXT_06
[000c5896]                           dc.b $00
[000c5897]                           dc.b $00
[000c5898]                           dc.b $00
[000c5899]                           dc.b $00
[000c589a]                           dc.b $00
[000c589b]                           dc.b $00
[000c589c]                           dc.b $00
[000c589d]                           dc.b $00
[000c589e]                           dc.b $00
[000c589f]                           dc.b $00
[000c58a0]                           dc.b $00
[000c58a1]                           dc.b $00
[000c58a2]                           dc.b $00
[000c58a3]                           dc.b $00
[000c58a4]                           dc.b $00
[000c58a5]                           dc.b $00
A_INNERFRAME03:
[000c58a6] 00059f9c                  dc.l A_innerframe
[000c58aa]                           dc.w $1000
[000c58ac]                           dc.w $8f19
[000c58ae] 00059318                  dc.l Auo_string
[000c58b2] 000c4426                  dc.l TEXT_31
[000c58b6]                           dc.b $00
[000c58b7]                           dc.b $00
[000c58b8]                           dc.b $00
[000c58b9]                           dc.b $00
[000c58ba]                           dc.b $00
[000c58bb]                           dc.b $00
[000c58bc]                           dc.b $00
[000c58bd]                           dc.b $00
[000c58be]                           dc.b $00
[000c58bf]                           dc.b $00
[000c58c0]                           dc.b $00
[000c58c1]                           dc.b $00
[000c58c2]                           dc.b $00
[000c58c3]                           dc.b $00
[000c58c4]                           dc.b $00
[000c58c5]                           dc.b $00
A_INNERFRAME04:
[000c58c6] 00059f9c                  dc.l A_innerframe
[000c58ca]                           dc.w $1000
[000c58cc]                           dc.w $8f19
[000c58ce] 00059318                  dc.l Auo_string
[000c58d2]                           dc.b $00
[000c58d3]                           dc.b $00
[000c58d4]                           dc.b $00
[000c58d5]                           dc.b $00
[000c58d6]                           dc.b $00
[000c58d7]                           dc.b $00
[000c58d8]                           dc.b $00
[000c58d9]                           dc.b $00
[000c58da]                           dc.b $00
[000c58db]                           dc.b $00
[000c58dc]                           dc.b $00
[000c58dd]                           dc.b $00
[000c58de]                           dc.b $00
[000c58df]                           dc.b $00
[000c58e0]                           dc.b $00
[000c58e1]                           dc.b $00
[000c58e2]                           dc.b $00
[000c58e3]                           dc.b $00
[000c58e4]                           dc.b $00
[000c58e5]                           dc.b $00
A_INNERFRAME06:
[000c58e6] 00059f9c                  dc.l A_innerframe
[000c58ea]                           dc.w $1000
[000c58ec]                           dc.w $8f19
[000c58ee] 00059318                  dc.l Auo_string
[000c58f2] 000c44e1                  dc.l TEXT_42
[000c58f6]                           dc.b $00
[000c58f7]                           dc.b $00
[000c58f8]                           dc.b $00
[000c58f9]                           dc.b $00
[000c58fa]                           dc.b $00
[000c58fb]                           dc.b $00
[000c58fc]                           dc.b $00
[000c58fd]                           dc.b $00
[000c58fe]                           dc.b $00
[000c58ff]                           dc.b $00
[000c5900]                           dc.b $00
[000c5901]                           dc.b $00
[000c5902]                           dc.b $00
[000c5903]                           dc.b $00
[000c5904]                           dc.b $00
[000c5905]                           dc.b $00
A_INNERFRAME08:
[000c5906] 00059f9c                  dc.l A_innerframe
[000c590a]                           dc.w $1000
[000c590c]                           dc.w $8f19
[000c590e] 00059318                  dc.l Auo_string
[000c5912] 000c42a8                  dc.l TEXT_14
[000c5916]                           dc.b $00
[000c5917]                           dc.b $00
[000c5918]                           dc.b $00
[000c5919]                           dc.b $00
[000c591a]                           dc.b $00
[000c591b]                           dc.b $00
[000c591c]                           dc.b $00
[000c591d]                           dc.b $00
[000c591e]                           dc.b $00
[000c591f]                           dc.b $00
[000c5920]                           dc.b $00
[000c5921]                           dc.b $00
[000c5922]                           dc.b $00
[000c5923]                           dc.b $00
[000c5924]                           dc.b $00
[000c5925]                           dc.b $00
_C4_IC_COPY:
[000c5926]                           dc.b $00
[000c5927]                           dc.b $04
[000c5928] 000c4b5c                  dc.l $000c4b5c ; no symbol found
[000c592c] 000c4bdc                  dc.l DATAS_06
[000c5930] 000c4c02                  dc.l $000c4c02 ; no symbol found
[000c5934] 000c4c82                  dc.l DATAS_08
[000c5938]                           dc.b $00
[000c5939]                           dc.b $00
[000c593a]                           dc.b $00
[000c593b]                           dc.b $00
_MSK_IC_COPY:
[000c593c]                           dc.b $00
[000c593d]                           dc.b $00
[000c593e]                           dc.w $7e00
[000c5940]                           dc.w $7f00
[000c5942]                           dc.w $7f80
[000c5944]                           dc.w $7f80
[000c5946]                           dc.w $7f80
[000c5948]                           dc.w $7ff8
[000c594a]                           dc.w $7ffc
[000c594c]                           dc.w $7ffe
[000c594e]                           dc.w $7ffe
[000c5950]                           dc.w $01fe
[000c5952]                           dc.w $01fe
[000c5954]                           dc.w $01fe
[000c5956]                           dc.w $01fe
[000c5958]                           dc.w $01fe
[000c595a]                           dc.b $00
[000c595b]                           dc.b $00
_DAT_IC_COPY:
[000c595c]                           dc.b $00
[000c595d]                           dc.b $00
[000c595e]                           dc.w $7e00
[000c5960]                           dc.w $4300
[000c5962]                           dc.w $4280
[000c5964]                           dc.w $4380
[000c5966]                           dc.w $4080
[000c5968]                           dc.w $41f8
[000c596a]                           dc.w $410c
[000c596c]                           dc.w $410a
[000c596e]                           dc.w $7f0e
[000c5970]                           dc.w $0102
[000c5972]                           dc.w $0102
[000c5974]                           dc.w $0102
[000c5976]                           dc.w $0102
[000c5978]                           dc.w $01fe
[000c597a]                           dc.b $00
[000c597b]                           dc.b $00
IC_COPY:
[000c597c] 000c593c                  dc.l _MSK_IC_COPY
[000c5980] 000c595c                  dc.l _DAT_IC_COPY
[000c5984] 000c41b6                  dc.l TEXT_002
[000c5988]                           dc.w $1000
[000c598a]                           dc.b $00
[000c598b]                           dc.b $0a
[000c598c]                           dc.b $00
[000c598d]                           dc.b $06
[000c598e]                           dc.b $00
[000c598f]                           dc.b $00
[000c5990]                           dc.b $00
[000c5991]                           dc.b $00
[000c5992]                           dc.b $00
[000c5993]                           dc.b $10
[000c5994]                           dc.b $00
[000c5995]                           dc.b $10
[000c5996]                           dc.b $00
[000c5997]                           dc.b $00
[000c5998]                           dc.b $00
[000c5999]                           dc.b $00
[000c599a]                           dc.b $00
[000c599b]                           dc.b $00
[000c599c]                           dc.b $00
[000c599d]                           dc.b $00
[000c599e] 000c5926                  dc.l _C4_IC_COPY
_C4_IC_CUT:
[000c59a2]                           dc.b $00
[000c59a3]                           dc.b $04
[000c59a4] 000c4ca8                  dc.l $000c4ca8 ; no symbol found
[000c59a8] 000c4d28                  dc.l DATAS_10
[000c59ac] 000c4d4e                  dc.l $000c4d4e ; no symbol found
[000c59b0] 000c4dce                  dc.l DATAS_12
[000c59b4]                           dc.b $00
[000c59b5]                           dc.b $00
[000c59b6]                           dc.b $00
[000c59b7]                           dc.b $00
_MSK_IC_CUT:
[000c59b8]                           dc.w $3ffe
[000c59ba]                           dc.w $3ffe
[000c59bc]                           dc.w $3ffe
[000c59be]                           dc.w $3ffe
[000c59c0]                           dc.w $3ffe
[000c59c2]                           dc.w $3ffe
[000c59c4]                           dc.w $3ffe
[000c59c6]                           dc.w $3ffe
[000c59c8]                           dc.w $3ffe
[000c59ca]                           dc.w $3ffe
[000c59cc]                           dc.w $3ffe
[000c59ce]                           dc.w $3ffe
[000c59d0]                           dc.w $3ffe
[000c59d2]                           dc.w $3ffe
[000c59d4]                           dc.w $3ffe
[000c59d6]                           dc.w $3ffe
_DAT_IC_CUT:
[000c59d8]                           dc.w $3ffe
[000c59da]                           dc.b '""""""#b!B!'
[000c59e5]                           dc.b $c2
[000c59e6]                           dc.w $2082
[000c59e8]                           dc.w $21c2
[000c59ea]                           dc.b $27,'r)J)J)J)2&'
[000c59f5]                           dc.b $02
[000c59f6]                           dc.w $3ffe
IC_CUT:
[000c59f8] 000c59b8                  dc.l _MSK_IC_CUT
[000c59fc] 000c59d8                  dc.l _DAT_IC_CUT
[000c5a00] 000c41b6                  dc.l TEXT_002
[000c5a04]                           dc.w $1000
[000c5a06]                           dc.b $00
[000c5a07]                           dc.b $0a
[000c5a08]                           dc.b $00
[000c5a09]                           dc.b $06
[000c5a0a]                           dc.b $00
[000c5a0b]                           dc.b $00
[000c5a0c]                           dc.b $00
[000c5a0d]                           dc.b $00
[000c5a0e]                           dc.b $00
[000c5a0f]                           dc.b $10
[000c5a10]                           dc.b $00
[000c5a11]                           dc.b $10
[000c5a12]                           dc.b $00
[000c5a13]                           dc.b $00
[000c5a14]                           dc.b $00
[000c5a15]                           dc.b $00
[000c5a16]                           dc.b $00
[000c5a17]                           dc.b $00
[000c5a18]                           dc.b $00
[000c5a19]                           dc.b $00
[000c5a1a] 000c59a2                  dc.l _C4_IC_CUT
_C4_IC_NEW:
[000c5a1e]                           dc.b $00
[000c5a1f]                           dc.b $04
[000c5a20] 000c4df4                  dc.l $000c4df4 ; no symbol found
[000c5a24] 000c4e74                  dc.l DATAS_14
[000c5a28] 000c4e9a                  dc.l $000c4e9a ; no symbol found
[000c5a2c] 000c4f1a                  dc.l DATAS_16
[000c5a30]                           dc.b $00
[000c5a31]                           dc.b $00
[000c5a32]                           dc.b $00
[000c5a33]                           dc.b $00
_MSK_IC_NEW:
[000c5a34]                           dc.b $00
[000c5a35]                           dc.b $00
[000c5a36]                           dc.w $7ff8
[000c5a38]                           dc.w $7ffc
[000c5a3a]                           dc.w $7ffe
[000c5a3c]                           dc.w $7ffe
[000c5a3e]                           dc.w $7ffe
[000c5a40]                           dc.w $7ffe
[000c5a42]                           dc.w $7ffe
[000c5a44]                           dc.w $7ffe
[000c5a46]                           dc.w $7ffe
[000c5a48]                           dc.w $7ffe
[000c5a4a]                           dc.w $7ffe
[000c5a4c]                           dc.w $7ffe
[000c5a4e]                           dc.w $7ffe
[000c5a50]                           dc.w $7ffe
[000c5a52]                           dc.b $00
[000c5a53]                           dc.b $00
_DAT_IC_NEW:
[000c5a54]                           dc.b $00
[000c5a55]                           dc.b $00
[000c5a56]                           dc.w $7ff8
[000c5a58]                           dc.w $4014
[000c5a5a]                           dc.w $4012
[000c5a5c]                           dc.w $401e
[000c5a5e]                           dc.w $4002
[000c5a60]                           dc.w $4002
[000c5a62]                           dc.w $4002
[000c5a64]                           dc.w $4002
[000c5a66]                           dc.w $4002
[000c5a68]                           dc.w $4002
[000c5a6a]                           dc.w $4002
[000c5a6c]                           dc.w $4002
[000c5a6e]                           dc.w $4002
[000c5a70]                           dc.w $7ffe
[000c5a72]                           dc.b $00
[000c5a73]                           dc.b $00
IC_NEW:
[000c5a74] 000c5a34                  dc.l _MSK_IC_NEW
[000c5a78] 000c5a54                  dc.l _DAT_IC_NEW
[000c5a7c] 000c41b6                  dc.l TEXT_002
[000c5a80]                           dc.w $1000
[000c5a82]                           dc.b $00
[000c5a83]                           dc.b $0a
[000c5a84]                           dc.b $00
[000c5a85]                           dc.b $06
[000c5a86]                           dc.b $00
[000c5a87]                           dc.b $00
[000c5a88]                           dc.b $00
[000c5a89]                           dc.b $00
[000c5a8a]                           dc.b $00
[000c5a8b]                           dc.b $10
[000c5a8c]                           dc.b $00
[000c5a8d]                           dc.b $10
[000c5a8e]                           dc.b $00
[000c5a8f]                           dc.b $00
[000c5a90]                           dc.b $00
[000c5a91]                           dc.b $00
[000c5a92]                           dc.b $00
[000c5a93]                           dc.b $00
[000c5a94]                           dc.b $00
[000c5a95]                           dc.b $00
[000c5a96] 000c5a1e                  dc.l _C4_IC_NEW
_C4_IC_OPEN:
[000c5a9a]                           dc.b $00
[000c5a9b]                           dc.b $04
[000c5a9c] 000c4f40                  dc.l $000c4f40 ; no symbol found
[000c5aa0] 000c4fc0                  dc.l DATAS_18
[000c5aa4] 000c4fe6                  dc.l $000c4fe6 ; no symbol found
[000c5aa8] 000c5066                  dc.l DATAS_20
[000c5aac]                           dc.b $00
[000c5aad]                           dc.b $00
[000c5aae]                           dc.b $00
[000c5aaf]                           dc.b $00
_MSK_IC_OPEN:
[000c5ab0]                           dc.b $00
[000c5ab1]                           dc.b $00
[000c5ab2]                           dc.w $01f0
[000c5ab4]                           dc.w $03f8
[000c5ab6]                           dc.w $03ff
[000c5ab8]                           dc.w $3fff
[000c5aba]                           dc.w $7fff
[000c5abc]                           dc.w $7fff
[000c5abe]                           dc.w $7fff
[000c5ac0]                           dc.w $7ffe
[000c5ac2]                           dc.w $7ffe
[000c5ac4]                           dc.w $7ffe
[000c5ac6]                           dc.w $7ffc
[000c5ac8]                           dc.w $7ff8
[000c5aca]                           dc.w $7ff0
[000c5acc]                           dc.w $7fe0
[000c5ace]                           dc.b $00
[000c5acf]                           dc.b $00
_DAT_IC_OPEN:
[000c5ad0]                           dc.b $00
[000c5ad1]                           dc.b $00
[000c5ad2]                           dc.b $00
[000c5ad3]                           dc.b $00
[000c5ad4]                           dc.b $00
[000c5ad5]                           dc.b $e0
[000c5ad6]                           dc.w $0110
[000c5ad8]                           dc.w $3c0a
[000c5ada]                           dc.w $4206
[000c5adc]                           dc.w $41ce
[000c5ade]                           dc.b '@ @ C'
[000c5ae3]                           dc.b $fc
[000c5ae4]                           dc.w $4402
[000c5ae6]                           dc.w $4804
[000c5ae8]                           dc.w $5008
[000c5aea]                           dc.w $6010
[000c5aec]                           dc.w $7fe0
[000c5aee]                           dc.b $00
[000c5aef]                           dc.b $00
IC_OPEN:
[000c5af0] 000c5ab0                  dc.l _MSK_IC_OPEN
[000c5af4] 000c5ad0                  dc.l _DAT_IC_OPEN
[000c5af8] 000c41b6                  dc.l TEXT_002
[000c5afc]                           dc.w $1000
[000c5afe]                           dc.b $00
[000c5aff]                           dc.b $0a
[000c5b00]                           dc.b $00
[000c5b01]                           dc.b $06
[000c5b02]                           dc.b $00
[000c5b03]                           dc.b $00
[000c5b04]                           dc.b $00
[000c5b05]                           dc.b $00
[000c5b06]                           dc.b $00
[000c5b07]                           dc.b $10
[000c5b08]                           dc.b $00
[000c5b09]                           dc.b $10
[000c5b0a]                           dc.b $00
[000c5b0b]                           dc.b $00
[000c5b0c]                           dc.b $00
[000c5b0d]                           dc.b $00
[000c5b0e]                           dc.b $00
[000c5b0f]                           dc.b $00
[000c5b10]                           dc.b $00
[000c5b11]                           dc.b $00
[000c5b12] 000c5a9a                  dc.l _C4_IC_OPEN
_C4_IC_PASTE:
[000c5b16]                           dc.b $00
[000c5b17]                           dc.b $04
[000c5b18] 000c508c                  dc.l $000c508c ; no symbol found
[000c5b1c] 000c510c                  dc.l DATAS_22
[000c5b20] 000c5132                  dc.l $000c5132 ; no symbol found
[000c5b24] 000c51b2                  dc.l DATAS_24
[000c5b28]                           dc.b $00
[000c5b29]                           dc.b $00
[000c5b2a]                           dc.b $00
[000c5b2b]                           dc.b $00
_MSK_IC_PASTE:
[000c5b2c]                           dc.w $03c0
[000c5b2e]                           dc.w $3ffc
[000c5b30]                           dc.w $7ffe
[000c5b32]                           dc.w $7ffe
[000c5b34]                           dc.w $7ffe
[000c5b36]                           dc.w $7ffe
[000c5b38]                           dc.w $7ffe
[000c5b3a]                           dc.w $7ffe
[000c5b3c]                           dc.w $7ffe
[000c5b3e]                           dc.w $7ffe
[000c5b40]                           dc.w $7ffe
[000c5b42]                           dc.w $7ffe
[000c5b44]                           dc.w $7ffe
[000c5b46]                           dc.w $3ffe
[000c5b48]                           dc.b $00
[000c5b49]                           dc.b $fe
[000c5b4a]                           dc.b $00
[000c5b4b]                           dc.b $00
_DAT_IC_PASTE:
[000c5b4c]                           dc.w $03c0
[000c5b4e]                           dc.w $3e7c
[000c5b50]                           dc.w $45a2
[000c5b52]                           dc.w $47e2
[000c5b54]                           dc.w $4002
[000c5b56]                           dc.w $4002
[000c5b58]                           dc.w $4002
[000c5b5a]                           dc.w $4002
[000c5b5c]                           dc.w $40fa
[000c5b5e]                           dc.w $408e
[000c5b60]                           dc.w $408a
[000c5b62]                           dc.w $408e
[000c5b64]                           dc.w $4082
[000c5b66]                           dc.w $3f82
[000c5b68]                           dc.b $00
[000c5b69]                           dc.b $fe
[000c5b6a]                           dc.b $00
[000c5b6b]                           dc.b $00
IC_PASTE:
[000c5b6c] 000c5b2c                  dc.l _MSK_IC_PASTE
[000c5b70] 000c5b4c                  dc.l _DAT_IC_PASTE
[000c5b74] 000c41b6                  dc.l TEXT_002
[000c5b78]                           dc.w $1000
[000c5b7a]                           dc.b $00
[000c5b7b]                           dc.b $0a
[000c5b7c]                           dc.b $00
[000c5b7d]                           dc.b $06
[000c5b7e]                           dc.b $00
[000c5b7f]                           dc.b $00
[000c5b80]                           dc.b $00
[000c5b81]                           dc.b $00
[000c5b82]                           dc.b $00
[000c5b83]                           dc.b $10
[000c5b84]                           dc.b $00
[000c5b85]                           dc.b $10
[000c5b86]                           dc.b $00
[000c5b87]                           dc.b $00
[000c5b88]                           dc.b $00
[000c5b89]                           dc.b $00
[000c5b8a]                           dc.b $00
[000c5b8b]                           dc.b $00
[000c5b8c]                           dc.b $00
[000c5b8d]                           dc.b $00
[000c5b8e] 000c5b16                  dc.l _C4_IC_PASTE
_C4_IC_SAVE:
[000c5b92]                           dc.b $00
[000c5b93]                           dc.b $04
[000c5b94] 000c51d8                  dc.l $000c51d8 ; no symbol found
[000c5b98] 000c5258                  dc.l DATAS_26
[000c5b9c] 000c527e                  dc.l $000c527e ; no symbol found
[000c5ba0] 000c52fe                  dc.l DATAS_28
[000c5ba4]                           dc.b $00
[000c5ba5]                           dc.b $00
[000c5ba6]                           dc.b $00
[000c5ba7]                           dc.b $00
_MSK_IC_SAVE:
[000c5ba8]                           dc.b $00
[000c5ba9]                           dc.b $00
[000c5baa]                           dc.w $7ffe
[000c5bac]                           dc.w $7ffe
[000c5bae]                           dc.w $7ffe
[000c5bb0]                           dc.w $7ffe
[000c5bb2]                           dc.w $7ffe
[000c5bb4]                           dc.w $7ffe
[000c5bb6]                           dc.w $7ffe
[000c5bb8]                           dc.w $7ffe
[000c5bba]                           dc.w $7ffe
[000c5bbc]                           dc.w $7ffe
[000c5bbe]                           dc.w $7ffe
[000c5bc0]                           dc.w $7ffe
[000c5bc2]                           dc.w $3ffe
[000c5bc4]                           dc.w $1ffe
[000c5bc6]                           dc.b $00
[000c5bc7]                           dc.b $00
_DAT_IC_SAVE:
[000c5bc8]                           dc.b $00
[000c5bc9]                           dc.b $00
[000c5bca]                           dc.w $7ffe
[000c5bcc]                           dc.w $500a
[000c5bce]                           dc.w $53ca
[000c5bd0]                           dc.b 'P',$0a,'S',$0a,'P',$0a,'_'
[000c5bd7]                           dc.b $fa
[000c5bd8]                           dc.w $4002
[000c5bda]                           dc.w $4002
[000c5bdc]                           dc.w $47f2
[000c5bde]                           dc.b 'DrDr$r'
[000c5be4]                           dc.w $1ffe
[000c5be6]                           dc.b $00
[000c5be7]                           dc.b $00
IC_SAVE:
[000c5be8] 000c5ba8                  dc.l _MSK_IC_SAVE
[000c5bec] 000c5bc8                  dc.l _DAT_IC_SAVE
[000c5bf0] 000c41b6                  dc.l TEXT_002
[000c5bf4]                           dc.w $1000
[000c5bf6]                           dc.b $00
[000c5bf7]                           dc.b $0a
[000c5bf8]                           dc.b $00
[000c5bf9]                           dc.b $06
[000c5bfa]                           dc.b $00
[000c5bfb]                           dc.b $00
[000c5bfc]                           dc.b $00
[000c5bfd]                           dc.b $00
[000c5bfe]                           dc.b $00
[000c5bff]                           dc.b $10
[000c5c00]                           dc.b $00
[000c5c01]                           dc.b $10
[000c5c02]                           dc.b $00
[000c5c03]                           dc.b $00
[000c5c04]                           dc.b $00
[000c5c05]                           dc.b $00
[000c5c06]                           dc.b $00
[000c5c07]                           dc.b $00
[000c5c08]                           dc.b $00
[000c5c09]                           dc.b $00
[000c5c0a] 000c5b92                  dc.l _C4_IC_SAVE
_C4_IC_UNDO:
[000c5c0e]                           dc.b $00
[000c5c0f]                           dc.b $04
[000c5c10] 000c5324                  dc.l $000c5324 ; no symbol found
[000c5c14] 000c53a4                  dc.l DATAS_34
[000c5c18] 000c53ca                  dc.l $000c53ca ; no symbol found
[000c5c1c] 000c544a                  dc.l DATAS_36
[000c5c20]                           dc.b $00
[000c5c21]                           dc.b $00
[000c5c22]                           dc.b $00
[000c5c23]                           dc.b $00
_MSK_IC_UNDO:
[000c5c24]                           dc.b $00
[000c5c25]                           dc.b $00
[000c5c26]                           dc.w $7ffe
[000c5c28]                           dc.w $7ffe
[000c5c2a]                           dc.w $7ffe
[000c5c2c]                           dc.w $7ffe
[000c5c2e]                           dc.w $7ffe
[000c5c30]                           dc.w $7ffe
[000c5c32]                           dc.w $7ffe
[000c5c34]                           dc.w $7ffe
[000c5c36]                           dc.w $7ffe
[000c5c38]                           dc.w $7ffe
[000c5c3a]                           dc.w $7ffe
[000c5c3c]                           dc.w $7ffe
[000c5c3e]                           dc.w $7ffe
[000c5c40]                           dc.w $7ffe
[000c5c42]                           dc.b $00
[000c5c43]                           dc.b $00
_DAT_IC_UNDO:
[000c5c44]                           dc.b $00
[000c5c45]                           dc.b $00
[000c5c46]                           dc.w $7ffe
[000c5c48]                           dc.w $4002
[000c5c4a]                           dc.w $4202
[000c5c4c]                           dc.w $4602
[000c5c4e]                           dc.w $4fe2
[000c5c50]                           dc.w $4612
[000c5c52]                           dc.b 'B',$0a,'@',$0a,'@',$0a,'@',$0a,'@'
[000c5c5b]                           dc.b $12
[000c5c5c]                           dc.w $41e2
[000c5c5e]                           dc.w $4002
[000c5c60]                           dc.w $7ffe
[000c5c62]                           dc.b $00
[000c5c63]                           dc.b $00
IC_UNDO:
[000c5c64] 000c5c24                  dc.l _MSK_IC_UNDO
[000c5c68] 000c5c44                  dc.l _DAT_IC_UNDO
[000c5c6c] 000c41b6                  dc.l TEXT_002
[000c5c70]                           dc.w $1000
[000c5c72]                           dc.b $00
[000c5c73]                           dc.b $0a
[000c5c74]                           dc.b $00
[000c5c75]                           dc.b $06
[000c5c76]                           dc.b $00
[000c5c77]                           dc.b $00
[000c5c78]                           dc.b $00
[000c5c79]                           dc.b $00
[000c5c7a]                           dc.b $00
[000c5c7b]                           dc.b $10
[000c5c7c]                           dc.b $00
[000c5c7d]                           dc.b $10
[000c5c7e]                           dc.b $00
[000c5c7f]                           dc.b $00
[000c5c80]                           dc.b $00
[000c5c81]                           dc.b $00
[000c5c82]                           dc.b $00
[000c5c83]                           dc.b $00
[000c5c84]                           dc.b $00
[000c5c85]                           dc.b $00
[000c5c86] 000c5c0e                  dc.l _C4_IC_UNDO
_C4__ED_ICON:
[000c5c8a]                           dc.b $00
[000c5c8b]                           dc.b $04
[000c5c8c] 000c4650                  dc.l $000c4650 ; no symbol found
[000c5c90] 000c4850                  dc.l DATAS_02
[000c5c94] 000c48d6                  dc.l $000c48d6 ; no symbol found
[000c5c98] 000c4ad6                  dc.l DATAS_04
[000c5c9c]                           dc.b $00
[000c5c9d]                           dc.b $00
[000c5c9e]                           dc.b $00
[000c5c9f]                           dc.b $00
_MSK__ED_ICON:
[000c5ca0]                           dc.b $00
[000c5ca1]                           dc.b $3f
[000c5ca2]                           dc.w $ffff
[000c5ca4]                           dc.b $00
[000c5ca5]                           dc.b $7f
[000c5ca6]                           dc.w $ffff
[000c5ca8]                           dc.b $00
[000c5ca9]                           dc.b $7f
[000c5caa]                           dc.w $ffff
[000c5cac]                           dc.b $00
[000c5cad]                           dc.b $7f
[000c5cae]                           dc.w $ffff
[000c5cb0]                           dc.b $00
[000c5cb1]                           dc.b $7f
[000c5cb2]                           dc.w $ffff
[000c5cb4]                           dc.b $00
[000c5cb5]                           dc.b $3f
[000c5cb6]                           dc.w $ffff
[000c5cb8]                           dc.b $00
[000c5cb9]                           dc.b $3f
[000c5cba]                           dc.w $ffff
[000c5cbc]                           dc.b $00
[000c5cbd]                           dc.b $3f
[000c5cbe]                           dc.w $ffff
[000c5cc0]                           dc.b $00
[000c5cc1]                           dc.b $3f
[000c5cc2]                           dc.w $fffe
[000c5cc4]                           dc.b $00
[000c5cc5]                           dc.b $3f
[000c5cc6]                           dc.w $fffc
[000c5cc8]                           dc.b $00
[000c5cc9]                           dc.b $3f
[000c5cca]                           dc.w $ff70
[000c5ccc]                           dc.b $00
[000c5ccd]                           dc.b $3f
[000c5cce]                           dc.w $fe00
[000c5cd0]                           dc.b $00
[000c5cd1]                           dc.b $3f
[000c5cd2]                           dc.w $7000
[000c5cd4]                           dc.b $00
[000c5cd5]                           dc.b $3f
[000c5cd6]                           dc.b $00
[000c5cd7]                           dc.b $00
[000c5cd8]                           dc.b $00
[000c5cd9]                           dc.b $3f
[000c5cda]                           dc.b $00
[000c5cdb]                           dc.b $00
[000c5cdc]                           dc.b $00
[000c5cdd]                           dc.b $3f
[000c5cde]                           dc.b $00
[000c5cdf]                           dc.b $00
[000c5ce0]                           dc.b $00
[000c5ce1]                           dc.b $3f
[000c5ce2]                           dc.b $00
[000c5ce3]                           dc.b $00
[000c5ce4]                           dc.b $00
[000c5ce5]                           dc.b $3f
[000c5ce6]                           dc.b $00
[000c5ce7]                           dc.b $00
[000c5ce8]                           dc.b $00
[000c5ce9]                           dc.b $3f
[000c5cea]                           dc.b $00
[000c5ceb]                           dc.b $00
[000c5cec]                           dc.b $00
[000c5ced]                           dc.b $3f
[000c5cee]                           dc.b $00
[000c5cef]                           dc.b $00
[000c5cf0]                           dc.b $00
[000c5cf1]                           dc.b $3f
[000c5cf2]                           dc.b $00
[000c5cf3]                           dc.b $00
[000c5cf4]                           dc.w $ffff
[000c5cf6]                           dc.w $ffff
[000c5cf8]                           dc.w $ffff
[000c5cfa]                           dc.w $ffff
[000c5cfc]                           dc.w $ffff
[000c5cfe]                           dc.w $ffff
[000c5d00]                           dc.w $ffff
[000c5d02]                           dc.w $ffff
[000c5d04]                           dc.w $ffff
[000c5d06]                           dc.w $ffff
[000c5d08]                           dc.w $ffff
[000c5d0a]                           dc.w $ffff
[000c5d0c]                           dc.b $ff
[000c5d0d]                           dc.b $ff
[000c5d0e]                           dc.w $ffff
[000c5d10]                           dc.w $ffff
[000c5d12]                           dc.w $ffff
[000c5d14]                           dc.w $ffff
[000c5d16]                           dc.w $ffff
[000c5d18]                           dc.w $ffff
[000c5d1a]                           dc.w $ffff
[000c5d1c]                           dc.w $ffff
[000c5d1e]                           dc.w $ffff
_DAT__ED_ICON:
[000c5d20]                           dc.b $00
[000c5d21]                           dc.b $20
[000c5d22]                           dc.b $00
[000c5d23]                           dc.b $00
[000c5d24]                           dc.b $00
[000c5d25]                           dc.b $40
[000c5d26]                           dc.w $0198
[000c5d28]                           dc.b $00
[000c5d29]                           dc.b '@3T',0
[000c5d2d]                           dc.b $50
[000c5d2e]                           dc.w $6ad4
[000c5d30]                           dc.b $00
[000c5d31]                           dc.b '@\"',0
[000c5d35]                           dc.b '(D!',0
[000c5d39]                           dc.b $28
[000c5d3a]                           dc.w $2211
[000c5d3c]                           dc.b $00
[000c5d3d]                           dc.b $24
[000c5d3e]                           dc.w $1113
[000c5d40]                           dc.b $00
[000c5d41]                           dc.b $23
[000c5d42]                           dc.w $090e
[000c5d44]                           dc.b $00
[000c5d45]                           dc.b $22
[000c5d46]                           dc.w $84fc
[000c5d48]                           dc.b $00
[000c5d49]                           dc.b '!Gp',0
[000c5d4d]                           dc.b $21
[000c5d4e]                           dc.w $ae00
[000c5d50]                           dc.b $00
[000c5d51]                           dc.b $21
[000c5d52]                           dc.w $7000
[000c5d54]                           dc.b $00
[000c5d55]                           dc.b $2d
[000c5d56]                           dc.b $00
[000c5d57]                           dc.b $00
[000c5d58]                           dc.b $00
[000c5d59]                           dc.b $21
[000c5d5a]                           dc.b $00
[000c5d5b]                           dc.b $00
[000c5d5c]                           dc.b $00
[000c5d5d]                           dc.b $21
[000c5d5e]                           dc.b $00
[000c5d5f]                           dc.b $00
[000c5d60]                           dc.b $00
[000c5d61]                           dc.b $21
[000c5d62]                           dc.b $00
[000c5d63]                           dc.b $00
[000c5d64]                           dc.b $00
[000c5d65]                           dc.b $2d
[000c5d66]                           dc.b $00
[000c5d67]                           dc.b $00
[000c5d68]                           dc.b $00
[000c5d69]                           dc.b $21
[000c5d6a]                           dc.b $00
[000c5d6b]                           dc.b $00
[000c5d6c]                           dc.b $00
[000c5d6d]                           dc.b $21
[000c5d6e]                           dc.b $00
[000c5d6f]                           dc.b $00
[000c5d70]                           dc.b $00
[000c5d71]                           dc.b $21
[000c5d72]                           dc.b $00
[000c5d73]                           dc.b $00
[000c5d74]                           dc.b '~s~~'
[000c5d78]                           dc.w $859e
[000c5d7a]                           dc.w $8486
[000c5d7c]                           dc.w $f9f9
[000c5d7e]                           dc.w $f9f9
[000c5d80]                           dc.b $09,$09,$09,$09
[000c5d84]                           dc.w $9f9f
[000c5d86]                           dc.w $9f9f
[000c5d88]                           dc.w $e161
[000c5d8a]                           dc.b 'aa~~~~BBBB'
[000c5d94]                           dc.w $8282
[000c5d96]                           dc.w $8282
[000c5d98]                           dc.w $8282
[000c5d9a]                           dc.w $8282
[000c5d9c]                           dc.b $00
[000c5d9d]                           dc.b $00
[000c5d9e]                           dc.b $00
[000c5d9f]                           dc.b $00
_ED_ICON:
[000c5da0] 000c5ca0                  dc.l _MSK__ED_ICON
[000c5da4] 000c5d20                  dc.l _DAT__ED_ICON
[000c5da8] 000c434c                  dc.l TEXT_23
[000c5dac]                           dc.w $1000
[000c5dae]                           dc.b $00
[000c5daf]                           dc.b $00
[000c5db0]                           dc.b $00
[000c5db1]                           dc.b $00
[000c5db2]                           dc.b $00
[000c5db3]                           dc.b $14
[000c5db4]                           dc.b $00
[000c5db5]                           dc.b $00
[000c5db6]                           dc.b $00
[000c5db7]                           dc.b $20
[000c5db8]                           dc.b $00
[000c5db9]                           dc.b $20
[000c5dba]                           dc.b $00
[000c5dbb]                           dc.b $00
[000c5dbc]                           dc.b $00
[000c5dbd]                           dc.b $20
[000c5dbe]                           dc.b $00
[000c5dbf]                           dc.b $48
[000c5dc0]                           dc.b $00
[000c5dc1]                           dc.b $08
[000c5dc2] 000c5c8a                  dc.l _C4__ED_ICON
_ED_MENU:
[000c5dc6]                           dc.w $ffff
[000c5dc8]                           dc.b $00
[000c5dc9]                           dc.b $01
[000c5dca]                           dc.b $00
[000c5dcb]                           dc.b $08
[000c5dcc]                           dc.b $00
[000c5dcd]                           dc.b $19
[000c5dce]                           dc.b $00
[000c5dcf]                           dc.b $00
[000c5dd0]                           dc.b $00
[000c5dd1]                           dc.b $00
[000c5dd2]                           dc.b $00
[000c5dd3]                           dc.b $00
[000c5dd4]                           dc.b $00
[000c5dd5]                           dc.b $00
[000c5dd6]                           dc.b $00
[000c5dd7]                           dc.b $00
[000c5dd8]                           dc.b $00
[000c5dd9]                           dc.b $00
[000c5dda]                           dc.b $00
[000c5ddb]                           dc.b $5a
[000c5ddc]                           dc.b $00
[000c5ddd]                           dc.b $19
_01__ED_MENU:
[000c5dde]                           dc.b $00
[000c5ddf]                           dc.b $08
[000c5de0]                           dc.b $00
[000c5de1]                           dc.b $02
[000c5de2]                           dc.b $00
[000c5de3]                           dc.b $02
[000c5de4]                           dc.b $00
[000c5de5]                           dc.b $14
[000c5de6]                           dc.b $00
[000c5de7]                           dc.b $00
[000c5de8]                           dc.b $00
[000c5de9]                           dc.b $00
[000c5dea]                           dc.b $00
[000c5deb]                           dc.b $00
[000c5dec]                           dc.w $1100
[000c5dee]                           dc.b $00
[000c5def]                           dc.b $00
[000c5df0]                           dc.b $00
[000c5df1]                           dc.b $00
[000c5df2]                           dc.b $00
[000c5df3]                           dc.b $5a
[000c5df4]                           dc.w $0201
_02__ED_MENU:
[000c5df6]                           dc.b $00
[000c5df7]                           dc.b $01
[000c5df8]                           dc.b $00
[000c5df9]                           dc.b $03
[000c5dfa]                           dc.b $00
[000c5dfb]                           dc.b $07
[000c5dfc]                           dc.b $00
[000c5dfd]                           dc.b $19
[000c5dfe]                           dc.b $00
[000c5dff]                           dc.b $00
[000c5e00]                           dc.b $00
[000c5e01]                           dc.b $00
[000c5e02]                           dc.b $00
[000c5e03]                           dc.b $00
[000c5e04]                           dc.b $00
[000c5e05]                           dc.b $00
[000c5e06]                           dc.b $00
[000c5e07]                           dc.b $02
[000c5e08]                           dc.b $00
[000c5e09]                           dc.b $00
[000c5e0a]                           dc.b $00
[000c5e0b]                           dc.b $2b
[000c5e0c]                           dc.w $0301
_03__ED_MENU:
[000c5e0e]                           dc.b $00
[000c5e0f]                           dc.b $04
[000c5e10]                           dc.w $ffff
[000c5e12]                           dc.w $ffff
[000c5e14]                           dc.b $00
[000c5e15]                           dc.b $20
[000c5e16]                           dc.b $00
[000c5e17]                           dc.b $00
[000c5e18]                           dc.b $00
[000c5e19]                           dc.b $00
[000c5e1a] 000c41b6                  dc.l TEXT_002
[000c5e1e]                           dc.b $00
[000c5e1f]                           dc.b $00
[000c5e20]                           dc.b $00
[000c5e21]                           dc.b $00
[000c5e22]                           dc.b $00
[000c5e23]                           dc.b $06
[000c5e24]                           dc.w $0301
_04__ED_MENU:
[000c5e26]                           dc.b $00
[000c5e27]                           dc.b $05
[000c5e28]                           dc.w $ffff
[000c5e2a]                           dc.w $ffff
[000c5e2c]                           dc.b $00
[000c5e2d]                           dc.b $20
[000c5e2e]                           dc.b $00
[000c5e2f]                           dc.b $00
[000c5e30]                           dc.b $00
[000c5e31]                           dc.b $00
[000c5e32] 000c41cc                  dc.l TEXT_006
[000c5e36]                           dc.b $00
[000c5e37]                           dc.b $06
[000c5e38]                           dc.b $00
[000c5e39]                           dc.b $00
[000c5e3a]                           dc.b $00
[000c5e3b]                           dc.b $07
[000c5e3c]                           dc.w $0301
_05__ED_MENU:
[000c5e3e]                           dc.b $00
[000c5e3f]                           dc.b $06
[000c5e40]                           dc.w $ffff
[000c5e42]                           dc.w $ffff
[000c5e44]                           dc.b $00
[000c5e45]                           dc.b $20
[000c5e46]                           dc.b $00
[000c5e47]                           dc.b $00
[000c5e48]                           dc.b $00
[000c5e49]                           dc.b $00
[000c5e4a] 000c457b                  dc.l TEXT_53
[000c5e4e]                           dc.b $00
[000c5e4f]                           dc.b $0d
[000c5e50]                           dc.b $00
[000c5e51]                           dc.b $00
[000c5e52]                           dc.b $00
[000c5e53]                           dc.b $0c
[000c5e54]                           dc.w $0301
_06__ED_MENU:
[000c5e56]                           dc.b $00
[000c5e57]                           dc.b $07
[000c5e58]                           dc.b $ff
[000c5e59]                           dc.b $ff
[000c5e5a]                           dc.w $ffff
[000c5e5c]                           dc.b $00
[000c5e5d]                           dc.b $20
[000c5e5e]                           dc.b $00
[000c5e5f]                           dc.b $00
[000c5e60]                           dc.b $00
[000c5e61]                           dc.b $00
[000c5e62] 000c41e0                  dc.l TEXT_018
[000c5e66]                           dc.b $00
[000c5e67]                           dc.b $19
[000c5e68]                           dc.b $00
[000c5e69]                           dc.b $00
[000c5e6a]                           dc.b $00
[000c5e6b]                           dc.b $08
[000c5e6c]                           dc.w $0301
_07__ED_MENU:
[000c5e6e]                           dc.b $00
[000c5e6f]                           dc.b $02
[000c5e70]                           dc.w $ffff
[000c5e72]                           dc.w $ffff
[000c5e74]                           dc.b $00
[000c5e75]                           dc.b $20
[000c5e76]                           dc.b $00
[000c5e77]                           dc.b $00
[000c5e78]                           dc.b $00
[000c5e79]                           dc.b $00
[000c5e7a] 000c4207                  dc.l TEXT_032
[000c5e7e]                           dc.b $00
[000c5e7f]                           dc.b $21
[000c5e80]                           dc.b $00
[000c5e81]                           dc.b $00
[000c5e82]                           dc.b $00
[000c5e83]                           dc.b $0a
[000c5e84]                           dc.w $0301
_08__ED_MENU:
[000c5e86]                           dc.b $00
[000c5e87]                           dc.b $00
[000c5e88]                           dc.b $00
[000c5e89]                           dc.b $09
[000c5e8a]                           dc.b $00
[000c5e8b]                           dc.b $47
[000c5e8c]                           dc.b $00
[000c5e8d]                           dc.b $19
[000c5e8e]                           dc.b $00
[000c5e8f]                           dc.b $00
[000c5e90]                           dc.b $00
[000c5e91]                           dc.b $00
[000c5e92]                           dc.b $00
[000c5e93]                           dc.b $00
[000c5e94]                           dc.b $00
[000c5e95]                           dc.b $00
[000c5e96]                           dc.b $00
[000c5e97]                           dc.b $00
[000c5e98]                           dc.w $0301
[000c5e9a]                           dc.b $00
[000c5e9b]                           dc.b $50
[000c5e9c]                           dc.b $00
[000c5e9d]                           dc.b $13
_09__ED_MENU:
[000c5e9e]                           dc.b $00
[000c5e9f]                           dc.b $12
[000c5ea0]                           dc.b $00
[000c5ea1]                           dc.b $0a
[000c5ea2]                           dc.b $00
[000c5ea3]                           dc.b $11
[000c5ea4]                           dc.b $00
[000c5ea5]                           dc.b $14
[000c5ea6]                           dc.b $00
[000c5ea7]                           dc.b $00
[000c5ea8]                           dc.b $00
[000c5ea9]                           dc.b $00
[000c5eaa]                           dc.b $00
[000c5eab]                           dc.b $ff
[000c5eac]                           dc.w $1100
[000c5eae]                           dc.b $00
[000c5eaf]                           dc.b $02
[000c5eb0]                           dc.b $00
[000c5eb1]                           dc.b $00
[000c5eb2]                           dc.b $00
[000c5eb3]                           dc.b $14
[000c5eb4]                           dc.b $00
[000c5eb5]                           dc.b $08
_10__ED_MENU:
[000c5eb6]                           dc.b $00
[000c5eb7]                           dc.b $0b
[000c5eb8]                           dc.w $ffff
[000c5eba]                           dc.w $ffff
[000c5ebc]                           dc.b $00
[000c5ebd]                           dc.b $1c
[000c5ebe]                           dc.b $00
[000c5ebf]                           dc.b $00
[000c5ec0]                           dc.w $2000
[000c5ec2] 000c4417                  dc.l TEXT_30
[000c5ec6]                           dc.b $00
[000c5ec7]                           dc.b $00
[000c5ec8]                           dc.b $00
[000c5ec9]                           dc.b $00
[000c5eca]                           dc.b $00
[000c5ecb]                           dc.b $14
[000c5ecc]                           dc.b $00
[000c5ecd]                           dc.b $01
_11__ED_MENU:
[000c5ece]                           dc.b $00
[000c5ecf]                           dc.b $0c
[000c5ed0]                           dc.w $ffff
[000c5ed2]                           dc.w $ffff
[000c5ed4]                           dc.b $00
[000c5ed5]                           dc.b $1c
[000c5ed6]                           dc.b $00
[000c5ed7]                           dc.b $00
[000c5ed8]                           dc.w $2008
[000c5eda] 000c41b7                  dc.l TEXT_004
[000c5ede]                           dc.b $00
[000c5edf]                           dc.b $00
[000c5ee0]                           dc.b $00
[000c5ee1]                           dc.b $01
[000c5ee2]                           dc.b $00
[000c5ee3]                           dc.b $14
[000c5ee4]                           dc.b $00
[000c5ee5]                           dc.b $01
_12__ED_MENU:
[000c5ee6]                           dc.b $00
[000c5ee7]                           dc.b $0d
[000c5ee8]                           dc.w $ffff
[000c5eea]                           dc.w $ffff
[000c5eec]                           dc.b $00
[000c5eed]                           dc.b $1c
[000c5eee]                           dc.b $00
[000c5eef]                           dc.b $00
[000c5ef0]                           dc.w $2000
[000c5ef2] 000c41b6                  dc.l TEXT_002
[000c5ef6]                           dc.b $00
[000c5ef7]                           dc.b $00
[000c5ef8]                           dc.b $00
[000c5ef9]                           dc.b $02
[000c5efa]                           dc.b $00
[000c5efb]                           dc.b $14
[000c5efc]                           dc.b $00
[000c5efd]                           dc.b $01
_13__ED_MENU:
[000c5efe]                           dc.b $00
[000c5eff]                           dc.b $0e
[000c5f00]                           dc.w $ffff
[000c5f02]                           dc.w $ffff
[000c5f04]                           dc.b $00
[000c5f05]                           dc.b $1c
[000c5f06]                           dc.b $00
[000c5f07]                           dc.b $00
[000c5f08]                           dc.w $2000
[000c5f0a] 000c41b6                  dc.l TEXT_002
[000c5f0e]                           dc.b $00
[000c5f0f]                           dc.b $00
[000c5f10]                           dc.b $00
[000c5f11]                           dc.b $03
[000c5f12]                           dc.b $00
[000c5f13]                           dc.b $14
[000c5f14]                           dc.b $00
[000c5f15]                           dc.b $01
_14__ED_MENU:
[000c5f16]                           dc.b $00
[000c5f17]                           dc.b $0f
[000c5f18]                           dc.w $ffff
[000c5f1a]                           dc.w $ffff
[000c5f1c]                           dc.b $00
[000c5f1d]                           dc.b $1c
[000c5f1e]                           dc.b $00
[000c5f1f]                           dc.b $00
[000c5f20]                           dc.w $2000
[000c5f22] 000c41b6                  dc.l TEXT_002
[000c5f26]                           dc.b $00
[000c5f27]                           dc.b $00
[000c5f28]                           dc.b $00
[000c5f29]                           dc.b $04
[000c5f2a]                           dc.b $00
[000c5f2b]                           dc.b $14
[000c5f2c]                           dc.b $00
[000c5f2d]                           dc.b $01
_15__ED_MENU:
[000c5f2e]                           dc.b $00
[000c5f2f]                           dc.b $10
[000c5f30]                           dc.w $ffff
[000c5f32]                           dc.w $ffff
[000c5f34]                           dc.b $00
[000c5f35]                           dc.b $1c
[000c5f36]                           dc.b $00
[000c5f37]                           dc.b $00
[000c5f38]                           dc.w $2000
[000c5f3a] 000c41b6                  dc.l TEXT_002
[000c5f3e]                           dc.b $00
[000c5f3f]                           dc.b $00
[000c5f40]                           dc.b $00
[000c5f41]                           dc.b $05
[000c5f42]                           dc.b $00
[000c5f43]                           dc.b $14
[000c5f44]                           dc.b $00
[000c5f45]                           dc.b $01
_16__ED_MENU:
[000c5f46]                           dc.b $00
[000c5f47]                           dc.b $11
[000c5f48]                           dc.w $ffff
[000c5f4a]                           dc.w $ffff
[000c5f4c]                           dc.b $00
[000c5f4d]                           dc.b $1c
[000c5f4e]                           dc.b $00
[000c5f4f]                           dc.b $00
[000c5f50]                           dc.w $2000
[000c5f52] 000c41b6                  dc.l TEXT_002
[000c5f56]                           dc.b $00
[000c5f57]                           dc.b $00
[000c5f58]                           dc.b $00
[000c5f59]                           dc.b $06
[000c5f5a]                           dc.b $00
[000c5f5b]                           dc.b $14
[000c5f5c]                           dc.b $00
[000c5f5d]                           dc.b $01
_17__ED_MENU:
[000c5f5e]                           dc.b $00
[000c5f5f]                           dc.b $09
[000c5f60]                           dc.w $ffff
[000c5f62]                           dc.w $ffff
[000c5f64]                           dc.b $00
[000c5f65]                           dc.b $1c
[000c5f66]                           dc.b $00
[000c5f67]                           dc.b $00
[000c5f68]                           dc.w $2000
[000c5f6a] 000c41b6                  dc.l TEXT_002
[000c5f6e]                           dc.b $00
[000c5f6f]                           dc.b $00
[000c5f70]                           dc.b $00
[000c5f71]                           dc.b $07
[000c5f72]                           dc.b $00
[000c5f73]                           dc.b $14
[000c5f74]                           dc.b $00
[000c5f75]                           dc.b $01
_18__ED_MENU:
[000c5f76]                           dc.b $00
[000c5f77]                           dc.b $22
[000c5f78]                           dc.b $00
[000c5f79]                           dc.b $13
[000c5f7a]                           dc.b $00
[000c5f7b]                           dc.b $20
[000c5f7c]                           dc.b $00
[000c5f7d]                           dc.b $14
[000c5f7e]                           dc.b $00
[000c5f7f]                           dc.b $00
[000c5f80]                           dc.b $00
[000c5f81]                           dc.b $00
[000c5f82]                           dc.b $00
[000c5f83]                           dc.b $ff
[000c5f84]                           dc.w $1101
[000c5f86]                           dc.b $00
[000c5f87]                           dc.b $08
[000c5f88]                           dc.b $00
[000c5f89]                           dc.b $00
[000c5f8a]                           dc.b $00
[000c5f8b]                           dc.b $15
[000c5f8c]                           dc.b $00
[000c5f8d]                           dc.b $09
_19__ED_MENU:
[000c5f8e]                           dc.b $00
[000c5f8f]                           dc.b $15
[000c5f90]                           dc.w $ffff
[000c5f92]                           dc.w $ffff
[000c5f94]                           dc.b $00
[000c5f95]                           dc.b $1c
[000c5f96]                           dc.b $00
[000c5f97]                           dc.b $00
[000c5f98]                           dc.w $0100
[000c5f9a] 000c43eb                  dc.l TEXT_28
[000c5f9e]                           dc.b $00
[000c5f9f]                           dc.b $00
[000c5fa0]                           dc.b $00
[000c5fa1]                           dc.b $00
[000c5fa2]                           dc.b $00
[000c5fa3]                           dc.b $15
[000c5fa4]                           dc.b $00
[000c5fa5]                           dc.b $01
_19a_ED_MENU:
[000c5fa6] 0003da8a                  dc.l Aed_open
[000c5faa]                           dc.b $00
[000c5fab]                           dc.b $00
[000c5fac]                           dc.b $00
[000c5fad]                           dc.b $00
[000c5fae]                           dc.w $8000
[000c5fb0]                           dc.w $844f
[000c5fb2]                           dc.b $00
[000c5fb3]                           dc.b $00
[000c5fb4]                           dc.b $00
[000c5fb5]                           dc.b $00
[000c5fb6]                           dc.b $00
[000c5fb7]                           dc.b $00
[000c5fb8]                           dc.b $00
[000c5fb9]                           dc.b $00
[000c5fba]                           dc.b $00
[000c5fbb]                           dc.b $00
[000c5fbc]                           dc.b $00
[000c5fbd]                           dc.b $00
_21__ED_MENU:
[000c5fbe]                           dc.b $00
[000c5fbf]                           dc.b $17
[000c5fc0]                           dc.w $ffff
[000c5fc2]                           dc.w $ffff
[000c5fc4]                           dc.b $00
[000c5fc5]                           dc.b $1c
[000c5fc6]                           dc.b $00
[000c5fc7]                           dc.b $00
[000c5fc8]                           dc.w $0100
[000c5fca] 000c42d7                  dc.l TEXT_17
[000c5fce]                           dc.b $00
[000c5fcf]                           dc.b $00
[000c5fd0]                           dc.b $00
[000c5fd1]                           dc.b $01
[000c5fd2]                           dc.b $00
[000c5fd3]                           dc.b $15
[000c5fd4]                           dc.b $00
[000c5fd5]                           dc.b $01
_21a_ED_MENU:
[000c5fd6] 0003dbc2                  dc.l Aed_merge
[000c5fda]                           dc.b $00
[000c5fdb]                           dc.b $00
[000c5fdc]                           dc.b $00
[000c5fdd]                           dc.b $00
[000c5fde]                           dc.w $8000
[000c5fe0]                           dc.b $00
[000c5fe1]                           dc.b $00
[000c5fe2]                           dc.b $00
[000c5fe3]                           dc.b $00
[000c5fe4]                           dc.b $00
[000c5fe5]                           dc.b $00
[000c5fe6]                           dc.b $00
[000c5fe7]                           dc.b $00
[000c5fe8]                           dc.b $00
[000c5fe9]                           dc.b $00
[000c5fea]                           dc.b $00
[000c5feb]                           dc.b $00
[000c5fec]                           dc.b $00
[000c5fed]                           dc.b $00
_23__ED_MENU:
[000c5fee]                           dc.b $00
[000c5fef]                           dc.b $18
[000c5ff0]                           dc.w $ffff
[000c5ff2]                           dc.w $ffff
[000c5ff4]                           dc.b $00
[000c5ff5]                           dc.b $18
[000c5ff6]                           dc.b $00
[000c5ff7]                           dc.b $00
[000c5ff8]                           dc.b $00
[000c5ff9]                           dc.b $08
[000c5ffa] 000c5626                  dc.l A_ARROWS03
[000c5ffe]                           dc.b $00
[000c5fff]                           dc.b $00
[000c6000]                           dc.b $00
[000c6001]                           dc.b $02
[000c6002]                           dc.b $00
[000c6003]                           dc.b $15
[000c6004]                           dc.b $00
[000c6005]                           dc.b $01
_24__ED_MENU:
[000c6006]                           dc.b $00
[000c6007]                           dc.b $1a
[000c6008]                           dc.w $ffff
[000c600a]                           dc.w $ffff
[000c600c]                           dc.b $00
[000c600d]                           dc.b $1c
[000c600e]                           dc.b $00
[000c600f]                           dc.b $00
[000c6010]                           dc.w $0100
[000c6012] 000c42fc                  dc.l TEXT_19
[000c6016]                           dc.b $00
[000c6017]                           dc.b $00
[000c6018]                           dc.b $00
[000c6019]                           dc.b $03
[000c601a]                           dc.b $00
[000c601b]                           dc.b $15
[000c601c]                           dc.b $00
[000c601d]                           dc.b $01
_24a_ED_MENU:
[000c601e] 0003e1c0                  dc.l Aed_save
[000c6022]                           dc.b $00
[000c6023]                           dc.b $00
[000c6024]                           dc.b $00
[000c6025]                           dc.b $00
[000c6026]                           dc.w $8000
[000c6028]                           dc.w $8453
[000c602a]                           dc.b $00
[000c602b]                           dc.b $00
[000c602c]                           dc.b $00
[000c602d]                           dc.b $00
[000c602e]                           dc.b $00
[000c602f]                           dc.b $00
[000c6030]                           dc.b $00
[000c6031]                           dc.b $00
[000c6032]                           dc.b $00
[000c6033]                           dc.b $00
[000c6034]                           dc.b $00
[000c6035]                           dc.b $00
_26__ED_MENU:
[000c6036]                           dc.b $00
[000c6037]                           dc.b $1c
[000c6038]                           dc.w $ffff
[000c603a]                           dc.w $ffff
[000c603c]                           dc.b $00
[000c603d]                           dc.b $1c
[000c603e]                           dc.b $00
[000c603f]                           dc.b $00
[000c6040]                           dc.w $0100
[000c6042] 000c42c2                  dc.l TEXT_16
[000c6046]                           dc.b $00
[000c6047]                           dc.b $00
[000c6048]                           dc.b $00
[000c6049]                           dc.b $04
[000c604a]                           dc.b $00
[000c604b]                           dc.b $15
[000c604c]                           dc.b $00
[000c604d]                           dc.b $01
_26a_ED_MENU:
[000c604e] 0003e28c                  dc.l Aed_saveas
[000c6052]                           dc.b $00
[000c6053]                           dc.b $00
[000c6054]                           dc.b $00
[000c6055]                           dc.b $00
[000c6056]                           dc.w $8000
[000c6058]                           dc.w $844d
[000c605a]                           dc.b $00
[000c605b]                           dc.b $00
[000c605c]                           dc.b $00
[000c605d]                           dc.b $00
[000c605e]                           dc.b $00
[000c605f]                           dc.b $00
[000c6060]                           dc.b $00
[000c6061]                           dc.b $00
[000c6062]                           dc.b $00
[000c6063]                           dc.b $00
[000c6064]                           dc.b $00
[000c6065]                           dc.b $00
_28__ED_MENU:
[000c6066]                           dc.b $00
[000c6067]                           dc.b $1d
[000c6068]                           dc.w $ffff
[000c606a]                           dc.w $ffff
[000c606c]                           dc.b $00
[000c606d]                           dc.b $18
[000c606e]                           dc.b $00
[000c606f]                           dc.b $00
[000c6070]                           dc.b $00
[000c6071]                           dc.b $08
[000c6072] 000c5626                  dc.l A_ARROWS03
[000c6076]                           dc.b $00
[000c6077]                           dc.b $00
[000c6078]                           dc.b $00
[000c6079]                           dc.b $05
[000c607a]                           dc.b $00
[000c607b]                           dc.b $15
[000c607c]                           dc.b $00
[000c607d]                           dc.b $01
_29__ED_MENU:
[000c607e]                           dc.b $00
[000c607f]                           dc.b $1f
[000c6080]                           dc.w $ffff
[000c6082]                           dc.w $ffff
[000c6084]                           dc.b $00
[000c6085]                           dc.b $1c
[000c6086]                           dc.b $00
[000c6087]                           dc.b $00
[000c6088]                           dc.w $0100
[000c608a] 000c42e7                  dc.l TEXT_18
[000c608e]                           dc.b $00
[000c608f]                           dc.b $00
[000c6090]                           dc.b $00
[000c6091]                           dc.b $06
[000c6092]                           dc.b $00
[000c6093]                           dc.b $15
[000c6094]                           dc.b $00
[000c6095]                           dc.b $01
_29a_ED_MENU:
[000c6096] 0003d804                  dc.l Aed_info
[000c609a]                           dc.b $00
[000c609b]                           dc.b $00
[000c609c]                           dc.b $00
[000c609d]                           dc.b $00
[000c609e]                           dc.w $8000
[000c60a0]                           dc.w $8449
[000c60a2]                           dc.b $00
[000c60a3]                           dc.b $00
[000c60a4]                           dc.b $00
[000c60a5]                           dc.b $00
[000c60a6]                           dc.b $00
[000c60a7]                           dc.b $00
[000c60a8]                           dc.b $00
[000c60a9]                           dc.b $00
[000c60aa]                           dc.b $00
[000c60ab]                           dc.b $00
[000c60ac]                           dc.b $00
[000c60ad]                           dc.b $00
_31__ED_MENU:
[000c60ae]                           dc.b $00
[000c60af]                           dc.b $20
[000c60b0]                           dc.w $ffff
[000c60b2]                           dc.w $ffff
[000c60b4]                           dc.b $00
[000c60b5]                           dc.b $18
[000c60b6]                           dc.b $00
[000c60b7]                           dc.b $00
[000c60b8]                           dc.b $00
[000c60b9]                           dc.b $08
[000c60ba] 000c5626                  dc.l A_ARROWS03
[000c60be]                           dc.b $00
[000c60bf]                           dc.b $00
[000c60c0]                           dc.b $00
[000c60c1]                           dc.b $07
[000c60c2]                           dc.b $00
[000c60c3]                           dc.b $15
[000c60c4]                           dc.b $00
[000c60c5]                           dc.b $01
_32__ED_MENU:
[000c60c6]                           dc.b $00
[000c60c7]                           dc.b $12
[000c60c8]                           dc.w $ffff
[000c60ca]                           dc.w $ffff
[000c60cc]                           dc.b $00
[000c60cd]                           dc.b $1c
[000c60ce]                           dc.b $00
[000c60cf]                           dc.b $00
[000c60d0]                           dc.w $0100
[000c60d2] 000c45f9                  dc.l TEXT_63
[000c60d6]                           dc.b $00
[000c60d7]                           dc.b $00
[000c60d8]                           dc.b $00
[000c60d9]                           dc.b $08
[000c60da]                           dc.b $00
[000c60db]                           dc.b $15
[000c60dc]                           dc.b $00
[000c60dd]                           dc.b $01
_32a_ED_MENU:
[000c60de] 0003dc10                  dc.l Aed_quit
[000c60e2]                           dc.b $00
[000c60e3]                           dc.b $00
[000c60e4]                           dc.b $00
[000c60e5]                           dc.b $00
[000c60e6]                           dc.w $8000
[000c60e8]                           dc.w $8444
[000c60ea]                           dc.b $00
[000c60eb]                           dc.b $00
[000c60ec]                           dc.b $00
[000c60ed]                           dc.b $00
[000c60ee]                           dc.b $00
[000c60ef]                           dc.b $00
[000c60f0]                           dc.b $00
[000c60f1]                           dc.b $00
[000c60f2]                           dc.b $00
[000c60f3]                           dc.b $00
[000c60f4]                           dc.b $00
[000c60f5]                           dc.b $00
_34__ED_MENU:
[000c60f6]                           dc.b $00
[000c60f7]                           dc.b $38
[000c60f8]                           dc.b $00
[000c60f9]                           dc.b $23
[000c60fa]                           dc.b $00
[000c60fb]                           dc.b $36
[000c60fc]                           dc.b $00
[000c60fd]                           dc.b $14
[000c60fe]                           dc.b $00
[000c60ff]                           dc.b $00
[000c6100]                           dc.b $00
[000c6101]                           dc.b $00
[000c6102]                           dc.b $00
[000c6103]                           dc.b $ff
[000c6104]                           dc.w $1101
[000c6106]                           dc.b $00
[000c6107]                           dc.b $0f
[000c6108]                           dc.b $00
[000c6109]                           dc.b $00
[000c610a]                           dc.b $00
[000c610b]                           dc.b $17
[000c610c]                           dc.b $00
[000c610d]                           dc.b $0c
_35__ED_MENU:
[000c610e]                           dc.b $00
[000c610f]                           dc.b $25
[000c6110]                           dc.w $ffff
[000c6112]                           dc.w $ffff
[000c6114]                           dc.b $00
[000c6115]                           dc.b $1c
[000c6116]                           dc.b $00
[000c6117]                           dc.b $00
[000c6118]                           dc.w $0100
[000c611a] 000c461b                  dc.l TEXT_66
[000c611e]                           dc.b $00
[000c611f]                           dc.b $00
[000c6120]                           dc.b $00
[000c6121]                           dc.b $00
[000c6122]                           dc.b $00
[000c6123]                           dc.b $17
[000c6124]                           dc.b $00
[000c6125]                           dc.b $01
_35a_ED_MENU:
[000c6126] 0003e486                  dc.l Aed_undo
[000c612a]                           dc.b $00
[000c612b]                           dc.b $00
[000c612c]                           dc.b $00
[000c612d]                           dc.b $00
[000c612e]                           dc.w $8000
[000c6130]                           dc.w $800f
[000c6132]                           dc.b $00
[000c6133]                           dc.b $00
[000c6134]                           dc.b $00
[000c6135]                           dc.b $00
[000c6136]                           dc.b $00
[000c6137]                           dc.b $00
[000c6138]                           dc.b $00
[000c6139]                           dc.b $00
[000c613a]                           dc.b $00
[000c613b]                           dc.b $00
[000c613c]                           dc.b $00
[000c613d]                           dc.b $00
_37__ED_MENU:
[000c613e]                           dc.b $00
[000c613f]                           dc.b $26
[000c6140]                           dc.w $ffff
[000c6142]                           dc.w $ffff
[000c6144]                           dc.b $00
[000c6145]                           dc.b $18
[000c6146]                           dc.b $00
[000c6147]                           dc.b $00
[000c6148]                           dc.b $00
[000c6149]                           dc.b $08
[000c614a] 000c5626                  dc.l A_ARROWS03
[000c614e]                           dc.b $00
[000c614f]                           dc.b $00
[000c6150]                           dc.b $00
[000c6151]                           dc.b $01
[000c6152]                           dc.b $00
[000c6153]                           dc.b $17
[000c6154]                           dc.b $00
[000c6155]                           dc.b $01
_38__ED_MENU:
[000c6156]                           dc.b $00
[000c6157]                           dc.b $28
[000c6158]                           dc.w $ffff
[000c615a]                           dc.w $ffff
[000c615c]                           dc.b $00
[000c615d]                           dc.b $1c
[000c615e]                           dc.b $00
[000c615f]                           dc.b $00
[000c6160]                           dc.w $0100
[000c6162] 000c4400                  dc.l TEXT_29
[000c6166]                           dc.b $00
[000c6167]                           dc.b $00
[000c6168]                           dc.b $00
[000c6169]                           dc.b $02
[000c616a]                           dc.b $00
[000c616b]                           dc.b $17
[000c616c]                           dc.b $00
[000c616d]                           dc.b $01
_38a_ED_MENU:
[000c616e] 0003d2be                  dc.l Aed_cut
[000c6172]                           dc.b $00
[000c6173]                           dc.b $00
[000c6174]                           dc.b $00
[000c6175]                           dc.b $00
[000c6176]                           dc.w $8000
[000c6178]                           dc.w $8458
[000c617a]                           dc.b $00
[000c617b]                           dc.b $00
[000c617c]                           dc.b $00
[000c617d]                           dc.b $00
[000c617e]                           dc.b $00
[000c617f]                           dc.b $00
[000c6180]                           dc.b $00
[000c6181]                           dc.b $00
[000c6182]                           dc.b $00
[000c6183]                           dc.b $00
[000c6184]                           dc.b $00
[000c6185]                           dc.b $00
_40__ED_MENU:
[000c6186]                           dc.b $00
[000c6187]                           dc.b $2a
[000c6188]                           dc.w $ffff
[000c618a]                           dc.w $ffff
[000c618c]                           dc.b $00
[000c618d]                           dc.b $1c
[000c618e]                           dc.b $00
[000c618f]                           dc.b $00
[000c6190]                           dc.w $0100
[000c6192] 000c43a6                  dc.l TEXT_25
[000c6196]                           dc.b $00
[000c6197]                           dc.b $00
[000c6198]                           dc.b $00
[000c6199]                           dc.b $03
[000c619a]                           dc.b $00
[000c619b]                           dc.b $17
[000c619c]                           dc.b $00
[000c619d]                           dc.b $01
_40a_ED_MENU:
[000c619e] 0003d2a8                  dc.l Aed_copy
[000c61a2]                           dc.b $00
[000c61a3]                           dc.b $00
[000c61a4]                           dc.b $00
[000c61a5]                           dc.b $00
[000c61a6]                           dc.w $8000
[000c61a8]                           dc.w $8443
[000c61aa]                           dc.b $00
[000c61ab]                           dc.b $00
[000c61ac]                           dc.b $00
[000c61ad]                           dc.b $00
[000c61ae]                           dc.b $00
[000c61af]                           dc.b $00
[000c61b0]                           dc.b $00
[000c61b1]                           dc.b $00
[000c61b2]                           dc.b $00
[000c61b3]                           dc.b $00
[000c61b4]                           dc.b $00
[000c61b5]                           dc.b $00
_42__ED_MENU:
[000c61b6]                           dc.b $00
[000c61b7]                           dc.b $2c
[000c61b8]                           dc.w $ffff
[000c61ba]                           dc.w $ffff
[000c61bc]                           dc.b $00
[000c61bd]                           dc.b $1c
[000c61be]                           dc.b $00
[000c61bf]                           dc.b $00
[000c61c0]                           dc.w $0100
[000c61c2] 000c44a2                  dc.l TEXT_38
[000c61c6]                           dc.b $00
[000c61c7]                           dc.b $00
[000c61c8]                           dc.b $00
[000c61c9]                           dc.b $04
[000c61ca]                           dc.b $00
[000c61cb]                           dc.b $17
[000c61cc]                           dc.b $00
[000c61cd]                           dc.b $01
_42a_ED_MENU:
[000c61ce] 0003dbfa                  dc.l Aed_paste
[000c61d2]                           dc.b $00
[000c61d3]                           dc.b $00
[000c61d4]                           dc.b $00
[000c61d5]                           dc.b $00
[000c61d6]                           dc.w $8000
[000c61d8]                           dc.w $8456
[000c61da]                           dc.b $00
[000c61db]                           dc.b $00
[000c61dc]                           dc.b $00
[000c61dd]                           dc.b $00
[000c61de]                           dc.b $00
[000c61df]                           dc.b $00
[000c61e0]                           dc.b $00
[000c61e1]                           dc.b $00
[000c61e2]                           dc.b $00
[000c61e3]                           dc.b $00
[000c61e4]                           dc.b $00
[000c61e5]                           dc.b $00
_44__ED_MENU:
[000c61e6]                           dc.b $00
[000c61e7]                           dc.b $2e
[000c61e8]                           dc.w $ffff
[000c61ea]                           dc.w $ffff
[000c61ec]                           dc.b $00
[000c61ed]                           dc.b $1c
[000c61ee]                           dc.b $00
[000c61ef]                           dc.b $00
[000c61f0]                           dc.w $0100
[000c61f2] 000c43bd                  dc.l TEXT_26
[000c61f6]                           dc.b $00
[000c61f7]                           dc.b $00
[000c61f8]                           dc.b $00
[000c61f9]                           dc.b $05
[000c61fa]                           dc.b $00
[000c61fb]                           dc.b $17
[000c61fc]                           dc.b $00
[000c61fd]                           dc.b $01
_44a_ED_MENU:
[000c61fe] 0003d2d4                  dc.l Aed_cutline
[000c6202]                           dc.b $00
[000c6203]                           dc.b $00
[000c6204]                           dc.b $00
[000c6205]                           dc.b $00
[000c6206]                           dc.w $8000
[000c6208]                           dc.w $8459
[000c620a]                           dc.b $00
[000c620b]                           dc.b $00
[000c620c]                           dc.b $00
[000c620d]                           dc.b $00
[000c620e]                           dc.b $00
[000c620f]                           dc.b $00
[000c6210]                           dc.b $00
[000c6211]                           dc.b $00
[000c6212]                           dc.b $00
[000c6213]                           dc.b $00
[000c6214]                           dc.b $00
[000c6215]                           dc.b $00
_46__ED_MENU:
[000c6216]                           dc.b $00
[000c6217]                           dc.b $2f
[000c6218]                           dc.w $ffff
[000c621a]                           dc.w $ffff
[000c621c]                           dc.b $00
[000c621d]                           dc.b $18
[000c621e]                           dc.b $00
[000c621f]                           dc.b $00
[000c6220]                           dc.b $00
[000c6221]                           dc.b $08
[000c6222] 000c5626                  dc.l A_ARROWS03
[000c6226]                           dc.b $00
[000c6227]                           dc.b $00
[000c6228]                           dc.b $00
[000c6229]                           dc.b $06
[000c622a]                           dc.b $00
[000c622b]                           dc.b $17
[000c622c]                           dc.b $00
[000c622d]                           dc.b $01
_47__ED_MENU:
[000c622e]                           dc.b $00
[000c622f]                           dc.b $31
[000c6230]                           dc.w $ffff
[000c6232]                           dc.w $ffff
[000c6234]                           dc.b $00
[000c6235]                           dc.b $1c
[000c6236]                           dc.b $00
[000c6237]                           dc.b $00
[000c6238]                           dc.w $0100
[000c623a] 000c4311                  dc.l TEXT_20
[000c623e]                           dc.b $00
[000c623f]                           dc.b $00
[000c6240]                           dc.b $00
[000c6241]                           dc.b $07
[000c6242]                           dc.b $00
[000c6243]                           dc.b $17
[000c6244]                           dc.b $00
[000c6245]                           dc.b $01
_47a_ED_MENU:
[000c6246] 0003e89a                  dc.l Aed_toclip
[000c624a]                           dc.b $00
[000c624b]                           dc.b $00
[000c624c]                           dc.b $00
[000c624d]                           dc.b $00
[000c624e]                           dc.w $8000
[000c6250]                           dc.w $8743
[000c6252]                           dc.b $00
[000c6253]                           dc.b $00
[000c6254]                           dc.b $00
[000c6255]                           dc.b $00
[000c6256]                           dc.b $00
[000c6257]                           dc.b $00
[000c6258]                           dc.b $00
[000c6259]                           dc.b $00
[000c625a]                           dc.b $00
[000c625b]                           dc.b $00
[000c625c]                           dc.b $00
[000c625d]                           dc.b $00
_49__ED_MENU:
[000c625e]                           dc.b $00
[000c625f]                           dc.b $33
[000c6260]                           dc.w $ffff
[000c6262]                           dc.w $ffff
[000c6264]                           dc.b $00
[000c6265]                           dc.b $1c
[000c6266]                           dc.b $00
[000c6267]                           dc.b $00
[000c6268]                           dc.w $0100
[000c626a] 000c43d4                  dc.l TEXT_27
[000c626e]                           dc.b $00
[000c626f]                           dc.b $00
[000c6270]                           dc.b $00
[000c6271]                           dc.b $08
[000c6272]                           dc.b $00
[000c6273]                           dc.b $17
[000c6274]                           dc.b $00
[000c6275]                           dc.b $01
_49a_ED_MENU:
[000c6276] 0003e8dc                  dc.l Aed_fromclip
[000c627a]                           dc.b $00
[000c627b]                           dc.b $00
[000c627c]                           dc.b $00
[000c627d]                           dc.b $00
[000c627e]                           dc.w $8000
[000c6280]                           dc.w $8756
[000c6282]                           dc.b $00
[000c6283]                           dc.b $00
[000c6284]                           dc.b $00
[000c6285]                           dc.b $00
[000c6286]                           dc.b $00
[000c6287]                           dc.b $00
[000c6288]                           dc.b $00
[000c6289]                           dc.b $00
[000c628a]                           dc.b $00
[000c628b]                           dc.b $00
[000c628c]                           dc.b $00
[000c628d]                           dc.b $00
_51__ED_MENU:
[000c628e]                           dc.b $00
[000c628f]                           dc.b $34
[000c6290]                           dc.w $ffff
[000c6292]                           dc.w $ffff
[000c6294]                           dc.b $00
[000c6295]                           dc.b $18
[000c6296]                           dc.b $00
[000c6297]                           dc.b $00
[000c6298]                           dc.b $00
[000c6299]                           dc.b $08
[000c629a] 000c5626                  dc.l A_ARROWS03
[000c629e]                           dc.b $00
[000c629f]                           dc.b $00
[000c62a0]                           dc.b $00
[000c62a1]                           dc.b $09
[000c62a2]                           dc.b $00
[000c62a3]                           dc.b $17
[000c62a4]                           dc.b $00
[000c62a5]                           dc.b $01
_52__ED_MENU:
[000c62a6]                           dc.b $00
[000c62a7]                           dc.b $36
[000c62a8]                           dc.w $ffff
[000c62aa]                           dc.w $ffff
[000c62ac]                           dc.b $00
[000c62ad]                           dc.b $1c
[000c62ae]                           dc.b $00
[000c62af]                           dc.b $00
[000c62b0]                           dc.w $0100
[000c62b2] 000c448b                  dc.l TEXT_37
[000c62b6]                           dc.b $00
[000c62b7]                           dc.b $00
[000c62b8]                           dc.b $00
[000c62b9]                           dc.b $0a
[000c62ba]                           dc.b $00
[000c62bb]                           dc.b $17
[000c62bc]                           dc.b $00
[000c62bd]                           dc.b $01
_52a_ED_MENU:
[000c62be] 0003e39a                  dc.l Aed_swap
[000c62c2]                           dc.b $00
[000c62c3]                           dc.b $00
[000c62c4]                           dc.b $00
[000c62c5]                           dc.b $00
[000c62c6]                           dc.w $8000
[000c62c8]                           dc.w $8854
[000c62ca]                           dc.b $00
[000c62cb]                           dc.b $00
[000c62cc]                           dc.b $00
[000c62cd]                           dc.b $00
[000c62ce]                           dc.b $00
[000c62cf]                           dc.b $00
[000c62d0]                           dc.b $00
[000c62d1]                           dc.b $00
[000c62d2]                           dc.b $00
[000c62d3]                           dc.b $00
[000c62d4]                           dc.b $00
[000c62d5]                           dc.b $00
_54__ED_MENU:
[000c62d6]                           dc.b $00
[000c62d7]                           dc.b $22
[000c62d8]                           dc.w $ffff
[000c62da]                           dc.w $ffff
[000c62dc]                           dc.b $00
[000c62dd]                           dc.b $1c
[000c62de]                           dc.b $00
[000c62df]                           dc.b $00
[000c62e0]                           dc.w $0100
[000c62e2] 000c4632                  dc.l TEXT_67
[000c62e6]                           dc.b $00
[000c62e7]                           dc.b $00
[000c62e8]                           dc.b $00
[000c62e9]                           dc.b $0b
[000c62ea]                           dc.b $00
[000c62eb]                           dc.b $17
[000c62ec]                           dc.b $00
[000c62ed]                           dc.b $01
_54a_ED_MENU:
[000c62ee] 0003e29c                  dc.l Aed_selall
[000c62f2]                           dc.b $00
[000c62f3]                           dc.b $00
[000c62f4]                           dc.b $00
[000c62f5]                           dc.b $00
[000c62f6]                           dc.w $8000
[000c62f8]                           dc.w $8441
[000c62fa]                           dc.b $00
[000c62fb]                           dc.b $00
[000c62fc]                           dc.b $00
[000c62fd]                           dc.b $00
[000c62fe]                           dc.b $00
[000c62ff]                           dc.b $00
[000c6300]                           dc.b $00
[000c6301]                           dc.b $00
[000c6302]                           dc.b $00
[000c6303]                           dc.b $00
[000c6304]                           dc.b $00
[000c6305]                           dc.b $00
_56__ED_MENU:
[000c6306]                           dc.b $00
[000c6307]                           dc.b $47
[000c6308]                           dc.b $00
[000c6309]                           dc.b $39
[000c630a]                           dc.b $00
[000c630b]                           dc.b $45
[000c630c]                           dc.b $00
[000c630d]                           dc.b $14
[000c630e]                           dc.b $00
[000c630f]                           dc.b $00
[000c6310]                           dc.b $00
[000c6311]                           dc.b $00
[000c6312]                           dc.b $00
[000c6313]                           dc.b $ff
[000c6314]                           dc.w $1101
[000c6316]                           dc.b $00
[000c6317]                           dc.b $1b
[000c6318]                           dc.b $00
[000c6319]                           dc.b $00
[000c631a]                           dc.b $00
[000c631b]                           dc.b $15
[000c631c]                           dc.b $00
[000c631d]                           dc.b $08
_57__ED_MENU:
[000c631e]                           dc.b $00
[000c631f]                           dc.b $3b
[000c6320]                           dc.w $ffff
[000c6322]                           dc.w $ffff
[000c6324]                           dc.b $00
[000c6325]                           dc.b $1c
[000c6326]                           dc.b $00
[000c6327]                           dc.b $00
[000c6328]                           dc.w $0100
[000c632a] 000c4449                  dc.l TEXT_34
[000c632e]                           dc.b $00
[000c632f]                           dc.b $00
[000c6330]                           dc.b $00
[000c6331]                           dc.b $00
[000c6332]                           dc.b $00
[000c6333]                           dc.b $15
[000c6334]                           dc.b $00
[000c6335]                           dc.b $01
_57a_ED_MENU:
[000c6336] 0003d412                  dc.l Aed_find
[000c633a]                           dc.b $00
[000c633b]                           dc.b $00
[000c633c]                           dc.b $00
[000c633d]                           dc.b $00
[000c633e]                           dc.w $8000
[000c6340]                           dc.w $8446
[000c6342]                           dc.b $00
[000c6343]                           dc.b $00
[000c6344]                           dc.b $00
[000c6345]                           dc.b $00
[000c6346]                           dc.b $00
[000c6347]                           dc.b $00
[000c6348]                           dc.b $00
[000c6349]                           dc.b $00
[000c634a]                           dc.b $00
[000c634b]                           dc.b $00
[000c634c]                           dc.b $00
[000c634d]                           dc.b $00
_59__ED_MENU:
[000c634e]                           dc.b $00
[000c634f]                           dc.b $3d
[000c6350]                           dc.w $ffff
[000c6352]                           dc.w $ffff
[000c6354]                           dc.b $00
[000c6355]                           dc.b $1c
[000c6356]                           dc.b $00
[000c6357]                           dc.b $00
[000c6358]                           dc.w $0100
[000c635a] 000c445e                  dc.l TEXT_35
[000c635e]                           dc.b $00
[000c635f]                           dc.b $00
[000c6360]                           dc.b $00
[000c6361]                           dc.b $01
[000c6362]                           dc.b $00
[000c6363]                           dc.b $15
[000c6364]                           dc.b $00
[000c6365]                           dc.b $01
_59a_ED_MENU:
[000c6366] 0003d504                  dc.l Aed_findnext
[000c636a]                           dc.b $00
[000c636b]                           dc.b $00
[000c636c]                           dc.b $00
[000c636d]                           dc.b $00
[000c636e]                           dc.w $8000
[000c6370]                           dc.w $8447
[000c6372]                           dc.b $00
[000c6373]                           dc.b $00
[000c6374]                           dc.b $00
[000c6375]                           dc.b $00
[000c6376]                           dc.b $00
[000c6377]                           dc.b $00
[000c6378]                           dc.b $00
[000c6379]                           dc.b $00
[000c637a]                           dc.b $00
[000c637b]                           dc.b $00
[000c637c]                           dc.b $00
[000c637d]                           dc.b $00
_61__ED_MENU:
[000c637e]                           dc.b $00
[000c637f]                           dc.b $3f
[000c6380]                           dc.w $ffff
[000c6382]                           dc.w $ffff
[000c6384]                           dc.b $00
[000c6385]                           dc.b $1c
[000c6386]                           dc.b $00
[000c6387]                           dc.b $00
[000c6388]                           dc.w $0100
[000c638a] 000c44f0                  dc.l TEXT_44
[000c638e]                           dc.b $00
[000c638f]                           dc.b $00
[000c6390]                           dc.b $00
[000c6391]                           dc.b $02
[000c6392]                           dc.b $00
[000c6393]                           dc.b $15
[000c6394]                           dc.b $00
[000c6395]                           dc.b $01
_61a_ED_MENU:
[000c6396] 0003d514                  dc.l Aed_findsel
[000c639a]                           dc.b $00
[000c639b]                           dc.b $00
[000c639c]                           dc.b $00
[000c639d]                           dc.b $00
[000c639e]                           dc.w $8000
[000c63a0]                           dc.w $8809
[000c63a2]                           dc.b $00
[000c63a3]                           dc.b $00
[000c63a4]                           dc.b $00
[000c63a5]                           dc.b $00
[000c63a6]                           dc.b $00
[000c63a7]                           dc.b $00
[000c63a8]                           dc.b $00
[000c63a9]                           dc.b $00
[000c63aa]                           dc.b $00
[000c63ab]                           dc.b $00
[000c63ac]                           dc.b $00
[000c63ad]                           dc.b $00
_63__ED_MENU:
[000c63ae]                           dc.b $00
[000c63af]                           dc.b $40
[000c63b0]                           dc.w $ffff
[000c63b2]                           dc.w $ffff
[000c63b4]                           dc.b $00
[000c63b5]                           dc.b $18
[000c63b6]                           dc.b $00
[000c63b7]                           dc.b $00
[000c63b8]                           dc.b $00
[000c63b9]                           dc.b $08
[000c63ba] 000c5626                  dc.l A_ARROWS03
[000c63be]                           dc.b $00
[000c63bf]                           dc.b $00
[000c63c0]                           dc.b $00
[000c63c1]                           dc.b $03
[000c63c2]                           dc.b $00
[000c63c3]                           dc.b $15
[000c63c4]                           dc.b $00
[000c63c5]                           dc.b $01
_64__ED_MENU:
[000c63c6]                           dc.b $00
[000c63c7]                           dc.b $42
[000c63c8]                           dc.w $ffff
[000c63ca]                           dc.w $ffff
[000c63cc]                           dc.b $00
[000c63cd]                           dc.b $1c
[000c63ce]                           dc.b $00
[000c63cf]                           dc.b $00
[000c63d0]                           dc.w $0100
[000c63d2] 000c4328                  dc.l TEXT_21
[000c63d6]                           dc.b $00
[000c63d7]                           dc.b $00
[000c63d8]                           dc.b $00
[000c63d9]                           dc.b $04
[000c63da]                           dc.b $00
[000c63db]                           dc.b $15
[000c63dc]                           dc.b $00
[000c63dd]                           dc.b $01
_64a_ED_MENU:
[000c63de] 0003de22                  dc.l Aed_replace
[000c63e2]                           dc.b $00
[000c63e3]                           dc.b $00
[000c63e4]                           dc.b $00
[000c63e5]                           dc.b $00
[000c63e6]                           dc.w $8000
[000c63e8]                           dc.w $8452
[000c63ea]                           dc.b $00
[000c63eb]                           dc.b $00
[000c63ec]                           dc.b $00
[000c63ed]                           dc.b $00
[000c63ee]                           dc.b $00
[000c63ef]                           dc.b $00
[000c63f0]                           dc.b $00
[000c63f1]                           dc.b $00
[000c63f2]                           dc.b $00
[000c63f3]                           dc.b $00
[000c63f4]                           dc.b $00
[000c63f5]                           dc.b $00
_66__ED_MENU:
[000c63f6]                           dc.b $00
[000c63f7]                           dc.b $44
[000c63f8]                           dc.w $ffff
[000c63fa]                           dc.w $ffff
[000c63fc]                           dc.b $00
[000c63fd]                           dc.b $1c
[000c63fe]                           dc.b $00
[000c63ff]                           dc.b $00
[000c6400]                           dc.w $0100
[000c6402] 000c4434                  dc.l TEXT_33
[000c6406]                           dc.b $00
[000c6407]                           dc.b $00
[000c6408]                           dc.b $00
[000c6409]                           dc.b $05
[000c640a]                           dc.b $00
[000c640b]                           dc.b $15
[000c640c]                           dc.b $00
[000c640d]                           dc.b $01
_66a_ED_MENU:
[000c640e] 0003df66                  dc.l Aed_replacenext
[000c6412]                           dc.b $00
[000c6413]                           dc.b $00
[000c6414]                           dc.b $00
[000c6415]                           dc.b $00
[000c6416]                           dc.w $8000
[000c6418]                           dc.w $8454
[000c641a]                           dc.b $00
[000c641b]                           dc.b $00
[000c641c]                           dc.b $00
[000c641d]                           dc.b $00
[000c641e]                           dc.b $00
[000c641f]                           dc.b $00
[000c6420]                           dc.b $00
[000c6421]                           dc.b $00
[000c6422]                           dc.b $00
[000c6423]                           dc.b $00
[000c6424]                           dc.b $00
[000c6425]                           dc.b $00
_68__ED_MENU:
[000c6426]                           dc.b $00
[000c6427]                           dc.b $45
[000c6428]                           dc.w $ffff
[000c642a]                           dc.w $ffff
[000c642c]                           dc.b $00
[000c642d]                           dc.b $18
[000c642e]                           dc.b $00
[000c642f]                           dc.b $00
[000c6430]                           dc.b $00
[000c6431]                           dc.b $08
[000c6432] 000c5626                  dc.l A_ARROWS03
[000c6436]                           dc.b $00
[000c6437]                           dc.b $00
[000c6438]                           dc.b $00
[000c6439]                           dc.b $06
[000c643a]                           dc.b $00
[000c643b]                           dc.b $15
[000c643c]                           dc.b $00
[000c643d]                           dc.b $01
_69__ED_MENU:
[000c643e]                           dc.b $00
[000c643f]                           dc.b $38
[000c6440]                           dc.w $ffff
[000c6442]                           dc.w $ffff
[000c6444]                           dc.b $00
[000c6445]                           dc.b $1c
[000c6446]                           dc.b $00
[000c6447]                           dc.b $00
[000c6448]                           dc.w $0100
[000c644a] 000c4262                  dc.l TEXT_08
[000c644e]                           dc.b $00
[000c644f]                           dc.b $00
[000c6450]                           dc.b $00
[000c6451]                           dc.b $07
[000c6452]                           dc.b $00
[000c6453]                           dc.b $15
[000c6454]                           dc.b $00
[000c6455]                           dc.b $01
_69a_ED_MENU:
[000c6456] 0003d72a                  dc.l Aed_gotoline
[000c645a]                           dc.b $00
[000c645b]                           dc.b $00
[000c645c]                           dc.b $00
[000c645d]                           dc.b $00
[000c645e]                           dc.w $8000
[000c6460]                           dc.w $844c
[000c6462]                           dc.b $00
[000c6463]                           dc.b $00
[000c6464]                           dc.b $00
[000c6465]                           dc.b $00
[000c6466]                           dc.b $00
[000c6467]                           dc.b $00
[000c6468]                           dc.b $00
[000c6469]                           dc.b $00
[000c646a]                           dc.b $00
[000c646b]                           dc.b $00
[000c646c]                           dc.b $00
[000c646d]                           dc.b $00
_71__ED_MENU:
[000c646e]                           dc.b $00
[000c646f]                           dc.b $08
[000c6470]                           dc.b $00
[000c6471]                           dc.b $48
[000c6472]                           dc.b $00
[000c6473]                           dc.b $51
[000c6474]                           dc.b $00
[000c6475]                           dc.b $14
[000c6476]                           dc.b $00
[000c6477]                           dc.b $00
[000c6478]                           dc.b $00
[000c6479]                           dc.b $00
[000c647a]                           dc.b $00
[000c647b]                           dc.b $ff
[000c647c]                           dc.w $1101
[000c647e]                           dc.b $00
[000c647f]                           dc.b $23
[000c6480]                           dc.b $00
[000c6481]                           dc.b $00
[000c6482]                           dc.b $00
[000c6483]                           dc.b $18
[000c6484]                           dc.b $00
[000c6485]                           dc.b $06
_72__ED_MENU:
[000c6486]                           dc.b $00
[000c6487]                           dc.b $4a
[000c6488]                           dc.w $ffff
[000c648a]                           dc.w $ffff
[000c648c]                           dc.b $00
[000c648d]                           dc.b $1c
[000c648e]                           dc.b $00
[000c648f]                           dc.b $00
[000c6490]                           dc.w $0100
[000c6492] 000c4520                  dc.l TEXT_46
[000c6496]                           dc.b $00
[000c6497]                           dc.b $00
[000c6498]                           dc.b $00
[000c6499]                           dc.b $00
[000c649a]                           dc.b $00
[000c649b]                           dc.b $18
[000c649c]                           dc.b $00
[000c649d]                           dc.b $01
_72a_ED_MENU:
[000c649e] 0003e6e8                  dc.l Aed_wrap
[000c64a2]                           dc.b $00
[000c64a3]                           dc.b $00
[000c64a4]                           dc.b $00
[000c64a5]                           dc.b $00
[000c64a6]                           dc.w $8000
[000c64a8]                           dc.w $8855
[000c64aa]                           dc.b $00
[000c64ab]                           dc.b $00
[000c64ac]                           dc.b $00
[000c64ad]                           dc.b $00
[000c64ae]                           dc.b $00
[000c64af]                           dc.b $00
[000c64b0]                           dc.b $00
[000c64b1]                           dc.b $00
[000c64b2]                           dc.b $00
[000c64b3]                           dc.b $00
[000c64b4]                           dc.b $00
[000c64b5]                           dc.b $00
_74__ED_MENU:
[000c64b6]                           dc.b $00
[000c64b7]                           dc.b $4c
[000c64b8]                           dc.w $ffff
[000c64ba]                           dc.w $ffff
[000c64bc]                           dc.b $00
[000c64bd]                           dc.b $1c
[000c64be]                           dc.b $00
[000c64bf]                           dc.b $00
[000c64c0]                           dc.w $0100
[000c64c2] 000c4549                  dc.l TEXT_48
[000c64c6]                           dc.b $00
[000c64c7]                           dc.b $00
[000c64c8]                           dc.b $00
[000c64c9]                           dc.b $01
[000c64ca]                           dc.b $00
[000c64cb]                           dc.b $18
[000c64cc]                           dc.b $00
[000c64cd]                           dc.b $01
_74a_ED_MENU:
[000c64ce] 0003f146                  dc.l Aed_fkey
[000c64d2]                           dc.b $00
[000c64d3]                           dc.b $00
[000c64d4]                           dc.b $00
[000c64d5]                           dc.b $00
[000c64d6]                           dc.w $8000
[000c64d8]                           dc.w $8846
[000c64da]                           dc.b $00
[000c64db]                           dc.b $00
[000c64dc]                           dc.b $00
[000c64dd]                           dc.b $00
[000c64de]                           dc.b $00
[000c64df]                           dc.b $00
[000c64e0]                           dc.b $00
[000c64e1]                           dc.b $00
[000c64e2]                           dc.b $00
[000c64e3]                           dc.b $00
[000c64e4]                           dc.b $00
[000c64e5]                           dc.b $00
_76__ED_MENU:
[000c64e6]                           dc.b $00
[000c64e7]                           dc.b $4e
[000c64e8]                           dc.w $ffff
[000c64ea]                           dc.w $ffff
[000c64ec]                           dc.b $00
[000c64ed]                           dc.b $1c
[000c64ee]                           dc.b $00
[000c64ef]                           dc.b $00
[000c64f0]                           dc.w $0100
[000c64f2] 000c44c1                  dc.l TEXT_40
[000c64f6]                           dc.b $00
[000c64f7]                           dc.b $00
[000c64f8]                           dc.b $00
[000c64f9]                           dc.b $02
[000c64fa]                           dc.b $00
[000c64fb]                           dc.b $18
[000c64fc]                           dc.b $00
[000c64fd]                           dc.b $01
_76a_ED_MENU:
[000c64fe] 0003d5b8                  dc.l Aed_font
[000c6502]                           dc.b $00
[000c6503]                           dc.b $00
[000c6504]                           dc.b $00
[000c6505]                           dc.b $00
[000c6506]                           dc.w $8000
[000c6508]                           dc.w $8853
[000c650a]                           dc.b $00
[000c650b]                           dc.b $00
[000c650c]                           dc.b $00
[000c650d]                           dc.b $00
[000c650e]                           dc.b $00
[000c650f]                           dc.b $00
[000c6510]                           dc.b $00
[000c6511]                           dc.b $00
[000c6512]                           dc.b $00
[000c6513]                           dc.b $00
[000c6514]                           dc.b $00
[000c6515]                           dc.b $00
_78__ED_MENU:
[000c6516]                           dc.b $00
[000c6517]                           dc.b $50
[000c6518]                           dc.w $ffff
[000c651a]                           dc.w $ffff
[000c651c]                           dc.b $00
[000c651d]                           dc.b $1c
[000c651e]                           dc.b $00
[000c651f]                           dc.b $00
[000c6520]                           dc.w $0100
[000c6522] 000c4473                  dc.l TEXT_36
[000c6526]                           dc.b $00
[000c6527]                           dc.b $00
[000c6528]                           dc.b $00
[000c6529]                           dc.b $03
[000c652a]                           dc.b $00
[000c652b]                           dc.b $18
[000c652c]                           dc.b $00
[000c652d]                           dc.b $01
_78a_ED_MENU:
[000c652e] 0003e49c                  dc.l Aed_option
[000c6532]                           dc.b $00
[000c6533]                           dc.b $00
[000c6534]                           dc.b $00
[000c6535]                           dc.b $00
[000c6536]                           dc.w $8000
[000c6538]                           dc.w $884f
[000c653a]                           dc.b $00
[000c653b]                           dc.b $00
[000c653c]                           dc.b $00
[000c653d]                           dc.b $00
[000c653e]                           dc.b $00
[000c653f]                           dc.b $00
[000c6540]                           dc.b $00
[000c6541]                           dc.b $00
[000c6542]                           dc.b $00
[000c6543]                           dc.b $00
[000c6544]                           dc.b $00
[000c6545]                           dc.b $00
_80__ED_MENU:
[000c6546]                           dc.b $00
[000c6547]                           dc.b $51
[000c6548]                           dc.w $ffff
[000c654a]                           dc.w $ffff
[000c654c]                           dc.b $00
[000c654d]                           dc.b $18
[000c654e]                           dc.b $00
[000c654f]                           dc.b $00
[000c6550]                           dc.w $0108
[000c6552] 000c5626                  dc.l A_ARROWS03
[000c6556]                           dc.b $00
[000c6557]                           dc.b $00
[000c6558]                           dc.b $00
[000c6559]                           dc.b $04
[000c655a]                           dc.b $00
[000c655b]                           dc.b $18
[000c655c]                           dc.b $00
[000c655d]                           dc.b $01
_81__ED_MENU:
[000c655e]                           dc.b $00
[000c655f]                           dc.b $47
[000c6560]                           dc.w $ffff
[000c6562]                           dc.w $ffff
[000c6564]                           dc.b $00
[000c6565]                           dc.b $1c
[000c6566]                           dc.b $00
[000c6567]                           dc.b $00
[000c6568]                           dc.b $00
[000c6569]                           dc.b $00
[000c656a] 000c42b5                  dc.l TEXT_15
[000c656e]                           dc.b $00
[000c656f]                           dc.b $00
[000c6570]                           dc.b $00
[000c6571]                           dc.b $05
[000c6572]                           dc.b $00
[000c6573]                           dc.b $18
[000c6574]                           dc.b $00
[000c6575]                           dc.b $01
_81a_ED_MENU:
[000c6576] 0003e91a                  dc.l Aed_saveoptions
[000c657a]                           dc.b $00
[000c657b]                           dc.b $00
[000c657c]                           dc.b $00
[000c657d]                           dc.b $00
[000c657e]                           dc.w $8020
[000c6580]                           dc.b $00
[000c6581]                           dc.b $00
[000c6582]                           dc.b $00
[000c6583]                           dc.b $00
[000c6584]                           dc.b $00
[000c6585]                           dc.b $00
[000c6586]                           dc.b $00
[000c6587]                           dc.b $00
[000c6588]                           dc.b $00
[000c6589]                           dc.b $00
[000c658a]                           dc.b $00
[000c658b]                           dc.b $00
[000c658c]                           dc.b $00
[000c658d]                           dc.b $00
INFOBOX:
[000c658e]                           dc.w $ffff
[000c6590]                           dc.b $00
[000c6591]                           dc.b $01
[000c6592]                           dc.b $00
[000c6593]                           dc.b $01
[000c6594]                           dc.b $00
[000c6595]                           dc.b $19
[000c6596]                           dc.b $00
[000c6597]                           dc.b $00
[000c6598]                           dc.b $00
[000c6599]                           dc.b $00
[000c659a]                           dc.b $00
[000c659b]                           dc.b $ff
[000c659c]                           dc.w $1141
[000c659e]                           dc.b $00
[000c659f]                           dc.b $00
[000c65a0]                           dc.b $00
[000c65a1]                           dc.b $00
[000c65a2]                           dc.b $00
[000c65a3]                           dc.b $1c
[000c65a4]                           dc.b $00
[000c65a5]                           dc.b $07
_01_INFOBOX:
[000c65a6]                           dc.b $00
[000c65a7]                           dc.b $00
[000c65a8]                           dc.b $00
[000c65a9]                           dc.b $02
[000c65aa]                           dc.b $00
[000c65ab]                           dc.b $02
[000c65ac]                           dc.b $00
[000c65ad]                           dc.b $18
[000c65ae]                           dc.b $00
[000c65af]                           dc.b $40
[000c65b0]                           dc.b $00
[000c65b1]                           dc.b $10
[000c65b2] 000c5486                  dc.l A_3DBUTTON01
[000c65b6]                           dc.b $00
[000c65b7]                           dc.b $00
[000c65b8]                           dc.b $00
[000c65b9]                           dc.b $00
[000c65ba]                           dc.b $00
[000c65bb]                           dc.b $1c
[000c65bc]                           dc.b $00
[000c65bd]                           dc.b $07
_02_INFOBOX:
[000c65be]                           dc.b $00
[000c65bf]                           dc.b $01
[000c65c0]                           dc.b $00
[000c65c1]                           dc.b $03
[000c65c2]                           dc.b $00
[000c65c3]                           dc.b $03
[000c65c4]                           dc.b $00
[000c65c5]                           dc.b $18
[000c65c6]                           dc.b $00
[000c65c7]                           dc.b $40
[000c65c8]                           dc.b $00
[000c65c9]                           dc.b $00
[000c65ca] 000c54c6                  dc.l A_3DBUTTON03
[000c65ce]                           dc.b $00
[000c65cf]                           dc.b $02
[000c65d0]                           dc.b $00
[000c65d1]                           dc.b $01
[000c65d2]                           dc.b $00
[000c65d3]                           dc.b $18
[000c65d4]                           dc.b $00
[000c65d5]                           dc.b $05
_03_INFOBOX:
[000c65d6]                           dc.b $00
[000c65d7]                           dc.b $02
[000c65d8]                           dc.b $00
[000c65d9]                           dc.b $04
[000c65da]                           dc.b $00
[000c65db]                           dc.b $04
[000c65dc]                           dc.b $00
[000c65dd]                           dc.b $14
[000c65de]                           dc.b $00
[000c65df]                           dc.b $40
[000c65e0]                           dc.b $00
[000c65e1]                           dc.b $00
[000c65e2]                           dc.b $00
[000c65e3]                           dc.b $00
[000c65e4]                           dc.w $0101
[000c65e6]                           dc.b $00
[000c65e7]                           dc.b $00
[000c65e8]                           dc.b $00
[000c65e9]                           dc.b $00
[000c65ea]                           dc.b $00
[000c65eb]                           dc.b $18
[000c65ec]                           dc.b $00
[000c65ed]                           dc.b $05
_04_INFOBOX:
[000c65ee]                           dc.b $00
[000c65ef]                           dc.b $03
[000c65f0]                           dc.w $ffff
[000c65f2]                           dc.w $ffff
[000c65f4]                           dc.b $00
[000c65f5]                           dc.b $18
[000c65f6]                           dc.b $00
[000c65f7]                           dc.b $60
[000c65f8]                           dc.b $00
[000c65f9]                           dc.b $00
[000c65fa] 000c5866                  dc.l A_FTEXT02
[000c65fe]                           dc.b $00
[000c65ff]                           dc.b $01
[000c6600]                           dc.b $00
[000c6601]                           dc.b $00
[000c6602]                           dc.b $00
[000c6603]                           dc.b $16
[000c6604]                           dc.b $00
[000c6605]                           dc.b $05
_ED_FIND:
[000c6606]                           dc.w $ffff
[000c6608]                           dc.b $00
[000c6609]                           dc.b $01
[000c660a]                           dc.b $00
[000c660b]                           dc.b $01
[000c660c]                           dc.b $00
[000c660d]                           dc.b $19
[000c660e]                           dc.b $00
[000c660f]                           dc.b $00
[000c6610]                           dc.b $00
[000c6611]                           dc.b $00
[000c6612]                           dc.b $00
[000c6613]                           dc.b $ff
[000c6614]                           dc.w $1141
[000c6616]                           dc.b $00
[000c6617]                           dc.b $00
[000c6618]                           dc.b $00
[000c6619]                           dc.b $00
[000c661a]                           dc.b $00
[000c661b]                           dc.b $2c
[000c661c]                           dc.b $00
[000c661d]                           dc.b $0a
_01__ED_FIND:
[000c661e]                           dc.b $00
[000c661f]                           dc.b $00
[000c6620]                           dc.b $00
[000c6621]                           dc.b $02
[000c6622]                           dc.b $00
[000c6623]                           dc.b $0d
[000c6624]                           dc.b $00
[000c6625]                           dc.b $18
[000c6626]                           dc.b $00
[000c6627]                           dc.b $40
[000c6628]                           dc.b $00
[000c6629]                           dc.b $10
[000c662a] 000c5486                  dc.l A_3DBUTTON01
[000c662e]                           dc.b $00
[000c662f]                           dc.b $00
[000c6630]                           dc.b $00
[000c6631]                           dc.b $00
[000c6632]                           dc.b $00
[000c6633]                           dc.b $2c
[000c6634]                           dc.b $00
[000c6635]                           dc.b $0a
_02__ED_FIND:
[000c6636]                           dc.b $00
[000c6637]                           dc.b $04
[000c6638]                           dc.b $00
[000c6639]                           dc.b $03
[000c663a]                           dc.b $00
[000c663b]                           dc.b $03
[000c663c]                           dc.b $00
[000c663d]                           dc.b $18
[000c663e]                           dc.b $00
[000c663f]                           dc.b $40
[000c6640]                           dc.b $00
[000c6641]                           dc.b $00
[000c6642] 000c5886                  dc.l A_INNERFRAME02
[000c6646]                           dc.b $00
[000c6647]                           dc.b $01
[000c6648]                           dc.b $00
[000c6649]                           dc.b $01
[000c664a]                           dc.b $00
[000c664b]                           dc.b $2a
[000c664c]                           dc.b $00
[000c664d]                           dc.b $03
_03__ED_FIND:
[000c664e]                           dc.b $00
[000c664f]                           dc.b $02
[000c6650]                           dc.w $ffff
[000c6652]                           dc.w $ffff
[000c6654]                           dc.b $00
[000c6655]                           dc.b $18
[000c6656]                           dc.b $00
[000c6657]                           dc.b $08
[000c6658]                           dc.b $00
[000c6659]                           dc.b $10
[000c665a] 000c5666                  dc.l A_BOXED02
[000c665e]                           dc.b $00
[000c665f]                           dc.b $01
[000c6660]                           dc.b $00
[000c6661]                           dc.b $01
[000c6662]                           dc.b $00
[000c6663]                           dc.b $28
[000c6664]                           dc.b $00
[000c6665]                           dc.b $01
_04__ED_FIND:
[000c6666]                           dc.b $00
[000c6667]                           dc.b $0b
[000c6668]                           dc.b $00
[000c6669]                           dc.b $05
[000c666a]                           dc.b $00
[000c666b]                           dc.b $09
[000c666c]                           dc.b $00
[000c666d]                           dc.b $18
[000c666e]                           dc.b $00
[000c666f]                           dc.b $40
[000c6670]                           dc.b $00
[000c6671]                           dc.b $00
[000c6672] 000c58a6                  dc.l A_INNERFRAME03
[000c6676]                           dc.b $00
[000c6677]                           dc.b $01
[000c6678]                           dc.b $00
[000c6679]                           dc.b $04
[000c667a]                           dc.b $00
[000c667b]                           dc.b $2a
[000c667c]                           dc.b $00
[000c667d]                           dc.b $03
_05__ED_FIND:
[000c667e]                           dc.b $00
[000c667f]                           dc.b $07
[000c6680]                           dc.w $ffff
[000c6682]                           dc.w $ffff
[000c6684]                           dc.b $00
[000c6685]                           dc.b $18
[000c6686]                           dc.b $00
[000c6687]                           dc.b $01
[000c6688]                           dc.b $00
[000c6689]                           dc.b $01
[000c668a] 000c57a6                  dc.l A_CHECKBOX05
[000c668e]                           dc.b $00
[000c668f]                           dc.b $01
[000c6690]                           dc.b $00
[000c6691]                           dc.b $01
[000c6692]                           dc.b $00
[000c6693]                           dc.b $0c
[000c6694]                           dc.b $00
[000c6695]                           dc.b $01
_05a_ED_FIND:
[000c6696]                           dc.b $00
[000c6697]                           dc.b $00
[000c6698]                           dc.b $00
[000c6699]                           dc.b $00
[000c669a]                           dc.b $00
[000c669b]                           dc.b $00
[000c669c]                           dc.b $00
[000c669d]                           dc.b $00
[000c669e]                           dc.w $8000
[000c66a0]                           dc.w $8852
[000c66a2]                           dc.b $00
[000c66a3]                           dc.b $00
[000c66a4]                           dc.b $00
[000c66a5]                           dc.b $00
[000c66a6]                           dc.b $00
[000c66a7]                           dc.b $00
[000c66a8]                           dc.b $00
[000c66a9]                           dc.b $00
[000c66aa]                           dc.b $00
[000c66ab]                           dc.b $00
[000c66ac]                           dc.b $00
[000c66ad]                           dc.b $00
_07__ED_FIND:
[000c66ae]                           dc.b $00
[000c66af]                           dc.b $09
[000c66b0]                           dc.w $ffff
[000c66b2]                           dc.w $ffff
[000c66b4]                           dc.b $00
[000c66b5]                           dc.b $18
[000c66b6]                           dc.b $00
[000c66b7]                           dc.b $01
[000c66b8]                           dc.b $00
[000c66b9]                           dc.b $01
[000c66ba] 000c5766                  dc.l A_CHECKBOX03
[000c66be]                           dc.b $00
[000c66bf]                           dc.b $10
[000c66c0]                           dc.b $00
[000c66c1]                           dc.b $01
[000c66c2]                           dc.b $00
[000c66c3]                           dc.b $0a
[000c66c4]                           dc.b $00
[000c66c5]                           dc.b $01
_07a_ED_FIND:
[000c66c6]                           dc.b $00
[000c66c7]                           dc.b $00
[000c66c8]                           dc.b $00
[000c66c9]                           dc.b $00
[000c66ca]                           dc.b $00
[000c66cb]                           dc.b $00
[000c66cc]                           dc.b $00
[000c66cd]                           dc.b $00
[000c66ce]                           dc.w $8000
[000c66d0]                           dc.w $8842
[000c66d2]                           dc.b $00
[000c66d3]                           dc.b $00
[000c66d4]                           dc.b $00
[000c66d5]                           dc.b $00
[000c66d6]                           dc.b $00
[000c66d7]                           dc.b $00
[000c66d8]                           dc.b $00
[000c66d9]                           dc.b $00
[000c66da]                           dc.b $00
[000c66db]                           dc.b $00
[000c66dc]                           dc.b $00
[000c66dd]                           dc.b $00
_09__ED_FIND:
[000c66de]                           dc.b $00
[000c66df]                           dc.b $04
[000c66e0]                           dc.w $ffff
[000c66e2]                           dc.w $ffff
[000c66e4]                           dc.b $00
[000c66e5]                           dc.b $18
[000c66e6]                           dc.b $00
[000c66e7]                           dc.b $01
[000c66e8]                           dc.b $00
[000c66e9]                           dc.b $01
[000c66ea] 000c57c6                  dc.l A_CHECKBOX06
[000c66ee]                           dc.b $00
[000c66ef]                           dc.b $1d
[000c66f0]                           dc.b $00
[000c66f1]                           dc.b $01
[000c66f2]                           dc.b $00
[000c66f3]                           dc.b $0c
[000c66f4]                           dc.b $00
[000c66f5]                           dc.b $01
_09a_ED_FIND:
[000c66f6]                           dc.b $00
[000c66f7]                           dc.b $00
[000c66f8]                           dc.b $00
[000c66f9]                           dc.b $00
[000c66fa]                           dc.b $00
[000c66fb]                           dc.b $00
[000c66fc]                           dc.b $00
[000c66fd]                           dc.b $00
[000c66fe]                           dc.w $8000
[000c6700]                           dc.w $8857
[000c6702]                           dc.b $00
[000c6703]                           dc.b $00
[000c6704]                           dc.b $00
[000c6705]                           dc.b $00
[000c6706]                           dc.b $00
[000c6707]                           dc.b $00
[000c6708]                           dc.b $00
[000c6709]                           dc.b $00
[000c670a]                           dc.b $00
[000c670b]                           dc.b $00
[000c670c]                           dc.b $00
[000c670d]                           dc.b $00
_11__ED_FIND:
[000c670e]                           dc.b $00
[000c670f]                           dc.b $0d
[000c6710]                           dc.w $ffff
[000c6712]                           dc.w $ffff
[000c6714]                           dc.b $00
[000c6715]                           dc.b $18
[000c6716]                           dc.w $4007
[000c6718]                           dc.b $00
[000c6719]                           dc.b $10
[000c671a] 000c5506                  dc.l A_3DBUTTON05
[000c671e]                           dc.b $00
[000c671f]                           dc.b $09
[000c6720]                           dc.b $00
[000c6721]                           dc.b $07
[000c6722]                           dc.b $00
[000c6723]                           dc.b $0c
[000c6724]                           dc.b $00
[000c6725]                           dc.b $02
_11a_ED_FIND:
[000c6726]                           dc.b $00
[000c6727]                           dc.b $00
[000c6728]                           dc.b $00
[000c6729]                           dc.b $00
[000c672a]                           dc.b $00
[000c672b]                           dc.b $00
[000c672c]                           dc.b $00
[000c672d]                           dc.b $00
[000c672e]                           dc.w $8000
[000c6730]                           dc.w $884f
[000c6732]                           dc.b $00
[000c6733]                           dc.b $00
[000c6734]                           dc.b $00
[000c6735]                           dc.b $00
[000c6736]                           dc.b $00
[000c6737]                           dc.b $00
[000c6738]                           dc.b $00
[000c6739]                           dc.b $00
[000c673a]                           dc.b $00
[000c673b]                           dc.b $00
[000c673c]                           dc.b $00
[000c673d]                           dc.b $00
_13__ED_FIND:
[000c673e]                           dc.b $00
[000c673f]                           dc.b $01
[000c6740]                           dc.w $ffff
[000c6742]                           dc.w $ffff
[000c6744]                           dc.b $00
[000c6745]                           dc.b $18
[000c6746]                           dc.w $4005
[000c6748]                           dc.b $00
[000c6749]                           dc.b $10
[000c674a] 000c5546                  dc.l A_3DBUTTON07
[000c674e]                           dc.b $00
[000c674f]                           dc.b $17
[000c6750]                           dc.b $00
[000c6751]                           dc.b $07
[000c6752]                           dc.b $00
[000c6753]                           dc.b $0c
[000c6754]                           dc.b $00
[000c6755]                           dc.b $02
_13a_ED_FIND:
[000c6756]                           dc.b $00
[000c6757]                           dc.b $00
[000c6758]                           dc.b $00
[000c6759]                           dc.b $00
[000c675a]                           dc.b $00
[000c675b]                           dc.b $00
[000c675c]                           dc.b $00
[000c675d]                           dc.b $00
[000c675e]                           dc.w $8020
[000c6760]                           dc.w $8841
[000c6762]                           dc.b $00
[000c6763]                           dc.b $00
[000c6764]                           dc.b $00
[000c6765]                           dc.b $00
[000c6766]                           dc.b $00
[000c6767]                           dc.b $00
[000c6768]                           dc.b $00
[000c6769]                           dc.b $00
[000c676a]                           dc.b $00
[000c676b]                           dc.b $00
[000c676c]                           dc.b $00
[000c676d]                           dc.b $00
_ED_GOTOLINE:
[000c676e]                           dc.w $ffff
[000c6770]                           dc.b $00
[000c6771]                           dc.b $01
[000c6772]                           dc.b $00
[000c6773]                           dc.b $01
[000c6774]                           dc.b $00
[000c6775]                           dc.b $19
[000c6776]                           dc.b $00
[000c6777]                           dc.b $00
[000c6778]                           dc.b $00
[000c6779]                           dc.b $00
[000c677a]                           dc.b $00
[000c677b]                           dc.b $ff
[000c677c]                           dc.w $1141
[000c677e]                           dc.b $00
[000c677f]                           dc.b $00
[000c6780]                           dc.b $00
[000c6781]                           dc.b $00
[000c6782]                           dc.b $00
[000c6783]                           dc.b $18
[000c6784]                           dc.b $00
[000c6785]                           dc.b $06
_01__ED_GOTOLINE:
[000c6786]                           dc.b $00
[000c6787]                           dc.b $00
[000c6788]                           dc.b $00
[000c6789]                           dc.b $02
[000c678a]                           dc.b $00
[000c678b]                           dc.b $07
[000c678c]                           dc.b $00
[000c678d]                           dc.b $18
[000c678e]                           dc.b $00
[000c678f]                           dc.b $40
[000c6790]                           dc.b $00
[000c6791]                           dc.b $10
[000c6792] 000c5586                  dc.l A_3DBUTTON12
[000c6796]                           dc.b $00
[000c6797]                           dc.b $00
[000c6798]                           dc.b $00
[000c6799]                           dc.b $00
[000c679a]                           dc.b $00
[000c679b]                           dc.b $18
[000c679c]                           dc.b $00
[000c679d]                           dc.b $06
_02__ED_GOTOLINE:
[000c679e]                           dc.b $00
[000c679f]                           dc.b $05
[000c67a0]                           dc.b $00
[000c67a1]                           dc.b $03
[000c67a2]                           dc.b $00
[000c67a3]                           dc.b $04
[000c67a4]                           dc.b $00
[000c67a5]                           dc.b $18
[000c67a6]                           dc.b $00
[000c67a7]                           dc.b $40
[000c67a8]                           dc.b $00
[000c67a9]                           dc.b $00
[000c67aa] 000c58c6                  dc.l A_INNERFRAME04
[000c67ae]                           dc.b $00
[000c67af]                           dc.b $01
[000c67b0]                           dc.b $00
[000c67b1]                           dc.b $00
[000c67b2]                           dc.b $00
[000c67b3]                           dc.b $16
[000c67b4]                           dc.b $00
[000c67b5]                           dc.b $03
_03__ED_GOTOLINE:
[000c67b6]                           dc.b $00
[000c67b7]                           dc.b $04
[000c67b8]                           dc.w $ffff
[000c67ba]                           dc.w $ffff
[000c67bc]                           dc.b $00
[000c67bd]                           dc.b $1c
[000c67be]                           dc.b $00
[000c67bf]                           dc.b $00
[000c67c0]                           dc.b $00
[000c67c1]                           dc.b $00
[000c67c2] 000c442d                  dc.l TEXT_32
[000c67c6]                           dc.b $00
[000c67c7]                           dc.b $05
[000c67c8]                           dc.b $00
[000c67c9]                           dc.b $01
[000c67ca]                           dc.b $00
[000c67cb]                           dc.b $06
[000c67cc]                           dc.b $00
[000c67cd]                           dc.b $01
_04__ED_GOTOLINE:
[000c67ce]                           dc.b $00
[000c67cf]                           dc.b $02
[000c67d0]                           dc.w $ffff
[000c67d2]                           dc.w $ffff
[000c67d4]                           dc.b $00
[000c67d5]                           dc.b $18
[000c67d6]                           dc.b $00
[000c67d7]                           dc.b $08
[000c67d8]                           dc.b $00
[000c67d9]                           dc.b $10
[000c67da] 000c5686                  dc.l A_BOXED03
[000c67de]                           dc.b $00
[000c67df]                           dc.b $0c
[000c67e0]                           dc.b $00
[000c67e1]                           dc.b $01
[000c67e2]                           dc.b $00
[000c67e3]                           dc.b $05
[000c67e4]                           dc.b $00
[000c67e5]                           dc.b $01
_05__ED_GOTOLINE:
[000c67e6]                           dc.b $00
[000c67e7]                           dc.b $07
[000c67e8]                           dc.w $ffff
[000c67ea]                           dc.w $ffff
[000c67ec]                           dc.b $00
[000c67ed]                           dc.b $18
[000c67ee]                           dc.w $4007
[000c67f0]                           dc.b $00
[000c67f1]                           dc.b $10
[000c67f2] 000c5506                  dc.l A_3DBUTTON05
[000c67f6]                           dc.b $00
[000c67f7]                           dc.b $01
[000c67f8]                           dc.b $00
[000c67f9]                           dc.b $03
[000c67fa]                           dc.b $00
[000c67fb]                           dc.b $0a
[000c67fc]                           dc.b $00
[000c67fd]                           dc.b $02
_05a_ED_GOTOLINE:
[000c67fe]                           dc.b $00
[000c67ff]                           dc.b $00
[000c6800]                           dc.b $00
[000c6801]                           dc.b $00
[000c6802]                           dc.b $00
[000c6803]                           dc.b $00
[000c6804]                           dc.b $00
[000c6805]                           dc.b $00
[000c6806]                           dc.w $8000
[000c6808]                           dc.w $884f
[000c680a]                           dc.b $00
[000c680b]                           dc.b $00
[000c680c]                           dc.b $00
[000c680d]                           dc.b $00
[000c680e]                           dc.b $00
[000c680f]                           dc.b $00
[000c6810]                           dc.b $00
[000c6811]                           dc.b $00
[000c6812]                           dc.b $00
[000c6813]                           dc.b $00
[000c6814]                           dc.b $00
[000c6815]                           dc.b $00
_07__ED_GOTOLINE:
[000c6816]                           dc.b $00
[000c6817]                           dc.b $01
[000c6818]                           dc.w $ffff
[000c681a]                           dc.w $ffff
[000c681c]                           dc.b $00
[000c681d]                           dc.b $18
[000c681e]                           dc.w $4005
[000c6820]                           dc.b $00
[000c6821]                           dc.b $10
[000c6822] 000c5546                  dc.l A_3DBUTTON07
[000c6826]                           dc.b $00
[000c6827]                           dc.b $0d
[000c6828]                           dc.b $00
[000c6829]                           dc.b $03
[000c682a]                           dc.b $00
[000c682b]                           dc.b $0a
[000c682c]                           dc.b $00
[000c682d]                           dc.b $02
_07a_ED_GOTOLINE:
[000c682e]                           dc.b $00
[000c682f]                           dc.b $00
[000c6830]                           dc.b $00
[000c6831]                           dc.b $00
[000c6832]                           dc.b $00
[000c6833]                           dc.b $00
[000c6834]                           dc.b $00
[000c6835]                           dc.b $00
[000c6836]                           dc.w $8020
[000c6838]                           dc.w $8841
[000c683a]                           dc.b $00
[000c683b]                           dc.b $00
[000c683c]                           dc.b $00
[000c683d]                           dc.b $00
[000c683e]                           dc.b $00
[000c683f]                           dc.b $00
[000c6840]                           dc.b $00
[000c6841]                           dc.b $00
[000c6842]                           dc.b $00
[000c6843]                           dc.b $00
[000c6844]                           dc.b $00
[000c6845]                           dc.b $00
_ED_INFO:
[000c6846]                           dc.w $ffff
[000c6848]                           dc.b $00
[000c6849]                           dc.b $01
[000c684a]                           dc.b $00
[000c684b]                           dc.b $01
[000c684c]                           dc.b $00
[000c684d]                           dc.b $19
[000c684e]                           dc.b $00
[000c684f]                           dc.b $00
[000c6850]                           dc.b $00
[000c6851]                           dc.b $00
[000c6852]                           dc.b $00
[000c6853]                           dc.b $ff
[000c6854]                           dc.w $1141
[000c6856]                           dc.b $00
[000c6857]                           dc.b $00
[000c6858]                           dc.b $00
[000c6859]                           dc.b $00
[000c685a]                           dc.b $00
[000c685b]                           dc.b $12
[000c685c]                           dc.b $00
[000c685d]                           dc.b $04
_01__ED_INFO:
[000c685e]                           dc.b $00
[000c685f]                           dc.b $00
[000c6860]                           dc.b $00
[000c6861]                           dc.b $02
[000c6862]                           dc.b $00
[000c6863]                           dc.b $02
[000c6864]                           dc.b $00
[000c6865]                           dc.b $18
[000c6866]                           dc.b $00
[000c6867]                           dc.b $00
[000c6868]                           dc.b $00
[000c6869]                           dc.b $10
[000c686a] 000c5486                  dc.l A_3DBUTTON01
[000c686e]                           dc.b $00
[000c686f]                           dc.b $00
[000c6870]                           dc.b $00
[000c6871]                           dc.b $00
[000c6872]                           dc.b $00
[000c6873]                           dc.b $12
[000c6874]                           dc.b $00
[000c6875]                           dc.b $04
_02__ED_INFO:
[000c6876]                           dc.b $00
[000c6877]                           dc.b $01
[000c6878]                           dc.b $00
[000c6879]                           dc.b $03
[000c687a]                           dc.b $00
[000c687b]                           dc.b $06
[000c687c]                           dc.b $00
[000c687d]                           dc.b $18
[000c687e]                           dc.b $00
[000c687f]                           dc.b $40
[000c6880]                           dc.b $00
[000c6881]                           dc.b $00
[000c6882] 000c58c6                  dc.l A_INNERFRAME04
[000c6886]                           dc.b $00
[000c6887]                           dc.b $01
[000c6888]                           dc.b $00
[000c6889]                           dc.b $00
[000c688a]                           dc.b $00
[000c688b]                           dc.b $10
[000c688c]                           dc.b $00
[000c688d]                           dc.b $04
_03__ED_INFO:
[000c688e]                           dc.b $00
[000c688f]                           dc.b $04
[000c6890]                           dc.w $ffff
[000c6892]                           dc.w $ffff
[000c6894]                           dc.b $00
[000c6895]                           dc.b $1c
[000c6896]                           dc.b $00
[000c6897]                           dc.b $00
[000c6898]                           dc.b $00
[000c6899]                           dc.b $00
[000c689a] 000c424d                  dc.l TEXT_05
[000c689e]                           dc.b $00
[000c689f]                           dc.b $01
[000c68a0]                           dc.b $00
[000c68a1]                           dc.b $01
[000c68a2]                           dc.b $00
[000c68a3]                           dc.b $06
[000c68a4]                           dc.b $00
[000c68a5]                           dc.b $01
_04__ED_INFO:
[000c68a6]                           dc.b $00
[000c68a7]                           dc.b $05
[000c68a8]                           dc.w $ffff
[000c68aa]                           dc.w $ffff
[000c68ac]                           dc.b $00
[000c68ad]                           dc.b $16
[000c68ae]                           dc.b $00
[000c68af]                           dc.b $00
[000c68b0]                           dc.b $00
[000c68b1]                           dc.b $00
[000c68b2] 000c546a                  dc.l TEDINFO_05
[000c68b6]                           dc.b $00
[000c68b7]                           dc.b $08
[000c68b8]                           dc.b $00
[000c68b9]                           dc.b $01
[000c68ba]                           dc.b $00
[000c68bb]                           dc.b $07
[000c68bc]                           dc.b $00
[000c68bd]                           dc.b $01
_05__ED_INFO:
[000c68be]                           dc.b $00
[000c68bf]                           dc.b $06
[000c68c0]                           dc.w $ffff
[000c68c2]                           dc.w $ffff
[000c68c4]                           dc.b $00
[000c68c5]                           dc.b $1c
[000c68c6]                           dc.b $00
[000c68c7]                           dc.b $00
[000c68c8]                           dc.b $00
[000c68c9]                           dc.b $00
[000c68ca] 000c425b                  dc.l TEXT_07
[000c68ce]                           dc.b $00
[000c68cf]                           dc.b $01
[000c68d0]                           dc.b $00
[000c68d1]                           dc.b $02
[000c68d2]                           dc.b $00
[000c68d3]                           dc.b $06
[000c68d4]                           dc.b $00
[000c68d5]                           dc.b $01
_06__ED_INFO:
[000c68d6]                           dc.b $00
[000c68d7]                           dc.b $02
[000c68d8]                           dc.w $ffff
[000c68da]                           dc.w $ffff
[000c68dc]                           dc.b $00
[000c68dd]                           dc.b $16
[000c68de]                           dc.b $00
[000c68df]                           dc.b $20
[000c68e0]                           dc.b $00
[000c68e1]                           dc.b $00
[000c68e2] 000c546a                  dc.l TEDINFO_05
[000c68e6]                           dc.b $00
[000c68e7]                           dc.b $08
[000c68e8]                           dc.b $00
[000c68e9]                           dc.b $02
[000c68ea]                           dc.b $00
[000c68eb]                           dc.b $07
[000c68ec]                           dc.b $00
[000c68ed]                           dc.b $01
_ED_NEWFKEY:
[000c68ee]                           dc.w $ffff
[000c68f0]                           dc.b $00
[000c68f1]                           dc.b $01
[000c68f2]                           dc.b $00
[000c68f3]                           dc.b $0c
[000c68f4]                           dc.b $00
[000c68f5]                           dc.b $18
[000c68f6]                           dc.b $00
[000c68f7]                           dc.b $40
[000c68f8]                           dc.b $00
[000c68f9]                           dc.b $00
[000c68fa] 000c55a6                  dc.l A_3DBUTTON20
[000c68fe]                           dc.b $00
[000c68ff]                           dc.b $00
[000c6900]                           dc.b $00
[000c6901]                           dc.b $00
[000c6902]                           dc.b $00
[000c6903]                           dc.b $25
[000c6904]                           dc.b $00
[000c6905]                           dc.b $08
_01__ED_NEWFKEY:
[000c6906]                           dc.b $00
[000c6907]                           dc.b $02
[000c6908]                           dc.w $ffff
[000c690a]                           dc.w $ffff
[000c690c]                           dc.b $00
[000c690d]                           dc.b $1c
[000c690e]                           dc.b $00
[000c690f]                           dc.b $40
[000c6910]                           dc.b $00
[000c6911]                           dc.b $00
[000c6912] 000c4561                  dc.l TEXT_49
[000c6916]                           dc.b $00
[000c6917]                           dc.b $01
[000c6918]                           dc.w $0800
[000c691a]                           dc.b $00
[000c691b]                           dc.b $06
[000c691c]                           dc.b $00
[000c691d]                           dc.b $01
_02__ED_NEWFKEY:
[000c691e]                           dc.b $00
[000c691f]                           dc.b $04
[000c6920]                           dc.w $ffff
[000c6922]                           dc.w $ffff
[000c6924]                           dc.b $00
[000c6925]                           dc.b $18
[000c6926]                           dc.b $00
[000c6927]                           dc.b $01
[000c6928]                           dc.b $00
[000c6929]                           dc.b $00
[000c692a] 000c5726                  dc.l A_CHECKBOX01
[000c692e]                           dc.b $00
[000c692f]                           dc.b $08
[000c6930]                           dc.w $0800
[000c6932]                           dc.b $00
[000c6933]                           dc.b $08
[000c6934]                           dc.b $00
[000c6935]                           dc.b $01
_02a_ED_NEWFKEY:
[000c6936]                           dc.b $00
[000c6937]                           dc.b $00
[000c6938]                           dc.b $00
[000c6939]                           dc.b $00
[000c693a]                           dc.b $00
[000c693b]                           dc.b $00
[000c693c]                           dc.b $00
[000c693d]                           dc.b $00
[000c693e]                           dc.w $8000
[000c6940]                           dc.w $8853
[000c6942]                           dc.b $00
[000c6943]                           dc.b $00
[000c6944]                           dc.b $00
[000c6945]                           dc.b $00
[000c6946]                           dc.b $00
[000c6947]                           dc.b $00
[000c6948]                           dc.b $00
[000c6949]                           dc.b $00
[000c694a]                           dc.b $00
[000c694b]                           dc.b $00
[000c694c]                           dc.b $00
[000c694d]                           dc.b $00
_04__ED_NEWFKEY:
[000c694e]                           dc.b $00
[000c694f]                           dc.b $06
[000c6950]                           dc.w $ffff
[000c6952]                           dc.w $ffff
[000c6954]                           dc.b $00
[000c6955]                           dc.b $18
[000c6956]                           dc.b $00
[000c6957]                           dc.b $01
[000c6958]                           dc.b $00
[000c6959]                           dc.b $00
[000c695a] 000c5806                  dc.l A_CHECKBOX08
[000c695e]                           dc.b $00
[000c695f]                           dc.b $11
[000c6960]                           dc.w $0800
[000c6962]                           dc.b $00
[000c6963]                           dc.b $0a
[000c6964]                           dc.b $00
[000c6965]                           dc.b $01
_04a_ED_NEWFKEY:
[000c6966]                           dc.b $00
[000c6967]                           dc.b $00
[000c6968]                           dc.b $00
[000c6969]                           dc.b $00
[000c696a]                           dc.b $00
[000c696b]                           dc.b $00
[000c696c]                           dc.b $00
[000c696d]                           dc.b $00
[000c696e]                           dc.w $8000
[000c6970]                           dc.w $8843
[000c6972]                           dc.b $00
[000c6973]                           dc.b $00
[000c6974]                           dc.b $00
[000c6975]                           dc.b $00
[000c6976]                           dc.b $00
[000c6977]                           dc.b $00
[000c6978]                           dc.b $00
[000c6979]                           dc.b $00
[000c697a]                           dc.b $00
[000c697b]                           dc.b $00
[000c697c]                           dc.b $00
[000c697d]                           dc.b $00
_06__ED_NEWFKEY:
[000c697e]                           dc.b $00
[000c697f]                           dc.b $08
[000c6980]                           dc.w $ffff
[000c6982]                           dc.w $ffff
[000c6984]                           dc.b $00
[000c6985]                           dc.b $18
[000c6986]                           dc.b $00
[000c6987]                           dc.b $40
[000c6988]                           dc.b $00
[000c6989]                           dc.b $30
[000c698a] 000c5826                  dc.l A_CYCLE01
[000c698e]                           dc.b $00
[000c698f]                           dc.b $1c
[000c6990]                           dc.w $0800
[000c6992]                           dc.b $00
[000c6993]                           dc.b $08
[000c6994]                           dc.b $00
[000c6995]                           dc.b $01
_06a_ED_NEWFKEY:
[000c6996] 0005c8b6                  dc.l Aus_cycle
[000c699a]                           dc.b $00
[000c699b]                           dc.b $00
[000c699c]                           dc.b $00
[000c699d]                           dc.b $00
[000c699e]                           dc.w $8000
[000c69a0]                           dc.w $8845
[000c69a2]                           dc.b $00
[000c69a3]                           dc.b $00
[000c69a4]                           dc.b $00
[000c69a5]                           dc.b $00
[000c69a6]                           dc.b $00
[000c69a7]                           dc.b $00
[000c69a8]                           dc.b $00
[000c69a9]                           dc.b $00
[000c69aa]                           dc.b $00
[000c69ab]                           dc.b $00
[000c69ac]                           dc.b $00
[000c69ad]                           dc.b $00
_08__ED_NEWFKEY:
[000c69ae]                           dc.b $00
[000c69af]                           dc.b $0a
[000c69b0]                           dc.b $00
[000c69b1]                           dc.b $09
[000c69b2]                           dc.b $00
[000c69b3]                           dc.b $09
[000c69b4]                           dc.b $00
[000c69b5]                           dc.b $18
[000c69b6]                           dc.b $00
[000c69b7]                           dc.b $40
[000c69b8]                           dc.b $00
[000c69b9]                           dc.b $00
[000c69ba] 000c58e6                  dc.l A_INNERFRAME06
[000c69be]                           dc.b $00
[000c69bf]                           dc.b $01
[000c69c0]                           dc.b $00
[000c69c1]                           dc.b $02
[000c69c2]                           dc.b $00
[000c69c3]                           dc.b $23
[000c69c4]                           dc.b $00
[000c69c5]                           dc.b $03
_09__ED_NEWFKEY:
[000c69c6]                           dc.b $00
[000c69c7]                           dc.b $08
[000c69c8]                           dc.w $ffff
[000c69ca]                           dc.w $ffff
[000c69cc]                           dc.b $00
[000c69cd]                           dc.b $18
[000c69ce]                           dc.b $00
[000c69cf]                           dc.b $08
[000c69d0]                           dc.b $00
[000c69d1]                           dc.b $10
[000c69d2] 000c5646                  dc.l A_BOXED01
[000c69d6]                           dc.b $00
[000c69d7]                           dc.b $01
[000c69d8]                           dc.b $00
[000c69d9]                           dc.b $01
[000c69da]                           dc.b $00
[000c69db]                           dc.b $21
[000c69dc]                           dc.b $00
[000c69dd]                           dc.b $01
_10__ED_NEWFKEY:
[000c69de]                           dc.b $00
[000c69df]                           dc.b $0c
[000c69e0]                           dc.w $ffff
[000c69e2]                           dc.w $ffff
[000c69e4]                           dc.b $00
[000c69e5]                           dc.b $18
[000c69e6]                           dc.w $4007
[000c69e8]                           dc.b $00
[000c69e9]                           dc.b $00
[000c69ea] 000c55c6                  dc.l A_3DBUTTON21
[000c69ee]                           dc.b $00
[000c69ef]                           dc.b $06
[000c69f0]                           dc.b $00
[000c69f1]                           dc.b $05
[000c69f2]                           dc.b $00
[000c69f3]                           dc.b $0c
[000c69f4]                           dc.b $00
[000c69f5]                           dc.b $02
_10a_ED_NEWFKEY:
[000c69f6]                           dc.b $00
[000c69f7]                           dc.b $00
[000c69f8]                           dc.b $00
[000c69f9]                           dc.b $00
[000c69fa]                           dc.b $00
[000c69fb]                           dc.b $00
[000c69fc]                           dc.b $00
[000c69fd]                           dc.b $00
[000c69fe]                           dc.w $8000
[000c6a00]                           dc.b $88
[000c6a01]                           dc.b $4f
[000c6a02]                           dc.b $00
[000c6a03]                           dc.b $00
[000c6a04]                           dc.b $00
[000c6a05]                           dc.b $00
[000c6a06]                           dc.b $00
[000c6a07]                           dc.b $00
[000c6a08]                           dc.b $00
[000c6a09]                           dc.b $00
[000c6a0a]                           dc.b $00
[000c6a0b]                           dc.b $00
[000c6a0c]                           dc.b $00
[000c6a0d]                           dc.b $00
_12__ED_NEWFKEY:
[000c6a0e]                           dc.b $00
[000c6a0f]                           dc.b $00
[000c6a10]                           dc.w $ffff
[000c6a12]                           dc.w $ffff
[000c6a14]                           dc.b $00
[000c6a15]                           dc.b $18
[000c6a16]                           dc.w $4005
[000c6a18]                           dc.b $00
[000c6a19]                           dc.b $00
[000c6a1a] 000c54a6                  dc.l A_3DBUTTON02
[000c6a1e]                           dc.b $00
[000c6a1f]                           dc.b $14
[000c6a20]                           dc.b $00
[000c6a21]                           dc.b $05
[000c6a22]                           dc.b $00
[000c6a23]                           dc.b $0c
[000c6a24]                           dc.b $00
[000c6a25]                           dc.b $02
_12a_ED_NEWFKEY:
[000c6a26]                           dc.b $00
[000c6a27]                           dc.b $00
[000c6a28]                           dc.b $00
[000c6a29]                           dc.b $00
[000c6a2a]                           dc.b $00
[000c6a2b]                           dc.b $00
[000c6a2c]                           dc.b $00
[000c6a2d]                           dc.b $00
[000c6a2e]                           dc.w $8020
[000c6a30]                           dc.w $8841
[000c6a32]                           dc.b $00
[000c6a33]                           dc.b $00
[000c6a34]                           dc.b $00
[000c6a35]                           dc.b $00
[000c6a36]                           dc.b $00
[000c6a37]                           dc.b $00
[000c6a38]                           dc.b $00
[000c6a39]                           dc.b $00
[000c6a3a]                           dc.b $00
[000c6a3b]                           dc.b $00
[000c6a3c]                           dc.b $00
[000c6a3d]                           dc.b $00
_ED_OPTION:
[000c6a3e]                           dc.w $ffff
[000c6a40]                           dc.b $00
[000c6a41]                           dc.b $01
[000c6a42]                           dc.b $00
[000c6a43]                           dc.b $01
[000c6a44]                           dc.b $00
[000c6a45]                           dc.b $19
[000c6a46]                           dc.b $00
[000c6a47]                           dc.b $00
[000c6a48]                           dc.b $00
[000c6a49]                           dc.b $00
[000c6a4a]                           dc.b $00
[000c6a4b]                           dc.b $ff
[000c6a4c]                           dc.w $1141
[000c6a4e]                           dc.b $00
[000c6a4f]                           dc.b $00
[000c6a50]                           dc.b $00
[000c6a51]                           dc.b $00
[000c6a52]                           dc.b $00
[000c6a53]                           dc.b $25
[000c6a54]                           dc.b $00
[000c6a55]                           dc.b $0f
_01__ED_OPTION:
[000c6a56]                           dc.b $00
[000c6a57]                           dc.b $00
[000c6a58]                           dc.b $00
[000c6a59]                           dc.b $02
[000c6a5a]                           dc.b $00
[000c6a5b]                           dc.b $18
[000c6a5c]                           dc.b $00
[000c6a5d]                           dc.b $18
[000c6a5e]                           dc.b $00
[000c6a5f]                           dc.b $40
[000c6a60]                           dc.b $00
[000c6a61]                           dc.b $10
[000c6a62] 000c5486                  dc.l A_3DBUTTON01
[000c6a66]                           dc.b $00
[000c6a67]                           dc.b $00
[000c6a68]                           dc.b $00
[000c6a69]                           dc.b $00
[000c6a6a]                           dc.b $00
[000c6a6b]                           dc.b $25
[000c6a6c]                           dc.b $00
[000c6a6d]                           dc.b $0f
_02__ED_OPTION:
[000c6a6e]                           dc.b $00
[000c6a6f]                           dc.b $0e
[000c6a70]                           dc.b $00
[000c6a71]                           dc.b $03
[000c6a72]                           dc.b $00
[000c6a73]                           dc.b $0c
[000c6a74]                           dc.b $00
[000c6a75]                           dc.b $18
[000c6a76]                           dc.b $00
[000c6a77]                           dc.b $40
[000c6a78]                           dc.b $00
[000c6a79]                           dc.b $00
[000c6a7a] 000c5906                  dc.l A_INNERFRAME08
[000c6a7e]                           dc.b $00
[000c6a7f]                           dc.b $01
[000c6a80]                           dc.w $0800
[000c6a82]                           dc.b $00
[000c6a83]                           dc.b $23
[000c6a84]                           dc.b $00
[000c6a85]                           dc.b $07
_03__ED_OPTION:
[000c6a86]                           dc.b $00
[000c6a87]                           dc.b $05
[000c6a88]                           dc.b $00
[000c6a89]                           dc.b $04
[000c6a8a]                           dc.b $00
[000c6a8b]                           dc.b $04
[000c6a8c]                           dc.b $00
[000c6a8d]                           dc.b $1c
[000c6a8e]                           dc.b $00
[000c6a8f]                           dc.b $40
[000c6a90]                           dc.b $00
[000c6a91]                           dc.b $00
[000c6a92] 000c44b9                  dc.l TEXT_39
[000c6a96]                           dc.b $00
[000c6a97]                           dc.b $09
[000c6a98]                           dc.b $00
[000c6a99]                           dc.b $01
[000c6a9a]                           dc.b $00
[000c6a9b]                           dc.b $07
[000c6a9c]                           dc.b $00
[000c6a9d]                           dc.b $01
_04__ED_OPTION:
[000c6a9e]                           dc.b $00
[000c6a9f]                           dc.b $03
[000c6aa0]                           dc.w $ffff
[000c6aa2]                           dc.w $ffff
[000c6aa4]                           dc.b $00
[000c6aa5]                           dc.b $18
[000c6aa6]                           dc.b $00
[000c6aa7]                           dc.b $40
[000c6aa8]                           dc.b $00
[000c6aa9]                           dc.b $00
[000c6aaa] 000c5606                  dc.l A_ARROWS02
[000c6aae]                           dc.b $00
[000c6aaf]                           dc.b $00
[000c6ab0]                           dc.b $00
[000c6ab1]                           dc.b $00
[000c6ab2]                           dc.b $00
[000c6ab3]                           dc.b $01
[000c6ab4]                           dc.b $00
[000c6ab5]                           dc.b $01
_05__ED_OPTION:
[000c6ab6]                           dc.b $00
[000c6ab7]                           dc.b $07
[000c6ab8]                           dc.w $ffff
[000c6aba]                           dc.w $ffff
[000c6abc]                           dc.b $00
[000c6abd]                           dc.b $18
[000c6abe]                           dc.b $00
[000c6abf]                           dc.b $40
[000c6ac0]                           dc.b $00
[000c6ac1]                           dc.b $30
[000c6ac2] 000c5846                  dc.l A_CYCLE02
[000c6ac6]                           dc.b $00
[000c6ac7]                           dc.b $11
[000c6ac8]                           dc.b $00
[000c6ac9]                           dc.b $01
[000c6aca]                           dc.b $00
[000c6acb]                           dc.b $0a
[000c6acc]                           dc.b $00
[000c6acd]                           dc.b $01
_05a_ED_OPTION:
[000c6ace] 0005c8b6                  dc.l Aus_cycle
[000c6ad2]                           dc.b $00
[000c6ad3]                           dc.b $00
[000c6ad4]                           dc.b $00
[000c6ad5]                           dc.b $00
[000c6ad6]                           dc.w $8000
[000c6ad8]                           dc.w $8843
[000c6ada]                           dc.b $00
[000c6adb]                           dc.b $00
[000c6adc]                           dc.b $00
[000c6add]                           dc.b $00
[000c6ade]                           dc.b $00
[000c6adf]                           dc.b $00
[000c6ae0]                           dc.b $00
[000c6ae1]                           dc.b $00
[000c6ae2]                           dc.b $00
[000c6ae3]                           dc.b $00
[000c6ae4]                           dc.b $00
[000c6ae5]                           dc.b $00
_07__ED_OPTION:
[000c6ae6]                           dc.b $00
[000c6ae7]                           dc.b $08
[000c6ae8]                           dc.w $ffff
[000c6aea]                           dc.b $ff
[000c6aeb]                           dc.b $ff
[000c6aec]                           dc.b $00
[000c6aed]                           dc.b $1c
[000c6aee]                           dc.b $00
[000c6aef]                           dc.b $40
[000c6af0]                           dc.b $00
[000c6af1]                           dc.b $00
[000c6af2] 000c41f7                  dc.l TEXT_03
[000c6af6]                           dc.b $00
[000c6af7]                           dc.b $01
[000c6af8]                           dc.b $00
[000c6af9]                           dc.b $05
[000c6afa]                           dc.b $00
[000c6afb]                           dc.b $0f
[000c6afc]                           dc.b $00
[000c6afd]                           dc.b $01
_08__ED_OPTION:
[000c6afe]                           dc.b $00
[000c6aff]                           dc.b $09
[000c6b00]                           dc.w $ffff
[000c6b02]                           dc.w $ffff
[000c6b04]                           dc.b $00
[000c6b05]                           dc.b $18
[000c6b06]                           dc.b $00
[000c6b07]                           dc.b $08
[000c6b08]                           dc.b $00
[000c6b09]                           dc.b $10
[000c6b0a] 000c56e6                  dc.l A_BOXED08
[000c6b0e]                           dc.b $00
[000c6b0f]                           dc.b $11
[000c6b10]                           dc.b $00
[000c6b11]                           dc.b $05
[000c6b12]                           dc.b $00
[000c6b13]                           dc.b $02
[000c6b14]                           dc.b $00
[000c6b15]                           dc.b $01
_09__ED_OPTION:
[000c6b16]                           dc.b $00
[000c6b17]                           dc.b $0a
[000c6b18]                           dc.w $ffff
[000c6b1a]                           dc.w $ffff
[000c6b1c]                           dc.b $00
[000c6b1d]                           dc.b $1c
[000c6b1e]                           dc.b $00
[000c6b1f]                           dc.b $40
[000c6b20]                           dc.b $00
[000c6b21]                           dc.b $00
[000c6b22] 000c45dc                  dc.l TEXT_61
[000c6b26]                           dc.b $00
[000c6b27]                           dc.b $01
[000c6b28]                           dc.w $0802
[000c6b2a]                           dc.b $00
[000c6b2b]                           dc.b $0f
[000c6b2c]                           dc.b $00
[000c6b2d]                           dc.b $01
_10__ED_OPTION:
[000c6b2e]                           dc.b $00
[000c6b2f]                           dc.b $0c
[000c6b30]                           dc.w $ffff
[000c6b32]                           dc.w $ffff
[000c6b34]                           dc.b $00
[000c6b35]                           dc.b $18
[000c6b36]                           dc.b $00
[000c6b37]                           dc.b $11
[000c6b38]                           dc.b $00
[000c6b39]                           dc.b $01
[000c6b3a] 000c57e6                  dc.l A_CHECKBOX07
[000c6b3e]                           dc.b $00
[000c6b3f]                           dc.b $11
[000c6b40]                           dc.w $0802
[000c6b42]                           dc.b $00
[000c6b43]                           dc.b $11
[000c6b44]                           dc.b $00
[000c6b45]                           dc.b $01
_10a_ED_OPTION:
[000c6b46]                           dc.b $00
[000c6b47]                           dc.b $00
[000c6b48]                           dc.b $00
[000c6b49]                           dc.b $00
[000c6b4a]                           dc.b $00
[000c6b4b]                           dc.b $00
[000c6b4c]                           dc.b $00
[000c6b4d]                           dc.b $00
[000c6b4e]                           dc.w $8000
[000c6b50]                           dc.w $884b
[000c6b52]                           dc.b $00
[000c6b53]                           dc.b $00
[000c6b54]                           dc.b $00
[000c6b55]                           dc.b $00
[000c6b56]                           dc.b $00
[000c6b57]                           dc.b $00
[000c6b58]                           dc.b $00
[000c6b59]                           dc.b $00
[000c6b5a]                           dc.b $00
[000c6b5b]                           dc.b $00
[000c6b5c]                           dc.b $00
[000c6b5d]                           dc.b $00
_12__ED_OPTION:
[000c6b5e]                           dc.b $00
[000c6b5f]                           dc.b $02
[000c6b60]                           dc.w $ffff
[000c6b62]                           dc.w $ffff
[000c6b64]                           dc.b $00
[000c6b65]                           dc.b $18
[000c6b66]                           dc.b $00
[000c6b67]                           dc.b $11
[000c6b68]                           dc.b $00
[000c6b69]                           dc.b $00
[000c6b6a] 000c5786                  dc.l A_CHECKBOX04
[000c6b6e]                           dc.b $00
[000c6b6f]                           dc.b $11
[000c6b70]                           dc.w $0803
[000c6b72]                           dc.b $00
[000c6b73]                           dc.b $0f
[000c6b74]                           dc.b $00
[000c6b75]                           dc.b $01
_12a_ED_OPTION:
[000c6b76]                           dc.b $00
[000c6b77]                           dc.b $00
[000c6b78]                           dc.b $00
[000c6b79]                           dc.b $00
[000c6b7a]                           dc.b $00
[000c6b7b]                           dc.b $00
[000c6b7c]                           dc.b $00
[000c6b7d]                           dc.b $00
[000c6b7e]                           dc.w $8000
[000c6b80]                           dc.w $8853
[000c6b82]                           dc.b $00
[000c6b83]                           dc.b $00
[000c6b84]                           dc.b $00
[000c6b85]                           dc.b $00
[000c6b86]                           dc.b $00
[000c6b87]                           dc.b $00
[000c6b88]                           dc.b $00
[000c6b89]                           dc.b $00
[000c6b8a]                           dc.b $00
[000c6b8b]                           dc.b $00
[000c6b8c]                           dc.b $00
[000c6b8d]                           dc.b $00
_14__ED_OPTION:
[000c6b8e]                           dc.b $00
[000c6b8f]                           dc.b $0f
[000c6b90]                           dc.w $ffff
[000c6b92]                           dc.w $ffff
[000c6b94]                           dc.b $00
[000c6b95]                           dc.b $1c
[000c6b96]                           dc.b $00
[000c6b97]                           dc.b $40
[000c6b98]                           dc.b $00
[000c6b99]                           dc.b $00
[000c6b9a] 000c45ec                  dc.l TEXT_62
[000c6b9e]                           dc.b $00
[000c6b9f]                           dc.b $02
[000c6ba0]                           dc.b $00
[000c6ba1]                           dc.b $08
[000c6ba2]                           dc.b $00
[000c6ba3]                           dc.b $0c
[000c6ba4]                           dc.b $00
[000c6ba5]                           dc.b $01
_15__ED_OPTION:
[000c6ba6]                           dc.b $00
[000c6ba7]                           dc.b $13
[000c6ba8]                           dc.b $00
[000c6ba9]                           dc.b $10
[000c6baa]                           dc.b $00
[000c6bab]                           dc.b $12
[000c6bac]                           dc.b $00
[000c6bad]                           dc.b $18
[000c6bae]                           dc.b $00
[000c6baf]                           dc.b $40
[000c6bb0]                           dc.b $00
[000c6bb1]                           dc.b $00
[000c6bb2] 000c55e6                  dc.l A_3DBUTTON22
[000c6bb6]                           dc.b $00
[000c6bb7]                           dc.b $0f
[000c6bb8]                           dc.b $00
[000c6bb9]                           dc.b $08
[000c6bba]                           dc.b $00
[000c6bbb]                           dc.b $14
[000c6bbc]                           dc.b $00
[000c6bbd]                           dc.b $03
_16__ED_OPTION:
[000c6bbe]                           dc.b $00
[000c6bbf]                           dc.b $11
[000c6bc0]                           dc.w $ffff
[000c6bc2]                           dc.w $ffff
[000c6bc4]                           dc.b $00
[000c6bc5]                           dc.b $18
[000c6bc6]                           dc.b $00
[000c6bc7]                           dc.b $08
[000c6bc8]                           dc.b $00
[000c6bc9]                           dc.b $00
[000c6bca] 000c56a6                  dc.l A_BOXED06
[000c6bce]                           dc.b $00
[000c6bcf]                           dc.b $00
[000c6bd0]                           dc.b $00
[000c6bd1]                           dc.b $00
[000c6bd2]                           dc.b $00
[000c6bd3]                           dc.b $14
[000c6bd4]                           dc.b $00
[000c6bd5]                           dc.b $01
_17__ED_OPTION:
[000c6bd6]                           dc.b $00
[000c6bd7]                           dc.b $12
[000c6bd8]                           dc.w $ffff
[000c6bda]                           dc.w $ffff
[000c6bdc]                           dc.b $00
[000c6bdd]                           dc.b $18
[000c6bde]                           dc.b $00
[000c6bdf]                           dc.b $08
[000c6be0]                           dc.b $00
[000c6be1]                           dc.b $00
[000c6be2] 000c5706                  dc.l A_BOXED09
[000c6be6]                           dc.b $00
[000c6be7]                           dc.b $00
[000c6be8]                           dc.b $00
[000c6be9]                           dc.b $01
[000c6bea]                           dc.b $00
[000c6beb]                           dc.b $08
[000c6bec]                           dc.b $00
[000c6bed]                           dc.b $01
_18__ED_OPTION:
[000c6bee]                           dc.b $00
[000c6bef]                           dc.b $0f
[000c6bf0]                           dc.w $ffff
[000c6bf2]                           dc.w $ffff
[000c6bf4]                           dc.b $00
[000c6bf5]                           dc.b $18
[000c6bf6]                           dc.b $00
[000c6bf7]                           dc.b $08
[000c6bf8]                           dc.b $00
[000c6bf9]                           dc.b $00
[000c6bfa] 000c56c6                  dc.l A_BOXED07
[000c6bfe]                           dc.b $00
[000c6bff]                           dc.b $00
[000c6c00]                           dc.b $00
[000c6c01]                           dc.b $02
[000c6c02]                           dc.b $00
[000c6c03]                           dc.b $0b
[000c6c04]                           dc.b $00
[000c6c05]                           dc.b $01
_19__ED_OPTION:
[000c6c06]                           dc.b $00
[000c6c07]                           dc.b $14
[000c6c08]                           dc.w $ffff
[000c6c0a]                           dc.w $ffff
[000c6c0c]                           dc.b $00
[000c6c0d]                           dc.b $1c
[000c6c0e]                           dc.b $00
[000c6c0f]                           dc.b $40
[000c6c10]                           dc.b $00
[000c6c11]                           dc.b $00
[000c6c12] 000c45b9                  dc.l TEXT_58
[000c6c16]                           dc.b $00
[000c6c17]                           dc.b $01
[000c6c18]                           dc.b $00
[000c6c19]                           dc.b $09
[000c6c1a]                           dc.b $00
[000c6c1b]                           dc.b $0d
[000c6c1c]                           dc.b $00
[000c6c1d]                           dc.b $01
_20__ED_OPTION:
[000c6c1e]                           dc.b $00
[000c6c1f]                           dc.b $16
[000c6c20]                           dc.w $ffff
[000c6c22]                           dc.w $ffff
[000c6c24]                           dc.b $00
[000c6c25]                           dc.b $18
[000c6c26]                           dc.w $4007
[000c6c28]                           dc.b $00
[000c6c29]                           dc.b $10
[000c6c2a] 000c5506                  dc.l A_3DBUTTON05
[000c6c2e]                           dc.b $00
[000c6c2f]                           dc.b $06
[000c6c30]                           dc.b $00
[000c6c31]                           dc.b $0c
[000c6c32]                           dc.b $00
[000c6c33]                           dc.b $0c
[000c6c34]                           dc.b $00
[000c6c35]                           dc.b $02
_20a_ED_OPTION:
[000c6c36]                           dc.b $00
[000c6c37]                           dc.b $00
[000c6c38]                           dc.b $00
[000c6c39]                           dc.b $00
[000c6c3a]                           dc.b $00
[000c6c3b]                           dc.b $00
[000c6c3c]                           dc.b $00
[000c6c3d]                           dc.b $00
[000c6c3e]                           dc.w $8000
[000c6c40]                           dc.w $884f
[000c6c42]                           dc.b $00
[000c6c43]                           dc.b $00
[000c6c44]                           dc.b $00
[000c6c45]                           dc.b $00
[000c6c46]                           dc.b $00
[000c6c47]                           dc.b $00
[000c6c48]                           dc.b $00
[000c6c49]                           dc.b $00
[000c6c4a]                           dc.b $00
[000c6c4b]                           dc.b $00
[000c6c4c]                           dc.b $00
[000c6c4d]                           dc.b $00
_22__ED_OPTION:
[000c6c4e]                           dc.b $00
[000c6c4f]                           dc.b $18
[000c6c50]                           dc.w $ffff
[000c6c52]                           dc.w $ffff
[000c6c54]                           dc.b $00
[000c6c55]                           dc.b $18
[000c6c56]                           dc.w $4005
[000c6c58]                           dc.b $00
[000c6c59]                           dc.b $10
[000c6c5a] 000c5546                  dc.l A_3DBUTTON07
[000c6c5e]                           dc.b $00
[000c6c5f]                           dc.b $14
[000c6c60]                           dc.b $00
[000c6c61]                           dc.b $0c
[000c6c62]                           dc.b $00
[000c6c63]                           dc.b $0c
[000c6c64]                           dc.b $00
[000c6c65]                           dc.b $02
_22a_ED_OPTION:
[000c6c66]                           dc.b $00
[000c6c67]                           dc.b $00
[000c6c68]                           dc.b $00
[000c6c69]                           dc.b $00
[000c6c6a]                           dc.b $00
[000c6c6b]                           dc.b $00
[000c6c6c]                           dc.b $00
[000c6c6d]                           dc.b $00
[000c6c6e]                           dc.w $8000
[000c6c70]                           dc.w $8841
[000c6c72]                           dc.b $00
[000c6c73]                           dc.b $00
[000c6c74]                           dc.b $00
[000c6c75]                           dc.b $00
[000c6c76]                           dc.b $00
[000c6c77]                           dc.b $00
[000c6c78]                           dc.b $00
[000c6c79]                           dc.b $00
[000c6c7a]                           dc.b $00
[000c6c7b]                           dc.b $00
[000c6c7c]                           dc.b $00
[000c6c7d]                           dc.b $00
_24__ED_OPTION:
[000c6c7e]                           dc.b $00
[000c6c7f]                           dc.b $01
[000c6c80]                           dc.w $ffff
[000c6c82]                           dc.w $ffff
[000c6c84]                           dc.b $00
[000c6c85]                           dc.b $1c
[000c6c86]                           dc.b $00
[000c6c87]                           dc.b $60
[000c6c88]                           dc.b $00
[000c6c89]                           dc.b $00
[000c6c8a] 000c45d2                  dc.l TEXT_60
[000c6c8e]                           dc.b $00
[000c6c8f]                           dc.b $05
[000c6c90]                           dc.b $00
[000c6c91]                           dc.b $0a
[000c6c92]                           dc.b $00
[000c6c93]                           dc.b $09
[000c6c94]                           dc.b $00
[000c6c95]                           dc.b $01
_ED_REPLACE:
[000c6c96]                           dc.w $ffff
[000c6c98]                           dc.b $00
[000c6c99]                           dc.b $01
[000c6c9a]                           dc.b $00
[000c6c9b]                           dc.b $01
[000c6c9c]                           dc.b $00
[000c6c9d]                           dc.b $19
[000c6c9e]                           dc.b $00
[000c6c9f]                           dc.b $00
[000c6ca0]                           dc.b $00
[000c6ca1]                           dc.b $00
[000c6ca2]                           dc.b $00
[000c6ca3]                           dc.b $ff
[000c6ca4]                           dc.w $1141
[000c6ca6]                           dc.b $00
[000c6ca7]                           dc.b $00
[000c6ca8]                           dc.b $00
[000c6ca9]                           dc.b $00
[000c6caa]                           dc.b $00
[000c6cab]                           dc.b $36
[000c6cac]                           dc.b $00
[000c6cad]                           dc.b $0a
_01__ED_REPLACE:
[000c6cae]                           dc.b $00
[000c6caf]                           dc.b $00
[000c6cb0]                           dc.b $00
[000c6cb1]                           dc.b $02
[000c6cb2]                           dc.b $00
[000c6cb3]                           dc.b $13
[000c6cb4]                           dc.b $00
[000c6cb5]                           dc.b $18
[000c6cb6]                           dc.b $00
[000c6cb7]                           dc.b $40
[000c6cb8]                           dc.b $00
[000c6cb9]                           dc.b $10
[000c6cba] 000c5486                  dc.l A_3DBUTTON01
[000c6cbe]                           dc.b $00
[000c6cbf]                           dc.b $00
[000c6cc0]                           dc.b $00
[000c6cc1]                           dc.b $00
[000c6cc2]                           dc.b $00
[000c6cc3]                           dc.b $36
[000c6cc4]                           dc.b $00
[000c6cc5]                           dc.b $0a
_02__ED_REPLACE:
[000c6cc6]                           dc.b $00
[000c6cc7]                           dc.b $08
[000c6cc8]                           dc.b $00
[000c6cc9]                           dc.b $03
[000c6cca]                           dc.b $00
[000c6ccb]                           dc.b $07
[000c6ccc]                           dc.b $00
[000c6ccd]                           dc.b $18
[000c6cce]                           dc.b $00
[000c6ccf]                           dc.b $40
[000c6cd0]                           dc.b $00
[000c6cd1]                           dc.b $00
[000c6cd2] 000c58c6                  dc.l A_INNERFRAME04
[000c6cd6]                           dc.b $00
[000c6cd7]                           dc.b $01
[000c6cd8]                           dc.b $00
[000c6cd9]                           dc.b $00
[000c6cda]                           dc.b $00
[000c6cdb]                           dc.b $34
[000c6cdc]                           dc.b $00
[000c6cdd]                           dc.b $04
_03__ED_REPLACE:
[000c6cde]                           dc.b $00
[000c6cdf]                           dc.b $04
[000c6ce0]                           dc.w $ffff
[000c6ce2]                           dc.w $ffff
[000c6ce4]                           dc.b $00
[000c6ce5]                           dc.b $1c
[000c6ce6]                           dc.b $00
[000c6ce7]                           dc.b $40
[000c6ce8]                           dc.b $00
[000c6ce9]                           dc.b $00
[000c6cea] 000c4255                  dc.l TEXT_06
[000c6cee]                           dc.b $00
[000c6cef]                           dc.b $04
[000c6cf0]                           dc.b $00
[000c6cf1]                           dc.b $01
[000c6cf2]                           dc.b $00
[000c6cf3]                           dc.b $05
[000c6cf4]                           dc.b $00
[000c6cf5]                           dc.b $01
_04__ED_REPLACE:
[000c6cf6]                           dc.b $00
[000c6cf7]                           dc.b $07
[000c6cf8]                           dc.b $00
[000c6cf9]                           dc.b $05
[000c6cfa]                           dc.b $00
[000c6cfb]                           dc.b $06
[000c6cfc]                           dc.b $00
[000c6cfd]                           dc.b $18
[000c6cfe]                           dc.b $00
[000c6cff]                           dc.b $40
[000c6d00]                           dc.b $00
[000c6d01]                           dc.b $00
[000c6d02] 000c54e6                  dc.l A_3DBUTTON04
[000c6d06]                           dc.b $00
[000c6d07]                           dc.b $0a
[000c6d08]                           dc.b $00
[000c6d09]                           dc.b $01
[000c6d0a]                           dc.b $00
[000c6d0b]                           dc.b $28
[000c6d0c]                           dc.b $00
[000c6d0d]                           dc.b $02
_05__ED_REPLACE:
[000c6d0e]                           dc.b $00
[000c6d0f]                           dc.b $06
[000c6d10]                           dc.w $ffff
[000c6d12]                           dc.w $ffff
[000c6d14]                           dc.b $00
[000c6d15]                           dc.b $18
[000c6d16]                           dc.b $00
[000c6d17]                           dc.b $08
[000c6d18]                           dc.b $00
[000c6d19]                           dc.b $00
[000c6d1a] 000c5666                  dc.l A_BOXED02
[000c6d1e]                           dc.b $00
[000c6d1f]                           dc.b $00
[000c6d20]                           dc.b $00
[000c6d21]                           dc.b $00
[000c6d22]                           dc.b $00
[000c6d23]                           dc.b $28
[000c6d24]                           dc.b $00
[000c6d25]                           dc.b $01
_06__ED_REPLACE:
[000c6d26]                           dc.b $00
[000c6d27]                           dc.b $04
[000c6d28]                           dc.w $ffff
[000c6d2a]                           dc.w $ffff
[000c6d2c]                           dc.b $00
[000c6d2d]                           dc.b $18
[000c6d2e]                           dc.b $00
[000c6d2f]                           dc.b $08
[000c6d30]                           dc.b $00
[000c6d31]                           dc.b $00
[000c6d32] 000c5666                  dc.l A_BOXED02
[000c6d36]                           dc.b $00
[000c6d37]                           dc.b $00
[000c6d38]                           dc.b $00
[000c6d39]                           dc.b $01
[000c6d3a]                           dc.b $00
[000c6d3b]                           dc.b $28
[000c6d3c]                           dc.b $00
[000c6d3d]                           dc.b $01
_07__ED_REPLACE:
[000c6d3e]                           dc.b $00
[000c6d3f]                           dc.b $02
[000c6d40]                           dc.w $ffff
[000c6d42]                           dc.w $ffff
[000c6d44]                           dc.b $00
[000c6d45]                           dc.b $1c
[000c6d46]                           dc.b $00
[000c6d47]                           dc.b $40
[000c6d48]                           dc.b $00
[000c6d49]                           dc.b $00
[000c6d4a] 000c427f                  dc.l TEXT_10
[000c6d4e]                           dc.b $00
[000c6d4f]                           dc.b $01
[000c6d50]                           dc.b $00
[000c6d51]                           dc.b $02
[000c6d52]                           dc.b $00
[000c6d53]                           dc.b $08
[000c6d54]                           dc.b $00
[000c6d55]                           dc.b $01
_08__ED_REPLACE:
[000c6d56]                           dc.b $00
[000c6d57]                           dc.b $11
[000c6d58]                           dc.b $00
[000c6d59]                           dc.b $09
[000c6d5a]                           dc.b $00
[000c6d5b]                           dc.b $0f
[000c6d5c]                           dc.b $00
[000c6d5d]                           dc.b $18
[000c6d5e]                           dc.b $00
[000c6d5f]                           dc.b $40
[000c6d60]                           dc.b $00
[000c6d61]                           dc.b $00
[000c6d62] 000c58a6                  dc.l A_INNERFRAME03
[000c6d66]                           dc.b $00
[000c6d67]                           dc.b $01
[000c6d68]                           dc.b $00
[000c6d69]                           dc.b $04
[000c6d6a]                           dc.b $00
[000c6d6b]                           dc.b $34
[000c6d6c]                           dc.b $00
[000c6d6d]                           dc.b $03
_09__ED_REPLACE:
[000c6d6e]                           dc.b $00
[000c6d6f]                           dc.b $0b
[000c6d70]                           dc.w $ffff
[000c6d72]                           dc.w $ffff
[000c6d74]                           dc.b $00
[000c6d75]                           dc.b $18
[000c6d76]                           dc.b $00
[000c6d77]                           dc.b $01
[000c6d78]                           dc.b $00
[000c6d79]                           dc.b $01
[000c6d7a] 000c57a6                  dc.l A_CHECKBOX05
[000c6d7e]                           dc.b $00
[000c6d7f]                           dc.b $01
[000c6d80]                           dc.b $00
[000c6d81]                           dc.b $01
[000c6d82]                           dc.b $00
[000c6d83]                           dc.b $0c
[000c6d84]                           dc.b $00
[000c6d85]                           dc.b $01
_09a_ED_REPLACE:
[000c6d86]                           dc.b $00
[000c6d87]                           dc.b $00
[000c6d88]                           dc.b $00
[000c6d89]                           dc.b $00
[000c6d8a]                           dc.b $00
[000c6d8b]                           dc.b $00
[000c6d8c]                           dc.b $00
[000c6d8d]                           dc.b $00
[000c6d8e]                           dc.w $8000
[000c6d90]                           dc.w $8852
[000c6d92]                           dc.b $00
[000c6d93]                           dc.b $00
[000c6d94]                           dc.b $00
[000c6d95]                           dc.b $00
[000c6d96]                           dc.b $00
[000c6d97]                           dc.b $00
[000c6d98]                           dc.b $00
[000c6d99]                           dc.b $00
[000c6d9a]                           dc.b $00
[000c6d9b]                           dc.b $00
[000c6d9c]                           dc.b $00
[000c6d9d]                           dc.b $00
_11__ED_REPLACE:
[000c6d9e]                           dc.b $00
[000c6d9f]                           dc.b $0d
[000c6da0]                           dc.w $ffff
[000c6da2]                           dc.w $ffff
[000c6da4]                           dc.b $00
[000c6da5]                           dc.b $18
[000c6da6]                           dc.b $00
[000c6da7]                           dc.b $01
[000c6da8]                           dc.b $00
[000c6da9]                           dc.b $01
[000c6daa] 000c5746                  dc.l A_CHECKBOX02
[000c6dae]                           dc.b $00
[000c6daf]                           dc.b $1d
[000c6db0]                           dc.b $00
[000c6db1]                           dc.b $01
[000c6db2]                           dc.b $00
[000c6db3]                           dc.b $08
[000c6db4]                           dc.b $00
[000c6db5]                           dc.b $01
_11a_ED_REPLACE:
[000c6db6]                           dc.b $00
[000c6db7]                           dc.b $00
[000c6db8]                           dc.b $00
[000c6db9]                           dc.b $00
[000c6dba]                           dc.b $00
[000c6dbb]                           dc.b $00
[000c6dbc]                           dc.b $00
[000c6dbd]                           dc.b $00
[000c6dbe]                           dc.w $8000
[000c6dc0]                           dc.w $884c
[000c6dc2]                           dc.b $00
[000c6dc3]                           dc.b $00
[000c6dc4]                           dc.b $00
[000c6dc5]                           dc.b $00
[000c6dc6]                           dc.b $00
[000c6dc7]                           dc.b $00
[000c6dc8]                           dc.b $00
[000c6dc9]                           dc.b $00
[000c6dca]                           dc.b $00
[000c6dcb]                           dc.b $00
[000c6dcc]                           dc.b $00
[000c6dcd]                           dc.b $00
_13__ED_REPLACE:
[000c6dce]                           dc.b $00
[000c6dcf]                           dc.b $0f
[000c6dd0]                           dc.w $ffff
[000c6dd2]                           dc.w $ffff
[000c6dd4]                           dc.b $00
[000c6dd5]                           dc.b $18
[000c6dd6]                           dc.b $00
[000c6dd7]                           dc.b $01
[000c6dd8]                           dc.b $00
[000c6dd9]                           dc.b $01
[000c6dda] 000c57c6                  dc.l A_CHECKBOX06
[000c6dde]                           dc.b $00
[000c6ddf]                           dc.b $27
[000c6de0]                           dc.b $00
[000c6de1]                           dc.b $01
[000c6de2]                           dc.b $00
[000c6de3]                           dc.b $0c
[000c6de4]                           dc.b $00
[000c6de5]                           dc.b $01
_13a_ED_REPLACE:
[000c6de6]                           dc.b $00
[000c6de7]                           dc.b $00
[000c6de8]                           dc.b $00
[000c6de9]                           dc.b $00
[000c6dea]                           dc.b $00
[000c6deb]                           dc.b $00
[000c6dec]                           dc.b $00
[000c6ded]                           dc.b $00
[000c6dee]                           dc.w $8000
[000c6df0]                           dc.w $8857
[000c6df2]                           dc.b $00
[000c6df3]                           dc.b $00
[000c6df4]                           dc.b $00
[000c6df5]                           dc.b $00
[000c6df6]                           dc.b $00
[000c6df7]                           dc.b $00
[000c6df8]                           dc.b $00
[000c6df9]                           dc.b $00
[000c6dfa]                           dc.b $00
[000c6dfb]                           dc.b $00
[000c6dfc]                           dc.b $00
[000c6dfd]                           dc.b $00
_15__ED_REPLACE:
[000c6dfe]                           dc.b $00
[000c6dff]                           dc.b $08
[000c6e00]                           dc.w $ffff
[000c6e02]                           dc.w $ffff
[000c6e04]                           dc.b $00
[000c6e05]                           dc.b $18
[000c6e06]                           dc.b $00
[000c6e07]                           dc.b $01
[000c6e08]                           dc.b $00
[000c6e09]                           dc.b $01
[000c6e0a] 000c5766                  dc.l A_CHECKBOX03
[000c6e0e]                           dc.b $00
[000c6e0f]                           dc.b $10
[000c6e10]                           dc.b $00
[000c6e11]                           dc.b $01
[000c6e12]                           dc.b $00
[000c6e13]                           dc.b $0a
[000c6e14]                           dc.b $00
[000c6e15]                           dc.b $01
_15a_ED_REPLACE:
[000c6e16]                           dc.b $00
[000c6e17]                           dc.b $00
[000c6e18]                           dc.b $00
[000c6e19]                           dc.b $00
[000c6e1a]                           dc.b $00
[000c6e1b]                           dc.b $00
[000c6e1c]                           dc.b $00
[000c6e1d]                           dc.b $00
[000c6e1e]                           dc.w $8000
[000c6e20]                           dc.w $8842
[000c6e22]                           dc.b $00
[000c6e23]                           dc.b $00
[000c6e24]                           dc.b $00
[000c6e25]                           dc.b $00
[000c6e26]                           dc.b $00
[000c6e27]                           dc.b $00
[000c6e28]                           dc.b $00
[000c6e29]                           dc.b $00
[000c6e2a]                           dc.b $00
[000c6e2b]                           dc.b $00
[000c6e2c]                           dc.b $00
[000c6e2d]                           dc.b $00
_17__ED_REPLACE:
[000c6e2e]                           dc.b $00
[000c6e2f]                           dc.b $13
[000c6e30]                           dc.w $ffff
[000c6e32]                           dc.w $ffff
[000c6e34]                           dc.b $00
[000c6e35]                           dc.b $18
[000c6e36]                           dc.w $4007
[000c6e38]                           dc.b $00
[000c6e39]                           dc.b $10
[000c6e3a] 000c5506                  dc.l A_3DBUTTON05
[000c6e3e]                           dc.b $00
[000c6e3f]                           dc.b $0e
[000c6e40]                           dc.b $00
[000c6e41]                           dc.b $07
[000c6e42]                           dc.b $00
[000c6e43]                           dc.b $0c
[000c6e44]                           dc.b $00
[000c6e45]                           dc.b $02
_17a_ED_REPLACE:
[000c6e46]                           dc.b $00
[000c6e47]                           dc.b $00
[000c6e48]                           dc.b $00
[000c6e49]                           dc.b $00
[000c6e4a]                           dc.b $00
[000c6e4b]                           dc.b $00
[000c6e4c]                           dc.b $00
[000c6e4d]                           dc.b $00
[000c6e4e]                           dc.w $8000
[000c6e50]                           dc.w $884f
[000c6e52]                           dc.b $00
[000c6e53]                           dc.b $00
[000c6e54]                           dc.b $00
[000c6e55]                           dc.b $00
[000c6e56]                           dc.b $00
[000c6e57]                           dc.b $00
[000c6e58]                           dc.b $00
[000c6e59]                           dc.b $00
[000c6e5a]                           dc.b $00
[000c6e5b]                           dc.b $00
[000c6e5c]                           dc.b $00
[000c6e5d]                           dc.b $00
_19__ED_REPLACE:
[000c6e5e]                           dc.b $00
[000c6e5f]                           dc.b $01
[000c6e60]                           dc.w $ffff
[000c6e62]                           dc.w $ffff
[000c6e64]                           dc.b $00
[000c6e65]                           dc.b $18
[000c6e66]                           dc.w $4005
[000c6e68]                           dc.b $00
[000c6e69]                           dc.b $10
[000c6e6a] 000c5546                  dc.l A_3DBUTTON07
[000c6e6e]                           dc.b $00
[000c6e6f]                           dc.b $1c
[000c6e70]                           dc.b $00
[000c6e71]                           dc.b $07
[000c6e72]                           dc.b $00
[000c6e73]                           dc.b $0c
[000c6e74]                           dc.b $00
[000c6e75]                           dc.b $02
_19a_ED_REPLACE:
[000c6e76]                           dc.b $00
[000c6e77]                           dc.b $00
[000c6e78]                           dc.b $00
[000c6e79]                           dc.b $00
[000c6e7a]                           dc.b $00
[000c6e7b]                           dc.b $00
[000c6e7c]                           dc.b $00
[000c6e7d]                           dc.b $00
[000c6e7e]                           dc.w $8020
[000c6e80]                           dc.w $8841
[000c6e82]                           dc.b $00
[000c6e83]                           dc.b $00
[000c6e84]                           dc.b $00
[000c6e85]                           dc.b $00
[000c6e86]                           dc.b $00
[000c6e87]                           dc.b $00
[000c6e88]                           dc.b $00
[000c6e89]                           dc.b $00
[000c6e8a]                           dc.b $00
[000c6e8b]                           dc.b $00
[000c6e8c]                           dc.b $00
[000c6e8d]                           dc.b $00
_ED_TOOL:
[000c6e8e]                           dc.w $ffff
[000c6e90]                           dc.b $00
[000c6e91]                           dc.b $01
[000c6e92]                           dc.b $00
[000c6e93]                           dc.b $0d
[000c6e94]                           dc.b $00
[000c6e95]                           dc.b $18
[000c6e96]                           dc.b $00
[000c6e97]                           dc.b $40
[000c6e98]                           dc.b $00
[000c6e99]                           dc.b $00
[000c6e9a] 000c5526                  dc.l A_3DBUTTON06
[000c6e9e]                           dc.b $00
[000c6e9f]                           dc.b $00
[000c6ea0]                           dc.b $00
[000c6ea1]                           dc.b $00
[000c6ea2]                           dc.b $00
[000c6ea3]                           dc.b $3c
[000c6ea4]                           dc.w $1600
_01__ED_TOOL:
[000c6ea6]                           dc.b $00
[000c6ea7]                           dc.b $03
[000c6ea8]                           dc.w $ffff
[000c6eaa]                           dc.w $ffff
[000c6eac]                           dc.b $00
[000c6ead]                           dc.b $1f
[000c6eae]                           dc.b $00
[000c6eaf]                           dc.b $05
[000c6eb0]                           dc.b $00
[000c6eb1]                           dc.b $00
[000c6eb2] 000c5af0                  dc.l IC_OPEN
[000c6eb6]                           dc.w $0300
[000c6eb8]                           dc.w $0300
[000c6eba]                           dc.w $1000
[000c6ebc]                           dc.w $1000
_01a_ED_TOOL:
[000c6ebe] 0003da8a                  dc.l Aed_open
[000c6ec2]                           dc.b $00
[000c6ec3]                           dc.b $00
[000c6ec4]                           dc.b $00
[000c6ec5]                           dc.b $00
[000c6ec6]                           dc.w $8000
[000c6ec8]                           dc.b $00
[000c6ec9]                           dc.b $00
[000c6eca]                           dc.b $00
[000c6ecb]                           dc.b $00
[000c6ecc]                           dc.b $00
[000c6ecd]                           dc.b $00
[000c6ece]                           dc.b $00
[000c6ecf]                           dc.b $00
[000c6ed0]                           dc.b $00
[000c6ed1]                           dc.b $00
[000c6ed2]                           dc.b $00
[000c6ed3]                           dc.b $00
[000c6ed4]                           dc.b $00
[000c6ed5]                           dc.b $00
_03__ED_TOOL:
[000c6ed6]                           dc.b $00
[000c6ed7]                           dc.b $05
[000c6ed8]                           dc.w $ffff
[000c6eda]                           dc.w $ffff
[000c6edc]                           dc.b $00
[000c6edd]                           dc.b $1f
[000c6ede]                           dc.b $00
[000c6edf]                           dc.b $05
[000c6ee0]                           dc.b $00
[000c6ee1]                           dc.b $00
[000c6ee2] 000c5be8                  dc.l IC_SAVE
[000c6ee6]                           dc.w $0302
[000c6ee8]                           dc.w $0300
[000c6eea]                           dc.w $1000
[000c6eec]                           dc.w $1000
_03a_ED_TOOL:
[000c6eee] 0003e1c0                  dc.l Aed_save
[000c6ef2]                           dc.b $00
[000c6ef3]                           dc.b $00
[000c6ef4]                           dc.b $00
[000c6ef5]                           dc.b $00
[000c6ef6]                           dc.w $8000
[000c6ef8]                           dc.b $00
[000c6ef9]                           dc.b $00
[000c6efa]                           dc.b $00
[000c6efb]                           dc.b $00
[000c6efc]                           dc.b $00
[000c6efd]                           dc.b $00
[000c6efe]                           dc.b $00
[000c6eff]                           dc.b $00
[000c6f00]                           dc.b $00
[000c6f01]                           dc.b $00
[000c6f02]                           dc.b $00
[000c6f03]                           dc.b $00
[000c6f04]                           dc.b $00
[000c6f05]                           dc.b $00
_05__ED_TOOL:
[000c6f06]                           dc.b $00
[000c6f07]                           dc.b $07
[000c6f08]                           dc.w $ffff
[000c6f0a]                           dc.w $ffff
[000c6f0c]                           dc.b $00
[000c6f0d]                           dc.b $1f
[000c6f0e]                           dc.b $00
[000c6f0f]                           dc.b $05
[000c6f10]                           dc.b $00
[000c6f11]                           dc.b $00
[000c6f12] 000c5c64                  dc.l IC_UNDO
[000c6f16]                           dc.b $00
[000c6f17]                           dc.b $07
[000c6f18]                           dc.w $0300
[000c6f1a]                           dc.w $1000
[000c6f1c]                           dc.w $1000
_05a_ED_TOOL:
[000c6f1e] 0003e486                  dc.l Aed_undo
[000c6f22]                           dc.b $00
[000c6f23]                           dc.b $00
[000c6f24]                           dc.b $00
[000c6f25]                           dc.b $00
[000c6f26]                           dc.w $8000
[000c6f28]                           dc.b $00
[000c6f29]                           dc.b $00
[000c6f2a]                           dc.b $00
[000c6f2b]                           dc.b $00
[000c6f2c]                           dc.b $00
[000c6f2d]                           dc.b $00
[000c6f2e]                           dc.b $00
[000c6f2f]                           dc.b $00
[000c6f30]                           dc.b $00
[000c6f31]                           dc.b $00
[000c6f32]                           dc.b $00
[000c6f33]                           dc.b $00
[000c6f34]                           dc.b $00
[000c6f35]                           dc.b $00
_07__ED_TOOL:
[000c6f36]                           dc.b $00
[000c6f37]                           dc.b $09
[000c6f38]                           dc.w $ffff
[000c6f3a]                           dc.w $ffff
[000c6f3c]                           dc.b $00
[000c6f3d]                           dc.b $1f
[000c6f3e]                           dc.b $00
[000c6f3f]                           dc.b $05
[000c6f40]                           dc.b $00
[000c6f41]                           dc.b $00
[000c6f42] 000c59f8                  dc.l IC_CUT
[000c6f46]                           dc.b $00
[000c6f47]                           dc.b $09
[000c6f48]                           dc.w $0300
[000c6f4a]                           dc.w $1000
[000c6f4c]                           dc.w $1000
_07a_ED_TOOL:
[000c6f4e] 0003d2be                  dc.l Aed_cut
[000c6f52]                           dc.b $00
[000c6f53]                           dc.b $00
[000c6f54]                           dc.b $00
[000c6f55]                           dc.b $00
[000c6f56]                           dc.w $8000
[000c6f58]                           dc.b $00
[000c6f59]                           dc.b $00
[000c6f5a]                           dc.b $00
[000c6f5b]                           dc.b $00
[000c6f5c]                           dc.b $00
[000c6f5d]                           dc.b $00
[000c6f5e]                           dc.b $00
[000c6f5f]                           dc.b $00
[000c6f60]                           dc.b $00
[000c6f61]                           dc.b $00
[000c6f62]                           dc.b $00
[000c6f63]                           dc.b $00
[000c6f64]                           dc.b $00
[000c6f65]                           dc.b $00
_09__ED_TOOL:
[000c6f66]                           dc.b $00
[000c6f67]                           dc.b $0b
[000c6f68]                           dc.w $ffff
[000c6f6a]                           dc.w $ffff
[000c6f6c]                           dc.b $00
[000c6f6d]                           dc.b $1f
[000c6f6e]                           dc.b $00
[000c6f6f]                           dc.b $05
[000c6f70]                           dc.b $00
[000c6f71]                           dc.b $00
[000c6f72] 000c597c                  dc.l IC_COPY
[000c6f76]                           dc.b $00
[000c6f77]                           dc.b $0b
[000c6f78]                           dc.w $0300
[000c6f7a]                           dc.w $1000
[000c6f7c]                           dc.w $1000
_09a_ED_TOOL:
[000c6f7e] 0003d2a8                  dc.l Aed_copy
[000c6f82]                           dc.b $00
[000c6f83]                           dc.b $00
[000c6f84]                           dc.b $00
[000c6f85]                           dc.b $00
[000c6f86]                           dc.w $8000
[000c6f88]                           dc.b $00
[000c6f89]                           dc.b $00
[000c6f8a]                           dc.b $00
[000c6f8b]                           dc.b $00
[000c6f8c]                           dc.b $00
[000c6f8d]                           dc.b $00
[000c6f8e]                           dc.b $00
[000c6f8f]                           dc.b $00
[000c6f90]                           dc.b $00
[000c6f91]                           dc.b $00
[000c6f92]                           dc.b $00
[000c6f93]                           dc.b $00
[000c6f94]                           dc.b $00
[000c6f95]                           dc.b $00
_11__ED_TOOL:
[000c6f96]                           dc.b $00
[000c6f97]                           dc.b $0d
[000c6f98]                           dc.w $ffff
[000c6f9a]                           dc.w $ffff
[000c6f9c]                           dc.b $00
[000c6f9d]                           dc.b $1f
[000c6f9e]                           dc.b $00
[000c6f9f]                           dc.b $05
[000c6fa0]                           dc.b $00
[000c6fa1]                           dc.b $00
[000c6fa2] 000c5b6c                  dc.l IC_PASTE
[000c6fa6]                           dc.b $00
[000c6fa7]                           dc.b $0d
[000c6fa8]                           dc.w $0300
[000c6faa]                           dc.w $1000
[000c6fac]                           dc.w $1000
_11a_ED_TOOL:
[000c6fae] 0003dbfa                  dc.l Aed_paste
[000c6fb2]                           dc.b $00
[000c6fb3]                           dc.b $00
[000c6fb4]                           dc.b $00
[000c6fb5]                           dc.b $00
[000c6fb6]                           dc.w $8000
[000c6fb8]                           dc.b $00
[000c6fb9]                           dc.b $00
[000c6fba]                           dc.b $00
[000c6fbb]                           dc.b $00
[000c6fbc]                           dc.b $00
[000c6fbd]                           dc.b $00
[000c6fbe]                           dc.b $00
[000c6fbf]                           dc.b $00
[000c6fc0]                           dc.b $00
[000c6fc1]                           dc.b $00
[000c6fc2]                           dc.b $00
[000c6fc3]                           dc.b $00
[000c6fc4]                           dc.b $00
[000c6fc5]                           dc.b $00
_13__ED_TOOL:
[000c6fc6]                           dc.b $00
[000c6fc7]                           dc.b $00
[000c6fc8]                           dc.w $ffff
[000c6fca]                           dc.w $ffff
[000c6fcc]                           dc.b $00
[000c6fcd]                           dc.b $18
[000c6fce]                           dc.b $00
[000c6fcf]                           dc.b $60
[000c6fd0]                           dc.b $00
[000c6fd1]                           dc.b $00
[000c6fd2] 000c5566                  dc.l A_3DBUTTON08
[000c6fd6]                           dc.b $00
[000c6fd7]                           dc.b $12
[000c6fd8]                           dc.w $0300
[000c6fda]                           dc.b $00
[000c6fdb]                           dc.b $1e
[000c6fdc]                           dc.w $1000
_ED_WRAP:
[000c6fde]                           dc.w $ffff
[000c6fe0]                           dc.b $00
[000c6fe1]                           dc.b $01
[000c6fe2]                           dc.b $00
[000c6fe3]                           dc.b $01
[000c6fe4]                           dc.b $00
[000c6fe5]                           dc.b $19
[000c6fe6]                           dc.b $00
[000c6fe7]                           dc.b $00
[000c6fe8]                           dc.b $00
[000c6fe9]                           dc.b $00
[000c6fea]                           dc.b $00
[000c6feb]                           dc.b $ff
[000c6fec]                           dc.w $1141
[000c6fee]                           dc.b $00
[000c6fef]                           dc.b $00
[000c6ff0]                           dc.b $00
[000c6ff1]                           dc.b $00
[000c6ff2]                           dc.b $00
[000c6ff3]                           dc.b $18
[000c6ff4]                           dc.b $00
[000c6ff5]                           dc.b $06
_01__ED_WRAP:
[000c6ff6]                           dc.b $00
[000c6ff7]                           dc.b $00
[000c6ff8]                           dc.b $00
[000c6ff9]                           dc.b $02
[000c6ffa]                           dc.b $00
[000c6ffb]                           dc.b $07
[000c6ffc]                           dc.b $00
[000c6ffd]                           dc.b $18
[000c6ffe]                           dc.b $00
[000c6fff]                           dc.b $40
[000c7000]                           dc.b $00
[000c7001]                           dc.b $10
[000c7002] 000c5586                  dc.l A_3DBUTTON12
[000c7006]                           dc.b $00
[000c7007]                           dc.b $00
[000c7008]                           dc.b $00
[000c7009]                           dc.b $00
[000c700a]                           dc.b $00
[000c700b]                           dc.b $18
[000c700c]                           dc.b $00
[000c700d]                           dc.b $06
_02__ED_WRAP:
[000c700e]                           dc.b $00
[000c700f]                           dc.b $05
[000c7010]                           dc.b $00
[000c7011]                           dc.b $03
[000c7012]                           dc.b $00
[000c7013]                           dc.b $04
[000c7014]                           dc.b $00
[000c7015]                           dc.b $18
[000c7016]                           dc.b $00
[000c7017]                           dc.b $40
[000c7018]                           dc.b $00
[000c7019]                           dc.b $00
[000c701a] 000c58c6                  dc.l A_INNERFRAME04
[000c701e]                           dc.b $00
[000c701f]                           dc.b $01
[000c7020]                           dc.b $00
[000c7021]                           dc.b $00
[000c7022]                           dc.b $00
[000c7023]                           dc.b $16
[000c7024]                           dc.b $00
[000c7025]                           dc.b $03
_03__ED_WRAP:
[000c7026]                           dc.b $00
[000c7027]                           dc.b $04
[000c7028]                           dc.w $ffff
[000c702a]                           dc.w $ffff
[000c702c]                           dc.b $00
[000c702d]                           dc.b $18
[000c702e]                           dc.b $00
[000c702f]                           dc.b $08
[000c7030]                           dc.b $00
[000c7031]                           dc.b $10
[000c7032] 000c5686                  dc.l A_BOXED03
[000c7036]                           dc.b $00
[000c7037]                           dc.b $0c
[000c7038]                           dc.b $00
[000c7039]                           dc.b $01
[000c703a]                           dc.b $00
[000c703b]                           dc.b $05
[000c703c]                           dc.b $00
[000c703d]                           dc.b $01
_04__ED_WRAP:
[000c703e]                           dc.b $00
[000c703f]                           dc.b $02
[000c7040]                           dc.w $ffff
[000c7042]                           dc.w $ffff
[000c7044]                           dc.b $00
[000c7045]                           dc.b $1c
[000c7046]                           dc.b $00
[000c7047]                           dc.b $40
[000c7048]                           dc.b $00
[000c7049]                           dc.b $00
[000c704a] 000c44e7                  dc.l TEXT_43
[000c704e]                           dc.b $00
[000c704f]                           dc.b $03
[000c7050]                           dc.b $00
[000c7051]                           dc.b $01
[000c7052]                           dc.b $00
[000c7053]                           dc.b $08
[000c7054]                           dc.b $00
[000c7055]                           dc.b $01
_05__ED_WRAP:
[000c7056]                           dc.b $00
[000c7057]                           dc.b $07
[000c7058]                           dc.w $ffff
[000c705a]                           dc.w $ffff
[000c705c]                           dc.b $00
[000c705d]                           dc.b $18
[000c705e]                           dc.w $4007
[000c7060]                           dc.b $00
[000c7061]                           dc.b $10
[000c7062] 000c5506                  dc.l A_3DBUTTON05
[000c7066]                           dc.b $00
[000c7067]                           dc.b $01
[000c7068]                           dc.b $00
[000c7069]                           dc.b $03
[000c706a]                           dc.b $00
[000c706b]                           dc.b $0a
[000c706c]                           dc.b $00
[000c706d]                           dc.b $02
_05a_ED_WRAP:
[000c706e]                           dc.b $00
[000c706f]                           dc.b $00
[000c7070]                           dc.b $00
[000c7071]                           dc.b $00
[000c7072]                           dc.b $00
[000c7073]                           dc.b $00
[000c7074]                           dc.b $00
[000c7075]                           dc.b $00
[000c7076]                           dc.w $8000
[000c7078]                           dc.w $884f
[000c707a]                           dc.b $00
[000c707b]                           dc.b $00
[000c707c]                           dc.b $00
[000c707d]                           dc.b $00
[000c707e]                           dc.b $00
[000c707f]                           dc.b $00
[000c7080]                           dc.b $00
[000c7081]                           dc.b $00
[000c7082]                           dc.b $00
[000c7083]                           dc.b $00
[000c7084]                           dc.b $00
[000c7085]                           dc.b $00
_07__ED_WRAP:
[000c7086]                           dc.b $00
[000c7087]                           dc.b $01
[000c7088]                           dc.w $ffff
[000c708a]                           dc.w $ffff
[000c708c]                           dc.b $00
[000c708d]                           dc.b $18
[000c708e]                           dc.w $4005
[000c7090]                           dc.b $00
[000c7091]                           dc.b $10
[000c7092] 000c5546                  dc.l A_3DBUTTON07
[000c7096]                           dc.b $00
[000c7097]                           dc.b $0d
[000c7098]                           dc.b $00
[000c7099]                           dc.b $03
[000c709a]                           dc.b $00
[000c709b]                           dc.b $0a
[000c709c]                           dc.b $00
[000c709d]                           dc.b $02
_07a_ED_WRAP:
[000c709e]                           dc.b $00
[000c709f]                           dc.b $00
[000c70a0]                           dc.b $00
[000c70a1]                           dc.b $00
[000c70a2]                           dc.b $00
[000c70a3]                           dc.b $00
[000c70a4]                           dc.b $00
[000c70a5]                           dc.b $00
[000c70a6]                           dc.w $8020
[000c70a8]                           dc.w $8841
[000c70aa]                           dc.b $00
[000c70ab]                           dc.b $00
[000c70ac]                           dc.b $00
[000c70ad]                           dc.b $00
[000c70ae]                           dc.b $00
[000c70af]                           dc.b $00
[000c70b0]                           dc.b $00
[000c70b1]                           dc.b $00
[000c70b2]                           dc.b $00
[000c70b3]                           dc.b $00
[000c70b4]                           dc.b $00
[000c70b5]                           dc.b $00
EDITOR:
[000c70b6]                           dc.b $00
[000c70b7]                           dc.b $00
[000c70b8]                           dc.b $00
[000c70b9]                           dc.b $00
[000c70ba] 0003cf82                  dc.l edit_service
[000c70be] 0003c9a8                  dc.l edit_make
[000c70c2] 0004f69e                  dc.l Awi_open
[000c70c6] 0003c89c                  dc.l edit_init
[000c70ca]                           dc.b $00
[000c70cb]                           dc.b $00
[000c70cc]                           dc.b $00
[000c70cd]                           dc.b $00
[000c70ce] 000c6e8e                  dc.l _ED_TOOL
[000c70d2]                           dc.b $00
[000c70d3]                           dc.b $00
[000c70d4]                           dc.b $00
[000c70d5]                           dc.b $00
[000c70d6]                           dc.w $ffff
[000c70d8]                           dc.w $4fef
[000c70da]                           dc.b $00
[000c70db]                           dc.b $02
[000c70dc]                           dc.b $00
[000c70dd]                           dc.b $04
[000c70de]                           dc.b $00
[000c70df]                           dc.b $63
[000c70e0]                           dc.b $00
[000c70e1]                           dc.b $63
[000c70e2]                           dc.b $00
[000c70e3]                           dc.b $00
[000c70e4]                           dc.b $00
[000c70e5]                           dc.b $00
[000c70e6]                           dc.b $00
[000c70e7]                           dc.b $00
[000c70e8]                           dc.b $00
[000c70e9]                           dc.b $00
[000c70ea]                           dc.b $00
[000c70eb]                           dc.b $00
[000c70ec]                           dc.b $00
[000c70ed]                           dc.b $00
[000c70ee]                           dc.b $00
[000c70ef]                           dc.b $00
[000c70f0]                           dc.b $00
[000c70f1]                           dc.b $00
[000c70f2]                           dc.w $ffff
[000c70f4]                           dc.w $ffff
[000c70f6]                           dc.w $ffff
[000c70f8]                           dc.w $ffff
[000c70fa]                           dc.b $00
[000c70fb]                           dc.b $00
[000c70fc]                           dc.b $00
[000c70fd]                           dc.b $00
[000c70fe]                           dc.w $fefe
[000c7100] 000c41b6                  dc.l TEXT_002
[000c7104] 000c41b6                  dc.l TEXT_002
[000c7108]                           dc.w $2710
[000c710a]                           dc.w $0103
[000c710c]                           dc.b $00
[000c710d]                           dc.b $00
[000c710e]                           dc.w $ffff
[000c7110] 000c5da0                  dc.l _ED_ICON
[000c7114] 000c5dc6                  dc.l _ED_MENU
[000c7118] 0003b426                  dc.l edit_key
[000c711c] 0004b600                  dc.l Awi_obchange
[000c7120] 0004b8cc                  dc.l Awi_redraw
[000c7124] 00050454                  dc.l Awi_topped
[000c7128] 0005013e                  dc.l Awi_closed
[000c712c] 0003c640                  dc.l edit_fulled
[000c7130] 0003c6cc                  dc.l edit_arrowed
[000c7134] 0003c85c                  dc.l edit_hslid
[000c7138] 0003d268                  dc.l edit_vslid
[000c713c] 0003d1be                  dc.l edit_sized
[000c7140] 0003d166                  dc.l edit_moved
[000c7144] 00050f9c                  dc.l Awi_iconify
[000c7148] 0005117c                  dc.l Awi_uniconify
[000c714c] 00052328                  dc.l Awi_gemscript
[000c7150]                           dc.b $00
[000c7151]                           dc.b $00
[000c7152]                           dc.b $00
[000c7153]                           dc.b $00
[000c7154]                           dc.b $00
[000c7155]                           dc.b $00
[000c7156]                           dc.b $00
[000c7157]                           dc.b $00
WIED_FIND:
[000c7158]                           dc.b $00
[000c7159]                           dc.b $00
[000c715a]                           dc.b $00
[000c715b]                           dc.b $00
[000c715c] 00051276                  dc.l Awi_service
[000c7160] 0004f0ee                  dc.l Awi_selfcreate
[000c7164] 0004f69e                  dc.l Awi_open
[000c7168] 0004e610                  dc.l Awi_init
[000c716c] 000c6606                  dc.l _ED_FIND
[000c7170]                           dc.b $00
[000c7171]                           dc.b $00
[000c7172]                           dc.b $00
[000c7173]                           dc.b $00
[000c7174]                           dc.b $00
[000c7175]                           dc.b $00
[000c7176]                           dc.b $00
[000c7177]                           dc.b $00
[000c7178]                           dc.b $ff
[000c7179]                           dc.b $ff
[000c717a]                           dc.b $00
[000c717b]                           dc.b $0b
[000c717c]                           dc.b $00
[000c717d]                           dc.b $00
[000c717e]                           dc.b $00
[000c717f]                           dc.b $00
[000c7180]                           dc.b $00
[000c7181]                           dc.b $78
[000c7182]                           dc.b $00
[000c7183]                           dc.b $32
[000c7184]                           dc.b $00
[000c7185]                           dc.b $00
[000c7186]                           dc.b $00
[000c7187]                           dc.b $00
[000c7188]                           dc.b $00
[000c7189]                           dc.b $00
[000c718a]                           dc.b $00
[000c718b]                           dc.b $00
[000c718c]                           dc.b $00
[000c718d]                           dc.b $00
[000c718e]                           dc.b $00
[000c718f]                           dc.b $00
[000c7190]                           dc.b $00
[000c7191]                           dc.b $00
[000c7192]                           dc.b $00
[000c7193]                           dc.b $00
[000c7194]                           dc.w $ffff
[000c7196]                           dc.w $ffff
[000c7198]                           dc.w $ffff
[000c719a]                           dc.w $ffff
[000c719c]                           dc.b $00
[000c719d]                           dc.b $00
[000c719e]                           dc.b $00
[000c719f]                           dc.b $00
[000c71a0]                           dc.w $f8f8
[000c71a2] 000c4588                  dc.l TEXT_54
[000c71a6] 000c41b6                  dc.l TEXT_002
[000c71aa]                           dc.w $2710
[000c71ac]                           dc.b $00
[000c71ad]                           dc.b $00
[000c71ae]                           dc.b $00
[000c71af]                           dc.b $00
[000c71b0]                           dc.w $ffff
[000c71b2]                           dc.b $00
[000c71b3]                           dc.b $00
[000c71b4]                           dc.b $00
[000c71b5]                           dc.b $00
[000c71b6]                           dc.b $00
[000c71b7]                           dc.b $00
[000c71b8]                           dc.b $00
[000c71b9]                           dc.b $00
[000c71ba] 0005ef2c                  dc.l Awi_keys
[000c71be] 0004b600                  dc.l Awi_obchange
[000c71c2] 0004b8cc                  dc.l Awi_redraw
[000c71c6] 00050454                  dc.l Awi_topped
[000c71ca] 0005013e                  dc.l Awi_closed
[000c71ce] 00050496                  dc.l Awi_fulled
[000c71d2] 0004bcc8                  dc.l Awi_arrowed
[000c71d6] 0004beea                  dc.l Awi_hslid
[000c71da] 0004bf56                  dc.l Awi_vslid
[000c71de] 000506ca                  dc.l Awi_sized
[000c71e2] 000507bc                  dc.l Awi_moved
[000c71e6] 00050f9c                  dc.l Awi_iconify
[000c71ea] 0005117c                  dc.l Awi_uniconify
[000c71ee] 00052328                  dc.l Awi_gemscript
[000c71f2]                           dc.b $00
[000c71f3]                           dc.b $00
[000c71f4]                           dc.b $00
[000c71f5]                           dc.b $00
[000c71f6]                           dc.b $00
[000c71f7]                           dc.b $00
[000c71f8]                           dc.b $00
[000c71f9]                           dc.b $00
WIED_GOTOLINE:
[000c71fa]                           dc.b $00
[000c71fb]                           dc.b $00
[000c71fc]                           dc.b $00
[000c71fd]                           dc.b $00
[000c71fe] 00051276                  dc.l Awi_service
[000c7202] 0004f0ee                  dc.l Awi_selfcreate
[000c7206] 0004f69e                  dc.l Awi_open
[000c720a] 0004e610                  dc.l Awi_init
[000c720e] 000c676e                  dc.l _ED_GOTOLINE
[000c7212]                           dc.b $00
[000c7213]                           dc.b $00
[000c7214]                           dc.b $00
[000c7215]                           dc.b $00
[000c7216]                           dc.b $00
[000c7217]                           dc.b $00
[000c7218]                           dc.b $00
[000c7219]                           dc.b $00
[000c721a]                           dc.w $ffff
[000c721c]                           dc.b $00
[000c721d]                           dc.b $0b
[000c721e]                           dc.b $00
[000c721f]                           dc.b $00
[000c7220]                           dc.b $00
[000c7221]                           dc.b $00
[000c7222]                           dc.b $00
[000c7223]                           dc.b $78
[000c7224]                           dc.b $00
[000c7225]                           dc.b $32
[000c7226]                           dc.b $00
[000c7227]                           dc.b $00
[000c7228]                           dc.b $00
[000c7229]                           dc.b $00
[000c722a]                           dc.b $00
[000c722b]                           dc.b $00
[000c722c]                           dc.b $00
[000c722d]                           dc.b $00
[000c722e]                           dc.b $00
[000c722f]                           dc.b $00
[000c7230]                           dc.b $00
[000c7231]                           dc.b $00
[000c7232]                           dc.b $00
[000c7233]                           dc.b $00
[000c7234]                           dc.b $00
[000c7235]                           dc.b $00
[000c7236]                           dc.w $ffff
[000c7238]                           dc.w $ffff
[000c723a]                           dc.w $ffff
[000c723c]                           dc.w $ffff
[000c723e]                           dc.b $00
[000c723f]                           dc.b $00
[000c7240]                           dc.b $00
[000c7241]                           dc.b $00
[000c7242]                           dc.w $f8f8
[000c7244] 000c4293                  dc.l TEXT_12
[000c7248] 000c41b6                  dc.l TEXT_002
[000c724c]                           dc.w $2710
[000c724e]                           dc.b $00
[000c724f]                           dc.b $00
[000c7250]                           dc.b $00
[000c7251]                           dc.b $00
[000c7252]                           dc.w $ffff
[000c7254]                           dc.b $00
[000c7255]                           dc.b $00
[000c7256]                           dc.b $00
[000c7257]                           dc.b $00
[000c7258]                           dc.b $00
[000c7259]                           dc.b $00
[000c725a]                           dc.b $00
[000c725b]                           dc.b $00
[000c725c] 0005ef2c                  dc.l Awi_keys
[000c7260] 0004b600                  dc.l Awi_obchange
[000c7264] 0004b8cc                  dc.l Awi_redraw
[000c7268] 00050454                  dc.l Awi_topped
[000c726c] 0005013e                  dc.l Awi_closed
[000c7270] 00050496                  dc.l Awi_fulled
[000c7274] 0004bcc8                  dc.l Awi_arrowed
[000c7278] 0004beea                  dc.l Awi_hslid
[000c727c] 0004bf56                  dc.l Awi_vslid
[000c7280] 000506ca                  dc.l Awi_sized
[000c7284] 000507bc                  dc.l Awi_moved
[000c7288] 00050f9c                  dc.l Awi_iconify
[000c728c] 0005117c                  dc.l Awi_uniconify
[000c7290] 00052328                  dc.l Awi_gemscript
[000c7294]                           dc.b $00
[000c7295]                           dc.b $00
[000c7296]                           dc.b $00
[000c7297]                           dc.b $00
[000c7298]                           dc.b $00
[000c7299]                           dc.b $00
[000c729a]                           dc.b $00
[000c729b]                           dc.b $00
WIED_INFO:
[000c729c]                           dc.b $00
[000c729d]                           dc.b $00
[000c729e]                           dc.b $00
[000c729f]                           dc.b $00
[000c72a0] 00051276                  dc.l Awi_service
[000c72a4] 0004f0ee                  dc.l Awi_selfcreate
[000c72a8] 0004f69e                  dc.l Awi_open
[000c72ac] 0004e610                  dc.l Awi_init
[000c72b0] 000c6846                  dc.l _ED_INFO
[000c72b4]                           dc.b $00
[000c72b5]                           dc.b $00
[000c72b6]                           dc.b $00
[000c72b7]                           dc.b $00
[000c72b8]                           dc.b $00
[000c72b9]                           dc.b $00
[000c72ba]                           dc.b $00
[000c72bb]                           dc.b $00
[000c72bc]                           dc.w $ffff
[000c72be]                           dc.b $00
[000c72bf]                           dc.b $0b
[000c72c0]                           dc.b $00
[000c72c1]                           dc.b $00
[000c72c2]                           dc.b $00
[000c72c3]                           dc.b $00
[000c72c4]                           dc.b $00
[000c72c5]                           dc.b $78
[000c72c6]                           dc.b $00
[000c72c7]                           dc.b $32
[000c72c8]                           dc.b $00
[000c72c9]                           dc.b $00
[000c72ca]                           dc.b $00
[000c72cb]                           dc.b $00
[000c72cc]                           dc.b $00
[000c72cd]                           dc.b $00
[000c72ce]                           dc.b $00
[000c72cf]                           dc.b $00
[000c72d0]                           dc.b $00
[000c72d1]                           dc.b $00
[000c72d2]                           dc.b $00
[000c72d3]                           dc.b $00
[000c72d4]                           dc.b $00
[000c72d5]                           dc.b $00
[000c72d6]                           dc.b $00
[000c72d7]                           dc.b $00
[000c72d8]                           dc.w $ffff
[000c72da]                           dc.w $ffff
[000c72dc]                           dc.w $ffff
[000c72de]                           dc.w $ffff
[000c72e0]                           dc.b $00
[000c72e1]                           dc.b $00
[000c72e2]                           dc.b $00
[000c72e3]                           dc.b $00
[000c72e4]                           dc.w $f8f8
[000c72e6] 000c4591                  dc.l TEXT_55
[000c72ea] 000c41b6                  dc.l TEXT_002
[000c72ee]                           dc.w $2710
[000c72f0]                           dc.b $00
[000c72f1]                           dc.b $00
[000c72f2]                           dc.b $00
[000c72f3]                           dc.b $00
[000c72f4]                           dc.w $ffff
[000c72f6]                           dc.b $00
[000c72f7]                           dc.b $00
[000c72f8]                           dc.b $00
[000c72f9]                           dc.b $00
[000c72fa]                           dc.b $00
[000c72fb]                           dc.b $00
[000c72fc]                           dc.b $00
[000c72fd]                           dc.b $00
[000c72fe] 0005ef2c                  dc.l Awi_keys
[000c7302] 0004b600                  dc.l Awi_obchange
[000c7306] 0004b8cc                  dc.l Awi_redraw
[000c730a] 00050454                  dc.l Awi_topped
[000c730e] 0005013e                  dc.l Awi_closed
[000c7312] 00050496                  dc.l Awi_fulled
[000c7316] 0004bcc8                  dc.l Awi_arrowed
[000c731a] 0004beea                  dc.l Awi_hslid
[000c731e] 0004bf56                  dc.l Awi_vslid
[000c7322] 000506ca                  dc.l Awi_sized
[000c7326] 000507bc                  dc.l Awi_moved
[000c732a] 00050f9c                  dc.l Awi_iconify
[000c732e] 0005117c                  dc.l Awi_uniconify
[000c7332] 00052328                  dc.l Awi_gemscript
[000c7336]                           dc.b $00
[000c7337]                           dc.b $00
[000c7338]                           dc.b $00
[000c7339]                           dc.b $00
[000c733a]                           dc.b $00
[000c733b]                           dc.b $00
[000c733c]                           dc.b $00
[000c733d]                           dc.b $00
WIED_INFOBOX:
[000c733e]                           dc.b $00
[000c733f]                           dc.b $00
[000c7340]                           dc.b $00
[000c7341]                           dc.b $00
[000c7342] 00051276                  dc.l Awi_service
[000c7346] 0004f0ee                  dc.l Awi_selfcreate
[000c734a] 0004f69e                  dc.l Awi_open
[000c734e] 0004e610                  dc.l Awi_init
[000c7352] 000c658e                  dc.l INFOBOX
[000c7356]                           dc.b $00
[000c7357]                           dc.b $00
[000c7358]                           dc.b $00
[000c7359]                           dc.b $00
[000c735a]                           dc.b $00
[000c735b]                           dc.b $00
[000c735c]                           dc.b $00
[000c735d]                           dc.b $00
[000c735e]                           dc.w $ffff
[000c7360]                           dc.b $00
[000c7361]                           dc.b $0b
[000c7362]                           dc.b $00
[000c7363]                           dc.b $00
[000c7364]                           dc.b $00
[000c7365]                           dc.b $00
[000c7366]                           dc.b $00
[000c7367]                           dc.b $78
[000c7368]                           dc.b $00
[000c7369]                           dc.b $32
[000c736a]                           dc.b $00
[000c736b]                           dc.b $00
[000c736c]                           dc.b $00
[000c736d]                           dc.b $00
[000c736e]                           dc.b $00
[000c736f]                           dc.b $00
[000c7370]                           dc.b $00
[000c7371]                           dc.b $00
[000c7372]                           dc.b $00
[000c7373]                           dc.b $00
[000c7374]                           dc.b $00
[000c7375]                           dc.b $00
[000c7376]                           dc.b $00
[000c7377]                           dc.b $00
[000c7378]                           dc.b $00
[000c7379]                           dc.b $00
[000c737a]                           dc.w $ffff
[000c737c]                           dc.w $ffff
[000c737e]                           dc.w $ffff
[000c7380]                           dc.w $ffff
[000c7382]                           dc.b $00
[000c7383]                           dc.b $00
[000c7384]                           dc.b $00
[000c7385]                           dc.b $00
[000c7386]                           dc.w $f8f8
[000c7388] 000c4591                  dc.l TEXT_55
[000c738c] 000c41b6                  dc.l TEXT_002
[000c7390]                           dc.w $2710
[000c7392]                           dc.b $00
[000c7393]                           dc.b $00
[000c7394]                           dc.b $00
[000c7395]                           dc.b $00
[000c7396]                           dc.w $ffff
[000c7398]                           dc.b $00
[000c7399]                           dc.b $00
[000c739a]                           dc.b $00
[000c739b]                           dc.b $00
[000c739c]                           dc.b $00
[000c739d]                           dc.b $00
[000c739e]                           dc.b $00
[000c739f]                           dc.b $00
[000c73a0] 0005ef2c                  dc.l Awi_keys
[000c73a4] 0004b600                  dc.l Awi_obchange
[000c73a8] 0004b8cc                  dc.l Awi_redraw
[000c73ac] 00050454                  dc.l Awi_topped
[000c73b0] 0005013e                  dc.l Awi_closed
[000c73b4] 00050496                  dc.l Awi_fulled
[000c73b8] 0004bcc8                  dc.l Awi_arrowed
[000c73bc] 0004beea                  dc.l Awi_hslid
[000c73c0] 0004bf56                  dc.l Awi_vslid
[000c73c4] 000506ca                  dc.l Awi_sized
[000c73c8] 000507bc                  dc.l Awi_moved
[000c73cc] 00050f9c                  dc.l Awi_iconify
[000c73d0] 0005117c                  dc.l Awi_uniconify
[000c73d4] 00052328                  dc.l Awi_gemscript
[000c73d8]                           dc.b $00
[000c73d9]                           dc.b $00
[000c73da]                           dc.b $00
[000c73db]                           dc.b $00
[000c73dc]                           dc.b $00
[000c73dd]                           dc.b $00
[000c73de]                           dc.b $00
[000c73df]                           dc.b $00
WIED_NEWFKEY:
[000c73e0]                           dc.b $00
[000c73e1]                           dc.b $00
[000c73e2]                           dc.b $00
[000c73e3]                           dc.b $00
[000c73e4] 00051276                  dc.l Awi_service
[000c73e8] 0004f0ee                  dc.l Awi_selfcreate
[000c73ec] 0004f69e                  dc.l Awi_open
[000c73f0] 0004e610                  dc.l Awi_init
[000c73f4] 000c68ee                  dc.l _ED_NEWFKEY
[000c73f8]                           dc.b $00
[000c73f9]                           dc.b $00
[000c73fa]                           dc.b $00
[000c73fb]                           dc.b $00
[000c73fc]                           dc.b $00
[000c73fd]                           dc.b $00
[000c73fe]                           dc.b $00
[000c73ff]                           dc.b $00
[000c7400]                           dc.w $ffff
[000c7402]                           dc.b $00
[000c7403]                           dc.b $0b
[000c7404]                           dc.b $00
[000c7405]                           dc.b $00
[000c7406]                           dc.b $00
[000c7407]                           dc.b $00
[000c7408]                           dc.b $00
[000c7409]                           dc.b $78
[000c740a]                           dc.b $00
[000c740b]                           dc.b $32
[000c740c]                           dc.b $00
[000c740d]                           dc.b $00
[000c740e]                           dc.b $00
[000c740f]                           dc.b $00
[000c7410]                           dc.b $00
[000c7411]                           dc.b $00
[000c7412]                           dc.b $00
[000c7413]                           dc.b $00
[000c7414]                           dc.b $00
[000c7415]                           dc.b $00
[000c7416]                           dc.b $00
[000c7417]                           dc.b $00
[000c7418]                           dc.b $00
[000c7419]                           dc.b $00
[000c741a]                           dc.b $00
[000c741b]                           dc.b $00
[000c741c]                           dc.w $ffff
[000c741e]                           dc.w $ffff
[000c7420]                           dc.w $ffff
[000c7422]                           dc.w $ffff
[000c7424]                           dc.b $00
[000c7425]                           dc.b $00
[000c7426]                           dc.b $00
[000c7427]                           dc.b $00
[000c7428]                           dc.w $f8f8
[000c742a] 000c4538                  dc.l TEXT_47
[000c742e] 000c41b6                  dc.l TEXT_002
[000c7432]                           dc.b $00
[000c7433]                           dc.b $00
[000c7434]                           dc.w $0100
[000c7436]                           dc.b $00
[000c7437]                           dc.b $00
[000c7438]                           dc.w $ffff
[000c743a]                           dc.b $00
[000c743b]                           dc.b $00
[000c743c]                           dc.b $00
[000c743d]                           dc.b $00
[000c743e]                           dc.b $00
[000c743f]                           dc.b $00
[000c7440]                           dc.b $00
[000c7441]                           dc.b $00
[000c7442] 0005ef2c                  dc.l Awi_keys
[000c7446] 0004b600                  dc.l Awi_obchange
[000c744a] 0004b8cc                  dc.l Awi_redraw
[000c744e] 00050454                  dc.l Awi_topped
[000c7452] 0005013e                  dc.l Awi_closed
[000c7456] 00050496                  dc.l Awi_fulled
[000c745a] 0004bcc8                  dc.l Awi_arrowed
[000c745e] 0004beea                  dc.l Awi_hslid
[000c7462] 0004bf56                  dc.l Awi_vslid
[000c7466] 000506ca                  dc.l Awi_sized
[000c746a] 000507bc                  dc.l Awi_moved
[000c746e] 00050f9c                  dc.l Awi_iconify
[000c7472] 0005117c                  dc.l Awi_uniconify
[000c7476] 00052328                  dc.l Awi_gemscript
[000c747a]                           dc.b $00
[000c747b]                           dc.b $00
[000c747c]                           dc.b $00
[000c747d]                           dc.b $00
[000c747e]                           dc.b $00
[000c747f]                           dc.b $00
[000c7480]                           dc.b $00
[000c7481]                           dc.b $00
WIED_OPTION:
[000c7482]                           dc.b $00
[000c7483]                           dc.b $00
[000c7484]                           dc.b $00
[000c7485]                           dc.b $00
[000c7486] 00051276                  dc.l Awi_service
[000c748a] 0004f0ee                  dc.l Awi_selfcreate
[000c748e] 0004f69e                  dc.l Awi_open
[000c7492] 0004e610                  dc.l Awi_init
[000c7496] 000c6a3e                  dc.l _ED_OPTION
[000c749a]                           dc.b $00
[000c749b]                           dc.b $00
[000c749c]                           dc.b $00
[000c749d]                           dc.b $00
[000c749e]                           dc.b $00
[000c749f]                           dc.b $00
[000c74a0]                           dc.b $00
[000c74a1]                           dc.b $00
[000c74a2]                           dc.b $ff
[000c74a3]                           dc.b $ff
[000c74a4]                           dc.b $00
[000c74a5]                           dc.b $0b
[000c74a6]                           dc.b $00
[000c74a7]                           dc.b $00
[000c74a8]                           dc.b $00
[000c74a9]                           dc.b $00
[000c74aa]                           dc.b $00
[000c74ab]                           dc.b $78
[000c74ac]                           dc.b $00
[000c74ad]                           dc.b $32
[000c74ae]                           dc.b $00
[000c74af]                           dc.b $00
[000c74b0]                           dc.b $00
[000c74b1]                           dc.b $00
[000c74b2]                           dc.b $00
[000c74b3]                           dc.b $00
[000c74b4]                           dc.b $00
[000c74b5]                           dc.b $00
[000c74b6]                           dc.b $00
[000c74b7]                           dc.b $00
[000c74b8]                           dc.b $00
[000c74b9]                           dc.b $00
[000c74ba]                           dc.b $00
[000c74bb]                           dc.b $00
[000c74bc]                           dc.b $00
[000c74bd]                           dc.b $00
[000c74be]                           dc.w $ffff
[000c74c0]                           dc.b $ff
[000c74c1]                           dc.b $ff
[000c74c2]                           dc.w $ffff
[000c74c4]                           dc.w $ffff
[000c74c6]                           dc.b $00
[000c74c7]                           dc.b $00
[000c74c8]                           dc.b $00
[000c74c9]                           dc.b $00
[000c74ca]                           dc.w $f8f8
[000c74cc] 000c4288                  dc.l TEXT_11
[000c74d0] 000c41b6                  dc.l TEXT_002
[000c74d4]                           dc.w $2710
[000c74d6]                           dc.b $00
[000c74d7]                           dc.b $00
[000c74d8]                           dc.b $00
[000c74d9]                           dc.b $00
[000c74da]                           dc.w $ffff
[000c74dc]                           dc.b $00
[000c74dd]                           dc.b $00
[000c74de]                           dc.b $00
[000c74df]                           dc.b $00
[000c74e0]                           dc.b $00
[000c74e1]                           dc.b $00
[000c74e2]                           dc.b $00
[000c74e3]                           dc.b $00
[000c74e4] 0005ef2c                  dc.l Awi_keys
[000c74e8] 0004b600                  dc.l Awi_obchange
[000c74ec] 0004b8cc                  dc.l Awi_redraw
[000c74f0] 00050454                  dc.l Awi_topped
[000c74f4] 0005013e                  dc.l Awi_closed
[000c74f8] 00050496                  dc.l Awi_fulled
[000c74fc] 0004bcc8                  dc.l Awi_arrowed
[000c7500] 0004beea                  dc.l Awi_hslid
[000c7504] 0004bf56                  dc.l Awi_vslid
[000c7508] 000506ca                  dc.l Awi_sized
[000c750c] 000507bc                  dc.l Awi_moved
[000c7510] 00050f9c                  dc.l Awi_iconify
[000c7514] 0005117c                  dc.l Awi_uniconify
[000c7518] 00052328                  dc.l Awi_gemscript
[000c751c]                           dc.b $00
[000c751d]                           dc.b $00
[000c751e]                           dc.b $00
[000c751f]                           dc.b $00
[000c7520]                           dc.b $00
[000c7521]                           dc.b $00
[000c7522]                           dc.b $00
[000c7523]                           dc.b $00
WIED_REPLACE:
[000c7524]                           dc.b $00
[000c7525]                           dc.b $00
[000c7526]                           dc.b $00
[000c7527]                           dc.b $00
[000c7528] 00051276                  dc.l Awi_service
[000c752c] 0004f0ee                  dc.l Awi_selfcreate
[000c7530] 0004f69e                  dc.l Awi_open
[000c7534] 0004e610                  dc.l Awi_init
[000c7538] 000c6c96                  dc.l _ED_REPLACE
[000c753c]                           dc.b $00
[000c753d]                           dc.b $00
[000c753e]                           dc.b $00
[000c753f]                           dc.b $00
[000c7540]                           dc.b $00
[000c7541]                           dc.b $00
[000c7542]                           dc.b $00
[000c7543]                           dc.b $00
[000c7544]                           dc.w $ffff
[000c7546]                           dc.b $00
[000c7547]                           dc.b $0b
[000c7548]                           dc.b $00
[000c7549]                           dc.b $00
[000c754a]                           dc.b $00
[000c754b]                           dc.b $00
[000c754c]                           dc.b $00
[000c754d]                           dc.b $78
[000c754e]                           dc.b $00
[000c754f]                           dc.b $32
[000c7550]                           dc.b $00
[000c7551]                           dc.b $00
[000c7552]                           dc.b $00
[000c7553]                           dc.b $00
[000c7554]                           dc.b $00
[000c7555]                           dc.b $00
[000c7556]                           dc.b $00
[000c7557]                           dc.b $00
[000c7558]                           dc.b $00
[000c7559]                           dc.b $00
[000c755a]                           dc.b $00
[000c755b]                           dc.b $00
[000c755c]                           dc.b $00
[000c755d]                           dc.b $00
[000c755e]                           dc.b $00
[000c755f]                           dc.b $00
[000c7560]                           dc.w $ffff
[000c7562]                           dc.w $ffff
[000c7564]                           dc.w $ffff
[000c7566]                           dc.b $ff
[000c7567]                           dc.b $ff
[000c7568]                           dc.b $00
[000c7569]                           dc.b $00
[000c756a]                           dc.b $00
[000c756b]                           dc.b $00
[000c756c]                           dc.w $f8f8
[000c756e] 000c45c7                  dc.l TEXT_59
[000c7572] 000c41b6                  dc.l TEXT_002
[000c7576]                           dc.w $2710
[000c7578]                           dc.b $00
[000c7579]                           dc.b $00
[000c757a]                           dc.b $00
[000c757b]                           dc.b $00
[000c757c]                           dc.w $ffff
[000c757e]                           dc.b $00
[000c757f]                           dc.b $00
[000c7580]                           dc.b $00
[000c7581]                           dc.b $00
[000c7582]                           dc.b $00
[000c7583]                           dc.b $00
[000c7584]                           dc.b $00
[000c7585]                           dc.b $00
[000c7586] 0005ef2c                  dc.l Awi_keys
[000c758a] 0004b600                  dc.l Awi_obchange
[000c758e] 0004b8cc                  dc.l Awi_redraw
[000c7592] 00050454                  dc.l Awi_topped
[000c7596] 0005013e                  dc.l Awi_closed
[000c759a] 00050496                  dc.l Awi_fulled
[000c759e] 0004bcc8                  dc.l Awi_arrowed
[000c75a2] 0004beea                  dc.l Awi_hslid
[000c75a6] 0004bf56                  dc.l Awi_vslid
[000c75aa] 000506ca                  dc.l Awi_sized
[000c75ae] 000507bc                  dc.l Awi_moved
[000c75b2] 00050f9c                  dc.l Awi_iconify
[000c75b6] 0005117c                  dc.l Awi_uniconify
[000c75ba] 00052328                  dc.l Awi_gemscript
[000c75be]                           dc.b $00
[000c75bf]                           dc.b $00
[000c75c0]                           dc.b $00
[000c75c1]                           dc.b $00
[000c75c2]                           dc.b $00
[000c75c3]                           dc.b $00
[000c75c4]                           dc.b $00
[000c75c5]                           dc.b $00
WIED_WRAP:
[000c75c6]                           dc.b $00
[000c75c7]                           dc.b $00
[000c75c8]                           dc.b $00
[000c75c9]                           dc.b $00
[000c75ca] 00051276                  dc.l Awi_service
[000c75ce] 0004f0ee                  dc.l Awi_selfcreate
[000c75d2] 0004f69e                  dc.l Awi_open
[000c75d6] 0004e610                  dc.l Awi_init
[000c75da] 000c6fde                  dc.l _ED_WRAP
[000c75de]                           dc.b $00
[000c75df]                           dc.b $00
[000c75e0]                           dc.b $00
[000c75e1]                           dc.b $00
[000c75e2]                           dc.b $00
[000c75e3]                           dc.b $00
[000c75e4]                           dc.b $00
[000c75e5]                           dc.b $00
[000c75e6]                           dc.w $ffff
[000c75e8]                           dc.b $00
[000c75e9]                           dc.b $0b
[000c75ea]                           dc.b $00
[000c75eb]                           dc.b $00
[000c75ec]                           dc.b $00
[000c75ed]                           dc.b $00
[000c75ee]                           dc.b $00
[000c75ef]                           dc.b $78
[000c75f0]                           dc.b $00
[000c75f1]                           dc.b $32
[000c75f2]                           dc.b $00
[000c75f3]                           dc.b $00
[000c75f4]                           dc.b $00
[000c75f5]                           dc.b $00
[000c75f6]                           dc.b $00
[000c75f7]                           dc.b $00
[000c75f8]                           dc.b $00
[000c75f9]                           dc.b $00
[000c75fa]                           dc.b $00
[000c75fb]                           dc.b $00
[000c75fc]                           dc.b $00
[000c75fd]                           dc.b $00
[000c75fe]                           dc.b $00
[000c75ff]                           dc.b $00
[000c7600]                           dc.b $00
[000c7601]                           dc.b $00
[000c7602]                           dc.w $ffff
[000c7604]                           dc.w $ffff
[000c7606]                           dc.w $ffff
[000c7608]                           dc.w $ffff
[000c760a]                           dc.b $00
[000c760b]                           dc.b $00
[000c760c]                           dc.b $00
[000c760d]                           dc.b $00
[000c760e]                           dc.w $f8f8
[000c7610] 000c45a9                  dc.l TEXT_57
[000c7614] 000c41b6                  dc.l TEXT_002
[000c7618]                           dc.w $2710
[000c761a]                           dc.b $00
[000c761b]                           dc.b $00
[000c761c]                           dc.b $00
[000c761d]                           dc.b $00
[000c761e]                           dc.w $ffff
[000c7620]                           dc.b $00
[000c7621]                           dc.b $00
[000c7622]                           dc.b $00
[000c7623]                           dc.b $00
[000c7624]                           dc.b $00
[000c7625]                           dc.b $00
[000c7626]                           dc.b $00
[000c7627]                           dc.b $00
[000c7628] 0005ef2c                  dc.l Awi_keys
[000c762c] 0004b600                  dc.l Awi_obchange
[000c7630] 0004b8cc                  dc.l Awi_redraw
[000c7634] 00050454                  dc.l Awi_topped
[000c7638] 0005013e                  dc.l Awi_closed
[000c763c] 00050496                  dc.l Awi_fulled
[000c7640] 0004bcc8                  dc.l Awi_arrowed
[000c7644] 0004beea                  dc.l Awi_hslid
[000c7648] 0004bf56                  dc.l Awi_vslid
[000c764c] 000506ca                  dc.l Awi_sized
[000c7650] 000507bc                  dc.l Awi_moved
[000c7654] 00050f9c                  dc.l Awi_iconify
[000c7658] 0005117c                  dc.l Awi_uniconify
[000c765c] 00052328                  dc.l Awi_gemscript
[000c7660]                           dc.b $00
[000c7661]                           dc.b $00
[000c7662]                           dc.b $00
[000c7663]                           dc.b $00
[000c7664]                           dc.b $00
[000c7665]                           dc.b $00
[000c7666]                           dc.b $00
[000c7667]                           dc.b $00
protocnf:
[000c7668]                           dc.b 'AED1',0
[000c766d]                           dc.b $02
[000c766e]                           dc.b $00
[000c766f]                           dc.b $00
[000c7670]                           dc.b $00
[000c7671]                           dc.b $00
[000c7672]                           dc.b $00
[000c7673]                           dc.b $01
[000c7674]                           dc.b $00
[000c7675]                           dc.b $0d
[000c7676]                           dc.b $00
[000c7677]                           dc.b $00
[000c7678]                           dc.b 'txt',0
[000c767c]                           dc.b $00
[000c767d]                           dc.b $00
[000c767e]                           dc.b $00
[000c767f]                           dc.b $00
[000c7680]                           dc.b $00
[000c7681]                           dc.b $00
[000c7682]                           dc.b $00
[000c7683]                           dc.b $00
[000c7684]                           dc.b $00
[000c7685]                           dc.b $00
[000c7686]                           dc.b $00
[000c7687]                           dc.b $00
[000c7688]                           dc.b 'namenlos.txt',0
[000c7695]                           dc.b $00
[000c7696]                           dc.b $00
[000c7697]                           dc.b $00
[000c7698]                           dc.b $00
[000c7699]                           dc.b $00
[000c769a]                           dc.b $00
[000c769b]                           dc.b $00
[000c769c]                           dc.b $00
[000c769d]                           dc.b $00
[000c769e]                           dc.b $00
[000c769f]                           dc.b $00
[000c76a0]                           dc.b $00
[000c76a1]                           dc.b $00
[000c76a2]                           dc.b $00
[000c76a3]                           dc.b $00
[000c76a4]                           dc.b $00
[000c76a5]                           dc.b $00
[000c76a6]                           dc.b $00
[000c76a7]                           dc.b $00
[000c76a8]                           dc.b $00
[000c76a9]                           dc.b $00
[000c76aa]                           dc.b $00
[000c76ab]                           dc.b $00
[000c76ac]                           dc.b $00
[000c76ad]                           dc.b $00
[000c76ae]                           dc.b $00
[000c76af]                           dc.b $00
[000c76b0]                           dc.b $00
[000c76b1]                           dc.b $00
[000c76b2]                           dc.b $00
[000c76b3]                           dc.b $00
[000c76b4]                           dc.b $00
[000c76b5]                           dc.b $00
[000c76b6]                           dc.b $00
[000c76b7]                           dc.b $00
[000c76b8]                           dc.b $00
[000c76b9]                           dc.b $00
[000c76ba]                           dc.b $00
[000c76bb]                           dc.b $00
[000c76bc]                           dc.b $00
[000c76bd]                           dc.b $00
[000c76be]                           dc.b $00
[000c76bf]                           dc.b $00
[000c76c0]                           dc.b $00
[000c76c1]                           dc.b $00
[000c76c2]                           dc.b $00
[000c76c3]                           dc.b $00
[000c76c4]                           dc.b $00
[000c76c5]                           dc.b $00
[000c76c6]                           dc.b $00
[000c76c7]                           dc.b $00
[000c76c8]                           dc.b $00
[000c76c9]                           dc.b $00
[000c76ca]                           dc.b $00
[000c76cb]                           dc.b $00
[000c76cc]                           dc.b $00
[000c76cd]                           dc.b $00
[000c76ce]                           dc.b $00
[000c76cf]                           dc.b $00
[000c76d0]                           dc.b $00
[000c76d1]                           dc.b $00
[000c76d2]                           dc.b $00
[000c76d3]                           dc.b $00
[000c76d4]                           dc.b $00
[000c76d5]                           dc.b $00
[000c76d6]                           dc.b $00
[000c76d7]                           dc.b $00
[000c76d8]                           dc.b $00
[000c76d9]                           dc.b $00
[000c76da]                           dc.b $00
[000c76db]                           dc.b $00
[000c76dc]                           dc.b $00
[000c76dd]                           dc.b $00
[000c76de]                           dc.b $00
[000c76df]                           dc.b $00
[000c76e0]                           dc.b $00
[000c76e1]                           dc.b $00
[000c76e2]                           dc.b $00
[000c76e3]                           dc.b $00
[000c76e4]                           dc.b $00
[000c76e5]                           dc.b $00
[000c76e6]                           dc.b $00
[000c76e7]                           dc.b $00
[000c76e8]                           dc.b $00
[000c76e9]                           dc.b $00
[000c76ea]                           dc.b $00
[000c76eb]                           dc.b $00
[000c76ec]                           dc.b $00
[000c76ed]                           dc.b $00
[000c76ee]                           dc.b $00
[000c76ef]                           dc.b $00
[000c76f0]                           dc.b $00
[000c76f1]                           dc.b $00
[000c76f2]                           dc.b $00
[000c76f3]                           dc.b $00
[000c76f4]                           dc.b $00
[000c76f5]                           dc.b $00
[000c76f6]                           dc.b $00
[000c76f7]                           dc.b $00
[000c76f8]                           dc.b $00
[000c76f9]                           dc.b $00
[000c76fa]                           dc.b $00
[000c76fb]                           dc.b $00
[000c76fc]                           dc.b $00
[000c76fd]                           dc.b $00
[000c76fe]                           dc.b $00
[000c76ff]                           dc.b $00
[000c7700]                           dc.b $00
[000c7701]                           dc.b $00
[000c7702]                           dc.b $00
[000c7703]                           dc.b $00
[000c7704]                           dc.b $00
[000c7705]                           dc.b $00
[000c7706]                           dc.b $00
[000c7707]                           dc.b $00
[000c7708]                           dc.b $00
[000c7709]                           dc.b $00
[000c770a]                           dc.b $00
[000c770b]                           dc.b $00
[000c770c]                           dc.b $00
[000c770d]                           dc.b $00
[000c770e]                           dc.b $00
[000c770f]                           dc.b $00
[000c7710]                           dc.b $00
[000c7711]                           dc.b $00
[000c7712]                           dc.b $00
[000c7713]                           dc.b $00
[000c7714]                           dc.b $00
[000c7715]                           dc.b $00
[000c7716]                           dc.b $00
[000c7717]                           dc.b $00
[000c7718]                           dc.b $00
[000c7719]                           dc.b $00
[000c771a]                           dc.b $00
[000c771b]                           dc.b $00
[000c771c]                           dc.b $00
[000c771d]                           dc.b $00
[000c771e]                           dc.b $00
[000c771f]                           dc.b $00
[000c7720]                           dc.b $00
[000c7721]                           dc.b $00
[000c7722]                           dc.b $00
[000c7723]                           dc.b $00
[000c7724]                           dc.b $00
[000c7725]                           dc.b $00
[000c7726]                           dc.b $00
[000c7727]                           dc.b $00
[000c7728]                           dc.b $00
[000c7729]                           dc.b $00
[000c772a]                           dc.b $00
[000c772b]                           dc.b $00
[000c772c]                           dc.b $00
[000c772d]                           dc.b $00
[000c772e]                           dc.b $00
[000c772f]                           dc.b $00
[000c7730]                           dc.b $00
[000c7731]                           dc.b $00
[000c7732]                           dc.b $00
[000c7733]                           dc.b $00
[000c7734]                           dc.b $00
[000c7735]                           dc.b $00
[000c7736]                           dc.b $00
[000c7737]                           dc.b $00
[000c7738]                           dc.b $00
[000c7739]                           dc.b $00
[000c773a]                           dc.b $00
[000c773b]                           dc.b $00
[000c773c]                           dc.b $00
[000c773d]                           dc.b $00
[000c773e]                           dc.b $00
[000c773f]                           dc.b $00
[000c7740]                           dc.b $00
[000c7741]                           dc.b $00
[000c7742]                           dc.b $00
[000c7743]                           dc.b $00
[000c7744]                           dc.b $00
[000c7745]                           dc.b $00
[000c7746]                           dc.b $00
[000c7747]                           dc.b $00
[000c7748]                           dc.b $00
[000c7749]                           dc.b $00
[000c774a]                           dc.b $00
[000c774b]                           dc.b $00
[000c774c]                           dc.b $00
[000c774d]                           dc.b $00
[000c774e]                           dc.b $00
[000c774f]                           dc.b $00
[000c7750]                           dc.b $00
[000c7751]                           dc.b $00
[000c7752]                           dc.b $00
[000c7753]                           dc.b $00
[000c7754]                           dc.b $00
[000c7755]                           dc.b $00
[000c7756]                           dc.b $00
[000c7757]                           dc.b $00
[000c7758]                           dc.b $00
[000c7759]                           dc.b $00
[000c775a]                           dc.b $00
[000c775b]                           dc.b $00
[000c775c]                           dc.b $00
[000c775d]                           dc.b $00
[000c775e]                           dc.b $00
[000c775f]                           dc.b $00
[000c7760]                           dc.b $00
[000c7761]                           dc.b $00
[000c7762]                           dc.b $00
[000c7763]                           dc.b $00
[000c7764]                           dc.b $00
[000c7765]                           dc.b $00
[000c7766]                           dc.b $00
[000c7767]                           dc.b $00
[000c7768]                           dc.b $00
[000c7769]                           dc.b $00
[000c776a]                           dc.b $00
[000c776b]                           dc.b $00
[000c776c]                           dc.b $00
[000c776d]                           dc.b $00
[000c776e]                           dc.b $00
[000c776f]                           dc.b $00
[000c7770]                           dc.b $00
[000c7771]                           dc.b $00
[000c7772]                           dc.b $00
[000c7773]                           dc.b $00
[000c7774]                           dc.b $00
[000c7775]                           dc.b $00
[000c7776]                           dc.b $00
[000c7777]                           dc.b $00
[000c7778]                           dc.b $00
[000c7779]                           dc.b $00
[000c777a]                           dc.b $00
[000c777b]                           dc.b $00
[000c777c]                           dc.b $00
[000c777d]                           dc.b $00
[000c777e]                           dc.b $00
[000c777f]                           dc.b $00
[000c7780]                           dc.b $00
[000c7781]                           dc.b $00
[000c7782]                           dc.b $00
[000c7783]                           dc.b $00
[000c7784]                           dc.b $00
[000c7785]                           dc.b $00
[000c7786]                           dc.b $00
[000c7787]                           dc.b $00
[000c7788]                           dc.b $00
[000c7789]                           dc.b $48
[000c778a]                           dc.b $00
[000c778b]                           dc.b $00
[000c778c]                           dc.b $00
[000c778d]                           dc.b $00
[000c778e]                           dc.b $00
[000c778f]                           dc.b $00
[000c7790]                           dc.b $00
[000c7791]                           dc.b $00
[000c7792]                           dc.b $00
[000c7793]                           dc.b $00
[000c7794]                           dc.b $00
[000c7795]                           dc.b $00
[000c7796]                           dc.b $00
[000c7797]                           dc.b $00
[000c7798]                           dc.b $00
[000c7799]                           dc.b $00
[000c779a]                           dc.b $00
[000c779b]                           dc.b $00
[000c779c]                           dc.b $00
[000c779d]                           dc.b $00
[000c779e]                           dc.b $00
[000c779f]                           dc.b $00
[000c77a0]                           dc.b $00
[000c77a1]                           dc.b $00
[000c77a2]                           dc.b $00
[000c77a3]                           dc.b $00
[000c77a4]                           dc.b $00
[000c77a5]                           dc.b $00
[000c77a6]                           dc.b $00
[000c77a7]                           dc.b $00
[000c77a8]                           dc.b $00
[000c77a9]                           dc.b $00
[000c77aa]                           dc.b $00
[000c77ab]                           dc.b $00
[000c77ac]                           dc.b $00
[000c77ad]                           dc.b $00
[000c77ae]                           dc.b $00
[000c77af]                           dc.b $00
[000c77b0]                           dc.b $00
[000c77b1]                           dc.b $00
[000c77b2]                           dc.b $00
[000c77b3]                           dc.b $00
[000c77b4]                           dc.b $00
[000c77b5]                           dc.b $00
[000c77b6]                           dc.b $00
[000c77b7]                           dc.b $00
[000c77b8]                           dc.b $00
[000c77b9]                           dc.b $00
[000c77ba]                           dc.b $00
[000c77bb]                           dc.b $00
[000c77bc]                           dc.b $00
[000c77bd]                           dc.b $00
[000c77be]                           dc.b $00
[000c77bf]                           dc.b $00
[000c77c0]                           dc.b $00
[000c77c1]                           dc.b $00
[000c77c2]                           dc.b $00
[000c77c3]                           dc.b $00
[000c77c4]                           dc.b $00
[000c77c5]                           dc.b $00
[000c77c6]                           dc.b $00
[000c77c7]                           dc.b $00
[000c77c8]                           dc.b $00
[000c77c9]                           dc.b $00
[000c77ca]                           dc.b $00
[000c77cb]                           dc.b $00
[000c77cc]                           dc.b $00
[000c77cd]                           dc.b $00
[000c77ce]                           dc.b $00
[000c77cf]                           dc.b $00
[000c77d0]                           dc.b $00
[000c77d1]                           dc.b $00
[000c77d2]                           dc.b $00
[000c77d3]                           dc.b $00
[000c77d4]                           dc.b $00
[000c77d5]                           dc.b $00
[000c77d6]                           dc.b $00
[000c77d7]                           dc.b $00
[000c77d8]                           dc.b $00
[000c77d9]                           dc.b $00
[000c77da]                           dc.b $00
[000c77db]                           dc.b $00
[000c77dc]                           dc.b $00
[000c77dd]                           dc.b $00
[000c77de]                           dc.b $00
[000c77df]                           dc.b $00
[000c77e0]                           dc.b $00
[000c77e1]                           dc.b $00
[000c77e2]                           dc.b $00
[000c77e3]                           dc.b $00
[000c77e4]                           dc.b $00
[000c77e5]                           dc.b $00
[000c77e6]                           dc.b $00
[000c77e7]                           dc.b $00
[000c77e8]                           dc.b $00
[000c77e9]                           dc.b $00
[000c77ea]                           dc.b $00
[000c77eb]                           dc.b $00
[000c77ec]                           dc.b $00
[000c77ed]                           dc.b $00
[000c77ee]                           dc.b $00
[000c77ef]                           dc.b $00
[000c77f0]                           dc.b $00
[000c77f1]                           dc.b $00
[000c77f2]                           dc.b $00
[000c77f3]                           dc.b $00
[000c77f4]                           dc.b $00
[000c77f5]                           dc.b $00
[000c77f6]                           dc.b $00
[000c77f7]                           dc.b $00
[000c77f8]                           dc.b $00
[000c77f9]                           dc.b $00
[000c77fa]                           dc.b $00
[000c77fb]                           dc.b $00
[000c77fc]                           dc.b $00
[000c77fd]                           dc.b $00
[000c77fe]                           dc.b $00
[000c77ff]                           dc.b $00
[000c7800]                           dc.b $00
[000c7801]                           dc.b $00
[000c7802]                           dc.b $00
[000c7803]                           dc.b $00
[000c7804]                           dc.b $00
[000c7805]                           dc.b $00
[000c7806]                           dc.b $00
[000c7807]                           dc.b $00
[000c7808]                           dc.b $00
[000c7809]                           dc.b $00
[000c780a]                           dc.b $00
[000c780b]                           dc.b $00
[000c780c]                           dc.b $00
[000c780d]                           dc.b $00
[000c780e]                           dc.b $00
[000c780f]                           dc.b $00
[000c7810]                           dc.b $00
[000c7811]                           dc.b $00
[000c7812]                           dc.b $00
[000c7813]                           dc.b $00
[000c7814]                           dc.b $00
[000c7815]                           dc.b $00
[000c7816]                           dc.b $00
[000c7817]                           dc.b $00
[000c7818]                           dc.b $00
[000c7819]                           dc.b $00
[000c781a]                           dc.b $00
[000c781b]                           dc.b $00
[000c781c]                           dc.b $00
[000c781d]                           dc.b $00
[000c781e]                           dc.b $00
[000c781f]                           dc.b $00
[000c7820]                           dc.b $00
[000c7821]                           dc.b $00
[000c7822]                           dc.b $00
[000c7823]                           dc.b $00
[000c7824]                           dc.b $00
[000c7825]                           dc.b $00
[000c7826]                           dc.b $00
[000c7827]                           dc.b $00
[000c7828]                           dc.b $00
[000c7829]                           dc.b $00
[000c782a]                           dc.b $00
[000c782b]                           dc.b $00
[000c782c]                           dc.b $00
[000c782d]                           dc.b $00
[000c782e]                           dc.b $00
[000c782f]                           dc.b $00
[000c7830]                           dc.b $00
[000c7831]                           dc.b $00
[000c7832]                           dc.b $00
[000c7833]                           dc.b $00
[000c7834]                           dc.b $00
[000c7835]                           dc.b $00
[000c7836]                           dc.b $00
[000c7837]                           dc.b $00
[000c7838]                           dc.b $00
[000c7839]                           dc.b $00
[000c783a]                           dc.b $00
[000c783b]                           dc.b $00
[000c783c]                           dc.b $00
[000c783d]                           dc.b $00
[000c783e]                           dc.b $00
[000c783f]                           dc.b $00
[000c7840]                           dc.b $00
[000c7841]                           dc.b $00
[000c7842]                           dc.b $00
[000c7843]                           dc.b $00
[000c7844]                           dc.b $00
[000c7845]                           dc.b $00
[000c7846]                           dc.b $00
[000c7847]                           dc.b $00
[000c7848]                           dc.b $00
[000c7849]                           dc.b $00
[000c784a]                           dc.b $00
[000c784b]                           dc.b $00
[000c784c]                           dc.b $00
[000c784d]                           dc.b $00
[000c784e]                           dc.b $00
[000c784f]                           dc.b $00
[000c7850]                           dc.b $00
[000c7851]                           dc.b $00
[000c7852]                           dc.b $00
[000c7853]                           dc.b $00
[000c7854]                           dc.b $00
[000c7855]                           dc.b $00
[000c7856]                           dc.b $00
[000c7857]                           dc.b $00
[000c7858]                           dc.b $00
[000c7859]                           dc.b $00
[000c785a]                           dc.b $00
[000c785b]                           dc.b $00
[000c785c]                           dc.b $00
[000c785d]                           dc.b $00
[000c785e]                           dc.b $00
[000c785f]                           dc.b $00
[000c7860]                           dc.b $00
[000c7861]                           dc.b $00
[000c7862]                           dc.b $00
[000c7863]                           dc.b $00
[000c7864]                           dc.b $00
[000c7865]                           dc.b $00
[000c7866]                           dc.b $00
[000c7867]                           dc.b $00
[000c7868]                           dc.b $00
[000c7869]                           dc.b $00
[000c786a]                           dc.b $00
[000c786b]                           dc.b $00
[000c786c]                           dc.b $00
[000c786d]                           dc.b $00
[000c786e]                           dc.b $00
[000c786f]                           dc.b $00
[000c7870]                           dc.b $00
[000c7871]                           dc.b $00
[000c7872]                           dc.b $00
[000c7873]                           dc.b $00
[000c7874]                           dc.b $00
[000c7875]                           dc.b $00
[000c7876]                           dc.b $00
[000c7877]                           dc.b $00
[000c7878]                           dc.b $00
[000c7879]                           dc.b $00
[000c787a]                           dc.b $00
[000c787b]                           dc.b $00
[000c787c]                           dc.b $00
[000c787d]                           dc.b $00
[000c787e]                           dc.b $00
[000c787f]                           dc.b $00
[000c7880]                           dc.b $00
[000c7881]                           dc.b $00
[000c7882]                           dc.b $00
[000c7883]                           dc.b $00
[000c7884]                           dc.b $00
[000c7885]                           dc.b $00
[000c7886]                           dc.b $00
[000c7887]                           dc.b $00
[000c7888]                           dc.b $00
[000c7889]                           dc.b $00
[000c788a]                           dc.b $00
[000c788b]                           dc.b $00
[000c788c]                           dc.b $00
[000c788d]                           dc.b $00
[000c788e]                           dc.b $00
[000c788f]                           dc.b $00
[000c7890]                           dc.b $00
[000c7891]                           dc.b $00
[000c7892]                           dc.b $00
[000c7893]                           dc.b $00
[000c7894]                           dc.b $00
[000c7895]                           dc.b $00
[000c7896]                           dc.b $00
[000c7897]                           dc.b $00
[000c7898]                           dc.b $00
[000c7899]                           dc.b $00
[000c789a]                           dc.b $00
[000c789b]                           dc.b $00
[000c789c]                           dc.b $00
[000c789d]                           dc.b $00
[000c789e]                           dc.b $00
[000c789f]                           dc.b $00
[000c78a0]                           dc.b $00
[000c78a1]                           dc.b $00
[000c78a2]                           dc.b $00
[000c78a3]                           dc.b $00
[000c78a4]                           dc.b $00
[000c78a5]                           dc.b $00
[000c78a6]                           dc.b $00
[000c78a7]                           dc.b $00
[000c78a8]                           dc.b $00
[000c78a9]                           dc.b $00
[000c78aa]                           dc.b $00
[000c78ab]                           dc.b $00
[000c78ac]                           dc.b $00
[000c78ad]                           dc.b $00
[000c78ae]                           dc.b $00
[000c78af]                           dc.b $00
[000c78b0]                           dc.b $00
[000c78b1]                           dc.b $00
[000c78b2]                           dc.b $00
[000c78b3]                           dc.b $00
[000c78b4]                           dc.b $00
[000c78b5]                           dc.b $00
[000c78b6]                           dc.b $00
[000c78b7]                           dc.b $00
[000c78b8]                           dc.b $00
[000c78b9]                           dc.b $00
[000c78ba]                           dc.b $00
[000c78bb]                           dc.b $00
[000c78bc]                           dc.b $00
[000c78bd]                           dc.b $00
[000c78be]                           dc.b $00
[000c78bf]                           dc.b $00
[000c78c0]                           dc.b $00
[000c78c1]                           dc.b $00
[000c78c2]                           dc.b $00
[000c78c3]                           dc.b $00
[000c78c4]                           dc.b $00
[000c78c5]                           dc.b $00
[000c78c6]                           dc.b $00
[000c78c7]                           dc.b $00
[000c78c8]                           dc.b $00
[000c78c9]                           dc.b $00
[000c78ca]                           dc.b $00
[000c78cb]                           dc.b $00
[000c78cc]                           dc.b $00
[000c78cd]                           dc.b $00
[000c78ce]                           dc.b $00
[000c78cf]                           dc.b $00
[000c78d0]                           dc.b $00
[000c78d1]                           dc.b $00
[000c78d2]                           dc.b $00
[000c78d3]                           dc.b $00
[000c78d4]                           dc.b $00
[000c78d5]                           dc.b $00
[000c78d6]                           dc.b $00
[000c78d7]                           dc.b $00
[000c78d8]                           dc.b $00
[000c78d9]                           dc.b $00
[000c78da]                           dc.b $00
[000c78db]                           dc.b $00
[000c78dc]                           dc.b $00
[000c78dd]                           dc.b $00
[000c78de]                           dc.b $00
[000c78df]                           dc.b $00
[000c78e0]                           dc.b $00
[000c78e1]                           dc.b $00
[000c78e2]                           dc.b $00
[000c78e3]                           dc.b $00
[000c78e4]                           dc.b $00
[000c78e5]                           dc.b $00
[000c78e6]                           dc.b $00
[000c78e7]                           dc.b $00
[000c78e8]                           dc.b $00
[000c78e9]                           dc.b $00
[000c78ea]                           dc.b $00
[000c78eb]                           dc.b $00
[000c78ec]                           dc.b $00
[000c78ed]                           dc.b $00
[000c78ee]                           dc.b $00
[000c78ef]                           dc.b $00
[000c78f0]                           dc.b $00
[000c78f1]                           dc.b $00
[000c78f2]                           dc.b $00
[000c78f3]                           dc.b $00
[000c78f4]                           dc.b $00
[000c78f5]                           dc.b $00
[000c78f6]                           dc.b $00
[000c78f7]                           dc.b $00
[000c78f8]                           dc.b $00
[000c78f9]                           dc.b $00
[000c78fa]                           dc.b $00
[000c78fb]                           dc.b $00
[000c78fc]                           dc.b $00
[000c78fd]                           dc.b $00
[000c78fe]                           dc.b $00
[000c78ff]                           dc.b $00
[000c7900]                           dc.b $00
[000c7901]                           dc.b $00
[000c7902]                           dc.b $00
[000c7903]                           dc.b $00
[000c7904]                           dc.b $00
[000c7905]                           dc.b $00
[000c7906]                           dc.b $00
[000c7907]                           dc.b $00
[000c7908]                           dc.b $00
[000c7909]                           dc.b $00
[000c790a]                           dc.b $00
[000c790b]                           dc.b $00
[000c790c]                           dc.b $00
[000c790d]                           dc.b $00
[000c790e]                           dc.b $00
[000c790f]                           dc.b $00
[000c7910]                           dc.b $00
[000c7911]                           dc.b $00
[000c7912]                           dc.b $00
[000c7913]                           dc.b $00
[000c7914]                           dc.b $00
[000c7915]                           dc.b $00
[000c7916]                           dc.b $00
[000c7917]                           dc.b $00
[000c7918]                           dc.b $00
[000c7919]                           dc.b $00
[000c791a]                           dc.b $00
[000c791b]                           dc.b $00
[000c791c]                           dc.b $00
[000c791d]                           dc.b $00
[000c791e]                           dc.b $00
[000c791f]                           dc.b $00
[000c7920]                           dc.b $00
[000c7921]                           dc.b $00
[000c7922]                           dc.b $00
[000c7923]                           dc.b $00
[000c7924]                           dc.b $00
[000c7925]                           dc.b $00
[000c7926]                           dc.b $00
[000c7927]                           dc.b $00
[000c7928]                           dc.b $00
[000c7929]                           dc.b $00
[000c792a]                           dc.b $00
[000c792b]                           dc.b $00
[000c792c]                           dc.b $00
[000c792d]                           dc.b $00
[000c792e]                           dc.b $00
[000c792f]                           dc.b $00
[000c7930]                           dc.b $00
[000c7931]                           dc.b $00
[000c7932]                           dc.b $00
[000c7933]                           dc.b $00
[000c7934]                           dc.b $00
[000c7935]                           dc.b $00
[000c7936]                           dc.b $00
[000c7937]                           dc.b $00
[000c7938]                           dc.b $00
[000c7939]                           dc.b $00
[000c793a]                           dc.b $00
[000c793b]                           dc.b $00
[000c793c]                           dc.b $00
[000c793d]                           dc.b $00
[000c793e]                           dc.b $00
[000c793f]                           dc.b $00
[000c7940]                           dc.b $00
[000c7941]                           dc.b $00
[000c7942]                           dc.b $00
[000c7943]                           dc.b $00
[000c7944]                           dc.b $00
[000c7945]                           dc.b $00
[000c7946]                           dc.b $00
[000c7947]                           dc.b $00
[000c7948]                           dc.b $00
[000c7949]                           dc.b $00
[000c794a]                           dc.b $00
[000c794b]                           dc.b $00
[000c794c]                           dc.b $00
[000c794d]                           dc.b $00
[000c794e]                           dc.b $00
[000c794f]                           dc.b $00
[000c7950]                           dc.b $00
[000c7951]                           dc.b $00
[000c7952]                           dc.b $00
[000c7953]                           dc.b $00
[000c7954]                           dc.b $00
[000c7955]                           dc.b $00
[000c7956]                           dc.b $00
[000c7957]                           dc.b $00
[000c7958]                           dc.b $00
[000c7959]                           dc.b $00
[000c795a]                           dc.b $00
[000c795b]                           dc.b $00
[000c795c]                           dc.b $00
[000c795d]                           dc.b $00
[000c795e]                           dc.b $00
[000c795f]                           dc.b $00
[000c7960]                           dc.b $00
[000c7961]                           dc.b $00
[000c7962]                           dc.b $00
[000c7963]                           dc.b $00
[000c7964]                           dc.b $00
[000c7965]                           dc.b $00
[000c7966]                           dc.b $00
[000c7967]                           dc.b $00
[000c7968]                           dc.b $00
[000c7969]                           dc.b $00
[000c796a]                           dc.b $00
[000c796b]                           dc.b $00
[000c796c]                           dc.b $00
[000c796d]                           dc.b $00
[000c796e]                           dc.b $00
[000c796f]                           dc.b $00
[000c7970]                           dc.b $00
[000c7971]                           dc.b $00
[000c7972]                           dc.b $00
[000c7973]                           dc.b $00
[000c7974]                           dc.b $00
[000c7975]                           dc.b $00
[000c7976]                           dc.b $00
[000c7977]                           dc.b $00
[000c7978]                           dc.b $00
[000c7979]                           dc.b $00
[000c797a]                           dc.b $00
[000c797b]                           dc.b $00
[000c797c]                           dc.b $00
[000c797d]                           dc.b $00
[000c797e]                           dc.b $00
[000c797f]                           dc.b $00
[000c7980]                           dc.b $00
[000c7981]                           dc.b $00
[000c7982]                           dc.b $00
[000c7983]                           dc.b $00
[000c7984]                           dc.b $00
[000c7985]                           dc.b $00
[000c7986]                           dc.b $00
[000c7987]                           dc.b $00
[000c7988]                           dc.b $00
[000c7989]                           dc.b $00
[000c798a]                           dc.b $00
[000c798b]                           dc.b $00
[000c798c]                           dc.b $00
[000c798d]                           dc.b $00
[000c798e]                           dc.b $00
[000c798f]                           dc.b $00
[000c7990]                           dc.b $00
[000c7991]                           dc.b $00
[000c7992]                           dc.b $00
[000c7993]                           dc.b $00
[000c7994]                           dc.b $00
[000c7995]                           dc.b $00
[000c7996]                           dc.b $00
[000c7997]                           dc.b $00
[000c7998]                           dc.b $00
[000c7999]                           dc.b $00
[000c799a]                           dc.b $00
[000c799b]                           dc.b $00
[000c799c]                           dc.b $00
[000c799d]                           dc.b $00
[000c799e]                           dc.b $00
[000c799f]                           dc.b $00
[000c79a0]                           dc.b $00
[000c79a1]                           dc.b $00
[000c79a2]                           dc.b $00
[000c79a3]                           dc.b $00
[000c79a4]                           dc.b $00
[000c79a5]                           dc.b $00
[000c79a6]                           dc.b $00
[000c79a7]                           dc.b $00
[000c79a8]                           dc.b $00
[000c79a9]                           dc.b $00
[000c79aa]                           dc.b $00
[000c79ab]                           dc.b $00
[000c79ac]                           dc.b $00
[000c79ad]                           dc.b $00
[000c79ae]                           dc.b $00
[000c79af]                           dc.b $00
[000c79b0]                           dc.b $00
[000c79b1]                           dc.b $00
[000c79b2]                           dc.b $00
[000c79b3]                           dc.b $00
[000c79b4]                           dc.b $00
[000c79b5]                           dc.b $00
[000c79b6]                           dc.b $00
[000c79b7]                           dc.b $00
[000c79b8]                           dc.b $00
[000c79b9]                           dc.b $00
[000c79ba]                           dc.b $00
[000c79bb]                           dc.b $00
[000c79bc]                           dc.b $00
[000c79bd]                           dc.b $00
[000c79be]                           dc.b $00
[000c79bf]                           dc.b $00
[000c79c0]                           dc.b $00
[000c79c1]                           dc.b $00
[000c79c2]                           dc.b $00
[000c79c3]                           dc.b $00
[000c79c4]                           dc.b $00
[000c79c5]                           dc.b $00
[000c79c6]                           dc.b $00
[000c79c7]                           dc.b $00
[000c79c8]                           dc.b $00
[000c79c9]                           dc.b $00
[000c79ca]                           dc.b $00
[000c79cb]                           dc.b $00
[000c79cc]                           dc.b $00
[000c79cd]                           dc.b $00
[000c79ce]                           dc.b $00
[000c79cf]                           dc.b $00
[000c79d0]                           dc.b $00
[000c79d1]                           dc.b $00
[000c79d2]                           dc.b $00
[000c79d3]                           dc.b $00
[000c79d4]                           dc.b $00
[000c79d5]                           dc.b $00
[000c79d6]                           dc.b $00
[000c79d7]                           dc.b $00
[000c79d8]                           dc.b $00
[000c79d9]                           dc.b $00
[000c79da]                           dc.b $00
[000c79db]                           dc.b $00
[000c79dc]                           dc.b $00
[000c79dd]                           dc.b $00
[000c79de]                           dc.b $00
[000c79df]                           dc.b $00
[000c79e0]                           dc.b $00
[000c79e1]                           dc.b $00
[000c79e2]                           dc.b $00
[000c79e3]                           dc.b $00
[000c79e4]                           dc.b $00
[000c79e5]                           dc.b $00
[000c79e6]                           dc.b $00
[000c79e7]                           dc.b $00
[000c79e8]                           dc.b $00
[000c79e9]                           dc.b $00
[000c79ea]                           dc.b $00
[000c79eb]                           dc.b $00
[000c79ec]                           dc.b $00
[000c79ed]                           dc.b $00
[000c79ee]                           dc.b $00
[000c79ef]                           dc.b $00
[000c79f0]                           dc.b $00
[000c79f1]                           dc.b $00
[000c79f2]                           dc.b $00
[000c79f3]                           dc.b $00
[000c79f4]                           dc.b $00
[000c79f5]                           dc.b $00
[000c79f6]                           dc.b $00
[000c79f7]                           dc.b $00
[000c79f8]                           dc.b $00
[000c79f9]                           dc.b $00
[000c79fa]                           dc.b $00
[000c79fb]                           dc.b $00
[000c79fc]                           dc.b $00
[000c79fd]                           dc.b $00
[000c79fe]                           dc.b $00
[000c79ff]                           dc.b $00
[000c7a00]                           dc.b $00
[000c7a01]                           dc.b $00
[000c7a02]                           dc.b $00
[000c7a03]                           dc.b $00
[000c7a04]                           dc.b $00
[000c7a05]                           dc.b $00
[000c7a06]                           dc.b $00
[000c7a07]                           dc.b $00
[000c7a08]                           dc.b $00
[000c7a09]                           dc.b $00
[000c7a0a]                           dc.b $00
[000c7a0b]                           dc.b $00
[000c7a0c]                           dc.b $00
[000c7a0d]                           dc.b $00
[000c7a0e]                           dc.b $00
[000c7a0f]                           dc.b $00
[000c7a10]                           dc.b $00
[000c7a11]                           dc.b $00
[000c7a12]                           dc.b $00
[000c7a13]                           dc.b $00
[000c7a14]                           dc.b $00
[000c7a15]                           dc.b $00
[000c7a16]                           dc.b $00
[000c7a17]                           dc.b $00
[000c7a18]                           dc.b $00
[000c7a19]                           dc.b $00
[000c7a1a]                           dc.b $00
[000c7a1b]                           dc.b $00
[000c7a1c]                           dc.b $00
[000c7a1d]                           dc.b $00
[000c7a1e]                           dc.b $00
[000c7a1f]                           dc.b $00
[000c7a20]                           dc.b $00
[000c7a21]                           dc.b $00
[000c7a22]                           dc.b $00
[000c7a23]                           dc.b $00
[000c7a24]                           dc.b $00
[000c7a25]                           dc.b $00
[000c7a26]                           dc.b $00
[000c7a27]                           dc.b $00
[000c7a28]                           dc.b $00
[000c7a29]                           dc.b $00
[000c7a2a]                           dc.b $00
[000c7a2b]                           dc.b $00
[000c7a2c]                           dc.b $00
[000c7a2d]                           dc.b $00
[000c7a2e]                           dc.b $00
[000c7a2f]                           dc.b $00
[000c7a30]                           dc.b $00
[000c7a31]                           dc.b $00
[000c7a32]                           dc.b $00
[000c7a33]                           dc.b $00
[000c7a34]                           dc.b $00
[000c7a35]                           dc.b $00
[000c7a36]                           dc.b $00
[000c7a37]                           dc.b $00
[000c7a38]                           dc.b $00
[000c7a39]                           dc.b $00
[000c7a3a]                           dc.b $00
[000c7a3b]                           dc.b $00
[000c7a3c]                           dc.b $00
[000c7a3d]                           dc.b $00
[000c7a3e]                           dc.b $00
[000c7a3f]                           dc.b $00
[000c7a40]                           dc.b $00
[000c7a41]                           dc.b $00
[000c7a42]                           dc.b $00
[000c7a43]                           dc.b $00
[000c7a44]                           dc.b $00
[000c7a45]                           dc.b $00
[000c7a46]                           dc.b $00
[000c7a47]                           dc.b $00
[000c7a48]                           dc.b $00
[000c7a49]                           dc.b $00
[000c7a4a]                           dc.b $00
[000c7a4b]                           dc.b $00
[000c7a4c]                           dc.b $00
[000c7a4d]                           dc.b $00
[000c7a4e]                           dc.b $00
[000c7a4f]                           dc.b $00
[000c7a50]                           dc.b $00
[000c7a51]                           dc.b $00
[000c7a52]                           dc.b $00
[000c7a53]                           dc.b $00
[000c7a54]                           dc.b $00
[000c7a55]                           dc.b $00
[000c7a56]                           dc.b $00
[000c7a57]                           dc.b $00
[000c7a58]                           dc.b $00
[000c7a59]                           dc.b $00
[000c7a5a]                           dc.b $00
[000c7a5b]                           dc.b $00
[000c7a5c]                           dc.b $00
[000c7a5d]                           dc.b $00
[000c7a5e]                           dc.b $00
[000c7a5f]                           dc.b $00
[000c7a60]                           dc.b $00
[000c7a61]                           dc.b $00
[000c7a62]                           dc.b $00
[000c7a63]                           dc.b $00
[000c7a64]                           dc.b $00
[000c7a65]                           dc.b $00
[000c7a66]                           dc.b $00
[000c7a67]                           dc.b $00
[000c7a68]                           dc.b $00
[000c7a69]                           dc.b $00
[000c7a6a]                           dc.b $00
[000c7a6b]                           dc.b $00
[000c7a6c]                           dc.b $00
[000c7a6d]                           dc.b $00
[000c7a6e]                           dc.b $00
[000c7a6f]                           dc.b $00
[000c7a70]                           dc.b $00
[000c7a71]                           dc.b $00
[000c7a72]                           dc.b $00
[000c7a73]                           dc.b $00
[000c7a74]                           dc.b $00
[000c7a75]                           dc.b $00
[000c7a76]                           dc.b $00
[000c7a77]                           dc.b $00
[000c7a78]                           dc.b $00
[000c7a79]                           dc.b $00
[000c7a7a]                           dc.b $00
[000c7a7b]                           dc.b $00
[000c7a7c]                           dc.b $00
[000c7a7d]                           dc.b $00
[000c7a7e]                           dc.b $00
[000c7a7f]                           dc.b $00
[000c7a80]                           dc.b $00
[000c7a81]                           dc.b $00
[000c7a82]                           dc.b $00
[000c7a83]                           dc.b $00
[000c7a84]                           dc.b $00
[000c7a85]                           dc.b $00
[000c7a86]                           dc.b $00
[000c7a87]                           dc.b $00
[000c7a88]                           dc.b $00
[000c7a89]                           dc.b $00
[000c7a8a]                           dc.b $00
[000c7a8b]                           dc.b $00
[000c7a8c]                           dc.b $00
[000c7a8d]                           dc.b $00
[000c7a8e]                           dc.b $00
[000c7a8f]                           dc.b $00
[000c7a90]                           dc.b $00
[000c7a91]                           dc.b $00
[000c7a92]                           dc.b $00
[000c7a93]                           dc.b $00
[000c7a94]                           dc.b $00
[000c7a95]                           dc.b $00
[000c7a96]                           dc.b $00
[000c7a97]                           dc.b $00
[000c7a98]                           dc.b $00
[000c7a99]                           dc.b $00
[000c7a9a]                           dc.b $00
[000c7a9b]                           dc.b $00
[000c7a9c]                           dc.b $00
[000c7a9d]                           dc.b $00
[000c7a9e]                           dc.b $00
[000c7a9f]                           dc.b $00
[000c7aa0]                           dc.b $00
[000c7aa1]                           dc.b $00
[000c7aa2]                           dc.b $00
[000c7aa3]                           dc.b $00
[000c7aa4]                           dc.b $00
[000c7aa5]                           dc.b $00
[000c7aa6]                           dc.b $00
[000c7aa7]                           dc.b $00
[000c7aa8]                           dc.b $00
[000c7aa9]                           dc.b $00
[000c7aaa]                           dc.b $00
[000c7aab]                           dc.b $00
[000c7aac]                           dc.b $00
[000c7aad]                           dc.b $00
[000c7aae]                           dc.b $00
[000c7aaf]                           dc.b $00
[000c7ab0]                           dc.b $00
[000c7ab1]                           dc.b $00
[000c7ab2]                           dc.b $00
[000c7ab3]                           dc.b $00
[000c7ab4]                           dc.b $00
[000c7ab5]                           dc.b $00
[000c7ab6]                           dc.b $00
[000c7ab7]                           dc.b $00
[000c7ab8]                           dc.b $00
[000c7ab9]                           dc.b $00
[000c7aba]                           dc.b $00
[000c7abb]                           dc.b $00
[000c7abc]                           dc.b $00
[000c7abd]                           dc.b $00
[000c7abe]                           dc.b $00
[000c7abf]                           dc.b $00
[000c7ac0]                           dc.b $00
[000c7ac1]                           dc.b $00
[000c7ac2]                           dc.b $00
[000c7ac3]                           dc.b $00
[000c7ac4]                           dc.b $00
[000c7ac5]                           dc.b $00
[000c7ac6]                           dc.b $00
[000c7ac7]                           dc.b $00
[000c7ac8]                           dc.b $00
[000c7ac9]                           dc.b $00
[000c7aca]                           dc.b $00
[000c7acb]                           dc.b $00
[000c7acc]                           dc.b $00
[000c7acd]                           dc.b $00
[000c7ace]                           dc.b $00
[000c7acf]                           dc.b $00
[000c7ad0]                           dc.b $00
[000c7ad1]                           dc.b $00
[000c7ad2]                           dc.b $00
[000c7ad3]                           dc.b $00
[000c7ad4]                           dc.b $00
[000c7ad5]                           dc.b $00
[000c7ad6]                           dc.b $00
[000c7ad7]                           dc.b $00
[000c7ad8]                           dc.b $00
[000c7ad9]                           dc.b $00
[000c7ada]                           dc.b $00
[000c7adb]                           dc.b $00
[000c7adc]                           dc.b $00
[000c7add]                           dc.b $00
[000c7ade]                           dc.b $00
[000c7adf]                           dc.b $00
[000c7ae0]                           dc.b $00
[000c7ae1]                           dc.b $00
[000c7ae2]                           dc.b $00
[000c7ae3]                           dc.b $00
[000c7ae4]                           dc.b $00
[000c7ae5]                           dc.b $00
[000c7ae6]                           dc.b $00
[000c7ae7]                           dc.b $00
[000c7ae8]                           dc.b $00
[000c7ae9]                           dc.b $00
[000c7aea]                           dc.b $00
[000c7aeb]                           dc.b $00
[000c7aec]                           dc.b $00
[000c7aed]                           dc.b $00
[000c7aee]                           dc.b $00
[000c7aef]                           dc.b $00
[000c7af0]                           dc.b $00
[000c7af1]                           dc.b $00
[000c7af2]                           dc.b $00
[000c7af3]                           dc.b $00
[000c7af4]                           dc.b $00
[000c7af5]                           dc.b $00
[000c7af6]                           dc.b $00
[000c7af7]                           dc.b $00
[000c7af8]                           dc.b $00
[000c7af9]                           dc.b $00
[000c7afa]                           dc.b $00
[000c7afb]                           dc.b $00
[000c7afc]                           dc.b $00
[000c7afd]                           dc.b $00
[000c7afe]                           dc.b $00
[000c7aff]                           dc.b $00
[000c7b00]                           dc.b $00
[000c7b01]                           dc.b $00
[000c7b02]                           dc.b $00
[000c7b03]                           dc.b $00
[000c7b04]                           dc.b $00
[000c7b05]                           dc.b $00
[000c7b06]                           dc.b $00
[000c7b07]                           dc.b $00
[000c7b08]                           dc.b $00
[000c7b09]                           dc.b $00
[000c7b0a]                           dc.b $00
[000c7b0b]                           dc.b $00
[000c7b0c]                           dc.b $00
[000c7b0d]                           dc.b $00
[000c7b0e]                           dc.b $00
[000c7b0f]                           dc.b $00
[000c7b10]                           dc.b $00
[000c7b11]                           dc.b $00
[000c7b12]                           dc.b $00
[000c7b13]                           dc.b $00
[000c7b14]                           dc.b $00
[000c7b15]                           dc.b $00
[000c7b16]                           dc.b $00
[000c7b17]                           dc.b $00
[000c7b18]                           dc.b $00
[000c7b19]                           dc.b $00
[000c7b1a]                           dc.b $00
[000c7b1b]                           dc.b $00
[000c7b1c]                           dc.b $00
[000c7b1d]                           dc.b $00
[000c7b1e]                           dc.b $00
[000c7b1f]                           dc.b $00
[000c7b20]                           dc.b $00
[000c7b21]                           dc.b $00
[000c7b22]                           dc.b $00
[000c7b23]                           dc.b $00
[000c7b24]                           dc.b $00
[000c7b25]                           dc.b $00
[000c7b26]                           dc.b $00
[000c7b27]                           dc.b $00
[000c7b28]                           dc.b $00
[000c7b29]                           dc.b $00
[000c7b2a]                           dc.b $00
[000c7b2b]                           dc.b $00
[000c7b2c]                           dc.b $00
[000c7b2d]                           dc.b $00
[000c7b2e]                           dc.b $00
[000c7b2f]                           dc.b $00
[000c7b30]                           dc.b $00
[000c7b31]                           dc.b $00
[000c7b32]                           dc.b $00
[000c7b33]                           dc.b $00
[000c7b34]                           dc.b $00
[000c7b35]                           dc.b $00
[000c7b36]                           dc.b $00
[000c7b37]                           dc.b $00
[000c7b38]                           dc.b $00
[000c7b39]                           dc.b $00
[000c7b3a]                           dc.b $00
[000c7b3b]                           dc.b $00
[000c7b3c]                           dc.b $00
[000c7b3d]                           dc.b $00
[000c7b3e]                           dc.b $00
[000c7b3f]                           dc.b $00
[000c7b40]                           dc.b $00
[000c7b41]                           dc.b $00
[000c7b42]                           dc.b $00
[000c7b43]                           dc.b $00
[000c7b44]                           dc.b $00
[000c7b45]                           dc.b $00
[000c7b46]                           dc.b $00
[000c7b47]                           dc.b $00
[000c7b48]                           dc.b $00
[000c7b49]                           dc.b $00
[000c7b4a]                           dc.b $00
[000c7b4b]                           dc.b $00
[000c7b4c]                           dc.b $00
[000c7b4d]                           dc.b $00
[000c7b4e]                           dc.b $00
[000c7b4f]                           dc.b $00
[000c7b50]                           dc.b $00
[000c7b51]                           dc.b $00
[000c7b52]                           dc.b $00
[000c7b53]                           dc.b $00
[000c7b54]                           dc.b $00
[000c7b55]                           dc.b $00
[000c7b56]                           dc.b $00
[000c7b57]                           dc.b $00
[000c7b58]                           dc.b $00
[000c7b59]                           dc.b $00
[000c7b5a]                           dc.b $00
[000c7b5b]                           dc.b $00
[000c7b5c]                           dc.b $00
[000c7b5d]                           dc.b $00
[000c7b5e]                           dc.b $00
[000c7b5f]                           dc.b $00
[000c7b60]                           dc.b $00
[000c7b61]                           dc.b $00
[000c7b62]                           dc.b $00
[000c7b63]                           dc.b $00
[000c7b64]                           dc.b $00
[000c7b65]                           dc.b $00
[000c7b66]                           dc.b $00
[000c7b67]                           dc.b $00
[000c7b68]                           dc.b $00
[000c7b69]                           dc.b $00
[000c7b6a]                           dc.b $00
[000c7b6b]                           dc.b $00
[000c7b6c]                           dc.b $00
[000c7b6d]                           dc.b $00
[000c7b6e]                           dc.b $00
[000c7b6f]                           dc.b $00
[000c7b70]                           dc.b $00
[000c7b71]                           dc.b $00
[000c7b72]                           dc.b $00
[000c7b73]                           dc.b $00
[000c7b74]                           dc.b $00
[000c7b75]                           dc.b $00
[000c7b76]                           dc.b $00
[000c7b77]                           dc.b $00
[000c7b78]                           dc.b $00
[000c7b79]                           dc.b $00
[000c7b7a]                           dc.b $00
[000c7b7b]                           dc.b $00
[000c7b7c]                           dc.b $00
[000c7b7d]                           dc.b $00
[000c7b7e]                           dc.b $00
[000c7b7f]                           dc.b $00
[000c7b80]                           dc.b $00
[000c7b81]                           dc.b $00
[000c7b82]                           dc.b $00
[000c7b83]                           dc.b $00
[000c7b84]                           dc.b $00
[000c7b85]                           dc.b $00
[000c7b86]                           dc.b $00
[000c7b87]                           dc.b $00
[000c7b88]                           dc.b $00
[000c7b89]                           dc.b $00
[000c7b8a]                           dc.b $00
[000c7b8b]                           dc.b $00
[000c7b8c]                           dc.b $00
[000c7b8d]                           dc.b 'ST-GUIDE',0
proto:
[000c7b96]                           dc.b $00
[000c7b97]                           dc.b $00
[000c7b98]                           dc.b $00
[000c7b99]                           dc.b $00
[000c7b9a]                           dc.b $00
[000c7b9b]                           dc.b $00
[000c7b9c]                           dc.b $00
[000c7b9d]                           dc.b $00
[000c7b9e]                           dc.b 'Datei ”ffnen',0
[000c7bab]                           dc.b $00
[000c7bac]                           dc.b $00
[000c7bad]                           dc.b $00
[000c7bae]                           dc.b $00
[000c7baf]                           dc.b $00
[000c7bb0]                           dc.b $00
[000c7bb1]                           dc.b $00
[000c7bb2]                           dc.b $00
[000c7bb3]                           dc.b $00
[000c7bb4]                           dc.b $00
[000c7bb5]                           dc.b $00
[000c7bb6]                           dc.b $00
[000c7bb7]                           dc.b $00
[000c7bb8]                           dc.b $00
[000c7bb9]                           dc.b $00
[000c7bba]                           dc.b $00
[000c7bbb]                           dc.b $00
[000c7bbc]                           dc.b $00
[000c7bbd]                           dc.b $00
[000c7bbe]                           dc.b 'Datei hinzufgen',0
[000c7bcf]                           dc.b $00
[000c7bd0]                           dc.b $00
[000c7bd1]                           dc.b $00
[000c7bd2]                           dc.b $00
[000c7bd3]                           dc.b $00
[000c7bd4]                           dc.b $00
[000c7bd5]                           dc.b $00
[000c7bd6]                           dc.b $00
[000c7bd7]                           dc.b $00
[000c7bd8]                           dc.b $00
[000c7bd9]                           dc.b $00
[000c7bda]                           dc.b $00
[000c7bdb]                           dc.b $00
[000c7bdc]                           dc.b $00
[000c7bdd]                           dc.b $00
[000c7bde]                           dc.b 'Datei sichern',0
[000c7bec]                           dc.b $00
[000c7bed]                           dc.b $00
[000c7bee]                           dc.b $00
[000c7bef]                           dc.b $00
[000c7bf0]                           dc.b $00
[000c7bf1]                           dc.b $00
[000c7bf2]                           dc.b $00
[000c7bf3]                           dc.b $00
[000c7bf4]                           dc.b $00
[000c7bf5]                           dc.b $00
[000c7bf6]                           dc.b $00
[000c7bf7]                           dc.b $00
[000c7bf8]                           dc.b $00
[000c7bf9]                           dc.b $00
[000c7bfa]                           dc.b $00
[000c7bfb]                           dc.b $00
[000c7bfc]                           dc.b $00
[000c7bfd]                           dc.b $00
[000c7bfe]                           dc.b ' %s (EDITOR) ',0
[000c7c0c]                           dc.b $00
[000c7c0d]                           dc.b $00
[000c7c0e]                           dc.b $00
[000c7c0f]                           dc.b $00
[000c7c10]                           dc.b $00
[000c7c11]                           dc.b $00
[000c7c12]                           dc.b $00
[000c7c13]                           dc.b $00
[000c7c14]                           dc.b $00
[000c7c15]                           dc.b $00
[000c7c16]                           dc.b $00
[000c7c17]                           dc.b $00
[000c7c18]                           dc.b $00
[000c7c19]                           dc.b $00
[000c7c1a]                           dc.b $00
[000c7c1b]                           dc.b $00
[000c7c1c]                           dc.b $00
[000c7c1d]                           dc.b $00
[000c7c1e]                           dc.b ' * %s (EDITOR) ',0
[000c7c2e]                           dc.b $00
[000c7c2f]                           dc.b $00
[000c7c30]                           dc.b $00
[000c7c31]                           dc.b $00
[000c7c32]                           dc.b $00
[000c7c33]                           dc.b $00
[000c7c34]                           dc.b $00
[000c7c35]                           dc.b $00
[000c7c36]                           dc.b $00
[000c7c37]                           dc.b $00
[000c7c38]                           dc.b $00
[000c7c39]                           dc.b $00
[000c7c3a]                           dc.b $00
[000c7c3b]                           dc.b $00
[000c7c3c]                           dc.b $00
[000c7c3d]                           dc.b $00
[000c7c3e]                           dc.b $00
[000c7c3f]                           dc.b $00
[000c7c40]                           dc.b $00
[000c7c41]                           dc.b $00
[000c7c42]                           dc.b $00
[000c7c43]                           dc.b $00
[000c7c44]                           dc.b $00
[000c7c45]                           dc.b $00
[000c7c46]                           dc.b $00
[000c7c47]                           dc.b $00
[000c7c48]                           dc.b $00
[000c7c49]                           dc.b $00
[000c7c4a]                           dc.b $00
[000c7c4b]                           dc.b $00
[000c7c4c]                           dc.b $00
[000c7c4d]                           dc.b $00
[000c7c4e]                           dc.b $00
[000c7c4f]                           dc.b $00
[000c7c50]                           dc.b $00
[000c7c51]                           dc.b $00
[000c7c52]                           dc.b $00
[000c7c53]                           dc.b $00
[000c7c54]                           dc.b $00
[000c7c55]                           dc.b $00
[000c7c56]                           dc.b $00
[000c7c57]                           dc.b $00
[000c7c58]                           dc.b $00
[000c7c59]                           dc.b $00
[000c7c5a]                           dc.b $00
[000c7c5b]                           dc.b $00
[000c7c5c]                           dc.b $00
[000c7c5d]                           dc.b $00
[000c7c5e]                           dc.b $00
[000c7c5f]                           dc.b $00
[000c7c60]                           dc.w $ffff
[000c7c62]                           dc.w $ffff
[000c7c64]                           dc.w $ffff
[000c7c66]                           dc.w $ffff
[000c7c68]                           dc.b $00
[000c7c69]                           dc.b $00
[000c7c6a]                           dc.b $00
[000c7c6b]                           dc.b $00
[000c7c6c]                           dc.b $00
[000c7c6d]                           dc.b $00
[000c7c6e]                           dc.b $00
[000c7c6f]                           dc.b $00
[000c7c70]                           dc.b $00
[000c7c71]                           dc.b $00
[000c7c72]                           dc.b $00
[000c7c73]                           dc.b $00
[000c7c74]                           dc.b $00
[000c7c75]                           dc.b $00
[000c7c76]                           dc.b $00
[000c7c77]                           dc.b $00
[000c7c78]                           dc.b $00
[000c7c79]                           dc.b $00
[000c7c7a]                           dc.b $00
[000c7c7b]                           dc.b $00
[000c7c7c]                           dc.b $00
[000c7c7d]                           dc.b $00
[000c7c7e]                           dc.b $00
[000c7c7f]                           dc.b $00
[000c7c80]                           dc.b $00
[000c7c81]                           dc.b $00
[000c7c82]                           dc.b $00
[000c7c83]                           dc.b $00
[000c7c84]                           dc.b $00
[000c7c85]                           dc.b $00
[000c7c86]                           dc.b $00
[000c7c87]                           dc.b $00
[000c7c88]                           dc.b $00
[000c7c89]                           dc.b $00
[000c7c8a]                           dc.b $00
[000c7c8b]                           dc.b $00
[000c7c8c]                           dc.b $00
[000c7c8d]                           dc.b $00
[000c7c8e]                           dc.b $00
[000c7c8f]                           dc.b $00
[000c7c90]                           dc.b $00
[000c7c91]                           dc.b $00
[000c7c92]                           dc.b $00
[000c7c93]                           dc.b $00
[000c7c94]                           dc.b $00
[000c7c95]                           dc.b $00
[000c7c96]                           dc.b $00
[000c7c97]                           dc.b $00
[000c7c98]                           dc.b $00
[000c7c99]                           dc.b $00
[000c7c9a]                           dc.b $00
[000c7c9b]                           dc.b $00
[000c7c9c]                           dc.b $00
[000c7c9d]                           dc.b $00
[000c7c9e]                           dc.b $00
[000c7c9f]                           dc.b $00
[000c7ca0]                           dc.b $00
[000c7ca1]                           dc.b $00
[000c7ca2]                           dc.b $00
[000c7ca3]                           dc.b $00
[000c7ca4]                           dc.b $00
[000c7ca5]                           dc.b $00
[000c7ca6]                           dc.b $00
[000c7ca7]                           dc.b $00
[000c7ca8]                           dc.b $00
[000c7ca9]                           dc.b $00
[000c7caa]                           dc.b $00
[000c7cab]                           dc.b $00
[000c7cac]                           dc.b $00
[000c7cad]                           dc.b $00
[000c7cae]                           dc.b $00
[000c7caf]                           dc.b $00
[000c7cb0]                           dc.b $00
[000c7cb1]                           dc.b $00
[000c7cb2]                           dc.b $00
[000c7cb3]                           dc.b $00
[000c7cb4]                           dc.b $00
[000c7cb5]                           dc.b $00
[000c7cb6]                           dc.b $00
[000c7cb7]                           dc.b $00
[000c7cb8]                           dc.b $00
[000c7cb9]                           dc.b $00
[000c7cba]                           dc.b $00
[000c7cbb]                           dc.b $00
[000c7cbc]                           dc.b $00
[000c7cbd]                           dc.b $00
[000c7cbe]                           dc.b $00
[000c7cbf]                           dc.b $00
[000c7cc0]                           dc.b $00
[000c7cc1]                           dc.b $00
[000c7cc2]                           dc.b $00
[000c7cc3]                           dc.b $00
[000c7cc4]                           dc.b $00
[000c7cc5]                           dc.b $00
[000c7cc6]                           dc.b $00
[000c7cc7]                           dc.b $00
[000c7cc8]                           dc.b $00
[000c7cc9]                           dc.b $00
[000c7cca]                           dc.b $00
[000c7ccb]                           dc.b $00
[000c7ccc]                           dc.b $00
[000c7ccd]                           dc.b $00
[000c7cce]                           dc.b $00
[000c7ccf]                           dc.b $00
[000c7cd0]                           dc.b $00
[000c7cd1]                           dc.b $00
[000c7cd2]                           dc.b $00
[000c7cd3]                           dc.b $00
[000c7cd4]                           dc.b $00
[000c7cd5]                           dc.b $00
[000c7cd6]                           dc.b $00
[000c7cd7]                           dc.b $00
[000c7cd8]                           dc.b $00
[000c7cd9]                           dc.b $00
[000c7cda]                           dc.b $00
[000c7cdb]                           dc.b $00
[000c7cdc]                           dc.b $00
[000c7cdd]                           dc.b $00
[000c7cde]                           dc.b $00
[000c7cdf]                           dc.b $00
[000c7ce0]                           dc.b $00
[000c7ce1]                           dc.b $00
[000c7ce2]                           dc.b $00
[000c7ce3]                           dc.b $00
[000c7ce4]                           dc.b $00
[000c7ce5]                           dc.b $00
[000c7ce6]                           dc.b $00
[000c7ce7]                           dc.b $00
[000c7ce8]                           dc.b $00
[000c7ce9]                           dc.b $00
[000c7cea]                           dc.b $00
[000c7ceb]                           dc.b $00
[000c7cec]                           dc.b $00
[000c7ced]                           dc.b $00
[000c7cee]                           dc.b $00
[000c7cef]                           dc.b $00
[000c7cf0]                           dc.b $00
[000c7cf1]                           dc.b $00
[000c7cf2]                           dc.b $00
[000c7cf3]                           dc.b $00
[000c7cf4]                           dc.b $00
[000c7cf5]                           dc.b $00
[000c7cf6]                           dc.b $00
[000c7cf7]                           dc.b $00
[000c7cf8]                           dc.b $00
[000c7cf9]                           dc.b $00
[000c7cfa]                           dc.b $00
[000c7cfb]                           dc.b $00
[000c7cfc]                           dc.b $00
[000c7cfd]                           dc.b $00
[000c7cfe]                           dc.b $00
[000c7cff]                           dc.b $00
[000c7d00]                           dc.b $00
[000c7d01]                           dc.b $00
[000c7d02]                           dc.b $00
[000c7d03]                           dc.b $00
[000c7d04]                           dc.b $00
[000c7d05]                           dc.b $00
[000c7d06]                           dc.b $00
[000c7d07]                           dc.b $00
[000c7d08]                           dc.b $00
[000c7d09]                           dc.b $00
[000c7d0a]                           dc.b $00
[000c7d0b]                           dc.b $00
[000c7d0c]                           dc.b $00
[000c7d0d]                           dc.b $00
[000c7d0e]                           dc.b $00
[000c7d0f]                           dc.b $00
[000c7d10]                           dc.b $00
[000c7d11]                           dc.b $00
[000c7d12]                           dc.b $00
[000c7d13]                           dc.b $00
[000c7d14]                           dc.b $00
[000c7d15]                           dc.b $00
[000c7d16]                           dc.b $00
[000c7d17]                           dc.b $00
[000c7d18]                           dc.b $00
[000c7d19]                           dc.b $00
[000c7d1a]                           dc.b $00
[000c7d1b]                           dc.b $00
[000c7d1c]                           dc.b $00
[000c7d1d]                           dc.b $00
[000c7d1e]                           dc.b $00
[000c7d1f]                           dc.b $00
[000c7d20]                           dc.b $00
[000c7d21]                           dc.b $00
[000c7d22]                           dc.b $00
[000c7d23]                           dc.b $00
[000c7d24]                           dc.b $00
[000c7d25]                           dc.b $00
[000c7d26]                           dc.b $00
[000c7d27]                           dc.b $00
[000c7d28]                           dc.b $00
[000c7d29]                           dc.b $00
[000c7d2a]                           dc.b $00
[000c7d2b]                           dc.b $00
[000c7d2c]                           dc.b $00
[000c7d2d]                           dc.b $00
[000c7d2e]                           dc.b $00
[000c7d2f]                           dc.b $00
[000c7d30]                           dc.b $00
[000c7d31]                           dc.b $00
[000c7d32]                           dc.b $00
[000c7d33]                           dc.b $00
[000c7d34]                           dc.b $00
[000c7d35]                           dc.b $00
[000c7d36]                           dc.b $00
[000c7d37]                           dc.b $00
[000c7d38]                           dc.b $00
[000c7d39]                           dc.b $00
[000c7d3a]                           dc.b $00
[000c7d3b]                           dc.b $00
[000c7d3c]                           dc.b $00
[000c7d3d]                           dc.b $00
[000c7d3e]                           dc.b $00
[000c7d3f]                           dc.b $00
[000c7d40]                           dc.b $00
[000c7d41]                           dc.b $00
[000c7d42]                           dc.b $00
[000c7d43]                           dc.b $00
[000c7d44]                           dc.b $00
[000c7d45]                           dc.b $00
[000c7d46]                           dc.b $00
[000c7d47]                           dc.b $00
[000c7d48]                           dc.b $00
[000c7d49]                           dc.b $00
[000c7d4a]                           dc.b $00
[000c7d4b]                           dc.b $00
[000c7d4c]                           dc.b $00
[000c7d4d]                           dc.b $00
[000c7d4e]                           dc.b $00
[000c7d4f]                           dc.b $00
[000c7d50]                           dc.b $00
[000c7d51]                           dc.b $00
[000c7d52]                           dc.b $00
[000c7d53]                           dc.b $00
[000c7d54]                           dc.b $00
[000c7d55]                           dc.b $00
[000c7d56]                           dc.b $00
[000c7d57]                           dc.b $00
[000c7d58]                           dc.b $00
[000c7d59]                           dc.b $00
[000c7d5a]                           dc.b $00
[000c7d5b]                           dc.b $00
[000c7d5c]                           dc.b $00
[000c7d5d]                           dc.b $00
[000c7d5e]                           dc.b $00
[000c7d5f]                           dc.b $00
[000c7d60]                           dc.b $00
[000c7d61]                           dc.b $00
[000c7d62]                           dc.b $00
[000c7d63]                           dc.b $00
[000c7d64]                           dc.b $00
[000c7d65]                           dc.b $00
[000c7d66]                           dc.b $00
[000c7d67]                           dc.b $00
[000c7d68]                           dc.b $00
[000c7d69]                           dc.b $00
[000c7d6a]                           dc.b $00
[000c7d6b]                           dc.b $00
[000c7d6c]                           dc.b $00
[000c7d6d]                           dc.b $00
[000c7d6e]                           dc.b $00
[000c7d6f]                           dc.b $00
[000c7d70]                           dc.b $00
[000c7d71]                           dc.b $00
[000c7d72]                           dc.b $00
[000c7d73]                           dc.b $00
[000c7d74]                           dc.b $00
[000c7d75]                           dc.b $00
[000c7d76]                           dc.b $00
[000c7d77]                           dc.b $00
[000c7d78]                           dc.b $00
[000c7d79]                           dc.b $00
[000c7d7a]                           dc.b $00
[000c7d7b]                           dc.b $00
[000c7d7c]                           dc.b $00
[000c7d7d]                           dc.b $00
[000c7d7e]                           dc.b $00
[000c7d7f]                           dc.b $00
[000c7d80]                           dc.b $00
[000c7d81]                           dc.b $00
[000c7d82]                           dc.b $00
[000c7d83]                           dc.b $00
[000c7d84]                           dc.b $00
[000c7d85]                           dc.b $00
[000c7d86]                           dc.b $00
[000c7d87]                           dc.b $00
[000c7d88]                           dc.b $00
[000c7d89]                           dc.b $00
[000c7d8a]                           dc.b $00
[000c7d8b]                           dc.b $00
[000c7d8c]                           dc.b $00
[000c7d8d]                           dc.b $00
[000c7d8e]                           dc.b $00
[000c7d8f]                           dc.b $00
[000c7d90]                           dc.b $00
[000c7d91]                           dc.b $00
[000c7d92]                           dc.b $00
[000c7d93]                           dc.b $00
[000c7d94]                           dc.b $00
[000c7d95]                           dc.b $00
[000c7d96]                           dc.b $00
[000c7d97]                           dc.b $00
[000c7d98]                           dc.b $00
[000c7d99]                           dc.b $00
[000c7d9a]                           dc.b $00
[000c7d9b]                           dc.b $00
[000c7d9c]                           dc.b $00
[000c7d9d]                           dc.b $00
[000c7d9e]                           dc.b $00
[000c7d9f]                           dc.b $00
[000c7da0]                           dc.b $00
[000c7da1]                           dc.b $00
[000c7da2]                           dc.b $00
[000c7da3]                           dc.b $00
[000c7da4]                           dc.b $00
[000c7da5]                           dc.b $00
[000c7da6]                           dc.b $00
[000c7da7]                           dc.b $00
[000c7da8]                           dc.b $00
[000c7da9]                           dc.b $00
[000c7daa]                           dc.b $00
[000c7dab]                           dc.b $00
[000c7dac]                           dc.b $00
[000c7dad]                           dc.b $00
[000c7dae]                           dc.b $00
[000c7daf]                           dc.b $00
[000c7db0]                           dc.b $00
[000c7db1]                           dc.b $00
[000c7db2]                           dc.b $00
[000c7db3]                           dc.b $00
[000c7db4]                           dc.b $00
[000c7db5]                           dc.b $00
[000c7db6]                           dc.b $00
[000c7db7]                           dc.b $00
[000c7db8]                           dc.b $00
[000c7db9]                           dc.b $00
[000c7dba]                           dc.b $00
[000c7dbb]                           dc.b $00
[000c7dbc]                           dc.b $00
[000c7dbd]                           dc.b $00
[000c7dbe]                           dc.b $00
[000c7dbf]                           dc.b $00
[000c7dc0]                           dc.b $00
[000c7dc1]                           dc.b $00
[000c7dc2]                           dc.b $00
[000c7dc3]                           dc.b $00
[000c7dc4]                           dc.b $00
[000c7dc5]                           dc.b $00
[000c7dc6]                           dc.b $00
[000c7dc7]                           dc.b $00
[000c7dc8]                           dc.b $00
[000c7dc9]                           dc.b $00
[000c7dca]                           dc.b $00
[000c7dcb]                           dc.b $00
[000c7dcc]                           dc.b $00
[000c7dcd]                           dc.b $00
[000c7dce]                           dc.b $00
[000c7dcf]                           dc.b $00
[000c7dd0]                           dc.b $00
[000c7dd1]                           dc.b $00
[000c7dd2]                           dc.b $00
[000c7dd3]                           dc.b $00
[000c7dd4]                           dc.b $00
[000c7dd5]                           dc.b $00
[000c7dd6]                           dc.b $00
[000c7dd7]                           dc.b $00
[000c7dd8]                           dc.b $00
[000c7dd9]                           dc.b $00
[000c7dda]                           dc.b $00
[000c7ddb]                           dc.b $00
[000c7ddc]                           dc.b $00
[000c7ddd]                           dc.b $00
[000c7dde]                           dc.b $00
[000c7ddf]                           dc.b $00
[000c7de0]                           dc.b $00
[000c7de1]                           dc.b $00
[000c7de2]                           dc.b $00
[000c7de3]                           dc.b $00
[000c7de4]                           dc.b $00
[000c7de5]                           dc.b $00
[000c7de6]                           dc.b $00
[000c7de7]                           dc.b $00
[000c7de8]                           dc.b $00
[000c7de9]                           dc.b $00
[000c7dea]                           dc.b $00
[000c7deb]                           dc.b $00
[000c7dec]                           dc.b $00
[000c7ded]                           dc.b $00
[000c7dee]                           dc.b $00
[000c7def]                           dc.b $00
[000c7df0]                           dc.b $00
[000c7df1]                           dc.b $00
[000c7df2]                           dc.b $00
[000c7df3]                           dc.b $00
[000c7df4]                           dc.b $00
[000c7df5]                           dc.b $00
[000c7df6]                           dc.b $00
[000c7df7]                           dc.b $00
[000c7df8]                           dc.b $00
[000c7df9]                           dc.b $00
[000c7dfa]                           dc.b $00
[000c7dfb]                           dc.b $00
[000c7dfc]                           dc.b $00
[000c7dfd]                           dc.b $00
[000c7dfe]                           dc.b $00
[000c7dff]                           dc.b $00
[000c7e00]                           dc.b $00
[000c7e01]                           dc.b $00
[000c7e02]                           dc.b $00
[000c7e03]                           dc.b $00
[000c7e04]                           dc.b $00
[000c7e05]                           dc.b $00
[000c7e06]                           dc.b $00
[000c7e07]                           dc.b $00
[000c7e08]                           dc.b $00
[000c7e09]                           dc.b $00
[000c7e0a]                           dc.b $00
[000c7e0b]                           dc.b $00
[000c7e0c]                           dc.b $00
[000c7e0d]                           dc.b $00
[000c7e0e]                           dc.b $00
[000c7e0f]                           dc.b $00
[000c7e10]                           dc.b $00
[000c7e11]                           dc.b $00
[000c7e12]                           dc.b $00
[000c7e13]                           dc.b $00
[000c7e14]                           dc.b $00
[000c7e15]                           dc.b $00
[000c7e16]                           dc.b $00
[000c7e17]                           dc.b $00
[000c7e18]                           dc.b $00
[000c7e19]                           dc.b $00
[000c7e1a]                           dc.b $00
[000c7e1b]                           dc.b $00
[000c7e1c]                           dc.b $00
[000c7e1d]                           dc.b $00
[000c7e1e]                           dc.b $00
[000c7e1f]                           dc.b $00
[000c7e20]                           dc.b $00
[000c7e21]                           dc.b $00
[000c7e22]                           dc.b $00
[000c7e23]                           dc.b $00
[000c7e24]                           dc.b $00
[000c7e25]                           dc.b $00
[000c7e26]                           dc.b $00
[000c7e27]                           dc.b $00
[000c7e28]                           dc.b $00
[000c7e29]                           dc.b $00
[000c7e2a]                           dc.b $00
[000c7e2b]                           dc.b $00
[000c7e2c]                           dc.b $00
[000c7e2d]                           dc.b $00
[000c7e2e]                           dc.b $00
[000c7e2f]                           dc.b $00
[000c7e30]                           dc.b $00
[000c7e31]                           dc.b $00
[000c7e32]                           dc.b $00
[000c7e33]                           dc.b $00
[000c7e34]                           dc.b $00
[000c7e35]                           dc.b $00
[000c7e36]                           dc.b $00
[000c7e37]                           dc.b $00
[000c7e38]                           dc.b $00
[000c7e39]                           dc.b $00
[000c7e3a]                           dc.b $00
[000c7e3b]                           dc.b $00
[000c7e3c]                           dc.b $00
[000c7e3d]                           dc.b $00
[000c7e3e]                           dc.b $00
[000c7e3f]                           dc.b $00
[000c7e40]                           dc.b $00
[000c7e41]                           dc.b $00
[000c7e42]                           dc.b $00
[000c7e43]                           dc.b $00
[000c7e44]                           dc.b $00
[000c7e45]                           dc.b $00
[000c7e46]                           dc.b $00
[000c7e47]                           dc.b $00
[000c7e48]                           dc.b $00
[000c7e49]                           dc.b $00
[000c7e4a]                           dc.b $00
[000c7e4b]                           dc.b $00
[000c7e4c]                           dc.b $00
[000c7e4d]                           dc.b $00
[000c7e4e]                           dc.b $00
[000c7e4f]                           dc.b $00
[000c7e50]                           dc.b $00
[000c7e51]                           dc.b $00
[000c7e52]                           dc.b $00
[000c7e53]                           dc.b $00
[000c7e54]                           dc.b $00
[000c7e55]                           dc.b $00
[000c7e56]                           dc.b $00
[000c7e57]                           dc.b $00
[000c7e58]                           dc.b $00
[000c7e59]                           dc.b $00
[000c7e5a]                           dc.b $00
[000c7e5b]                           dc.b $00
[000c7e5c]                           dc.b $00
[000c7e5d]                           dc.b $00
[000c7e5e]                           dc.b $00
[000c7e5f]                           dc.b $00
[000c7e60]                           dc.b $00
[000c7e61]                           dc.b $00
[000c7e62]                           dc.b $00
[000c7e63]                           dc.b $00
[000c7e64]                           dc.b $00
[000c7e65]                           dc.b $00
[000c7e66]                           dc.b $00
[000c7e67]                           dc.b $00
[000c7e68]                           dc.b $00
[000c7e69]                           dc.b $00
[000c7e6a]                           dc.b $00
[000c7e6b]                           dc.b $00
[000c7e6c]                           dc.b $00
[000c7e6d]                           dc.b $00
[000c7e6e]                           dc.b $00
[000c7e6f]                           dc.b $00
[000c7e70]                           dc.b $00
[000c7e71]                           dc.b $00
[000c7e72]                           dc.b $00
[000c7e73]                           dc.b $00
[000c7e74]                           dc.b $00
[000c7e75]                           dc.b $00
[000c7e76]                           dc.b $00
[000c7e77]                           dc.b $00
[000c7e78]                           dc.b $00
[000c7e79]                           dc.b $00
[000c7e7a]                           dc.b $00
[000c7e7b]                           dc.b $00
[000c7e7c]                           dc.b $00
[000c7e7d]                           dc.b $00
[000c7e7e]                           dc.b $00
[000c7e7f]                           dc.b $00
[000c7e80]                           dc.b $00
[000c7e81]                           dc.b $00
[000c7e82]                           dc.b $00
[000c7e83]                           dc.b $00
[000c7e84]                           dc.b $00
[000c7e85]                           dc.b $00
[000c7e86]                           dc.b $00
[000c7e87]                           dc.b $00
[000c7e88]                           dc.b $00
[000c7e89]                           dc.b $00
[000c7e8a]                           dc.b $00
[000c7e8b]                           dc.b $00
[000c7e8c]                           dc.b $00
[000c7e8d]                           dc.b $00
[000c7e8e]                           dc.b $00
[000c7e8f]                           dc.b $00
[000c7e90]                           dc.b $00
[000c7e91]                           dc.b $00
[000c7e92]                           dc.b $00
[000c7e93]                           dc.b $00
[000c7e94]                           dc.b $00
[000c7e95]                           dc.b $00
[000c7e96]                           dc.b $00
[000c7e97]                           dc.b $00
[000c7e98]                           dc.b $00
[000c7e99]                           dc.b $00
[000c7e9a]                           dc.b $00
[000c7e9b]                           dc.b $00
[000c7e9c]                           dc.b $00
[000c7e9d]                           dc.b $00
[000c7e9e]                           dc.b $00
[000c7e9f]                           dc.b $00
[000c7ea0]                           dc.b $00
[000c7ea1]                           dc.b $00
[000c7ea2]                           dc.b $00
[000c7ea3]                           dc.b $00
[000c7ea4]                           dc.b $00
[000c7ea5]                           dc.b $00
[000c7ea6]                           dc.b $00
[000c7ea7]                           dc.b $00
[000c7ea8]                           dc.b $00
[000c7ea9]                           dc.b $00
[000c7eaa]                           dc.b $00
[000c7eab]                           dc.b $00
[000c7eac]                           dc.b $00
[000c7ead]                           dc.b $00
[000c7eae]                           dc.b $00
[000c7eaf]                           dc.b $00
[000c7eb0]                           dc.b $00
[000c7eb1]                           dc.b $00
[000c7eb2]                           dc.b $00
[000c7eb3]                           dc.b $00
[000c7eb4]                           dc.b $00
[000c7eb5]                           dc.b $00
[000c7eb6]                           dc.b $00
[000c7eb7]                           dc.b $00
[000c7eb8]                           dc.b $00
[000c7eb9]                           dc.b $00
[000c7eba]                           dc.b $00
[000c7ebb]                           dc.b $00
[000c7ebc]                           dc.b $00
[000c7ebd]                           dc.b $00
[000c7ebe]                           dc.b $00
[000c7ebf]                           dc.b $00
[000c7ec0]                           dc.b $00
[000c7ec1]                           dc.b $00
[000c7ec2]                           dc.b $00
[000c7ec3]                           dc.b $00
[000c7ec4]                           dc.b $00
[000c7ec5]                           dc.b $00
[000c7ec6]                           dc.b $00
[000c7ec7]                           dc.b $00
[000c7ec8]                           dc.b $00
[000c7ec9]                           dc.b $00
[000c7eca]                           dc.b $00
[000c7ecb]                           dc.b $00
[000c7ecc]                           dc.b $00
[000c7ecd]                           dc.b $00
[000c7ece]                           dc.b $00
[000c7ecf]                           dc.b $00
[000c7ed0]                           dc.b $00
[000c7ed1]                           dc.b $00
[000c7ed2]                           dc.b $00
[000c7ed3]                           dc.b $00
[000c7ed4]                           dc.b $00
[000c7ed5]                           dc.b $00
[000c7ed6]                           dc.b $00
[000c7ed7]                           dc.b $00
[000c7ed8]                           dc.b $00
[000c7ed9]                           dc.b $00
[000c7eda]                           dc.b $00
[000c7edb]                           dc.b $00
[000c7edc]                           dc.b $00
[000c7edd]                           dc.b $00
[000c7ede]                           dc.b $00
[000c7edf]                           dc.b $00
[000c7ee0]                           dc.b $00
[000c7ee1]                           dc.b $00
[000c7ee2]                           dc.b $00
[000c7ee3]                           dc.b $00
[000c7ee4]                           dc.b $00
[000c7ee5]                           dc.b $00
[000c7ee6]                           dc.b $00
[000c7ee7]                           dc.b $00
[000c7ee8]                           dc.b $00
[000c7ee9]                           dc.b $00
[000c7eea]                           dc.b $00
[000c7eeb]                           dc.b $00
[000c7eec]                           dc.b $00
[000c7eed]                           dc.b $00
[000c7eee]                           dc.b $00
[000c7eef]                           dc.b $00
[000c7ef0]                           dc.b $00
[000c7ef1]                           dc.b $00
[000c7ef2]                           dc.b $00
[000c7ef3]                           dc.b $00
[000c7ef4]                           dc.b $00
[000c7ef5]                           dc.b $00
[000c7ef6]                           dc.b $00
[000c7ef7]                           dc.b $00
[000c7ef8]                           dc.b $00
[000c7ef9]                           dc.b $00
[000c7efa]                           dc.b $00
[000c7efb]                           dc.b $00
[000c7efc]                           dc.b $00
[000c7efd]                           dc.b $00
[000c7efe]                           dc.b $00
[000c7eff]                           dc.b $00
[000c7f00]                           dc.b $00
[000c7f01]                           dc.b $00
[000c7f02]                           dc.b $00
[000c7f03]                           dc.b $00
[000c7f04]                           dc.b $00
[000c7f05]                           dc.b $00
[000c7f06]                           dc.b $00
[000c7f07]                           dc.b $00
[000c7f08]                           dc.b $00
[000c7f09]                           dc.b $00
[000c7f0a]                           dc.b $00
[000c7f0b]                           dc.b $00
[000c7f0c]                           dc.b $00
[000c7f0d]                           dc.b $00
[000c7f0e]                           dc.b $00
[000c7f0f]                           dc.b $00
[000c7f10]                           dc.b $00
[000c7f11]                           dc.b $00
[000c7f12]                           dc.b $00
[000c7f13]                           dc.b $00
[000c7f14]                           dc.b $00
[000c7f15]                           dc.b $00
[000c7f16]                           dc.b $00
[000c7f17]                           dc.b $00
[000c7f18]                           dc.b $00
[000c7f19]                           dc.b $00
[000c7f1a]                           dc.b $00
[000c7f1b]                           dc.b $00
[000c7f1c]                           dc.b $00
[000c7f1d]                           dc.b $00
[000c7f1e]                           dc.b $00
[000c7f1f]                           dc.b $00
[000c7f20]                           dc.b $00
[000c7f21]                           dc.b $00
[000c7f22]                           dc.b $00
[000c7f23]                           dc.b $00
[000c7f24]                           dc.b $00
[000c7f25]                           dc.b $00
[000c7f26]                           dc.b $00
[000c7f27]                           dc.b $00
[000c7f28]                           dc.b $00
[000c7f29]                           dc.b $00
[000c7f2a]                           dc.b $00
[000c7f2b]                           dc.b $00
[000c7f2c]                           dc.b $00
[000c7f2d]                           dc.b $00
[000c7f2e]                           dc.b $00
[000c7f2f]                           dc.b $00
[000c7f30]                           dc.b $00
[000c7f31]                           dc.b $00
[000c7f32]                           dc.b $00
[000c7f33]                           dc.b $00
[000c7f34]                           dc.b $00
[000c7f35]                           dc.b $00
[000c7f36]                           dc.b $00
[000c7f37]                           dc.b $00
[000c7f38]                           dc.b $00
[000c7f39]                           dc.b $00
[000c7f3a]                           dc.b $00
[000c7f3b]                           dc.b $00
[000c7f3c]                           dc.b $00
[000c7f3d]                           dc.b $00
[000c7f3e]                           dc.b $00
[000c7f3f]                           dc.b $00
[000c7f40]                           dc.b $00
[000c7f41]                           dc.b $00
[000c7f42]                           dc.b $00
[000c7f43]                           dc.b $00
[000c7f44]                           dc.b $00
[000c7f45]                           dc.b $00
[000c7f46]                           dc.b $00
[000c7f47]                           dc.b $00
[000c7f48]                           dc.b $00
[000c7f49]                           dc.b $00
[000c7f4a]                           dc.b $00
[000c7f4b]                           dc.b $00
[000c7f4c]                           dc.b $00
[000c7f4d]                           dc.b $00
[000c7f4e]                           dc.b $00
[000c7f4f]                           dc.b $00
[000c7f50]                           dc.b $00
[000c7f51]                           dc.b $00
[000c7f52]                           dc.b $00
[000c7f53]                           dc.b $00
[000c7f54]                           dc.b $00
[000c7f55]                           dc.b $00
[000c7f56]                           dc.b $00
[000c7f57]                           dc.b $00
[000c7f58]                           dc.b $00
[000c7f59]                           dc.b $00
[000c7f5a]                           dc.b $00
[000c7f5b]                           dc.b $00
[000c7f5c]                           dc.b $00
[000c7f5d]                           dc.b $00
[000c7f5e]                           dc.b $00
[000c7f5f]                           dc.b $00
[000c7f60]                           dc.b $00
[000c7f61]                           dc.b $00
[000c7f62]                           dc.b $00
[000c7f63]                           dc.b $00
[000c7f64]                           dc.b $00
[000c7f65]                           dc.b $00
[000c7f66]                           dc.b $00
[000c7f67]                           dc.b $00
[000c7f68]                           dc.b $00
[000c7f69]                           dc.b $00
[000c7f6a]                           dc.b $00
[000c7f6b]                           dc.b $00
[000c7f6c]                           dc.b $00
[000c7f6d]                           dc.b $00
[000c7f6e]                           dc.b $00
[000c7f6f]                           dc.b $00
[000c7f70]                           dc.b $00
[000c7f71]                           dc.b $00
[000c7f72]                           dc.b $00
[000c7f73]                           dc.b $00
[000c7f74]                           dc.b $00
[000c7f75]                           dc.b $00
[000c7f76]                           dc.b $00
[000c7f77]                           dc.b $00
[000c7f78]                           dc.b $00
[000c7f79]                           dc.b $00
[000c7f7a]                           dc.b $00
[000c7f7b]                           dc.b $00
[000c7f7c]                           dc.b $00
[000c7f7d]                           dc.b $00
[000c7f7e]                           dc.b $00
[000c7f7f]                           dc.b $00
[000c7f80]                           dc.b $00
[000c7f81]                           dc.b $00
[000c7f82]                           dc.b $00
[000c7f83]                           dc.b $00
[000c7f84]                           dc.b $00
[000c7f85]                           dc.b $00
[000c7f86]                           dc.b $00
[000c7f87]                           dc.b $00
[000c7f88]                           dc.b $00
[000c7f89]                           dc.b $00
[000c7f8a]                           dc.b $00
[000c7f8b]                           dc.b $00
[000c7f8c]                           dc.b $00
[000c7f8d]                           dc.b $00
[000c7f8e]                           dc.b $00
[000c7f8f]                           dc.b $00
[000c7f90]                           dc.b $00
[000c7f91]                           dc.b $00
[000c7f92]                           dc.b $00
[000c7f93]                           dc.b $00
[000c7f94]                           dc.b $00
[000c7f95]                           dc.b $00
[000c7f96]                           dc.b $00
[000c7f97]                           dc.b $00
[000c7f98]                           dc.b $00
[000c7f99]                           dc.b $00
[000c7f9a]                           dc.b $00
[000c7f9b]                           dc.b $00
[000c7f9c]                           dc.b $00
[000c7f9d]                           dc.b $00
[000c7f9e]                           dc.b $00
[000c7f9f]                           dc.b $00
[000c7fa0]                           dc.b $00
[000c7fa1]                           dc.b $00
[000c7fa2]                           dc.b $00
[000c7fa3]                           dc.b $00
[000c7fa4]                           dc.b $00
[000c7fa5]                           dc.b $00
[000c7fa6]                           dc.b $00
[000c7fa7]                           dc.b $00
[000c7fa8]                           dc.b $00
[000c7fa9]                           dc.b $00
[000c7faa]                           dc.b $00
[000c7fab]                           dc.b $00
[000c7fac]                           dc.b $00
[000c7fad]                           dc.b $00
[000c7fae]                           dc.b $00
[000c7faf]                           dc.b $00
[000c7fb0]                           dc.b $00
[000c7fb1]                           dc.b $00
[000c7fb2]                           dc.b $00
[000c7fb3]                           dc.b $00
[000c7fb4]                           dc.b $00
[000c7fb5]                           dc.b $00
[000c7fb6]                           dc.b $00
[000c7fb7]                           dc.b $00
[000c7fb8]                           dc.b $00
[000c7fb9]                           dc.b $00
[000c7fba]                           dc.b $00
[000c7fbb]                           dc.b $00
[000c7fbc]                           dc.b $00
[000c7fbd]                           dc.b $00
[000c7fbe]                           dc.b $00
[000c7fbf]                           dc.b $00
[000c7fc0]                           dc.b $00
[000c7fc1]                           dc.b $00
[000c7fc2]                           dc.b $00
[000c7fc3]                           dc.b $00
[000c7fc4]                           dc.b $00
[000c7fc5]                           dc.b $00
[000c7fc6]                           dc.b $00
[000c7fc7]                           dc.b $00
[000c7fc8]                           dc.b $00
[000c7fc9]                           dc.b $00
[000c7fca]                           dc.b $00
[000c7fcb]                           dc.b $00
[000c7fcc]                           dc.b $00
[000c7fcd]                           dc.b $00
[000c7fce]                           dc.b $00
[000c7fcf]                           dc.b $00
[000c7fd0]                           dc.b $00
[000c7fd1]                           dc.b $00
[000c7fd2]                           dc.b $00
[000c7fd3]                           dc.b $00
[000c7fd4]                           dc.b $00
[000c7fd5]                           dc.b $00
[000c7fd6]                           dc.b $00
[000c7fd7]                           dc.b $00
[000c7fd8]                           dc.b $00
[000c7fd9]                           dc.b $00
[000c7fda]                           dc.b $00
[000c7fdb]                           dc.b $00
[000c7fdc]                           dc.b $00
[000c7fdd]                           dc.b $00
[000c7fde]                           dc.b $00
[000c7fdf]                           dc.b $00
[000c7fe0]                           dc.b $00
[000c7fe1]                           dc.b $00
[000c7fe2]                           dc.b $00
[000c7fe3]                           dc.b $00
[000c7fe4]                           dc.b $00
[000c7fe5]                           dc.b $00
[000c7fe6]                           dc.b $00
[000c7fe7]                           dc.b $00
[000c7fe8]                           dc.b $00
[000c7fe9]                           dc.b $00
[000c7fea]                           dc.b $00
[000c7feb]                           dc.b $00
[000c7fec]                           dc.b $00
[000c7fed]                           dc.b $00
[000c7fee]                           dc.b $00
[000c7fef]                           dc.b $00
[000c7ff0]                           dc.b $00
[000c7ff1]                           dc.b $00
[000c7ff2]                           dc.b $00
[000c7ff3]                           dc.b $00
[000c7ff4]                           dc.b $00
[000c7ff5]                           dc.b $00
[000c7ff6]                           dc.b $00
[000c7ff7]                           dc.b $00
[000c7ff8]                           dc.b $00
[000c7ff9]                           dc.b $00
[000c7ffa]                           dc.b $00
[000c7ffb]                           dc.b $00
[000c7ffc]                           dc.b $00
[000c7ffd]                           dc.b $00
[000c7ffe]                           dc.b $00
[000c7fff]                           dc.b $00
[000c8000]                           dc.b $00
[000c8001]                           dc.b $00
[000c8002]                           dc.b $00
[000c8003]                           dc.b $00
[000c8004]                           dc.b $00
[000c8005]                           dc.b $00
[000c8006]                           dc.b $00
[000c8007]                           dc.b $00
[000c8008]                           dc.b $00
[000c8009]                           dc.b $00
[000c800a]                           dc.b $00
[000c800b]                           dc.b $00
[000c800c]                           dc.b $00
[000c800d]                           dc.b $00
[000c800e]                           dc.b $00
[000c800f]                           dc.b $00
[000c8010]                           dc.b $00
[000c8011]                           dc.b $00
[000c8012]                           dc.b $00
[000c8013]                           dc.b $00
[000c8014]                           dc.b $00
[000c8015]                           dc.b $00
[000c8016]                           dc.b $00
[000c8017]                           dc.b $00
[000c8018]                           dc.b $00
[000c8019]                           dc.b $00
[000c801a]                           dc.b $00
[000c801b]                           dc.b $00
[000c801c]                           dc.b $00
[000c801d]                           dc.b $00
[000c801e]                           dc.b $00
[000c801f]                           dc.b $00
[000c8020]                           dc.b $00
[000c8021]                           dc.b $00
[000c8022]                           dc.b $00
[000c8023]                           dc.b $00
[000c8024]                           dc.b $00
[000c8025]                           dc.b $00
[000c8026]                           dc.b $00
[000c8027]                           dc.b $00
[000c8028]                           dc.b $00
[000c8029]                           dc.b $00
[000c802a]                           dc.b $00
[000c802b]                           dc.b $00
[000c802c]                           dc.b $00
[000c802d]                           dc.b $00
[000c802e]                           dc.b $00
[000c802f]                           dc.b $00
[000c8030]                           dc.b $00
[000c8031]                           dc.b $00
[000c8032]                           dc.b $00
[000c8033]                           dc.b $00
[000c8034]                           dc.b $00
[000c8035]                           dc.b $00
[000c8036]                           dc.b $00
[000c8037]                           dc.b $00
[000c8038]                           dc.b $00
[000c8039]                           dc.b $00
[000c803a]                           dc.b $00
[000c803b]                           dc.b $00
[000c803c]                           dc.b $00
[000c803d]                           dc.b $00
[000c803e]                           dc.b $00
[000c803f]                           dc.b $00
[000c8040]                           dc.b $00
[000c8041]                           dc.b $00
[000c8042]                           dc.b $00
[000c8043]                           dc.b $00
[000c8044]                           dc.b $00
[000c8045]                           dc.b $00
[000c8046]                           dc.b $00
[000c8047]                           dc.b $00
[000c8048]                           dc.b $00
[000c8049]                           dc.b $00
[000c804a]                           dc.b $00
[000c804b]                           dc.b $00
[000c804c]                           dc.b $00
[000c804d]                           dc.b $00
[000c804e]                           dc.b $00
[000c804f]                           dc.b $00
[000c8050]                           dc.b $00
[000c8051]                           dc.b $00
[000c8052]                           dc.b $00
[000c8053]                           dc.b $00
[000c8054]                           dc.b $00
[000c8055]                           dc.b $00
[000c8056]                           dc.b $00
[000c8057]                           dc.b $00
[000c8058]                           dc.b $00
[000c8059]                           dc.b $00
[000c805a]                           dc.b $00
[000c805b]                           dc.b $00
[000c805c]                           dc.b $00
[000c805d]                           dc.b $00
[000c805e]                           dc.b $00
[000c805f]                           dc.b $00
[000c8060]                           dc.b $00
[000c8061]                           dc.b $00
[000c8062]                           dc.b $00
[000c8063]                           dc.b $00
[000c8064]                           dc.b $00
[000c8065]                           dc.b $00
[000c8066]                           dc.b $00
[000c8067]                           dc.b $00
[000c8068]                           dc.b $00
[000c8069]                           dc.b $00
[000c806a]                           dc.b $00
[000c806b]                           dc.b $00
[000c806c]                           dc.b $00
[000c806d]                           dc.b $00
[000c806e]                           dc.b $00
[000c806f]                           dc.b $00
[000c8070]                           dc.b $00
[000c8071]                           dc.b $00
[000c8072]                           dc.b $00
[000c8073]                           dc.b $00
[000c8074]                           dc.b $00
[000c8075]                           dc.b $00
[000c8076]                           dc.b $00
[000c8077]                           dc.b $00
[000c8078]                           dc.b $00
[000c8079]                           dc.b $00
[000c807a]                           dc.b $00
[000c807b]                           dc.b $00
[000c807c]                           dc.b $00
[000c807d]                           dc.b $00
[000c807e]                           dc.b $00
[000c807f]                           dc.b $00
[000c8080]                           dc.b $00
[000c8081]                           dc.b $00
[000c8082]                           dc.b $00
[000c8083]                           dc.b $00
[000c8084]                           dc.b $00
[000c8085]                           dc.b $00
[000c8086]                           dc.b $00
[000c8087]                           dc.b $00
[000c8088]                           dc.b $00
[000c8089]                           dc.b $00
[000c808a]                           dc.b $00
[000c808b]                           dc.b $00
[000c808c]                           dc.b $00
[000c808d]                           dc.b $00
[000c808e]                           dc.b $00
[000c808f]                           dc.b $00
[000c8090]                           dc.b $00
[000c8091]                           dc.b $00
[000c8092]                           dc.b $00
[000c8093]                           dc.b $00
[000c8094]                           dc.b $00
[000c8095]                           dc.b $00
[000c8096]                           dc.b $00
[000c8097]                           dc.b $00
[000c8098]                           dc.b $00
[000c8099]                           dc.b $00
[000c809a]                           dc.b $00
[000c809b]                           dc.b $00
[000c809c]                           dc.b $00
[000c809d]                           dc.b $00
[000c809e]                           dc.b $00
[000c809f]                           dc.b $00
[000c80a0]                           dc.b $00
[000c80a1]                           dc.b $00
[000c80a2]                           dc.b $00
[000c80a3]                           dc.b $00
[000c80a4]                           dc.b $00
[000c80a5]                           dc.b $00
[000c80a6]                           dc.b $00
[000c80a7]                           dc.b $00
[000c80a8]                           dc.b $00
[000c80a9]                           dc.b $00
[000c80aa]                           dc.b $00
[000c80ab]                           dc.b $00
[000c80ac]                           dc.b $00
[000c80ad]                           dc.b $00
[000c80ae]                           dc.b $00
[000c80af]                           dc.b $00
[000c80b0]                           dc.b $00
[000c80b1]                           dc.b $00
[000c80b2]                           dc.b $00
[000c80b3]                           dc.b $00
[000c80b4]                           dc.b $00
[000c80b5]                           dc.b $00
[000c80b6]                           dc.b $00
[000c80b7]                           dc.b $00
[000c80b8]                           dc.b $00
[000c80b9]                           dc.b $00
[000c80ba]                           dc.b $00
[000c80bb]                           dc.b $00
[000c80bc]                           dc.b $00
[000c80bd]                           dc.b $00
[000c80be]                           dc.b $00
[000c80bf]                           dc.b $00
[000c80c0]                           dc.b $00
[000c80c1]                           dc.b $00
[000c80c2]                           dc.b $00
[000c80c3]                           dc.b $00
[000c80c4]                           dc.b $00
[000c80c5]                           dc.b $00
[000c80c6]                           dc.b $00
[000c80c7]                           dc.b $00
[000c80c8]                           dc.b $00
[000c80c9]                           dc.b $00
[000c80ca]                           dc.b $00
[000c80cb]                           dc.b $00
[000c80cc]                           dc.b $00
[000c80cd]                           dc.b $00
[000c80ce]                           dc.b $00
[000c80cf]                           dc.b $00
[000c80d0]                           dc.b $00
[000c80d1]                           dc.b $00
[000c80d2]                           dc.b $00
[000c80d3]                           dc.b $00
[000c80d4]                           dc.b $00
[000c80d5]                           dc.b $00
[000c80d6]                           dc.b $00
[000c80d7]                           dc.b $00
[000c80d8]                           dc.b $00
[000c80d9]                           dc.b $00
[000c80da]                           dc.b $00
[000c80db]                           dc.b $00
[000c80dc]                           dc.b $00
[000c80dd]                           dc.b $00
[000c80de]                           dc.b $00
[000c80df]                           dc.b $00
[000c80e0]                           dc.b $00
[000c80e1]                           dc.b $00
[000c80e2]                           dc.b $00
[000c80e3]                           dc.b $00
[000c80e4]                           dc.b $00
[000c80e5]                           dc.b $00
[000c80e6]                           dc.b $00
[000c80e7]                           dc.b $00
[000c80e8]                           dc.b $00
[000c80e9]                           dc.b $00
[000c80ea]                           dc.b $00
[000c80eb]                           dc.b $00
[000c80ec]                           dc.b $00
[000c80ed]                           dc.b $00
[000c80ee]                           dc.b $00
[000c80ef]                           dc.b $00
[000c80f0]                           dc.b $00
[000c80f1]                           dc.b $00
[000c80f2]                           dc.b $00
[000c80f3]                           dc.b $00
[000c80f4]                           dc.b $00
[000c80f5]                           dc.b $00
[000c80f6]                           dc.b $00
[000c80f7]                           dc.b $00
[000c80f8]                           dc.b $00
[000c80f9]                           dc.b $00
[000c80fa]                           dc.b $00
[000c80fb]                           dc.b $00
[000c80fc]                           dc.b $00
[000c80fd]                           dc.b $00
[000c80fe]                           dc.b $00
[000c80ff]                           dc.b $00
[000c8100]                           dc.b $00
[000c8101]                           dc.b $00
[000c8102]                           dc.b $00
[000c8103]                           dc.b $00
[000c8104]                           dc.b $00
[000c8105]                           dc.b $00
[000c8106]                           dc.b $00
[000c8107]                           dc.b $00
[000c8108]                           dc.b $00
[000c8109]                           dc.b $00
[000c810a]                           dc.b $00
[000c810b]                           dc.b $00
[000c810c]                           dc.b $00
[000c810d]                           dc.b $00
[000c810e]                           dc.b $00
[000c810f]                           dc.b $00
[000c8110]                           dc.b $00
[000c8111]                           dc.b $00
[000c8112]                           dc.b $00
[000c8113]                           dc.b $00
[000c8114]                           dc.b $00
[000c8115]                           dc.b $00
[000c8116]                           dc.b $00
[000c8117]                           dc.b $00
[000c8118]                           dc.b $00
[000c8119]                           dc.b $00
[000c811a]                           dc.b $00
[000c811b]                           dc.b $00
[000c811c]                           dc.b $00
[000c811d]                           dc.b $00
[000c811e]                           dc.b $00
[000c811f]                           dc.b $00
[000c8120]                           dc.b $00
[000c8121]                           dc.b $00
[000c8122]                           dc.b $00
[000c8123]                           dc.b $00
[000c8124]                           dc.b $00
[000c8125]                           dc.b $00
[000c8126]                           dc.b $00
[000c8127]                           dc.b $00
[000c8128]                           dc.b $00
[000c8129]                           dc.b $00
[000c812a]                           dc.b $00
[000c812b]                           dc.b $00
[000c812c]                           dc.b $00
[000c812d]                           dc.b $00
[000c812e]                           dc.b $00
[000c812f]                           dc.b $00
[000c8130]                           dc.b $00
[000c8131]                           dc.b $00
[000c8132]                           dc.b $00
[000c8133]                           dc.b $00
[000c8134]                           dc.b $00
[000c8135]                           dc.b $00
[000c8136]                           dc.b $00
[000c8137]                           dc.b $00
[000c8138]                           dc.b $00
[000c8139]                           dc.b $00
[000c813a]                           dc.b $00
[000c813b]                           dc.b $00
[000c813c]                           dc.b $00
[000c813d]                           dc.b $00
[000c813e]                           dc.b $00
[000c813f]                           dc.b $00
[000c8140]                           dc.b $00
[000c8141]                           dc.b $00
[000c8142]                           dc.b $00
[000c8143]                           dc.b $00
[000c8144]                           dc.b $00
[000c8145]                           dc.b $00
[000c8146]                           dc.b $00
[000c8147]                           dc.b $00
[000c8148]                           dc.b $00
[000c8149]                           dc.b $00
[000c814a]                           dc.b $00
[000c814b]                           dc.b $00
[000c814c]                           dc.b $00
[000c814d]                           dc.b $00
[000c814e]                           dc.b $00
[000c814f]                           dc.b $00
[000c8150]                           dc.b $00
[000c8151]                           dc.b $00
[000c8152]                           dc.b $00
[000c8153]                           dc.b $00
[000c8154]                           dc.b $00
[000c8155]                           dc.b $00
[000c8156]                           dc.b $00
[000c8157]                           dc.b $00
[000c8158]                           dc.b $00
[000c8159]                           dc.b $00
[000c815a]                           dc.b $00
[000c815b]                           dc.b $00
[000c815c]                           dc.b $00
[000c815d]                           dc.b $00
[000c815e]                           dc.b $00
[000c815f]                           dc.b $00
[000c8160]                           dc.b $00
[000c8161]                           dc.b $00
[000c8162]                           dc.b $00
[000c8163]                           dc.b $00
[000c8164]                           dc.b $00
[000c8165]                           dc.b $00
[000c8166]                           dc.b $00
[000c8167]                           dc.b $00
[000c8168]                           dc.b $00
[000c8169]                           dc.b $00
[000c816a]                           dc.b $00
[000c816b]                           dc.b $00
[000c816c]                           dc.b $00
[000c816d]                           dc.b $00
[000c816e]                           dc.b $00
[000c816f]                           dc.b $00
[000c8170]                           dc.b $00
[000c8171]                           dc.b $00
[000c8172]                           dc.b $00
[000c8173]                           dc.b $00
[000c8174]                           dc.b $00
[000c8175]                           dc.b $00
[000c8176]                           dc.b $00
[000c8177]                           dc.b $00
[000c8178]                           dc.b $00
[000c8179]                           dc.b $00
[000c817a]                           dc.b $00
[000c817b]                           dc.b $00
[000c817c]                           dc.b $00
[000c817d]                           dc.b $00
[000c817e]                           dc.b $00
[000c817f]                           dc.b $00
[000c8180]                           dc.b $00
[000c8181]                           dc.b $00
[000c8182]                           dc.b $00
[000c8183]                           dc.b $00
[000c8184]                           dc.b $00
[000c8185]                           dc.b $00
[000c8186]                           dc.b $00
[000c8187]                           dc.b $00
[000c8188]                           dc.b $00
[000c8189]                           dc.b $00
[000c818a]                           dc.b $00
[000c818b]                           dc.b $00
[000c818c]                           dc.b $00
[000c818d]                           dc.b $00
[000c818e]                           dc.b $00
[000c818f]                           dc.b $00
[000c8190]                           dc.b $00
[000c8191]                           dc.b $00
[000c8192]                           dc.b $00
[000c8193]                           dc.b $00
[000c8194]                           dc.b $00
[000c8195]                           dc.b $00
[000c8196]                           dc.b $00
[000c8197]                           dc.b $00
[000c8198]                           dc.b $00
[000c8199]                           dc.b $00
[000c819a]                           dc.b $00
[000c819b]                           dc.b $00
[000c819c]                           dc.b $00
[000c819d]                           dc.b $00
[000c819e]                           dc.b $00
[000c819f]                           dc.b $00
[000c81a0]                           dc.b $00
[000c81a1]                           dc.b $00
[000c81a2]                           dc.b $00
[000c81a3]                           dc.b $00
[000c81a4]                           dc.b $00
[000c81a5]                           dc.b $00
[000c81a6]                           dc.b $00
[000c81a7]                           dc.b $00
[000c81a8]                           dc.b $00
[000c81a9]                           dc.b $00
[000c81aa]                           dc.b $00
[000c81ab]                           dc.b $00
[000c81ac]                           dc.b $00
[000c81ad]                           dc.b $00
[000c81ae]                           dc.b $00
[000c81af]                           dc.b $00
[000c81b0]                           dc.b $00
[000c81b1]                           dc.b $00
[000c81b2]                           dc.b $00
[000c81b3]                           dc.b $00
[000c81b4]                           dc.b $00
[000c81b5]                           dc.b $00
[000c81b6]                           dc.b $00
[000c81b7]                           dc.b $00
[000c81b8]                           dc.b $00
[000c81b9]                           dc.b $00
[000c81ba]                           dc.b $00
[000c81bb]                           dc.b $00
[000c81bc]                           dc.b $00
[000c81bd]                           dc.b $00
[000c81be]                           dc.b $00
[000c81bf]                           dc.b $00
[000c81c0]                           dc.b $00
[000c81c1]                           dc.b $00
[000c81c2]                           dc.b $00
[000c81c3]                           dc.b $00
[000c81c4]                           dc.b $00
[000c81c5]                           dc.b $00
[000c81c6]                           dc.b $00
[000c81c7]                           dc.b $00
[000c81c8]                           dc.b $00
[000c81c9]                           dc.b $00
[000c81ca]                           dc.b $00
[000c81cb]                           dc.b $00
[000c81cc]                           dc.b $00
[000c81cd]                           dc.b $00
[000c81ce]                           dc.b $00
[000c81cf]                           dc.b $00
[000c81d0]                           dc.b $00
[000c81d1]                           dc.b $00
[000c81d2]                           dc.b $00
[000c81d3]                           dc.b $00
[000c81d4]                           dc.b $00
[000c81d5]                           dc.b $00
[000c81d6]                           dc.b $00
[000c81d7]                           dc.b $00
[000c81d8]                           dc.b $00
[000c81d9]                           dc.b $00
[000c81da]                           dc.b $00
[000c81db]                           dc.b $00
[000c81dc]                           dc.b $00
[000c81dd]                           dc.b $00
[000c81de]                           dc.b $00
[000c81df]                           dc.b $00
[000c81e0]                           dc.b $00
[000c81e1]                           dc.b $00
[000c81e2]                           dc.b $00
[000c81e3]                           dc.b $00
[000c81e4]                           dc.b $00
[000c81e5]                           dc.b $00
[000c81e6]                           dc.b $00
[000c81e7]                           dc.b $00
[000c81e8]                           dc.b $00
[000c81e9]                           dc.b $00
[000c81ea]                           dc.b $00
[000c81eb]                           dc.b $00
[000c81ec]                           dc.b $00
[000c81ed]                           dc.b $00
[000c81ee]                           dc.b $00
[000c81ef]                           dc.b $00
[000c81f0]                           dc.b $00
[000c81f1]                           dc.b $00
[000c81f2]                           dc.b $00
[000c81f3]                           dc.b $00
[000c81f4]                           dc.b $00
[000c81f5]                           dc.b $00
[000c81f6]                           dc.b $00
[000c81f7]                           dc.b $00
[000c81f8]                           dc.b $00
[000c81f9]                           dc.b $00
[000c81fa]                           dc.b $00
[000c81fb]                           dc.b $00
[000c81fc]                           dc.b $00
[000c81fd]                           dc.b $00
[000c81fe]                           dc.b $00
[000c81ff]                           dc.b $00
[000c8200]                           dc.b $00
[000c8201]                           dc.b $00
[000c8202]                           dc.b $00
[000c8203]                           dc.b $00
[000c8204]                           dc.b $00
[000c8205]                           dc.b $00
[000c8206]                           dc.b $00
[000c8207]                           dc.b $00
[000c8208]                           dc.b $00
[000c8209]                           dc.b $00
[000c820a]                           dc.b $00
[000c820b]                           dc.b $00
[000c820c]                           dc.b $00
[000c820d]                           dc.b $00
[000c820e]                           dc.b $00
[000c820f]                           dc.b $00
[000c8210]                           dc.b $00
[000c8211]                           dc.b $00
[000c8212]                           dc.b $00
[000c8213]                           dc.b $00
[000c8214]                           dc.b $00
[000c8215]                           dc.b $00
[000c8216]                           dc.b $00
[000c8217]                           dc.b $00
[000c8218]                           dc.b $00
[000c8219]                           dc.b $00
[000c821a]                           dc.b $00
[000c821b]                           dc.b $00
[000c821c]                           dc.b $00
[000c821d]                           dc.b $00
[000c821e]                           dc.b $00
[000c821f]                           dc.b $00
[000c8220]                           dc.b $00
[000c8221]                           dc.b $00
[000c8222]                           dc.b $00
[000c8223]                           dc.b $00
[000c8224]                           dc.b $00
[000c8225]                           dc.b $00
[000c8226]                           dc.b $00
[000c8227]                           dc.b $00
[000c8228]                           dc.b $00
[000c8229]                           dc.b $00
[000c822a]                           dc.b $00
[000c822b]                           dc.b $00
[000c822c]                           dc.b $00
[000c822d]                           dc.b $00
[000c822e]                           dc.b $00
[000c822f]                           dc.b $00
[000c8230]                           dc.b $00
[000c8231]                           dc.b $00
[000c8232]                           dc.b $00
[000c8233]                           dc.b $00
[000c8234]                           dc.b $00
[000c8235]                           dc.b $00
ins:
[000c8236]                           dc.w $6100
text1:
[000c8238] 000c8236                  dc.l ins
text2:
[000c823c] 000c85c4                  dc.l $000c85c4 ; no symbol found
[000c8240] 000c85c4                  dc.l $000c85c4 ; no symbol found
subins:
[000c8244]                           dc.b $00
[000c8245]                           dc.b $00
[000c8246]                           dc.b $00
[000c8247]                           dc.b $00
[000c8248]                           dc.b $00
[000c8249]                           dc.b $00
[000c824a]                           dc.b $00
[000c824b]                           dc.b $00
[000c824c]                           dc.b $00
[000c824d]                           dc.b $00
[000c824e]                           dc.b $00
[000c824f]                           dc.b $00
[000c8250]                           dc.b $00
[000c8251]                           dc.b $00
[000c8252]                           dc.b $00
[000c8253]                           dc.b $00
[000c8254]                           dc.b $00
[000c8255]                           dc.b $00
[000c8256]                           dc.b $00
[000c8257]                           dc.b $01
[000c8258] 000c8238                  dc.l text1
subcr:
[000c825c]                           dc.b $00
[000c825d]                           dc.b $00
[000c825e]                           dc.b $00
[000c825f]                           dc.b $00
[000c8260]                           dc.b $00
[000c8261]                           dc.b $00
[000c8262]                           dc.b $00
[000c8263]                           dc.b $00
[000c8264]                           dc.b $00
[000c8265]                           dc.b $00
[000c8266]                           dc.b $00
[000c8267]                           dc.b $00
[000c8268]                           dc.b $00
[000c8269]                           dc.b $00
[000c826a]                           dc.b $00
[000c826b]                           dc.b $00
[000c826c]                           dc.b $00
[000c826d]                           dc.b $00
[000c826e]                           dc.b $00
[000c826f]                           dc.b $02
[000c8270] 000c823c                  dc.l text2
subdel:
[000c8274]                           dc.b $00
[000c8275]                           dc.b $00
[000c8276]                           dc.b $00
[000c8277]                           dc.b $00
[000c8278]                           dc.b $00
[000c8279]                           dc.b $00
[000c827a]                           dc.b $00
[000c827b]                           dc.b $00
[000c827c]                           dc.b $00
[000c827d]                           dc.b $00
[000c827e]                           dc.b $00
[000c827f]                           dc.b $00
[000c8280]                           dc.b $00
[000c8281]                           dc.b $00
[000c8282]                           dc.b $00
[000c8283]                           dc.b $00
[000c8284]                           dc.b $00
[000c8285]                           dc.b $00
[000c8286]                           dc.b $00
[000c8287]                           dc.b $01
[000c8288] 000c823c                  dc.l text2
Apaste_rows:
[000c828c]                           dc.b $00
[000c828d]                           dc.b $00
[000c828e]                           dc.b $00
[000c828f]                           dc.b $00
Apaste_text:
[000c8290]                           dc.b $00
[000c8291]                           dc.b $00
[000c8292]                           dc.b $00
[000c8293]                           dc.b $00
editors:
[000c8294]                           dc.b $00
[000c8295]                           dc.b $00
euser:
[000c8296] 000362da                  dc.l A_editor
[000c829a]                           dc.b $00
[000c829b]                           dc.b $00
[000c829c]                           dc.b $00
[000c829d]                           dc.b $00
[000c829e] 00038e52                  dc.l Auo_editor
[000c82a2]                           dc.b $00
[000c82a3]                           dc.b $00
[000c82a4]                           dc.b $00
[000c82a5]                           dc.b $00
[000c82a6]                           dc.b $00
[000c82a7]                           dc.b $00
[000c82a8]                           dc.b $00
[000c82a9]                           dc.b $00
[000c82aa]                           dc.b $00
[000c82ab]                           dc.b $00
[000c82ac]                           dc.b $00
[000c82ad]                           dc.b $00
[000c82ae]                           dc.b $00
[000c82af]                           dc.b $00
[000c82b0]                           dc.b $00
[000c82b1]                           dc.b $00
[000c82b2]                           dc.b $00
[000c82b3]                           dc.b $00
[000c82b4]                           dc.b $00
[000c82b5]                           dc.b $00
vslider:
[000c82b6] 00035f08                  dc.l A_wislider
[000c82ba]                           dc.b $00
[000c82bb]                           dc.b $00
[000c82bc]                           dc.b $00
[000c82bd]                           dc.b $01
[000c82be] 00035f14                  dc.l Auo_wislider
[000c82c2]                           dc.b $00
[000c82c3]                           dc.b $00
[000c82c4]                           dc.b $00
[000c82c5]                           dc.b $00
[000c82c6]                           dc.b $00
[000c82c7]                           dc.b $00
[000c82c8]                           dc.b $00
[000c82c9]                           dc.b $00
[000c82ca]                           dc.b $00
[000c82cb]                           dc.b $00
[000c82cc]                           dc.b $00
[000c82cd]                           dc.b $00
[000c82ce]                           dc.b $00
[000c82cf]                           dc.b $00
[000c82d0]                           dc.b $00
[000c82d1]                           dc.b $00
[000c82d2]                           dc.b $00
[000c82d3]                           dc.b $00
[000c82d4]                           dc.b $00
[000c82d5]                           dc.b $00
hslider:
[000c82d6] 00035f08                  dc.l A_wislider
[000c82da]                           dc.b $00
[000c82db]                           dc.b $00
[000c82dc]                           dc.b $00
[000c82dd]                           dc.b $00
[000c82de] 00035f14                  dc.l Auo_wislider
[000c82e2]                           dc.b $00
[000c82e3]                           dc.b $00
[000c82e4]                           dc.b $00
[000c82e5]                           dc.b $00
[000c82e6]                           dc.b $00
[000c82e7]                           dc.b $00
[000c82e8]                           dc.b $00
[000c82e9]                           dc.b $00
[000c82ea]                           dc.b $00
[000c82eb]                           dc.b $00
[000c82ec]                           dc.b $00
[000c82ed]                           dc.b $00
[000c82ee]                           dc.b $00
[000c82ef]                           dc.b $00
[000c82f0]                           dc.b $00
[000c82f1]                           dc.b $00
[000c82f2]                           dc.b $00
[000c82f3]                           dc.b $00
[000c82f4]                           dc.b $00
[000c82f5]                           dc.b $00
eselect:
[000c82f6] 0005b5a0                  dc.l A_select
[000c82fa]                           dc.b $00
[000c82fb]                           dc.b $00
[000c82fc]                           dc.b $00
[000c82fd]                           dc.b $00
[000c82fe]                           dc.b $00
[000c82ff]                           dc.b $00
[000c8300]                           dc.b $00
[000c8301]                           dc.b $00
[000c8302]                           dc.b $00
[000c8303]                           dc.b $00
[000c8304]                           dc.b $00
[000c8305]                           dc.b $00
[000c8306]                           dc.b $00
[000c8307]                           dc.b $00
[000c8308]                           dc.b $00
[000c8309]                           dc.b $00
[000c830a]                           dc.b $00
[000c830b]                           dc.b $00
[000c830c]                           dc.b $00
[000c830d]                           dc.b $00
[000c830e]                           dc.b $00
[000c830f]                           dc.b $00
[000c8310]                           dc.b $00
[000c8311]                           dc.b $00
[000c8312]                           dc.b $00
[000c8313]                           dc.b $00
[000c8314]                           dc.b $00
[000c8315]                           dc.b $00
edit:
[000c8316]                           dc.w $ffff
[000c8318]                           dc.b $00
[000c8319]                           dc.b $02
[000c831a]                           dc.b $00
[000c831b]                           dc.b $02
[000c831c]                           dc.b $00
[000c831d]                           dc.b $18
[000c831e]                           dc.w $1840
[000c8320]                           dc.b $00
[000c8321]                           dc.b $00
[000c8322] 000c8296                  dc.l euser
[000c8326]                           dc.b $00
[000c8327]                           dc.b $00
[000c8328]                           dc.b $00
[000c8329]                           dc.b $00
[000c832a]                           dc.b $00
[000c832b]                           dc.b $28
[000c832c]                           dc.b $00
[000c832d]                           dc.b $0a
edit0:
[000c832e] 0003ea1c                  dc.l sel_edit
[000c8332] 0003ebc4                  dc.l ins_string
[000c8336]                           dc.w $8000
[000c8338]                           dc.b $00
[000c8339]                           dc.b $00
[000c833a]                           dc.b $00
[000c833b]                           dc.b $00
[000c833c]                           dc.b $00
[000c833d]                           dc.b $00
[000c833e]                           dc.b $00
[000c833f]                           dc.b $00
[000c8340]                           dc.b $00
[000c8341]                           dc.b $00
[000c8342]                           dc.b $00
[000c8343]                           dc.b $00
[000c8344]                           dc.b $00
[000c8345]                           dc.b $00
drag:
[000c8346]                           dc.b $00
[000c8347]                           dc.b $00
[000c8348]                           dc.w $ffff
[000c834a]                           dc.w $ffff
[000c834c]                           dc.b $00
[000c834d]                           dc.b $18
[000c834e]                           dc.w $20c0
[000c8350]                           dc.b $00
[000c8351]                           dc.b $00
[000c8352] 000c82f6                  dc.l eselect
[000c8356]                           dc.b $00
[000c8357]                           dc.b $00
[000c8358]                           dc.b $00
[000c8359]                           dc.b $00
[000c835a]                           dc.b $00
[000c835b]                           dc.b $00
[000c835c]                           dc.b $00
[000c835d]                           dc.b $00
drag0:
[000c835e]                           dc.b $00
[000c835f]                           dc.b $00
[000c8360]                           dc.b $00
[000c8361]                           dc.b $00
[000c8362]                           dc.b $00
[000c8363]                           dc.b $00
[000c8364]                           dc.b $00
[000c8365]                           dc.b $00
[000c8366]                           dc.w $8000
[000c8368]                           dc.b $00
[000c8369]                           dc.b $00
[000c836a]                           dc.b $00
[000c836b]                           dc.b $00
[000c836c]                           dc.b $00
[000c836d]                           dc.b $00
[000c836e]                           dc.b $00
[000c836f]                           dc.b $00
[000c8370]                           dc.b $00
[000c8371]                           dc.b $00
[000c8372]                           dc.b $00
[000c8373]                           dc.b $00
[000c8374]                           dc.b $00
[000c8375]                           dc.b $00
hor:
[000c8376]                           dc.w $ffff
[000c8378]                           dc.w $ffff
[000c837a]                           dc.w $ffff
[000c837c]                           dc.b $00
[000c837d]                           dc.b $18
[000c837e]                           dc.b $00
[000c837f]                           dc.b $00
[000c8380]                           dc.b $00
[000c8381]                           dc.b $00
[000c8382] 000c82d6                  dc.l hslider
[000c8386]                           dc.b $00
[000c8387]                           dc.b $00
[000c8388]                           dc.b $00
[000c8389]                           dc.b $00
[000c838a]                           dc.b $00
[000c838b]                           dc.b $00
[000c838c]                           dc.b $00
[000c838d]                           dc.b $00
ver:
[000c838e]                           dc.w $ffff
[000c8390]                           dc.w $ffff
[000c8392]                           dc.w $ffff
[000c8394]                           dc.b $00
[000c8395]                           dc.b $18
[000c8396]                           dc.b $00
[000c8397]                           dc.b $20
[000c8398]                           dc.b $00
[000c8399]                           dc.b $00
[000c839a] 000c82b6                  dc.l vslider
[000c839e]                           dc.b $00
[000c839f]                           dc.b $00
[000c83a0]                           dc.b $00
[000c83a1]                           dc.b $00
[000c83a2]                           dc.b $00
[000c83a3]                           dc.b $00
[000c83a4]                           dc.b $00
[000c83a5]                           dc.b $00
c_swap:
[000c83a6]                           dc.w $6162
[000c83a8]                           dc.b $00
[000c83a9]                           dc.b $00
tsw:
[000c83aa] 000c83a6                  dc.l c_swap
subswap:
[000c83ae]                           dc.b $00
[000c83af]                           dc.b $00
[000c83b0]                           dc.b $00
[000c83b1]                           dc.b $00
[000c83b2]                           dc.b $00
[000c83b3]                           dc.b $00
[000c83b4]                           dc.b $00
[000c83b5]                           dc.b $00
[000c83b6]                           dc.b $00
[000c83b7]                           dc.b $00
[000c83b8]                           dc.b $00
[000c83b9]                           dc.b $00
[000c83ba]                           dc.b $00
[000c83bb]                           dc.b $00
[000c83bc]                           dc.b $00
[000c83bd]                           dc.b $00
[000c83be]                           dc.b $00
[000c83bf]                           dc.b $00
[000c83c0]                           dc.b $00
[000c83c1]                           dc.b $01
[000c83c2] 000c83aa                  dc.l tsw
t:
[000c83c6] 000c85c4                  dc.l $000c85c4 ; no symbol found
[000c83ca] 000c85c4                  dc.l $000c85c4 ; no symbol found
subs:
[000c83ce]                           dc.b $00
[000c83cf]                           dc.b $00
[000c83d0]                           dc.b $00
[000c83d1]                           dc.b $00
[000c83d2]                           dc.b $00
[000c83d3]                           dc.b $00
[000c83d4]                           dc.b $00
[000c83d5]                           dc.b $00
[000c83d6]                           dc.b $00
[000c83d7]                           dc.b $00
[000c83d8]                           dc.b $00
[000c83d9]                           dc.b $00
[000c83da]                           dc.b $00
[000c83db]                           dc.b $00
[000c83dc]                           dc.b $00
[000c83dd]                           dc.b $00
[000c83de]                           dc.b $00
[000c83df]                           dc.b $00
[000c83e0]                           dc.b $00
[000c83e1]                           dc.b $02
[000c83e2] 000c83c6                  dc.l t
[000c83e6]                           dc.b $00
[000c83e7]                           dc.b $00
[000c83e8]                           dc.b $00
[000c83e9]                           dc.b $00
[000c83ea]                           dc.b $00
[000c83eb]                           dc.b $00
[000c83ec]                           dc.b $00
[000c83ed]                           dc.b $00
[000c83ee]                           dc.b $00
[000c83ef]                           dc.b $00
[000c83f0]                           dc.b $00
[000c83f1]                           dc.b $00
[000c83f2]                           dc.b $00
[000c83f3]                           dc.b $00
[000c83f4]                           dc.b $00
[000c83f5]                           dc.b $00
[000c83f6]                           dc.b $00
[000c83f7]                           dc.b $00
[000c83f8]                           dc.b $00
[000c83f9]                           dc.b $00
[000c83fa]                           dc.b $00
[000c83fb]                           dc.b $00
[000c83fc]                           dc.b $00
[000c83fd]                           dc.b $00
[000c83fe]                           dc.b $00
[000c83ff]                           dc.b $00
[000c8400]                           dc.b $00
[000c8401]                           dc.b $00
[000c8402]                           dc.b $00
[000c8403]                           dc.b $00
[000c8404]                           dc.b $00
[000c8405]                           dc.b $00
[000c8406]                           dc.b $00
[000c8407]                           dc.b $00
[000c8408]                           dc.b $00
[000c8409]                           dc.b $00
[000c840a]                           dc.b $00
[000c840b]                           dc.b $00
[000c840c]                           dc.b $00
[000c840d]                           dc.b $00
[000c840e]                           dc.b $00
[000c840f]                           dc.b $00
[000c8410]                           dc.b $00
[000c8411]                           dc.b $00
[000c8412]                           dc.b $00
[000c8413]                           dc.b $00
[000c8414]                           dc.b $00
[000c8415]                           dc.b $00
[000c8416]                           dc.b $00
[000c8417]                           dc.b $00
[000c8418]                           dc.b $00
[000c8419]                           dc.b $00
[000c841a]                           dc.b $00
[000c841b]                           dc.b $00
[000c841c]                           dc.b $00
[000c841d]                           dc.b $00
[000c841e]                           dc.b $00
[000c841f]                           dc.b $00
[000c8420]                           dc.b $00
[000c8421]                           dc.b $00
[000c8422]                           dc.b $00
[000c8423]                           dc.b $00
[000c8424]                           dc.b $00
[000c8425]                           dc.b $00
[000c8426]                           dc.b $00
[000c8427]                           dc.b $00
[000c8428]                           dc.b $00
[000c8429]                           dc.b $00
[000c842a]                           dc.b $00
[000c842b]                           dc.b $00
[000c842c]                           dc.b $00
[000c842d]                           dc.b $00
[000c842e]                           dc.b $00
[000c842f]                           dc.b $00
[000c8430]                           dc.b $00
[000c8431]                           dc.b $00
[000c8432]                           dc.b $00
[000c8433]                           dc.b $00
[000c8434]                           dc.b $00
[000c8435]                           dc.b $00
[000c8436]                           dc.b $00
[000c8437]                           dc.b $00
[000c8438]                           dc.b $00
[000c8439]                           dc.b $00
[000c843a]                           dc.b $00
[000c843b]                           dc.b $00
[000c843c]                           dc.b $00
[000c843d]                           dc.b $00
[000c843e]                           dc.b $00
[000c843f]                           dc.b $00
[000c8440]                           dc.b $00
[000c8441]                           dc.b $00
[000c8442]                           dc.b $00
[000c8443]                           dc.b $00
[000c8444]                           dc.b $00
[000c8445]                           dc.b $00
[000c8446]                           dc.b $00
[000c8447]                           dc.b $00
[000c8448]                           dc.b $00
[000c8449]                           dc.b $00
[000c844a]                           dc.b $00
[000c844b]                           dc.b $00
[000c844c]                           dc.b $00
[000c844d]                           dc.b $00
[000c844e]                           dc.b $00
[000c844f]                           dc.b $00
[000c8450]                           dc.b $00
[000c8451]                           dc.b $00
[000c8452]                           dc.b $00
[000c8453]                           dc.b $00
[000c8454]                           dc.b $00
[000c8455]                           dc.b $00
[000c8456]                           dc.b $00
[000c8457]                           dc.b $00
[000c8458]                           dc.b $00
[000c8459]                           dc.b $00
[000c845a]                           dc.b $00
[000c845b]                           dc.b $00
[000c845c]                           dc.b $00
[000c845d]                           dc.b $00
[000c845e]                           dc.b $00
[000c845f]                           dc.b $00
[000c8460]                           dc.b $00
[000c8461]                           dc.b $00
[000c8462]                           dc.b $00
[000c8463]                           dc.b $00
[000c8464]                           dc.b $00
[000c8465]                           dc.b $00
[000c8466]                           dc.b $00
[000c8467]                           dc.b $00
[000c8468]                           dc.b $00
[000c8469]                           dc.b $00
[000c846a]                           dc.b $00
[000c846b]                           dc.b $00
[000c846c]                           dc.b $00
[000c846d]                           dc.b $00
[000c846e]                           dc.b $00
[000c846f]                           dc.b $00
[000c8470]                           dc.b $00
[000c8471]                           dc.b $00
[000c8472]                           dc.b $00
[000c8473]                           dc.b $00
[000c8474]                           dc.b $00
[000c8475]                           dc.b $00
[000c8476]                           dc.b $00
[000c8477]                           dc.b $00
[000c8478]                           dc.b $00
[000c8479]                           dc.b $00
[000c847a]                           dc.b $00
[000c847b]                           dc.b $00
[000c847c]                           dc.b $00
[000c847d]                           dc.b $00
[000c847e]                           dc.b $00
[000c847f]                           dc.b $00
[000c8480]                           dc.b $00
[000c8481]                           dc.b $00
[000c8482]                           dc.b $00
[000c8483]                           dc.b $00
[000c8484]                           dc.b $00
[000c8485]                           dc.b $00
[000c8486]                           dc.b $00
[000c8487]                           dc.b $00
[000c8488]                           dc.b $00
[000c8489]                           dc.b $00
[000c848a]                           dc.b $00
[000c848b]                           dc.b $00
[000c848c]                           dc.b $00
[000c848d]                           dc.b $00
[000c848e]                           dc.b $00
[000c848f]                           dc.b $00
[000c8490]                           dc.b $00
[000c8491]                           dc.b $00
[000c8492]                           dc.b $00
[000c8493]                           dc.b $00
[000c8494]                           dc.b $00
[000c8495]                           dc.b $00
[000c8496]                           dc.b $00
[000c8497]                           dc.b $00
[000c8498]                           dc.b $00
[000c8499]                           dc.b $00
[000c849a]                           dc.b $00
[000c849b]                           dc.b $00
[000c849c]                           dc.b $00
[000c849d]                           dc.b $00
[000c849e]                           dc.b $00
[000c849f]                           dc.b $00
[000c84a0]                           dc.b $00
[000c84a1]                           dc.b $00
[000c84a2]                           dc.b $00
[000c84a3]                           dc.b $00
[000c84a4]                           dc.b $00
[000c84a5]                           dc.b $00
[000c84a6]                           dc.b $00
[000c84a7]                           dc.b $00
[000c84a8]                           dc.b $00
[000c84a9]                           dc.b $00
[000c84aa]                           dc.b $00
[000c84ab]                           dc.b $00
[000c84ac]                           dc.b $00
[000c84ad]                           dc.b $00
[000c84ae]                           dc.b $00
[000c84af]                           dc.b $00
[000c84b0]                           dc.b $00
[000c84b1]                           dc.b $00
[000c84b2]                           dc.b $00
[000c84b3]                           dc.b $00
[000c84b4]                           dc.b $00
[000c84b5]                           dc.b $00
[000c84b6]                           dc.b $00
[000c84b7]                           dc.b $00
[000c84b8]                           dc.b $00
[000c84b9]                           dc.b $00
[000c84ba]                           dc.b $00
[000c84bb]                           dc.b $00
[000c84bc]                           dc.b $00
[000c84bd]                           dc.b $00
[000c84be]                           dc.b $00
[000c84bf]                           dc.b $00
[000c84c0]                           dc.b $00
[000c84c1]                           dc.b $00
[000c84c2]                           dc.b $00
[000c84c3]                           dc.b $00
[000c84c4]                           dc.b $00
[000c84c5]                           dc.b $00
[000c84c6]                           dc.b $00
[000c84c7]                           dc.b $00
[000c84c8]                           dc.b $00
[000c84c9]                           dc.b $00
[000c84ca]                           dc.b $00
[000c84cb]                           dc.b $00
[000c84cc]                           dc.b $00
[000c84cd]                           dc.b $00
[000c84ce]                           dc.b $00
[000c84cf]                           dc.b $00
[000c84d0]                           dc.b $00
[000c84d1]                           dc.b $00
[000c84d2]                           dc.b $00
[000c84d3]                           dc.b $00
[000c84d4]                           dc.b $00
[000c84d5]                           dc.b $00
[000c84d6]                           dc.b $00
[000c84d7]                           dc.b $00
[000c84d8]                           dc.b $00
[000c84d9]                           dc.b $00
[000c84da]                           dc.b $00
[000c84db]                           dc.b $00
[000c84dc]                           dc.b $00
[000c84dd]                           dc.b $00
[000c84de]                           dc.b $00
[000c84df]                           dc.b $00
[000c84e0]                           dc.b $00
[000c84e1]                           dc.b $00
[000c84e2]                           dc.b $00
[000c84e3]                           dc.b $00
[000c84e4]                           dc.b $00
[000c84e5]                           dc.b $00
[000c84e6]                           dc.b $00
[000c84e7]                           dc.b $00
[000c84e8] 000c8627                  dc.l $000c8627 ; no symbol found
[000c84ec] 000c862b                  dc.l $000c862b ; no symbol found
[000c84f0] 000c862f                  dc.l $000c862f ; no symbol found
[000c84f4] 000c8633                  dc.l $000c8633 ; no symbol found
[000c84f8] 000c8637                  dc.l $000c8637 ; no symbol found
[000c84fc] 000c863b                  dc.l $000c863b ; no symbol found
[000c8500] 000c863f                  dc.l $000c863f ; no symbol found
[000c8504] 000c8643                  dc.l $000c8643 ; no symbol found
[000c8508] 000c8647                  dc.l $000c8647 ; no symbol found
[000c850c] 000c864b                  dc.l $000c864b ; no symbol found
[000c8510]                           dc.b $00
[000c8511]                           dc.b $00
[000c8512]                           dc.b $00
[000c8513]                           dc.b $00
[000c8514]                           dc.b $00
[000c8515]                           dc.b $00
[000c8516]                           dc.b $00
[000c8517]                           dc.b $00
[000c8518]                           dc.b $00
[000c8519]                           dc.b $00
[000c851a]                           dc.b $00
[000c851b]                           dc.b $00
[000c851c]                           dc.b $00
[000c851d]                           dc.b $00
[000c851e]                           dc.b $00
[000c851f]                           dc.b $00
[000c8520]                           dc.b $00
[000c8521]                           dc.b $00
[000c8522]                           dc.b $00
[000c8523]                           dc.b $00
[000c8524]                           dc.b $00
[000c8525]                           dc.b $00
[000c8526]                           dc.b $00
[000c8527]                           dc.b $00
[000c8528]                           dc.b $00
[000c8529]                           dc.b $00
[000c852a]                           dc.b $00
[000c852b]                           dc.b $00
[000c852c]                           dc.b $00
[000c852d]                           dc.b $00
[000c852e]                           dc.b $00
[000c852f]                           dc.b $00
[000c8530]                           dc.b $00
[000c8531]                           dc.b $00
[000c8532]                           dc.b $00
[000c8533]                           dc.b $00
[000c8534]                           dc.b $00
[000c8535]                           dc.b $00
[000c8536]                           dc.b $00
[000c8537]                           dc.b $00
[000c8538]                           dc.b $00
[000c8539]                           dc.b $00
[000c853a]                           dc.b $00
[000c853b]                           dc.b $00
[000c853c]                           dc.b $00
[000c853d]                           dc.b $00
[000c853e]                           dc.b $00
[000c853f]                           dc.b $00
[000c8540]                           dc.b $00
[000c8541]                           dc.b $00
[000c8542]                           dc.b $00
[000c8543]                           dc.b $00
[000c8544]                           dc.b $00
[000c8545]                           dc.b $00
[000c8546]                           dc.b $00
[000c8547]                           dc.b $00
[000c8548]                           dc.b $00
[000c8549]                           dc.b $00
[000c854a]                           dc.b $00
[000c854b]                           dc.b $00
[000c854c]                           dc.b $00
[000c854d]                           dc.b $00
[000c854e]                           dc.b $00
[000c854f]                           dc.b $00
[000c8550]                           dc.b $00
[000c8551]                           dc.b $00
[000c8552]                           dc.b $00
[000c8553]                           dc.b $00
[000c8554]                           dc.b $00
[000c8555]                           dc.b $00
[000c8556]                           dc.b $00
[000c8557]                           dc.b $00
[000c8558]                           dc.b $00
[000c8559]                           dc.b $00
[000c855a]                           dc.b $00
[000c855b]                           dc.b $00
[000c855c]                           dc.b $00
[000c855d]                           dc.b $00
[000c855e]                           dc.b $00
[000c855f]                           dc.b $00
[000c8560]                           dc.b $00
[000c8561]                           dc.b $00
[000c8562]                           dc.b $00
[000c8563]                           dc.b $00
[000c8564]                           dc.b $00
[000c8565]                           dc.b $00
[000c8566]                           dc.b $00
[000c8567]                           dc.b $00
[000c8568]                           dc.b $00
[000c8569]                           dc.b $00
[000c856a]                           dc.b $00
[000c856b]                           dc.b $00
[000c856c]                           dc.b $00
[000c856d]                           dc.b $00
[000c856e]                           dc.b $00
[000c856f]                           dc.b $00
[000c8570]                           dc.b $00
[000c8571]                           dc.b $00
[000c8572]                           dc.b $00
[000c8573]                           dc.b $00
[000c8574]                           dc.b $00
[000c8575]                           dc.b $00
[000c8576]                           dc.b $00
[000c8577]                           dc.b $00
[000c8578]                           dc.b $00
[000c8579]                           dc.b $00
[000c857a]                           dc.b $00
[000c857b]                           dc.b $00
[000c857c]                           dc.b $00
[000c857d]                           dc.b $00
[000c857e]                           dc.b $00
[000c857f]                           dc.b $00
[000c8580]                           dc.b $00
[000c8581]                           dc.b $00
[000c8582]                           dc.b $00
[000c8583]                           dc.b $00
[000c8584]                           dc.b $00
[000c8585]                           dc.b $00
[000c8586]                           dc.b $00
[000c8587]                           dc.b $00
[000c8588]                           dc.b $00
[000c8589]                           dc.b $00
[000c858a]                           dc.b $00
[000c858b]                           dc.b $00
[000c858c]                           dc.b $00
[000c858d]                           dc.b $00
[000c858e]                           dc.b $00
[000c858f]                           dc.b $00
[000c8590]                           dc.b $00
[000c8591]                           dc.b $00
[000c8592]                           dc.b $00
[000c8593]                           dc.b $00
[000c8594]                           dc.b $00
[000c8595]                           dc.b $00
[000c8596]                           dc.b $00
[000c8597]                           dc.b $00
[000c8598]                           dc.b $00
[000c8599]                           dc.b $00
[000c859a]                           dc.b $00
[000c859b]                           dc.b $00
[000c859c]                           dc.b $00
[000c859d]                           dc.b $00
[000c859e]                           dc.b $00
[000c859f]                           dc.b $00
[000c85a0]                           dc.b $00
[000c85a1]                           dc.b $00
[000c85a2]                           dc.w $0102
[000c85a4] 0003ed4e                  dc.l acc_fkey
[000c85a8] 0003edd2                  dc.l comp_fkey
[000c85ac] 0003ee2a                  dc.l drag_fkey
[000c85b0] 0003ee54                  dc.l edit_fkey
[000c85b4] 0003ef4c                  dc.l key_fkey
[000c85b8] 0003efba                  dc.l mess_fkey
[000c85bc] 0003eff6                  dc.l print_fkey
[000c85c0] 0003f06e                  dc.l term_fkey
[000c85c4]                           dc.b $00
[000c85c5]                           dc.b $09
[000c85c6]                           dc.b $00
[000c85c7]                           dc.b ' Keine Klammer.',0
[000c85d7]                           dc.b ' %2ld,%2ld / %2ld,%2ld',0
[000c85ee]                           dc.b 'EDITOR',0
[000c85f5]                           dc.b 'Schrift',0
[000c85fd]                           dc.b '%ld',0
[000c8601]                           dc.b ' Neue Datei.',0
[000c860e]                           dc.w $0d0a
[000c8610]                           dc.b $00
[000c8611]                           dc.b '.$$$',0
[000c8616]                           dc.w $2564
[000c8618]                           dc.b $00
[000c8619]                           dc.b '%2d',0
[000c861d]                           dc.b 'scrap.txt',0
[000c8627]                           dc.b 'F 1',0
[000c862b]                           dc.b 'F 2',0
[000c862f]                           dc.b 'F 3',0
[000c8633]                           dc.b 'F 4',0
[000c8637]                           dc.b 'F 5',0
[000c863b]                           dc.b 'F 6',0
[000c863f]                           dc.b 'F 7',0
[000c8643]                           dc.b 'F 8',0
[000c8647]                           dc.b 'F 9',0
[000c864b]                           dc.b 'F10',0
[000c864f]                           dc.b $20
[000c8650]                           dc.w $2000
[000c8652]                           dc.b '%s:%-0.*s',0
		.even

	.bss

buffer: ds.b 8194
