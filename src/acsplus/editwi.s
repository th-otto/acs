set_icon:
[0003b288] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003b28c] 594f                      subq.w     #4,a7
[0003b28e] 2e88                      move.l     a0,(a7)
[0003b290] 2668 005a                 movea.l    90(a0),a3
[0003b294] 200b                      move.l     a3,d0
[0003b296] 6700 0078                 beq.w      $0003B310
[0003b29a] 2850                      movea.l    (a0),a4
[0003b29c] 102c 00a8                 move.b     168(a4),d0
[0003b2a0] 6706                      beq.s      $0003B2A8
[0003b2a2] 4bec 00a8                 lea.l      168(a4),a5
[0003b2a6] 601a                      bra.s      $0003B2C2
[0003b2a8] 45ec 0192                 lea.l      402(a4),a2
[0003b2ac] 705c                      moveq.l    #92,d0
[0003b2ae] 204a                      movea.l    a2,a0
[0003b2b0] 4eb9 0007 68e2            jsr        $000768E2
[0003b2b6] 2a48                      movea.l    a0,a5
[0003b2b8] 200d                      move.l     a5,d0
[0003b2ba] 6704                      beq.s      $0003B2C0
[0003b2bc] 524d                      addq.w     #1,a5
[0003b2be] 6002                      bra.s      $0003B2C2
[0003b2c0] 2a4a                      movea.l    a2,a5
[0003b2c2] 43ec 00b8                 lea.l      184(a4),a1
[0003b2c6] 204d                      movea.l    a5,a0
[0003b2c8] 4eb9 0007 68fe            jsr        $000768FE
[0003b2ce] 4a40                      tst.w      d0
[0003b2d0] 673e                      beq.s      $0003B310
[0003b2d2] 422c 00b8                 clr.b      184(a4)
[0003b2d6] 700f                      moveq.l    #15,d0
[0003b2d8] 224d                      movea.l    a5,a1
[0003b2da] 41ec 00b8                 lea.l      184(a4),a0
[0003b2de] 4eb9 0007 69da            jsr        $000769DA
[0003b2e4] 206b 0008                 movea.l    8(a3),a0
[0003b2e8] 4eb9 0004 371c            jsr        $0004371C
[0003b2ee] 204d                      movea.l    a5,a0
[0003b2f0] 4eb9 0004 36d6            jsr        Ast_create
[0003b2f6] 2748 0008                 move.l     a0,8(a3)
[0003b2fa] 4eb9 0004 e608            jsr        $0004E608
[0003b300] 2448                      movea.l    a0,a2
[0003b302] 2257                      movea.l    (a7),a1
[0003b304] 43e9 0058                 lea.l      88(a1),a1
[0003b308] 706d                      moveq.l    #109,d0
[0003b30a] 266a 0004                 movea.l    4(a2),a3
[0003b30e] 4e93                      jsr        (a3)
[0003b310] 584f                      addq.w     #4,a7
[0003b312] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003b316] 4e75                      rts
home:
[0003b318] 2f0a                      move.l     a2,-(a7)
[0003b31a] 594f                      subq.w     #4,a7
[0003b31c] 2448                      movea.l    a0,a2
[0003b31e] 4297                      clr.l      (a7)
[0003b320] 93c9                      suba.l     a1,a1
[0003b322] 303c 00d5                 move.w     #$00D5,d0
[0003b326] 4eb9 0003 8e52            jsr        $00038E52
[0003b32c] 93c9                      suba.l     a1,a1
[0003b32e] 700e                      moveq.l    #14,d0
[0003b330] 204a                      movea.l    a2,a0
[0003b332] 4eb9 0003 8e52            jsr        $00038E52
[0003b338] 43d7                      lea.l      (a7),a1
[0003b33a] 303c 00d7                 move.w     #$00D7,d0
[0003b33e] 204a                      movea.l    a2,a0
[0003b340] 4eb9 0003 8e52            jsr        $00038E52
[0003b346] 93c9                      suba.l     a1,a1
[0003b348] 303c 00db                 move.w     #$00DB,d0
[0003b34c] 204a                      movea.l    a2,a0
[0003b34e] 4eb9 0003 8e52            jsr        $00038E52
[0003b354] 93c9                      suba.l     a1,a1
[0003b356] 7005                      moveq.l    #5,d0
[0003b358] 204a                      movea.l    a2,a0
[0003b35a] 4eb9 0003 8e52            jsr        $00038E52
[0003b360] 93c9                      suba.l     a1,a1
[0003b362] 303c 00d6                 move.w     #$00D6,d0
[0003b366] 204a                      movea.l    a2,a0
[0003b368] 4eb9 0003 8e52            jsr        $00038E52
[0003b36e] 584f                      addq.w     #4,a7
[0003b370] 245f                      movea.l    (a7)+,a2
[0003b372] 4e75                      rts
set_select:
[0003b374] 4a40                      tst.w      d0
[0003b376] 6708                      beq.s      $0003B380
[0003b378] 0068 0001 000a            ori.w      #$0001,10(a0)
[0003b37e] 4e75                      rts
[0003b380] 0268 fffe 000a            andi.w     #$FFFE,10(a0)
[0003b386] 4e75                      rts
undirty:
[0003b388] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003b38c] 2448                      movea.l    a0,a2
[0003b38e] 2650                      movea.l    (a0),a3
[0003b390] 026b ff7f 0294            andi.w     #$FF7F,660(a3)
[0003b396] 93c9                      suba.l     a1,a1
[0003b398] 303c 00f9                 move.w     #$00F9,d0
[0003b39c] 206a 0014                 movea.l    20(a2),a0
[0003b3a0] 4eb9 0003 8e52            jsr        $00038E52
[0003b3a6] 49f9 000f ff04            lea.l      $000FFF04,a4
[0003b3ac] 486b 0192                 pea.l      402(a3)
[0003b3b0] 43eb 0068                 lea.l      104(a3),a1
[0003b3b4] 204c                      movea.l    a4,a0
[0003b3b6] 4eb9 0007 5680            jsr        $00075680
[0003b3bc] 584f                      addq.w     #4,a7
[0003b3be] 224c                      movea.l    a4,a1
[0003b3c0] 204a                      movea.l    a2,a0
[0003b3c2] 4eb9 0003 ce3c            jsr        $0003CE3C
[0003b3c8] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003b3cc] 4e75                      rts
dirty:
[0003b3ce] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003b3d2] 554f                      subq.w     #2,a7
[0003b3d4] 2448                      movea.l    a0,a2
[0003b3d6] 2650                      movea.l    (a0),a3
[0003b3d8] 303c 0080                 move.w     #$0080,d0
[0003b3dc] c06b 0294                 and.w      660(a3),d0
[0003b3e0] 663c                      bne.s      $0003B41E
[0003b3e2] 43d7                      lea.l      (a7),a1
[0003b3e4] 206a 0014                 movea.l    20(a2),a0
[0003b3e8] 303c 00fa                 move.w     #$00FA,d0
[0003b3ec] 4eb9 0003 8e52            jsr        $00038E52
[0003b3f2] 3017                      move.w     (a7),d0
[0003b3f4] 6728                      beq.s      $0003B41E
[0003b3f6] 006b 0080 0294            ori.w      #$0080,660(a3)
[0003b3fc] 49f9 000f ff04            lea.l      $000FFF04,a4
[0003b402] 486b 0192                 pea.l      402(a3)
[0003b406] 43eb 0088                 lea.l      136(a3),a1
[0003b40a] 204c                      movea.l    a4,a0
[0003b40c] 4eb9 0007 5680            jsr        $00075680
[0003b412] 584f                      addq.w     #4,a7
[0003b414] 224c                      movea.l    a4,a1
[0003b416] 204a                      movea.l    a2,a0
[0003b418] 4eb9 0003 ce3c            jsr        $0003CE3C
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
[0003b466] 6000 0e06                 bra        $0003C26E
[0003b46a] 302f 024c                 move.w     588(a7),d0
[0003b46e] 6a00 0bf0                 bpl        $0003C060
[0003b472] 122f 024d                 move.b     589(a7),d1
[0003b476] 4881                      ext.w      d1
[0003b478] b27c 0079                 cmp.w      #$0079,d1
[0003b47c] 6200 0bdc                 bhi        $0003C05A
[0003b480] d241                      add.w      d1,d1
[0003b482] 323b 1006                 move.w     $0003B48A(pc,d1.w),d1
[0003b486] 4efb 1002                 jmp        $0003B48A(pc,d1.w)
J30:
[0003b48a] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b48c] 0276                      dc.w $0276   ; $0003b700-$0003b48a
[0003b48e] 02d0                      dc.w $02d0   ; $0003b75a-$0003b48a
[0003b490] 0490                      dc.w $0490   ; $0003b91a-$0003b48a
[0003b492] 032a                      dc.w $032a   ; $0003b7b4-$0003b48a
[0003b494] 0276                      dc.w $0276   ; $0003b700-$0003b48a
[0003b496] 02d0                      dc.w $02d0   ; $0003b75a-$0003b48a
[0003b498] 0644                      dc.w $0644   ; $0003bace-$0003b48a
[0003b49a] 0814                      dc.w $0814   ; $0003bc9e-$0003b48a
[0003b49c] 0a7c                      dc.w $0a7c   ; $0003bf06-$0003b48a
[0003b49e] 0974                      dc.w $0974   ; $0003bdfe-$0003b48a
[0003b4a0] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4a2] 0644                      dc.w $0644   ; $0003bace-$0003b48a
[0003b4a4] 0974                      dc.w $0974   ; $0003bdfe-$0003b48a
[0003b4a6] 010a                      dc.w $010a   ; $0003b594-$0003b48a
[0003b4a8] 00f4                      dc.w $00f4   ; $0003b57e-$0003b48a
[0003b4aa] 0b5c                      dc.w $0b5c   ; $0003bfe6-$0003b48a
[0003b4ac] 0b5c                      dc.w $0b5c   ; $0003bfe6-$0003b48a
[0003b4ae] 0b5c                      dc.w $0b5c   ; $0003bfe6-$0003b48a
[0003b4b0] 0b5c                      dc.w $0b5c   ; $0003bfe6-$0003b48a
[0003b4b2] 0b5c                      dc.w $0b5c   ; $0003bfe6-$0003b48a
[0003b4b4] 0b5c                      dc.w $0b5c   ; $0003bfe6-$0003b48a
[0003b4b6] 0b5c                      dc.w $0b5c   ; $0003bfe6-$0003b48a
[0003b4b8] 0b5c                      dc.w $0b5c   ; $0003bfe6-$0003b48a
[0003b4ba] 0b5c                      dc.w $0b5c   ; $0003bfe6-$0003b48a
[0003b4bc] 0b5c                      dc.w $0b5c   ; $0003bfe6-$0003b48a
[0003b4be] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4c0] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4c2] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4c4] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4c6] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4c8] 0694                      dc.w $0694   ; $0003bb1e-$0003b48a
[0003b4ca] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4cc] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4ce] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4d0] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4d2] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4d4] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4d6] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4d8] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4da] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4dc] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4de] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4e0] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4e2] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4e4] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4e6] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4e8] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4ea] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4ec] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4ee] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4f0] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4f2] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4f4] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4f6] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4f8] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4fa] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4fc] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b4fe] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b500] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b502] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b504] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b506] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b508] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b50a] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b50c] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b50e] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b510] 0b30                      dc.w $0b30   ; $0003bfba-$0003b48a
[0003b512] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b514] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b516] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b518] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b51a] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b51c] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b51e] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b520] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b522] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b524] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b526] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b528] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b52a] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b52c] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b52e] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b530] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b532] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b534] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b536] 0b46                      dc.w $0b46   ; $0003bfd0-$0003b48a
[0003b538] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b53a] 0b1a                      dc.w $0b1a   ; $0003bfa4-$0003b48a
[0003b53c] 0b04                      dc.w $0b04   ; $0003bf8e-$0003b48a
[0003b53e] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b540] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b542] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b544] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b546] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b548] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b54a] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b54c] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b54e] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b550] 0b30                      dc.w $0b30   ; $0003bfba-$0003b48a
[0003b552] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b554] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b556] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b558] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b55a] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b55c] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b55e] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b560] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b562] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b564] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b566] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b568] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b56a] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b56c] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b56e] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b570] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b572] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b574] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b576] 0b46                      dc.w $0b46   ; $0003bfd0-$0003b48a
[0003b578] 0bd0                      dc.w $0bd0   ; $0003c05a-$0003b48a
[0003b57a] 0b1a                      dc.w $0b1a   ; $0003bfa4-$0003b48a
[0003b57c] 0b04                      dc.w $0b04   ; $0003bf8e-$0003b48a
[0003b57e] 93c9                      suba.l     a1,a1
[0003b580] 303c 00eb                 move.w     #$00EB,d0
[0003b584] 204b                      movea.l    a3,a0
[0003b586] 4e95                      jsr        (a5)
[0003b588] 93c9                      suba.l     a1,a1
[0003b58a] 7005                      moveq.l    #5,d0
[0003b58c] 204b                      movea.l    a3,a0
[0003b58e] 4e95                      jsr        (a5)
[0003b590] 6000 0cc6                 bra        $0003C258
[0003b594] 43ef 021c                 lea.l      540(a7),a1
[0003b598] 303c 00e3                 move.w     #$00E3,d0
[0003b59c] 204b                      movea.l    a3,a0
[0003b59e] 4e95                      jsr        (a5)
[0003b5a0] 202f 021c                 move.l     540(a7),d0
[0003b5a4] 6a00 009c                 bpl        $0003B642
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
[0003b5e8] 601c                      bra.s      $0003B606
[0003b5ea] 2212                      move.l     (a2),d1
[0003b5ec] 206f 0008                 movea.l    8(a7),a0
[0003b5f0] 1030 1800                 move.b     0(a0,d1.l),d0
[0003b5f4] 4880                      ext.w      d0
[0003b5f6] 206f 0010                 movea.l    16(a7),a0
[0003b5fa] 4eb9 0007 68ce            jsr        $000768CE
[0003b600] 2008                      move.l     a0,d0
[0003b602] 6606                      bne.s      $0003B60A
[0003b604] 5392                      subq.l     #1,(a2)
[0003b606] 2012                      move.l     (a2),d0
[0003b608] 6ae0                      bpl.s      $0003B5EA
[0003b60a] 7001                      moveq.l    #1,d0
[0003b60c] d092                      add.l      (a2),d0
[0003b60e] 2f40 0220                 move.l     d0,544(a7)
[0003b612] 24af 0234                 move.l     564(a7),(a2)
[0003b616] 601c                      bra.s      $0003B634
[0003b618] 2212                      move.l     (a2),d1
[0003b61a] 206f 0008                 movea.l    8(a7),a0
[0003b61e] 1030 1800                 move.b     0(a0,d1.l),d0
[0003b622] 4880                      ext.w      d0
[0003b624] 206f 0010                 movea.l    16(a7),a0
[0003b628] 4eb9 0007 68ce            jsr        $000768CE
[0003b62e] 2008                      move.l     a0,d0
[0003b630] 660a                      bne.s      $0003B63C
[0003b632] 5292                      addq.l     #1,(a2)
[0003b634] 2012                      move.l     (a2),d0
[0003b636] b0af 0004                 cmp.l      4(a7),d0
[0003b63a] 6ddc                      blt.s      $0003B618
[0003b63c] 2f52 0228                 move.l     (a2),552(a7)
[0003b640] 602c                      bra.s      $0003B66E
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
[0003b662] 670a                      beq.s      $0003B66E
[0003b664] 2f40 0224                 move.l     d0,548(a7)
[0003b668] 2f6f 0004 0228            move.l     4(a7),552(a7)
[0003b66e] 202f 0228                 move.l     552(a7),d0
[0003b672] b0af 0220                 cmp.l      544(a7),d0
[0003b676] 6f00 09e2                 ble        $0003C05A
[0003b67a] 42af 0248                 clr.l      584(a7)
[0003b67e] 41ef 0248                 lea.l      584(a7),a0
[0003b682] 303c 03e8                 move.w     #$03E8,d0
[0003b686] 4eb9 0004 ef62            jsr        $0004EF62
[0003b68c] 43f9 000c 85c5            lea.l      $000C85C5,a1
[0003b692] 41ef 0014                 lea.l      20(a7),a0
[0003b696] 4eb9 0007 6950            jsr        $00076950
[0003b69c] 202f 0228                 move.l     552(a7),d0
[0003b6a0] 90af 0220                 sub.l      544(a7),d0
[0003b6a4] 222f 0220                 move.l     544(a7),d1
[0003b6a8] 226f 0008                 movea.l    8(a7),a1
[0003b6ac] d3c1                      adda.l     d1,a1
[0003b6ae] 41ef 0014                 lea.l      20(a7),a0
[0003b6b2] 4eb9 0007 69da            jsr        $000769DA
[0003b6b8] 43ef 021c                 lea.l      540(a7),a1
[0003b6bc] 303c 00e4                 move.w     #$00E4,d0
[0003b6c0] 204b                      movea.l    a3,a0
[0003b6c2] 4e95                      jsr        (a5)
[0003b6c4] 202f 0248                 move.l     584(a7),d0
[0003b6c8] 6716                      beq.s      $0003B6E0
[0003b6ca] 43ef 0014                 lea.l      20(a7),a1
[0003b6ce] 2040                      movea.l    d0,a0
[0003b6d0] 2840                      movea.l    d0,a4
[0003b6d2] 286c 0004                 movea.l    4(a4),a4
[0003b6d6] 303c 03e9                 move.w     #$03E9,d0
[0003b6da] 4e94                      jsr        (a4)
[0003b6dc] 6000 0b7a                 bra        $0003C258
[0003b6e0] 42a7                      clr.l      -(a7)
[0003b6e2] 43ef 0019                 lea.l      25(a7),a1
[0003b6e6] 206f 0244                 movea.l    580(a7),a0
[0003b6ea] 41e8 0697                 lea.l      1687(a0),a0
[0003b6ee] 4eb9 0005 89ee            jsr        $000589EE
[0003b6f4] 584f                      addq.w     #4,a7
[0003b6f6] 5340                      subq.w     #1,d0
[0003b6f8] 6700 0b5e                 beq        $0003C258
[0003b6fc] 6000 095c                 bra        $0003C05A
[0003b700] 43ef 021c                 lea.l      540(a7),a1
[0003b704] 303c 00e3                 move.w     #$00E3,d0
[0003b708] 204b                      movea.l    a3,a0
[0003b70a] 4e95                      jsr        (a5)
[0003b70c] 202f 021c                 move.l     540(a7),d0
[0003b710] 6a00 00b4                 bpl        $0003B7C6
[0003b714] 0c2f 0001 024d            cmpi.b     #$01,589(a7)
[0003b71a] 660a                      bne.s      $0003B726
[0003b71c] 322f 024c                 move.w     588(a7),d1
[0003b720] c27c 0300                 and.w      #$0300,d1
[0003b724] 6712                      beq.s      $0003B738
[0003b726] 0c2f 0005 024d            cmpi.b     #$05,589(a7)
[0003b72c] 660e                      bne.s      $0003B73C
[0003b72e] 302f 024c                 move.w     588(a7),d0
[0003b732] c07c 0300                 and.w      #$0300,d0
[0003b736] 6704                      beq.s      $0003B73C
[0003b738] 7001                      moveq.l    #1,d0
[0003b73a] 6002                      bra.s      $0003B73E
[0003b73c] 4240                      clr.w      d0
[0003b73e] 4a40                      tst.w      d0
[0003b740] 670c                      beq.s      $0003B74E
[0003b742] 93c9                      suba.l     a1,a1
[0003b744] 700b                      moveq.l    #11,d0
[0003b746] 204b                      movea.l    a3,a0
[0003b748] 4e95                      jsr        (a5)
[0003b74a] 6000 0b0c                 bra        $0003C258
[0003b74e] 93c9                      suba.l     a1,a1
[0003b750] 700d                      moveq.l    #13,d0
[0003b752] 204b                      movea.l    a3,a0
[0003b754] 4e95                      jsr        (a5)
[0003b756] 6000 0b00                 bra        $0003C258
[0003b75a] 43ef 021c                 lea.l      540(a7),a1
[0003b75e] 303c 00e3                 move.w     #$00E3,d0
[0003b762] 204b                      movea.l    a3,a0
[0003b764] 4e95                      jsr        (a5)
[0003b766] 202f 021c                 move.l     540(a7),d0
[0003b76a] 6a00 01c0                 bpl        $0003B92C
[0003b76e] 0c2f 0002 024d            cmpi.b     #$02,589(a7)
[0003b774] 660a                      bne.s      $0003B780
[0003b776] 322f 024c                 move.w     588(a7),d1
[0003b77a] c27c 0300                 and.w      #$0300,d1
[0003b77e] 6712                      beq.s      $0003B792
[0003b780] 0c2f 0006 024d            cmpi.b     #$06,589(a7)
[0003b786] 660e                      bne.s      $0003B796
[0003b788] 302f 024c                 move.w     588(a7),d0
[0003b78c] c07c 0300                 and.w      #$0300,d0
[0003b790] 6704                      beq.s      $0003B796
[0003b792] 7001                      moveq.l    #1,d0
[0003b794] 6002                      bra.s      $0003B798
[0003b796] 4240                      clr.w      d0
[0003b798] 4a40                      tst.w      d0
[0003b79a] 670c                      beq.s      $0003B7A8
[0003b79c] 93c9                      suba.l     a1,a1
[0003b79e] 700a                      moveq.l    #10,d0
[0003b7a0] 204b                      movea.l    a3,a0
[0003b7a2] 4e95                      jsr        (a5)
[0003b7a4] 6000 0ab2                 bra        $0003C258
[0003b7a8] 93c9                      suba.l     a1,a1
[0003b7aa] 700c                      moveq.l    #12,d0
[0003b7ac] 204b                      movea.l    a3,a0
[0003b7ae] 4e95                      jsr        (a5)
[0003b7b0] 6000 0aa6                 bra        $0003C258
[0003b7b4] 43ef 021c                 lea.l      540(a7),a1
[0003b7b8] 303c 00e3                 move.w     #$00E3,d0
[0003b7bc] 204b                      movea.l    a3,a0
[0003b7be] 4e95                      jsr        (a5)
[0003b7c0] 202f 021c                 move.l     540(a7),d0
[0003b7c4] 6b24                      bmi.s      $0003B7EA
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
[0003b7e6] 6000 0a70                 bra        $0003C258
[0003b7ea] 302f 024c                 move.w     588(a7),d0
[0003b7ee] c07c 0400                 and.w      #$0400,d0
[0003b7f2] 6700 00c6                 beq        $0003B8BA
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
[0003b81c] 6626                      bne.s      $0003B844
[0003b81e] 222f 0238                 move.l     568(a7),d1
[0003b822] 6700 0a34                 beq        $0003C258
[0003b826] 53af 0238                 subq.l     #1,568(a7)
[0003b82a] 43ef 0238                 lea.l      568(a7),a1
[0003b82e] 204b                      movea.l    a3,a0
[0003b830] 7011                      moveq.l    #17,d0
[0003b832] 4e95                      jsr        (a5)
[0003b834] 43ef 0234                 lea.l      564(a7),a1
[0003b838] 303c 00e8                 move.w     #$00E8,d0
[0003b83c] 204b                      movea.l    a3,a0
[0003b83e] 4e95                      jsr        (a5)
[0003b840] 6000 024a                 bra        $0003BA8C
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
[0003b866] 6040                      bra.s      $0003B8A8
[0003b868] 2212                      move.l     (a2),d1
[0003b86a] 206f 0008                 movea.l    8(a7),a0
[0003b86e] 1030 18ff                 move.b     -1(a0,d1.l),d0
[0003b872] 4880                      ext.w      d0
[0003b874] 206f 0010                 movea.l    16(a7),a0
[0003b878] 4eb9 0007 68ce            jsr        $000768CE
[0003b87e] 2008                      move.l     a0,d0
[0003b880] 6624                      bne.s      $0003B8A6
[0003b882] 601c                      bra.s      $0003B8A0
[0003b884] 2212                      move.l     (a2),d1
[0003b886] 206f 0008                 movea.l    8(a7),a0
[0003b88a] 1030 18ff                 move.b     -1(a0,d1.l),d0
[0003b88e] 4880                      ext.w      d0
[0003b890] 206f 0010                 movea.l    16(a7),a0
[0003b894] 4eb9 0007 68ce            jsr        $000768CE
[0003b89a] 2008                      move.l     a0,d0
[0003b89c] 660e                      bne.s      $0003B8AC
[0003b89e] 5392                      subq.l     #1,(a2)
[0003b8a0] 2012                      move.l     (a2),d0
[0003b8a2] 6ee0                      bgt.s      $0003B884
[0003b8a4] 6006                      bra.s      $0003B8AC
[0003b8a6] 5392                      subq.l     #1,(a2)
[0003b8a8] 2012                      move.l     (a2),d0
[0003b8aa] 6ebc                      bgt.s      $0003B868
[0003b8ac] 224a                      movea.l    a2,a1
[0003b8ae] 303c 00d7                 move.w     #$00D7,d0
[0003b8b2] 204b                      movea.l    a3,a0
[0003b8b4] 4e95                      jsr        (a5)
[0003b8b6] 6000 09a0                 bra        $0003C258
[0003b8ba] 302f 024c                 move.w     588(a7),d0
[0003b8be] c07c 0300                 and.w      #$0300,d0
[0003b8c2] 6710                      beq.s      $0003B8D4
[0003b8c4] 43ef 022c                 lea.l      556(a7),a1
[0003b8c8] 303c 00d7                 move.w     #$00D7,d0
[0003b8cc] 204b                      movea.l    a3,a0
[0003b8ce] 4e95                      jsr        (a5)
[0003b8d0] 6000 0986                 bra        $0003C258
[0003b8d4] 43ef 0234                 lea.l      564(a7),a1
[0003b8d8] 303c 00e7                 move.w     #$00E7,d0
[0003b8dc] 204b                      movea.l    a3,a0
[0003b8de] 4e95                      jsr        (a5)
[0003b8e0] 202f 0234                 move.l     564(a7),d0
[0003b8e4] 6708                      beq.s      $0003B8EE
[0003b8e6] 53af 0234                 subq.l     #1,564(a7)
[0003b8ea] 6000 01a0                 bra        $0003BA8C
[0003b8ee] 43ef 0238                 lea.l      568(a7),a1
[0003b8f2] 303c 00d8                 move.w     #$00D8,d0
[0003b8f6] 204b                      movea.l    a3,a0
[0003b8f8] 4e95                      jsr        (a5)
[0003b8fa] 202f 0238                 move.l     568(a7),d0
[0003b8fe] 6f00 0958                 ble        $0003C258
[0003b902] 93c9                      suba.l     a1,a1
[0003b904] 204b                      movea.l    a3,a0
[0003b906] 700b                      moveq.l    #11,d0
[0003b908] 4e95                      jsr        (a5)
[0003b90a] 43ef 0230                 lea.l      560(a7),a1
[0003b90e] 303c 00e8                 move.w     #$00E8,d0
[0003b912] 204b                      movea.l    a3,a0
[0003b914] 4e95                      jsr        (a5)
[0003b916] 6000 014a                 bra        $0003BA62
[0003b91a] 43ef 021c                 lea.l      540(a7),a1
[0003b91e] 303c 00e3                 move.w     #$00E3,d0
[0003b922] 204b                      movea.l    a3,a0
[0003b924] 4e95                      jsr        (a5)
[0003b926] 202f 021c                 move.l     540(a7),d0
[0003b92a] 6b24                      bmi.s      $0003B950
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
[0003b94c] 6000 090a                 bra        $0003C258
[0003b950] 302f 024c                 move.w     588(a7),d0
[0003b954] c07c 0400                 and.w      #$0400,d0
[0003b958] 6700 00e8                 beq        $0003BA42
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
[0003b99e] 662e                      bne.s      $0003B9CE
[0003b9a0] 72ff                      moveq.l    #-1,d1
[0003b9a2] d2af 023c                 add.l      572(a7),d1
[0003b9a6] 242f 0238                 move.l     568(a7),d2
[0003b9aa] b481                      cmp.l      d1,d2
[0003b9ac] 6700 08aa                 beq        $0003C258
[0003b9b0] 43ef 022c                 lea.l      556(a7),a1
[0003b9b4] 204b                      movea.l    a3,a0
[0003b9b6] 303c 00d7                 move.w     #$00D7,d0
[0003b9ba] 4e95                      jsr        (a5)
[0003b9bc] 52af 0238                 addq.l     #1,568(a7)
[0003b9c0] 43ef 0238                 lea.l      568(a7),a1
[0003b9c4] 7011                      moveq.l    #17,d0
[0003b9c6] 204b                      movea.l    a3,a0
[0003b9c8] 4e95                      jsr        (a5)
[0003b9ca] 6000 088c                 bra        $0003C258
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
[0003b9ec] 6048                      bra.s      $0003BA36
[0003b9ee] 2212                      move.l     (a2),d1
[0003b9f0] 206f 0008                 movea.l    8(a7),a0
[0003b9f4] 1030 1800                 move.b     0(a0,d1.l),d0
[0003b9f8] 4880                      ext.w      d0
[0003b9fa] 206f 0010                 movea.l    16(a7),a0
[0003b9fe] 4eb9 0007 68ce            jsr        $000768CE
[0003ba04] 2008                      move.l     a0,d0
[0003ba06] 672c                      beq.s      $0003BA34
[0003ba08] 601e                      bra.s      $0003BA28
[0003ba0a] 2212                      move.l     (a2),d1
[0003ba0c] 206f 0008                 movea.l    8(a7),a0
[0003ba10] 1030 1800                 move.b     0(a0,d1.l),d0
[0003ba14] 4880                      ext.w      d0
[0003ba16] 206f 0010                 movea.l    16(a7),a0
[0003ba1a] 4eb9 0007 68ce            jsr        $000768CE
[0003ba20] 2008                      move.l     a0,d0
[0003ba22] 6700 fe88                 beq        $0003B8AC
[0003ba26] 5292                      addq.l     #1,(a2)
[0003ba28] 2012                      move.l     (a2),d0
[0003ba2a] b0af 0230                 cmp.l      560(a7),d0
[0003ba2e] 6dda                      blt.s      $0003BA0A
[0003ba30] 6000 fe7a                 bra        $0003B8AC
[0003ba34] 5292                      addq.l     #1,(a2)
[0003ba36] 2012                      move.l     (a2),d0
[0003ba38] b0af 0230                 cmp.l      560(a7),d0
[0003ba3c] 6db0                      blt.s      $0003B9EE
[0003ba3e] 6000 fe6c                 bra        $0003B8AC
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
[0003ba60] 6710                      beq.s      $0003BA72
[0003ba62] 43ef 0230                 lea.l      560(a7),a1
[0003ba66] 303c 00d7                 move.w     #$00D7,d0
[0003ba6a] 204b                      movea.l    a3,a0
[0003ba6c] 4e95                      jsr        (a5)
[0003ba6e] 6000 07e8                 bra        $0003C258
[0003ba72] 43ef 0234                 lea.l      564(a7),a1
[0003ba76] 303c 00e7                 move.w     #$00E7,d0
[0003ba7a] 204b                      movea.l    a3,a0
[0003ba7c] 4e95                      jsr        (a5)
[0003ba7e] 202f 0234                 move.l     564(a7),d0
[0003ba82] b0af 0230                 cmp.l      560(a7),d0
[0003ba86] 6c14                      bge.s      $0003BA9C
[0003ba88] 52af 0234                 addq.l     #1,564(a7)
[0003ba8c] 43ef 0234                 lea.l      564(a7),a1
[0003ba90] 303c 00d7                 move.w     #$00D7,d0
[0003ba94] 204b                      movea.l    a3,a0
[0003ba96] 4e95                      jsr        (a5)
[0003ba98] 6000 07be                 bra        $0003C258
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
[0003babe] 6c00 0798                 bge        $0003C258
[0003bac2] 93c9                      suba.l     a1,a1
[0003bac4] 204b                      movea.l    a3,a0
[0003bac6] 700a                      moveq.l    #10,d0
[0003bac8] 4e95                      jsr        (a5)
[0003baca] 6000 fdf8                 bra        $0003B8C4
[0003bace] 0c2f 000c 024d            cmpi.b     #$0C,589(a7)
[0003bad4] 660a                      bne.s      $0003BAE0
[0003bad6] 302f 024c                 move.w     588(a7),d0
[0003bada] c07c 0300                 and.w      #$0300,d0
[0003bade] 6712                      beq.s      $0003BAF2
[0003bae0] 0c2f 0007 024d            cmpi.b     #$07,589(a7)
[0003bae6] 660e                      bne.s      $0003BAF6
[0003bae8] 302f 024c                 move.w     588(a7),d0
[0003baec] c07c 0300                 and.w      #$0300,d0
[0003baf0] 6704                      beq.s      $0003BAF6
[0003baf2] 7c01                      moveq.l    #1,d6
[0003baf4] 6002                      bra.s      $0003BAF8
[0003baf6] 4246                      clr.w      d6
[0003baf8] 93c9                      suba.l     a1,a1
[0003bafa] 303c 00e2                 move.w     #$00E2,d0
[0003bafe] 204b                      movea.l    a3,a0
[0003bb00] 4e95                      jsr        (a5)
[0003bb02] 4a46                      tst.w      d6
[0003bb04] 670c                      beq.s      $0003BB12
[0003bb06] 93c9                      suba.l     a1,a1
[0003bb08] 700e                      moveq.l    #14,d0
[0003bb0a] 204b                      movea.l    a3,a0
[0003bb0c] 4e95                      jsr        (a5)
[0003bb0e] 6000 fdb4                 bra        $0003B8C4
[0003bb12] 93c9                      suba.l     a1,a1
[0003bb14] 700f                      moveq.l    #15,d0
[0003bb16] 204b                      movea.l    a3,a0
[0003bb18] 4e95                      jsr        (a5)
[0003bb1a] 6000 fdee                 bra        $0003B90A
[0003bb1e] 43ef 021c                 lea.l      540(a7),a1
[0003bb22] 303c 00e3                 move.w     #$00E3,d0
[0003bb26] 204b                      movea.l    a3,a0
[0003bb28] 4e95                      jsr        (a5)
[0003bb2a] 202f 021c                 move.l     540(a7),d0
[0003bb2e] 6b24                      bmi.s      $0003BB54
[0003bb30] 23ef 021c 000c 8274       move.l     540(a7),$000C8274
[0003bb38] 23ef 0220 000c 8278       move.l     544(a7),$000C8278
[0003bb40] 23ef 0224 000c 827c       move.l     548(a7),$000C827C
[0003bb48] 23ef 0228 000c 8280       move.l     552(a7),$000C8280
[0003bb50] 6000 029a                 bra        $0003BDEC
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
[0003bb80] 6c00 00e2                 bge        $0003BC64
[0003bb84] 222f 0238                 move.l     568(a7),d1
[0003bb88] 23c1 000c 827c            move.l     d1,$000C827C
[0003bb8e] 23c1 000c 8274            move.l     d1,$000C8274
[0003bb94] 23c0 000c 8278            move.l     d0,$000C8278
[0003bb9a] 322f 024c                 move.w     588(a7),d1
[0003bb9e] c27c 0300                 and.w      #$0300,d1
[0003bba2] 670c                      beq.s      $0003BBB0
[0003bba4] 23ef 0230 000c 8280       move.l     560(a7),$000C8280
[0003bbac] 6000 023e                 bra        $0003BDEC
[0003bbb0] 302f 024c                 move.w     588(a7),d0
[0003bbb4] c07c 0400                 and.w      #$0400,d0
[0003bbb8] 6700 009a                 beq        $0003BC54
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
[0003bbea] 4eb9 0007 68ce            jsr        $000768CE
[0003bbf0] 2f48 000c                 move.l     a0,12(a7)
[0003bbf4] 6002                      bra.s      $0003BBF8
[0003bbf6] 5292                      addq.l     #1,(a2)
[0003bbf8] 2012                      move.l     (a2),d0
[0003bbfa] b0af 0004                 cmp.l      4(a7),d0
[0003bbfe] 6c4a                      bge.s      $0003BC4A
[0003bc00] 222f 000c                 move.l     12(a7),d1
[0003bc04] 6720                      beq.s      $0003BC26
[0003bc06] 206f 0008                 movea.l    8(a7),a0
[0003bc0a] 1030 0800                 move.b     0(a0,d0.l),d0
[0003bc0e] 4880                      ext.w      d0
[0003bc10] 206f 0010                 movea.l    16(a7),a0
[0003bc14] 4eb9 0007 68ce            jsr        $000768CE
[0003bc1a] 2008                      move.l     a0,d0
[0003bc1c] 6704                      beq.s      $0003BC22
[0003bc1e] 7001                      moveq.l    #1,d0
[0003bc20] 6002                      bra.s      $0003BC24
[0003bc22] 4240                      clr.w      d0
[0003bc24] 6020                      bra.s      $0003BC46
[0003bc26] 2212                      move.l     (a2),d1
[0003bc28] 206f 0008                 movea.l    8(a7),a0
[0003bc2c] 1030 1800                 move.b     0(a0,d1.l),d0
[0003bc30] 4880                      ext.w      d0
[0003bc32] 206f 0010                 movea.l    16(a7),a0
[0003bc36] 4eb9 0007 68ce            jsr        $000768CE
[0003bc3c] 2008                      move.l     a0,d0
[0003bc3e] 6604                      bne.s      $0003BC44
[0003bc40] 7001                      moveq.l    #1,d0
[0003bc42] 6002                      bra.s      $0003BC46
[0003bc44] 4240                      clr.w      d0
[0003bc46] 4a40                      tst.w      d0
[0003bc48] 66ac                      bne.s      $0003BBF6
[0003bc4a] 23d2 000c 8280            move.l     (a2),$000C8280
[0003bc50] 6000 019a                 bra        $0003BDEC
[0003bc54] 7001                      moveq.l    #1,d0
[0003bc56] d0af 0234                 add.l      564(a7),d0
[0003bc5a] 23c0 000c 8280            move.l     d0,$000C8280
[0003bc60] 6000 018a                 bra        $0003BDEC
[0003bc64] 43ef 023c                 lea.l      572(a7),a1
[0003bc68] 303c 00e9                 move.w     #$00E9,d0
[0003bc6c] 204b                      movea.l    a3,a0
[0003bc6e] 4e95                      jsr        (a5)
[0003bc70] 7001                      moveq.l    #1,d0
[0003bc72] d0af 0238                 add.l      568(a7),d0
[0003bc76] b0af 023c                 cmp.l      572(a7),d0
[0003bc7a] 6c00 05dc                 bge        $0003C258
[0003bc7e] 23ef 0238 000c 8274       move.l     568(a7),$000C8274
[0003bc86] 23c0 000c 827c            move.l     d0,$000C827C
[0003bc8c] 23ef 0230 000c 8278       move.l     560(a7),$000C8278
[0003bc94] 42b9 000c 8280            clr.l      $000C8280
[0003bc9a] 6000 0150                 bra        $0003BDEC
[0003bc9e] 43ef 021c                 lea.l      540(a7),a1
[0003bca2] 303c 00e3                 move.w     #$00E3,d0
[0003bca6] 204b                      movea.l    a3,a0
[0003bca8] 4e95                      jsr        (a5)
[0003bcaa] 202f 021c                 move.l     540(a7),d0
[0003bcae] 6a00 fe80                 bpl        $0003BB30
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
[0003bcda] 6f00 00dc                 ble        $0003BDB8
[0003bcde] 222f 0238                 move.l     568(a7),d1
[0003bce2] 23c1 000c 827c            move.l     d1,$000C827C
[0003bce8] 23c1 000c 8274            move.l     d1,$000C8274
[0003bcee] 23c0 000c 8280            move.l     d0,$000C8280
[0003bcf4] 322f 024c                 move.w     588(a7),d1
[0003bcf8] c27c 0300                 and.w      #$0300,d1
[0003bcfc] 670a                      beq.s      $0003BD08
[0003bcfe] 42b9 000c 8278            clr.l      $000C8278
[0003bd04] 6000 00e6                 bra        $0003BDEC
[0003bd08] 302f 024c                 move.w     588(a7),d0
[0003bd0c] c07c 0400                 and.w      #$0400,d0
[0003bd10] 6700 0098                 beq        $0003BDAA
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
[0003bd44] 4eb9 0007 68ce            jsr        $000768CE
[0003bd4a] 2f48 000c                 move.l     a0,12(a7)
[0003bd4e] 6002                      bra.s      $0003BD52
[0003bd50] 5392                      subq.l     #1,(a2)
[0003bd52] 2012                      move.l     (a2),d0
[0003bd54] 6b4a                      bmi.s      $0003BDA0
[0003bd56] 222f 000c                 move.l     12(a7),d1
[0003bd5a] 6720                      beq.s      $0003BD7C
[0003bd5c] 206f 0008                 movea.l    8(a7),a0
[0003bd60] 1030 0800                 move.b     0(a0,d0.l),d0
[0003bd64] 4880                      ext.w      d0
[0003bd66] 206f 0010                 movea.l    16(a7),a0
[0003bd6a] 4eb9 0007 68ce            jsr        $000768CE
[0003bd70] 2008                      move.l     a0,d0
[0003bd72] 6704                      beq.s      $0003BD78
[0003bd74] 7001                      moveq.l    #1,d0
[0003bd76] 6002                      bra.s      $0003BD7A
[0003bd78] 4240                      clr.w      d0
[0003bd7a] 6020                      bra.s      $0003BD9C
[0003bd7c] 2212                      move.l     (a2),d1
[0003bd7e] 206f 0008                 movea.l    8(a7),a0
[0003bd82] 1030 1800                 move.b     0(a0,d1.l),d0
[0003bd86] 4880                      ext.w      d0
[0003bd88] 206f 0010                 movea.l    16(a7),a0
[0003bd8c] 4eb9 0007 68ce            jsr        $000768CE
[0003bd92] 2008                      move.l     a0,d0
[0003bd94] 6604                      bne.s      $0003BD9A
[0003bd96] 7001                      moveq.l    #1,d0
[0003bd98] 6002                      bra.s      $0003BD9C
[0003bd9a] 4240                      clr.w      d0
[0003bd9c] 4a40                      tst.w      d0
[0003bd9e] 66b0                      bne.s      $0003BD50
[0003bda0] 5292                      addq.l     #1,(a2)
[0003bda2] 23d2 000c 8278            move.l     (a2),$000C8278
[0003bda8] 6042                      bra.s      $0003BDEC
[0003bdaa] 70ff                      moveq.l    #-1,d0
[0003bdac] d0af 0234                 add.l      564(a7),d0
[0003bdb0] 23c0 000c 8278            move.l     d0,$000C8278
[0003bdb6] 6034                      bra.s      $0003BDEC
[0003bdb8] 202f 0238                 move.l     568(a7),d0
[0003bdbc] 6f00 049a                 ble        $0003C258
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
[0003bdda] 23c0 000c 8274            move.l     d0,$000C8274
[0003bde0] 23ef 0238 000c 827c       move.l     568(a7),$000C827C
[0003bde8] 6000 fea2                 bra        $0003BC8C
[0003bdec] 43f9 000c 8274            lea.l      $000C8274,a1
[0003bdf2] 303c 00ea                 move.w     #$00EA,d0
[0003bdf6] 204b                      movea.l    a3,a0
[0003bdf8] 4e95                      jsr        (a5)
[0003bdfa] 6000 045c                 bra        $0003C258
[0003bdfe] 43ef 021c                 lea.l      540(a7),a1
[0003be02] 303c 00e3                 move.w     #$00E3,d0
[0003be06] 204b                      movea.l    a3,a0
[0003be08] 4e95                      jsr        (a5)
[0003be0a] 202f 021c                 move.l     540(a7),d0
[0003be0e] 6b30                      bmi.s      $0003BE40
[0003be10] 23c0 000c 825c            move.l     d0,$000C825C
[0003be16] 23ef 0220 000c 8260       move.l     544(a7),$000C8260
[0003be1e] 23ef 0224 000c 8264       move.l     548(a7),$000C8264
[0003be26] 23ef 0228 000c 8268       move.l     552(a7),$000C8268
[0003be2e] 43f9 000c 825c            lea.l      $000C825C,a1
[0003be34] 204b                      movea.l    a3,a0
[0003be36] 303c 00ea                 move.w     #$00EA,d0
[0003be3a] 4e95                      jsr        (a5)
[0003be3c] 6000 041a                 bra        $0003C258
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
[0003be62] 23c0 000c 825c            move.l     d0,$000C825C
[0003be68] 222f 0234                 move.l     564(a7),d1
[0003be6c] 23c1 000c 8268            move.l     d1,$000C8268
[0003be72] 23c1 000c 8260            move.l     d1,$000C8260
[0003be78] 43f9 000c 825c            lea.l      $000C825C,a1
[0003be7e] 303c 00ea                 move.w     #$00EA,d0
[0003be82] 204b                      movea.l    a3,a0
[0003be84] 4e95                      jsr        (a5)
[0003be86] 2eaf 0238                 move.l     568(a7),(a7)
[0003be8a] 43d7                      lea.l      (a7),a1
[0003be8c] 303c 00ca                 move.w     #$00CA,d0
[0003be90] 204b                      movea.l    a3,a0
[0003be92] 4e95                      jsr        (a5)
[0003be94] 4292                      clr.l      (a2)
[0003be96] 6010                      bra.s      $0003BEA8
[0003be98] 2012                      move.l     (a2),d0
[0003be9a] 206f 0008                 movea.l    8(a7),a0
[0003be9e] 0c30 0009 0800            cmpi.b     #$09,0(a0,d0.l)
[0003bea4] 660a                      bne.s      $0003BEB0
[0003bea6] 5292                      addq.l     #1,(a2)
[0003bea8] 2012                      move.l     (a2),d0
[0003beaa] b0af 0004                 cmp.l      4(a7),d0
[0003beae] 6de8                      blt.s      $0003BE98
[0003beb0] 2012                      move.l     (a2),d0
[0003beb2] 6f00 03a4                 ble        $0003C258
[0003beb6] b0af 0004                 cmp.l      4(a7),d0
[0003beba] 6e00 039c                 bgt        $0003C258
[0003bebe] 2079 000c 8258            movea.l    $000C8258,a0
[0003bec4] 2250                      movea.l    (a0),a1
[0003bec6] 12bc 0009                 move.b     #$09,(a1)
[0003beca] 7001                      moveq.l    #1,d0
[0003becc] d0af 0238                 add.l      568(a7),d0
[0003bed0] 23c0 000c 824c            move.l     d0,$000C824C
[0003bed6] 23c0 000c 8244            move.l     d0,$000C8244
[0003bedc] 7a00                      moveq.l    #0,d5
[0003bede] 601e                      bra.s      $0003BEFE
[0003bee0] 23c5 000c 8250            move.l     d5,$000C8250
[0003bee6] 23c5 000c 8248            move.l     d5,$000C8248
[0003beec] 43f9 000c 8244            lea.l      $000C8244,a1
[0003bef2] 303c 00ea                 move.w     #$00EA,d0
[0003bef6] 204b                      movea.l    a3,a0
[0003bef8] 4e95                      jsr        (a5)
[0003befa] 5285                      addq.l     #1,d5
[0003befc] 5392                      subq.l     #1,(a2)
[0003befe] 2012                      move.l     (a2),d0
[0003bf00] 6ede                      bgt.s      $0003BEE0
[0003bf02] 6000 0354                 bra        $0003C258
[0003bf06] 43ef 021c                 lea.l      540(a7),a1
[0003bf0a] 303c 00e3                 move.w     #$00E3,d0
[0003bf0e] 204b                      movea.l    a3,a0
[0003bf10] 4e95                      jsr        (a5)
[0003bf12] 2079 000c 8258            movea.l    $000C8258,a0
[0003bf18] 2250                      movea.l    (a0),a1
[0003bf1a] 12af 024d                 move.b     589(a7),(a1)
[0003bf1e] 202f 021c                 move.l     540(a7),d0
[0003bf22] 6b20                      bmi.s      $0003BF44
[0003bf24] 23c0 000c 8244            move.l     d0,$000C8244
[0003bf2a] 23ef 0220 000c 8248       move.l     544(a7),$000C8248
[0003bf32] 23ef 0224 000c 824c       move.l     548(a7),$000C824C
[0003bf3a] 23ef 0228 000c 8250       move.l     552(a7),$000C8250
[0003bf42] 6038                      bra.s      $0003BF7C
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
[0003bf66] 23c0 000c 8244            move.l     d0,$000C8244
[0003bf6c] 222f 0234                 move.l     564(a7),d1
[0003bf70] 23c1 000c 8250            move.l     d1,$000C8250
[0003bf76] 23c1 000c 8248            move.l     d1,$000C8248
[0003bf7c] 43f9 000c 8244            lea.l      $000C8244,a1
[0003bf82] 303c 00ea                 move.w     #$00EA,d0
[0003bf86] 204b                      movea.l    a3,a0
[0003bf88] 4e95                      jsr        (a5)
[0003bf8a] 6000 02cc                 bra        $0003C258
[0003bf8e] 302f 024c                 move.w     588(a7),d0
[0003bf92] c07c 0400                 and.w      #$0400,d0
[0003bf96] 670c                      beq.s      $0003BFA4
[0003bf98] 204b                      movea.l    a3,a0
[0003bf9a] 4eb9 0003 c51c            jsr        $0003C51C
[0003bfa0] 6000 02b6                 bra        $0003C258
[0003bfa4] 302f 024c                 move.w     588(a7),d0
[0003bfa8] c07c 0400                 and.w      #$0400,d0
[0003bfac] 670c                      beq.s      $0003BFBA
[0003bfae] 204b                      movea.l    a3,a0
[0003bfb0] 4eb9 0003 c4bc            jsr        $0003C4BC
[0003bfb6] 6000 02a0                 bra        $0003C258
[0003bfba] 302f 024c                 move.w     588(a7),d0
[0003bfbe] c07c 0400                 and.w      #$0400,d0
[0003bfc2] 670c                      beq.s      $0003BFD0
[0003bfc4] 204b                      movea.l    a3,a0
[0003bfc6] 4eb9 0003 c358            jsr        $0003C358
[0003bfcc] 6000 028a                 bra        $0003C258
[0003bfd0] 302f 024c                 move.w     588(a7),d0
[0003bfd4] c07c 0400                 and.w      #$0400,d0
[0003bfd8] 670c                      beq.s      $0003BFE6
[0003bfda] 204b                      movea.l    a3,a0
[0003bfdc] 4eb9 0003 c428            jsr        $0003C428
[0003bfe2] 6000 0274                 bra        $0003C258
[0003bfe6] 1c2f 024d                 move.b     589(a7),d6
[0003bfea] 4886                      ext.w      d6
[0003bfec] dc7c fff0                 add.w      #$FFF0,d6
[0003bff0] 302f 024c                 move.w     588(a7),d0
[0003bff4] c07c 0400                 and.w      #$0400,d0
[0003bff8] 6704                      beq.s      $0003BFFE
[0003bffa] dc7c 0014                 add.w      #$0014,d6
[0003bffe] 302f 024c                 move.w     588(a7),d0
[0003c002] c07c 0300                 and.w      #$0300,d0
[0003c006] 6704                      beq.s      $0003C00C
[0003c008] dc7c 000a                 add.w      #$000A,d6
[0003c00c] 3006                      move.w     d6,d0
[0003c00e] 48c0                      ext.l      d0
[0003c010] e588                      lsl.l      #2,d0
[0003c012] 206f 0240                 movea.l    576(a7),a0
[0003c016] d1c0                      adda.l     d0,a0
[0003c018] 2228 00d2                 move.l     210(a0),d1
[0003c01c] 673c                      beq.s      $0003C05A
[0003c01e] 93c9                      suba.l     a1,a1
[0003c020] 204b                      movea.l    a3,a0
[0003c022] 303c 00e2                 move.w     #$00E2,d0
[0003c026] 4eb9 0003 8e52            jsr        $00038E52
[0003c02c] 3006                      move.w     d6,d0
[0003c02e] 48c0                      ext.l      d0
[0003c030] e588                      lsl.l      #2,d0
[0003c032] 206f 0240                 movea.l    576(a7),a0
[0003c036] d1c0                      adda.l     d0,a0
[0003c038] 2268 00d2                 movea.l    210(a0),a1
[0003c03c] 5449                      addq.w     #2,a1
[0003c03e] 206f 024e                 movea.l    590(a7),a0
[0003c042] 4eb9 0003 cf14            jsr        $0003CF14
[0003c048] 93c9                      suba.l     a1,a1
[0003c04a] 303c 00db                 move.w     #$00DB,d0
[0003c04e] 204b                      movea.l    a3,a0
[0003c050] 4eb9 0003 8e52            jsr        $00038E52
[0003c056] 6000 0200                 bra        $0003C258
[0003c05a] 76fe                      moveq.l    #-2,d3
[0003c05c] 6000 01fa                 bra        $0003C258
[0003c060] 0c2f 0020 024d            cmpi.b     #$20,589(a7)
[0003c066] 6500 01f0                 bcs        $0003C258
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
[0003c08e] 6b20                      bmi.s      $0003C0B0
[0003c090] 23c1 000c 8244            move.l     d1,$000C8244
[0003c096] 23ef 0220 000c 8248       move.l     544(a7),$000C8248
[0003c09e] 23ef 0224 000c 824c       move.l     548(a7),$000C824C
[0003c0a6] 23ef 0228 000c 8250       move.l     552(a7),$000C8250
[0003c0ae] 6038                      bra.s      $0003C0E8
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
[0003c0d2] 23c0 000c 8244            move.l     d0,$000C8244
[0003c0d8] 222f 0234                 move.l     564(a7),d1
[0003c0dc] 23c1 000c 8250            move.l     d1,$000C8250
[0003c0e2] 23c1 000c 8248            move.l     d1,$000C8248
[0003c0e8] 43f9 000c 8244            lea.l      $000C8244,a1
[0003c0ee] 303c 00ea                 move.w     #$00EA,d0
[0003c0f2] 204b                      movea.l    a3,a0
[0003c0f4] 4e95                      jsr        (a5)
[0003c0f6] bc7c 005d                 cmp.w      #$005D,d6
[0003c0fa] 670e                      beq.s      $0003C10A
[0003c0fc] bc7c 007d                 cmp.w      #$007D,d6
[0003c100] 6708                      beq.s      $0003C10A
[0003c102] bc7c 0029                 cmp.w      #$0029,d6
[0003c106] 6600 0150                 bne        $0003C258
[0003c10a] 7e01                      moveq.l    #1,d7
[0003c10c] 4244                      clr.w      d4
[0003c10e] 7aff                      moveq.l    #-1,d5
[0003c110] daaf 0234                 add.l      564(a7),d5
[0003c114] 2eaf 0238                 move.l     568(a7),(a7)
[0003c118] 6000 00bc                 bra        $0003C1D6
[0003c11c] 43d7                      lea.l      (a7),a1
[0003c11e] 303c 00ca                 move.w     #$00CA,d0
[0003c122] 204b                      movea.l    a3,a0
[0003c124] 4e95                      jsr        (a5)
[0003c126] 202f 0004                 move.l     4(a7),d0
[0003c12a] 206f 0008                 movea.l    8(a7),a0
[0003c12e] 4230 0800                 clr.b      0(a0,d0.l)
[0003c132] baaf 0004                 cmp.l      4(a7),d5
[0003c136] 6c04                      bge.s      $0003C13C
[0003c138] 2005                      move.l     d5,d0
[0003c13a] 6004                      bra.s      $0003C140
[0003c13c] 202f 0004                 move.l     4(a7),d0
[0003c140] 2480                      move.l     d0,(a2)
[0003c142] 6000 007c                 bra.w      $0003C1C0
[0003c146] 2012                      move.l     (a2),d0
[0003c148] 206f 0008                 movea.l    8(a7),a0
[0003c14c] 1230 0800                 move.b     0(a0,d0.l),d1
[0003c150] 4881                      ext.w      d1
[0003c152] b27c 005d                 cmp.w      #$005D,d1
[0003c156] 672e                      beq.s      $0003C186
[0003c158] 6e12                      bgt.s      $0003C16C
[0003c15a] 927c 0028                 sub.w      #$0028,d1
[0003c15e] 6744                      beq.s      $0003C1A4
[0003c160] 5341                      subq.w     #1,d1
[0003c162] 6748                      beq.s      $0003C1AC
[0003c164] 927c 0032                 sub.w      #$0032,d1
[0003c168] 670e                      beq.s      $0003C178
[0003c16a] 604a                      bra.s      $0003C1B6
[0003c16c] 927c 007b                 sub.w      #$007B,d1
[0003c170] 6722                      beq.s      $0003C194
[0003c172] 5541                      subq.w     #2,d1
[0003c174] 6726                      beq.s      $0003C19C
[0003c176] 603e                      bra.s      $0003C1B6
[0003c178] bc7c 005d                 cmp.w      #$005D,d6
[0003c17c] 6638                      bne.s      $0003C1B6
[0003c17e] 4a44                      tst.w      d4
[0003c180] 6634                      bne.s      $0003C1B6
[0003c182] 5347                      subq.w     #1,d7
[0003c184] 6030                      bra.s      $0003C1B6
[0003c186] bc7c 005d                 cmp.w      #$005D,d6
[0003c18a] 662a                      bne.s      $0003C1B6
[0003c18c] 4a44                      tst.w      d4
[0003c18e] 6626                      bne.s      $0003C1B6
[0003c190] 5247                      addq.w     #1,d7
[0003c192] 6022                      bra.s      $0003C1B6
[0003c194] bc7c 007d                 cmp.w      #$007D,d6
[0003c198] 661c                      bne.s      $0003C1B6
[0003c19a] 60e2                      bra.s      $0003C17E
[0003c19c] bc7c 007d                 cmp.w      #$007D,d6
[0003c1a0] 6614                      bne.s      $0003C1B6
[0003c1a2] 60e8                      bra.s      $0003C18C
[0003c1a4] bc7c 0029                 cmp.w      #$0029,d6
[0003c1a8] 660c                      bne.s      $0003C1B6
[0003c1aa] 60d2                      bra.s      $0003C17E
[0003c1ac] bc7c 0029                 cmp.w      #$0029,d6
[0003c1b0] 6604                      bne.s      $0003C1B6
[0003c1b2] 4a44                      tst.w      d4
[0003c1b4] 67da                      beq.s      $0003C190
[0003c1b6] 4a47                      tst.w      d7
[0003c1b8] 6604                      bne.s      $0003C1BE
[0003c1ba] 4a44                      tst.w      d4
[0003c1bc] 6708                      beq.s      $0003C1C6
[0003c1be] 5392                      subq.l     #1,(a2)
[0003c1c0] 2012                      move.l     (a2),d0
[0003c1c2] 6a00 ff82                 bpl.w      $0003C146
[0003c1c6] 2a3c 0000 03e8            move.l     #$000003E8,d5
[0003c1cc] 4a47                      tst.w      d7
[0003c1ce] 6604                      bne.s      $0003C1D4
[0003c1d0] 4a44                      tst.w      d4
[0003c1d2] 6708                      beq.s      $0003C1DC
[0003c1d4] 5397                      subq.l     #1,(a7)
[0003c1d6] 2017                      move.l     (a7),d0
[0003c1d8] 6a00 ff42                 bpl        $0003C11C
[0003c1dc] 4a47                      tst.w      d7
[0003c1de] 6668                      bne.s      $0003C248
[0003c1e0] 4a44                      tst.w      d4
[0003c1e2] 6664                      bne.s      $0003C248
[0003c1e4] 202f 0238                 move.l     568(a7),d0
[0003c1e8] b097                      cmp.l      (a7),d0
[0003c1ea] 6612                      bne.s      $0003C1FE
[0003c1ec] 222f 0234                 move.l     564(a7),d1
[0003c1f0] 206f 0008                 movea.l    8(a7),a0
[0003c1f4] 1f70 1801 0214            move.b     1(a0,d1.l),532(a7)
[0003c1fa] 4230 1801                 clr.b      1(a0,d1.l)
[0003c1fe] 701e                      moveq.l    #30,d0
[0003c200] 2f00                      move.l     d0,-(a7)
[0003c202] 2212                      move.l     (a2),d1
[0003c204] 6a04                      bpl.s      $0003C20A
[0003c206] 7400                      moveq.l    #0,d2
[0003c208] 6002                      bra.s      $0003C20C
[0003c20a] 2412                      move.l     (a2),d2
[0003c20c] 226f 000c                 movea.l    12(a7),a1
[0003c210] d3c2                      adda.l     d2,a1
[0003c212] 41ef 0018                 lea.l      24(a7),a0
[0003c216] 201f                      move.l     (a7)+,d0
[0003c218] 4eb9 0007 6a1a            jsr        $00076A1A
[0003c21e] 422f 0032                 clr.b      50(a7)
[0003c222] 202f 0238                 move.l     568(a7),d0
[0003c226] b097                      cmp.l      (a7),d0
[0003c228] 660e                      bne.s      $0003C238
[0003c22a] 222f 0234                 move.l     564(a7),d1
[0003c22e] 206f 0008                 movea.l    8(a7),a0
[0003c232] 11af 0214 1801            move.b     532(a7),1(a0,d1.l)
[0003c238] 43ef 0014                 lea.l      20(a7),a1
[0003c23c] 206f 024e                 movea.l    590(a7),a0
[0003c240] 4eb9 0003 ed16            jsr        $0003ED16
[0003c246] 6010                      bra.s      $0003C258
[0003c248] 43f9 000c 85c7            lea.l      $000C85C7,a1
[0003c24e] 206f 024e                 movea.l    590(a7),a0
[0003c252] 4eb9 0003 ed16            jsr        $0003ED16
[0003c258] b67c ffff                 cmp.w      #$FFFF,d3
[0003c25c] 6d18                      blt.s      $0003C276
[0003c25e] 536f 0216                 subq.w     #1,534(a7)
[0003c262] 6712                      beq.s      $0003C276
[0003c264] 41ef 024c                 lea.l      588(a7),a0
[0003c268] 4eb9 0003 c2b8            jsr        $0003C2B8
[0003c26e] 102f 024d                 move.b     589(a7),d0
[0003c272] 6600 f1f6                 bne        $0003B46A
[0003c276] 43ef 021c                 lea.l      540(a7),a1
[0003c27a] 303c 00e3                 move.w     #$00E3,d0
[0003c27e] 204b                      movea.l    a3,a0
[0003c280] 4e95                      jsr        (a5)
[0003c282] 202f 021c                 move.l     540(a7),d0
[0003c286] 6a0a                      bpl.s      $0003C292
[0003c288] 93c9                      suba.l     a1,a1
[0003c28a] 204b                      movea.l    a3,a0
[0003c28c] 303c 00db                 move.w     #$00DB,d0
[0003c290] 4e95                      jsr        (a5)
[0003c292] 93c9                      suba.l     a1,a1
[0003c294] 7005                      moveq.l    #5,d0
[0003c296] 204b                      movea.l    a3,a0
[0003c298] 4e95                      jsr        (a5)
[0003c29a] 93c9                      suba.l     a1,a1
[0003c29c] 303c 00d6                 move.w     #$00D6,d0
[0003c2a0] 204b                      movea.l    a3,a0
[0003c2a2] 4e95                      jsr        (a5)
[0003c2a4] 206f 024e                 movea.l    590(a7),a0
[0003c2a8] 6100 f124                 bsr        $0003B3CE
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
[0003c2c4] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
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
[0003c2fa] 4eb9 0006 af70            jsr        $0006AF70
[0003c300] 4fef 0032                 lea.l      50(a7),a7
[0003c304] c07c 0001                 and.w      #$0001,d0
[0003c308] 670e                      beq.s      $0003C318
[0003c30a] 3217                      move.w     (a7),d1
[0003c30c] 3013                      move.w     (a3),d0
[0003c30e] 4eb9 0004 1e3e            jsr        $00041E3E
[0003c314] 3680                      move.w     d0,(a3)
[0003c316] 6002                      bra.s      $0003C31A
[0003c318] 4253                      clr.w      (a3)
[0003c31a] 584f                      addq.w     #4,a7
[0003c31c] 265f                      movea.l    (a7)+,a3
[0003c31e] 245f                      movea.l    (a7)+,a2
[0003c320] 4e75                      rts
paste_free:
[0003c322] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0003c326] 45f9 000c 8290            lea.l      $000C8290,a2
[0003c32c] 262a fffc                 move.l     -4(a2),d3
[0003c330] 2652                      movea.l    (a2),a3
[0003c332] 6008                      bra.s      $0003C33C
[0003c334] 205b                      movea.l    (a3)+,a0
[0003c336] 4eb9 0004 7d6c            jsr        $00047D6C
[0003c33c] 2003                      move.l     d3,d0
[0003c33e] 5383                      subq.l     #1,d3
[0003c340] 4a80                      tst.l      d0
[0003c342] 66f0                      bne.s      $0003C334
[0003c344] 2052                      movea.l    (a2),a0
[0003c346] 4eb9 0004 7d6c            jsr        $00047D6C
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
[0003c37a] 6b00 00a0                 bmi        $0003C41C
[0003c37e] 6100 ffa2                 bsr.w      $0003C322
[0003c382] 262f 0008                 move.l     8(a7),d3
[0003c386] 9697                      sub.l      (a7),d3
[0003c388] 5283                      addq.l     #1,d3
[0003c38a] 2003                      move.l     d3,d0
[0003c38c] e588                      lsl.l      #2,d0
[0003c38e] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003c394] 2848                      movea.l    a0,a4
[0003c396] 200c                      move.l     a4,d0
[0003c398] 6700 0082                 beq        $0003C41C
[0003c39c] 23c3 000c 828c            move.l     d3,$000C828C
[0003c3a2] 23c0 000c 8290            move.l     d0,$000C8290
[0003c3a8] 2203                      move.l     d3,d1
[0003c3aa] e589                      lsl.l      #2,d1
[0003c3ac] 4240                      clr.w      d0
[0003c3ae] 4eb9 0007 712e            jsr        $0007712E
[0003c3b4] 2617                      move.l     (a7),d3
[0003c3b6] 45ef 0010                 lea.l      16(a7),a2
[0003c3ba] 6052                      bra.s      $0003C40E
[0003c3bc] 2483                      move.l     d3,(a2)
[0003c3be] 224a                      movea.l    a2,a1
[0003c3c0] 303c 00ca                 move.w     #$00CA,d0
[0003c3c4] 206f 001c                 movea.l    28(a7),a0
[0003c3c8] 4e93                      jsr        (a3)
[0003c3ca] 202a 0004                 move.l     4(a2),d0
[0003c3ce] 6f2c                      ble.s      $0003C3FC
[0003c3d0] 7001                      moveq.l    #1,d0
[0003c3d2] d0aa 0004                 add.l      4(a2),d0
[0003c3d6] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003c3dc] 2888                      move.l     a0,(a4)
[0003c3de] 2008                      move.l     a0,d0
[0003c3e0] 6736                      beq.s      $0003C418
[0003c3e2] 226a 0008                 movea.l    8(a2),a1
[0003c3e6] 202a 0004                 move.l     4(a2),d0
[0003c3ea] 4eb9 0007 6a1a            jsr        $00076A1A
[0003c3f0] 202a 0004                 move.l     4(a2),d0
[0003c3f4] 2054                      movea.l    (a4),a0
[0003c3f6] 4230 0800                 clr.b      0(a0,d0.l)
[0003c3fa] 600e                      bra.s      $0003C40A
[0003c3fc] 41f9 000c 85c4            lea.l      $000C85C4,a0
[0003c402] 4eb9 0004 36d6            jsr        Ast_create
[0003c408] 2888                      move.l     a0,(a4)
[0003c40a] 584c                      addq.w     #4,a4
[0003c40c] 5283                      addq.l     #1,d3
[0003c40e] b6af 0008                 cmp.l      8(a7),d3
[0003c412] 6fa8                      ble.s      $0003C3BC
[0003c414] 4240                      clr.w      d0
[0003c416] 6006                      bra.s      $0003C41E
[0003c418] 6100 ff08                 bsr        $0003C322
[0003c41c] 70ff                      moveq.l    #-1,d0
[0003c41e] 4fef 0020                 lea.l      32(a7),a7
[0003c422] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003c426] 4e75                      rts
paste:
[0003c428] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003c42c] 4fef ffd0                 lea.l      -48(a7),a7
[0003c430] 2448                      movea.l    a0,a2
[0003c432] 206a 000c                 movea.l    12(a2),a0
[0003c436] 2668 0008                 movea.l    8(a0),a3
[0003c43a] 2039 000c 828c            move.l     $000C828C,d0
[0003c440] 6f70                      ble.s      $0003C4B2
[0003c442] 49ef 0018                 lea.l      24(a7),a4
[0003c446] 2979 000c 828c 0010       move.l     $000C828C,16(a4)
[0003c44e] 2979 000c 8290 0014       move.l     $000C8290,20(a4)
[0003c456] 43d7                      lea.l      (a7),a1
[0003c458] 303c 00e3                 move.w     #$00E3,d0
[0003c45c] 204a                      movea.l    a2,a0
[0003c45e] 4e93                      jsr        (a3)
[0003c460] 2017                      move.l     (a7),d0
[0003c462] 6b16                      bmi.s      $0003C47A
[0003c464] 2880                      move.l     d0,(a4)
[0003c466] 296f 0004 0004            move.l     4(a7),4(a4)
[0003c46c] 296f 0008 0008            move.l     8(a7),8(a4)
[0003c472] 296f 000c 000c            move.l     12(a7),12(a4)
[0003c478] 602e                      bra.s      $0003C4A8
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
[0003c4a8] 224c                      movea.l    a4,a1
[0003c4aa] 303c 00ea                 move.w     #$00EA,d0
[0003c4ae] 204a                      movea.l    a2,a0
[0003c4b0] 4e93                      jsr        (a3)
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
[0003c4da] 6b36                      bmi.s      $0003C512
[0003c4dc] 204a                      movea.l    a2,a0
[0003c4de] 6100 fe78                 bsr        $0003C358
[0003c4e2] 4a40                      tst.w      d0
[0003c4e4] 662c                      bne.s      $0003C512
[0003c4e6] 23d7 000c 8274            move.l     (a7),$000C8274
[0003c4ec] 23ef 0004 000c 8278       move.l     4(a7),$000C8278
[0003c4f4] 23ef 0008 000c 827c       move.l     8(a7),$000C827C
[0003c4fc] 23ef 000c 000c 8280       move.l     12(a7),$000C8280
[0003c504] 43f9 000c 8274            lea.l      $000C8274,a1
[0003c50a] 303c 00ea                 move.w     #$00EA,d0
[0003c50e] 204a                      movea.l    a2,a0
[0003c510] 4e93                      jsr        (a3)
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
[0003c550] 6100 fdd0                 bsr        $0003C322
[0003c554] 7001                      moveq.l    #1,d0
[0003c556] d0af 000c                 add.l      12(a7),d0
[0003c55a] b0af 0010                 cmp.l      16(a7),d0
[0003c55e] 6c04                      bge.s      $0003C564
[0003c560] 7602                      moveq.l    #2,d3
[0003c562] 6002                      bra.s      $0003C566
[0003c564] 7601                      moveq.l    #1,d3
[0003c566] 2003                      move.l     d3,d0
[0003c568] e588                      lsl.l      #2,d0
[0003c56a] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003c570] 2848                      movea.l    a0,a4
[0003c572] 200c                      move.l     a4,d0
[0003c574] 6700 00c0                 beq        $0003C636
[0003c578] 23c3 000c 828c            move.l     d3,$000C828C
[0003c57e] 23c0 000c 8290            move.l     d0,$000C8290
[0003c584] 2203                      move.l     d3,d1
[0003c586] e589                      lsl.l      #2,d1
[0003c588] 4240                      clr.w      d0
[0003c58a] 4eb9 0007 712e            jsr        $0007712E
[0003c590] 2eaf 000c                 move.l     12(a7),(a7)
[0003c594] 43d7                      lea.l      (a7),a1
[0003c596] 303c 00ca                 move.w     #$00CA,d0
[0003c59a] 204a                      movea.l    a2,a0
[0003c59c] 4e93                      jsr        (a3)
[0003c59e] 202f 0004                 move.l     4(a7),d0
[0003c5a2] 6f28                      ble.s      $0003C5CC
[0003c5a4] 7001                      moveq.l    #1,d0
[0003c5a6] d0af 0004                 add.l      4(a7),d0
[0003c5aa] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003c5b0] 2888                      move.l     a0,(a4)
[0003c5b2] 202f 0004                 move.l     4(a7),d0
[0003c5b6] 226f 0008                 movea.l    8(a7),a1
[0003c5ba] 4eb9 0007 6a1a            jsr        $00076A1A
[0003c5c0] 202f 0004                 move.l     4(a7),d0
[0003c5c4] 2054                      movea.l    (a4),a0
[0003c5c6] 4230 0800                 clr.b      0(a0,d0.l)
[0003c5ca] 600e                      bra.s      $0003C5DA
[0003c5cc] 41f9 000c 85c4            lea.l      $000C85C4,a0
[0003c5d2] 4eb9 0004 36d6            jsr        Ast_create
[0003c5d8] 2888                      move.l     a0,(a4)
[0003c5da] 23ef 000c 000c 8274       move.l     12(a7),$000C8274
[0003c5e2] 42b9 000c 8278            clr.l      $000C8278
[0003c5e8] 7001                      moveq.l    #1,d0
[0003c5ea] d0af 000c                 add.l      12(a7),d0
[0003c5ee] b0af 0010                 cmp.l      16(a7),d0
[0003c5f2] 6c24                      bge.s      $0003C618
[0003c5f4] 584c                      addq.w     #4,a4
[0003c5f6] 41f9 000c 85c4            lea.l      $000C85C4,a0
[0003c5fc] 4eb9 0004 36d6            jsr        Ast_create
[0003c602] 2888                      move.l     a0,(a4)
[0003c604] 7001                      moveq.l    #1,d0
[0003c606] d0af 000c                 add.l      12(a7),d0
[0003c60a] 23c0 000c 827c            move.l     d0,$000C827C
[0003c610] 42b9 000c 8280            clr.l      $000C8280
[0003c616] 6010                      bra.s      $0003C628
[0003c618] 23ef 000c 000c 827c       move.l     12(a7),$000C827C
[0003c620] 23ef 0004 000c 8280       move.l     4(a7),$000C8280
[0003c628] 43f9 000c 8274            lea.l      $000C8274,a1
[0003c62e] 303c 00ea                 move.w     #$00EA,d0
[0003c632] 204a                      movea.l    a2,a0
[0003c634] 4e93                      jsr        (a3)
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
[0003c654] 6724                      beq.s      $0003C67A
[0003c656] 3694                      move.w     (a4),(a3)
[0003c658] 376c 0002 0002            move.w     2(a4),2(a3)
[0003c65e] 376c 0004 0004            move.w     4(a4),4(a3)
[0003c664] 376c 0006 0006            move.w     6(a4),6(a3)
[0003c66a] 224c                      movea.l    a4,a1
[0003c66c] 4eb9 0003 d1be            jsr        $0003D1BE
[0003c672] 026a fffe 0056            andi.w     #$FFFE,86(a2)
[0003c678] 602a                      bra.s      $0003C6A4
[0003c67a] 3893                      move.w     (a3),(a4)
[0003c67c] 396b 0002 0002            move.w     2(a3),2(a4)
[0003c682] 396b 0004 0004            move.w     4(a3),4(a4)
[0003c688] 396b 0006 0006            move.w     6(a3),6(a4)
[0003c68e] 2279 0010 1f12            movea.l    ACSblk,a1
[0003c694] 5049                      addq.w     #8,a1
[0003c696] 204a                      movea.l    a2,a0
[0003c698] 4eb9 0003 d1be            jsr        $0003D1BE
[0003c69e] 006a 0001 0056            ori.w      #$0001,86(a2)
[0003c6a4] 3f2b 0006                 move.w     6(a3),-(a7)
[0003c6a8] 3f2b 0004                 move.w     4(a3),-(a7)
[0003c6ac] 3f2b 0002                 move.w     2(a3),-(a7)
[0003c6b0] 3f13                      move.w     (a3),-(a7)
[0003c6b2] 7205                      moveq.l    #5,d1
[0003c6b4] 302a 0020                 move.w     32(a2),d0
[0003c6b8] 4eb9 0007 1656            jsr        $00071656
[0003c6be] 504f                      addq.w     #8,a7
[0003c6c0] 4eb9 0004 6d70            jsr        $00046D70
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
[0003c6f6] 3004                      move.w     d4,d0
[0003c6f8] b07c 0007                 cmp.w      #$0007,d0
[0003c6fc] 6200 00b2                 bhi        $0003C7B0
[0003c700] d040                      add.w      d0,d0
[0003c702] 303b 0006                 move.w     $0003C70A(pc,d0.w),d0
[0003c706] 4efb 0002                 jmp        $0003C70A(pc,d0.w)
J31:
[0003c70a] 0038                      dc.w $0038   ; $0003c742-$0003c70a
[0003c70c] 004c                      dc.w $004c   ; $0003c756-$0003c70a
[0003c70e] 0010                      dc.w $0010   ; $0003c71a-$0003c70a
[0003c710] 0024                      dc.w $0024   ; $0003c72e-$0003c70a
[0003c712] 0064                      dc.w $0064   ; $0003c76e-$0003c70a
[0003c714] 0074                      dc.w $0074   ; $0003c77e-$0003c70a
[0003c716] 0086                      dc.w $0086   ; $0003c790-$0003c70a
[0003c718] 0096                      dc.w $0096   ; $0003c7a0-$0003c70a
[0003c71a] 43ef 0008                 lea.l      8(a7),a1
[0003c71e] 700b                      moveq.l    #11,d0
[0003c720] 204c                      movea.l    a4,a0
[0003c722] 2a6f 0004                 movea.l    4(a7),a5
[0003c726] 2a6d 0008                 movea.l    8(a5),a5
[0003c72a] 4e95                      jsr        (a5)
[0003c72c] 603c                      bra.s      $0003C76A
[0003c72e] 43ef 0008                 lea.l      8(a7),a1
[0003c732] 700a                      moveq.l    #10,d0
[0003c734] 204c                      movea.l    a4,a0
[0003c736] 2a6f 0004                 movea.l    4(a7),a5
[0003c73a] 2a6d 0008                 movea.l    8(a5),a5
[0003c73e] 4e95                      jsr        (a5)
[0003c740] 6028                      bra.s      $0003C76A
[0003c742] 43ef 0008                 lea.l      8(a7),a1
[0003c746] 700d                      moveq.l    #13,d0
[0003c748] 204c                      movea.l    a4,a0
[0003c74a] 2a6f 0004                 movea.l    4(a7),a5
[0003c74e] 2a6d 0008                 movea.l    8(a5),a5
[0003c752] 4e95                      jsr        (a5)
[0003c754] 6012                      bra.s      $0003C768
[0003c756] 43ef 0008                 lea.l      8(a7),a1
[0003c75a] 700c                      moveq.l    #12,d0
[0003c75c] 204c                      movea.l    a4,a0
[0003c75e] 2a6f 0004                 movea.l    4(a7),a5
[0003c762] 2a6d 0008                 movea.l    8(a5),a5
[0003c766] 4e95                      jsr        (a5)
[0003c768] 4243                      clr.w      d3
[0003c76a] 7a01                      moveq.l    #1,d5
[0003c76c] 6042                      bra.s      $0003C7B0
[0003c76e] 43ef 0008                 lea.l      8(a7),a1
[0003c772] 700d                      moveq.l    #13,d0
[0003c774] 204a                      movea.l    a2,a0
[0003c776] 2a6b 0008                 movea.l    8(a3),a5
[0003c77a] 4e95                      jsr        (a5)
[0003c77c] 600e                      bra.s      $0003C78C
[0003c77e] 43ef 0008                 lea.l      8(a7),a1
[0003c782] 700c                      moveq.l    #12,d0
[0003c784] 204a                      movea.l    a2,a0
[0003c786] 2a6b 0008                 movea.l    8(a3),a5
[0003c78a] 4e95                      jsr        (a5)
[0003c78c] 4243                      clr.w      d3
[0003c78e] 601e                      bra.s      $0003C7AE
[0003c790] 43ef 0008                 lea.l      8(a7),a1
[0003c794] 700b                      moveq.l    #11,d0
[0003c796] 204a                      movea.l    a2,a0
[0003c798] 2a6b 0008                 movea.l    8(a3),a5
[0003c79c] 4e95                      jsr        (a5)
[0003c79e] 600e                      bra.s      $0003C7AE
[0003c7a0] 43ef 0008                 lea.l      8(a7),a1
[0003c7a4] 700a                      moveq.l    #10,d0
[0003c7a6] 204a                      movea.l    a2,a0
[0003c7a8] 2a6b 0008                 movea.l    8(a3),a5
[0003c7ac] 4e95                      jsr        (a5)
[0003c7ae] 4245                      clr.w      d5
[0003c7b0] 4a45                      tst.w      d5
[0003c7b2] 672c                      beq.s      $0003C7E0
[0003c7b4] 3003                      move.w     d3,d0
[0003c7b6] 5343                      subq.w     #1,d3
[0003c7b8] 4a40                      tst.w      d0
[0003c7ba] 6612                      bne.s      $0003C7CE
[0003c7bc] 93c9                      suba.l     a1,a1
[0003c7be] 7005                      moveq.l    #5,d0
[0003c7c0] 204c                      movea.l    a4,a0
[0003c7c2] 2a6f 0004                 movea.l    4(a7),a5
[0003c7c6] 2a6d 0008                 movea.l    8(a5),a5
[0003c7ca] 4e95                      jsr        (a5)
[0003c7cc] 7604                      moveq.l    #4,d3
[0003c7ce] 93c9                      suba.l     a1,a1
[0003c7d0] 7069                      moveq.l    #105,d0
[0003c7d2] 204c                      movea.l    a4,a0
[0003c7d4] 2a6f 0004                 movea.l    4(a7),a5
[0003c7d8] 2a6d 0008                 movea.l    8(a5),a5
[0003c7dc] 4e95                      jsr        (a5)
[0003c7de] 6022                      bra.s      $0003C802
[0003c7e0] 3003                      move.w     d3,d0
[0003c7e2] 5343                      subq.w     #1,d3
[0003c7e4] 4a40                      tst.w      d0
[0003c7e6] 660e                      bne.s      $0003C7F6
[0003c7e8] 93c9                      suba.l     a1,a1
[0003c7ea] 7005                      moveq.l    #5,d0
[0003c7ec] 204a                      movea.l    a2,a0
[0003c7ee] 2a6b 0008                 movea.l    8(a3),a5
[0003c7f2] 4e95                      jsr        (a5)
[0003c7f4] 7604                      moveq.l    #4,d3
[0003c7f6] 93c9                      suba.l     a1,a1
[0003c7f8] 7069                      moveq.l    #105,d0
[0003c7fa] 204a                      movea.l    a2,a0
[0003c7fc] 2a6b 0008                 movea.l    8(a3),a5
[0003c800] 4e95                      jsr        (a5)
[0003c802] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0003c808] 486f 0006                 pea.l      6(a7)
[0003c80c] 486f 0008                 pea.l      8(a7)
[0003c810] 43ef 000e                 lea.l      14(a7),a1
[0003c814] 41ef 000e                 lea.l      14(a7),a0
[0003c818] 4eb9 0006 c978            jsr        $0006C978
[0003c81e] 4fef 000c                 lea.l      12(a7),a7
[0003c822] 7001                      moveq.l    #1,d0
[0003c824] c057                      and.w      (a7),d0
[0003c826] 6600 fece                 bne        $0003C6F6
[0003c82a] b67c 0004                 cmp.w      #$0004,d3
[0003c82e] 6722                      beq.s      $0003C852
[0003c830] 4a45                      tst.w      d5
[0003c832] 6712                      beq.s      $0003C846
[0003c834] 93c9                      suba.l     a1,a1
[0003c836] 204c                      movea.l    a4,a0
[0003c838] 246f 0004                 movea.l    4(a7),a2
[0003c83c] 246a 0008                 movea.l    8(a2),a2
[0003c840] 7005                      moveq.l    #5,d0
[0003c842] 4e92                      jsr        (a2)
[0003c844] 600c                      bra.s      $0003C852
[0003c846] 93c9                      suba.l     a1,a1
[0003c848] 7005                      moveq.l    #5,d0
[0003c84a] 204c                      movea.l    a4,a0
[0003c84c] 246b 0008                 movea.l    8(a3),a2
[0003c850] 4e92                      jsr        (a2)
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
[0003c8b0] 6600 00ea                 bne        $0003C99C
[0003c8b4] 006a 0020 0056            ori.w      #$0020,86(a2)
[0003c8ba] 302a 0056                 move.w     86(a2),d0
[0003c8be] c07c 0800                 and.w      #$0800,d0
[0003c8c2] 6600 00d8                 bne        $0003C99C
[0003c8c6] 536b 00c8                 subq.w     #1,200(a3)
[0003c8ca] 302b 00c8                 move.w     200(a3),d0
[0003c8ce] 6e00 00cc                 bgt        $0003C99C
[0003c8d2] 2a6a 0014                 movea.l    20(a2),a5
[0003c8d6] 43ef 0014                 lea.l      20(a7),a1
[0003c8da] 204d                      movea.l    a5,a0
[0003c8dc] 303c 00d8                 move.w     #$00D8,d0
[0003c8e0] 4eb9 0003 8e52            jsr        $00038E52
[0003c8e6] 43ef 0010                 lea.l      16(a7),a1
[0003c8ea] 303c 00ff                 move.w     #$00FF,d0
[0003c8ee] 204d                      movea.l    a5,a0
[0003c8f0] 4eb9 0003 8e52            jsr        $00038E52
[0003c8f6] 43d7                      lea.l      (a7),a1
[0003c8f8] 303c 00e3                 move.w     #$00E3,d0
[0003c8fc] 204d                      movea.l    a5,a0
[0003c8fe] 4eb9 0003 8e52            jsr        $00038E52
[0003c904] 4bef 0018                 lea.l      24(a7),a5
[0003c908] 2017                      move.l     (a7),d0
[0003c90a] 6b46                      bmi.s      $0003C952
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
[0003c934] 4eb9 0007 5680            jsr        $00075680
[0003c93a] 4fef 0010                 lea.l      16(a7),a7
[0003c93e] 224d                      movea.l    a5,a1
[0003c940] 204a                      movea.l    a2,a0
[0003c942] 4eb9 0003 ed16            jsr        $0003ED16
[0003c948] 277c ffff ffff 00ca       move.l     #$FFFFFFFF,202(a3)
[0003c950] 604a                      bra.s      $0003C99C
[0003c952] 202b 00ca                 move.l     202(a3),d0
[0003c956] b0af 0010                 cmp.l      16(a7),d0
[0003c95a] 660a                      bne.s      $0003C966
[0003c95c] 222b 00ce                 move.l     206(a3),d1
[0003c960] b2af 0014                 cmp.l      20(a7),d1
[0003c964] 6736                      beq.s      $0003C99C
[0003c966] 7001                      moveq.l    #1,d0
[0003c968] d0af 0014                 add.l      20(a7),d0
[0003c96c] 2f00                      move.l     d0,-(a7)
[0003c96e] 7201                      moveq.l    #1,d1
[0003c970] d2af 0014                 add.l      20(a7),d1
[0003c974] 2f01                      move.l     d1,-(a7)
[0003c976] 43f9 000c 85e3            lea.l      $000C85E3,a1
[0003c97c] 204d                      movea.l    a5,a0
[0003c97e] 4eb9 0007 5680            jsr        $00075680
[0003c984] 504f                      addq.w     #8,a7
[0003c986] 224d                      movea.l    a5,a1
[0003c988] 204a                      movea.l    a2,a0
[0003c98a] 4eb9 0003 ed16            jsr        $0003ED16
[0003c990] 276f 0010 00ca            move.l     16(a7),202(a3)
[0003c996] 276f 0014 00ce            move.l     20(a7),206(a3)
[0003c99c] 4240                      clr.w      d0
[0003c99e] 4fef 004a                 lea.l      74(a7),a7
[0003c9a2] 4cdf 2c00                 movem.l    (a7)+,a2-a3/a5
[0003c9a6] 4e75                      rts
edit_make:
[0003c9a8] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[0003c9ac] 4fef f9b6                 lea.l      -1610(a7),a7
[0003c9b0] 2f7c 3b9a c9ff 0008       move.l     #$3B9AC9FF,8(a7)
[0003c9b8] 2f7c 0000 0100 0004       move.l     #$00000100,4(a7)
[0003c9c0] 47f9 000c 7b96            lea.l      $000C7B96,a3
[0003c9c6] 203c 0000 06a0            move.l     #$000006A0,d0
[0003c9cc] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003c9d2] 2448                      movea.l    a0,a2
[0003c9d4] 200a                      move.l     a2,d0
[0003c9d6] 673c                      beq.s      $0003CA14
[0003c9d8] 203c 0000 06a0            move.l     #$000006A0,d0
[0003c9de] 224b                      movea.l    a3,a1
[0003c9e0] 4eb9 0007 6f44            jsr        $00076F44
[0003c9e6] 722c                      moveq.l    #44,d1
[0003c9e8] 4240                      clr.w      d0
[0003c9ea] 41eb 00d2                 lea.l      210(a3),a0
[0003c9ee] 4eb9 0007 712e            jsr        $0007712E
[0003c9f4] 277c 000c 8316 f534       move.l     #$000C8316,-2764(a3)
[0003c9fc] 41eb f520                 lea.l      -2784(a3),a0
[0003ca00] 4eb9 0004 f41a            jsr        $0004F41A
[0003ca06] 2848                      movea.l    a0,a4
[0003ca08] 200c                      move.l     a4,d0
[0003ca0a] 660e                      bne.s      $0003CA1A
[0003ca0c] 204a                      movea.l    a2,a0
[0003ca0e] 4eb9 0004 7e26            jsr        $00047E26
[0003ca14] 91c8                      suba.l     a0,a0
[0003ca16] 6000 0376                 bra        $0003CD8E
[0003ca1a] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
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
[0003ca3e] 4eb9 0006 d60a            jsr        $0006D60A
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
[0003ca6a] 6600 0142                 bne        $0003CBAE
[0003ca6e] 41f9 000c 85ee            lea.l      $000C85EE,a0
[0003ca74] 4eb9 0004 7066            jsr        $00047066
[0003ca7a] 4240                      clr.w      d0
[0003ca7c] 4eb9 0007 29f0            jsr        $000729F0
[0003ca82] 2600                      move.l     d0,d3
[0003ca84] 6f00 0110                 ble        $0003CB96
[0003ca88] 41ef 0016                 lea.l      22(a7),a0
[0003ca8c] 7204                      moveq.l    #4,d1
[0003ca8e] 3003                      move.w     d3,d0
[0003ca90] 4eb9 0007 2a02            jsr        $00072A02
[0003ca96] 7204                      moveq.l    #4,d1
[0003ca98] b280                      cmp.l      d0,d1
[0003ca9a] 6600 00f2                 bne        $0003CB8E
[0003ca9e] 0caf 4145 4431 0016       cmpi.l     #$41454431,22(a7)
[0003caa6] 6600 00e6                 bne        $0003CB8E
[0003caaa] 4242                      clr.w      d2
[0003caac] 7000                      moveq.l    #0,d0
[0003caae] 3203                      move.w     d3,d1
[0003cab0] 4eb9 0007 2a2e            jsr        $00072A2E
[0003cab6] 4a80                      tst.l      d0
[0003cab8] 6600 00d4                 bne        $0003CB8E
[0003cabc] 41ef 011c                 lea.l      284(a7),a0
[0003cac0] 223c 0000 052e            move.l     #$0000052E,d1
[0003cac6] 3003                      move.w     d3,d0
[0003cac8] 4eb9 0007 2a02            jsr        $00072A02
[0003cace] b0bc 0000 052e            cmp.l      #$0000052E,d0
[0003cad4] 6600 00b8                 bne        $0003CB8E
[0003cad8] 203c 0000 052e            move.l     #$0000052E,d0
[0003cade] 43ef 011c                 lea.l      284(a7),a1
[0003cae2] 41eb fad2                 lea.l      -1326(a3),a0
[0003cae6] 4eb9 0007 6f44            jsr        $00076F44
[0003caec] 41ef 0016                 lea.l      22(a7),a0
[0003caf0] 7204                      moveq.l    #4,d1
[0003caf2] 3003                      move.w     d3,d0
[0003caf4] 4eb9 0007 2a02            jsr        $00072A02
[0003cafa] 7204                      moveq.l    #4,d1
[0003cafc] b280                      cmp.l      d0,d1
[0003cafe] 6600 008e                 bne        $0003CB8E
[0003cb02] 7800                      moveq.l    #0,d4
[0003cb04] 6000 0080                 bra        $0003CB86
[0003cb08] 204e                      movea.l    a6,a0
[0003cb0a] 223c 0000 0102            move.l     #$00000102,d1
[0003cb10] 3003                      move.w     d3,d0
[0003cb12] 4eb9 0007 2a02            jsr        $00072A02
[0003cb18] b0bc 0000 0102            cmp.l      #$00000102,d0
[0003cb1e] 666e                      bne.s      $0003CB8E
[0003cb20] 182e 0001                 move.b     1(a6),d4
[0003cb24] 4884                      ext.w      d4
[0003cb26] d87c fff0                 add.w      #$FFF0,d4
[0003cb2a] 48c4                      ext.l      d4
[0003cb2c] 3016                      move.w     (a6),d0
[0003cb2e] c07c 0400                 and.w      #$0400,d0
[0003cb32] 6706                      beq.s      $0003CB3A
[0003cb34] d8bc 0000 0014            add.l      #$00000014,d4
[0003cb3a] 3016                      move.w     (a6),d0
[0003cb3c] c07c 0300                 and.w      #$0300,d0
[0003cb40] 6706                      beq.s      $0003CB48
[0003cb42] d8bc 0000 000a            add.l      #$0000000A,d4
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
[0003cb6c] 6720                      beq.s      $0003CB8E
[0003cb6e] 224e                      movea.l    a6,a1
[0003cb70] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0003cb74] 2068 00d2                 movea.l    210(a0),a0
[0003cb78] 203c 0000 0102            move.l     #$00000102,d0
[0003cb7e] 4eb9 0007 6f44            jsr        $00076F44
[0003cb84] 5284                      addq.l     #1,d4
[0003cb86] b8af 0016                 cmp.l      22(a7),d4
[0003cb8a] 6d00 ff7c                 blt        $0003CB08
[0003cb8e] 3003                      move.w     d3,d0
[0003cb90] 4eb9 0007 29ae            jsr        $000729AE
[0003cb96] 102b fef6                 move.b     -266(a3),d0
[0003cb9a] 6654                      bne.s      $0003CBF0
[0003cb9c] 2255                      movea.l    (a5),a1
[0003cb9e] 43e9 03e6                 lea.l      998(a1),a1
[0003cba2] 41eb fef6                 lea.l      -266(a3),a0
[0003cba6] 4eb9 0007 6950            jsr        $00076950
[0003cbac] 6042                      bra.s      $0003CBF0
[0003cbae] 7800                      moveq.l    #0,d4
[0003cbb0] 6038                      bra.s      $0003CBEA
[0003cbb2] 3004                      move.w     d4,d0
[0003cbb4] e548                      lsl.w      #2,d0
[0003cbb6] 41eb 00d2                 lea.l      210(a3),a0
[0003cbba] 2230 0000                 move.l     0(a0,d0.w),d1
[0003cbbe] 6728                      beq.s      $0003CBE8
[0003cbc0] 203c 0000 0102            move.l     #$00000102,d0
[0003cbc6] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003cbcc] 2004                      move.l     d4,d0
[0003cbce] e588                      lsl.l      #2,d0
[0003cbd0] 43f2 0800                 lea.l      0(a2,d0.l),a1
[0003cbd4] 2348 00d2                 move.l     a0,210(a1)
[0003cbd8] 6716                      beq.s      $0003CBF0
[0003cbda] 224e                      movea.l    a6,a1
[0003cbdc] 203c 0000 0102            move.l     #$00000102,d0
[0003cbe2] 4eb9 0007 6f44            jsr        $00076F44
[0003cbe8] 5284                      addq.l     #1,d4
[0003cbea] 7028                      moveq.l    #40,d0
[0003cbec] b084                      cmp.l      d4,d0
[0003cbee] 6ec2                      bgt.s      $0003CBB2
[0003cbf0] 026b 007f fbf4            andi.w     #$007F,-1036(a3)
[0003cbf6] 203c 0000 052e            move.l     #$0000052E,d0
[0003cbfc] 43eb fad2                 lea.l      -1326(a3),a1
[0003cc00] 41ea 0172                 lea.l      370(a2),a0
[0003cc04] 4eb9 0007 6f44            jsr        $00076F44
[0003cc0a] 206b f538                 movea.l    -2760(a3),a0
[0003cc0e] b1fc 000c 6e8e            cmpa.l     #$000C6E8E,a0
[0003cc14] 6706                      beq.s      $0003CC1C
[0003cc16] 006a 0200 0294            ori.w      #$0200,660(a2)
[0003cc1c] 006c 0060 0054            ori.w      #$0060,84(a4)
[0003cc22] 4240                      clr.w      d0
[0003cc24] 206c 0014                 movea.l    20(a4),a0
[0003cc28] 3140 0046                 move.w     d0,70(a0)
[0003cc2c] 206c 0014                 movea.l    20(a4),a0
[0003cc30] 3140 0044                 move.w     d0,68(a0)
[0003cc34] 2c6c 0014                 movea.l    20(a4),a6
[0003cc38] 322a 0178                 move.w     376(a2),d1
[0003cc3c] 6712                      beq.s      $0003CC50
[0003cc3e] 2055                      movea.l    (a5),a0
[0003cc40] b268 000c                 cmp.w      12(a0),d1
[0003cc44] 6e0a                      bgt.s      $0003CC50
[0003cc46] 342a 017a                 move.w     378(a2),d2
[0003cc4a] b468 000e                 cmp.w      14(a0),d2
[0003cc4e] 6f26                      ble.s      $0003CC76
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
[0003cc74] 600c                      bra.s      $0003CC82
[0003cc76] 3d6a 0178 0014            move.w     376(a2),20(a6)
[0003cc7c] 3d6a 017a 0016            move.w     378(a2),22(a6)
[0003cc82] 43ef 0004                 lea.l      4(a7),a1
[0003cc86] 303c 00d2                 move.w     #$00D2,d0
[0003cc8a] 204e                      movea.l    a6,a0
[0003cc8c] 4eb9 0003 8e52            jsr        $00038E52
[0003cc92] 43ea 0596                 lea.l      1430(a2),a1
[0003cc96] 303c 0106                 move.w     #$0106,d0
[0003cc9a] 204e                      movea.l    a6,a0
[0003cc9c] 4eb9 0003 8e52            jsr        $00038E52
[0003cca2] 43ea 0180                 lea.l      384(a2),a1
[0003cca6] 303c 00fe                 move.w     #$00FE,d0
[0003ccaa] 204e                      movea.l    a6,a0
[0003ccac] 4eb9 0003 8e52            jsr        $00038E52
[0003ccb2] 43ea 017c                 lea.l      380(a2),a1
[0003ccb6] 303c 00cf                 move.w     #$00CF,d0
[0003ccba] 204e                      movea.l    a6,a0
[0003ccbc] 4eb9 0003 8e52            jsr        $00038E52
[0003ccc2] 43ea 017e                 lea.l      382(a2),a1
[0003ccc6] 303c 00d0                 move.w     #$00D0,d0
[0003ccca] 204e                      movea.l    a6,a0
[0003cccc] 4eb9 0003 8e52            jsr        $00038E52
[0003ccd2] 93c9                      suba.l     a1,a1
[0003ccd4] 303c 00ee                 move.w     #$00EE,d0
[0003ccd8] 204e                      movea.l    a6,a0
[0003ccda] 4eb9 0003 8e52            jsr        $00038E52
[0003cce0] 4bef 000c                 lea.l      12(a7),a5
[0003cce4] 2a8c                      move.l     a4,(a5)
[0003cce6] 206c 0014                 movea.l    20(a4),a0
[0003ccea] 41e8 0060                 lea.l      96(a0),a0
[0003ccee] 2b48 0004                 move.l     a0,4(a5)
[0003ccf2] 3b7c 0004 0008            move.w     #$0004,8(a5)
[0003ccf8] 224d                      movea.l    a5,a1
[0003ccfa] 303c 00c9                 move.w     #$00C9,d0
[0003ccfe] 204e                      movea.l    a6,a0
[0003cd00] 4eb9 0003 8e52            jsr        $00038E52
[0003cd06] 206c 0014                 movea.l    20(a4),a0
[0003cd0a] 41e8 0078                 lea.l      120(a0),a0
[0003cd0e] 2b48 0004                 move.l     a0,4(a5)
[0003cd12] 3b7c 0005 0008            move.w     #$0005,8(a5)
[0003cd18] 224d                      movea.l    a5,a1
[0003cd1a] 303c 00c8                 move.w     #$00C8,d0
[0003cd1e] 204e                      movea.l    a6,a0
[0003cd20] 4eb9 0003 8e52            jsr        $00038E52
[0003cd26] 43ef 0008                 lea.l      8(a7),a1
[0003cd2a] 303c 00cd                 move.w     #$00CD,d0
[0003cd2e] 204e                      movea.l    a6,a0
[0003cd30] 4eb9 0003 8e52            jsr        $00038E52
[0003cd36] 93c9                      suba.l     a1,a1
[0003cd38] 303c 00e0                 move.w     #$00E0,d0
[0003cd3c] 204e                      movea.l    a6,a0
[0003cd3e] 4eb9 0003 8e52            jsr        $00038E52
[0003cd44] 93c9                      suba.l     a1,a1
[0003cd46] 303c 00d3                 move.w     #$00D3,d0
[0003cd4a] 204e                      movea.l    a6,a0
[0003cd4c] 4eb9 0003 8e52            jsr        $00038E52
[0003cd52] 93c9                      suba.l     a1,a1
[0003cd54] 303c 00d6                 move.w     #$00D6,d0
[0003cd58] 204e                      movea.l    a6,a0
[0003cd5a] 4eb9 0003 8e52            jsr        $00038E52
[0003cd60] 43ea 0176                 lea.l      374(a2),a1
[0003cd64] 303c 00ec                 move.w     #$00EC,d0
[0003cd68] 204e                      movea.l    a6,a0
[0003cd6a] 4eb9 0003 8e52            jsr        $00038E52
[0003cd70] 93c9                      suba.l     a1,a1
[0003cd72] 7006                      moveq.l    #6,d0
[0003cd74] 204e                      movea.l    a6,a0
[0003cd76] 4eb9 0003 8e52            jsr        $00038E52
[0003cd7c] 526b 06fe                 addq.w     #1,1790(a3)
[0003cd80] 204c                      movea.l    a4,a0
[0003cd82] 6100 e504                 bsr        $0003B288
[0003cd86] 204c                      movea.l    a4,a0
[0003cd88] 6100 e5fe                 bsr        $0003B388
[0003cd8c] 204c                      movea.l    a4,a0
[0003cd8e] 4fef 064a                 lea.l      1610(a7),a7
[0003cd92] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[0003cd96] 4e75                      rts
term:
[0003cd98] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003cd9c] 2448                      movea.l    a0,a2
[0003cd9e] 302a 0056                 move.w     86(a2),d0
[0003cda2] c07c 0200                 and.w      #$0200,d0
[0003cda6] 6600 008e                 bne        $0003CE36
[0003cdaa] 2650                      movea.l    (a0),a3
[0003cdac] 323c 0080                 move.w     #$0080,d1
[0003cdb0] c26b 0294                 and.w      660(a3),d1
[0003cdb4] 674a                      beq.s      $0003CE00
[0003cdb6] 2279 0010 1f12            movea.l    ACSblk,a1
[0003cdbc] 3429 023a                 move.w     570(a1),d2
[0003cdc0] 6716                      beq.s      $0003CDD8
[0003cdc2] 43eb 00b8                 lea.l      184(a3),a1
[0003cdc6] 41f9 000c 4160            lea.l      $000C4160,a0
[0003cdcc] 4eb9 0005 ef8c            jsr        $0005EF8C
[0003cdd2] 5340                      subq.w     #1,d0
[0003cdd4] 662a                      bne.s      $0003CE00
[0003cdd6] 601a                      bra.s      $0003CDF2
[0003cdd8] 43eb 00b8                 lea.l      184(a3),a1
[0003cddc] 41f9 000c 4112            lea.l      $000C4112,a0
[0003cde2] 4eb9 0005 ef8c            jsr        $0005EF8C
[0003cde8] 5340                      subq.w     #1,d0
[0003cdea] 6706                      beq.s      $0003CDF2
[0003cdec] 5540                      subq.w     #2,d0
[0003cdee] 6746                      beq.s      $0003CE36
[0003cdf0] 600e                      bra.s      $0003CE00
[0003cdf2] 006a 0200 0056            ori.w      #$0200,86(a2)
[0003cdf8] 204a                      movea.l    a2,a0
[0003cdfa] 4eb9 0003 e142            jsr        $0003E142
[0003ce00] 006a 0200 0056            ori.w      #$0200,86(a2)
[0003ce06] 202b 0004                 move.l     4(a3),d0
[0003ce0a] 4e71                      nop
[0003ce0c] 2853                      movea.l    (a3),a4
[0003ce0e] 200c                      move.l     a4,d0
[0003ce10] 670e                      beq.s      $0003CE20
[0003ce12] 224a                      movea.l    a2,a1
[0003ce14] 303c 00d1                 move.w     #$00D1,d0
[0003ce18] 204c                      movea.l    a4,a0
[0003ce1a] 2a6c 0004                 movea.l    4(a4),a5
[0003ce1e] 4e95                      jsr        (a5)
[0003ce20] 5379 000c 8294            subq.w     #1,$000C8294
[0003ce26] 204b                      movea.l    a3,a0
[0003ce28] 4eb9 0004 7e26            jsr        $00047E26
[0003ce2e] 204a                      movea.l    a2,a0
[0003ce30] 4eb9 0005 0330            jsr        $00050330
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
[0003ce52] 6606                      bne.s      $0003CE5A
[0003ce54] 254b 004a                 move.l     a3,74(a2)
[0003ce58] 6020                      bra.s      $0003CE7A
[0003ce5a] 204b                      movea.l    a3,a0
[0003ce5c] 4eb9 0004 371c            jsr        $0004371C
[0003ce62] 302a 0020                 move.w     32(a2),d0
[0003ce66] 6f12                      ble.s      $0003CE7A
[0003ce68] 4267                      clr.w      -(a7)
[0003ce6a] 4267                      clr.w      -(a7)
[0003ce6c] 2f2a 004a                 move.l     74(a2),-(a7)
[0003ce70] 7202                      moveq.l    #2,d1
[0003ce72] 4eb9 0007 1656            jsr        $00071656
[0003ce78] 504f                      addq.w     #8,a7
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
[0003ce92] 4eb9 0003 8e52            jsr        $00038E52
[0003ce98] 93c9                      suba.l     a1,a1
[0003ce9a] 303c 00e2                 move.w     #$00E2,d0
[0003ce9e] 204a                      movea.l    a2,a0
[0003cea0] 4eb9 0003 8e52            jsr        $00038E52
[0003cea6] 93c9                      suba.l     a1,a1
[0003cea8] 303c 00d6                 move.w     #$00D6,d0
[0003ceac] 204a                      movea.l    a2,a0
[0003ceae] 4eb9 0003 8e52            jsr        $00038E52
[0003ceb4] 43d7                      lea.l      (a7),a1
[0003ceb6] 303c 00e9                 move.w     #$00E9,d0
[0003ceba] 204a                      movea.l    a2,a0
[0003cebc] 4eb9 0003 8e52            jsr        $00038E52
[0003cec2] 4bef 0004                 lea.l      4(a7),a5
[0003cec6] 4295                      clr.l      (a5)
[0003cec8] 6038                      bra.s      $0003CF02
[0003ceca] 224d                      movea.l    a5,a1
[0003cecc] 303c 00ca                 move.w     #$00CA,d0
[0003ced0] 204a                      movea.l    a2,a0
[0003ced2] 4eb9 0003 8e52            jsr        $00038E52
[0003ced8] 202d 0004                 move.l     4(a5),d0
[0003cedc] 6f0c                      ble.s      $0003CEEA
[0003cede] 226d 0008                 movea.l    8(a5),a1
[0003cee2] 204c                      movea.l    a4,a0
[0003cee4] 4eb9 0007 6a1a            jsr        $00076A1A
[0003ceea] d9ed 0004                 adda.l     4(a5),a4
[0003ceee] 70ff                      moveq.l    #-1,d0
[0003cef0] d097                      add.l      (a7),d0
[0003cef2] 2215                      move.l     (a5),d1
[0003cef4] b280                      cmp.l      d0,d1
[0003cef6] 6708                      beq.s      $0003CF00
[0003cef8] 18fc 000d                 move.b     #$0D,(a4)+
[0003cefc] 18fc 000a                 move.b     #$0A,(a4)+
[0003cf00] 5295                      addq.l     #1,(a5)
[0003cf02] 2015                      move.l     (a5),d0
[0003cf04] b097                      cmp.l      (a7),d0
[0003cf06] 6dc2                      blt.s      $0003CECA
[0003cf08] 4214                      clr.b      (a4)
[0003cf0a] 4fef 0010                 lea.l      16(a7),a7
[0003cf0e] 4cdf 3400                 movem.l    (a7)+,a2/a4-a5
[0003cf12] 4e75                      rts
put_string:
[0003cf14] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0003cf18] 2848                      movea.l    a0,a4
[0003cf1a] 2449                      movea.l    a1,a2
[0003cf1c] 2049                      movea.l    a1,a0
[0003cf1e] 4eb9 0007 69b0            jsr        $000769B0
[0003cf24] 2600                      move.l     d0,d3
[0003cf26] 47f9 000f ff04            lea.l      $000FFF04,a3
[0003cf2c] 602c                      bra.s      $0003CF5A
[0003cf2e] 203c 0000 2000            move.l     #$00002000,d0
[0003cf34] 224a                      movea.l    a2,a1
[0003cf36] 204b                      movea.l    a3,a0
[0003cf38] 4eb9 0007 6f44            jsr        $00076F44
[0003cf3e] 203c 0000 2000            move.l     #$00002000,d0
[0003cf44] 224b                      movea.l    a3,a1
[0003cf46] 206c 0014                 movea.l    20(a4),a0
[0003cf4a] 4eb9 0003 d8ea            jsr        $0003D8EA
[0003cf50] 96bc 0000 2000            sub.l      #$00002000,d3
[0003cf56] 45ea 2000                 lea.l      8192(a2),a2
[0003cf5a] b6bc 0000 2000            cmp.l      #$00002000,d3
[0003cf60] 6ecc                      bgt.s      $0003CF2E
[0003cf62] 2003                      move.l     d3,d0
[0003cf64] 224a                      movea.l    a2,a1
[0003cf66] 204b                      movea.l    a3,a0
[0003cf68] 4eb9 0007 6f44            jsr        $00076F44
[0003cf6e] 2003                      move.l     d3,d0
[0003cf70] 224b                      movea.l    a3,a1
[0003cf72] 206c 0014                 movea.l    20(a4),a0
[0003cf76] 4eb9 0003 d8ea            jsr        $0003D8EA
[0003cf7c] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003cf80] 4e75                      rts
edit_service:
[0003cf82] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003cf86] 2448                      movea.l    a0,a2
[0003cf88] 3600                      move.w     d0,d3
[0003cf8a] 2849                      movea.l    a1,a4
[0003cf8c] 2650                      movea.l    (a0),a3
[0003cf8e] b07c 00cd                 cmp.w      #$00CD,d0
[0003cf92] 6700 00ce                 beq        $0003D062
[0003cf96] 6e40                      bgt.s      $0003CFD8
[0003cf98] b07c 00c9                 cmp.w      #$00C9,d0
[0003cf9c] 6700 013e                 beq        $0003D0DC
[0003cfa0] 6e1e                      bgt.s      $0003CFC0
[0003cfa2] 5540                      subq.w     #2,d0
[0003cfa4] 675c                      beq.s      $0003D002
[0003cfa6] 907c 000d                 sub.w      #$000D,d0
[0003cfaa] 6700 0184                 beq        $0003D130
[0003cfae] 5540                      subq.w     #2,d0
[0003cfb0] 6700 01ac                 beq        $0003D15E
[0003cfb4] 907c 00b7                 sub.w      #$00B7,d0
[0003cfb8] 6700 007e                 beq.w      $0003D038
[0003cfbc] 6000 0192                 bra        $0003D150
[0003cfc0] 907c 00ca                 sub.w      #$00CA,d0
[0003cfc4] 6700 012a                 beq        $0003D0F0
[0003cfc8] 5340                      subq.w     #1,d0
[0003cfca] 6700 00b8                 beq        $0003D084
[0003cfce] 5340                      subq.w     #1,d0
[0003cfd0] 6700 00de                 beq        $0003D0B0
[0003cfd4] 6000 017a                 bra        $0003D150
[0003cfd8] 907c 00ce                 sub.w      #$00CE,d0
[0003cfdc] b07c 0009                 cmp.w      #$0009,d0
[0003cfe0] 6200 016e                 bhi        $0003D150
[0003cfe4] d040                      add.w      d0,d0
[0003cfe6] 303b 0006                 move.w     $0003CFEE(pc,d0.w),d0
[0003cfea] 4efb 0002                 jmp        $0003CFEE(pc,d0.w)
J32:
[0003cfee] 0052                      dc.w $0052   ; $0003d040-$0003cfee
[0003cff0] 0060                      dc.w $0060   ; $0003d04e-$0003cfee
[0003cff2] 0044                      dc.w $0044   ; $0003d032-$0003cfee
[0003cff4] 0162                      dc.w $0162   ; $0003d150-$0003cfee
[0003cff6] 0162                      dc.w $0162   ; $0003d150-$0003cfee
[0003cff8] 008c                      dc.w $008c   ; $0003d07a-$0003cfee
[0003cffa] 0080                      dc.w $0080   ; $0003d06e-$0003cfee
[0003cffc] 001e                      dc.w $001e   ; $0003d00c-$0003cfee
[0003cffe] 0138                      dc.w $0138   ; $0003d126-$0003cfee
[0003d000] 0154                      dc.w $0154   ; $0003d142-$0003cfee
[0003d002] 204a                      dc.w $204a   ; $0003f038-$0003cfee
[0003d004] 6100                      dc.w $6100   ; $000430ee-$0003cfee
[0003d006] fd92                      dc.w $fd92   ; $0003cd80-$0003cfee
[0003d008] 6000                      dc.w $6000   ; $00042fee-$0003cfee
[0003d00a] 0154                      dc.w $0154   ; $0003d142-$0003cfee
[0003d00c] 200c                      move.l     a4,d0
[0003d00e] 6714                      beq.s      $0003D024
[0003d010] 422b 00a8                 clr.b      168(a3)
[0003d014] 224c                      movea.l    a4,a1
[0003d016] 41eb 00a8                 lea.l      168(a3),a0
[0003d01a] 700f                      moveq.l    #15,d0
[0003d01c] 4eb9 0007 69da            jsr        $000769DA
[0003d022] 6004                      bra.s      $0003D028
[0003d024] 422b 00a8                 clr.b      168(a3)
[0003d028] 204a                      movea.l    a2,a0
[0003d02a] 6100 e25c                 bsr        $0003B288
[0003d02e] 6000 012e                 bra        $0003D15E
[0003d032] 268c                      move.l     a4,(a3)
[0003d034] 6000 0128                 bra        $0003D15E
[0003d038] 28aa 0014                 move.l     20(a2),(a4)
[0003d03c] 6000 0120                 bra        $0003D15E
[0003d040] 224c                      movea.l    a4,a1
[0003d042] 206a 0014                 movea.l    20(a2),a0
[0003d046] 6100 fe38                 bsr        $0003CE80
[0003d04a] 6000 0112                 bra        $0003D15E
[0003d04e] 224c                      movea.l    a4,a1
[0003d050] 303c 00fb                 move.w     #$00FB,d0
[0003d054] 206a 0014                 movea.l    20(a2),a0
[0003d058] 4eb9 0003 8e52            jsr        $00038E52
[0003d05e] 6000 00fe                 bra        $0003D15E
[0003d062] 224c                      movea.l    a4,a1
[0003d064] 204a                      movea.l    a2,a0
[0003d066] 6100 feac                 bsr        $0003CF14
[0003d06a] 6000 00f2                 bra        $0003D15E
[0003d06e] 206a 0014                 movea.l    20(a2),a0
[0003d072] 6100 e2a4                 bsr        $0003B318
[0003d076] 6000 00e6                 bra        $0003D15E
[0003d07a] 204a                      movea.l    a2,a0
[0003d07c] 6100 e30a                 bsr        $0003B388
[0003d080] 6000 00dc                 bra        $0003D15E
[0003d084] 7020                      moveq.l    #32,d0
[0003d086] 224c                      movea.l    a4,a1
[0003d088] 41eb 0068                 lea.l      104(a3),a0
[0003d08c] 4eb9 0007 6a1a            jsr        $00076A1A
[0003d092] 422b 0087                 clr.b      135(a3)
[0003d096] 303c 0080                 move.w     #$0080,d0
[0003d09a] c06b 0294                 and.w      660(a3),d0
[0003d09e] 6600 00be                 bne        $0003D15E
[0003d0a2] 43eb 0068                 lea.l      104(a3),a1
[0003d0a6] 204a                      movea.l    a2,a0
[0003d0a8] 6100 fd92                 bsr        $0003CE3C
[0003d0ac] 6000 00b0                 bra        $0003D15E
[0003d0b0] 7020                      moveq.l    #32,d0
[0003d0b2] 224c                      movea.l    a4,a1
[0003d0b4] 41eb 0088                 lea.l      136(a3),a0
[0003d0b8] 4eb9 0007 6a1a            jsr        $00076A1A
[0003d0be] 422b 00a7                 clr.b      167(a3)
[0003d0c2] 303c 0080                 move.w     #$0080,d0
[0003d0c6] c06b 0294                 and.w      660(a3),d0
[0003d0ca] 6700 0092                 beq        $0003D15E
[0003d0ce] 43eb 0088                 lea.l      136(a3),a1
[0003d0d2] 204a                      movea.l    a2,a0
[0003d0d4] 6100 fd66                 bsr        $0003CE3C
[0003d0d8] 6000 0084                 bra        $0003D15E
[0003d0dc] 7010                      moveq.l    #16,d0
[0003d0de] 224c                      movea.l    a4,a1
[0003d0e0] 41eb 0182                 lea.l      386(a3),a0
[0003d0e4] 4eb9 0007 6a1a            jsr        $00076A1A
[0003d0ea] 422b 0191                 clr.b      401(a3)
[0003d0ee] 606e                      bra.s      $0003D15E
[0003d0f0] 200c                      move.l     a4,d0
[0003d0f2] 6626                      bne.s      $0003D11A
[0003d0f4] 486b 0182                 pea.l      386(a3)
[0003d0f8] 43eb 0192                 lea.l      402(a3),a1
[0003d0fc] 41eb 0008                 lea.l      8(a3),a0
[0003d100] 4eb9 0005 ff74            jsr        $0005FF74
[0003d106] 584f                      addq.w     #4,a7
[0003d108] 2a48                      movea.l    a0,a5
[0003d10a] 200d                      move.l     a5,d0
[0003d10c] 6750                      beq.s      $0003D15E
[0003d10e] 224d                      movea.l    a5,a1
[0003d110] 204a                      movea.l    a2,a0
[0003d112] 4eb9 0003 d9fa            jsr        $0003D9FA
[0003d118] 6044                      bra.s      $0003D15E
[0003d11a] 224c                      movea.l    a4,a1
[0003d11c] 204a                      movea.l    a2,a0
[0003d11e] 4eb9 0003 d9fa            jsr        $0003D9FA
[0003d124] 6038                      bra.s      $0003D15E
[0003d126] 204a                      movea.l    a2,a0
[0003d128] 4eb9 0003 e142            jsr        $0003E142
[0003d12e] 602e                      bra.s      $0003D15E
[0003d130] 4bf9 000c 733e            lea.l      $000C733E,a5
[0003d136] 224d                      movea.l    a5,a1
[0003d138] 204d                      movea.l    a5,a0
[0003d13a] 4eb9 0005 1612            jsr        $00051612
[0003d140] 601c                      bra.s      $0003D15E
[0003d142] 43eb 0192                 lea.l      402(a3),a1
[0003d146] 204c                      movea.l    a4,a0
[0003d148] 4eb9 0007 6950            jsr        $00076950
[0003d14e] 600e                      bra.s      $0003D15E
[0003d150] 224c                      movea.l    a4,a1
[0003d152] 3003                      move.w     d3,d0
[0003d154] 204a                      movea.l    a2,a0
[0003d156] 4eb9 0005 1276            jsr        $00051276
[0003d15c] 6002                      bra.s      $0003D160
[0003d15e] 7001                      moveq.l    #1,d0
[0003d160] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003d164] 4e75                      rts
edit_moved:
[0003d166] 2f0b                      move.l     a3,-(a7)
[0003d168] 2f0c                      move.l     a4,-(a7)
[0003d16a] 594f                      subq.w     #4,a7
[0003d16c] 2648                      movea.l    a0,a3
[0003d16e] 2849                      movea.l    a1,a4
[0003d170] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
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
[0003d194] 4eb9 0006 d60a            jsr        $0006D60A
[0003d19a] 4fef 0012                 lea.l      18(a7),a7
[0003d19e] 7008                      moveq.l    #8,d0
[0003d1a0] d054                      add.w      (a4),d0
[0003d1a2] c07c fff0                 and.w      #$FFF0,d0
[0003d1a6] 906f 0002                 sub.w      2(a7),d0
[0003d1aa] 3880                      move.w     d0,(a4)
[0003d1ac] 224c                      movea.l    a4,a1
[0003d1ae] 204b                      movea.l    a3,a0
[0003d1b0] 4eb9 0005 07bc            jsr        $000507BC
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
[0003d1d0] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
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
[0003d1f8] 4eb9 0006 d60a            jsr        $0006D60A
[0003d1fe] 4fef 0012                 lea.l      18(a7),a7
[0003d202] 7008                      moveq.l    #8,d0
[0003d204] d055                      add.w      (a5),d0
[0003d206] c07c fff0                 and.w      #$FFF0,d0
[0003d20a] 906f 0002                 sub.w      2(a7),d0
[0003d20e] 3a80                      move.w     d0,(a5)
[0003d210] 220c                      move.l     a4,d1
[0003d212] 6716                      beq.s      $0003D22A
[0003d214] 302c 0002                 move.w     2(a4),d0
[0003d218] 48c0                      ext.l      d0
[0003d21a] 2400                      move.l     d0,d2
[0003d21c] d482                      add.l      d2,d2
[0003d21e] d480                      add.l      d0,d2
[0003d220] e78a                      lsl.l      #3,d2
[0003d222] 3234 2816                 move.w     22(a4,d2.l),d1
[0003d226] 936b 0016                 sub.w      d1,22(a3)
[0003d22a] 202a 0018                 move.l     24(a2),d0
[0003d22e] 670a                      beq.s      $0003D23A
[0003d230] 2040                      movea.l    d0,a0
[0003d232] 3228 0016                 move.w     22(a0),d1
[0003d236] 936b 0016                 sub.w      d1,22(a3)
[0003d23a] 93c9                      suba.l     a1,a1
[0003d23c] 303c 00ee                 move.w     #$00EE,d0
[0003d240] 204b                      movea.l    a3,a0
[0003d242] 4eb9 0003 8e52            jsr        $00038E52
[0003d248] 93c9                      suba.l     a1,a1
[0003d24a] 303c 00fd                 move.w     #$00FD,d0
[0003d24e] 204b                      movea.l    a3,a0
[0003d250] 4eb9 0003 8e52            jsr        $00038E52
[0003d256] 224d                      movea.l    a5,a1
[0003d258] 204a                      movea.l    a2,a0
[0003d25a] 4eb9 0005 06ca            jsr        $000506CA
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
[0003d2b8] 6100 e16c                 bsr        $0003B426
[0003d2bc] 4e75                      rts
Aed_cut:
[0003d2be] 323c 8478                 move.w     #$8478,d1
[0003d2c2] 4240                      clr.w      d0
[0003d2c4] 2079 0010 1f12            movea.l    ACSblk,a0
[0003d2ca] 2068 0258                 movea.l    600(a0),a0
[0003d2ce] 6100 e156                 bsr        $0003B426
[0003d2d2] 4e75                      rts
Aed_cutline:
[0003d2d4] 323c 8479                 move.w     #$8479,d1
[0003d2d8] 4240                      clr.w      d0
[0003d2da] 2079 0010 1f12            movea.l    ACSblk,a0
[0003d2e0] 2068 0258                 movea.l    600(a0),a0
[0003d2e4] 6100 e140                 bsr        $0003B426
[0003d2e8] 4e75                      rts
find_next:
[0003d2ea] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003d2ee] 4fef ffe0                 lea.l      -32(a7),a7
[0003d2f2] 2468 0014                 movea.l    20(a0),a2
[0003d2f6] 2650                      movea.l    (a0),a3
[0003d2f8] 4beb 0296                 lea.l      662(a3),a5
[0003d2fc] 1015                      move.b     (a5),d0
[0003d2fe] 6700 0108                 beq        $0003D408
[0003d302] 7204                      moveq.l    #4,d1
[0003d304] c26b 0294                 and.w      660(a3),d1
[0003d308] 6710                      beq.s      $0003D31A
[0003d30a] 93c9                      suba.l     a1,a1
[0003d30c] 204a                      movea.l    a2,a0
[0003d30e] 303c 00f3                 move.w     #$00F3,d0
[0003d312] 4eb9 0003 8e52            jsr        $00038E52
[0003d318] 600e                      bra.s      $0003D328
[0003d31a] 93c9                      suba.l     a1,a1
[0003d31c] 303c 00f4                 move.w     #$00F4,d0
[0003d320] 204a                      movea.l    a2,a0
[0003d322] 4eb9 0003 8e52            jsr        $00038E52
[0003d328] 7001                      moveq.l    #1,d0
[0003d32a] c06b 0294                 and.w      660(a3),d0
[0003d32e] 6710                      beq.s      $0003D340
[0003d330] 93c9                      suba.l     a1,a1
[0003d332] 204a                      movea.l    a2,a0
[0003d334] 303c 00f6                 move.w     #$00F6,d0
[0003d338] 4eb9 0003 8e52            jsr        $00038E52
[0003d33e] 600e                      bra.s      $0003D34E
[0003d340] 93c9                      suba.l     a1,a1
[0003d342] 303c 00f5                 move.w     #$00F5,d0
[0003d346] 204a                      movea.l    a2,a0
[0003d348] 4eb9 0003 8e52            jsr        $00038E52
[0003d34e] 7002                      moveq.l    #2,d0
[0003d350] c06b 0294                 and.w      660(a3),d0
[0003d354] 6710                      beq.s      $0003D366
[0003d356] 93c9                      suba.l     a1,a1
[0003d358] 204a                      movea.l    a2,a0
[0003d35a] 303c 00f7                 move.w     #$00F7,d0
[0003d35e] 4eb9 0003 8e52            jsr        $00038E52
[0003d364] 600e                      bra.s      $0003D374
[0003d366] 93c9                      suba.l     a1,a1
[0003d368] 303c 00f8                 move.w     #$00F8,d0
[0003d36c] 204a                      movea.l    a2,a0
[0003d36e] 4eb9 0003 8e52            jsr        $00038E52
[0003d374] 93c9                      suba.l     a1,a1
[0003d376] 303c 00d5                 move.w     #$00D5,d0
[0003d37a] 204a                      movea.l    a2,a0
[0003d37c] 4eb9 0003 8e52            jsr        $00038E52
[0003d382] 49ef 0010                 lea.l      16(a7),a4
[0003d386] 224c                      movea.l    a4,a1
[0003d388] 303c 00e3                 move.w     #$00E3,d0
[0003d38c] 204a                      movea.l    a2,a0
[0003d38e] 4eb9 0003 8e52            jsr        $00038E52
[0003d394] 224d                      movea.l    a5,a1
[0003d396] 303c 00f2                 move.w     #$00F2,d0
[0003d39a] 204a                      movea.l    a2,a0
[0003d39c] 4eb9 0003 8e52            jsr        $00038E52
[0003d3a2] 43d7                      lea.l      (a7),a1
[0003d3a4] 303c 00e3                 move.w     #$00E3,d0
[0003d3a8] 204a                      movea.l    a2,a0
[0003d3aa] 4eb9 0003 8e52            jsr        $00038E52
[0003d3b0] 2017                      move.l     (a7),d0
[0003d3b2] 6b24                      bmi.s      $0003D3D8
[0003d3b4] 2214                      move.l     (a4),d1
[0003d3b6] b280                      cmp.l      d0,d1
[0003d3b8] 6626                      bne.s      $0003D3E0
[0003d3ba] 242c 0004                 move.l     4(a4),d2
[0003d3be] b4af 0004                 cmp.l      4(a7),d2
[0003d3c2] 661c                      bne.s      $0003D3E0
[0003d3c4] 206c 0008                 movea.l    8(a4),a0
[0003d3c8] b1ef 0008                 cmpa.l     8(a7),a0
[0003d3cc] 6612                      bne.s      $0003D3E0
[0003d3ce] 226c 000c                 movea.l    12(a4),a1
[0003d3d2] b3ef 000c                 cmpa.l     12(a7),a1
[0003d3d6] 6608                      bne.s      $0003D3E0
[0003d3d8] 0a6b 0004 0294            eori.w     #$0004,660(a3)
[0003d3de] 601a                      bra.s      $0003D3FA
[0003d3e0] 93c9                      suba.l     a1,a1
[0003d3e2] 303c 00db                 move.w     #$00DB,d0
[0003d3e6] 204a                      movea.l    a2,a0
[0003d3e8] 4eb9 0003 8e52            jsr        $00038E52
[0003d3ee] 93c9                      suba.l     a1,a1
[0003d3f0] 7005                      moveq.l    #5,d0
[0003d3f2] 204a                      movea.l    a2,a0
[0003d3f4] 4eb9 0003 8e52            jsr        $00038E52
[0003d3fa] 93c9                      suba.l     a1,a1
[0003d3fc] 303c 00d6                 move.w     #$00D6,d0
[0003d400] 204a                      movea.l    a2,a0
[0003d402] 4eb9 0003 8e52            jsr        $00038E52
[0003d408] 4fef 0020                 lea.l      32(a7),a7
[0003d40c] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003d410] 4e75                      rts
Aed_find:
[0003d412] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003d416] 2079 0010 1f12            movea.l    ACSblk,a0
[0003d41c] 2468 0258                 movea.l    600(a0),a2
[0003d420] 2652                      movea.l    (a2),a3
[0003d422] 49f9 000c 7158            lea.l      $000C7158,a4
[0003d428] 204c                      movea.l    a4,a0
[0003d42a] 226c 0008                 movea.l    8(a4),a1
[0003d42e] 4e91                      jsr        (a1)
[0003d430] 2a48                      movea.l    a0,a5
[0003d432] 200d                      move.l     a5,d0
[0003d434] 6700 00c8                 beq        $0003D4FE
[0003d438] 43eb 0296                 lea.l      662(a3),a1
[0003d43c] 206d 0014                 movea.l    20(a5),a0
[0003d440] 7003                      moveq.l    #3,d0
[0003d442] 4eb9 0004 afe0            jsr        $0004AFE0
[0003d448] 7002                      moveq.l    #2,d0
[0003d44a] c06b 0294                 and.w      660(a3),d0
[0003d44e] 206d 0014                 movea.l    20(a5),a0
[0003d452] 41e8 00d8                 lea.l      216(a0),a0
[0003d456] 6100 df1c                 bsr        $0003B374
[0003d45a] 7004                      moveq.l    #4,d0
[0003d45c] c06b 0294                 and.w      660(a3),d0
[0003d460] 206d 0014                 movea.l    20(a5),a0
[0003d464] 41e8 0078                 lea.l      120(a0),a0
[0003d468] 6100 df0a                 bsr        $0003B374
[0003d46c] 7001                      moveq.l    #1,d0
[0003d46e] c06b 0294                 and.w      660(a3),d0
[0003d472] 206d 0014                 movea.l    20(a5),a0
[0003d476] 41e8 00a8                 lea.l      168(a0),a0
[0003d47a] 6100 def8                 bsr        $0003B374
[0003d47e] 204d                      movea.l    a5,a0
[0003d480] 4eb9 0005 1292            jsr        $00051292
[0003d486] b07c 000b                 cmp.w      #$000B,d0
[0003d48a] 666a                      bne.s      $0003D4F6
[0003d48c] 43eb 0296                 lea.l      662(a3),a1
[0003d490] 7003                      moveq.l    #3,d0
[0003d492] 206d 0014                 movea.l    20(a5),a0
[0003d496] 4eb9 0004 b154            jsr        $0004B154
[0003d49c] 4a40                      tst.w      d0
[0003d49e] 6756                      beq.s      $0003D4F6
[0003d4a0] 43eb 0296                 lea.l      662(a3),a1
[0003d4a4] 41ec 0634                 lea.l      1588(a4),a0
[0003d4a8] 4eb9 0007 6950            jsr        $00076950
[0003d4ae] 026b fff8 0294            andi.w     #$FFF8,660(a3)
[0003d4b4] 7001                      moveq.l    #1,d0
[0003d4b6] 206d 0014                 movea.l    20(a5),a0
[0003d4ba] c068 00e2                 and.w      226(a0),d0
[0003d4be] 6706                      beq.s      $0003D4C6
[0003d4c0] 006b 0002 0294            ori.w      #$0002,660(a3)
[0003d4c6] 7001                      moveq.l    #1,d0
[0003d4c8] 206d 0014                 movea.l    20(a5),a0
[0003d4cc] c068 0082                 and.w      130(a0),d0
[0003d4d0] 6706                      beq.s      $0003D4D8
[0003d4d2] 006b 0004 0294            ori.w      #$0004,660(a3)
[0003d4d8] 7001                      moveq.l    #1,d0
[0003d4da] 206d 0014                 movea.l    20(a5),a0
[0003d4de] c068 00b2                 and.w      178(a0),d0
[0003d4e2] 6706                      beq.s      $0003D4EA
[0003d4e4] 006b 0001 0294            ori.w      #$0001,660(a3)
[0003d4ea] 396b 0294 0632            move.w     660(a3),1586(a4)
[0003d4f0] 204a                      movea.l    a2,a0
[0003d4f2] 6100 fdf6                 bsr        $0003D2EA
[0003d4f6] 204d                      movea.l    a5,a0
[0003d4f8] 4eb9 0005 0330            jsr        $00050330
[0003d4fe] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003d502] 4e75                      rts
Aed_findnext:
[0003d504] 2079 0010 1f12            movea.l    ACSblk,a0
[0003d50a] 2068 0258                 movea.l    600(a0),a0
[0003d50e] 6100 fdda                 bsr        $0003D2EA
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
[0003d534] 4eb9 0003 8e52            jsr        $00038E52
[0003d53a] 2017                      move.l     (a7),d0
[0003d53c] 6a2c                      bpl.s      $0003D56A
[0003d53e] 93c9                      suba.l     a1,a1
[0003d540] 204b                      movea.l    a3,a0
[0003d542] 303c 00d5                 move.w     #$00D5,d0
[0003d546] 4eb9 0003 8e52            jsr        $00038E52
[0003d54c] 93c9                      suba.l     a1,a1
[0003d54e] 303c 00fc                 move.w     #$00FC,d0
[0003d552] 204b                      movea.l    a3,a0
[0003d554] 4eb9 0003 8e52            jsr        $00038E52
[0003d55a] 93c9                      suba.l     a1,a1
[0003d55c] 303c 00d6                 move.w     #$00D6,d0
[0003d560] 204b                      movea.l    a3,a0
[0003d562] 4eb9 0003 8e52            jsr        $00038E52
[0003d568] 6044                      bra.s      $0003D5AE
[0003d56a] 4bef 0010                 lea.l      16(a7),a5
[0003d56e] 2a97                      move.l     (a7),(a5)
[0003d570] 224d                      movea.l    a5,a1
[0003d572] 303c 00ca                 move.w     #$00CA,d0
[0003d576] 204b                      movea.l    a3,a0
[0003d578] 4eb9 0003 8e52            jsr        $00038E52
[0003d57e] 263c 0000 00ff            move.l     #$000000FF,d3
[0003d584] 202d 0004                 move.l     4(a5),d0
[0003d588] 6f24                      ble.s      $0003D5AE
[0003d58a] b680                      cmp.l      d0,d3
[0003d58c] 6f02                      ble.s      $0003D590
[0003d58e] 2600                      move.l     d0,d3
[0003d590] 2003                      move.l     d3,d0
[0003d592] 226d 0008                 movea.l    8(a5),a1
[0003d596] 41ec 0296                 lea.l      662(a4),a0
[0003d59a] 4eb9 0007 6a1a            jsr        $00076A1A
[0003d5a0] 41f4 3800                 lea.l      0(a4,d3.l),a0
[0003d5a4] 4228 0296                 clr.b      662(a0)
[0003d5a8] 204a                      movea.l    a2,a0
[0003d5aa] 6100 fd3e                 bsr        $0003D2EA
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
[0003d5d2] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0003d5d8] 486f 0008                 pea.l      8(a7)
[0003d5dc] 4854                      pea.l      (a4)
[0003d5de] 224c                      movea.l    a4,a1
[0003d5e0] 204c                      movea.l    a4,a0
[0003d5e2] 4eb9 0006 c978            jsr        $0006C978
[0003d5e8] 4fef 000c                 lea.l      12(a7),a7
[0003d5ec] 7003                      moveq.l    #3,d0
[0003d5ee] c06f 0004                 and.w      4(a7),d0
[0003d5f2] 6600 0084                 bne        $0003D678
[0003d5f6] 41ef 0008                 lea.l      8(a7),a0
[0003d5fa] 203c 7846 534c            move.l     #$7846534C,d0
[0003d600] 4eb9 0007 2bf4            jsr        $00072BF4
[0003d606] 4a40                      tst.w      d0
[0003d608] 676e                      beq.s      $0003D678
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
[0003d638] 6b3c                      bmi.s      $0003D676
[0003d63a] 7601                      moveq.l    #1,d3
[0003d63c] 376f 0002 017c            move.w     2(a7),380(a3)
[0003d642] 322f 0002                 move.w     2(a7),d1
[0003d646] 2079 0010 1f12            movea.l    ACSblk,a0
[0003d64c] 3028 0010                 move.w     16(a0),d0
[0003d650] 4eb9 0006 5216            jsr        $00065216
[0003d656] 4854                      pea.l      (a4)
[0003d658] 4854                      pea.l      (a4)
[0003d65a] 43eb 017e                 lea.l      382(a3),a1
[0003d65e] 204c                      movea.l    a4,a0
[0003d660] 322f 0008                 move.w     8(a7),d1
[0003d664] 2a79 0010 1f12            movea.l    ACSblk,a5
[0003d66a] 302d 0010                 move.w     16(a5),d0
[0003d66e] 4eb9 0006 5132            jsr        $00065132
[0003d674] 504f                      addq.w     #8,a7
[0003d676] 5344                      subq.w     #1,d4
[0003d678] 4a43                      tst.w      d3
[0003d67a] 6612                      bne.s      $0003D68E
[0003d67c] 4240                      clr.w      d0
[0003d67e] 43eb 017e                 lea.l      382(a3),a1
[0003d682] 41eb 017c                 lea.l      380(a3),a0
[0003d686] 4eb9 0003 f748            jsr        $0003F748
[0003d68c] 3800                      move.w     d0,d4
[0003d68e] 4a44                      tst.w      d4
[0003d690] 6600 008e                 bne        $0003D720
[0003d694] 33eb 017c 000c 7672       move.w     380(a3),$000C7672
[0003d69c] 33eb 017e 000c 7674       move.w     382(a3),$000C7674
[0003d6a4] 286a 0014                 movea.l    20(a2),a4
[0003d6a8] 93c9                      suba.l     a1,a1
[0003d6aa] 303c 00d5                 move.w     #$00D5,d0
[0003d6ae] 204c                      movea.l    a4,a0
[0003d6b0] 4eb9 0003 8e52            jsr        $00038E52
[0003d6b6] 93c9                      suba.l     a1,a1
[0003d6b8] 303c 00db                 move.w     #$00DB,d0
[0003d6bc] 204c                      movea.l    a4,a0
[0003d6be] 4eb9 0003 8e52            jsr        $00038E52
[0003d6c4] 43eb 017c                 lea.l      380(a3),a1
[0003d6c8] 303c 00cf                 move.w     #$00CF,d0
[0003d6cc] 204c                      movea.l    a4,a0
[0003d6ce] 4eb9 0003 8e52            jsr        $00038E52
[0003d6d4] 43eb 017e                 lea.l      382(a3),a1
[0003d6d8] 303c 00d0                 move.w     #$00D0,d0
[0003d6dc] 204c                      movea.l    a4,a0
[0003d6de] 4eb9 0003 8e52            jsr        $00038E52
[0003d6e4] 93c9                      suba.l     a1,a1
[0003d6e6] 303c 00ee                 move.w     #$00EE,d0
[0003d6ea] 204c                      movea.l    a4,a0
[0003d6ec] 4eb9 0003 8e52            jsr        $00038E52
[0003d6f2] 93c9                      suba.l     a1,a1
[0003d6f4] 303c 00fd                 move.w     #$00FD,d0
[0003d6f8] 204c                      movea.l    a4,a0
[0003d6fa] 4eb9 0003 8e52            jsr        $00038E52
[0003d700] 93c9                      suba.l     a1,a1
[0003d702] 303c 00d6                 move.w     #$00D6,d0
[0003d706] 204c                      movea.l    a4,a0
[0003d708] 4eb9 0003 8e52            jsr        $00038E52
[0003d70e] 006a 0010 0056            ori.w      #$0010,86(a2)
[0003d714] 43ea 0024                 lea.l      36(a2),a1
[0003d718] 204a                      movea.l    a2,a0
[0003d71a] 4eb9 0005 06ca            jsr        $000506CA
[0003d720] 4fef 000c                 lea.l      12(a7),a7
[0003d724] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0003d728] 4e75                      rts
Aed_gotoline:
[0003d72a] 2f0a                      move.l     a2,-(a7)
[0003d72c] 2f0b                      move.l     a3,-(a7)
[0003d72e] 594f                      subq.w     #4,a7
[0003d730] 41f9 000c 71fa            lea.l      $000C71FA,a0
[0003d736] 2279 000c 7202            movea.l    $000C7202,a1
[0003d73c] 4e91                      jsr        (a1)
[0003d73e] 2448                      movea.l    a0,a2
[0003d740] 200a                      move.l     a2,d0
[0003d742] 6700 00b8                 beq        $0003D7FC
[0003d746] 2279 0010 1f12            movea.l    ACSblk,a1
[0003d74c] 2069 0258                 movea.l    600(a1),a0
[0003d750] 2668 0014                 movea.l    20(a0),a3
[0003d754] 43d7                      lea.l      (a7),a1
[0003d756] 303c 00d8                 move.w     #$00D8,d0
[0003d75a] 204b                      movea.l    a3,a0
[0003d75c] 4eb9 0003 8e52            jsr        $00038E52
[0003d762] 7001                      moveq.l    #1,d0
[0003d764] d097                      add.l      (a7),d0
[0003d766] 2f00                      move.l     d0,-(a7)
[0003d768] 43f9 000c 85fd            lea.l      $000C85FD,a1
[0003d76e] 206a 0014                 movea.l    20(a2),a0
[0003d772] 7004                      moveq.l    #4,d0
[0003d774] 4eb9 0004 afac            jsr        $0004AFAC
[0003d77a] 584f                      addq.w     #4,a7
[0003d77c] 204a                      movea.l    a2,a0
[0003d77e] 4eb9 0005 1292            jsr        $00051292
[0003d784] 5b40                      subq.w     #5,d0
[0003d786] 666c                      bne.s      $0003D7F4
[0003d788] 4857                      pea.l      (a7)
[0003d78a] 43f9 000c 85fd            lea.l      $000C85FD,a1
[0003d790] 7004                      moveq.l    #4,d0
[0003d792] 206a 0014                 movea.l    20(a2),a0
[0003d796] 4eb9 0004 b0b2            jsr        $0004B0B2
[0003d79c] 584f                      addq.w     #4,a7
[0003d79e] 2017                      move.l     (a7),d0
[0003d7a0] 6f02                      ble.s      $0003D7A4
[0003d7a2] 5397                      subq.l     #1,(a7)
[0003d7a4] 93c9                      suba.l     a1,a1
[0003d7a6] 303c 00d5                 move.w     #$00D5,d0
[0003d7aa] 204b                      movea.l    a3,a0
[0003d7ac] 4eb9 0003 8e52            jsr        $00038E52
[0003d7b2] 93c9                      suba.l     a1,a1
[0003d7b4] 303c 00e2                 move.w     #$00E2,d0
[0003d7b8] 204b                      movea.l    a3,a0
[0003d7ba] 4eb9 0003 8e52            jsr        $00038E52
[0003d7c0] 43d7                      lea.l      (a7),a1
[0003d7c2] 7011                      moveq.l    #17,d0
[0003d7c4] 204b                      movea.l    a3,a0
[0003d7c6] 4eb9 0003 8e52            jsr        $00038E52
[0003d7cc] 93c9                      suba.l     a1,a1
[0003d7ce] 303c 00db                 move.w     #$00DB,d0
[0003d7d2] 204b                      movea.l    a3,a0
[0003d7d4] 4eb9 0003 8e52            jsr        $00038E52
[0003d7da] 93c9                      suba.l     a1,a1
[0003d7dc] 7005                      moveq.l    #5,d0
[0003d7de] 204b                      movea.l    a3,a0
[0003d7e0] 4eb9 0003 8e52            jsr        $00038E52
[0003d7e6] 93c9                      suba.l     a1,a1
[0003d7e8] 303c 00d6                 move.w     #$00D6,d0
[0003d7ec] 204b                      movea.l    a3,a0
[0003d7ee] 4eb9 0003 8e52            jsr        $00038E52
[0003d7f4] 204a                      movea.l    a2,a0
[0003d7f6] 4eb9 0005 0330            jsr        $00050330
[0003d7fc] 584f                      addq.w     #4,a7
[0003d7fe] 265f                      movea.l    (a7)+,a3
[0003d800] 245f                      movea.l    (a7)+,a2
[0003d802] 4e75                      rts
Aed_info:
[0003d804] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0003d808] 4fef ffdc                 lea.l      -36(a7),a7
[0003d80c] 41f9 000c 729c            lea.l      $000C729C,a0
[0003d812] 2279 000c 72a4            movea.l    $000C72A4,a1
[0003d818] 4e91                      jsr        (a1)
[0003d81a] 2448                      movea.l    a0,a2
[0003d81c] 200a                      move.l     a2,d0
[0003d81e] 6700 00c0                 beq        $0003D8E0
[0003d822] 2279 0010 1f12            movea.l    ACSblk,a1
[0003d828] 2069 0258                 movea.l    600(a1),a0
[0003d82c] 2668 0014                 movea.l    20(a0),a3
[0003d830] 43ef 0014                 lea.l      20(a7),a1
[0003d834] 303c 00e3                 move.w     #$00E3,d0
[0003d838] 204b                      movea.l    a3,a0
[0003d83a] 4eb9 0003 8e52            jsr        $00038E52
[0003d840] 49ef 0004                 lea.l      4(a7),a4
[0003d844] 202f 0014                 move.l     20(a7),d0
[0003d848] 6a1e                      bpl.s      $0003D868
[0003d84a] 43d7                      lea.l      (a7),a1
[0003d84c] 204b                      movea.l    a3,a0
[0003d84e] 303c 00e9                 move.w     #$00E9,d0
[0003d852] 4eb9 0003 8e52            jsr        $00038E52
[0003d858] 224c                      movea.l    a4,a1
[0003d85a] 303c 00fb                 move.w     #$00FB,d0
[0003d85e] 204b                      movea.l    a3,a0
[0003d860] 4eb9 0003 8e52            jsr        $00038E52
[0003d866] 603c                      bra.s      $0003D8A4
[0003d868] 202f 0014                 move.l     20(a7),d0
[0003d86c] 262f 001c                 move.l     28(a7),d3
[0003d870] 2203                      move.l     d3,d1
[0003d872] 9280                      sub.l      d0,d1
[0003d874] 5281                      addq.l     #1,d1
[0003d876] 2e81                      move.l     d1,(a7)
[0003d878] 28bc ffff fffe            move.l     #$FFFFFFFE,(a4)
[0003d87e] 2800                      move.l     d0,d4
[0003d880] 4bef 0008                 lea.l      8(a7),a5
[0003d884] 601a                      bra.s      $0003D8A0
[0003d886] 2a84                      move.l     d4,(a5)
[0003d888] 224d                      movea.l    a5,a1
[0003d88a] 303c 00ca                 move.w     #$00CA,d0
[0003d88e] 204b                      movea.l    a3,a0
[0003d890] 4eb9 0003 8e52            jsr        $00038E52
[0003d896] 7002                      moveq.l    #2,d0
[0003d898] d0ad 0004                 add.l      4(a5),d0
[0003d89c] d194                      add.l      d0,(a4)
[0003d89e] 5284                      addq.l     #1,d4
[0003d8a0] b684                      cmp.l      d4,d3
[0003d8a2] 6ce2                      bge.s      $0003D886
[0003d8a4] 2f17                      move.l     (a7),-(a7)
[0003d8a6] 43f9 000c 85fd            lea.l      $000C85FD,a1
[0003d8ac] 7004                      moveq.l    #4,d0
[0003d8ae] 206a 0014                 movea.l    20(a2),a0
[0003d8b2] 4eb9 0004 afac            jsr        $0004AFAC
[0003d8b8] 584f                      addq.w     #4,a7
[0003d8ba] 2f14                      move.l     (a4),-(a7)
[0003d8bc] 43f9 000c 85fd            lea.l      $000C85FD,a1
[0003d8c2] 7006                      moveq.l    #6,d0
[0003d8c4] 206a 0014                 movea.l    20(a2),a0
[0003d8c8] 4eb9 0004 afac            jsr        $0004AFAC
[0003d8ce] 584f                      addq.w     #4,a7
[0003d8d0] 204a                      movea.l    a2,a0
[0003d8d2] 4eb9 0005 1292            jsr        $00051292
[0003d8d8] 204a                      movea.l    a2,a0
[0003d8da] 4eb9 0005 0330            jsr        $00050330
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
[0003d8fc] 6f00 00aa                 ble        $0003D9A8
[0003d900] 4231 0800                 clr.b      0(a1,d0.l)
[0003d904] e588                      lsl.l      #2,d0
[0003d906] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003d90c] 2648                      movea.l    a0,a3
[0003d90e] 200b                      move.l     a3,d0
[0003d910] 6700 0096                 beq        $0003D9A8
[0003d914] 49ef 0008                 lea.l      8(a7),a4
[0003d918] 294b 0014                 move.l     a3,20(a4)
[0003d91c] 7801                      moveq.l    #1,d4
[0003d91e] 206f 0020                 movea.l    32(a7),a0
[0003d922] 224b                      movea.l    a3,a1
[0003d924] 22c8                      move.l     a0,(a1)+
[0003d926] 6030                      bra.s      $0003D958
[0003d928] 0c10 000d                 cmpi.b     #$0D,(a0)
[0003d92c] 6612                      bne.s      $0003D940
[0003d92e] 4210                      clr.b      (a0)
[0003d930] 7001                      moveq.l    #1,d0
[0003d932] b083                      cmp.l      d3,d0
[0003d934] 6c1a                      bge.s      $0003D950
[0003d936] 0c28 000a 0001            cmpi.b     #$0A,1(a0)
[0003d93c] 6712                      beq.s      $0003D950
[0003d93e] 6006                      bra.s      $0003D946
[0003d940] 0c10 000a                 cmpi.b     #$0A,(a0)
[0003d944] 660a                      bne.s      $0003D950
[0003d946] 4218                      clr.b      (a0)+
[0003d948] 5284                      addq.l     #1,d4
[0003d94a] 22c8                      move.l     a0,(a1)+
[0003d94c] 5383                      subq.l     #1,d3
[0003d94e] 6008                      bra.s      $0003D958
[0003d950] 5248                      addq.w     #1,a0
[0003d952] 5383                      subq.l     #1,d3
[0003d954] 4a83                      tst.l      d3
[0003d956] 6ed0                      bgt.s      $0003D928
[0003d958] 4a83                      tst.l      d3
[0003d95a] 6ecc                      bgt.s      $0003D928
[0003d95c] 43d7                      lea.l      (a7),a1
[0003d95e] 303c 00e7                 move.w     #$00E7,d0
[0003d962] 204a                      movea.l    a2,a0
[0003d964] 4eb9 0003 8e52            jsr        $00038E52
[0003d96a] 43ef 0004                 lea.l      4(a7),a1
[0003d96e] 303c 00d8                 move.w     #$00D8,d0
[0003d972] 204a                      movea.l    a2,a0
[0003d974] 4eb9 0003 8e52            jsr        $00038E52
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
[0003d99a] 4eb9 0003 8e52            jsr        $00038E52
[0003d9a0] 204b                      movea.l    a3,a0
[0003d9a2] 4eb9 0004 7d6c            jsr        $00047D6C
[0003d9a8] 4fef 0024                 lea.l      36(a7),a7
[0003d9ac] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[0003d9b0] 4e75                      rts
merge:
[0003d9b2] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0003d9b6] 2448                      movea.l    a0,a2
[0003d9b8] 3600                      move.w     d0,d3
[0003d9ba] 93c9                      suba.l     a1,a1
[0003d9bc] 303c 00e0                 move.w     #$00E0,d0
[0003d9c0] 4eb9 0003 8e52            jsr        $00038E52
[0003d9c6] 47f9 000f ff04            lea.l      $000FFF04,a3
[0003d9cc] 204b                      movea.l    a3,a0
[0003d9ce] 223c 0000 2000            move.l     #$00002000,d1
[0003d9d4] 3003                      move.w     d3,d0
[0003d9d6] 4eb9 0007 2a02            jsr        $00072A02
[0003d9dc] 2800                      move.l     d0,d4
[0003d9de] 4a80                      tst.l      d0
[0003d9e0] 6f0a                      ble.s      $0003D9EC
[0003d9e2] 224b                      movea.l    a3,a1
[0003d9e4] 204a                      movea.l    a2,a0
[0003d9e6] 6100 ff02                 bsr        $0003D8EA
[0003d9ea] 60da                      bra.s      $0003D9C6
[0003d9ec] 3003                      move.w     d3,d0
[0003d9ee] 4eb9 0007 29ae            jsr        $000729AE
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
[0003da0c] 4eb9 0007 29f0            jsr        $000729F0
[0003da12] 2600                      move.l     d0,d3
[0003da14] 93c9                      suba.l     a1,a1
[0003da16] 204c                      movea.l    a4,a0
[0003da18] 303c 00d5                 move.w     #$00D5,d0
[0003da1c] 4eb9 0003 8e52            jsr        $00038E52
[0003da22] 93c9                      suba.l     a1,a1
[0003da24] 303c 00ce                 move.w     #$00CE,d0
[0003da28] 204c                      movea.l    a4,a0
[0003da2a] 4eb9 0003 8e52            jsr        $00038E52
[0003da30] 4a83                      tst.l      d3
[0003da32] 6f0a                      ble.s      $0003DA3E
[0003da34] 2003                      move.l     d3,d0
[0003da36] 204c                      movea.l    a4,a0
[0003da38] 6100 ff78                 bsr        $0003D9B2
[0003da3c] 600e                      bra.s      $0003DA4C
[0003da3e] 43f9 000c 8601            lea.l      $000C8601,a1
[0003da44] 204a                      movea.l    a2,a0
[0003da46] 4eb9 0003 ed16            jsr        $0003ED16
[0003da4c] 93c9                      suba.l     a1,a1
[0003da4e] 7006                      moveq.l    #6,d0
[0003da50] 204c                      movea.l    a4,a0
[0003da52] 4eb9 0003 8e52            jsr        $00038E52
[0003da58] 93c9                      suba.l     a1,a1
[0003da5a] 303c 00d6                 move.w     #$00D6,d0
[0003da5e] 204c                      movea.l    a4,a0
[0003da60] 4eb9 0003 8e52            jsr        $00038E52
[0003da66] 204c                      movea.l    a4,a0
[0003da68] 6100 d8ae                 bsr        $0003B318
[0003da6c] 224d                      movea.l    a5,a1
[0003da6e] 41eb 0192                 lea.l      402(a3),a0
[0003da72] 4eb9 0007 6950            jsr        $00076950
[0003da78] 204a                      movea.l    a2,a0
[0003da7a] 6100 d80c                 bsr        $0003B288
[0003da7e] 204a                      movea.l    a2,a0
[0003da80] 6100 d906                 bsr        $0003B388
[0003da84] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003da88] 4e75                      rts
Aed_open:
[0003da8a] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003da8e] 2079 0010 1f12            movea.l    ACSblk,a0
[0003da94] 2468 0258                 movea.l    600(a0),a2
[0003da98] 2652                      movea.l    (a2),a3
[0003da9a] 303c 0080                 move.w     #$0080,d0
[0003da9e] c06b 0294                 and.w      660(a3),d0
[0003daa2] 672e                      beq.s      $0003DAD2
[0003daa4] 43eb 00b8                 lea.l      184(a3),a1
[0003daa8] 41f9 000c 4112            lea.l      $000C4112,a0
[0003daae] 4eb9 0005 ef8c            jsr        $0005EF8C
[0003dab4] 5340                      subq.w     #1,d0
[0003dab6] 6706                      beq.s      $0003DABE
[0003dab8] 5540                      subq.w     #2,d0
[0003daba] 6738                      beq.s      $0003DAF4
[0003dabc] 6014                      bra.s      $0003DAD2
[0003dabe] 006b 0100 0294            ori.w      #$0100,660(a3)
[0003dac4] 204a                      movea.l    a2,a0
[0003dac6] 4eb9 0003 e142            jsr        $0003E142
[0003dacc] 026b feff 0294            andi.w     #$FEFF,660(a3)
[0003dad2] 486b 0182                 pea.l      386(a3)
[0003dad6] 43eb 0192                 lea.l      402(a3),a1
[0003dada] 41eb 0008                 lea.l      8(a3),a0
[0003dade] 4eb9 0005 ff74            jsr        $0005FF74
[0003dae4] 584f                      addq.w     #4,a7
[0003dae6] 2848                      movea.l    a0,a4
[0003dae8] 200c                      move.l     a4,d0
[0003daea] 6708                      beq.s      $0003DAF4
[0003daec] 224c                      movea.l    a4,a1
[0003daee] 204a                      movea.l    a2,a0
[0003daf0] 6100 ff08                 bsr        $0003D9FA
[0003daf4] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003daf8] 4e75                      rts
merge_it:
[0003dafa] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0003dafe] 4fef fff0                 lea.l      -16(a7),a7
[0003db02] 2448                      movea.l    a0,a2
[0003db04] 2649                      movea.l    a1,a3
[0003db06] 4240                      clr.w      d0
[0003db08] 2049                      movea.l    a1,a0
[0003db0a] 4eb9 0007 29f0            jsr        $000729F0
[0003db10] 2600                      move.l     d0,d3
[0003db12] 6b00 00a4                 bmi        $0003DBB8
[0003db16] 266a 0014                 movea.l    20(a2),a3
[0003db1a] 93c9                      suba.l     a1,a1
[0003db1c] 204b                      movea.l    a3,a0
[0003db1e] 303c 00d5                 move.w     #$00D5,d0
[0003db22] 4eb9 0003 8e52            jsr        $00038E52
[0003db28] 93c9                      suba.l     a1,a1
[0003db2a] 303c 00e2                 move.w     #$00E2,d0
[0003db2e] 204b                      movea.l    a3,a0
[0003db30] 4eb9 0003 8e52            jsr        $00038E52
[0003db36] 43d7                      lea.l      (a7),a1
[0003db38] 303c 00d8                 move.w     #$00D8,d0
[0003db3c] 204b                      movea.l    a3,a0
[0003db3e] 4eb9 0003 8e52            jsr        $00038E52
[0003db44] 43ef 0004                 lea.l      4(a7),a1
[0003db48] 303c 00e7                 move.w     #$00E7,d0
[0003db4c] 204b                      movea.l    a3,a0
[0003db4e] 4eb9 0003 8e52            jsr        $00038E52
[0003db54] 2003                      move.l     d3,d0
[0003db56] 204b                      movea.l    a3,a0
[0003db58] 6100 fe58                 bsr        $0003D9B2
[0003db5c] 93c9                      suba.l     a1,a1
[0003db5e] 303c 00db                 move.w     #$00DB,d0
[0003db62] 204b                      movea.l    a3,a0
[0003db64] 4eb9 0003 8e52            jsr        $00038E52
[0003db6a] 93c9                      suba.l     a1,a1
[0003db6c] 7005                      moveq.l    #5,d0
[0003db6e] 204b                      movea.l    a3,a0
[0003db70] 4eb9 0003 8e52            jsr        $00038E52
[0003db76] 43ef 0008                 lea.l      8(a7),a1
[0003db7a] 303c 00d8                 move.w     #$00D8,d0
[0003db7e] 204b                      movea.l    a3,a0
[0003db80] 4eb9 0003 8e52            jsr        $00038E52
[0003db86] 43ef 000c                 lea.l      12(a7),a1
[0003db8a] 303c 00e7                 move.w     #$00E7,d0
[0003db8e] 204b                      movea.l    a3,a0
[0003db90] 4eb9 0003 8e52            jsr        $00038E52
[0003db96] 43d7                      lea.l      (a7),a1
[0003db98] 303c 00e4                 move.w     #$00E4,d0
[0003db9c] 204b                      movea.l    a3,a0
[0003db9e] 4eb9 0003 8e52            jsr        $00038E52
[0003dba4] 93c9                      suba.l     a1,a1
[0003dba6] 303c 00d6                 move.w     #$00D6,d0
[0003dbaa] 204b                      movea.l    a3,a0
[0003dbac] 4eb9 0003 8e52            jsr        $00038E52
[0003dbb2] 204a                      movea.l    a2,a0
[0003dbb4] 6100 d818                 bsr        $0003B3CE
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
[0003dbde] 4eb9 0005 ff74            jsr        $0005FF74
[0003dbe4] 584f                      addq.w     #4,a7
[0003dbe6] 2848                      movea.l    a0,a4
[0003dbe8] 200c                      move.l     a4,d0
[0003dbea] 6708                      beq.s      $0003DBF4
[0003dbec] 224c                      movea.l    a4,a1
[0003dbee] 204a                      movea.l    a2,a0
[0003dbf0] 6100 ff08                 bsr        $0003DAFA
[0003dbf4] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003dbf8] 4e75                      rts
Aed_paste:
[0003dbfa] 323c 8476                 move.w     #$8476,d1
[0003dbfe] 4240                      clr.w      d0
[0003dc00] 2079 0010 1f12            movea.l    ACSblk,a0
[0003dc06] 2068 0258                 movea.l    600(a0),a0
[0003dc0a] 6100 d81a                 bsr        $0003B426
[0003dc0e] 4e75                      rts
Aed_quit:
[0003dc10] 2079 0010 1f12            movea.l    ACSblk,a0
[0003dc16] 2068 0258                 movea.l    600(a0),a0
[0003dc1a] 6100 f17c                 bsr        $0003CD98
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
[0003dc3c] 6700 01da                 beq        $0003DE18
[0003dc40] 7240                      moveq.l    #64,d1
[0003dc42] c26c 0294                 and.w      660(a4),d1
[0003dc46] 6710                      beq.s      $0003DC58
[0003dc48] 204b                      movea.l    a3,a0
[0003dc4a] 303c 00f3                 move.w     #$00F3,d0
[0003dc4e] 93c9                      suba.l     a1,a1
[0003dc50] 4eb9 0003 8e52            jsr        $00038E52
[0003dc56] 600e                      bra.s      $0003DC66
[0003dc58] 93c9                      suba.l     a1,a1
[0003dc5a] 303c 00f4                 move.w     #$00F4,d0
[0003dc5e] 204b                      movea.l    a3,a0
[0003dc60] 4eb9 0003 8e52            jsr        $00038E52
[0003dc66] 7010                      moveq.l    #16,d0
[0003dc68] c06c 0294                 and.w      660(a4),d0
[0003dc6c] 6710                      beq.s      $0003DC7E
[0003dc6e] 93c9                      suba.l     a1,a1
[0003dc70] 204b                      movea.l    a3,a0
[0003dc72] 303c 00f6                 move.w     #$00F6,d0
[0003dc76] 4eb9 0003 8e52            jsr        $00038E52
[0003dc7c] 600e                      bra.s      $0003DC8C
[0003dc7e] 93c9                      suba.l     a1,a1
[0003dc80] 303c 00f5                 move.w     #$00F5,d0
[0003dc84] 204b                      movea.l    a3,a0
[0003dc86] 4eb9 0003 8e52            jsr        $00038E52
[0003dc8c] 7020                      moveq.l    #32,d0
[0003dc8e] c06c 0294                 and.w      660(a4),d0
[0003dc92] 6710                      beq.s      $0003DCA4
[0003dc94] 93c9                      suba.l     a1,a1
[0003dc96] 204b                      movea.l    a3,a0
[0003dc98] 303c 00f7                 move.w     #$00F7,d0
[0003dc9c] 4eb9 0003 8e52            jsr        $00038E52
[0003dca2] 600e                      bra.s      $0003DCB2
[0003dca4] 93c9                      suba.l     a1,a1
[0003dca6] 303c 00f8                 move.w     #$00F8,d0
[0003dcaa] 204b                      movea.l    a3,a0
[0003dcac] 4eb9 0003 8e52            jsr        $00038E52
[0003dcb2] 93c9                      suba.l     a1,a1
[0003dcb4] 303c 00d5                 move.w     #$00D5,d0
[0003dcb8] 204b                      movea.l    a3,a0
[0003dcba] 4eb9 0003 8e52            jsr        $00038E52
[0003dcc0] 4def 0028                 lea.l      40(a7),a6
[0003dcc4] 224e                      movea.l    a6,a1
[0003dcc6] 303c 00e3                 move.w     #$00E3,d0
[0003dcca] 204b                      movea.l    a3,a0
[0003dccc] 4eb9 0003 8e52            jsr        $00038E52
[0003dcd2] 45ef 0018                 lea.l      24(a7),a2
[0003dcd6] 2016                      move.l     (a6),d0
[0003dcd8] 6b32                      bmi.s      $0003DD0C
[0003dcda] 7240                      moveq.l    #64,d1
[0003dcdc] c26c 0294                 and.w      660(a4),d1
[0003dce0] 672a                      beq.s      $0003DD0C
[0003dce2] 93c9                      suba.l     a1,a1
[0003dce4] 204b                      movea.l    a3,a0
[0003dce6] 303c 00e2                 move.w     #$00E2,d0
[0003dcea] 4eb9 0003 8e52            jsr        $00038E52
[0003dcf0] 224e                      movea.l    a6,a1
[0003dcf2] 7011                      moveq.l    #17,d0
[0003dcf4] 204b                      movea.l    a3,a0
[0003dcf6] 4eb9 0003 8e52            jsr        $00038E52
[0003dcfc] 43ee 0004                 lea.l      4(a6),a1
[0003dd00] 303c 00d7                 move.w     #$00D7,d0
[0003dd04] 204b                      movea.l    a3,a0
[0003dd06] 4eb9 0003 8e52            jsr        $00038E52
[0003dd0c] 226f 003c                 movea.l    60(a7),a1
[0003dd10] 303c 00f2                 move.w     #$00F2,d0
[0003dd14] 204b                      movea.l    a3,a0
[0003dd16] 4eb9 0003 8e52            jsr        $00038E52
[0003dd1c] 224a                      movea.l    a2,a1
[0003dd1e] 303c 00e3                 move.w     #$00E3,d0
[0003dd22] 204b                      movea.l    a3,a0
[0003dd24] 4eb9 0003 8e52            jsr        $00038E52
[0003dd2a] 2012                      move.l     (a2),d0
[0003dd2c] 6b24                      bmi.s      $0003DD52
[0003dd2e] 2216                      move.l     (a6),d1
[0003dd30] b280                      cmp.l      d0,d1
[0003dd32] 6626                      bne.s      $0003DD5A
[0003dd34] 242e 0004                 move.l     4(a6),d2
[0003dd38] b4aa 0004                 cmp.l      4(a2),d2
[0003dd3c] 661c                      bne.s      $0003DD5A
[0003dd3e] 206e 0008                 movea.l    8(a6),a0
[0003dd42] b1ea 0008                 cmpa.l     8(a2),a0
[0003dd46] 6612                      bne.s      $0003DD5A
[0003dd48] 226e 000c                 movea.l    12(a6),a1
[0003dd4c] b3ea 000c                 cmpa.l     12(a2),a1
[0003dd50] 6608                      bne.s      $0003DD5A
[0003dd52] 0a6c 0040 0294            eori.w     #$0040,660(a4)
[0003dd58] 607c                      bra.s      $0003DDD6
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
[0003dd8e] 4eb9 0003 8e52            jsr        $00038E52
[0003dd94] 43ea 0008                 lea.l      8(a2),a1
[0003dd98] 303c 00d8                 move.w     #$00D8,d0
[0003dd9c] 204b                      movea.l    a3,a0
[0003dd9e] 4eb9 0003 8e52            jsr        $00038E52
[0003dda4] 43ea 000c                 lea.l      12(a2),a1
[0003dda8] 303c 00e7                 move.w     #$00E7,d0
[0003ddac] 204b                      movea.l    a3,a0
[0003ddae] 4eb9 0003 8e52            jsr        $00038E52
[0003ddb4] 93c9                      suba.l     a1,a1
[0003ddb6] 7005                      moveq.l    #5,d0
[0003ddb8] 204b                      movea.l    a3,a0
[0003ddba] 4eb9 0003 8e52            jsr        $00038E52
[0003ddc0] 7010                      moveq.l    #16,d0
[0003ddc2] 224a                      movea.l    a2,a1
[0003ddc4] 204e                      movea.l    a6,a0
[0003ddc6] 4eb9 0007 6f44            jsr        $00076F44
[0003ddcc] 7008                      moveq.l    #8,d0
[0003ddce] c06c 0294                 and.w      660(a4),d0
[0003ddd2] 6600 fefe                 bne        $0003DCD2
[0003ddd6] 93c9                      suba.l     a1,a1
[0003ddd8] 303c 00db                 move.w     #$00DB,d0
[0003dddc] 204b                      movea.l    a3,a0
[0003ddde] 4eb9 0003 8e52            jsr        $00038E52
[0003dde4] 93c9                      suba.l     a1,a1
[0003dde6] 7005                      moveq.l    #5,d0
[0003dde8] 204b                      movea.l    a3,a0
[0003ddea] 4eb9 0003 8e52            jsr        $00038E52
[0003ddf0] 2016                      move.l     (a6),d0
[0003ddf2] 6b0e                      bmi.s      $0003DE02
[0003ddf4] 224e                      movea.l    a6,a1
[0003ddf6] 204b                      movea.l    a3,a0
[0003ddf8] 303c 00e4                 move.w     #$00E4,d0
[0003ddfc] 4eb9 0003 8e52            jsr        $00038E52
[0003de02] 93c9                      suba.l     a1,a1
[0003de04] 303c 00d6                 move.w     #$00D6,d0
[0003de08] 204b                      movea.l    a3,a0
[0003de0a] 4eb9 0003 8e52            jsr        $00038E52
[0003de10] 206f 0040                 movea.l    64(a7),a0
[0003de14] 6100 d5b8                 bsr        $0003B3CE
[0003de18] 4fef 0044                 lea.l      68(a7),a7
[0003de1c] 4cdf 5c00                 movem.l    (a7)+,a2-a4/a6
[0003de20] 4e75                      rts
Aed_replace:
[0003de22] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003de26] 2079 0010 1f12            movea.l    ACSblk,a0
[0003de2c] 2468 0258                 movea.l    600(a0),a2
[0003de30] 2652                      movea.l    (a2),a3
[0003de32] 4bf9 000c 7668            lea.l      $000C7668,a5
[0003de38] 41ed febc                 lea.l      -324(a5),a0
[0003de3c] 226d fec4                 movea.l    -316(a5),a1
[0003de40] 4e91                      jsr        (a1)
[0003de42] 2848                      movea.l    a0,a4
[0003de44] 200c                      move.l     a4,d0
[0003de46] 6700 0118                 beq        $0003DF60
[0003de4a] 43eb 0396                 lea.l      918(a3),a1
[0003de4e] 7005                      moveq.l    #5,d0
[0003de50] 206c 0014                 movea.l    20(a4),a0
[0003de54] 4eb9 0004 afe0            jsr        $0004AFE0
[0003de5a] 43eb 0496                 lea.l      1174(a3),a1
[0003de5e] 7006                      moveq.l    #6,d0
[0003de60] 206c 0014                 movea.l    20(a4),a0
[0003de64] 4eb9 0004 afe0            jsr        $0004AFE0
[0003de6a] 7020                      moveq.l    #32,d0
[0003de6c] c06b 0294                 and.w      660(a3),d0
[0003de70] 206c 0014                 movea.l    20(a4),a0
[0003de74] 41e8 0138                 lea.l      312(a0),a0
[0003de78] 6100 d4fa                 bsr        $0003B374
[0003de7c] 7040                      moveq.l    #64,d0
[0003de7e] c06b 0294                 and.w      660(a3),d0
[0003de82] 206c 0014                 movea.l    20(a4),a0
[0003de86] 41e8 00d8                 lea.l      216(a0),a0
[0003de8a] 6100 d4e8                 bsr        $0003B374
[0003de8e] 7010                      moveq.l    #16,d0
[0003de90] c06b 0294                 and.w      660(a3),d0
[0003de94] 206c 0014                 movea.l    20(a4),a0
[0003de98] 41e8 0168                 lea.l      360(a0),a0
[0003de9c] 6100 d4d6                 bsr        $0003B374
[0003dea0] 7008                      moveq.l    #8,d0
[0003dea2] c06b 0294                 and.w      660(a3),d0
[0003dea6] 206c 0014                 movea.l    20(a4),a0
[0003deaa] 41e8 0108                 lea.l      264(a0),a0
[0003deae] 6100 d4c4                 bsr        $0003B374
[0003deb2] 204c                      movea.l    a4,a0
[0003deb4] 4eb9 0005 1292            jsr        $00051292
[0003deba] b07c 0011                 cmp.w      #$0011,d0
[0003debe] 6600 0098                 bne        $0003DF58
[0003dec2] 43eb 0396                 lea.l      918(a3),a1
[0003dec6] 7005                      moveq.l    #5,d0
[0003dec8] 206c 0014                 movea.l    20(a4),a0
[0003decc] 4eb9 0004 b154            jsr        $0004B154
[0003ded2] 43eb 0496                 lea.l      1174(a3),a1
[0003ded6] 7006                      moveq.l    #6,d0
[0003ded8] 206c 0014                 movea.l    20(a4),a0
[0003dedc] 4eb9 0004 b154            jsr        $0004B154
[0003dee2] 43eb 0396                 lea.l      918(a3),a1
[0003dee6] 41ed 0224                 lea.l      548(a5),a0
[0003deea] 4eb9 0007 6950            jsr        $00076950
[0003def0] 43eb 0496                 lea.l      1174(a3),a1
[0003def4] 41ed 0324                 lea.l      804(a5),a0
[0003def8] 4eb9 0007 6950            jsr        $00076950
[0003defe] 026b ff87 0294            andi.w     #$FF87,660(a3)
[0003df04] 7001                      moveq.l    #1,d0
[0003df06] 206c 0014                 movea.l    20(a4),a0
[0003df0a] c068 0142                 and.w      322(a0),d0
[0003df0e] 6706                      beq.s      $0003DF16
[0003df10] 006b 0020 0294            ori.w      #$0020,660(a3)
[0003df16] 7001                      moveq.l    #1,d0
[0003df18] 206c 0014                 movea.l    20(a4),a0
[0003df1c] c068 00e2                 and.w      226(a0),d0
[0003df20] 6706                      beq.s      $0003DF28
[0003df22] 006b 0040 0294            ori.w      #$0040,660(a3)
[0003df28] 7001                      moveq.l    #1,d0
[0003df2a] 206c 0014                 movea.l    20(a4),a0
[0003df2e] c068 0172                 and.w      370(a0),d0
[0003df32] 6706                      beq.s      $0003DF3A
[0003df34] 006b 0010 0294            ori.w      #$0010,660(a3)
[0003df3a] 7001                      moveq.l    #1,d0
[0003df3c] 206c 0014                 movea.l    20(a4),a0
[0003df40] c068 0112                 and.w      274(a0),d0
[0003df44] 6706                      beq.s      $0003DF4C
[0003df46] 006b 0008 0294            ori.w      #$0008,660(a3)
[0003df4c] 3b6b 0294 0122            move.w     660(a3),290(a5)
[0003df52] 204a                      movea.l    a2,a0
[0003df54] 6100 fcca                 bsr        $0003DC20
[0003df58] 204c                      movea.l    a4,a0
[0003df5a] 4eb9 0005 0330            jsr        $00050330
[0003df60] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003df64] 4e75                      rts
Aed_replacenext:
[0003df66] 2079 0010 1f12            movea.l    ACSblk,a0
[0003df6c] 2068 0258                 movea.l    600(a0),a0
[0003df70] 6100 fcae                 bsr        $0003DC20
[0003df74] 4e75                      rts
save_text:
[0003df76] 48e7 1e34                 movem.l    d3-d6/a2-a3/a5,-(a7)
[0003df7a] 4fef ffdc                 lea.l      -36(a7),a7
[0003df7e] 2f48 0020                 move.l     a0,32(a7)
[0003df82] 3a00                      move.w     d0,d5
[0003df84] 45f9 000f ff04            lea.l      $000FFF04,a2
[0003df8a] 264a                      movea.l    a2,a3
[0003df8c] 7600                      moveq.l    #0,d3
[0003df8e] 43ef 0010                 lea.l      16(a7),a1
[0003df92] 303c 00e3                 move.w     #$00E3,d0
[0003df96] 206f 0020                 movea.l    32(a7),a0
[0003df9a] 4eb9 0003 8e52            jsr        $00038E52
[0003dfa0] 4bef 000c                 lea.l      12(a7),a5
[0003dfa4] 202f 0010                 move.l     16(a7),d0
[0003dfa8] 6f08                      ble.s      $0003DFB2
[0003dfaa] 2800                      move.l     d0,d4
[0003dfac] 2aaf 0018                 move.l     24(a7),(a5)
[0003dfb0] 6014                      bra.s      $0003DFC6
[0003dfb2] 224d                      movea.l    a5,a1
[0003dfb4] 303c 00e9                 move.w     #$00E9,d0
[0003dfb8] 206f 0020                 movea.l    32(a7),a0
[0003dfbc] 4eb9 0003 8e52            jsr        $00038E52
[0003dfc2] 5395                      subq.l     #1,(a5)
[0003dfc4] 7800                      moveq.l    #0,d4
[0003dfc6] 2e84                      move.l     d4,(a7)
[0003dfc8] 6000 0076                 bra.w      $0003E040
[0003dfcc] 43d7                      lea.l      (a7),a1
[0003dfce] 303c 00ca                 move.w     #$00CA,d0
[0003dfd2] 206f 0020                 movea.l    32(a7),a0
[0003dfd6] 4eb9 0003 8e52            jsr        $00038E52
[0003dfdc] 2017                      move.l     (a7),d0
[0003dfde] b095                      cmp.l      (a5),d0
[0003dfe0] 6606                      bne.s      $0003DFE8
[0003dfe2] 282f 0004                 move.l     4(a7),d4
[0003dfe6] 6006                      bra.s      $0003DFEE
[0003dfe8] 7802                      moveq.l    #2,d4
[0003dfea] d8af 0004                 add.l      4(a7),d4
[0003dfee] 2003                      move.l     d3,d0
[0003dff0] d084                      add.l      d4,d0
[0003dff2] b0bc 0000 2000            cmp.l      #$00002000,d0
[0003dff8] 6d16                      blt.s      $0003E010
[0003dffa] 204a                      movea.l    a2,a0
[0003dffc] 2203                      move.l     d3,d1
[0003dffe] 3005                      move.w     d5,d0
[0003e000] 4eb9 0007 2a8e            jsr        $00072A8E
[0003e006] 2c00                      move.l     d0,d6
[0003e008] b680                      cmp.l      d0,d3
[0003e00a] 6652                      bne.s      $0003E05E
[0003e00c] 264a                      movea.l    a2,a3
[0003e00e] 7600                      moveq.l    #0,d3
[0003e010] d684                      add.l      d4,d3
[0003e012] 202f 0004                 move.l     4(a7),d0
[0003e016] 6f0c                      ble.s      $0003E024
[0003e018] 226f 0008                 movea.l    8(a7),a1
[0003e01c] 204b                      movea.l    a3,a0
[0003e01e] 4eb9 0007 6a1a            jsr        $00076A1A
[0003e024] 47f2 3000                 lea.l      0(a2,d3.w),a3
[0003e028] 2017                      move.l     (a7),d0
[0003e02a] b095                      cmp.l      (a5),d0
[0003e02c] 6710                      beq.s      $0003E03E
[0003e02e] 43f9 000c 860e            lea.l      $000C860E,a1
[0003e034] 41eb fffe                 lea.l      -2(a3),a0
[0003e038] 4eb9 0007 6950            jsr        $00076950
[0003e03e] 5297                      addq.l     #1,(a7)
[0003e040] 2017                      move.l     (a7),d0
[0003e042] b095                      cmp.l      (a5),d0
[0003e044] 6f00 ff86                 ble.w      $0003DFCC
[0003e048] 4a83                      tst.l      d3
[0003e04a] 6f2e                      ble.s      $0003E07A
[0003e04c] 204a                      movea.l    a2,a0
[0003e04e] 2203                      move.l     d3,d1
[0003e050] 3005                      move.w     d5,d0
[0003e052] 4eb9 0007 2a8e            jsr        $00072A8E
[0003e058] 2c00                      move.l     d0,d6
[0003e05a] b680                      cmp.l      d0,d3
[0003e05c] 671c                      beq.s      $0003E07A
[0003e05e] 91c8                      suba.l     a0,a0
[0003e060] 700a                      moveq.l    #10,d0
[0003e062] 2279 0010 1f12            movea.l    ACSblk,a1
[0003e068] 2269 03d6                 movea.l    982(a1),a1
[0003e06c] 4e91                      jsr        (a1)
[0003e06e] 3005                      move.w     d5,d0
[0003e070] 4eb9 0007 29ae            jsr        $000729AE
[0003e076] 70ff                      moveq.l    #-1,d0
[0003e078] 600a                      bra.s      $0003E084
[0003e07a] 3005                      move.w     d5,d0
[0003e07c] 4eb9 0007 29ae            jsr        $000729AE
[0003e082] 4240                      clr.w      d0
[0003e084] 4fef 0024                 lea.l      36(a7),a7
[0003e088] 4cdf 2c78                 movem.l    (a7)+,d3-d6/a2-a3/a5
[0003e08c] 4e75                      rts
save_it:
[0003e08e] 48e7 182c                 movem.l    d3-d4/a2/a4-a5,-(a7)
[0003e092] 4fef ff00                 lea.l      -256(a7),a7
[0003e096] 2a48                      movea.l    a0,a5
[0003e098] 2449                      movea.l    a1,a2
[0003e09a] 41d7                      lea.l      (a7),a0
[0003e09c] 4eb9 0007 6950            jsr        $00076950
[0003e0a2] 702e                      moveq.l    #46,d0
[0003e0a4] 41d7                      lea.l      (a7),a0
[0003e0a6] 4eb9 0007 68e2            jsr        $000768E2
[0003e0ac] 2848                      movea.l    a0,a4
[0003e0ae] 200c                      move.l     a4,d0
[0003e0b0] 6610                      bne.s      $0003E0C2
[0003e0b2] 43f9 000c 8611            lea.l      $000C8611,a1
[0003e0b8] 41d7                      lea.l      (a7),a0
[0003e0ba] 4eb9 0007 6886            jsr        $00076886
[0003e0c0] 600e                      bra.s      $0003E0D0
[0003e0c2] 43f9 000c 8611            lea.l      $000C8611,a1
[0003e0c8] 204c                      movea.l    a4,a0
[0003e0ca] 4eb9 0007 6950            jsr        $00076950
[0003e0d0] 43d7                      lea.l      (a7),a1
[0003e0d2] 204a                      movea.l    a2,a0
[0003e0d4] 4240                      clr.w      d0
[0003e0d6] 4eb9 0007 2a18            jsr        $00072A18
[0003e0dc] 2600                      move.l     d0,d3
[0003e0de] 204a                      movea.l    a2,a0
[0003e0e0] 4240                      clr.w      d0
[0003e0e2] 4eb9 0007 29be            jsr        $000729BE
[0003e0e8] 2800                      move.l     d0,d4
[0003e0ea] 4a80                      tst.l      d0
[0003e0ec] 6b3e                      bmi.s      $0003E12C
[0003e0ee] 204d                      movea.l    a5,a0
[0003e0f0] 6100 fe84                 bsr        $0003DF76
[0003e0f4] 4a40                      tst.w      d0
[0003e0f6] 6716                      beq.s      $0003E10E
[0003e0f8] 204a                      movea.l    a2,a0
[0003e0fa] 4eb9 0007 29d0            jsr        $000729D0
[0003e100] 224a                      movea.l    a2,a1
[0003e102] 41d7                      lea.l      (a7),a0
[0003e104] 4240                      clr.w      d0
[0003e106] 4eb9 0007 2a18            jsr        $00072A18
[0003e10c] 600c                      bra.s      $0003E11A
[0003e10e] 4a83                      tst.l      d3
[0003e110] 6608                      bne.s      $0003E11A
[0003e112] 41d7                      lea.l      (a7),a0
[0003e114] 4eb9 0007 29d0            jsr        $000729D0
[0003e11a] 204a                      movea.l    a2,a0
[0003e11c] 4eb9 0005 84d8            jsr        $000584D8
[0003e122] 204a                      movea.l    a2,a0
[0003e124] 4eb9 0005 6a66            jsr        $00056A66
[0003e12a] 600c                      bra.s      $0003E138
[0003e12c] 224a                      movea.l    a2,a1
[0003e12e] 41d7                      lea.l      (a7),a0
[0003e130] 4240                      clr.w      d0
[0003e132] 4eb9 0007 2a18            jsr        $00072A18
[0003e138] 4fef 0100                 lea.l      256(a7),a7
[0003e13c] 4cdf 3418                 movem.l    (a7)+,d3-d4/a2/a4-a5
[0003e140] 4e75                      rts
ed_save:
[0003e142] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003e146] 2448                      movea.l    a0,a2
[0003e148] 2850                      movea.l    (a0),a4
[0003e14a] 2654                      movea.l    (a4),a3
[0003e14c] 200b                      move.l     a3,d0
[0003e14e] 671c                      beq.s      $0003E16C
[0003e150] 322c 0294                 move.w     660(a4),d1
[0003e154] c27c 0100                 and.w      #$0100,d1
[0003e158] 6612                      bne.s      $0003E16C
[0003e15a] 2248                      movea.l    a0,a1
[0003e15c] 2a6b 0004                 movea.l    4(a3),a5
[0003e160] 204b                      movea.l    a3,a0
[0003e162] 303c 00d2                 move.w     #$00D2,d0
[0003e166] 4e95                      jsr        (a5)
[0003e168] 5340                      subq.w     #1,d0
[0003e16a] 674e                      beq.s      $0003E1BA
[0003e16c] 47ec 0192                 lea.l      402(a4),a3
[0003e170] 1013                      move.b     (a3),d0
[0003e172] 660a                      bne.s      $0003E17E
[0003e174] 204a                      movea.l    a2,a0
[0003e176] 4eb9 0003 e1d0            jsr        $0003E1D0
[0003e17c] 603c                      bra.s      $0003E1BA
[0003e17e] 286a 0014                 movea.l    20(a2),a4
[0003e182] 93c9                      suba.l     a1,a1
[0003e184] 303c 00d5                 move.w     #$00D5,d0
[0003e188] 204c                      movea.l    a4,a0
[0003e18a] 4eb9 0003 8e52            jsr        $00038E52
[0003e190] 93c9                      suba.l     a1,a1
[0003e192] 303c 00e2                 move.w     #$00E2,d0
[0003e196] 204c                      movea.l    a4,a0
[0003e198] 4eb9 0003 8e52            jsr        $00038E52
[0003e19e] 93c9                      suba.l     a1,a1
[0003e1a0] 303c 00d6                 move.w     #$00D6,d0
[0003e1a4] 204c                      movea.l    a4,a0
[0003e1a6] 4eb9 0003 8e52            jsr        $00038E52
[0003e1ac] 224b                      movea.l    a3,a1
[0003e1ae] 204c                      movea.l    a4,a0
[0003e1b0] 6100 fedc                 bsr        $0003E08E
[0003e1b4] 204a                      movea.l    a2,a0
[0003e1b6] 6100 d1d0                 bsr        $0003B388
[0003e1ba] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003e1be] 4e75                      rts
Aed_save:
[0003e1c0] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e1c6] 2068 0258                 movea.l    600(a0),a0
[0003e1ca] 6100 ff76                 bsr        $0003E142
[0003e1ce] 4e75                      rts
ed_saveas:
[0003e1d0] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003e1d4] 4fef fff0                 lea.l      -16(a7),a7
[0003e1d8] 2448                      movea.l    a0,a2
[0003e1da] 266a 0014                 movea.l    20(a2),a3
[0003e1de] 43d7                      lea.l      (a7),a1
[0003e1e0] 303c 00e3                 move.w     #$00E3,d0
[0003e1e4] 204b                      movea.l    a3,a0
[0003e1e6] 4eb9 0003 8e52            jsr        $00038E52
[0003e1ec] 4243                      clr.w      d3
[0003e1ee] 2017                      move.l     (a7),d0
[0003e1f0] 6b40                      bmi.s      $0003E232
[0003e1f2] 41f9 000c 406c            lea.l      $000C406C,a0
[0003e1f8] 7001                      moveq.l    #1,d0
[0003e1fa] 4eb9 0005 17fe            jsr        $000517FE
[0003e200] 5540                      subq.w     #2,d0
[0003e202] 662c                      bne.s      $0003E230
[0003e204] 93c9                      suba.l     a1,a1
[0003e206] 303c 00d5                 move.w     #$00D5,d0
[0003e20a] 204b                      movea.l    a3,a0
[0003e20c] 4eb9 0003 8e52            jsr        $00038E52
[0003e212] 93c9                      suba.l     a1,a1
[0003e214] 303c 00e2                 move.w     #$00E2,d0
[0003e218] 204b                      movea.l    a3,a0
[0003e21a] 4eb9 0003 8e52            jsr        $00038E52
[0003e220] 93c9                      suba.l     a1,a1
[0003e222] 303c 00d6                 move.w     #$00D6,d0
[0003e226] 204b                      movea.l    a3,a0
[0003e228] 4eb9 0003 8e52            jsr        $00038E52
[0003e22e] 6002                      bra.s      $0003E232
[0003e230] 7601                      moveq.l    #1,d3
[0003e232] 2852                      movea.l    (a2),a4
[0003e234] 43ec 0192                 lea.l      402(a4),a1
[0003e238] 41f9 000c 7688            lea.l      $000C7688,a0
[0003e23e] 4eb9 0007 6950            jsr        $00076950
[0003e244] 486c 0182                 pea.l      386(a4)
[0003e248] 43ec 0192                 lea.l      402(a4),a1
[0003e24c] 41ec 0048                 lea.l      72(a4),a0
[0003e250] 4eb9 0005 ff74            jsr        $0005FF74
[0003e256] 584f                      addq.w     #4,a7
[0003e258] 2a48                      movea.l    a0,a5
[0003e25a] 200d                      move.l     a5,d0
[0003e25c] 6724                      beq.s      $0003E282
[0003e25e] 224d                      movea.l    a5,a1
[0003e260] 204b                      movea.l    a3,a0
[0003e262] 6100 fe2a                 bsr        $0003E08E
[0003e266] 4a43                      tst.w      d3
[0003e268] 6618                      bne.s      $0003E282
[0003e26a] 224d                      movea.l    a5,a1
[0003e26c] 41ec 0192                 lea.l      402(a4),a0
[0003e270] 4eb9 0007 6950            jsr        $00076950
[0003e276] 204a                      movea.l    a2,a0
[0003e278] 6100 d00e                 bsr        $0003B288
[0003e27c] 204a                      movea.l    a2,a0
[0003e27e] 6100 d108                 bsr        $0003B388
[0003e282] 4fef 0010                 lea.l      16(a7),a7
[0003e286] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003e28a] 4e75                      rts
Aed_saveas:
[0003e28c] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e292] 2068 0258                 movea.l    600(a0),a0
[0003e296] 6100 ff38                 bsr        $0003E1D0
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
[0003e2bc] 4eb9 0003 8e52            jsr        $00038E52
[0003e2c2] 70ff                      moveq.l    #-1,d0
[0003e2c4] d0af 001c                 add.l      28(a7),d0
[0003e2c8] 2e80                      move.l     d0,(a7)
[0003e2ca] 43d7                      lea.l      (a7),a1
[0003e2cc] 204a                      movea.l    a2,a0
[0003e2ce] 303c 00ca                 move.w     #$00CA,d0
[0003e2d2] 4eb9 0003 8e52            jsr        $00038E52
[0003e2d8] 49ef 000c                 lea.l      12(a7),a4
[0003e2dc] 224c                      movea.l    a4,a1
[0003e2de] 303c 00e3                 move.w     #$00E3,d0
[0003e2e2] 204a                      movea.l    a2,a0
[0003e2e4] 4eb9 0003 8e52            jsr        $00038E52
[0003e2ea] 2014                      move.l     (a4),d0
[0003e2ec] 664c                      bne.s      $0003E33A
[0003e2ee] 222c 0004                 move.l     4(a4),d1
[0003e2f2] 6646                      bne.s      $0003E33A
[0003e2f4] 242c 0008                 move.l     8(a4),d2
[0003e2f8] 9480                      sub.l      d0,d2
[0003e2fa] 5282                      addq.l     #1,d2
[0003e2fc] 206f 001c                 movea.l    28(a7),a0
[0003e300] b1c2                      cmpa.l     d2,a0
[0003e302] 6636                      bne.s      $0003E33A
[0003e304] 226c 000c                 movea.l    12(a4),a1
[0003e308] b3ef 0004                 cmpa.l     4(a7),a1
[0003e30c] 662c                      bne.s      $0003E33A
[0003e30e] 204a                      movea.l    a2,a0
[0003e310] 303c 00e2                 move.w     #$00E2,d0
[0003e314] 93c9                      suba.l     a1,a1
[0003e316] 4eb9 0003 8e52            jsr        $00038E52
[0003e31c] 93c9                      suba.l     a1,a1
[0003e31e] 303c 00db                 move.w     #$00DB,d0
[0003e322] 204a                      movea.l    a2,a0
[0003e324] 4eb9 0003 8e52            jsr        $00038E52
[0003e32a] 93c9                      suba.l     a1,a1
[0003e32c] 303c 00d6                 move.w     #$00D6,d0
[0003e330] 204a                      movea.l    a2,a0
[0003e332] 4eb9 0003 8e52            jsr        $00038E52
[0003e338] 6056                      bra.s      $0003E390
[0003e33a] 2014                      move.l     (a4),d0
[0003e33c] 6b0e                      bmi.s      $0003E34C
[0003e33e] 93c9                      suba.l     a1,a1
[0003e340] 204a                      movea.l    a2,a0
[0003e342] 303c 00e2                 move.w     #$00E2,d0
[0003e346] 4eb9 0003 8e52            jsr        $00038E52
[0003e34c] 70ff                      moveq.l    #-1,d0
[0003e34e] d0af 001c                 add.l      28(a7),d0
[0003e352] 2e80                      move.l     d0,(a7)
[0003e354] 2940 0008                 move.l     d0,8(a4)
[0003e358] 43d7                      lea.l      (a7),a1
[0003e35a] 204a                      movea.l    a2,a0
[0003e35c] 303c 00ca                 move.w     #$00CA,d0
[0003e360] 4eb9 0003 8e52            jsr        $00038E52
[0003e366] 7000                      moveq.l    #0,d0
[0003e368] 2940 0004                 move.l     d0,4(a4)
[0003e36c] 2880                      move.l     d0,(a4)
[0003e36e] 296f 0004 000c            move.l     4(a7),12(a4)
[0003e374] 93c9                      suba.l     a1,a1
[0003e376] 303c 00d5                 move.w     #$00D5,d0
[0003e37a] 204a                      movea.l    a2,a0
[0003e37c] 4eb9 0003 8e52            jsr        $00038E52
[0003e382] 224c                      movea.l    a4,a1
[0003e384] 303c 00e4                 move.w     #$00E4,d0
[0003e388] 204a                      movea.l    a2,a0
[0003e38a] 4eb9 0003 8e52            jsr        $00038E52
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
[0003e3b8] 4eb9 0003 8e52            jsr        $00038E52
[0003e3be] 93c9                      suba.l     a1,a1
[0003e3c0] 303c 00db                 move.w     #$00DB,d0
[0003e3c4] 204a                      movea.l    a2,a0
[0003e3c6] 4eb9 0003 8e52            jsr        $00038E52
[0003e3cc] 47ef 0010                 lea.l      16(a7),a3
[0003e3d0] 224b                      movea.l    a3,a1
[0003e3d2] 303c 00d8                 move.w     #$00D8,d0
[0003e3d6] 204a                      movea.l    a2,a0
[0003e3d8] 4eb9 0003 8e52            jsr        $00038E52
[0003e3de] 49ef 000c                 lea.l      12(a7),a4
[0003e3e2] 224c                      movea.l    a4,a1
[0003e3e4] 303c 00e7                 move.w     #$00E7,d0
[0003e3e8] 204a                      movea.l    a2,a0
[0003e3ea] 4eb9 0003 8e52            jsr        $00038E52
[0003e3f0] 2e93                      move.l     (a3),(a7)
[0003e3f2] 43d7                      lea.l      (a7),a1
[0003e3f4] 303c 00ca                 move.w     #$00CA,d0
[0003e3f8] 204a                      movea.l    a2,a0
[0003e3fa] 4eb9 0003 8e52            jsr        $00038E52
[0003e400] 2014                      move.l     (a4),d0
[0003e402] 6f78                      ble.s      $0003E47C
[0003e404] b0af 0004                 cmp.l      4(a7),d0
[0003e408] 6c72                      bge.s      $0003E47C
[0003e40a] 4df9 000c 83ae            lea.l      $000C83AE,a6
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
[0003e442] 4eb9 0003 8e52            jsr        $00038E52
[0003e448] 224b                      movea.l    a3,a1
[0003e44a] 7011                      moveq.l    #17,d0
[0003e44c] 204a                      movea.l    a2,a0
[0003e44e] 4eb9 0003 8e52            jsr        $00038E52
[0003e454] 224c                      movea.l    a4,a1
[0003e456] 303c 00d7                 move.w     #$00D7,d0
[0003e45a] 204a                      movea.l    a2,a0
[0003e45c] 4eb9 0003 8e52            jsr        $00038E52
[0003e462] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e468] 2068 0258                 movea.l    600(a0),a0
[0003e46c] 6100 cf60                 bsr        $0003B3CE
[0003e470] 93c9                      suba.l     a1,a1
[0003e472] 7005                      moveq.l    #5,d0
[0003e474] 204a                      movea.l    a2,a0
[0003e476] 4eb9 0003 8e52            jsr        $00038E52
[0003e47c] 4fef 0014                 lea.l      20(a7),a7
[0003e480] 4cdf 5c00                 movem.l    (a7)+,a2-a4/a6
[0003e484] 4e75                      rts
Aed_undo:
[0003e486] 323c 800f                 move.w     #$800F,d1
[0003e48a] 4240                      clr.w      d0
[0003e48c] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e492] 2068 0258                 movea.l    600(a0),a0
[0003e496] 6100 cf8e                 bsr        $0003B426
[0003e49a] 4e75                      rts
Aed_option:
[0003e49c] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003e4a0] 4fef fff0                 lea.l      -16(a7),a7
[0003e4a4] 41f9 000c 7482            lea.l      $000C7482,a0
[0003e4aa] 2279 000c 748a            movea.l    $000C748A,a1
[0003e4b0] 4e91                      jsr        (a1)
[0003e4b2] 2448                      movea.l    a0,a2
[0003e4b4] 200a                      move.l     a2,d0
[0003e4b6] 6700 0226                 beq        $0003E6DE
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
[0003e4fc] 4eb9 0003 8e52            jsr        $00038E52
[0003e502] 302f 0004                 move.w     4(a7),d0
[0003e506] 6716                      beq.s      $0003E51E
[0003e508] 206a 0014                 movea.l    20(a2),a0
[0003e50c] 0068 0001 012a            ori.w      #$0001,298(a0)
[0003e512] 206a 0014                 movea.l    20(a2),a0
[0003e516] 0268 fffe 00fa            andi.w     #$FFFE,250(a0)
[0003e51c] 6014                      bra.s      $0003E532
[0003e51e] 206a 0014                 movea.l    20(a2),a0
[0003e522] 0068 0001 00fa            ori.w      #$0001,250(a0)
[0003e528] 206a 0014                 movea.l    20(a2),a0
[0003e52c] 0268 fffe 012a            andi.w     #$FFFE,298(a0)
[0003e532] 43ef 0006                 lea.l      6(a7),a1
[0003e536] 303c 00f0                 move.w     #$00F0,d0
[0003e53a] 204b                      movea.l    a3,a0
[0003e53c] 4eb9 0003 8e52            jsr        $00038E52
[0003e542] 3f2f 0006                 move.w     6(a7),-(a7)
[0003e546] 43f9 000c 8616            lea.l      $000C8616,a1
[0003e54c] 7008                      moveq.l    #8,d0
[0003e54e] 206a 0014                 movea.l    20(a2),a0
[0003e552] 4eb9 0004 afac            jsr        $0004AFAC
[0003e558] 544f                      addq.w     #2,a7
[0003e55a] 43ec 0182                 lea.l      386(a4),a1
[0003e55e] 7012                      moveq.l    #18,d0
[0003e560] 206a 0014                 movea.l    20(a2),a0
[0003e564] 4eb9 0004 afe0            jsr        $0004AFE0
[0003e56a] 43ec 0697                 lea.l      1687(a4),a1
[0003e56e] 7011                      moveq.l    #17,d0
[0003e570] 206a 0014                 movea.l    20(a2),a0
[0003e574] 4eb9 0004 afe0            jsr        $0004AFE0
[0003e57a] 43d7                      lea.l      (a7),a1
[0003e57c] 303c 0107                 move.w     #$0107,d0
[0003e580] 204b                      movea.l    a3,a0
[0003e582] 4eb9 0003 8e52            jsr        $00038E52
[0003e588] 2257                      movea.l    (a7),a1
[0003e58a] 7010                      moveq.l    #16,d0
[0003e58c] 206a 0014                 movea.l    20(a2),a0
[0003e590] 4eb9 0004 afe0            jsr        $0004AFE0
[0003e596] 204a                      movea.l    a2,a0
[0003e598] 4eb9 0005 1292            jsr        $00051292
[0003e59e] b07c 0014                 cmp.w      #$0014,d0
[0003e5a2] 6600 0132                 bne        $0003E6D6
[0003e5a6] 43d7                      lea.l      (a7),a1
[0003e5a8] 7003                      moveq.l    #3,d0
[0003e5aa] 206a 0014                 movea.l    20(a2),a0
[0003e5ae] 41e8 0180                 lea.l      384(a0),a0
[0003e5b2] 4eb9 0005 e010            jsr        $0005E010
[0003e5b8] 2257                      movea.l    (a7),a1
[0003e5ba] 303c 0106                 move.w     #$0106,d0
[0003e5be] 204b                      movea.l    a3,a0
[0003e5c0] 4eb9 0003 8e52            jsr        $00038E52
[0003e5c6] 486f 0006                 pea.l      6(a7)
[0003e5ca] 43f9 000c 8619            lea.l      $000C8619,a1
[0003e5d0] 7008                      moveq.l    #8,d0
[0003e5d2] 206a 0014                 movea.l    20(a2),a0
[0003e5d6] 4eb9 0004 b0b2            jsr        $0004B0B2
[0003e5dc] 584f                      addq.w     #4,a7
[0003e5de] 43ec 0182                 lea.l      386(a4),a1
[0003e5e2] 7012                      moveq.l    #18,d0
[0003e5e4] 206a 0014                 movea.l    20(a2),a0
[0003e5e8] 4eb9 0004 b154            jsr        $0004B154
[0003e5ee] 43ec 0697                 lea.l      1687(a4),a1
[0003e5f2] 7011                      moveq.l    #17,d0
[0003e5f4] 206a 0014                 movea.l    20(a2),a0
[0003e5f8] 4eb9 0004 b154            jsr        $0004B154
[0003e5fe] 102c 0697                 move.b     1687(a4),d0
[0003e602] 6728                      beq.s      $0003E62C
[0003e604] 41ec 0697                 lea.l      1687(a4),a0
[0003e608] 4eb9 0007 6bc4            jsr        $00076BC4
[0003e60e] 4eb9 0007 69b0            jsr        $000769B0
[0003e614] 600c                      bra.s      $0003E622
[0003e616] 41f4 0000                 lea.l      0(a4,d0.w),a0
[0003e61a] 117c 0020 0697            move.b     #$20,1687(a0)
[0003e620] 5240                      addq.w     #1,d0
[0003e622] b07c 0008                 cmp.w      #$0008,d0
[0003e626] 6dee                      blt.s      $0003E616
[0003e628] 422c 069f                 clr.b      1695(a4)
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
[0003e65c] 4eb9 0007 6950            jsr        $00076950
[0003e662] 93c9                      suba.l     a1,a1
[0003e664] 303c 00d5                 move.w     #$00D5,d0
[0003e668] 204b                      movea.l    a3,a0
[0003e66a] 4eb9 0003 8e52            jsr        $00038E52
[0003e670] 43f9 000c 7676            lea.l      $000C7676,a1
[0003e676] 303c 00fe                 move.w     #$00FE,d0
[0003e67a] 204b                      movea.l    a3,a0
[0003e67c] 4eb9 0003 8e52            jsr        $00038E52
[0003e682] 43ef 0006                 lea.l      6(a7),a1
[0003e686] 303c 00ec                 move.w     #$00EC,d0
[0003e68a] 204b                      movea.l    a3,a0
[0003e68c] 4eb9 0003 8e52            jsr        $00038E52
[0003e692] 7001                      moveq.l    #1,d0
[0003e694] 206a 0014                 movea.l    20(a2),a0
[0003e698] c068 00fa                 and.w      250(a0),d0
[0003e69c] 6710                      beq.s      $0003E6AE
[0003e69e] 93c9                      suba.l     a1,a1
[0003e6a0] 204b                      movea.l    a3,a0
[0003e6a2] 303c 00e0                 move.w     #$00E0,d0
[0003e6a6] 4eb9 0003 8e52            jsr        $00038E52
[0003e6ac] 600e                      bra.s      $0003E6BC
[0003e6ae] 93c9                      suba.l     a1,a1
[0003e6b0] 303c 00e1                 move.w     #$00E1,d0
[0003e6b4] 204b                      movea.l    a3,a0
[0003e6b6] 4eb9 0003 8e52            jsr        $00038E52
[0003e6bc] 93c9                      suba.l     a1,a1
[0003e6be] 7006                      moveq.l    #6,d0
[0003e6c0] 204b                      movea.l    a3,a0
[0003e6c2] 4eb9 0003 8e52            jsr        $00038E52
[0003e6c8] 93c9                      suba.l     a1,a1
[0003e6ca] 303c 00d6                 move.w     #$00D6,d0
[0003e6ce] 204b                      movea.l    a3,a0
[0003e6d0] 4eb9 0003 8e52            jsr        $00038E52
[0003e6d6] 204a                      movea.l    a2,a0
[0003e6d8] 4eb9 0005 0330            jsr        $00050330
[0003e6de] 4fef 0010                 lea.l      16(a7),a7
[0003e6e2] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003e6e6] 4e75                      rts
Aed_wrap:
[0003e6e8] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0003e6ec] 4fef ffd6                 lea.l      -42(a7),a7
[0003e6f0] 45f9 000c 83ce            lea.l      $000C83CE,a2
[0003e6f6] 41ea f1f8                 lea.l      -3592(a2),a0
[0003e6fa] 226a f200                 movea.l    -3584(a2),a1
[0003e6fe] 4e91                      jsr        (a1)
[0003e700] 2f48 0026                 move.l     a0,38(a7)
[0003e704] 6700 018a                 beq        $0003E890
[0003e708] 3f2a f3ba                 move.w     -3142(a2),-(a7)
[0003e70c] 43f9 000c 8616            lea.l      $000C8616,a1
[0003e712] 7003                      moveq.l    #3,d0
[0003e714] 2068 0014                 movea.l    20(a0),a0
[0003e718] 4eb9 0004 afac            jsr        $0004AFAC
[0003e71e] 544f                      addq.w     #2,a7
[0003e720] 206f 0026                 movea.l    38(a7),a0
[0003e724] 4eb9 0005 1292            jsr        $00051292
[0003e72a] 5b40                      subq.w     #5,d0
[0003e72c] 6600 0158                 bne        $0003E886
[0003e730] 47ef 0024                 lea.l      36(a7),a3
[0003e734] 4853                      pea.l      (a3)
[0003e736] 43f9 000c 8616            lea.l      $000C8616,a1
[0003e73c] 7003                      moveq.l    #3,d0
[0003e73e] 206f 002a                 movea.l    42(a7),a0
[0003e742] 2068 0014                 movea.l    20(a0),a0
[0003e746] 4eb9 0004 b0b2            jsr        $0004B0B2
[0003e74c] 584f                      addq.w     #4,a7
[0003e74e] 3013                      move.w     (a3),d0
[0003e750] 6f00 0134                 ble        $0003E886
[0003e754] 3540 f3ba                 move.w     d0,-3142(a2)
[0003e758] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e75e] 2268 0258                 movea.l    600(a0),a1
[0003e762] 2869 0014                 movea.l    20(a1),a4
[0003e766] 43ef 0010                 lea.l      16(a7),a1
[0003e76a] 204c                      movea.l    a4,a0
[0003e76c] 303c 00e3                 move.w     #$00E3,d0
[0003e770] 4eb9 0003 8e52            jsr        $00038E52
[0003e776] 202f 0010                 move.l     16(a7),d0
[0003e77a] 6b18                      bmi.s      $0003E794
[0003e77c] 2600                      move.l     d0,d3
[0003e77e] 2f6f 0018 000c            move.l     24(a7),12(a7)
[0003e784] 93c9                      suba.l     a1,a1
[0003e786] 204c                      movea.l    a4,a0
[0003e788] 303c 00e2                 move.w     #$00E2,d0
[0003e78c] 4eb9 0003 8e52            jsr        $00038E52
[0003e792] 6016                      bra.s      $0003E7AA
[0003e794] 7600                      moveq.l    #0,d3
[0003e796] 43ef 000c                 lea.l      12(a7),a1
[0003e79a] 303c 00e9                 move.w     #$00E9,d0
[0003e79e] 204c                      movea.l    a4,a0
[0003e7a0] 4eb9 0003 8e52            jsr        $00038E52
[0003e7a6] 53af 000c                 subq.l     #1,12(a7)
[0003e7aa] 93c9                      suba.l     a1,a1
[0003e7ac] 303c 00d5                 move.w     #$00D5,d0
[0003e7b0] 204c                      movea.l    a4,a0
[0003e7b2] 4eb9 0003 8e52            jsr        $00038E52
[0003e7b8] 43ef 0020                 lea.l      32(a7),a1
[0003e7bc] 303c 0107                 move.w     #$0107,d0
[0003e7c0] 204c                      movea.l    a4,a0
[0003e7c2] 4eb9 0003 8e52            jsr        $00038E52
[0003e7c8] 2e83                      move.l     d3,(a7)
[0003e7ca] 43d7                      lea.l      (a7),a1
[0003e7cc] 303c 00ca                 move.w     #$00CA,d0
[0003e7d0] 204c                      movea.l    a4,a0
[0003e7d2] 4eb9 0003 8e52            jsr        $00038E52
[0003e7d8] 382f 0006                 move.w     6(a7),d4
[0003e7dc] b853                      cmp.w      (a3),d4
[0003e7de] 6f4e                      ble.s      $0003E82E
[0003e7e0] 3813                      move.w     (a3),d4
[0003e7e2] 2a6f 0008                 movea.l    8(a7),a5
[0003e7e6] dac4                      adda.w     d4,a5
[0003e7e8] b87c 0001                 cmp.w      #$0001,d4
[0003e7ec] 6c04                      bge.s      $0003E7F2
[0003e7ee] 3813                      move.w     (a3),d4
[0003e7f0] 6018                      bra.s      $0003E80A
[0003e7f2] 534d                      subq.w     #1,a5
[0003e7f4] 1015                      move.b     (a5),d0
[0003e7f6] 4880                      ext.w      d0
[0003e7f8] 206f 0020                 movea.l    32(a7),a0
[0003e7fc] 4eb9 0007 68ce            jsr        $000768CE
[0003e802] 2008                      move.l     a0,d0
[0003e804] 6604                      bne.s      $0003E80A
[0003e806] 5344                      subq.w     #1,d4
[0003e808] 60de                      bra.s      $0003E7E8
[0003e80a] 2543 0008                 move.l     d3,8(a2)
[0003e80e] 2483                      move.l     d3,(a2)
[0003e810] 3004                      move.w     d4,d0
[0003e812] 48c0                      ext.l      d0
[0003e814] 2540 000c                 move.l     d0,12(a2)
[0003e818] 2540 0004                 move.l     d0,4(a2)
[0003e81c] 224a                      movea.l    a2,a1
[0003e81e] 204c                      movea.l    a4,a0
[0003e820] 303c 00ea                 move.w     #$00EA,d0
[0003e824] 4eb9 0003 8e52            jsr        $00038E52
[0003e82a] 52af 000c                 addq.l     #1,12(a7)
[0003e82e] 5283                      addq.l     #1,d3
[0003e830] b6af 000c                 cmp.l      12(a7),d3
[0003e834] 6f92                      ble.s      $0003E7C8
[0003e836] 93c9                      suba.l     a1,a1
[0003e838] 303c 00ed                 move.w     #$00ED,d0
[0003e83c] 204c                      movea.l    a4,a0
[0003e83e] 4eb9 0003 8e52            jsr        $00038E52
[0003e844] 93c9                      suba.l     a1,a1
[0003e846] 303c 00db                 move.w     #$00DB,d0
[0003e84a] 204c                      movea.l    a4,a0
[0003e84c] 4eb9 0003 8e52            jsr        $00038E52
[0003e852] 93c9                      suba.l     a1,a1
[0003e854] 7005                      moveq.l    #5,d0
[0003e856] 204c                      movea.l    a4,a0
[0003e858] 4eb9 0003 8e52            jsr        $00038E52
[0003e85e] 93c9                      suba.l     a1,a1
[0003e860] 303c 00d6                 move.w     #$00D6,d0
[0003e864] 204c                      movea.l    a4,a0
[0003e866] 4eb9 0003 8e52            jsr        $00038E52
[0003e86c] 93c9                      suba.l     a1,a1
[0003e86e] 7005                      moveq.l    #5,d0
[0003e870] 204c                      movea.l    a4,a0
[0003e872] 4eb9 0003 8e52            jsr        $00038E52
[0003e878] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e87e] 2068 0258                 movea.l    600(a0),a0
[0003e882] 6100 cb4a                 bsr        $0003B3CE
[0003e886] 206f 0026                 movea.l    38(a7),a0
[0003e88a] 4eb9 0005 0330            jsr        $00050330
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
[0003e8b4] 4eb9 0007 6950            jsr        $00076950
[0003e8ba] 225f                      movea.l    (a7)+,a1
[0003e8bc] 4eb9 0007 6886            jsr        $00076886
[0003e8c2] 43d7                      lea.l      (a7),a1
[0003e8c4] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e8ca] 2068 0258                 movea.l    600(a0),a0
[0003e8ce] 2068 0014                 movea.l    20(a0),a0
[0003e8d2] 6100 f7ba                 bsr        $0003E08E
[0003e8d6] 4fef 0080                 lea.l      128(a7),a7
[0003e8da] 4e75                      rts
Aed_fromclip:
[0003e8dc] 4fef ff80                 lea.l      -128(a7),a7
[0003e8e0] 43f9 000c 861d            lea.l      $000C861D,a1
[0003e8e6] 2f09                      move.l     a1,-(a7)
[0003e8e8] 2279 0010 1f12            movea.l    ACSblk,a1
[0003e8ee] 43e9 0356                 lea.l      854(a1),a1
[0003e8f2] 41ef 0004                 lea.l      4(a7),a0
[0003e8f6] 4eb9 0007 6950            jsr        $00076950
[0003e8fc] 225f                      movea.l    (a7)+,a1
[0003e8fe] 4eb9 0007 6886            jsr        $00076886
[0003e904] 43d7                      lea.l      (a7),a1
[0003e906] 2079 0010 1f12            movea.l    ACSblk,a0
[0003e90c] 2068 0258                 movea.l    600(a0),a0
[0003e910] 6100 f1e8                 bsr        $0003DAFA
[0003e914] 4fef 0080                 lea.l      128(a7),a7
[0003e918] 4e75                      rts
Aed_saveoptions:
[0003e91a] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0003e91e] 5d4f                      subq.w     #6,a7
[0003e920] 49f9 0010 1f12            lea.l      ACSblk,a4
[0003e926] 2054                      movea.l    (a4),a0
[0003e928] 2268 0258                 movea.l    600(a0),a1
[0003e92c] 2451                      movea.l    (a1),a2
[0003e92e] 47f9 000c 7668            lea.l      $000C7668,a3
[0003e934] 203c 0000 052e            move.l     #$0000052E,d0
[0003e93a] 43ea 0172                 lea.l      370(a2),a1
[0003e93e] 204b                      movea.l    a3,a0
[0003e940] 4eb9 0007 6f44            jsr        $00076F44
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
[0003e972] 4eb9 0003 8e52            jsr        $00038E52
[0003e978] 226f 0002                 movea.l    2(a7),a1
[0003e97c] 41eb 0424                 lea.l      1060(a3),a0
[0003e980] 4eb9 0007 6950            jsr        $00076950
[0003e986] 41f9 000c 85ee            lea.l      $000C85EE,a0
[0003e98c] 4eb9 0004 7066            jsr        $00047066
[0003e992] 4240                      clr.w      d0
[0003e994] 4eb9 0007 29be            jsr        $000729BE
[0003e99a] 2600                      move.l     d0,d3
[0003e99c] 6f00 0076                 ble.w      $0003EA14
[0003e9a0] 41ea 0172                 lea.l      370(a2),a0
[0003e9a4] 223c 0000 052e            move.l     #$0000052E,d1
[0003e9aa] 3003                      move.w     d3,d0
[0003e9ac] 4eb9 0007 2a8e            jsr        $00072A8E
[0003e9b2] 4244                      clr.w      d4
[0003e9b4] 3e84                      move.w     d4,(a7)
[0003e9b6] 6014                      bra.s      $0003E9CC
[0003e9b8] 3004                      move.w     d4,d0
[0003e9ba] 48c0                      ext.l      d0
[0003e9bc] e588                      lsl.l      #2,d0
[0003e9be] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0003e9c2] 2228 00d2                 move.l     210(a0),d1
[0003e9c6] 6702                      beq.s      $0003E9CA
[0003e9c8] 5257                      addq.w     #1,(a7)
[0003e9ca] 5244                      addq.w     #1,d4
[0003e9cc] b87c 0028                 cmp.w      #$0028,d4
[0003e9d0] 6de6                      blt.s      $0003E9B8
[0003e9d2] 41d7                      lea.l      (a7),a0
[0003e9d4] 7204                      moveq.l    #4,d1
[0003e9d6] 3003                      move.w     d3,d0
[0003e9d8] 4eb9 0007 2a8e            jsr        $00072A8E
[0003e9de] 4244                      clr.w      d4
[0003e9e0] 3e84                      move.w     d4,(a7)
[0003e9e2] 6022                      bra.s      $0003EA06
[0003e9e4] 3004                      move.w     d4,d0
[0003e9e6] 48c0                      ext.l      d0
[0003e9e8] e588                      lsl.l      #2,d0
[0003e9ea] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0003e9ee] 2228 00d2                 move.l     210(a0),d1
[0003e9f2] 6710                      beq.s      $0003EA04
[0003e9f4] 2041                      movea.l    d1,a0
[0003e9f6] 3003                      move.w     d3,d0
[0003e9f8] 223c 0000 0102            move.l     #$00000102,d1
[0003e9fe] 4eb9 0007 2a8e            jsr        $00072A8E
[0003ea04] 5244                      addq.w     #1,d4
[0003ea06] b87c 0028                 cmp.w      #$0028,d4
[0003ea0a] 6dd8                      blt.s      $0003E9E4
[0003ea0c] 3003                      move.w     d3,d0
[0003ea0e] 4eb9 0007 29ae            jsr        $000729AE
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
[0003ea42] 4eb9 0003 8e52            jsr        $00038E52
[0003ea48] 2012                      move.l     (a2),d0
[0003ea4a] 6b00 0156                 bmi        $0003EBA2
[0003ea4e] 2053                      movea.l    (a3),a0
[0003ea50] 0c68 0002 02ca            cmpi.w     #$0002,714(a0)
[0003ea56] 6600 014a                 bne        $0003EBA2
[0003ea5a] 2800                      move.l     d0,d4
[0003ea5c] 601a                      bra.s      $0003EA78
[0003ea5e] 2e84                      move.l     d4,(a7)
[0003ea60] 43d7                      lea.l      (a7),a1
[0003ea62] 303c 00ca                 move.w     #$00CA,d0
[0003ea66] 204c                      movea.l    a4,a0
[0003ea68] 4eb9 0003 8e52            jsr        $00038E52
[0003ea6e] 7001                      moveq.l    #1,d0
[0003ea70] d0af 0004                 add.l      4(a7),d0
[0003ea74] d680                      add.l      d0,d3
[0003ea76] 5284                      addq.l     #1,d4
[0003ea78] b8aa 0008                 cmp.l      8(a2),d4
[0003ea7c] 6fe0                      ble.s      $0003EA5E
[0003ea7e] 7002                      moveq.l    #2,d0
[0003ea80] d083                      add.l      d3,d0
[0003ea82] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003ea88] 2a48                      movea.l    a0,a5
[0003ea8a] 200d                      move.l     a5,d0
[0003ea8c] 6700 0114                 beq        $0003EBA2
[0003ea90] 4210                      clr.b      (a0)
[0003ea92] 7600                      moveq.l    #0,d3
[0003ea94] 2812                      move.l     (a2),d4
[0003ea96] 6030                      bra.s      $0003EAC8
[0003ea98] 2e84                      move.l     d4,(a7)
[0003ea9a] 43d7                      lea.l      (a7),a1
[0003ea9c] 303c 00ca                 move.w     #$00CA,d0
[0003eaa0] 204c                      movea.l    a4,a0
[0003eaa2] 4eb9 0003 8e52            jsr        $00038E52
[0003eaa8] 202f 0004                 move.l     4(a7),d0
[0003eaac] 226f 0008                 movea.l    8(a7),a1
[0003eab0] 41f5 3800                 lea.l      0(a5,d3.l),a0
[0003eab4] 4eb9 0007 6f44            jsr        $00076F44
[0003eaba] d6af 0004                 add.l      4(a7),d3
[0003eabe] 1bbc 000a 3800            move.b     #$0A,0(a5,d3.l)
[0003eac4] 5283                      addq.l     #1,d3
[0003eac6] 5284                      addq.l     #1,d4
[0003eac8] b8aa 0008                 cmp.l      8(a2),d4
[0003eacc] 6fca                      ble.s      $0003EA98
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
[0003eb40] 4eb9 0004 487c            jsr        $0004487C
[0003eb46] 2053                      movea.l    (a3),a0
[0003eb48] 3228 0264                 move.w     612(a0),d1
[0003eb4c] 3028 0262                 move.w     610(a0),d0
[0003eb50] 4eb9 0004 557a            jsr        $0004557A
[0003eb56] 7002                      moveq.l    #2,d0
[0003eb58] 2053                      movea.l    (a3),a0
[0003eb5a] 2068 0258                 movea.l    600(a0),a0
[0003eb5e] 4eb9 0004 492a            jsr        $0004492A
[0003eb64] 4240                      clr.w      d0
[0003eb66] 3940 0016                 move.w     d0,22(a4)
[0003eb6a] 3940 0014                 move.w     d0,20(a4)
[0003eb6e] 3940 0012                 move.w     d0,18(a4)
[0003eb72] 3940 0010                 move.w     d0,16(a4)
[0003eb76] 006c 0080 0008            ori.w      #$0080,8(a4)
[0003eb7c] 204d                      movea.l    a5,a0
[0003eb7e] 4eb9 0004 7e26            jsr        $00047E26
[0003eb84] 42ae 000c                 clr.l      12(a6)
[0003eb88] 426e 0016                 clr.w      22(a6)
[0003eb8c] 93c9                      suba.l     a1,a1
[0003eb8e] 303c 00e2                 move.w     #$00E2,d0
[0003eb92] 2053                      movea.l    (a3),a0
[0003eb94] 2468 0258                 movea.l    600(a0),a2
[0003eb98] 206a 0014                 movea.l    20(a2),a0
[0003eb9c] 4eb9 0003 8e52            jsr        $00038E52
[0003eba2] 4eb9 0003 9a96            jsr        $00039A96
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
[0003ebdc] 6700 012e                 beq        $0003ED0C
[0003ebe0] 4eb9 0004 4840            jsr        $00044840
[0003ebe6] 4eb9 0004 484c            jsr        $0004484C
[0003ebec] 3600                      move.w     d0,d3
[0003ebee] 4a40                      tst.w      d0
[0003ebf0] 6b00 011a                 bmi        $0003ED0C
[0003ebf4] 48c0                      ext.l      d0
[0003ebf6] 2200                      move.l     d0,d1
[0003ebf8] d281                      add.l      d1,d1
[0003ebfa] d280                      add.l      d0,d1
[0003ebfc] e789                      lsl.l      #3,d1
[0003ebfe] 286a 0014                 movea.l    20(a2),a4
[0003ec02] 49f4 1818                 lea.l      24(a4,d1.l),a4
[0003ec06] 342c 0016                 move.w     22(a4),d2
[0003ec0a] 947c 000b                 sub.w      #$000B,d2
[0003ec0e] 6712                      beq.s      $0003EC22
[0003ec10] 947c 0009                 sub.w      #$0009,d2
[0003ec14] 6700 00b6                 beq        $0003ECCC
[0003ec18] 947c 000b                 sub.w      #$000B,d2
[0003ec1c] 6704                      beq.s      $0003EC22
[0003ec1e] 6000 00ec                 bra        $0003ED0C
[0003ec22] 3003                      move.w     d3,d0
[0003ec24] 204a                      movea.l    a2,a0
[0003ec26] 4eb9 0004 492a            jsr        $0004492A
[0003ec2c] 2a6b 0014                 movea.l    20(a3),a5
[0003ec30] 93c9                      suba.l     a1,a1
[0003ec32] 303c 00d5                 move.w     #$00D5,d0
[0003ec36] 204d                      movea.l    a5,a0
[0003ec38] 4eb9 0003 8e52            jsr        $00038E52
[0003ec3e] 93c9                      suba.l     a1,a1
[0003ec40] 303c 00e2                 move.w     #$00E2,d0
[0003ec44] 204d                      movea.l    a5,a0
[0003ec46] 4eb9 0003 8e52            jsr        $00038E52
[0003ec4c] 43d7                      lea.l      (a7),a1
[0003ec4e] 303c 00d8                 move.w     #$00D8,d0
[0003ec52] 204d                      movea.l    a5,a0
[0003ec54] 4eb9 0003 8e52            jsr        $00038E52
[0003ec5a] 43ef 0004                 lea.l      4(a7),a1
[0003ec5e] 303c 00e7                 move.w     #$00E7,d0
[0003ec62] 204d                      movea.l    a5,a0
[0003ec64] 4eb9 0003 8e52            jsr        $00038E52
[0003ec6a] 226c 000c                 movea.l    12(a4),a1
[0003ec6e] 204b                      movea.l    a3,a0
[0003ec70] 6100 e2a2                 bsr        $0003CF14
[0003ec74] 43ef 0008                 lea.l      8(a7),a1
[0003ec78] 303c 00d8                 move.w     #$00D8,d0
[0003ec7c] 204d                      movea.l    a5,a0
[0003ec7e] 4eb9 0003 8e52            jsr        $00038E52
[0003ec84] 43ef 000c                 lea.l      12(a7),a1
[0003ec88] 303c 00e7                 move.w     #$00E7,d0
[0003ec8c] 204d                      movea.l    a5,a0
[0003ec8e] 4eb9 0003 8e52            jsr        $00038E52
[0003ec94] 43d7                      lea.l      (a7),a1
[0003ec96] 303c 00e4                 move.w     #$00E4,d0
[0003ec9a] 204d                      movea.l    a5,a0
[0003ec9c] 4eb9 0003 8e52            jsr        $00038E52
[0003eca2] 93c9                      suba.l     a1,a1
[0003eca4] 303c 00db                 move.w     #$00DB,d0
[0003eca8] 204d                      movea.l    a5,a0
[0003ecaa] 4eb9 0003 8e52            jsr        $00038E52
[0003ecb0] 93c9                      suba.l     a1,a1
[0003ecb2] 7005                      moveq.l    #5,d0
[0003ecb4] 204d                      movea.l    a5,a0
[0003ecb6] 4eb9 0003 8e52            jsr        $00038E52
[0003ecbc] 93c9                      suba.l     a1,a1
[0003ecbe] 303c 00d6                 move.w     #$00D6,d0
[0003ecc2] 204d                      movea.l    a5,a0
[0003ecc4] 4eb9 0003 8e52            jsr        $00038E52
[0003ecca] 6040                      bra.s      $0003ED0C
[0003eccc] 2c53                      movea.l    (a3),a6
[0003ecce] 303c 0080                 move.w     #$0080,d0
[0003ecd2] c06e 0294                 and.w      660(a6),d0
[0003ecd6] 6720                      beq.s      $0003ECF8
[0003ecd8] 43ee 00b8                 lea.l      184(a6),a1
[0003ecdc] 41f9 000c 4112            lea.l      $000C4112,a0
[0003ece2] 4eb9 0005 ef8c            jsr        $0005EF8C
[0003ece8] 5340                      subq.w     #1,d0
[0003ecea] 6706                      beq.s      $0003ECF2
[0003ecec] 5540                      subq.w     #2,d0
[0003ecee] 671c                      beq.s      $0003ED0C
[0003ecf0] 6006                      bra.s      $0003ECF8
[0003ecf2] 204b                      movea.l    a3,a0
[0003ecf4] 6100 f44c                 bsr        $0003E142
[0003ecf8] 3003                      move.w     d3,d0
[0003ecfa] 204a                      movea.l    a2,a0
[0003ecfc] 4eb9 0004 492a            jsr        $0004492A
[0003ed02] 226c 000c                 movea.l    12(a4),a1
[0003ed06] 204b                      movea.l    a3,a0
[0003ed08] 6100 ecf0                 bsr        $0003D9FA
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
[0003ed26] 6620                      bne.s      $0003ED48
[0003ed28] 206a 0018                 movea.l    24(a2),a0
[0003ed2c] 700d                      moveq.l    #13,d0
[0003ed2e] 4eb9 0004 afe0            jsr        $0004AFE0
[0003ed34] 72ff                      moveq.l    #-1,d1
[0003ed36] 303c 100d                 move.w     #$100D,d0
[0003ed3a] 204a                      movea.l    a2,a0
[0003ed3c] 226a 0066                 movea.l    102(a2),a1
[0003ed40] 4e91                      jsr        (a1)
[0003ed42] 377c 0005 00c8            move.w     #$0005,200(a3)
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
[0003ed64] 20d9                      move.l     (a1)+,(a0)+
[0003ed66] 51c8 fffc                 dbf        d0,$0003ED64
[0003ed6a] 30d9                      move.w     (a1)+,(a0)+
[0003ed6c] 2853                      movea.l    (a3),a4
[0003ed6e] 302d 0016                 move.w     22(a5),d0
[0003ed72] 907c 000b                 sub.w      #$000B,d0
[0003ed76] 6712                      beq.s      $0003ED8A
[0003ed78] 907c 0009                 sub.w      #$0009,d0
[0003ed7c] 670c                      beq.s      $0003ED8A
[0003ed7e] 907c 000a                 sub.w      #$000A,d0
[0003ed82] 6706                      beq.s      $0003ED8A
[0003ed84] 5340                      subq.w     #1,d0
[0003ed86] 6702                      beq.s      $0003ED8A
[0003ed88] 6038                      bra.s      $0003EDC2
[0003ed8a] 203c 0000 00ff            move.l     #$000000FF,d0
[0003ed90] 226d 000c                 movea.l    12(a5),a1
[0003ed94] 41ef 0002                 lea.l      2(a7),a0
[0003ed98] 4eb9 0007 69da            jsr        $000769DA
[0003ed9e] 224b                      movea.l    a3,a1
[0003eda0] 41d7                      lea.l      (a7),a0
[0003eda2] 4eb9 0003 ee54            jsr        $0003EE54
[0003eda8] 5340                      subq.w     #1,d0
[0003edaa] 661a                      bne.s      $0003EDC6
[0003edac] 43d7                      lea.l      (a7),a1
[0003edae] 303c 0192                 move.w     #$0192,d0
[0003edb2] 206c 0004                 movea.l    4(a4),a0
[0003edb6] 266c 0004                 movea.l    4(a4),a3
[0003edba] 246b 0004                 movea.l    4(a3),a2
[0003edbe] 4e92                      jsr        (a2)
[0003edc0] 6004                      bra.s      $0003EDC6
[0003edc2] 4240                      clr.w      d0
[0003edc4] 6002                      bra.s      $0003EDC8
[0003edc6] 7001                      moveq.l    #1,d0
[0003edc8] 4fef 0102                 lea.l      258(a7),a7
[0003edcc] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003edd0] 4e75                      rts
comp_fkey:
[0003edd2] 1028 0001                 move.b     1(a0),d0
[0003edd6] 4880                      ext.w      d0
[0003edd8] d07c fff0                 add.w      #$FFF0,d0
[0003eddc] 3210                      move.w     (a0),d1
[0003edde] c27c 0400                 and.w      #$0400,d1
[0003ede2] 6704                      beq.s      $0003EDE8
[0003ede4] d07c 0014                 add.w      #$0014,d0
[0003ede8] 3210                      move.w     (a0),d1
[0003edea] c27c 0300                 and.w      #$0300,d1
[0003edee] 6704                      beq.s      $0003EDF4
[0003edf0] d07c 000a                 add.w      #$000A,d0
[0003edf4] 1229 0001                 move.b     1(a1),d1
[0003edf8] 4881                      ext.w      d1
[0003edfa] d27c fff0                 add.w      #$FFF0,d1
[0003edfe] 3411                      move.w     (a1),d2
[0003ee00] c47c 0400                 and.w      #$0400,d2
[0003ee04] 6704                      beq.s      $0003EE0A
[0003ee06] d27c 0014                 add.w      #$0014,d1
[0003ee0a] 3411                      move.w     (a1),d2
[0003ee0c] c47c 0300                 and.w      #$0300,d2
[0003ee10] 6704                      beq.s      $0003EE16
[0003ee12] d27c 000a                 add.w      #$000A,d1
[0003ee16] b240                      cmp.w      d0,d1
[0003ee18] 6f04                      ble.s      $0003EE1E
[0003ee1a] 70ff                      moveq.l    #-1,d0
[0003ee1c] 4e75                      rts
[0003ee1e] b240                      cmp.w      d0,d1
[0003ee20] 6c04                      bge.s      $0003EE26
[0003ee22] 7001                      moveq.l    #1,d0
[0003ee24] 4e75                      rts
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
[0003ee40] 6604                      bne.s      $0003EE46
[0003ee42] 4240                      clr.w      d0
[0003ee44] 6008                      bra.s      $0003EE4E
[0003ee46] 377c 000b 0016            move.w     #$000B,22(a3)
[0003ee4c] 7001                      moveq.l    #1,d0
[0003ee4e] 265f                      movea.l    (a7)+,a3
[0003ee50] 245f                      movea.l    (a7)+,a2
[0003ee52] 4e75                      rts
edit_fkey:
[0003ee54] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0003ee58] 554f                      subq.w     #2,a7
[0003ee5a] 2648                      movea.l    a0,a3
[0003ee5c] 2849                      movea.l    a1,a4
[0003ee5e] 4243                      clr.w      d3
[0003ee60] 41f9 000c 73e0            lea.l      $000C73E0,a0
[0003ee66] 2279 000c 73e8            movea.l    $000C73E8,a1
[0003ee6c] 4e91                      jsr        (a1)
[0003ee6e] 2448                      movea.l    a0,a2
[0003ee70] 200a                      move.l     a2,d0
[0003ee72] 6606                      bne.s      $0003EE7A
[0003ee74] 4240                      clr.w      d0
[0003ee76] 6000 00cc                 bra        $0003EF44
[0003ee7a] 248c                      move.l     a4,(a2)
[0003ee7c] 43eb 0002                 lea.l      2(a3),a1
[0003ee80] 7009                      moveq.l    #9,d0
[0003ee82] 206a 0014                 movea.l    20(a2),a0
[0003ee86] 4eb9 0004 afe0            jsr        $0004AFE0
[0003ee8c] 0c53 0010                 cmpi.w     #$0010,(a3)
[0003ee90] 6c04                      bge.s      $0003EE96
[0003ee92] 36bc 0010                 move.w     #$0010,(a3)
[0003ee96] 3013                      move.w     (a3),d0
[0003ee98] c07c 0300                 and.w      #$0300,d0
[0003ee9c] 670a                      beq.s      $0003EEA8
[0003ee9e] 206a 0014                 movea.l    20(a2),a0
[0003eea2] 0068 0001 003a            ori.w      #$0001,58(a0)
[0003eea8] 3013                      move.w     (a3),d0
[0003eeaa] c07c 0400                 and.w      #$0400,d0
[0003eeae] 670a                      beq.s      $0003EEBA
[0003eeb0] 206a 0014                 movea.l    20(a2),a0
[0003eeb4] 0068 0001 006a            ori.w      #$0001,106(a0)
[0003eeba] 102b 0001                 move.b     1(a3),d0
[0003eebe] 4880                      ext.w      d0
[0003eec0] d07c fff0                 add.w      #$FFF0,d0
[0003eec4] 3e80                      move.w     d0,(a7)
[0003eec6] 43d7                      lea.l      (a7),a1
[0003eec8] 206a 0014                 movea.l    20(a2),a0
[0003eecc] 41e8 0090                 lea.l      144(a0),a0
[0003eed0] 303c 0191                 move.w     #$0191,d0
[0003eed4] 4eb9 0005 c2fa            jsr        $0005C2FA
[0003eeda] 204a                      movea.l    a2,a0
[0003eedc] 4eb9 0005 1292            jsr        $00051292
[0003eee2] b07c 000a                 cmp.w      #$000A,d0
[0003eee6] 6652                      bne.s      $0003EF3A
[0003eee8] 43eb 0002                 lea.l      2(a3),a1
[0003eeec] 7009                      moveq.l    #9,d0
[0003eeee] 206a 0014                 movea.l    20(a2),a0
[0003eef2] 4eb9 0004 b154            jsr        $0004B154
[0003eef8] 43d7                      lea.l      (a7),a1
[0003eefa] 303c 0192                 move.w     #$0192,d0
[0003eefe] 206a 0014                 movea.l    20(a2),a0
[0003ef02] 41e8 0090                 lea.l      144(a0),a0
[0003ef06] 4eb9 0005 c2fa            jsr        $0005C2FA
[0003ef0c] 7010                      moveq.l    #16,d0
[0003ef0e] d057                      add.w      (a7),d0
[0003ef10] 3680                      move.w     d0,(a3)
[0003ef12] 7201                      moveq.l    #1,d1
[0003ef14] 206a 0014                 movea.l    20(a2),a0
[0003ef18] c268 003a                 and.w      58(a0),d1
[0003ef1c] 6704                      beq.s      $0003EF22
[0003ef1e] 0053 0300                 ori.w      #$0300,(a3)
[0003ef22] 7001                      moveq.l    #1,d0
[0003ef24] 206a 0014                 movea.l    20(a2),a0
[0003ef28] c068 006a                 and.w      106(a0),d0
[0003ef2c] 6704                      beq.s      $0003EF32
[0003ef2e] 0053 0400                 ori.w      #$0400,(a3)
[0003ef32] 102b 0002                 move.b     2(a3),d0
[0003ef36] 6702                      beq.s      $0003EF3A
[0003ef38] 7601                      moveq.l    #1,d3
[0003ef3a] 204a                      movea.l    a2,a0
[0003ef3c] 4eb9 0005 0330            jsr        $00050330
[0003ef42] 3003                      move.w     d3,d0
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
[0003ef7a] 602c                      bra.s      $0003EFA8
[0003ef7c] 224b                      movea.l    a3,a1
[0003ef7e] 303c 0194                 move.w     #$0194,d0
[0003ef82] 206a 0004                 movea.l    4(a2),a0
[0003ef86] 286a 0004                 movea.l    4(a2),a4
[0003ef8a] 286c 0004                 movea.l    4(a4),a4
[0003ef8e] 4e94                      jsr        (a4)
[0003ef90] 4a40                      tst.w      d0
[0003ef92] 6712                      beq.s      $0003EFA6
[0003ef94] 3003                      move.w     d3,d0
[0003ef96] c07c 07ff                 and.w      #$07FF,d0
[0003ef9a] 322f 000c                 move.w     12(a7),d1
[0003ef9e] b240                      cmp.w      d0,d1
[0003efa0] 6604                      bne.s      $0003EFA6
[0003efa2] 2013                      move.l     (a3),d0
[0003efa4] 600a                      bra.s      $0003EFB0
[0003efa6] 5293                      addq.l     #1,(a3)
[0003efa8] 2013                      move.l     (a3),d0
[0003efaa] b097                      cmp.l      (a7),d0
[0003efac] 6dce                      blt.s      $0003EF7C
[0003efae] 70ff                      moveq.l    #-1,d0
[0003efb0] 4fef 010e                 lea.l      270(a7),a7
[0003efb4] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003efb8] 4e75                      rts
mess_fkey:
[0003efba] 2f0a                      move.l     a2,-(a7)
[0003efbc] 2f0b                      move.l     a3,-(a7)
[0003efbe] 2448                      movea.l    a0,a2
[0003efc0] 3200                      move.w     d0,d1
[0003efc2] 5741                      subq.w     #3,d1
[0003efc4] 6706                      beq.s      $0003EFCC
[0003efc6] 5341                      subq.w     #1,d1
[0003efc8] 6718                      beq.s      $0003EFE2
[0003efca] 6022                      bra.s      $0003EFEE
[0003efcc] 41f9 000c 40ad            lea.l      $000C40AD,a0
[0003efd2] 7001                      moveq.l    #1,d0
[0003efd4] 4eb9 0005 17fe            jsr        $000517FE
[0003efda] 5540                      subq.w     #2,d0
[0003efdc] 6610                      bne.s      $0003EFEE
[0003efde] 4240                      clr.w      d0
[0003efe0] 600e                      bra.s      $0003EFF0
[0003efe2] 93c9                      suba.l     a1,a1
[0003efe4] 700f                      moveq.l    #15,d0
[0003efe6] 204a                      movea.l    a2,a0
[0003efe8] 266a 0004                 movea.l    4(a2),a3
[0003efec] 4e93                      jsr        (a3)
[0003efee] 7001                      moveq.l    #1,d0
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
[0003f00c] 10d9                      move.b     (a1)+,(a0)+
[0003f00e] 51c8 fffc                 dbf        d0,$0003F00C
[0003f012] 43f9 000c 864f            lea.l      $000C864F,a1
[0003f018] 204a                      movea.l    a2,a0
[0003f01a] 4eb9 0007 6950            jsr        $00076950
[0003f020] 3013                      move.w     (a3),d0
[0003f022] c07c 0300                 and.w      #$0300,d0
[0003f026] 6704                      beq.s      $0003F02C
[0003f028] 14bc 0001                 move.b     #$01,(a2)
[0003f02c] 3013                      move.w     (a3),d0
[0003f02e] c07c 0400                 and.w      #$0400,d0
[0003f032] 6706                      beq.s      $0003F03A
[0003f034] 157c 005e 0001            move.b     #$5E,1(a2)
[0003f03a] 486b 0002                 pea.l      2(a3)
[0003f03e] 3f3c 00f9                 move.w     #$00F9,-(a7)
[0003f042] 102b 0001                 move.b     1(a3),d0
[0003f046] 4880                      ext.w      d0
[0003f048] e548                      lsl.w      #2,d0
[0003f04a] 2f37 00c6                 move.l     -58(a7,d0.w),-(a7)
[0003f04e] 43f9 000c 8652            lea.l      $000C8652,a1
[0003f054] 41ea 0002                 lea.l      2(a2),a0
[0003f058] 4eb9 0007 5680            jsr        $00075680
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
[0003f09a] 6024                      bra.s      $0003F0C0
[0003f09c] 2003                      move.l     d3,d0
[0003f09e] e588                      lsl.l      #2,d0
[0003f0a0] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0003f0a4] 2228 00d2                 move.l     210(a0),d1
[0003f0a8] 6714                      beq.s      $0003F0BE
[0003f0aa] 2041                      movea.l    d1,a0
[0003f0ac] 4eb9 0004 7e26            jsr        $00047E26
[0003f0b2] 2003                      move.l     d3,d0
[0003f0b4] e588                      lsl.l      #2,d0
[0003f0b6] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0003f0ba] 42a8 00d2                 clr.l      210(a0)
[0003f0be] 5283                      addq.l     #1,d3
[0003f0c0] 7028                      moveq.l    #40,d0
[0003f0c2] b083                      cmp.l      d3,d0
[0003f0c4] 6ed6                      bgt.s      $0003F09C
[0003f0c6] 4294                      clr.l      (a4)
[0003f0c8] 6066                      bra.s      $0003F130
[0003f0ca] 224c                      movea.l    a4,a1
[0003f0cc] 303c 0194                 move.w     #$0194,d0
[0003f0d0] 206a 0004                 movea.l    4(a2),a0
[0003f0d4] 2a6a 0004                 movea.l    4(a2),a5
[0003f0d8] 2a6d 0004                 movea.l    4(a5),a5
[0003f0dc] 4e95                      jsr        (a5)
[0003f0de] 4a40                      tst.w      d0
[0003f0e0] 674c                      beq.s      $0003F12E
[0003f0e2] 162b 0001                 move.b     1(a3),d3
[0003f0e6] 4883                      ext.w      d3
[0003f0e8] d67c fff0                 add.w      #$FFF0,d3
[0003f0ec] 3013                      move.w     (a3),d0
[0003f0ee] c07c 0400                 and.w      #$0400,d0
[0003f0f2] 6704                      beq.s      $0003F0F8
[0003f0f4] d67c 0014                 add.w      #$0014,d3
[0003f0f8] 3013                      move.w     (a3),d0
[0003f0fa] c07c 0300                 and.w      #$0300,d0
[0003f0fe] 6704                      beq.s      $0003F104
[0003f100] d67c 000a                 add.w      #$000A,d3
[0003f104] 203c 0000 0102            move.l     #$00000102,d0
[0003f10a] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003f110] 3003                      move.w     d3,d0
[0003f112] 48c0                      ext.l      d0
[0003f114] e588                      lsl.l      #2,d0
[0003f116] 43f2 0800                 lea.l      0(a2,d0.l),a1
[0003f11a] 2348 00d2                 move.l     a0,210(a1)
[0003f11e] 670e                      beq.s      $0003F12E
[0003f120] 224b                      movea.l    a3,a1
[0003f122] 203c 0000 0102            move.l     #$00000102,d0
[0003f128] 4eb9 0007 6f44            jsr        $00076F44
[0003f12e] 5294                      addq.l     #1,(a4)
[0003f130] 2014                      move.l     (a4),d0
[0003f132] b097                      cmp.l      (a7),d0
[0003f134] 6d94                      blt.s      $0003F0CA
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
[0003f158] 22d8                      move.l     (a0)+,(a1)+
[0003f15a] 51c8 fffc                 dbf        d0,$0003F158
[0003f15e] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f164] 2ea8 0258                 move.l     600(a0),(a7)
[0003f168] 43f9 000c 41a4            lea.l      $000C41A4,a1
[0003f16e] 41ef 0004                 lea.l      4(a7),a0
[0003f172] 4eb9 0007 6950            jsr        $00076950
[0003f178] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f17e] 2268 0258                 movea.l    600(a0),a1
[0003f182] 2651                      movea.l    (a1),a3
[0003f184] 202b 0004                 move.l     4(a3),d0
[0003f188] 6654                      bne.s      $0003F1DE
[0003f18a] 41d7                      lea.l      (a7),a0
[0003f18c] 2279 000c 95a4            movea.l    $000C95A4,a1
[0003f192] 4e91                      jsr        (a1)
[0003f194] 2748 0004                 move.l     a0,4(a3)
[0003f198] 674e                      beq.s      $0003F1E8
[0003f19a] 4243                      clr.w      d3
[0003f19c] 6026                      bra.s      $0003F1C4
[0003f19e] 3003                      move.w     d3,d0
[0003f1a0] 48c0                      ext.l      d0
[0003f1a2] e588                      lsl.l      #2,d0
[0003f1a4] 41f3 0800                 lea.l      0(a3,d0.l),a0
[0003f1a8] 2228 00d2                 move.l     210(a0),d1
[0003f1ac] 6714                      beq.s      $0003F1C2
[0003f1ae] 2241                      movea.l    d1,a1
[0003f1b0] 206b 0004                 movea.l    4(a3),a0
[0003f1b4] 246b 0004                 movea.l    4(a3),a2
[0003f1b8] 246a 0004                 movea.l    4(a2),a2
[0003f1bc] 303c 0192                 move.w     #$0192,d0
[0003f1c0] 4e92                      jsr        (a2)
[0003f1c2] 5243                      addq.w     #1,d3
[0003f1c4] b67c 0028                 cmp.w      #$0028,d3
[0003f1c8] 6dd4                      blt.s      $0003F19E
[0003f1ca] 93c9                      suba.l     a1,a1
[0003f1cc] 303c 0190                 move.w     #$0190,d0
[0003f1d0] 206b 0004                 movea.l    4(a3),a0
[0003f1d4] 246b 0004                 movea.l    4(a3),a2
[0003f1d8] 246a 0004                 movea.l    4(a2),a2
[0003f1dc] 4e92                      jsr        (a2)
[0003f1de] 206b 0004                 movea.l    4(a3),a0
[0003f1e2] 4eb9 0004 f0ca            jsr        $0004F0CA
[0003f1e8] 4fef 00b4                 lea.l      180(a7),a7
[0003f1ec] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0003f1f0] 4e75                      rts
