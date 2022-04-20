
edpi_col:
[00025ffe] 3f03                      move.w     d3,-(a7)
[00026000] 2f0a                      move.l     a2,-(a7)
[00026002] 2079 0010 1f12            movea.l    ACSblk,a0
[00026008] 2268 025c                 movea.l    604(a0),a1
[0002600c] 2469 003c                 movea.l    60(a1),a2
[00026010] 584a                      addq.w     #4,a2
[00026012] 7011                      moveq.l    #17,d0
[00026014] 3f00                      move.w     d0,-(a7)
[00026016] 7412                      moveq.l    #18,d2
[00026018] 720f                      moveq.l    #15,d1
[0002601a] 2012                      move.l     (a2),d0
[0002601c] e880                      asr.l      #4,d0
[0002601e] c07c 000f                 and.w      #$000F,d0
[00026022] 4eb9 0002 f280            jsr        oe_colsel
[00026028] 544f                      addq.w     #2,a7
[0002602a] 3600                      move.w     d0,d3
[0002602c] 6b2e                      bmi.s      edpi_col_1
[0002602e] 2212                      move.l     (a2),d1
[00026030] c2bc ffff ff0f            and.l      #$FFFFFF0F,d1
[00026036] 48c0                      ext.l      d0
[00026038] e988                      lsl.l      #4,d0
[0002603a] 8280                      or.l       d0,d1
[0002603c] 2481                      move.l     d1,(a2)
[0002603e] 2079 0010 1f12            movea.l    ACSblk,a0
[00026044] 2068 0258                 movea.l    600(a0),a0
[00026048] 2279 0010 1f12            movea.l    ACSblk,a1
[0002604e] 2469 0258                 movea.l    600(a1),a2
[00026052] 226a 0066                 movea.l    102(a2),a1
[00026056] 7001                      moveq.l    #1,d0
[00026058] 72ff                      moveq.l    #-1,d1
[0002605a] 4e91                      jsr        (a1)
edpi_col_1:
[0002605c] 245f                      movea.l    (a7)+,a2
[0002605e] 361f                      move.w     (a7)+,d3
[00026060] 4e75                      rts

edpi_dither:
[00026062] 2079 0010 1f12            movea.l    ACSblk,a0
[00026068] 2268 025c                 movea.l    604(a0),a1
[0002606c] 2069 003c                 movea.l    60(a1),a0
[00026070] 0aa8 0010 0000 0004       eori.l     #$00100000,4(a0)
[00026078] 72ff                      moveq.l    #-1,d1
[0002607a] 7001                      moveq.l    #1,d0
[0002607c] 2079 0010 1f12            movea.l    ACSblk,a0
[00026082] 2068 0258                 movea.l    600(a0),a0
[00026086] 2279 0010 1f12            movea.l    ACSblk,a1
[0002608c] 2269 0258                 movea.l    600(a1),a1
[00026090] 2269 0066                 movea.l    102(a1),a1
[00026094] 4e91                      jsr        (a1)
[00026096] 4e75                      rts

edpi_pattern:
[00026098] 2f0a                      move.l     a2,-(a7)
[0002609a] 45f9 0010 1f12            lea.l      ACSblk,a2
[000260a0] 2052                      movea.l    (a2),a0
[000260a2] 3228 0260                 move.w     608(a0),d1
[000260a6] 48c1                      ext.l      d1
[000260a8] 2001                      move.l     d1,d0
[000260aa] d080                      add.l      d0,d0
[000260ac] d081                      add.l      d1,d0
[000260ae] e788                      lsl.l      #3,d0
[000260b0] 2268 0258                 movea.l    600(a0),a1
[000260b4] 2069 0014                 movea.l    20(a1),a0
[000260b8] 41f0 0818                 lea.l      24(a0,d0.l),a0
[000260bc] 2252                      movea.l    (a2),a1
[000260be] 2269 025c                 movea.l    604(a1),a1
[000260c2] 2269 003c                 movea.l    60(a1),a1
[000260c6] 5849                      addq.w     #4,a1
[000260c8] 2411                      move.l     (a1),d2
[000260ca] c4bc fff0 00ff            and.l      #$FFF000FF,d2
[000260d0] 84a8 000c                 or.l       12(a0),d2
[000260d4] 2282                      move.l     d2,(a1)
[000260d6] 72ff                      moveq.l    #-1,d1
[000260d8] 7001                      moveq.l    #1,d0
[000260da] 2052                      movea.l    (a2),a0
[000260dc] 2068 0258                 movea.l    600(a0),a0
[000260e0] 2252                      movea.l    (a2),a1
[000260e2] 2269 0258                 movea.l    600(a1),a1
[000260e6] 2269 0066                 movea.l    102(a1),a1
[000260ea] 4e91                      jsr        (a1)
[000260ec] 245f                      movea.l    (a7)+,a2
[000260ee] 4e75                      rts

edpi_tile:
[000260f0] 2079 0010 1f12            movea.l    ACSblk,a0
[000260f6] 2268 025c                 movea.l    604(a0),a1
[000260fa] 2069 003c                 movea.l    60(a1),a0
[000260fe] 0aa8 0000 0002 0004       eori.l     #$00000002,4(a0)
[00026106] 72ff                      moveq.l    #-1,d1
[00026108] 7001                      moveq.l    #1,d0
[0002610a] 2079 0010 1f12            movea.l    ACSblk,a0
[00026110] 2068 0258                 movea.l    600(a0),a0
[00026114] 2279 0010 1f12            movea.l    ACSblk,a1
[0002611a] 2269 0258                 movea.l    600(a1),a1
[0002611e] 2269 0066                 movea.l    102(a1),a1
[00026122] 4e91                      jsr        (a1)
[00026124] 4e75                      rts

init_picture:
[00026126] 2f0a                      move.l     a2,-(a7)
[00026128] 2f0b                      move.l     a3,-(a7)
[0002612a] 2448                      movea.l    a0,a2
[0002612c] 43f9 000b 264e            lea.l      data,a1
[00026132] 303c 2329                 move.w     #$2329,d0
[00026136] 266a 0004                 movea.l    4(a2),a3
[0002613a] 4e93                      jsr        (a3)
[0002613c] 265f                      movea.l    (a7)+,a3
[0002613e] 245f                      movea.l    (a7)+,a2
[00026140] 4e75                      rts

minsize:
[00026142] 2f0a                      move.l     a2,-(a7)
[00026144] 246f 0008                 movea.l    8(a7),a2
[00026148] 2068 000c                 movea.l    12(a0),a0
[0002614c] 2008                      move.l     a0,d0
[0002614e] 670a                      beq.s      minsize_1
[00026150] 32a8 0004                 move.w     4(a0),(a1)
[00026154] 34a8 0006                 move.w     6(a0),(a2)
[00026158] 6014                      bra.s      minsize_2
minsize_1:
[0002615a] 2079 0010 1f12            movea.l    ACSblk,a0
[00026160] 32a8 0012                 move.w     18(a0),(a1)
[00026164] 2079 0010 1f12            movea.l    ACSblk,a0
[0002616a] 34a8 0014                 move.w     20(a0),(a2)
minsize_2:
[0002616e] 245f                      movea.l    (a7)+,a2
[00026170] 4e75                      rts

object_tree:
[00026172] 48e7 003e                 movem.l    a2-a6,-(a7)
[00026176] 4fef fff6                 lea.l      -10(a7),a7
[0002617a] 2f48 0006                 move.l     a0,6(a7)
[0002617e] 2849                      movea.l    a1,a4
[00026180] 41f9 000b 1d30            lea.l      ED_PICTURE,a0
[00026186] 4eb9 0004 9a5c            jsr        Aob_create
[0002618c] 2448                      movea.l    a0,a2
[0002618e] 200a                      move.l     a2,d0
[00026190] 6700 00ba                 beq        object_tree_1
[00026194] 4eb9 0004 a25e            jsr        Aob_fix
[0002619a] 47ea 0030                 lea.l      48(a2),a3
[0002619e] 7016                      moveq.l    #22,d0
[000261a0] c06c 0008                 and.w      8(a4),d0
[000261a4] 816b 0008                 or.w       d0,8(a3)
[000261a8] 703f                      moveq.l    #63,d0
[000261aa] c06c 000a                 and.w      10(a4),d0
[000261ae] 816b 000a                 or.w       d0,10(a3)
[000261b2] 286b 000c                 movea.l    12(a3),a4
[000261b6] 93c9                      suba.l     a1,a1
[000261b8] 7002                      moveq.l    #2,d0
[000261ba] 204b                      movea.l    a3,a0
[000261bc] 2a6c 0008                 movea.l    8(a4),a5
[000261c0] 4e95                      jsr        (a5)
[000261c2] 4bef 0002                 lea.l      2(a7),a5
[000261c6] 4855                      pea.l      (a5)
[000261c8] 43f9 000b 26af            lea.l      $000B26AF,a1
[000261ce] 206f 000a                 movea.l    10(a7),a0
[000261d2] 2050                      movea.l    (a0),a0
[000261d4] 4eb9 0007 594a            jsr        sscanf
[000261da] 584f                      addq.w     #4,a7
[000261dc] 7002                      moveq.l    #2,d0
[000261de] c095                      and.l      (a5),d0
[000261e0] 6706                      beq.s      object_tree_2
[000261e2] 006a 0001 00ca            ori.w      #$0001,202(a2)
object_tree_2:
[000261e8] 2015                      move.l     (a5),d0
[000261ea] c0bc 0010 0000            and.l      #$00100000,d0
[000261f0] 6706                      beq.s      object_tree_3
[000261f2] 006a 0001 00fa            ori.w      #$0001,250(a2)
object_tree_3:
[000261f8] 7001                      moveq.l    #1,d0
[000261fa] 8095                      or.l       (a5),d0
[000261fc] 2940 0004                 move.l     d0,4(a4)
[00026200] 206f 0006                 movea.l    6(a7),a0
[00026204] 2968 000a 000c            move.l     10(a0),12(a4)
[0002620a] 43d7                      lea.l      (a7),a1
[0002620c] 7001                      moveq.l    #1,d0
[0002620e] 2c6c 0008                 movea.l    8(a4),a6
[00026212] 204b                      movea.l    a3,a0
[00026214] 4e96                      jsr        (a6)
[00026216] 2015                      move.l     (a5),d0
[00026218] e880                      asr.l      #4,d0
[0002621a] c07c 000f                 and.w      #$000F,d0
[0002621e] 48c0                      ext.l      d0
[00026220] e588                      lsl.l      #2,d0
[00026222] 41f9 000b e270            lea.l      colour_text,a0
[00026228] 2270 0800                 movea.l    0(a0,d0.l),a1
[0002622c] 204a                      movea.l    a2,a0
[0002622e] 7012                      moveq.l    #18,d0
[00026230] 4eb9 0004 afe0            jsr        Aob_puttext
[00026236] 2015                      move.l     (a5),d0
[00026238] e880                      asr.l      #4,d0
[0002623a] c07c 000f                 and.w      #$000F,d0
[0002623e] 026a fff0 01a6            andi.w     #$FFF0,422(a2)
[00026244] c07c 000f                 and.w      #$000F,d0
[00026248] 816a 01a6                 or.w       d0,422(a2)
object_tree_1:
[0002624c] 204a                      movea.l    a2,a0
[0002624e] 4fef 000a                 lea.l      10(a7),a7
[00026252] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[00026256] 4e75                      rts

test_it:
[00026258] 2f0a                      move.l     a2,-(a7)
[0002625a] 2f0b                      move.l     a3,-(a7)
[0002625c] 2648                      movea.l    a0,a3
[0002625e] 2449                      movea.l    a1,a2
[00026260] 22bc 0005 ca2a            move.l     #A_picture,(a1)
[00026266] 486a 0004                 pea.l      4(a2)
[0002626a] 43f9 000b 26af            lea.l      $000B26AF,a1
[00026270] 2050                      movea.l    (a0),a0
[00026272] 4eb9 0007 594a            jsr        sscanf
[00026278] 584f                      addq.w     #4,a7
[0002627a] 00aa 0000 0001 0004       ori.l      #$00000001,4(a2)
[00026282] 257c 0005 cf28 0008       move.l     #Auo_picture,8(a2)
[0002628a] 256b 000a 000c            move.l     10(a3),12(a2)
[00026290] 7000                      moveq.l    #0,d0
[00026292] 2540 0014                 move.l     d0,20(a2)
[00026296] 2540 0010                 move.l     d0,16(a2)
[0002629a] 42aa 0018                 clr.l      24(a2)
[0002629e] 42aa 001c                 clr.l      28(a2)
[000262a2] 265f                      movea.l    (a7)+,a3
[000262a4] 245f                      movea.l    (a7)+,a2
[000262a6] 4e75                      rts

abort:
[000262a8] 2079 000b 268e            movea.l    $000B268E,a0
[000262ae] 2050                      movea.l    (a0),a0
[000262b0] 4e90                      jsr        (a0)
[000262b2] 4e75                      rts

ok:
[000262b4] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[000262b8] 4fef ffd2                 lea.l      -46(a7),a7
[000262bc] 2079 0010 1f12            movea.l    ACSblk,a0
[000262c2] 2268 0258                 movea.l    600(a0),a1
[000262c6] 2069 0014                 movea.l    20(a1),a0
[000262ca] 2868 003c                 movea.l    60(a0),a4
[000262ce] 246c 0014                 movea.l    20(a4),a2
[000262d2] 200a                      move.l     a2,d0
[000262d4] 6700 00e8                 beq        ok_1
[000262d8] 302a 0006                 move.w     6(a2),d0
[000262dc] 48c0                      ext.l      d0
[000262de] d080                      add.l      d0,d0
[000262e0] 322a 0008                 move.w     8(a2),d1
[000262e4] 48c1                      ext.l      d1
[000262e6] 4eb9 0007 76f0            jsr        _lmul
[000262ec] 322a 000c                 move.w     12(a2),d1
[000262f0] 48c1                      ext.l      d1
[000262f2] 4eb9 0007 76f0            jsr        _lmul
[000262f8] 2600                      move.l     d0,d3
[000262fa] d6bc 0000 001c            add.l      #$0000001C,d3
[00026300] 2003                      move.l     d3,d0
[00026302] 4eb9 0004 7cc8            jsr        Ax_malloc
[00026308] 2648                      movea.l    a0,a3
[0002630a] 200b                      move.l     a3,d0
[0002630c] 6700 00b0                 beq        ok_1
[00026310] 224a                      movea.l    a2,a1
[00026312] 7014                      moveq.l    #20,d0
[00026314] 4eb9 0007 6f44            jsr        memcpy
[0002631a] 42ab 0014                 clr.l      20(a3)
[0002631e] 42ab 0018                 clr.l      24(a3)
[00026322] 41eb 001c                 lea.l      28(a3),a0
[00026326] 2688                      move.l     a0,(a3)
[00026328] 377c 0001 000a            move.w     #$0001,10(a3)
[0002632e] 224b                      movea.l    a3,a1
[00026330] 2079 0010 1f12            movea.l    ACSblk,a0
[00026336] 3028 0010                 move.w     16(a0),d0
[0002633a] 204a                      movea.l    a2,a0
[0002633c] 4eb9 0006 66a8            jsr        vr_trnfm
[00026342] 70fe                      moveq.l    #-2,d0
[00026344] c0ac 0004                 and.l      4(a4),d0
[00026348] 2f00                      move.l     d0,-(a7)
[0002634a] 43f9 000b 26af            lea.l      $000B26AF,a1
[00026350] 41f9 000f f522            lea.l      parm,a0
[00026356] 4eb9 0007 5680            jsr        sprintf
[0002635c] 584f                      addq.w     #4,a7
[0002635e] 2ebc 000f f522            move.l     #parm,(a7)
[00026364] 2f7c 000b 26a3 0004       move.l     #$000B26A3,4(a7)
[0002636c] 3f7c 0003 0008            move.w     #$0003,8(a7)
[00026372] 2f4b 000a                 move.l     a3,10(a7)
[00026376] 2f43 000e                 move.l     d3,14(a7)
[0002637a] 4240                      clr.w      d0
[0002637c] 3f40 001c                 move.w     d0,28(a7)
[00026380] 3f40 0012                 move.w     d0,18(a7)
[00026384] 7200                      moveq.l    #0,d1
[00026386] 2f41 001e                 move.l     d1,30(a7)
[0002638a] 2f41 0014                 move.l     d1,20(a7)
[0002638e] 7000                      moveq.l    #0,d0
[00026390] 2f40 0022                 move.l     d0,34(a7)
[00026394] 2f40 0018                 move.l     d0,24(a7)
[00026398] 42af 0026                 clr.l      38(a7)
[0002639c] 42af 002a                 clr.l      42(a7)
[000263a0] 322a 0006                 move.w     6(a2),d1
[000263a4] 302a 0004                 move.w     4(a2),d0
[000263a8] 41d7                      lea.l      (a7),a0
[000263aa] 2279 000b 268e            movea.l    $000B268E,a1
[000263b0] 2269 0004                 movea.l    4(a1),a1
[000263b4] 4e91                      jsr        (a1)
[000263b6] 204b                      movea.l    a3,a0
[000263b8] 4eb9 0004 7d6c            jsr        Ax_ifree
ok_1:
[000263be] 6100 fee8                 bsr        abort
[000263c2] 4fef 002e                 lea.l      46(a7),a7
[000263c6] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[000263ca] 4e75                      rts

acc:
[000263cc] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[000263d0] 4fef fff4                 lea.l      -12(a7),a7
[000263d4] 2079 0010 1f12            movea.l    ACSblk,a0
[000263da] 2468 0258                 movea.l    600(a0),a2
[000263de] 2eaa 0014                 move.l     20(a2),(a7)
[000263e2] 2f68 0240 0008            move.l     576(a0),8(a7)
[000263e8] 4eb9 0004 4840            jsr        Adr_start
[000263ee] 4eb9 0004 484c            jsr        Adr_next
[000263f4] 3600                      move.w     d0,d3
[000263f6] 6f00 00c6                 ble        acc_1
[000263fa] 48c0                      ext.l      d0
[000263fc] 2200                      move.l     d0,d1
[000263fe] d281                      add.l      d1,d1
[00026400] d280                      add.l      d0,d1
[00026402] e789                      lsl.l      #3,d1
[00026404] 206f 0008                 movea.l    8(a7),a0
[00026408] 2068 0014                 movea.l    20(a0),a0
[0002640c] 41f0 1818                 lea.l      24(a0,d1.l),a0
[00026410] 0c68 000a 0016            cmpi.w     #$000A,22(a0)
[00026416] 6600 00a6                 bne        acc_1
[0002641a] 2668 000c                 movea.l    12(a0),a3
[0002641e] 382b 0004                 move.w     4(a3),d4
[00026422] 3a2b 0006                 move.w     6(a3),d5
[00026426] 3004                      move.w     d4,d0
[00026428] 3205                      move.w     d5,d1
[0002642a] 4eb9 0004 d928            jsr        Abp_create
[00026430] 2848                      movea.l    a0,a4
[00026432] 200c                      move.l     a4,d0
[00026434] 6700 0088                 beq        acc_1
[00026438] 0c6b 0001 000a            cmpi.w     #$0001,10(a3)
[0002643e] 661a                      bne.s      acc_2
[00026440] 426c 000a                 clr.w      10(a4)
[00026444] 224c                      movea.l    a4,a1
[00026446] 2079 0010 1f12            movea.l    ACSblk,a0
[0002644c] 3028 0010                 move.w     16(a0),d0
[00026450] 204b                      movea.l    a3,a0
[00026452] 4eb9 0006 66a8            jsr        vr_trnfm
[00026458] 6028                      bra.s      acc_3
acc_2:
[0002645a] 3005                      move.w     d5,d0
[0002645c] 48c0                      ext.l      d0
[0002645e] d080                      add.l      d0,d0
[00026460] 322c 0008                 move.w     8(a4),d1
[00026464] 48c1                      ext.l      d1
[00026466] 4eb9 0007 76f0            jsr        _lmul
[0002646c] 322c 000c                 move.w     12(a4),d1
[00026470] 48c1                      ext.l      d1
[00026472] 4eb9 0007 76f0            jsr        _lmul
[00026478] 2253                      movea.l    (a3),a1
[0002647a] 2054                      movea.l    (a4),a0
[0002647c] 4eb9 0007 6f44            jsr        memcpy
acc_3:
[00026482] 2657                      movea.l    (a7),a3
[00026484] 47eb 0030                 lea.l      48(a3),a3
[00026488] 2f6b 000c 0004            move.l     12(a3),4(a7)
[0002648e] 224c                      movea.l    a4,a1
[00026490] 303c 01f4                 move.w     #$01F4,d0
[00026494] 204b                      movea.l    a3,a0
[00026496] 2a6f 0004                 movea.l    4(a7),a5
[0002649a] 2a6d 0008                 movea.l    8(a5),a5
[0002649e] 4e95                      jsr        (a5)
[000264a0] 006a 0010 0056            ori.w      #$0010,86(a2)
[000264a6] 43ea 0024                 lea.l      36(a2),a1
[000264aa] 204a                      movea.l    a2,a0
[000264ac] 266a 0086                 movea.l    134(a2),a3
[000264b0] 4e93                      jsr        (a3)
[000264b2] 3003                      move.w     d3,d0
[000264b4] 206f 0008                 movea.l    8(a7),a0
[000264b8] 4eb9 0004 492a            jsr        Adr_del
acc_1:
[000264be] 4fef 000c                 lea.l      12(a7),a7
[000264c2] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[000264c6] 4e75                      rts

	.data

TEXT_005:
[000b1318]                           dc.w $4f4b
[000b131a]                           dc.b $00
TEXT_009:
[000b131b]                           dc.b 'Abbruch',0
TEXT_01:
[000b1323]                           dc.b 'Kachel-Modus',0
TEXT_02:
[000b1330]                           dc.b 'Hintergrund:',0
TEXT_04:
[000b133d]                           dc.b 'Dither-Modus',0
TEXT_05:
[000b134a]                           dc.b 'Muster:',0
TEXT_11:
[000b1352]                           dc.b 'Farbe:',0
help_title:
[000b1359]                           dc.b 'Der Picture-Editor',0
title:
[000b136c]                           dc.b ' PICTURE -',0
[000b1377]                           dc.b $00
DATAS_01:
[000b1378]                           dc.b $00
[000b1379]                           dc.b $35
[000b137a]                           dc.w $28d6
[000b137c]                           dc.b $00
[000b137d]                           dc.b $30
[000b137e]                           dc.b $00
[000b137f]                           dc.b $20
[000b1380]                           dc.b $00
[000b1381]                           dc.b $03
[000b1382]                           dc.b $00
[000b1383]                           dc.b $01
[000b1384]                           dc.b $00
[000b1385]                           dc.b $04
[000b1386]                           dc.b $00
[000b1387]                           dc.b $00
[000b1388]                           dc.b $00
[000b1389]                           dc.b $00
[000b138a]                           dc.b $00
[000b138b]                           dc.b $00
[000b138c]                           dc.b $00
[000b138d]                           dc.b $00
[000b138e]                           dc.b $00
[000b138f]                           dc.b $00
[000b1390]                           dc.b $00
[000b1391]                           dc.b $00
[000b1392]                           dc.b $00
[000b1393]                           dc.b $00
[000b1394]                           dc.b $00
[000b1395]                           dc.b $00
[000b1396]                           dc.b $00
[000b1397]                           dc.b $00
[000b1398]                           dc.b $00
[000b1399]                           dc.b $00
[000b139a]                           dc.b $00
[000b139b]                           dc.b $00
[000b139c]                           dc.b $00
[000b139d]                           dc.b $00
[000b139e]                           dc.b $00
[000b139f]                           dc.b $00
[000b13a0]                           dc.b $00
[000b13a1]                           dc.b $00
[000b13a2]                           dc.b $00
[000b13a3]                           dc.b $00
[000b13a4]                           dc.b $00
[000b13a5]                           dc.b $00
[000b13a6]                           dc.b $00
[000b13a7]                           dc.b $00
[000b13a8]                           dc.b $00
[000b13a9]                           dc.b $00
[000b13aa]                           dc.b $00
[000b13ab]                           dc.b $00
[000b13ac]                           dc.b $00
[000b13ad]                           dc.b $00
[000b13ae]                           dc.b $00
[000b13af]                           dc.b $00
[000b13b0]                           dc.b $00
[000b13b1]                           dc.b $00
[000b13b2]                           dc.b $00
[000b13b3]                           dc.b $00
[000b13b4]                           dc.b $00
[000b13b5]                           dc.b $00
[000b13b6]                           dc.b $00
[000b13b7]                           dc.b $00
[000b13b8]                           dc.b $00
[000b13b9]                           dc.b $00
[000b13ba]                           dc.w $2110
[000b13bc]                           dc.b $00
[000b13bd]                           dc.b $00
[000b13be]                           dc.b $00
[000b13bf]                           dc.b $00
[000b13c0]                           dc.w $2110
[000b13c2]                           dc.w $3700
[000b13c4]                           dc.b $00
[000b13c5]                           dc.b $01
[000b13c6]                           dc.w $1020
[000b13c8]                           dc.b $48
[000b13c9]                           dc.b $80
[000b13ca]                           dc.w $6c00
[000b13cc]                           dc.w $8782
[000b13ce]                           dc.w $3700
[000b13d0]                           dc.w $1000
[000b13d2]                           dc.w $1864
[000b13d4]                           dc.b $00
[000b13d5]                           dc.b $00
[000b13d6]                           dc.b $00
[000b13d7]                           dc.b $0c
[000b13d8]                           dc.w $2010
[000b13da]                           dc.w $c000
[000b13dc]                           dc.b $00
[000b13dd]                           dc.b $02
[000b13de]                           dc.w $4009
[000b13e0]                           dc.b $00
[000b13e1]                           dc.b $00
[000b13e2]                           dc.b $00
[000b13e3]                           dc.b $00
[000b13e4]                           dc.w $4008
[000b13e6]                           dc.b $00
[000b13e7]                           dc.b $00
[000b13e8]                           dc.b $00
[000b13e9]                           dc.b $00
[000b13ea]                           dc.w $8004
[000b13ec]                           dc.b $00
[000b13ed]                           dc.b $00
[000b13ee]                           dc.b $00
[000b13ef]                           dc.b $0e
[000b13f0]                           dc.w $8005
[000b13f2]                           dc.w $c000
[000b13f4]                           dc.b $00
[000b13f5]                           dc.b $00
[000b13f6]                           dc.w $8004
[000b13f8]                           dc.b $00
[000b13f9]                           dc.b $00
[000b13fa]                           dc.b $00
[000b13fb]                           dc.b $00
[000b13fc]                           dc.w $8004
[000b13fe]                           dc.b $00
[000b13ff]                           dc.b $00
[000b1400]                           dc.w $3f1c
[000b1402]                           dc.w $7878
[000b1404]                           dc.w $70f0
[000b1406]                           dc.b $00
[000b1407]                           dc.b $e3
[000b1408]                           dc.w $8787
[000b140a]                           dc.w $8f0c
[000b140c]                           dc.w $fe18
[000b140e]                           dc.b $00
[000b140f]                           dc.b $00
[000b1410]                           dc.b $00
[000b1411]                           dc.b $00
[000b1412]                           dc.w $01e7
[000b1414]                           dc.b '8p<`',0
[000b1419]                           dc.b $00
[000b141a]                           dc.w $0787
[000b141c]                           dc.w $c39f
[000b141e]                           dc.w $fe1c
[000b1420]                           dc.b $00
[000b1421]                           dc.b $00
[000b1422]                           dc.b $00
[000b1423]                           dc.b $00
[000b1424]                           dc.w $01e3
[000b1426]                           dc.w $9ce0
[000b1428]                           dc.w $e1e0
[000b142a]                           dc.b $00
[000b142b]                           dc.b $00
[000b142c]                           dc.w $030f
[000b142e]                           dc.w $1e1f
[000b1430]                           dc.w $0f07
[000b1432]                           dc.w $e000
[000b1434]                           dc.w $70c0
[000b1436]                           dc.w $30f8
[000b1438]                           dc.w $0ccf
[000b143a]                           dc.w $8f3c
[000b143c]                           dc.b $00
[000b143d]                           dc.b $00
[000b143e]                           dc.w $0300
[000b1440]                           dc.b $00
[000b1441]                           dc.b $00
[000b1442]                           dc.b $00
[000b1443]                           dc.b $00
[000b1444]                           dc.b $00
[000b1445]                           dc.b $00
[000b1446]                           dc.b $00
[000b1447]                           dc.b $00
[000b1448]                           dc.b $00
[000b1449]                           dc.b $00
[000b144a]                           dc.b $00
[000b144b]                           dc.b $00
[000b144c]                           dc.b $00
[000b144d]                           dc.b $00
[000b144e]                           dc.b $00
[000b144f]                           dc.b $00
[000b1450]                           dc.b $00
[000b1451]                           dc.b $00
[000b1452]                           dc.b $00
[000b1453]                           dc.b $00
[000b1454]                           dc.b $00
[000b1455]                           dc.b $00
[000b1456]                           dc.b $00
[000b1457]                           dc.b $00
[000b1458]                           dc.b $00
[000b1459]                           dc.b $00
[000b145a]                           dc.b $00
[000b145b]                           dc.b $00
[000b145c]                           dc.b $00
[000b145d]                           dc.b $00
[000b145e]                           dc.b $00
[000b145f]                           dc.b $00
[000b1460]                           dc.b $00
[000b1461]                           dc.b $00
[000b1462]                           dc.b $00
[000b1463]                           dc.b $00
[000b1464]                           dc.b $00
[000b1465]                           dc.b $00
[000b1466]                           dc.b $00
[000b1467]                           dc.b $00
[000b1468]                           dc.b $00
[000b1469]                           dc.b $00
[000b146a]                           dc.b $00
[000b146b]                           dc.b $00
[000b146c]                           dc.b $00
[000b146d]                           dc.b $00
[000b146e]                           dc.b $00
[000b146f]                           dc.b $00
[000b1470]                           dc.b $00
[000b1471]                           dc.b $00
[000b1472]                           dc.b $00
[000b1473]                           dc.b $00
[000b1474]                           dc.b $00
[000b1475]                           dc.b $00
[000b1476]                           dc.b $00
[000b1477]                           dc.b $00
[000b1478]                           dc.b $00
[000b1479]                           dc.b $00
[000b147a]                           dc.w $2110
[000b147c]                           dc.b $00
[000b147d]                           dc.b $00
[000b147e]                           dc.b $00
[000b147f]                           dc.b $00
[000b1480]                           dc.w $2110
[000b1482]                           dc.w $3700
[000b1484]                           dc.b $00
[000b1485]                           dc.b $01
[000b1486]                           dc.w $1020
[000b1488]                           dc.w $4880
[000b148a]                           dc.w $6c00
[000b148c]                           dc.w $8782
[000b148e]                           dc.w $3700
[000b1490]                           dc.w $1000
[000b1492]                           dc.w $1864
[000b1494]                           dc.b $00
[000b1495]                           dc.b $00
[000b1496]                           dc.b $00
[000b1497]                           dc.b $0c
[000b1498]                           dc.w $2010
[000b149a]                           dc.w $c000
[000b149c]                           dc.b $00
[000b149d]                           dc.b $02
[000b149e]                           dc.w $4009
[000b14a0]                           dc.b $00
[000b14a1]                           dc.b $00
[000b14a2]                           dc.b $00
[000b14a3]                           dc.b $00
[000b14a4]                           dc.w $4008
[000b14a6]                           dc.b $00
[000b14a7]                           dc.b $00
[000b14a8]                           dc.b $00
[000b14a9]                           dc.b $00
[000b14aa]                           dc.w $8004
[000b14ac]                           dc.b $00
[000b14ad]                           dc.b $00
[000b14ae]                           dc.b $00
[000b14af]                           dc.b $0e
[000b14b0]                           dc.w $8005
[000b14b2]                           dc.w $c000
[000b14b4]                           dc.b $00
[000b14b5]                           dc.b $00
[000b14b6]                           dc.w $8004
[000b14b8]                           dc.b $00
[000b14b9]                           dc.b $00
[000b14ba]                           dc.b $00
[000b14bb]                           dc.b $00
[000b14bc]                           dc.w $8004
[000b14be]                           dc.b $00
[000b14bf]                           dc.b $00
[000b14c0]                           dc.w $3f1c
[000b14c2]                           dc.w $7878
[000b14c4]                           dc.w $70f0
[000b14c6]                           dc.b $00
[000b14c7]                           dc.b $e3
[000b14c8]                           dc.w $8787
[000b14ca]                           dc.w $8f0c
[000b14cc]                           dc.w $fe18
[000b14ce]                           dc.b $00
[000b14cf]                           dc.b $00
[000b14d0]                           dc.b $00
[000b14d1]                           dc.b $00
[000b14d2]                           dc.w $01e7
[000b14d4]                           dc.b '8p<`',0
[000b14d9]                           dc.b $00
[000b14da]                           dc.w $0787
[000b14dc]                           dc.w $c39f
[000b14de]                           dc.w $fe1c
[000b14e0]                           dc.b $00
[000b14e1]                           dc.b $00
[000b14e2]                           dc.b $00
[000b14e3]                           dc.b $00
[000b14e4]                           dc.w $01e3
[000b14e6]                           dc.w $9ce0
[000b14e8]                           dc.w $e1e0
[000b14ea]                           dc.b $00
[000b14eb]                           dc.b $00
[000b14ec]                           dc.w $030f
[000b14ee]                           dc.w $1e1f
[000b14f0]                           dc.w $0f07
[000b14f2]                           dc.w $e000
[000b14f4]                           dc.w $70c0
[000b14f6]                           dc.w $30f8
[000b14f8]                           dc.w $0ccf
[000b14fa]                           dc.w $8f3c
[000b14fc]                           dc.b $00
[000b14fd]                           dc.b $00
[000b14fe]                           dc.w $0300
[000b1500]                           dc.b $00
[000b1501]                           dc.b $00
[000b1502]                           dc.b $00
[000b1503]                           dc.b $00
[000b1504]                           dc.b $00
[000b1505]                           dc.b $00
[000b1506]                           dc.b $00
[000b1507]                           dc.b $00
[000b1508]                           dc.b $00
[000b1509]                           dc.b $00
[000b150a]                           dc.b $00
[000b150b]                           dc.b $00
[000b150c]                           dc.b $00
[000b150d]                           dc.b $00
[000b150e]                           dc.b $00
[000b150f]                           dc.b $00
[000b1510]                           dc.b $00
[000b1511]                           dc.b $00
[000b1512]                           dc.b $00
[000b1513]                           dc.b $00
[000b1514]                           dc.b $00
[000b1515]                           dc.b $00
[000b1516]                           dc.b $00
[000b1517]                           dc.b $00
[000b1518]                           dc.b $00
[000b1519]                           dc.b $00
[000b151a]                           dc.b $00
[000b151b]                           dc.b $00
[000b151c]                           dc.b $00
[000b151d]                           dc.b $00
[000b151e]                           dc.b $00
[000b151f]                           dc.b $00
[000b1520]                           dc.b $00
[000b1521]                           dc.b $00
[000b1522]                           dc.b $00
[000b1523]                           dc.b $00
[000b1524]                           dc.b $00
[000b1525]                           dc.b $00
[000b1526]                           dc.b $00
[000b1527]                           dc.b $00
[000b1528]                           dc.b $00
[000b1529]                           dc.b $00
[000b152a]                           dc.b $00
[000b152b]                           dc.b $00
[000b152c]                           dc.b $00
[000b152d]                           dc.b $00
[000b152e]                           dc.b $00
[000b152f]                           dc.b $00
[000b1530]                           dc.b $00
[000b1531]                           dc.b $00
[000b1532]                           dc.b $00
[000b1533]                           dc.b $00
[000b1534]                           dc.b $00
[000b1535]                           dc.b $00
[000b1536]                           dc.b $00
[000b1537]                           dc.b $00
[000b1538]                           dc.b $00
[000b1539]                           dc.b $00
[000b153a]                           dc.w $2110
[000b153c]                           dc.b $00
[000b153d]                           dc.b $00
[000b153e]                           dc.b $00
[000b153f]                           dc.b $00
[000b1540]                           dc.w $2110
[000b1542]                           dc.w $3700
[000b1544]                           dc.b $00
[000b1545]                           dc.b $01
[000b1546]                           dc.w $1020
[000b1548]                           dc.w $4880
[000b154a]                           dc.w $6c00
[000b154c]                           dc.w $8782
[000b154e]                           dc.w $3700
[000b1550]                           dc.w $1000
[000b1552]                           dc.w $1864
[000b1554]                           dc.b $00
[000b1555]                           dc.b $00
[000b1556]                           dc.b $00
[000b1557]                           dc.b $0c
[000b1558]                           dc.w $2010
[000b155a]                           dc.w $c000
[000b155c]                           dc.b $00
[000b155d]                           dc.b $02
[000b155e]                           dc.w $4009
[000b1560]                           dc.b $00
[000b1561]                           dc.b $00
[000b1562]                           dc.b $00
[000b1563]                           dc.b $00
[000b1564]                           dc.w $4008
[000b1566]                           dc.b $00
[000b1567]                           dc.b $00
[000b1568]                           dc.b $00
[000b1569]                           dc.b $00
[000b156a]                           dc.w $8004
[000b156c]                           dc.b $00
[000b156d]                           dc.b $00
[000b156e]                           dc.b $00
[000b156f]                           dc.b $0e
[000b1570]                           dc.w $8005
[000b1572]                           dc.w $c000
[000b1574]                           dc.b $00
[000b1575]                           dc.b $00
[000b1576]                           dc.w $8004
[000b1578]                           dc.b $00
[000b1579]                           dc.b $00
[000b157a]                           dc.b $00
[000b157b]                           dc.b $00
[000b157c]                           dc.w $8004
[000b157e]                           dc.b $00
[000b157f]                           dc.b $00
[000b1580]                           dc.b $3f
[000b1581]                           dc.b $1c
[000b1582]                           dc.w $7878
[000b1584]                           dc.w $70f0
[000b1586]                           dc.b $00
[000b1587]                           dc.b $e3
[000b1588]                           dc.w $8787
[000b158a]                           dc.w $8f0c
[000b158c]                           dc.w $fe18
[000b158e]                           dc.b $00
[000b158f]                           dc.b $00
[000b1590]                           dc.b $00
[000b1591]                           dc.b $00
[000b1592]                           dc.w $01e7
[000b1594]                           dc.b '8p<`',0
[000b1599]                           dc.b $00
[000b159a]                           dc.w $0787
[000b159c]                           dc.w $c39f
[000b159e]                           dc.w $fe1c
[000b15a0]                           dc.b $00
[000b15a1]                           dc.b $00
[000b15a2]                           dc.b $00
[000b15a3]                           dc.b $00
[000b15a4]                           dc.w $01e3
[000b15a6]                           dc.w $9ce0
[000b15a8]                           dc.b $e1
[000b15a9]                           dc.b $e0
[000b15aa]                           dc.b $00
[000b15ab]                           dc.b $00
[000b15ac]                           dc.w $030f
[000b15ae]                           dc.w $1e1f
[000b15b0]                           dc.b $0f
[000b15b1]                           dc.b $07
[000b15b2]                           dc.w $e000
[000b15b4]                           dc.w $70c0
[000b15b6]                           dc.w $30f8
[000b15b8]                           dc.w $0ccf
[000b15ba]                           dc.w $8f3c
[000b15bc]                           dc.b $00
[000b15bd]                           dc.b $00
[000b15be]                           dc.w $0300
[000b15c0]                           dc.b $00
[000b15c1]                           dc.b $00
[000b15c2]                           dc.b $00
[000b15c3]                           dc.b $00
[000b15c4]                           dc.b $00
[000b15c5]                           dc.b $00
[000b15c6]                           dc.b $00
[000b15c7]                           dc.b $00
[000b15c8]                           dc.b $00
[000b15c9]                           dc.b $00
[000b15ca]                           dc.b $00
[000b15cb]                           dc.b $00
[000b15cc]                           dc.b $00
[000b15cd]                           dc.b $00
[000b15ce]                           dc.b $00
[000b15cf]                           dc.b $00
[000b15d0]                           dc.b $00
[000b15d1]                           dc.b $00
[000b15d2]                           dc.b $00
[000b15d3]                           dc.b $00
[000b15d4]                           dc.b $00
[000b15d5]                           dc.b $00
[000b15d6]                           dc.b $00
[000b15d7]                           dc.b $00
[000b15d8]                           dc.b $00
[000b15d9]                           dc.b $00
[000b15da]                           dc.b $00
[000b15db]                           dc.b $00
[000b15dc]                           dc.b $00
[000b15dd]                           dc.b $00
[000b15de]                           dc.b $00
[000b15df]                           dc.b $00
[000b15e0]                           dc.b $00
[000b15e1]                           dc.b $00
[000b15e2]                           dc.b $00
[000b15e3]                           dc.b $00
[000b15e4]                           dc.b $00
[000b15e5]                           dc.b $00
[000b15e6]                           dc.b $00
[000b15e7]                           dc.b $00
[000b15e8]                           dc.b $00
[000b15e9]                           dc.b $00
[000b15ea]                           dc.b $00
[000b15eb]                           dc.b $00
[000b15ec]                           dc.b $00
[000b15ed]                           dc.b $00
[000b15ee]                           dc.b $00
[000b15ef]                           dc.b $00
[000b15f0]                           dc.b $00
[000b15f1]                           dc.b $00
[000b15f2]                           dc.b $00
[000b15f3]                           dc.b $00
[000b15f4]                           dc.b $00
[000b15f5]                           dc.b $00
[000b15f6]                           dc.b $00
[000b15f7]                           dc.b $00
[000b15f8]                           dc.b $00
[000b15f9]                           dc.b $00
[000b15fa]                           dc.b $21
[000b15fb]                           dc.b $10
[000b15fc]                           dc.b $00
[000b15fd]                           dc.b $00
[000b15fe]                           dc.b $00
[000b15ff]                           dc.b $00
[000b1600]                           dc.b $21
[000b1601]                           dc.b $10
[000b1602]                           dc.w $3700
[000b1604]                           dc.b $00
[000b1605]                           dc.b $01
[000b1606]                           dc.w $1020
[000b1608]                           dc.w $4880
[000b160a]                           dc.w $6c00
[000b160c]                           dc.w $8782
[000b160e]                           dc.w $3700
[000b1610]                           dc.b $10
[000b1611]                           dc.b $00
[000b1612]                           dc.w $1864
[000b1614]                           dc.b $00
[000b1615]                           dc.b $00
[000b1616]                           dc.b $00
[000b1617]                           dc.b $0c
[000b1618]                           dc.w $2010
[000b161a]                           dc.w $c000
[000b161c]                           dc.b $00
[000b161d]                           dc.b $02
[000b161e]                           dc.w $4009
[000b1620]                           dc.b $00
[000b1621]                           dc.b $00
[000b1622]                           dc.b $00
[000b1623]                           dc.b $00
[000b1624]                           dc.w $4008
[000b1626]                           dc.b $00
[000b1627]                           dc.b $00
[000b1628]                           dc.b $00
[000b1629]                           dc.b $00
[000b162a]                           dc.w $8004
[000b162c]                           dc.b $00
[000b162d]                           dc.b $00
[000b162e]                           dc.b $00
[000b162f]                           dc.b $0e
[000b1630]                           dc.w $8005
[000b1632]                           dc.w $c000
[000b1634]                           dc.b $00
[000b1635]                           dc.b $00
[000b1636]                           dc.w $8004
[000b1638]                           dc.b $00
[000b1639]                           dc.b $00
[000b163a]                           dc.b $00
[000b163b]                           dc.b $00
[000b163c]                           dc.w $8004
[000b163e]                           dc.b $00
[000b163f]                           dc.b $00
[000b1640]                           dc.w $3f1c
[000b1642]                           dc.w $7878
[000b1644]                           dc.w $70f0
[000b1646]                           dc.b $00
[000b1647]                           dc.b $e3
[000b1648]                           dc.w $8787
[000b164a]                           dc.w $8f0c
[000b164c]                           dc.w $fe18
[000b164e]                           dc.b $00
[000b164f]                           dc.b $00
[000b1650]                           dc.b $00
[000b1651]                           dc.b $00
[000b1652]                           dc.w $01e7
[000b1654]                           dc.b '8p<`',0
[000b1659]                           dc.b $00
[000b165a]                           dc.w $0787
[000b165c]                           dc.w $c39f
[000b165e]                           dc.w $fe1c
[000b1660]                           dc.b $00
[000b1661]                           dc.b $00
[000b1662]                           dc.b $00
[000b1663]                           dc.b $00
[000b1664]                           dc.w $01e3
[000b1666]                           dc.w $9ce0
[000b1668]                           dc.w $e1e0
[000b166a]                           dc.b $00
[000b166b]                           dc.b $00
[000b166c]                           dc.w $030f
[000b166e]                           dc.w $1e1f
[000b1670]                           dc.w $0f07
[000b1672]                           dc.w $e000
[000b1674]                           dc.w $70c0
[000b1676]                           dc.w $30f8
[000b1678]                           dc.w $0ccf
[000b167a]                           dc.w $8f3c
[000b167c]                           dc.b $00
[000b167d]                           dc.b $00
[000b167e]                           dc.w $0300
[000b1680]                           dc.b $00
[000b1681]                           dc.b $00
[000b1682]                           dc.b $00
[000b1683]                           dc.b $00
[000b1684]                           dc.b $00
[000b1685]                           dc.b $00
[000b1686]                           dc.b $00
[000b1687]                           dc.b $00
[000b1688]                           dc.b $00
[000b1689]                           dc.b $00
[000b168a]                           dc.b $00
[000b168b]                           dc.b $00
[000b168c]                           dc.b $00
[000b168d]                           dc.b $00
[000b168e]                           dc.b $00
[000b168f]                           dc.b $00
[000b1690]                           dc.b $00
[000b1691]                           dc.b $00
[000b1692]                           dc.b $00
[000b1693]                           dc.b $00
PICDATA:
[000b1694]                           dc.b $00
[000b1695]                           dc.b $28
[000b1696]                           dc.w $cbe6
[000b1698]                           dc.b $00
[000b1699]                           dc.b $30
[000b169a]                           dc.b $00
[000b169b]                           dc.b $20
[000b169c]                           dc.b $00
[000b169d]                           dc.b $03
[000b169e]                           dc.b $00
[000b169f]                           dc.b $01
[000b16a0]                           dc.b $00
[000b16a1]                           dc.b $01
[000b16a2]                           dc.b $00
[000b16a3]                           dc.b $00
[000b16a4]                           dc.b $00
[000b16a5]                           dc.b $00
[000b16a6]                           dc.b $00
[000b16a7]                           dc.b $00
[000b16a8]                           dc.b $00
[000b16a9]                           dc.b $00
[000b16aa]                           dc.b $00
[000b16ab]                           dc.b $00
[000b16ac]                           dc.b $00
[000b16ad]                           dc.b $00
[000b16ae]                           dc.b $00
[000b16af]                           dc.b $00
[000b16b0]                           dc.b $00
[000b16b1]                           dc.b $00
[000b16b2]                           dc.b $00
[000b16b3]                           dc.b $00
[000b16b4]                           dc.b $00
[000b16b5]                           dc.b $00
[000b16b6]                           dc.b $00
[000b16b7]                           dc.b $00
[000b16b8]                           dc.b $00
[000b16b9]                           dc.b $00
[000b16ba]                           dc.b $00
[000b16bb]                           dc.b $00
[000b16bc]                           dc.b $00
[000b16bd]                           dc.b $00
[000b16be]                           dc.b $00
[000b16bf]                           dc.b $00
[000b16c0]                           dc.b $00
[000b16c1]                           dc.b $00
[000b16c2]                           dc.b $00
[000b16c3]                           dc.b $00
[000b16c4]                           dc.b $00
[000b16c5]                           dc.b $00
[000b16c6]                           dc.b $00
[000b16c7]                           dc.b $00
[000b16c8]                           dc.b $00
[000b16c9]                           dc.b $00
[000b16ca]                           dc.b $00
[000b16cb]                           dc.b $00
[000b16cc]                           dc.b $00
[000b16cd]                           dc.b $00
[000b16ce]                           dc.b $00
[000b16cf]                           dc.b $00
[000b16d0]                           dc.b $00
[000b16d1]                           dc.b $00
[000b16d2]                           dc.b $00
[000b16d3]                           dc.b $00
[000b16d4]                           dc.b $00
[000b16d5]                           dc.b $00
[000b16d6]                           dc.w $2110
[000b16d8]                           dc.b $00
[000b16d9]                           dc.b $00
[000b16da]                           dc.b $00
[000b16db]                           dc.b $00
[000b16dc]                           dc.w $2110
[000b16de]                           dc.w $3700
[000b16e0]                           dc.b $00
[000b16e1]                           dc.b $01
[000b16e2]                           dc.w $1020
[000b16e4]                           dc.w $4880
[000b16e6]                           dc.w $6c00
[000b16e8]                           dc.w $8782
[000b16ea]                           dc.w $3700
[000b16ec]                           dc.w $1000
[000b16ee]                           dc.w $1864
[000b16f0]                           dc.b $00
[000b16f1]                           dc.b $00
[000b16f2]                           dc.b $00
[000b16f3]                           dc.b $0c
[000b16f4]                           dc.w $2010
[000b16f6]                           dc.w $c000
[000b16f8]                           dc.b $00
[000b16f9]                           dc.b $02
[000b16fa]                           dc.w $4009
[000b16fc]                           dc.b $00
[000b16fd]                           dc.b $00
[000b16fe]                           dc.b $00
[000b16ff]                           dc.b $00
[000b1700]                           dc.w $4008
[000b1702]                           dc.b $00
[000b1703]                           dc.b $00
[000b1704]                           dc.b $00
[000b1705]                           dc.b $00
[000b1706]                           dc.w $8004
[000b1708]                           dc.b $00
[000b1709]                           dc.b $00
[000b170a]                           dc.b $00
[000b170b]                           dc.b $0e
[000b170c]                           dc.w $8005
[000b170e]                           dc.w $c000
[000b1710]                           dc.b $00
[000b1711]                           dc.b $00
[000b1712]                           dc.w $8004
[000b1714]                           dc.b $00
[000b1715]                           dc.b $00
[000b1716]                           dc.b $00
[000b1717]                           dc.b $00
[000b1718]                           dc.w $8004
[000b171a]                           dc.b $00
[000b171b]                           dc.b $00
[000b171c]                           dc.w $3f1c
[000b171e]                           dc.w $7878
[000b1720]                           dc.w $70f0
[000b1722]                           dc.b $00
[000b1723]                           dc.b $e3
[000b1724]                           dc.w $8787
[000b1726]                           dc.w $8f0c
[000b1728]                           dc.w $fe18
[000b172a]                           dc.b $00
[000b172b]                           dc.b $00
[000b172c]                           dc.b $00
[000b172d]                           dc.b $00
[000b172e]                           dc.w $01e7
[000b1730]                           dc.b '8p<`',0
[000b1735]                           dc.b $00
[000b1736]                           dc.w $0787
[000b1738]                           dc.w $c39f
[000b173a]                           dc.w $fe1c
[000b173c]                           dc.b $00
[000b173d]                           dc.b $00
[000b173e]                           dc.b $00
[000b173f]                           dc.b $00
[000b1740]                           dc.w $01e3
[000b1742]                           dc.w $9ce0
[000b1744]                           dc.w $e1e0
[000b1746]                           dc.b $00
[000b1747]                           dc.b $00
[000b1748]                           dc.w $030f
[000b174a]                           dc.w $1e1f
[000b174c]                           dc.w $0f07
[000b174e]                           dc.w $e000
[000b1750]                           dc.w $70c0
[000b1752]                           dc.w $30f8
[000b1754]                           dc.w $0ccf
[000b1756]                           dc.w $8f3c
[000b1758]                           dc.b $00
[000b1759]                           dc.b $00
[000b175a]                           dc.w $0300
[000b175c]                           dc.b $00
[000b175d]                           dc.b $00
[000b175e]                           dc.b $00
[000b175f]                           dc.b $00
[000b1760]                           dc.b $00
[000b1761]                           dc.b $00
[000b1762]                           dc.b $00
[000b1763]                           dc.b $00
[000b1764]                           dc.b $00
[000b1765]                           dc.b $00
[000b1766]                           dc.b $00
[000b1767]                           dc.b $00
[000b1768]                           dc.b $00
[000b1769]                           dc.b $00
[000b176a]                           dc.b $00
[000b176b]                           dc.b $00
[000b176c]                           dc.b $00
[000b176d]                           dc.b $00
[000b176e]                           dc.b $00
[000b176f]                           dc.b $00
A_3DBUTTON01:
[000b1770] 0005a4e2                  dc.l A_3Dbutton
[000b1774]                           dc.w $29f1
[000b1776]                           dc.w $0178
[000b1778] 00059318                  dc.l Auo_string
[000b177c]                           dc.b $00
[000b177d]                           dc.b $00
[000b177e]                           dc.b $00
[000b177f]                           dc.b $00
[000b1780]                           dc.b $00
[000b1781]                           dc.b $00
[000b1782]                           dc.b $00
[000b1783]                           dc.b $00
[000b1784]                           dc.b $00
[000b1785]                           dc.b $00
[000b1786]                           dc.b $00
[000b1787]                           dc.b $00
[000b1788]                           dc.b $00
[000b1789]                           dc.b $00
[000b178a]                           dc.b $00
[000b178b]                           dc.b $00
[000b178c]                           dc.b $00
[000b178d]                           dc.b $00
[000b178e]                           dc.b $00
[000b178f]                           dc.b $00
A_3DBUTTON02:
[000b1790] 0005a4e2                  dc.l A_3Dbutton
[000b1794]                           dc.w $29f1
[000b1796]                           dc.w $0178
[000b1798] 00059318                  dc.l Auo_string
[000b179c]                           dc.b $00
[000b179d]                           dc.b $00
[000b179e]                           dc.b $00
[000b179f]                           dc.b $00
[000b17a0]                           dc.b $00
[000b17a1]                           dc.b $00
[000b17a2]                           dc.b $00
[000b17a3]                           dc.b $00
[000b17a4]                           dc.b $00
[000b17a5]                           dc.b $00
[000b17a6]                           dc.b $00
[000b17a7]                           dc.b $00
[000b17a8]                           dc.b $00
[000b17a9]                           dc.b $00
[000b17aa]                           dc.b $00
[000b17ab]                           dc.b $00
[000b17ac]                           dc.b $00
[000b17ad]                           dc.b $00
[000b17ae]                           dc.b $00
[000b17af]                           dc.b $00
A_3DBUTTON03:
[000b17b0] 0005a4e2                  dc.l A_3Dbutton
[000b17b4]                           dc.w $29c1
[000b17b6]                           dc.w $0178
[000b17b8] 00059318                  dc.l Auo_string
[000b17bc] 000b1318                  dc.l TEXT_005
[000b17c0]                           dc.b $00
[000b17c1]                           dc.b $00
[000b17c2]                           dc.b $00
[000b17c3]                           dc.b $00
[000b17c4]                           dc.b $00
[000b17c5]                           dc.b $00
[000b17c6]                           dc.b $00
[000b17c7]                           dc.b $00
[000b17c8]                           dc.b $00
[000b17c9]                           dc.b $00
[000b17ca]                           dc.b $00
[000b17cb]                           dc.b $00
[000b17cc]                           dc.b $00
[000b17cd]                           dc.b $00
[000b17ce]                           dc.b $00
[000b17cf]                           dc.b $00
A_3DBUTTON04:
[000b17d0] 0005a4e2                  dc.l A_3Dbutton
[000b17d4]                           dc.w $29c1
[000b17d6]                           dc.w $0178
[000b17d8] 00059318                  dc.l Auo_string
[000b17dc] 000b131b                  dc.l TEXT_009
[000b17e0]                           dc.b $00
[000b17e1]                           dc.b $00
[000b17e2]                           dc.b $00
[000b17e3]                           dc.b $00
[000b17e4]                           dc.b $00
[000b17e5]                           dc.b $00
[000b17e6]                           dc.b $00
[000b17e7]                           dc.b $00
[000b17e8]                           dc.b $00
[000b17e9]                           dc.b $00
[000b17ea]                           dc.b $00
[000b17eb]                           dc.b $00
[000b17ec]                           dc.b $00
[000b17ed]                           dc.b $00
[000b17ee]                           dc.b $00
[000b17ef]                           dc.b $00
A_3DBUTTON27:
[000b17f0] 0005a4e2                  dc.l A_3Dbutton
[000b17f4]                           dc.w $09f1
[000b17f6]                           dc.w $0178
[000b17f8] 00059318                  dc.l Auo_string
[000b17fc]                           dc.b $00
[000b17fd]                           dc.b $00
[000b17fe]                           dc.b $00
[000b17ff]                           dc.b $00
[000b1800]                           dc.b $00
[000b1801]                           dc.b $00
[000b1802]                           dc.b $00
[000b1803]                           dc.b $00
[000b1804]                           dc.b $00
[000b1805]                           dc.b $00
[000b1806]                           dc.b $00
[000b1807]                           dc.b $00
[000b1808]                           dc.b $00
[000b1809]                           dc.b $00
[000b180a]                           dc.b $00
[000b180b]                           dc.b $00
[000b180c]                           dc.b $00
[000b180d]                           dc.b $00
[000b180e]                           dc.b $00
[000b180f]                           dc.b $00
A_ARROWS02:
[000b1810] 0005b212                  dc.l A_arrows
[000b1814]                           dc.w $1301
[000b1816]                           dc.b $00
[000b1817]                           dc.b $01
[000b1818]                           dc.b $00
[000b1819]                           dc.b $00
[000b181a]                           dc.b $00
[000b181b]                           dc.b $00
[000b181c]                           dc.b $00
[000b181d]                           dc.b $00
[000b181e]                           dc.b $00
[000b181f]                           dc.b $00
[000b1820]                           dc.b $00
[000b1821]                           dc.b $00
[000b1822]                           dc.b $00
[000b1823]                           dc.b $00
[000b1824]                           dc.b $00
[000b1825]                           dc.b $00
[000b1826]                           dc.b $00
[000b1827]                           dc.b $00
[000b1828]                           dc.b $00
[000b1829]                           dc.b $00
[000b182a]                           dc.b $00
[000b182b]                           dc.b $00
[000b182c]                           dc.b $00
[000b182d]                           dc.b $00
[000b182e]                           dc.b $00
[000b182f]                           dc.b $00
A_CHECKBOX02:
[000b1830] 000593fc                  dc.l A_checkbox
[000b1834]                           dc.b $00
[000b1835]                           dc.b $00
[000b1836]                           dc.b $00
[000b1837]                           dc.b $01
[000b1838] 00059318                  dc.l Auo_string
[000b183c] 000b1323                  dc.l TEXT_01
[000b1840]                           dc.b $00
[000b1841]                           dc.b $00
[000b1842]                           dc.b $00
[000b1843]                           dc.b $00
[000b1844]                           dc.b $00
[000b1845]                           dc.b $00
[000b1846]                           dc.b $00
[000b1847]                           dc.b $00
[000b1848]                           dc.b $00
[000b1849]                           dc.b $00
[000b184a]                           dc.b $00
[000b184b]                           dc.b $00
[000b184c]                           dc.b $00
[000b184d]                           dc.b $00
[000b184e]                           dc.b $00
[000b184f]                           dc.b $00
A_CHECKBOX03:
[000b1850] 000593fc                  dc.l A_checkbox
[000b1854]                           dc.b $00
[000b1855]                           dc.b $00
[000b1856]                           dc.b $00
[000b1857]                           dc.b $01
[000b1858] 00059318                  dc.l Auo_string
[000b185c] 000b133d                  dc.l TEXT_04
[000b1860]                           dc.b $00
[000b1861]                           dc.b $00
[000b1862]                           dc.b $00
[000b1863]                           dc.b $00
[000b1864]                           dc.b $00
[000b1865]                           dc.b $00
[000b1866]                           dc.b $00
[000b1867]                           dc.b $00
[000b1868]                           dc.b $00
[000b1869]                           dc.b $00
[000b186a]                           dc.b $00
[000b186b]                           dc.b $00
[000b186c]                           dc.b $00
[000b186d]                           dc.b $00
[000b186e]                           dc.b $00
[000b186f]                           dc.b $00
A_INNERFRAME01:
[000b1870] 00059f9c                  dc.l A_innerframe
[000b1874]                           dc.w $1000
[000b1876]                           dc.w $8f19
[000b1878] 00059318                  dc.l Auo_string
[000b187c] 000b1330                  dc.l TEXT_02
[000b1880]                           dc.b $00
[000b1881]                           dc.b $00
[000b1882]                           dc.b $00
[000b1883]                           dc.b $00
[000b1884]                           dc.b $00
[000b1885]                           dc.b $00
[000b1886]                           dc.b $00
[000b1887]                           dc.b $00
[000b1888]                           dc.b $00
[000b1889]                           dc.b $00
[000b188a]                           dc.b $00
[000b188b]                           dc.b $00
[000b188c]                           dc.b $00
[000b188d]                           dc.b $00
[000b188e]                           dc.b $00
[000b188f]                           dc.b $00
A_INNERFRAME03:
[000b1890] 00059f9c                  dc.l A_innerframe
[000b1894]                           dc.w $1000
[000b1896]                           dc.w $8f19
[000b1898] 00059318                  dc.l Auo_string
[000b189c] 000b134a                  dc.l TEXT_05
[000b18a0]                           dc.b $00
[000b18a1]                           dc.b $00
[000b18a2]                           dc.b $00
[000b18a3]                           dc.b $00
[000b18a4]                           dc.b $00
[000b18a5]                           dc.b $00
[000b18a6]                           dc.b $00
[000b18a7]                           dc.b $00
[000b18a8]                           dc.b $00
[000b18a9]                           dc.b $00
[000b18aa]                           dc.b $00
[000b18ab]                           dc.b $00
[000b18ac]                           dc.b $00
[000b18ad]                           dc.b $00
[000b18ae]                           dc.b $00
[000b18af]                           dc.b $00
A_PATTERN01:
[000b18b0] 0005b032                  dc.l A_pattern
[000b18b4]                           dc.b $00
[000b18b5]                           dc.b $23
[000b18b6]                           dc.b $00
[000b18b7]                           dc.b $01
[000b18b8]                           dc.b $00
[000b18b9]                           dc.b $00
[000b18ba]                           dc.b $00
[000b18bb]                           dc.b $00
[000b18bc]                           dc.b $00
[000b18bd]                           dc.b $00
[000b18be]                           dc.b $00
[000b18bf]                           dc.b $00
[000b18c0]                           dc.b $00
[000b18c1]                           dc.b $00
[000b18c2]                           dc.b $00
[000b18c3]                           dc.b $00
[000b18c4]                           dc.b $00
[000b18c5]                           dc.b $00
[000b18c6]                           dc.b $00
[000b18c7]                           dc.b $00
[000b18c8]                           dc.b $00
[000b18c9]                           dc.b $00
[000b18ca]                           dc.b $00
[000b18cb]                           dc.b $00
[000b18cc]                           dc.b $00
[000b18cd]                           dc.b $00
[000b18ce]                           dc.b $00
[000b18cf]                           dc.b $00
A_PICTURE01:
[000b18d0] 0005ca2a                  dc.l A_picture
[000b18d4]                           dc.b $00
[000b18d5]                           dc.b $02
[000b18d6]                           dc.w $0481
[000b18d8] 0005cf28                  dc.l Auo_picture
[000b18dc] 000b1378                  dc.l DATAS_01
[000b18e0]                           dc.b $00
[000b18e1]                           dc.b $00
[000b18e2]                           dc.b $00
[000b18e3]                           dc.b $00
[000b18e4]                           dc.b $00
[000b18e5]                           dc.b $00
[000b18e6]                           dc.b $00
[000b18e7]                           dc.b $00
[000b18e8]                           dc.b $00
[000b18e9]                           dc.b $00
[000b18ea]                           dc.b $00
[000b18eb]                           dc.b $00
[000b18ec]                           dc.b $00
[000b18ed]                           dc.b $00
[000b18ee]                           dc.b $00
[000b18ef]                           dc.b $00
USER_007:
[000b18f0] 0005b032                  dc.l A_pattern
[000b18f4]                           dc.b $00
[000b18f5]                           dc.b $21
[000b18f6]                           dc.b $00
[000b18f7]                           dc.b $01
[000b18f8]                           dc.b $00
[000b18f9]                           dc.b $00
[000b18fa]                           dc.b $00
[000b18fb]                           dc.b $00
[000b18fc]                           dc.b $00
[000b18fd]                           dc.b $00
[000b18fe]                           dc.b $00
[000b18ff]                           dc.b $00
[000b1900]                           dc.b $00
[000b1901]                           dc.b $00
[000b1902]                           dc.b $00
[000b1903]                           dc.b $00
[000b1904]                           dc.b $00
[000b1905]                           dc.b $00
[000b1906]                           dc.b $00
[000b1907]                           dc.b $00
[000b1908]                           dc.b $00
[000b1909]                           dc.b $00
[000b190a]                           dc.b $00
[000b190b]                           dc.b $00
[000b190c]                           dc.b $00
[000b190d]                           dc.b $00
[000b190e]                           dc.b $00
[000b190f]                           dc.b $00
USER_012:
[000b1910] 0005b032                  dc.l A_pattern
[000b1914]                           dc.b $00
[000b1915]                           dc.b $22
[000b1916]                           dc.b $00
[000b1917]                           dc.b $01
[000b1918]                           dc.b $00
[000b1919]                           dc.b $00
[000b191a]                           dc.b $00
[000b191b]                           dc.b $00
[000b191c]                           dc.b $00
[000b191d]                           dc.b $00
[000b191e]                           dc.b $00
[000b191f]                           dc.b $00
[000b1920]                           dc.b $00
[000b1921]                           dc.b $00
[000b1922]                           dc.b $00
[000b1923]                           dc.b $00
[000b1924]                           dc.b $00
[000b1925]                           dc.b $00
[000b1926]                           dc.b $00
[000b1927]                           dc.b $00
[000b1928]                           dc.b $00
[000b1929]                           dc.b $00
[000b192a]                           dc.b $00
[000b192b]                           dc.b $00
[000b192c]                           dc.b $00
[000b192d]                           dc.b $00
[000b192e]                           dc.b $00
[000b192f]                           dc.b $00
USER_013:
[000b1930] 0005b032                  dc.l A_pattern
[000b1934]                           dc.b $00
[000b1935]                           dc.b $24
[000b1936]                           dc.b $00
[000b1937]                           dc.b $01
[000b1938]                           dc.b $00
[000b1939]                           dc.b $00
[000b193a]                           dc.b $00
[000b193b]                           dc.b $00
[000b193c]                           dc.b $00
[000b193d]                           dc.b $00
[000b193e]                           dc.b $00
[000b193f]                           dc.b $00
[000b1940]                           dc.b $00
[000b1941]                           dc.b $00
[000b1942]                           dc.b $00
[000b1943]                           dc.b $00
[000b1944]                           dc.b $00
[000b1945]                           dc.b $00
[000b1946]                           dc.b $00
[000b1947]                           dc.b $00
[000b1948]                           dc.b $00
[000b1949]                           dc.b $00
[000b194a]                           dc.b $00
[000b194b]                           dc.b $00
[000b194c]                           dc.b $00
[000b194d]                           dc.b $00
[000b194e]                           dc.b $00
[000b194f]                           dc.b $00
USER_014:
[000b1950] 0005b032                  dc.l A_pattern
[000b1954]                           dc.b $00
[000b1955]                           dc.b $25
[000b1956]                           dc.b $00
[000b1957]                           dc.b $01
[000b1958]                           dc.b $00
[000b1959]                           dc.b $00
[000b195a]                           dc.b $00
[000b195b]                           dc.b $00
[000b195c]                           dc.b $00
[000b195d]                           dc.b $00
[000b195e]                           dc.b $00
[000b195f]                           dc.b $00
[000b1960]                           dc.b $00
[000b1961]                           dc.b $00
[000b1962]                           dc.b $00
[000b1963]                           dc.b $00
[000b1964]                           dc.b $00
[000b1965]                           dc.b $00
[000b1966]                           dc.b $00
[000b1967]                           dc.b $00
[000b1968]                           dc.b $00
[000b1969]                           dc.b $00
[000b196a]                           dc.b $00
[000b196b]                           dc.b $00
[000b196c]                           dc.b $00
[000b196d]                           dc.b $00
[000b196e]                           dc.b $00
[000b196f]                           dc.b $00
USER_015:
[000b1970] 0005b032                  dc.l A_pattern
[000b1974]                           dc.b $00
[000b1975]                           dc.b $26
[000b1976]                           dc.b $00
[000b1977]                           dc.b $01
[000b1978]                           dc.b $00
[000b1979]                           dc.b $00
[000b197a]                           dc.b $00
[000b197b]                           dc.b $00
[000b197c]                           dc.b $00
[000b197d]                           dc.b $00
[000b197e]                           dc.b $00
[000b197f]                           dc.b $00
[000b1980]                           dc.b $00
[000b1981]                           dc.b $00
[000b1982]                           dc.b $00
[000b1983]                           dc.b $00
[000b1984]                           dc.b $00
[000b1985]                           dc.b $00
[000b1986]                           dc.b $00
[000b1987]                           dc.b $00
[000b1988]                           dc.b $00
[000b1989]                           dc.b $00
[000b198a]                           dc.b $00
[000b198b]                           dc.b $00
[000b198c]                           dc.b $00
[000b198d]                           dc.b $00
[000b198e]                           dc.b $00
[000b198f]                           dc.b $00
USER_016:
[000b1990] 0005b032                  dc.l A_pattern
[000b1994]                           dc.b $00
[000b1995]                           dc.b $27
[000b1996]                           dc.b $00
[000b1997]                           dc.b $01
[000b1998]                           dc.b $00
[000b1999]                           dc.b $00
[000b199a]                           dc.b $00
[000b199b]                           dc.b $00
[000b199c]                           dc.b $00
[000b199d]                           dc.b $00
[000b199e]                           dc.b $00
[000b199f]                           dc.b $00
[000b19a0]                           dc.b $00
[000b19a1]                           dc.b $00
[000b19a2]                           dc.b $00
[000b19a3]                           dc.b $00
[000b19a4]                           dc.b $00
[000b19a5]                           dc.b $00
[000b19a6]                           dc.b $00
[000b19a7]                           dc.b $00
[000b19a8]                           dc.b $00
[000b19a9]                           dc.b $00
[000b19aa]                           dc.b $00
[000b19ab]                           dc.b $00
[000b19ac]                           dc.b $00
[000b19ad]                           dc.b $00
[000b19ae]                           dc.b $00
[000b19af]                           dc.b $00
USER_017:
[000b19b0] 0005b032                  dc.l A_pattern
[000b19b4]                           dc.b $00
[000b19b5]                           dc.b $28
[000b19b6]                           dc.b $00
[000b19b7]                           dc.b $01
[000b19b8]                           dc.b $00
[000b19b9]                           dc.b $00
[000b19ba]                           dc.b $00
[000b19bb]                           dc.b $00
[000b19bc]                           dc.b $00
[000b19bd]                           dc.b $00
[000b19be]                           dc.b $00
[000b19bf]                           dc.b $00
[000b19c0]                           dc.b $00
[000b19c1]                           dc.b $00
[000b19c2]                           dc.b $00
[000b19c3]                           dc.b $00
[000b19c4]                           dc.b $00
[000b19c5]                           dc.b $00
[000b19c6]                           dc.b $00
[000b19c7]                           dc.b $00
[000b19c8]                           dc.b $00
[000b19c9]                           dc.b $00
[000b19ca]                           dc.b $00
[000b19cb]                           dc.b $00
[000b19cc]                           dc.b $00
[000b19cd]                           dc.b $00
[000b19ce]                           dc.b $00
[000b19cf]                           dc.b $00
USER_018:
[000b19d0] 0005b032                  dc.l A_pattern
[000b19d4]                           dc.b $00
[000b19d5]                           dc.b $29
[000b19d6]                           dc.b $00
[000b19d7]                           dc.b $01
[000b19d8]                           dc.b $00
[000b19d9]                           dc.b $00
[000b19da]                           dc.b $00
[000b19db]                           dc.b $00
[000b19dc]                           dc.b $00
[000b19dd]                           dc.b $00
[000b19de]                           dc.b $00
[000b19df]                           dc.b $00
[000b19e0]                           dc.b $00
[000b19e1]                           dc.b $00
[000b19e2]                           dc.b $00
[000b19e3]                           dc.b $00
[000b19e4]                           dc.b $00
[000b19e5]                           dc.b $00
[000b19e6]                           dc.b $00
[000b19e7]                           dc.b $00
[000b19e8]                           dc.b $00
[000b19e9]                           dc.b $00
[000b19ea]                           dc.b $00
[000b19eb]                           dc.b $00
[000b19ec]                           dc.b $00
[000b19ed]                           dc.b $00
[000b19ee]                           dc.b $00
[000b19ef]                           dc.b $00
USER_019:
[000b19f0] 0005b032                  dc.l A_pattern
[000b19f4]                           dc.b $00
[000b19f5]                           dc.b $2a
[000b19f6]                           dc.b $00
[000b19f7]                           dc.b $01
[000b19f8]                           dc.b $00
[000b19f9]                           dc.b $00
[000b19fa]                           dc.b $00
[000b19fb]                           dc.b $00
[000b19fc]                           dc.b $00
[000b19fd]                           dc.b $00
[000b19fe]                           dc.b $00
[000b19ff]                           dc.b $00
[000b1a00]                           dc.b $00
[000b1a01]                           dc.b $00
[000b1a02]                           dc.b $00
[000b1a03]                           dc.b $00
[000b1a04]                           dc.b $00
[000b1a05]                           dc.b $00
[000b1a06]                           dc.b $00
[000b1a07]                           dc.b $00
[000b1a08]                           dc.b $00
[000b1a09]                           dc.b $00
[000b1a0a]                           dc.b $00
[000b1a0b]                           dc.b $00
[000b1a0c]                           dc.b $00
[000b1a0d]                           dc.b $00
[000b1a0e]                           dc.b $00
[000b1a0f]                           dc.b $00
USER_020:
[000b1a10] 0005b032                  dc.l A_pattern
[000b1a14]                           dc.b $00
[000b1a15]                           dc.b $2b
[000b1a16]                           dc.b $00
[000b1a17]                           dc.b $01
[000b1a18]                           dc.b $00
[000b1a19]                           dc.b $00
[000b1a1a]                           dc.b $00
[000b1a1b]                           dc.b $00
[000b1a1c]                           dc.b $00
[000b1a1d]                           dc.b $00
[000b1a1e]                           dc.b $00
[000b1a1f]                           dc.b $00
[000b1a20]                           dc.b $00
[000b1a21]                           dc.b $00
[000b1a22]                           dc.b $00
[000b1a23]                           dc.b $00
[000b1a24]                           dc.b $00
[000b1a25]                           dc.b $00
[000b1a26]                           dc.b $00
[000b1a27]                           dc.b $00
[000b1a28]                           dc.b $00
[000b1a29]                           dc.b $00
[000b1a2a]                           dc.b $00
[000b1a2b]                           dc.b $00
[000b1a2c]                           dc.b $00
[000b1a2d]                           dc.b $00
[000b1a2e]                           dc.b $00
[000b1a2f]                           dc.b $00
USER_021:
[000b1a30] 0005b032                  dc.l A_pattern
[000b1a34]                           dc.b $00
[000b1a35]                           dc.b $2c
[000b1a36]                           dc.b $00
[000b1a37]                           dc.b $01
[000b1a38]                           dc.b $00
[000b1a39]                           dc.b $00
[000b1a3a]                           dc.b $00
[000b1a3b]                           dc.b $00
[000b1a3c]                           dc.b $00
[000b1a3d]                           dc.b $00
[000b1a3e]                           dc.b $00
[000b1a3f]                           dc.b $00
[000b1a40]                           dc.b $00
[000b1a41]                           dc.b $00
[000b1a42]                           dc.b $00
[000b1a43]                           dc.b $00
[000b1a44]                           dc.b $00
[000b1a45]                           dc.b $00
[000b1a46]                           dc.b $00
[000b1a47]                           dc.b $00
[000b1a48]                           dc.b $00
[000b1a49]                           dc.b $00
[000b1a4a]                           dc.b $00
[000b1a4b]                           dc.b $00
[000b1a4c]                           dc.b $00
[000b1a4d]                           dc.b $00
[000b1a4e]                           dc.b $00
[000b1a4f]                           dc.b $00
USER_022:
[000b1a50] 0005b032                  dc.l A_pattern
[000b1a54]                           dc.b $00
[000b1a55]                           dc.b $61
[000b1a56]                           dc.b $00
[000b1a57]                           dc.b $01
[000b1a58]                           dc.b $00
[000b1a59]                           dc.b $00
[000b1a5a]                           dc.b $00
[000b1a5b]                           dc.b $00
[000b1a5c]                           dc.b $00
[000b1a5d]                           dc.b $00
[000b1a5e]                           dc.b $00
[000b1a5f]                           dc.b $00
[000b1a60]                           dc.b $00
[000b1a61]                           dc.b $00
[000b1a62]                           dc.b $00
[000b1a63]                           dc.b $00
[000b1a64]                           dc.b $00
[000b1a65]                           dc.b $00
[000b1a66]                           dc.b $00
[000b1a67]                           dc.b $00
[000b1a68]                           dc.b $00
[000b1a69]                           dc.b $00
[000b1a6a]                           dc.b $00
[000b1a6b]                           dc.b $00
[000b1a6c]                           dc.b $00
[000b1a6d]                           dc.b $00
[000b1a6e]                           dc.b $00
[000b1a6f]                           dc.b $00
USER_023:
[000b1a70] 0005b032                  dc.l A_pattern
[000b1a74]                           dc.b $00
[000b1a75]                           dc.b $62
[000b1a76]                           dc.b $00
[000b1a77]                           dc.b $01
[000b1a78]                           dc.b $00
[000b1a79]                           dc.b $00
[000b1a7a]                           dc.b $00
[000b1a7b]                           dc.b $00
[000b1a7c]                           dc.b $00
[000b1a7d]                           dc.b $00
[000b1a7e]                           dc.b $00
[000b1a7f]                           dc.b $00
[000b1a80]                           dc.b $00
[000b1a81]                           dc.b $00
[000b1a82]                           dc.b $00
[000b1a83]                           dc.b $00
[000b1a84]                           dc.b $00
[000b1a85]                           dc.b $00
[000b1a86]                           dc.b $00
[000b1a87]                           dc.b $00
[000b1a88]                           dc.b $00
[000b1a89]                           dc.b $00
[000b1a8a]                           dc.b $00
[000b1a8b]                           dc.b $00
[000b1a8c]                           dc.b $00
[000b1a8d]                           dc.b $00
[000b1a8e]                           dc.b $00
[000b1a8f]                           dc.b $00
USER_024:
[000b1a90] 0005b032                  dc.l A_pattern
[000b1a94]                           dc.b $00
[000b1a95]                           dc.b $63
[000b1a96]                           dc.b $00
[000b1a97]                           dc.b $01
[000b1a98]                           dc.b $00
[000b1a99]                           dc.b $00
[000b1a9a]                           dc.b $00
[000b1a9b]                           dc.b $00
[000b1a9c]                           dc.b $00
[000b1a9d]                           dc.b $00
[000b1a9e]                           dc.b $00
[000b1a9f]                           dc.b $00
[000b1aa0]                           dc.b $00
[000b1aa1]                           dc.b $00
[000b1aa2]                           dc.b $00
[000b1aa3]                           dc.b $00
[000b1aa4]                           dc.b $00
[000b1aa5]                           dc.b $00
[000b1aa6]                           dc.b $00
[000b1aa7]                           dc.b $00
[000b1aa8]                           dc.b $00
[000b1aa9]                           dc.b $00
[000b1aaa]                           dc.b $00
[000b1aab]                           dc.b $00
[000b1aac]                           dc.b $00
[000b1aad]                           dc.b $00
[000b1aae]                           dc.b $00
[000b1aaf]                           dc.b $00
USER_025:
[000b1ab0] 0005b032                  dc.l A_pattern
[000b1ab4]                           dc.b $00
[000b1ab5]                           dc.b $64
[000b1ab6]                           dc.b $00
[000b1ab7]                           dc.b $01
[000b1ab8]                           dc.b $00
[000b1ab9]                           dc.b $00
[000b1aba]                           dc.b $00
[000b1abb]                           dc.b $00
[000b1abc]                           dc.b $00
[000b1abd]                           dc.b $00
[000b1abe]                           dc.b $00
[000b1abf]                           dc.b $00
[000b1ac0]                           dc.b $00
[000b1ac1]                           dc.b $00
[000b1ac2]                           dc.b $00
[000b1ac3]                           dc.b $00
[000b1ac4]                           dc.b $00
[000b1ac5]                           dc.b $00
[000b1ac6]                           dc.b $00
[000b1ac7]                           dc.b $00
[000b1ac8]                           dc.b $00
[000b1ac9]                           dc.b $00
[000b1aca]                           dc.b $00
[000b1acb]                           dc.b $00
[000b1acc]                           dc.b $00
[000b1acd]                           dc.b $00
[000b1ace]                           dc.b $00
[000b1acf]                           dc.b $00
USER_026:
[000b1ad0] 0005b032                  dc.l A_pattern
[000b1ad4]                           dc.b $00
[000b1ad5]                           dc.b $65
[000b1ad6]                           dc.b $00
[000b1ad7]                           dc.b $01
[000b1ad8]                           dc.b $00
[000b1ad9]                           dc.b $00
[000b1ada]                           dc.b $00
[000b1adb]                           dc.b $00
[000b1adc]                           dc.b $00
[000b1add]                           dc.b $00
[000b1ade]                           dc.b $00
[000b1adf]                           dc.b $00
[000b1ae0]                           dc.b $00
[000b1ae1]                           dc.b $00
[000b1ae2]                           dc.b $00
[000b1ae3]                           dc.b $00
[000b1ae4]                           dc.b $00
[000b1ae5]                           dc.b $00
[000b1ae6]                           dc.b $00
[000b1ae7]                           dc.b $00
[000b1ae8]                           dc.b $00
[000b1ae9]                           dc.b $00
[000b1aea]                           dc.b $00
[000b1aeb]                           dc.b $00
[000b1aec]                           dc.b $00
[000b1aed]                           dc.b $00
[000b1aee]                           dc.b $00
[000b1aef]                           dc.b $00
USER_027:
[000b1af0] 0005b032                  dc.l A_pattern
[000b1af4]                           dc.b $00
[000b1af5]                           dc.b $66
[000b1af6]                           dc.b $00
[000b1af7]                           dc.b $01
[000b1af8]                           dc.b $00
[000b1af9]                           dc.b $00
[000b1afa]                           dc.b $00
[000b1afb]                           dc.b $00
[000b1afc]                           dc.b $00
[000b1afd]                           dc.b $00
[000b1afe]                           dc.b $00
[000b1aff]                           dc.b $00
[000b1b00]                           dc.b $00
[000b1b01]                           dc.b $00
[000b1b02]                           dc.b $00
[000b1b03]                           dc.b $00
[000b1b04]                           dc.b $00
[000b1b05]                           dc.b $00
[000b1b06]                           dc.b $00
[000b1b07]                           dc.b $00
[000b1b08]                           dc.b $00
[000b1b09]                           dc.b $00
[000b1b0a]                           dc.b $00
[000b1b0b]                           dc.b $00
[000b1b0c]                           dc.b $00
[000b1b0d]                           dc.b $00
[000b1b0e]                           dc.b $00
[000b1b0f]                           dc.b $00
USER_028:
[000b1b10] 0005b032                  dc.l A_pattern
[000b1b14]                           dc.b $00
[000b1b15]                           dc.b $67
[000b1b16]                           dc.b $00
[000b1b17]                           dc.b $01
[000b1b18]                           dc.b $00
[000b1b19]                           dc.b $00
[000b1b1a]                           dc.b $00
[000b1b1b]                           dc.b $00
[000b1b1c]                           dc.b $00
[000b1b1d]                           dc.b $00
[000b1b1e]                           dc.b $00
[000b1b1f]                           dc.b $00
[000b1b20]                           dc.b $00
[000b1b21]                           dc.b $00
[000b1b22]                           dc.b $00
[000b1b23]                           dc.b $00
[000b1b24]                           dc.b $00
[000b1b25]                           dc.b $00
[000b1b26]                           dc.b $00
[000b1b27]                           dc.b $00
[000b1b28]                           dc.b $00
[000b1b29]                           dc.b $00
[000b1b2a]                           dc.b $00
[000b1b2b]                           dc.b $00
[000b1b2c]                           dc.b $00
[000b1b2d]                           dc.b $00
[000b1b2e]                           dc.b $00
[000b1b2f]                           dc.b $00
USER_029:
[000b1b30] 0005b032                  dc.l A_pattern
[000b1b34]                           dc.b $00
[000b1b35]                           dc.b $68
[000b1b36]                           dc.b $00
[000b1b37]                           dc.b $01
[000b1b38]                           dc.b $00
[000b1b39]                           dc.b $00
[000b1b3a]                           dc.b $00
[000b1b3b]                           dc.b $00
[000b1b3c]                           dc.b $00
[000b1b3d]                           dc.b $00
[000b1b3e]                           dc.b $00
[000b1b3f]                           dc.b $00
[000b1b40]                           dc.b $00
[000b1b41]                           dc.b $00
[000b1b42]                           dc.b $00
[000b1b43]                           dc.b $00
[000b1b44]                           dc.b $00
[000b1b45]                           dc.b $00
[000b1b46]                           dc.b $00
[000b1b47]                           dc.b $00
[000b1b48]                           dc.b $00
[000b1b49]                           dc.b $00
[000b1b4a]                           dc.b $00
[000b1b4b]                           dc.b $00
[000b1b4c]                           dc.b $00
[000b1b4d]                           dc.b $00
[000b1b4e]                           dc.b $00
[000b1b4f]                           dc.b $00
USER_030:
[000b1b50] 0005b032                  dc.l A_pattern
[000b1b54]                           dc.b $00
[000b1b55]                           dc.b $69
[000b1b56]                           dc.b $00
[000b1b57]                           dc.b $01
[000b1b58]                           dc.b $00
[000b1b59]                           dc.b $00
[000b1b5a]                           dc.b $00
[000b1b5b]                           dc.b $00
[000b1b5c]                           dc.b $00
[000b1b5d]                           dc.b $00
[000b1b5e]                           dc.b $00
[000b1b5f]                           dc.b $00
[000b1b60]                           dc.b $00
[000b1b61]                           dc.b $00
[000b1b62]                           dc.b $00
[000b1b63]                           dc.b $00
[000b1b64]                           dc.b $00
[000b1b65]                           dc.b $00
[000b1b66]                           dc.b $00
[000b1b67]                           dc.b $00
[000b1b68]                           dc.b $00
[000b1b69]                           dc.b $00
[000b1b6a]                           dc.b $00
[000b1b6b]                           dc.b $00
[000b1b6c]                           dc.b $00
[000b1b6d]                           dc.b $00
[000b1b6e]                           dc.b $00
[000b1b6f]                           dc.b $00
USER_031:
[000b1b70] 0005b032                  dc.l A_pattern
[000b1b74]                           dc.b $00
[000b1b75]                           dc.b $6b
[000b1b76]                           dc.b $00
[000b1b77]                           dc.b $01
[000b1b78]                           dc.b $00
[000b1b79]                           dc.b $00
[000b1b7a]                           dc.b $00
[000b1b7b]                           dc.b $00
[000b1b7c]                           dc.b $00
[000b1b7d]                           dc.b $00
[000b1b7e]                           dc.b $00
[000b1b7f]                           dc.b $00
[000b1b80]                           dc.b $00
[000b1b81]                           dc.b $00
[000b1b82]                           dc.b $00
[000b1b83]                           dc.b $00
[000b1b84]                           dc.b $00
[000b1b85]                           dc.b $00
[000b1b86]                           dc.b $00
[000b1b87]                           dc.b $00
[000b1b88]                           dc.b $00
[000b1b89]                           dc.b $00
[000b1b8a]                           dc.b $00
[000b1b8b]                           dc.b $00
[000b1b8c]                           dc.b $00
[000b1b8d]                           dc.b $00
[000b1b8e]                           dc.b $00
[000b1b8f]                           dc.b $00
USER_032:
[000b1b90] 0005b032                  dc.l A_pattern
[000b1b94]                           dc.b $00
[000b1b95]                           dc.b $6a
[000b1b96]                           dc.b $00
[000b1b97]                           dc.b $01
[000b1b98]                           dc.b $00
[000b1b99]                           dc.b $00
[000b1b9a]                           dc.b $00
[000b1b9b]                           dc.b $00
[000b1b9c]                           dc.b $00
[000b1b9d]                           dc.b $00
[000b1b9e]                           dc.b $00
[000b1b9f]                           dc.b $00
[000b1ba0]                           dc.b $00
[000b1ba1]                           dc.b $00
[000b1ba2]                           dc.b $00
[000b1ba3]                           dc.b $00
[000b1ba4]                           dc.b $00
[000b1ba5]                           dc.b $00
[000b1ba6]                           dc.b $00
[000b1ba7]                           dc.b $00
[000b1ba8]                           dc.b $00
[000b1ba9]                           dc.b $00
[000b1baa]                           dc.b $00
[000b1bab]                           dc.b $00
[000b1bac]                           dc.b $00
[000b1bad]                           dc.b $00
[000b1bae]                           dc.b $00
[000b1baf]                           dc.b $00
USER_033:
[000b1bb0] 0005b032                  dc.l A_pattern
[000b1bb4]                           dc.b $00
[000b1bb5]                           dc.b $6c
[000b1bb6]                           dc.b $00
[000b1bb7]                           dc.b $01
[000b1bb8]                           dc.b $00
[000b1bb9]                           dc.b $00
[000b1bba]                           dc.b $00
[000b1bbb]                           dc.b $00
[000b1bbc]                           dc.b $00
[000b1bbd]                           dc.b $00
[000b1bbe]                           dc.b $00
[000b1bbf]                           dc.b $00
[000b1bc0]                           dc.b $00
[000b1bc1]                           dc.b $00
[000b1bc2]                           dc.b $00
[000b1bc3]                           dc.b $00
[000b1bc4]                           dc.b $00
[000b1bc5]                           dc.b $00
[000b1bc6]                           dc.b $00
[000b1bc7]                           dc.b $00
[000b1bc8]                           dc.b $00
[000b1bc9]                           dc.b $00
[000b1bca]                           dc.b $00
[000b1bcb]                           dc.b $00
[000b1bcc]                           dc.b $00
[000b1bcd]                           dc.b $00
[000b1bce]                           dc.b $00
[000b1bcf]                           dc.b $00
USER_034:
[000b1bd0] 0005b032                  dc.l A_pattern
[000b1bd4]                           dc.b $00
[000b1bd5]                           dc.b $6d
[000b1bd6]                           dc.b $00
[000b1bd7]                           dc.b $01
[000b1bd8]                           dc.b $00
[000b1bd9]                           dc.b $00
[000b1bda]                           dc.b $00
[000b1bdb]                           dc.b $00
[000b1bdc]                           dc.b $00
[000b1bdd]                           dc.b $00
[000b1bde]                           dc.b $00
[000b1bdf]                           dc.b $00
[000b1be0]                           dc.b $00
[000b1be1]                           dc.b $00
[000b1be2]                           dc.b $00
[000b1be3]                           dc.b $00
[000b1be4]                           dc.b $00
[000b1be5]                           dc.b $00
[000b1be6]                           dc.b $00
[000b1be7]                           dc.b $00
[000b1be8]                           dc.b $00
[000b1be9]                           dc.b $00
[000b1bea]                           dc.b $00
[000b1beb]                           dc.b $00
[000b1bec]                           dc.b $00
[000b1bed]                           dc.b $00
[000b1bee]                           dc.b $00
[000b1bef]                           dc.b $00
USER_035:
[000b1bf0] 0005b032                  dc.l A_pattern
[000b1bf4]                           dc.b $00
[000b1bf5]                           dc.b $6e
[000b1bf6]                           dc.b $00
[000b1bf7]                           dc.b $01
[000b1bf8]                           dc.b $00
[000b1bf9]                           dc.b $00
[000b1bfa]                           dc.b $00
[000b1bfb]                           dc.b $00
[000b1bfc]                           dc.b $00
[000b1bfd]                           dc.b $00
[000b1bfe]                           dc.b $00
[000b1bff]                           dc.b $00
[000b1c00]                           dc.b $00
[000b1c01]                           dc.b $00
[000b1c02]                           dc.b $00
[000b1c03]                           dc.b $00
[000b1c04]                           dc.b $00
[000b1c05]                           dc.b $00
[000b1c06]                           dc.b $00
[000b1c07]                           dc.b $00
[000b1c08]                           dc.b $00
[000b1c09]                           dc.b $00
[000b1c0a]                           dc.b $00
[000b1c0b]                           dc.b $00
[000b1c0c]                           dc.b $00
[000b1c0d]                           dc.b $00
[000b1c0e]                           dc.b $00
[000b1c0f]                           dc.b $00
USER_036:
[000b1c10] 0005b032                  dc.l A_pattern
[000b1c14]                           dc.b $00
[000b1c15]                           dc.b $6f
[000b1c16]                           dc.b $00
[000b1c17]                           dc.b $01
[000b1c18]                           dc.b $00
[000b1c19]                           dc.b $00
[000b1c1a]                           dc.b $00
[000b1c1b]                           dc.b $00
[000b1c1c]                           dc.b $00
[000b1c1d]                           dc.b $00
[000b1c1e]                           dc.b $00
[000b1c1f]                           dc.b $00
[000b1c20]                           dc.b $00
[000b1c21]                           dc.b $00
[000b1c22]                           dc.b $00
[000b1c23]                           dc.b $00
[000b1c24]                           dc.b $00
[000b1c25]                           dc.b $00
[000b1c26]                           dc.b $00
[000b1c27]                           dc.b $00
[000b1c28]                           dc.b $00
[000b1c29]                           dc.b $00
[000b1c2a]                           dc.b $00
[000b1c2b]                           dc.b $00
[000b1c2c]                           dc.b $00
[000b1c2d]                           dc.b $00
[000b1c2e]                           dc.b $00
[000b1c2f]                           dc.b $00
USER_037:
[000b1c30] 0005b032                  dc.l A_pattern
[000b1c34]                           dc.b $00
[000b1c35]                           dc.b $70
[000b1c36]                           dc.b $00
[000b1c37]                           dc.b $01
[000b1c38]                           dc.b $00
[000b1c39]                           dc.b $00
[000b1c3a]                           dc.b $00
[000b1c3b]                           dc.b $00
[000b1c3c]                           dc.b $00
[000b1c3d]                           dc.b $00
[000b1c3e]                           dc.b $00
[000b1c3f]                           dc.b $00
[000b1c40]                           dc.b $00
[000b1c41]                           dc.b $00
[000b1c42]                           dc.b $00
[000b1c43]                           dc.b $00
[000b1c44]                           dc.b $00
[000b1c45]                           dc.b $00
[000b1c46]                           dc.b $00
[000b1c47]                           dc.b $00
[000b1c48]                           dc.b $00
[000b1c49]                           dc.b $00
[000b1c4a]                           dc.b $00
[000b1c4b]                           dc.b $00
[000b1c4c]                           dc.b $00
[000b1c4d]                           dc.b $00
[000b1c4e]                           dc.b $00
[000b1c4f]                           dc.b $00
USER_038:
[000b1c50] 0005b032                  dc.l A_pattern
[000b1c54]                           dc.b $00
[000b1c55]                           dc.b $71
[000b1c56]                           dc.b $00
[000b1c57]                           dc.b $01
[000b1c58]                           dc.b $00
[000b1c59]                           dc.b $00
[000b1c5a]                           dc.b $00
[000b1c5b]                           dc.b $00
[000b1c5c]                           dc.b $00
[000b1c5d]                           dc.b $00
[000b1c5e]                           dc.b $00
[000b1c5f]                           dc.b $00
[000b1c60]                           dc.b $00
[000b1c61]                           dc.b $00
[000b1c62]                           dc.b $00
[000b1c63]                           dc.b $00
[000b1c64]                           dc.b $00
[000b1c65]                           dc.b $00
[000b1c66]                           dc.b $00
[000b1c67]                           dc.b $00
[000b1c68]                           dc.b $00
[000b1c69]                           dc.b $00
[000b1c6a]                           dc.b $00
[000b1c6b]                           dc.b $00
[000b1c6c]                           dc.b $00
[000b1c6d]                           dc.b $00
[000b1c6e]                           dc.b $00
[000b1c6f]                           dc.b $00
USER_039:
[000b1c70] 0005b032                  dc.l A_pattern
[000b1c74]                           dc.b $00
[000b1c75]                           dc.b $72
[000b1c76]                           dc.b $00
[000b1c77]                           dc.b $01
[000b1c78]                           dc.b $00
[000b1c79]                           dc.b $00
[000b1c7a]                           dc.b $00
[000b1c7b]                           dc.b $00
[000b1c7c]                           dc.b $00
[000b1c7d]                           dc.b $00
[000b1c7e]                           dc.b $00
[000b1c7f]                           dc.b $00
[000b1c80]                           dc.b $00
[000b1c81]                           dc.b $00
[000b1c82]                           dc.b $00
[000b1c83]                           dc.b $00
[000b1c84]                           dc.b $00
[000b1c85]                           dc.b $00
[000b1c86]                           dc.b $00
[000b1c87]                           dc.b $00
[000b1c88]                           dc.b $00
[000b1c89]                           dc.b $00
[000b1c8a]                           dc.b $00
[000b1c8b]                           dc.b $00
[000b1c8c]                           dc.b $00
[000b1c8d]                           dc.b $00
[000b1c8e]                           dc.b $00
[000b1c8f]                           dc.b $00
USER_040:
[000b1c90] 0005b032                  dc.l A_pattern
[000b1c94]                           dc.b $00
[000b1c95]                           dc.b $73
[000b1c96]                           dc.b $00
[000b1c97]                           dc.b $01
[000b1c98]                           dc.b $00
[000b1c99]                           dc.b $00
[000b1c9a]                           dc.b $00
[000b1c9b]                           dc.b $00
[000b1c9c]                           dc.b $00
[000b1c9d]                           dc.b $00
[000b1c9e]                           dc.b $00
[000b1c9f]                           dc.b $00
[000b1ca0]                           dc.b $00
[000b1ca1]                           dc.b $00
[000b1ca2]                           dc.b $00
[000b1ca3]                           dc.b $00
[000b1ca4]                           dc.b $00
[000b1ca5]                           dc.b $00
[000b1ca6]                           dc.b $00
[000b1ca7]                           dc.b $00
[000b1ca8]                           dc.b $00
[000b1ca9]                           dc.b $00
[000b1caa]                           dc.b $00
[000b1cab]                           dc.b $00
[000b1cac]                           dc.b $00
[000b1cad]                           dc.b $00
[000b1cae]                           dc.b $00
[000b1caf]                           dc.b $00
USER_041:
[000b1cb0] 0005b032                  dc.l A_pattern
[000b1cb4]                           dc.b $00
[000b1cb5]                           dc.b $74
[000b1cb6]                           dc.b $00
[000b1cb7]                           dc.b $01
[000b1cb8]                           dc.b $00
[000b1cb9]                           dc.b $00
[000b1cba]                           dc.b $00
[000b1cbb]                           dc.b $00
[000b1cbc]                           dc.b $00
[000b1cbd]                           dc.b $00
[000b1cbe]                           dc.b $00
[000b1cbf]                           dc.b $00
[000b1cc0]                           dc.b $00
[000b1cc1]                           dc.b $00
[000b1cc2]                           dc.b $00
[000b1cc3]                           dc.b $00
[000b1cc4]                           dc.b $00
[000b1cc5]                           dc.b $00
[000b1cc6]                           dc.b $00
[000b1cc7]                           dc.b $00
[000b1cc8]                           dc.b $00
[000b1cc9]                           dc.b $00
[000b1cca]                           dc.b $00
[000b1ccb]                           dc.b $00
[000b1ccc]                           dc.b $00
[000b1ccd]                           dc.b $00
[000b1cce]                           dc.b $00
[000b1ccf]                           dc.b $00
USER_042:
[000b1cd0] 0005b032                  dc.l A_pattern
[000b1cd4]                           dc.b $00
[000b1cd5]                           dc.b $75
[000b1cd6]                           dc.b $00
[000b1cd7]                           dc.b $01
[000b1cd8]                           dc.b $00
[000b1cd9]                           dc.b $00
[000b1cda]                           dc.b $00
[000b1cdb]                           dc.b $00
[000b1cdc]                           dc.b $00
[000b1cdd]                           dc.b $00
[000b1cde]                           dc.b $00
[000b1cdf]                           dc.b $00
[000b1ce0]                           dc.b $00
[000b1ce1]                           dc.b $00
[000b1ce2]                           dc.b $00
[000b1ce3]                           dc.b $00
[000b1ce4]                           dc.b $00
[000b1ce5]                           dc.b $00
[000b1ce6]                           dc.b $00
[000b1ce7]                           dc.b $00
[000b1ce8]                           dc.b $00
[000b1ce9]                           dc.b $00
[000b1cea]                           dc.b $00
[000b1ceb]                           dc.b $00
[000b1cec]                           dc.b $00
[000b1ced]                           dc.b $00
[000b1cee]                           dc.b $00
[000b1cef]                           dc.b $00
USER_043:
[000b1cf0] 0005b032                  dc.l A_pattern
[000b1cf4]                           dc.b $00
[000b1cf5]                           dc.b $76
[000b1cf6]                           dc.b $00
[000b1cf7]                           dc.b $01
[000b1cf8]                           dc.b $00
[000b1cf9]                           dc.b $00
[000b1cfa]                           dc.b $00
[000b1cfb]                           dc.b $00
[000b1cfc]                           dc.b $00
[000b1cfd]                           dc.b $00
[000b1cfe]                           dc.b $00
[000b1cff]                           dc.b $00
[000b1d00]                           dc.b $00
[000b1d01]                           dc.b $00
[000b1d02]                           dc.b $00
[000b1d03]                           dc.b $00
[000b1d04]                           dc.b $00
[000b1d05]                           dc.b $00
[000b1d06]                           dc.b $00
[000b1d07]                           dc.b $00
[000b1d08]                           dc.b $00
[000b1d09]                           dc.b $00
[000b1d0a]                           dc.b $00
[000b1d0b]                           dc.b $00
[000b1d0c]                           dc.b $00
[000b1d0d]                           dc.b $00
[000b1d0e]                           dc.b $00
[000b1d0f]                           dc.b $00
USER_044:
[000b1d10] 0005b032                  dc.l A_pattern
[000b1d14]                           dc.b $00
[000b1d15]                           dc.b $77
[000b1d16]                           dc.b $00
[000b1d17]                           dc.b $01
[000b1d18]                           dc.b $00
[000b1d19]                           dc.b $00
[000b1d1a]                           dc.b $00
[000b1d1b]                           dc.b $00
[000b1d1c]                           dc.b $00
[000b1d1d]                           dc.b $00
[000b1d1e]                           dc.b $00
[000b1d1f]                           dc.b $00
[000b1d20]                           dc.b $00
[000b1d21]                           dc.b $00
[000b1d22]                           dc.b $00
[000b1d23]                           dc.b $00
[000b1d24]                           dc.b $00
[000b1d25]                           dc.b $00
[000b1d26]                           dc.b $00
[000b1d27]                           dc.b $00
[000b1d28]                           dc.b $00
[000b1d29]                           dc.b $00
[000b1d2a]                           dc.b $00
[000b1d2b]                           dc.b $00
[000b1d2c]                           dc.b $00
[000b1d2d]                           dc.b $00
[000b1d2e]                           dc.b $00
[000b1d2f]                           dc.b $00
ED_PICTURE:
[000b1d30]                           dc.w $ffff
[000b1d32]                           dc.b $00
[000b1d33]                           dc.b $01
[000b1d34]                           dc.b $00
[000b1d35]                           dc.b $0c
[000b1d36]                           dc.b $00
[000b1d37]                           dc.b $18
[000b1d38]                           dc.b $00
[000b1d39]                           dc.b $00
[000b1d3a]                           dc.b $00
[000b1d3b]                           dc.b $10
[000b1d3c] 000b1790                  dc.l A_3DBUTTON02
[000b1d40]                           dc.b $00
[000b1d41]                           dc.b $00
[000b1d42]                           dc.b $00
[000b1d43]                           dc.b $00
[000b1d44]                           dc.b $00
[000b1d45]                           dc.b $2a
[000b1d46]                           dc.b $00
[000b1d47]                           dc.b $0d
_01_ED_PICTURE:
[000b1d48]                           dc.b $00
[000b1d49]                           dc.b $04
[000b1d4a]                           dc.b $00
[000b1d4b]                           dc.b $02
[000b1d4c]                           dc.b $00
[000b1d4d]                           dc.b $02
[000b1d4e]                           dc.b $00
[000b1d4f]                           dc.b $18
[000b1d50]                           dc.b $00
[000b1d51]                           dc.b $40
[000b1d52]                           dc.b $00
[000b1d53]                           dc.b $00
[000b1d54] 000b1770                  dc.l A_3DBUTTON01
[000b1d58]                           dc.b $00
[000b1d59]                           dc.b $00
[000b1d5a]                           dc.b $00
[000b1d5b]                           dc.b $00
[000b1d5c]                           dc.b $00
[000b1d5d]                           dc.b $0d
[000b1d5e]                           dc.b $00
[000b1d5f]                           dc.b $05
_02_ED_PICTURE:
[000b1d60]                           dc.b $00
[000b1d61]                           dc.b $01
[000b1d62]                           dc.w $ffff
[000b1d64]                           dc.w $ffff
[000b1d66]                           dc.b $00
[000b1d67]                           dc.b $18
[000b1d68]                           dc.w $1800
[000b1d6a]                           dc.b $00
[000b1d6b]                           dc.b $00
[000b1d6c] 000b18d0                  dc.l A_PICTURE01
[000b1d70]                           dc.b $00
[000b1d71]                           dc.b $00
[000b1d72]                           dc.b $00
[000b1d73]                           dc.b $00
[000b1d74]                           dc.b $00
[000b1d75]                           dc.b $0d
[000b1d76]                           dc.b $00
[000b1d77]                           dc.b $05
_02aED_PICTURE:
[000b1d78]                           dc.b $00
[000b1d79]                           dc.b $00
[000b1d7a]                           dc.b $00
[000b1d7b]                           dc.b $00
[000b1d7c] 000263cc                  dc.l acc
[000b1d80]                           dc.w $8000
[000b1d82]                           dc.b $00
[000b1d83]                           dc.b $00
[000b1d84]                           dc.b $00
[000b1d85]                           dc.b $00
[000b1d86]                           dc.b $00
[000b1d87]                           dc.b $00
[000b1d88]                           dc.b $00
[000b1d89]                           dc.b $00
[000b1d8a]                           dc.b $00
[000b1d8b]                           dc.b $00
[000b1d8c]                           dc.b $00
[000b1d8d]                           dc.b $00
[000b1d8e]                           dc.b $00
[000b1d8f]                           dc.b $00
_04_ED_PICTURE:
[000b1d90]                           dc.b $00
[000b1d91]                           dc.b $06
[000b1d92]                           dc.w $ffff
[000b1d94]                           dc.w $ffff
[000b1d96]                           dc.b $00
[000b1d97]                           dc.b $18
[000b1d98]                           dc.w $4007
[000b1d9a]                           dc.b $00
[000b1d9b]                           dc.b $10
[000b1d9c] 000b17b0                  dc.l A_3DBUTTON03
[000b1da0]                           dc.b $00
[000b1da1]                           dc.b $0f
[000b1da2]                           dc.b $00
[000b1da3]                           dc.b $01
[000b1da4]                           dc.b $00
[000b1da5]                           dc.b $0c
[000b1da6]                           dc.b $00
[000b1da7]                           dc.b $02
_04aED_PICTURE:
[000b1da8] 000262b4                  dc.l ok
[000b1dac]                           dc.b $00
[000b1dad]                           dc.b $00
[000b1dae]                           dc.b $00
[000b1daf]                           dc.b $00
[000b1db0]                           dc.w $8000
[000b1db2]                           dc.w $884f
[000b1db4]                           dc.b $00
[000b1db5]                           dc.b $00
[000b1db6]                           dc.b $00
[000b1db7]                           dc.b $00
[000b1db8]                           dc.b $00
[000b1db9]                           dc.b $00
[000b1dba]                           dc.b $00
[000b1dbb]                           dc.b $00
[000b1dbc]                           dc.b $00
[000b1dbd]                           dc.b $00
[000b1dbe]                           dc.b $00
[000b1dbf]                           dc.b $00
_06_ED_PICTURE:
[000b1dc0]                           dc.b $00
[000b1dc1]                           dc.b $08
[000b1dc2]                           dc.w $ffff
[000b1dc4]                           dc.w $ffff
[000b1dc6]                           dc.b $00
[000b1dc7]                           dc.b $18
[000b1dc8]                           dc.w $4005
[000b1dca]                           dc.b $00
[000b1dcb]                           dc.b $10
[000b1dcc] 000b17d0                  dc.l A_3DBUTTON04
[000b1dd0]                           dc.b $00
[000b1dd1]                           dc.b $1d
[000b1dd2]                           dc.b $00
[000b1dd3]                           dc.b $01
[000b1dd4]                           dc.b $00
[000b1dd5]                           dc.b $0c
[000b1dd6]                           dc.b $00
[000b1dd7]                           dc.b $02
_06aED_PICTURE:
[000b1dd8] 000262a8                  dc.l abort
[000b1ddc]                           dc.b $00
[000b1ddd]                           dc.b $00
[000b1dde]                           dc.b $00
[000b1ddf]                           dc.b $00
[000b1de0]                           dc.w $8000
[000b1de2]                           dc.w $8841
[000b1de4]                           dc.b $00
[000b1de5]                           dc.b $00
[000b1de6]                           dc.b $00
[000b1de7]                           dc.b $00
[000b1de8]                           dc.b $00
[000b1de9]                           dc.b $00
[000b1dea]                           dc.b $00
[000b1deb]                           dc.b $00
[000b1dec]                           dc.b $00
[000b1ded]                           dc.b $00
[000b1dee]                           dc.b $00
[000b1def]                           dc.b $00
_08_ED_PICTURE:
[000b1df0]                           dc.b $00
[000b1df1]                           dc.b $0a
[000b1df2]                           dc.w $ffff
[000b1df4]                           dc.w $ffff
[000b1df6]                           dc.b $00
[000b1df7]                           dc.b $18
[000b1df8]                           dc.b $00
[000b1df9]                           dc.b $41
[000b1dfa]                           dc.b $00
[000b1dfb]                           dc.b $00
[000b1dfc] 000b1830                  dc.l A_CHECKBOX02
[000b1e00]                           dc.b $00
[000b1e01]                           dc.b $0f
[000b1e02]                           dc.b $00
[000b1e03]                           dc.b $04
[000b1e04]                           dc.b $00
[000b1e05]                           dc.b $0f
[000b1e06]                           dc.b $00
[000b1e07]                           dc.b $01
_08aED_PICTURE:
[000b1e08] 000260f0                  dc.l edpi_tile
[000b1e0c]                           dc.b $00
[000b1e0d]                           dc.b $00
[000b1e0e]                           dc.b $00
[000b1e0f]                           dc.b $00
[000b1e10]                           dc.w $8000
[000b1e12]                           dc.w $884b
[000b1e14]                           dc.b $00
[000b1e15]                           dc.b $00
[000b1e16]                           dc.b $00
[000b1e17]                           dc.b $00
[000b1e18]                           dc.b $00
[000b1e19]                           dc.b $00
[000b1e1a]                           dc.b $00
[000b1e1b]                           dc.b $00
[000b1e1c]                           dc.b $00
[000b1e1d]                           dc.b $00
[000b1e1e]                           dc.b $00
[000b1e1f]                           dc.b $00
_10_ED_PICTURE:
[000b1e20]                           dc.b $00
[000b1e21]                           dc.b $0c
[000b1e22]                           dc.w $ffff
[000b1e24]                           dc.w $ffff
[000b1e26]                           dc.b $00
[000b1e27]                           dc.b $18
[000b1e28]                           dc.b $00
[000b1e29]                           dc.b $41
[000b1e2a]                           dc.b $00
[000b1e2b]                           dc.b $00
[000b1e2c] 000b1850                  dc.l A_CHECKBOX03
[000b1e30]                           dc.b $00
[000b1e31]                           dc.b $0f
[000b1e32]                           dc.b $00
[000b1e33]                           dc.b $05
[000b1e34]                           dc.b $00
[000b1e35]                           dc.b $0f
[000b1e36]                           dc.b $00
[000b1e37]                           dc.b $01
_10aED_PICTURE:
[000b1e38] 00026062                  dc.l edpi_dither
[000b1e3c]                           dc.b $00
[000b1e3d]                           dc.b $00
[000b1e3e]                           dc.b $00
[000b1e3f]                           dc.b $00
[000b1e40]                           dc.w $8000
[000b1e42]                           dc.w $8844
[000b1e44]                           dc.b $00
[000b1e45]                           dc.b $00
[000b1e46]                           dc.b $00
[000b1e47]                           dc.b $00
[000b1e48]                           dc.b $00
[000b1e49]                           dc.b $00
[000b1e4a]                           dc.b $00
[000b1e4b]                           dc.b $00
[000b1e4c]                           dc.b $00
[000b1e4d]                           dc.b $00
[000b1e4e]                           dc.b $00
[000b1e4f]                           dc.b $00
_12_ED_PICTURE:
[000b1e50]                           dc.b $00
[000b1e51]                           dc.b $00
[000b1e52]                           dc.b $00
[000b1e53]                           dc.b $0d
[000b1e54]                           dc.b $00
[000b1e55]                           dc.b $13
[000b1e56]                           dc.b $00
[000b1e57]                           dc.b $18
[000b1e58]                           dc.b $00
[000b1e59]                           dc.b $40
[000b1e5a]                           dc.b $00
[000b1e5b]                           dc.b $00
[000b1e5c] 000b1870                  dc.l A_INNERFRAME01
[000b1e60]                           dc.b $00
[000b1e61]                           dc.b $01
[000b1e62]                           dc.b $00
[000b1e63]                           dc.b $06
[000b1e64]                           dc.b $00
[000b1e65]                           dc.b $28
[000b1e66]                           dc.b $00
[000b1e67]                           dc.b $07
_13_ED_PICTURE:
[000b1e68]                           dc.b $00
[000b1e69]                           dc.b $0f
[000b1e6a]                           dc.b $00
[000b1e6b]                           dc.b $0e
[000b1e6c]                           dc.b $00
[000b1e6d]                           dc.b $0e
[000b1e6e]                           dc.b $00
[000b1e6f]                           dc.b $1c
[000b1e70]                           dc.b $00
[000b1e71]                           dc.b $40
[000b1e72]                           dc.b $00
[000b1e73]                           dc.b $00
[000b1e74] 000b1352                  dc.l TEXT_11
[000b1e78]                           dc.b $00
[000b1e79]                           dc.b $03
[000b1e7a]                           dc.b $00
[000b1e7b]                           dc.b $01
[000b1e7c]                           dc.b $00
[000b1e7d]                           dc.b $06
[000b1e7e]                           dc.b $00
[000b1e7f]                           dc.b $01
_14_ED_PICTURE:
[000b1e80]                           dc.b $00
[000b1e81]                           dc.b $0d
[000b1e82]                           dc.w $ffff
[000b1e84]                           dc.w $ffff
[000b1e86]                           dc.b $00
[000b1e87]                           dc.b $18
[000b1e88]                           dc.b $00
[000b1e89]                           dc.b $40
[000b1e8a]                           dc.b $00
[000b1e8b]                           dc.b $00
[000b1e8c] 000b1810                  dc.l A_ARROWS02
[000b1e90]                           dc.b $00
[000b1e91]                           dc.b $00
[000b1e92]                           dc.b $00
[000b1e93]                           dc.b $00
[000b1e94]                           dc.b $00
[000b1e95]                           dc.b $01
[000b1e96]                           dc.b $00
[000b1e97]                           dc.b $01
_15_ED_PICTURE:
[000b1e98]                           dc.b $00
[000b1e99]                           dc.b $13
[000b1e9a]                           dc.b $00
[000b1e9b]                           dc.b $11
[000b1e9c]                           dc.b $00
[000b1e9d]                           dc.b $12
[000b1e9e]                           dc.b $00
[000b1e9f]                           dc.b $14
[000b1ea0]                           dc.b $00
[000b1ea1]                           dc.b $40
[000b1ea2]                           dc.b $00
[000b1ea3]                           dc.b $20
[000b1ea4]                           dc.b $00
[000b1ea5]                           dc.b $ff
[000b1ea6]                           dc.w $1101
[000b1ea8]                           dc.b $00
[000b1ea9]                           dc.b $0a
[000b1eaa]                           dc.b $00
[000b1eab]                           dc.b $01
[000b1eac]                           dc.b $00
[000b1ead]                           dc.b $12
[000b1eae]                           dc.b $00
[000b1eaf]                           dc.b $01
_15aED_PICTURE:
[000b1eb0] 00025ffe                  dc.l edpi_col
[000b1eb4]                           dc.b $00
[000b1eb5]                           dc.b $00
[000b1eb6]                           dc.b $00
[000b1eb7]                           dc.b $00
[000b1eb8]                           dc.w $8000
[000b1eba]                           dc.w $8846
[000b1ebc]                           dc.b $00
[000b1ebd]                           dc.b $00
[000b1ebe]                           dc.b $00
[000b1ebf]                           dc.b $00
[000b1ec0]                           dc.b $00
[000b1ec1]                           dc.b $00
[000b1ec2]                           dc.b $00
[000b1ec3]                           dc.b $00
[000b1ec4]                           dc.b $00
[000b1ec5]                           dc.b $00
[000b1ec6]                           dc.b $00
[000b1ec7]                           dc.b $00
_17_ED_PICTURE:
[000b1ec8]                           dc.b $00
[000b1ec9]                           dc.b $12
[000b1eca]                           dc.w $ffff
[000b1ecc]                           dc.w $ffff
[000b1ece]                           dc.b $00
[000b1ecf]                           dc.b $14
[000b1ed0]                           dc.b $00
[000b1ed1]                           dc.b $00
[000b1ed2]                           dc.b $00
[000b1ed3]                           dc.b $00
[000b1ed4]                           dc.b $00
[000b1ed5]                           dc.b $01
[000b1ed6]                           dc.w $1171
[000b1ed8]                           dc.b $00
[000b1ed9]                           dc.b $10
[000b1eda]                           dc.b $00
[000b1edb]                           dc.b $00
[000b1edc]                           dc.b $00
[000b1edd]                           dc.b $02
[000b1ede]                           dc.b $00
[000b1edf]                           dc.b $01
_18_ED_PICTURE:
[000b1ee0]                           dc.b $00
[000b1ee1]                           dc.b $0f
[000b1ee2]                           dc.w $ffff
[000b1ee4]                           dc.w $ffff
[000b1ee6]                           dc.b $00
[000b1ee7]                           dc.b $18
[000b1ee8]                           dc.b $00
[000b1ee9]                           dc.b $00
[000b1eea]                           dc.b $00
[000b1eeb]                           dc.b $00
[000b1eec] 000b17f0                  dc.l A_3DBUTTON27
[000b1ef0]                           dc.b $00
[000b1ef1]                           dc.b $00
[000b1ef2]                           dc.b $00
[000b1ef3]                           dc.b $00
[000b1ef4]                           dc.b $00
[000b1ef5]                           dc.b $10
[000b1ef6]                           dc.b $00
[000b1ef7]                           dc.b $01
_19_ED_PICTURE:
[000b1ef8]                           dc.b $00
[000b1ef9]                           dc.b $0c
[000b1efa]                           dc.b $00
[000b1efb]                           dc.b $14
[000b1efc]                           dc.b $00
[000b1efd]                           dc.b $5a
[000b1efe]                           dc.b $00
[000b1eff]                           dc.b $18
[000b1f00]                           dc.b $00
[000b1f01]                           dc.b $40
[000b1f02]                           dc.b $00
[000b1f03]                           dc.b $00
[000b1f04] 000b1890                  dc.l A_INNERFRAME03
[000b1f08]                           dc.b $00
[000b1f09]                           dc.b $01
[000b1f0a]                           dc.b $00
[000b1f0b]                           dc.b $02
[000b1f0c]                           dc.b $00
[000b1f0d]                           dc.b $26
[000b1f0e]                           dc.b $00
[000b1f0f]                           dc.b $05
_20_ED_PICTURE:
[000b1f10]                           dc.b $00
[000b1f11]                           dc.b $16
[000b1f12]                           dc.w $ffff
[000b1f14]                           dc.w $ffff
[000b1f16]                           dc.b $00
[000b1f17]                           dc.b $18
[000b1f18]                           dc.b $00
[000b1f19]                           dc.b $05
[000b1f1a]                           dc.b $00
[000b1f1b]                           dc.b $00
[000b1f1c] 000b18f0                  dc.l USER_007
[000b1f20]                           dc.b $00
[000b1f21]                           dc.b $01
[000b1f22]                           dc.b $00
[000b1f23]                           dc.b $01
[000b1f24]                           dc.b $00
[000b1f25]                           dc.b $03
[000b1f26]                           dc.b $00
[000b1f27]                           dc.b $01
_20aED_PICTURE:
[000b1f28] 00026098                  dc.l edpi_pattern
[000b1f2c]                           dc.b $00
[000b1f2d]                           dc.b $00
[000b1f2e]                           dc.b $00
[000b1f2f]                           dc.b $00
[000b1f30]                           dc.w $8000
[000b1f32]                           dc.b $00
[000b1f33]                           dc.b $00
[000b1f34]                           dc.b $00
[000b1f35]                           dc.b $03
[000b1f36]                           dc.w $0100
[000b1f38]                           dc.b $00
[000b1f39]                           dc.b $00
[000b1f3a]                           dc.b $00
[000b1f3b]                           dc.b $00
[000b1f3c]                           dc.b $00
[000b1f3d]                           dc.b $00
[000b1f3e]                           dc.b $00
[000b1f3f]                           dc.b $00
_22_ED_PICTURE:
[000b1f40]                           dc.b $00
[000b1f41]                           dc.b $18
[000b1f42]                           dc.w $ffff
[000b1f44]                           dc.w $ffff
[000b1f46]                           dc.b $00
[000b1f47]                           dc.b $18
[000b1f48]                           dc.b $00
[000b1f49]                           dc.b $05
[000b1f4a]                           dc.b $00
[000b1f4b]                           dc.b $00
[000b1f4c] 000b1910                  dc.l USER_012
[000b1f50]                           dc.b $00
[000b1f51]                           dc.b $01
[000b1f52]                           dc.b $00
[000b1f53]                           dc.b $02
[000b1f54]                           dc.b $00
[000b1f55]                           dc.b $03
[000b1f56]                           dc.b $00
[000b1f57]                           dc.b $01
_22aED_PICTURE:
[000b1f58] 00026098                  dc.l edpi_pattern
[000b1f5c]                           dc.b $00
[000b1f5d]                           dc.b $00
[000b1f5e]                           dc.b $00
[000b1f5f]                           dc.b $00
[000b1f60]                           dc.w $8000
[000b1f62]                           dc.b $00
[000b1f63]                           dc.b $00
[000b1f64]                           dc.b $00
[000b1f65]                           dc.b $03
[000b1f66]                           dc.w $0200
[000b1f68]                           dc.b $00
[000b1f69]                           dc.b $00
[000b1f6a]                           dc.b $00
[000b1f6b]                           dc.b $00
[000b1f6c]                           dc.b $00
[000b1f6d]                           dc.b $00
[000b1f6e]                           dc.b $00
[000b1f6f]                           dc.b $00
_24_ED_PICTURE:
[000b1f70]                           dc.b $00
[000b1f71]                           dc.b $1a
[000b1f72]                           dc.w $ffff
[000b1f74]                           dc.w $ffff
[000b1f76]                           dc.b $00
[000b1f77]                           dc.b $18
[000b1f78]                           dc.b $00
[000b1f79]                           dc.b $05
[000b1f7a]                           dc.b $00
[000b1f7b]                           dc.b $00
[000b1f7c] 000b18b0                  dc.l A_PATTERN01
[000b1f80]                           dc.b $00
[000b1f81]                           dc.b $01
[000b1f82]                           dc.b $00
[000b1f83]                           dc.b $03
[000b1f84]                           dc.b $00
[000b1f85]                           dc.b $03
[000b1f86]                           dc.b $00
[000b1f87]                           dc.b $01
_24aED_PICTURE:
[000b1f88] 00026098                  dc.l edpi_pattern
[000b1f8c]                           dc.b $00
[000b1f8d]                           dc.b $00
[000b1f8e]                           dc.b $00
[000b1f8f]                           dc.b $00
[000b1f90]                           dc.w $8000
[000b1f92]                           dc.b $00
[000b1f93]                           dc.b $00
[000b1f94]                           dc.b $00
[000b1f95]                           dc.b $03
[000b1f96]                           dc.w $0300
[000b1f98]                           dc.b $00
[000b1f99]                           dc.b $00
[000b1f9a]                           dc.b $00
[000b1f9b]                           dc.b $00
[000b1f9c]                           dc.b $00
[000b1f9d]                           dc.b $00
[000b1f9e]                           dc.b $00
[000b1f9f]                           dc.b $00
_26_ED_PICTURE:
[000b1fa0]                           dc.b $00
[000b1fa1]                           dc.b $1c
[000b1fa2]                           dc.w $ffff
[000b1fa4]                           dc.w $ffff
[000b1fa6]                           dc.b $00
[000b1fa7]                           dc.b $18
[000b1fa8]                           dc.b $00
[000b1fa9]                           dc.b $05
[000b1faa]                           dc.b $00
[000b1fab]                           dc.b $00
[000b1fac] 000b1930                  dc.l USER_013
[000b1fb0]                           dc.b $00
[000b1fb1]                           dc.b $04
[000b1fb2]                           dc.b $00
[000b1fb3]                           dc.b $01
[000b1fb4]                           dc.b $00
[000b1fb5]                           dc.b $03
[000b1fb6]                           dc.b $00
[000b1fb7]                           dc.b $01
_26aED_PICTURE:
[000b1fb8] 00026098                  dc.l edpi_pattern
[000b1fbc]                           dc.b $00
[000b1fbd]                           dc.b $00
[000b1fbe]                           dc.b $00
[000b1fbf]                           dc.b $00
[000b1fc0]                           dc.w $8000
[000b1fc2]                           dc.b $00
[000b1fc3]                           dc.b $00
[000b1fc4]                           dc.b $00
[000b1fc5]                           dc.b $03
[000b1fc6]                           dc.w $0400
[000b1fc8]                           dc.b $00
[000b1fc9]                           dc.b $00
[000b1fca]                           dc.b $00
[000b1fcb]                           dc.b $00
[000b1fcc]                           dc.b $00
[000b1fcd]                           dc.b $00
[000b1fce]                           dc.b $00
[000b1fcf]                           dc.b $00
_28_ED_PICTURE:
[000b1fd0]                           dc.b $00
[000b1fd1]                           dc.b $1e
[000b1fd2]                           dc.w $ffff
[000b1fd4]                           dc.w $ffff
[000b1fd6]                           dc.b $00
[000b1fd7]                           dc.b $18
[000b1fd8]                           dc.b $00
[000b1fd9]                           dc.b $05
[000b1fda]                           dc.b $00
[000b1fdb]                           dc.b $00
[000b1fdc] 000b1950                  dc.l USER_014
[000b1fe0]                           dc.b $00
[000b1fe1]                           dc.b $04
[000b1fe2]                           dc.b $00
[000b1fe3]                           dc.b $02
[000b1fe4]                           dc.b $00
[000b1fe5]                           dc.b $03
[000b1fe6]                           dc.b $00
[000b1fe7]                           dc.b $01
_28aED_PICTURE:
[000b1fe8] 00026098                  dc.l edpi_pattern
[000b1fec]                           dc.b $00
[000b1fed]                           dc.b $00
[000b1fee]                           dc.b $00
[000b1fef]                           dc.b $00
[000b1ff0]                           dc.w $8000
[000b1ff2]                           dc.b $00
[000b1ff3]                           dc.b $00
[000b1ff4]                           dc.b $00
[000b1ff5]                           dc.b $03
[000b1ff6]                           dc.w $0500
[000b1ff8]                           dc.b $00
[000b1ff9]                           dc.b $00
[000b1ffa]                           dc.b $00
[000b1ffb]                           dc.b $00
[000b1ffc]                           dc.b $00
[000b1ffd]                           dc.b $00
[000b1ffe]                           dc.b $00
[000b1fff]                           dc.b $00
_30_ED_PICTURE:
[000b2000]                           dc.b $00
[000b2001]                           dc.b $20
[000b2002]                           dc.w $ffff
[000b2004]                           dc.w $ffff
[000b2006]                           dc.b $00
[000b2007]                           dc.b $18
[000b2008]                           dc.b $00
[000b2009]                           dc.b $05
[000b200a]                           dc.b $00
[000b200b]                           dc.b $00
[000b200c] 000b1970                  dc.l USER_015
[000b2010]                           dc.b $00
[000b2011]                           dc.b $04
[000b2012]                           dc.b $00
[000b2013]                           dc.b $03
[000b2014]                           dc.b $00
[000b2015]                           dc.b $03
[000b2016]                           dc.b $00
[000b2017]                           dc.b $01
_30aED_PICTURE:
[000b2018] 00026098                  dc.l edpi_pattern
[000b201c]                           dc.b $00
[000b201d]                           dc.b $00
[000b201e]                           dc.b $00
[000b201f]                           dc.b $00
[000b2020]                           dc.w $8000
[000b2022]                           dc.b $00
[000b2023]                           dc.b $00
[000b2024]                           dc.b $00
[000b2025]                           dc.b $03
[000b2026]                           dc.w $0600
[000b2028]                           dc.b $00
[000b2029]                           dc.b $00
[000b202a]                           dc.b $00
[000b202b]                           dc.b $00
[000b202c]                           dc.b $00
[000b202d]                           dc.b $00
[000b202e]                           dc.b $00
[000b202f]                           dc.b $00
_32_ED_PICTURE:
[000b2030]                           dc.b $00
[000b2031]                           dc.b $22
[000b2032]                           dc.w $ffff
[000b2034]                           dc.w $ffff
[000b2036]                           dc.b $00
[000b2037]                           dc.b $18
[000b2038]                           dc.b $00
[000b2039]                           dc.b $05
[000b203a]                           dc.b $00
[000b203b]                           dc.b $00
[000b203c] 000b1990                  dc.l USER_016
[000b2040]                           dc.b $00
[000b2041]                           dc.b $07
[000b2042]                           dc.b $00
[000b2043]                           dc.b $01
[000b2044]                           dc.b $00
[000b2045]                           dc.b $03
[000b2046]                           dc.b $00
[000b2047]                           dc.b $01
_32aED_PICTURE:
[000b2048] 00026098                  dc.l edpi_pattern
[000b204c]                           dc.b $00
[000b204d]                           dc.b $00
[000b204e]                           dc.b $00
[000b204f]                           dc.b $00
[000b2050]                           dc.w $8000
[000b2052]                           dc.b $00
[000b2053]                           dc.b $00
[000b2054]                           dc.b $00
[000b2055]                           dc.b $03
[000b2056]                           dc.w $0700
[000b2058]                           dc.b $00
[000b2059]                           dc.b $00
[000b205a]                           dc.b $00
[000b205b]                           dc.b $00
[000b205c]                           dc.b $00
[000b205d]                           dc.b $00
[000b205e]                           dc.b $00
[000b205f]                           dc.b $00
_34_ED_PICTURE:
[000b2060]                           dc.b $00
[000b2061]                           dc.b $24
[000b2062]                           dc.w $ffff
[000b2064]                           dc.w $ffff
[000b2066]                           dc.b $00
[000b2067]                           dc.b $18
[000b2068]                           dc.b $00
[000b2069]                           dc.b $05
[000b206a]                           dc.b $00
[000b206b]                           dc.b $00
[000b206c] 000b19b0                  dc.l USER_017
[000b2070]                           dc.b $00
[000b2071]                           dc.b $07
[000b2072]                           dc.b $00
[000b2073]                           dc.b $02
[000b2074]                           dc.b $00
[000b2075]                           dc.b $03
[000b2076]                           dc.b $00
[000b2077]                           dc.b $01
_34aED_PICTURE:
[000b2078] 00026098                  dc.l edpi_pattern
[000b207c]                           dc.b $00
[000b207d]                           dc.b $00
[000b207e]                           dc.b $00
[000b207f]                           dc.b $00
[000b2080]                           dc.w $8000
[000b2082]                           dc.b $00
[000b2083]                           dc.b $00
[000b2084]                           dc.b $00
[000b2085]                           dc.b $03
[000b2086]                           dc.w $0800
[000b2088]                           dc.b $00
[000b2089]                           dc.b $00
[000b208a]                           dc.b $00
[000b208b]                           dc.b $00
[000b208c]                           dc.b $00
[000b208d]                           dc.b $00
[000b208e]                           dc.b $00
[000b208f]                           dc.b $00
_36_ED_PICTURE:
[000b2090]                           dc.b $00
[000b2091]                           dc.b $26
[000b2092]                           dc.w $ffff
[000b2094]                           dc.w $ffff
[000b2096]                           dc.b $00
[000b2097]                           dc.b $18
[000b2098]                           dc.b $00
[000b2099]                           dc.b $05
[000b209a]                           dc.b $00
[000b209b]                           dc.b $00
[000b209c] 000b19d0                  dc.l USER_018
[000b20a0]                           dc.b $00
[000b20a1]                           dc.b $07
[000b20a2]                           dc.b $00
[000b20a3]                           dc.b $03
[000b20a4]                           dc.b $00
[000b20a5]                           dc.b $03
[000b20a6]                           dc.b $00
[000b20a7]                           dc.b $01
_36aED_PICTURE:
[000b20a8] 00026098                  dc.l edpi_pattern
[000b20ac]                           dc.b $00
[000b20ad]                           dc.b $00
[000b20ae]                           dc.b $00
[000b20af]                           dc.b $00
[000b20b0]                           dc.w $8000
[000b20b2]                           dc.b $00
[000b20b3]                           dc.b $00
[000b20b4]                           dc.b $00
[000b20b5]                           dc.b $03
[000b20b6]                           dc.w $0900
[000b20b8]                           dc.b $00
[000b20b9]                           dc.b $00
[000b20ba]                           dc.b $00
[000b20bb]                           dc.b $00
[000b20bc]                           dc.b $00
[000b20bd]                           dc.b $00
[000b20be]                           dc.b $00
[000b20bf]                           dc.b $00
_38_ED_PICTURE:
[000b20c0]                           dc.b $00
[000b20c1]                           dc.b $28
[000b20c2]                           dc.w $ffff
[000b20c4]                           dc.w $ffff
[000b20c6]                           dc.b $00
[000b20c7]                           dc.b $18
[000b20c8]                           dc.b $00
[000b20c9]                           dc.b $05
[000b20ca]                           dc.b $00
[000b20cb]                           dc.b $00
[000b20cc] 000b19f0                  dc.l USER_019
[000b20d0]                           dc.b $00
[000b20d1]                           dc.b $0a
[000b20d2]                           dc.b $00
[000b20d3]                           dc.b $01
[000b20d4]                           dc.b $00
[000b20d5]                           dc.b $03
[000b20d6]                           dc.b $00
[000b20d7]                           dc.b $01
_38aED_PICTURE:
[000b20d8] 00026098                  dc.l edpi_pattern
[000b20dc]                           dc.b $00
[000b20dd]                           dc.b $00
[000b20de]                           dc.b $00
[000b20df]                           dc.b $00
[000b20e0]                           dc.w $8000
[000b20e2]                           dc.b $00
[000b20e3]                           dc.b $00
[000b20e4]                           dc.b $00
[000b20e5]                           dc.b $03
[000b20e6]                           dc.w $0a00
[000b20e8]                           dc.b $00
[000b20e9]                           dc.b $00
[000b20ea]                           dc.b $00
[000b20eb]                           dc.b $00
[000b20ec]                           dc.b $00
[000b20ed]                           dc.b $00
[000b20ee]                           dc.b $00
[000b20ef]                           dc.b $00
_40_ED_PICTURE:
[000b20f0]                           dc.b $00
[000b20f1]                           dc.b $2a
[000b20f2]                           dc.w $ffff
[000b20f4]                           dc.w $ffff
[000b20f6]                           dc.b $00
[000b20f7]                           dc.b $18
[000b20f8]                           dc.b $00
[000b20f9]                           dc.b $05
[000b20fa]                           dc.b $00
[000b20fb]                           dc.b $00
[000b20fc] 000b1a10                  dc.l USER_020
[000b2100]                           dc.b $00
[000b2101]                           dc.b $0a
[000b2102]                           dc.b $00
[000b2103]                           dc.b $02
[000b2104]                           dc.b $00
[000b2105]                           dc.b $03
[000b2106]                           dc.b $00
[000b2107]                           dc.b $01
_40aED_PICTURE:
[000b2108] 00026098                  dc.l edpi_pattern
[000b210c]                           dc.b $00
[000b210d]                           dc.b $00
[000b210e]                           dc.b $00
[000b210f]                           dc.b $00
[000b2110]                           dc.w $8000
[000b2112]                           dc.b $00
[000b2113]                           dc.b $00
[000b2114]                           dc.b $00
[000b2115]                           dc.b $03
[000b2116]                           dc.w $0b00
[000b2118]                           dc.b $00
[000b2119]                           dc.b $00
[000b211a]                           dc.b $00
[000b211b]                           dc.b $00
[000b211c]                           dc.b $00
[000b211d]                           dc.b $00
[000b211e]                           dc.b $00
[000b211f]                           dc.b $00
_42_ED_PICTURE:
[000b2120]                           dc.b $00
[000b2121]                           dc.b $2c
[000b2122]                           dc.w $ffff
[000b2124]                           dc.w $ffff
[000b2126]                           dc.b $00
[000b2127]                           dc.b $18
[000b2128]                           dc.b $00
[000b2129]                           dc.b $05
[000b212a]                           dc.b $00
[000b212b]                           dc.b $00
[000b212c] 000b1a30                  dc.l USER_021
[000b2130]                           dc.b $00
[000b2131]                           dc.b $0a
[000b2132]                           dc.b $00
[000b2133]                           dc.b $03
[000b2134]                           dc.b $00
[000b2135]                           dc.b $03
[000b2136]                           dc.b $00
[000b2137]                           dc.b $01
_42aED_PICTURE:
[000b2138] 00026098                  dc.l edpi_pattern
[000b213c]                           dc.b $00
[000b213d]                           dc.b $00
[000b213e]                           dc.b $00
[000b213f]                           dc.b $00
[000b2140]                           dc.w $8000
[000b2142]                           dc.b $00
[000b2143]                           dc.b $00
[000b2144]                           dc.b $00
[000b2145]                           dc.b $03
[000b2146]                           dc.w $0c00
[000b2148]                           dc.b $00
[000b2149]                           dc.b $00
[000b214a]                           dc.b $00
[000b214b]                           dc.b $00
[000b214c]                           dc.b $00
[000b214d]                           dc.b $00
[000b214e]                           dc.b $00
[000b214f]                           dc.b $00
_44_ED_PICTURE:
[000b2150]                           dc.b $00
[000b2151]                           dc.b $2e
[000b2152]                           dc.w $ffff
[000b2154]                           dc.w $ffff
[000b2156]                           dc.b $00
[000b2157]                           dc.b $14
[000b2158]                           dc.b $00
[000b2159]                           dc.b $05
[000b215a]                           dc.b $00
[000b215b]                           dc.b $00
[000b215c]                           dc.b $00
[000b215d]                           dc.b $01
[000b215e]                           dc.w $1101
[000b2160]                           dc.b $00
[000b2161]                           dc.b $0d
[000b2162]                           dc.b $00
[000b2163]                           dc.b $01
[000b2164]                           dc.b $00
[000b2165]                           dc.b $03
[000b2166]                           dc.b $00
[000b2167]                           dc.b $01
_44aED_PICTURE:
[000b2168] 00026098                  dc.l edpi_pattern
[000b216c]                           dc.b $00
[000b216d]                           dc.b $00
[000b216e]                           dc.b $00
[000b216f]                           dc.b $00
[000b2170]                           dc.w $8000
[000b2172]                           dc.b $00
[000b2173]                           dc.b $00
[000b2174]                           dc.b $00
[000b2175]                           dc.b $00
[000b2176]                           dc.b $00
[000b2177]                           dc.b $00
[000b2178]                           dc.b $00
[000b2179]                           dc.b $00
[000b217a]                           dc.b $00
[000b217b]                           dc.b $00
[000b217c]                           dc.b $00
[000b217d]                           dc.b $00
[000b217e]                           dc.b $00
[000b217f]                           dc.b $00
_46_ED_PICTURE:
[000b2180]                           dc.b $00
[000b2181]                           dc.b $30
[000b2182]                           dc.w $ffff
[000b2184]                           dc.w $ffff
[000b2186]                           dc.b $00
[000b2187]                           dc.b $18
[000b2188]                           dc.b $00
[000b2189]                           dc.b $05
[000b218a]                           dc.b $00
[000b218b]                           dc.b $00
[000b218c] 000b1a50                  dc.l USER_022
[000b2190]                           dc.b $00
[000b2191]                           dc.b $0d
[000b2192]                           dc.b $00
[000b2193]                           dc.b $02
[000b2194]                           dc.b $00
[000b2195]                           dc.b $03
[000b2196]                           dc.b $00
[000b2197]                           dc.b $01
_46aED_PICTURE:
[000b2198] 00026098                  dc.l edpi_pattern
[000b219c]                           dc.b $00
[000b219d]                           dc.b $00
[000b219e]                           dc.b $00
[000b219f]                           dc.b $00
[000b21a0]                           dc.w $8000
[000b21a2]                           dc.b $00
[000b21a3]                           dc.b $00
[000b21a4]                           dc.b $00
[000b21a5]                           dc.b $02
[000b21a6]                           dc.w $0100
[000b21a8]                           dc.b $00
[000b21a9]                           dc.b $00
[000b21aa]                           dc.b $00
[000b21ab]                           dc.b $00
[000b21ac]                           dc.b $00
[000b21ad]                           dc.b $00
[000b21ae]                           dc.b $00
[000b21af]                           dc.b $00
_48_ED_PICTURE:
[000b21b0]                           dc.b $00
[000b21b1]                           dc.b $32
[000b21b2]                           dc.w $ffff
[000b21b4]                           dc.w $ffff
[000b21b6]                           dc.b $00
[000b21b7]                           dc.b $18
[000b21b8]                           dc.b $00
[000b21b9]                           dc.b $05
[000b21ba]                           dc.b $00
[000b21bb]                           dc.b $00
[000b21bc] 000b1a70                  dc.l USER_023
[000b21c0]                           dc.b $00
[000b21c1]                           dc.b $0d
[000b21c2]                           dc.b $00
[000b21c3]                           dc.b $03
[000b21c4]                           dc.b $00
[000b21c5]                           dc.b $03
[000b21c6]                           dc.b $00
[000b21c7]                           dc.b $01
_48aED_PICTURE:
[000b21c8] 00026098                  dc.l edpi_pattern
[000b21cc]                           dc.b $00
[000b21cd]                           dc.b $00
[000b21ce]                           dc.b $00
[000b21cf]                           dc.b $00
[000b21d0]                           dc.w $8000
[000b21d2]                           dc.b $00
[000b21d3]                           dc.b $00
[000b21d4]                           dc.b $00
[000b21d5]                           dc.b $02
[000b21d6]                           dc.w $0200
[000b21d8]                           dc.b $00
[000b21d9]                           dc.b $00
[000b21da]                           dc.b $00
[000b21db]                           dc.b $00
[000b21dc]                           dc.b $00
[000b21dd]                           dc.b $00
[000b21de]                           dc.b $00
[000b21df]                           dc.b $00
_50_ED_PICTURE:
[000b21e0]                           dc.b $00
[000b21e1]                           dc.b $34
[000b21e2]                           dc.w $ffff
[000b21e4]                           dc.w $ffff
[000b21e6]                           dc.b $00
[000b21e7]                           dc.b $18
[000b21e8]                           dc.b $00
[000b21e9]                           dc.b $05
[000b21ea]                           dc.b $00
[000b21eb]                           dc.b $00
[000b21ec] 000b1a90                  dc.l USER_024
[000b21f0]                           dc.b $00
[000b21f1]                           dc.b $10
[000b21f2]                           dc.b $00
[000b21f3]                           dc.b $01
[000b21f4]                           dc.b $00
[000b21f5]                           dc.b $03
[000b21f6]                           dc.b $00
[000b21f7]                           dc.b $01
_50aED_PICTURE:
[000b21f8] 00026098                  dc.l edpi_pattern
[000b21fc]                           dc.b $00
[000b21fd]                           dc.b $00
[000b21fe]                           dc.b $00
[000b21ff]                           dc.b $00
[000b2200]                           dc.w $8000
[000b2202]                           dc.b $00
[000b2203]                           dc.b $00
[000b2204]                           dc.b $00
[000b2205]                           dc.b $02
[000b2206]                           dc.w $0300
[000b2208]                           dc.b $00
[000b2209]                           dc.b $00
[000b220a]                           dc.b $00
[000b220b]                           dc.b $00
[000b220c]                           dc.b $00
[000b220d]                           dc.b $00
[000b220e]                           dc.b $00
[000b220f]                           dc.b $00
_52_ED_PICTURE:
[000b2210]                           dc.b $00
[000b2211]                           dc.b $36
[000b2212]                           dc.w $ffff
[000b2214]                           dc.w $ffff
[000b2216]                           dc.b $00
[000b2217]                           dc.b $18
[000b2218]                           dc.b $00
[000b2219]                           dc.b $05
[000b221a]                           dc.b $00
[000b221b]                           dc.b $00
[000b221c] 000b1ab0                  dc.l USER_025
[000b2220]                           dc.b $00
[000b2221]                           dc.b $10
[000b2222]                           dc.b $00
[000b2223]                           dc.b $02
[000b2224]                           dc.b $00
[000b2225]                           dc.b $03
[000b2226]                           dc.b $00
[000b2227]                           dc.b $01
_52aED_PICTURE:
[000b2228] 00026098                  dc.l edpi_pattern
[000b222c]                           dc.b $00
[000b222d]                           dc.b $00
[000b222e]                           dc.b $00
[000b222f]                           dc.b $00
[000b2230]                           dc.w $8000
[000b2232]                           dc.b $00
[000b2233]                           dc.b $00
[000b2234]                           dc.b $00
[000b2235]                           dc.b $02
[000b2236]                           dc.w $0400
[000b2238]                           dc.b $00
[000b2239]                           dc.b $00
[000b223a]                           dc.b $00
[000b223b]                           dc.b $00
[000b223c]                           dc.b $00
[000b223d]                           dc.b $00
[000b223e]                           dc.b $00
[000b223f]                           dc.b $00
_54_ED_PICTURE:
[000b2240]                           dc.b $00
[000b2241]                           dc.b $38
[000b2242]                           dc.w $ffff
[000b2244]                           dc.w $ffff
[000b2246]                           dc.b $00
[000b2247]                           dc.b $18
[000b2248]                           dc.b $00
[000b2249]                           dc.b $05
[000b224a]                           dc.b $00
[000b224b]                           dc.b $00
[000b224c] 000b1ad0                  dc.l USER_026
[000b2250]                           dc.b $00
[000b2251]                           dc.b $10
[000b2252]                           dc.b $00
[000b2253]                           dc.b $03
[000b2254]                           dc.b $00
[000b2255]                           dc.b $03
[000b2256]                           dc.b $00
[000b2257]                           dc.b $01
_54aED_PICTURE:
[000b2258] 00026098                  dc.l edpi_pattern
[000b225c]                           dc.b $00
[000b225d]                           dc.b $00
[000b225e]                           dc.b $00
[000b225f]                           dc.b $00
[000b2260]                           dc.w $8000
[000b2262]                           dc.b $00
[000b2263]                           dc.b $00
[000b2264]                           dc.b $00
[000b2265]                           dc.b $02
[000b2266]                           dc.w $0500
[000b2268]                           dc.b $00
[000b2269]                           dc.b $00
[000b226a]                           dc.b $00
[000b226b]                           dc.b $00
[000b226c]                           dc.b $00
[000b226d]                           dc.b $00
[000b226e]                           dc.b $00
[000b226f]                           dc.b $00
_56_ED_PICTURE:
[000b2270]                           dc.b $00
[000b2271]                           dc.b $3a
[000b2272]                           dc.w $ffff
[000b2274]                           dc.w $ffff
[000b2276]                           dc.b $00
[000b2277]                           dc.b $18
[000b2278]                           dc.b $00
[000b2279]                           dc.b $05
[000b227a]                           dc.b $00
[000b227b]                           dc.b $00
[000b227c] 000b1af0                  dc.l USER_027
[000b2280]                           dc.b $00
[000b2281]                           dc.b $13
[000b2282]                           dc.b $00
[000b2283]                           dc.b $01
[000b2284]                           dc.b $00
[000b2285]                           dc.b $03
[000b2286]                           dc.b $00
[000b2287]                           dc.b $01
_56aED_PICTURE:
[000b2288] 00026098                  dc.l edpi_pattern
[000b228c]                           dc.b $00
[000b228d]                           dc.b $00
[000b228e]                           dc.b $00
[000b228f]                           dc.b $00
[000b2290]                           dc.w $8000
[000b2292]                           dc.b $00
[000b2293]                           dc.b $00
[000b2294]                           dc.b $00
[000b2295]                           dc.b $02
[000b2296]                           dc.w $0600
[000b2298]                           dc.b $00
[000b2299]                           dc.b $00
[000b229a]                           dc.b $00
[000b229b]                           dc.b $00
[000b229c]                           dc.b $00
[000b229d]                           dc.b $00
[000b229e]                           dc.b $00
[000b229f]                           dc.b $00
_58_ED_PICTURE:
[000b22a0]                           dc.b $00
[000b22a1]                           dc.b $3c
[000b22a2]                           dc.w $ffff
[000b22a4]                           dc.w $ffff
[000b22a6]                           dc.b $00
[000b22a7]                           dc.b $18
[000b22a8]                           dc.b $00
[000b22a9]                           dc.b $05
[000b22aa]                           dc.b $00
[000b22ab]                           dc.b $00
[000b22ac] 000b1b10                  dc.l USER_028
[000b22b0]                           dc.b $00
[000b22b1]                           dc.b $13
[000b22b2]                           dc.b $00
[000b22b3]                           dc.b $02
[000b22b4]                           dc.b $00
[000b22b5]                           dc.b $03
[000b22b6]                           dc.b $00
[000b22b7]                           dc.b $01
_58aED_PICTURE:
[000b22b8] 00026098                  dc.l edpi_pattern
[000b22bc]                           dc.b $00
[000b22bd]                           dc.b $00
[000b22be]                           dc.b $00
[000b22bf]                           dc.b $00
[000b22c0]                           dc.w $8000
[000b22c2]                           dc.b $00
[000b22c3]                           dc.b $00
[000b22c4]                           dc.b $00
[000b22c5]                           dc.b $02
[000b22c6]                           dc.w $0700
[000b22c8]                           dc.b $00
[000b22c9]                           dc.b $00
[000b22ca]                           dc.b $00
[000b22cb]                           dc.b $00
[000b22cc]                           dc.b $00
[000b22cd]                           dc.b $00
[000b22ce]                           dc.b $00
[000b22cf]                           dc.b $00
_60_ED_PICTURE:
[000b22d0]                           dc.b $00
[000b22d1]                           dc.b $3e
[000b22d2]                           dc.w $ffff
[000b22d4]                           dc.w $ffff
[000b22d6]                           dc.b $00
[000b22d7]                           dc.b $18
[000b22d8]                           dc.b $00
[000b22d9]                           dc.b $05
[000b22da]                           dc.b $00
[000b22db]                           dc.b $00
[000b22dc] 000b1b30                  dc.l USER_029
[000b22e0]                           dc.b $00
[000b22e1]                           dc.b $13
[000b22e2]                           dc.b $00
[000b22e3]                           dc.b $03
[000b22e4]                           dc.b $00
[000b22e5]                           dc.b $03
[000b22e6]                           dc.b $00
[000b22e7]                           dc.b $01
_60aED_PICTURE:
[000b22e8] 00026098                  dc.l edpi_pattern
[000b22ec]                           dc.b $00
[000b22ed]                           dc.b $00
[000b22ee]                           dc.b $00
[000b22ef]                           dc.b $00
[000b22f0]                           dc.w $8000
[000b22f2]                           dc.b $00
[000b22f3]                           dc.b $00
[000b22f4]                           dc.b $00
[000b22f5]                           dc.b $02
[000b22f6]                           dc.w $0800
[000b22f8]                           dc.b $00
[000b22f9]                           dc.b $00
[000b22fa]                           dc.b $00
[000b22fb]                           dc.b $00
[000b22fc]                           dc.b $00
[000b22fd]                           dc.b $00
[000b22fe]                           dc.b $00
[000b22ff]                           dc.b $00
_62_ED_PICTURE:
[000b2300]                           dc.b $00
[000b2301]                           dc.b $40
[000b2302]                           dc.w $ffff
[000b2304]                           dc.w $ffff
[000b2306]                           dc.b $00
[000b2307]                           dc.b $18
[000b2308]                           dc.b $00
[000b2309]                           dc.b $05
[000b230a]                           dc.b $00
[000b230b]                           dc.b $00
[000b230c] 000b1b50                  dc.l USER_030
[000b2310]                           dc.b $00
[000b2311]                           dc.b $16
[000b2312]                           dc.b $00
[000b2313]                           dc.b $01
[000b2314]                           dc.b $00
[000b2315]                           dc.b $03
[000b2316]                           dc.b $00
[000b2317]                           dc.b $01
_62aED_PICTURE:
[000b2318] 00026098                  dc.l edpi_pattern
[000b231c]                           dc.b $00
[000b231d]                           dc.b $00
[000b231e]                           dc.b $00
[000b231f]                           dc.b $00
[000b2320]                           dc.w $8000
[000b2322]                           dc.b $00
[000b2323]                           dc.b $00
[000b2324]                           dc.b $00
[000b2325]                           dc.b $02
[000b2326]                           dc.w $0900
[000b2328]                           dc.b $00
[000b2329]                           dc.b $00
[000b232a]                           dc.b $00
[000b232b]                           dc.b $00
[000b232c]                           dc.b $00
[000b232d]                           dc.b $00
[000b232e]                           dc.b $00
[000b232f]                           dc.b $00
_64_ED_PICTURE:
[000b2330]                           dc.b $00
[000b2331]                           dc.b $42
[000b2332]                           dc.w $ffff
[000b2334]                           dc.w $ffff
[000b2336]                           dc.b $00
[000b2337]                           dc.b $18
[000b2338]                           dc.b $00
[000b2339]                           dc.b $05
[000b233a]                           dc.b $00
[000b233b]                           dc.b $00
[000b233c] 000b1b90                  dc.l USER_032
[000b2340]                           dc.b $00
[000b2341]                           dc.b $16
[000b2342]                           dc.b $00
[000b2343]                           dc.b $02
[000b2344]                           dc.b $00
[000b2345]                           dc.b $03
[000b2346]                           dc.b $00
[000b2347]                           dc.b $01
_64aED_PICTURE:
[000b2348] 00026098                  dc.l edpi_pattern
[000b234c]                           dc.b $00
[000b234d]                           dc.b $00
[000b234e]                           dc.b $00
[000b234f]                           dc.b $00
[000b2350]                           dc.w $8000
[000b2352]                           dc.b $00
[000b2353]                           dc.b $00
[000b2354]                           dc.b $00
[000b2355]                           dc.b $02
[000b2356]                           dc.w $0a00
[000b2358]                           dc.b $00
[000b2359]                           dc.b $00
[000b235a]                           dc.b $00
[000b235b]                           dc.b $00
[000b235c]                           dc.b $00
[000b235d]                           dc.b $00
[000b235e]                           dc.b $00
[000b235f]                           dc.b $00
_66_ED_PICTURE:
[000b2360]                           dc.b $00
[000b2361]                           dc.b $44
[000b2362]                           dc.w $ffff
[000b2364]                           dc.w $ffff
[000b2366]                           dc.b $00
[000b2367]                           dc.b $18
[000b2368]                           dc.b $00
[000b2369]                           dc.b $05
[000b236a]                           dc.b $00
[000b236b]                           dc.b $00
[000b236c] 000b1b70                  dc.l USER_031
[000b2370]                           dc.b $00
[000b2371]                           dc.b $16
[000b2372]                           dc.b $00
[000b2373]                           dc.b $03
[000b2374]                           dc.b $00
[000b2375]                           dc.b $03
[000b2376]                           dc.b $00
[000b2377]                           dc.b $01
_66aED_PICTURE:
[000b2378] 00026098                  dc.l edpi_pattern
[000b237c]                           dc.b $00
[000b237d]                           dc.b $00
[000b237e]                           dc.b $00
[000b237f]                           dc.b $00
[000b2380]                           dc.w $8000
[000b2382]                           dc.b $00
[000b2383]                           dc.b $00
[000b2384]                           dc.b $00
[000b2385]                           dc.b $02
[000b2386]                           dc.w $0b00
[000b2388]                           dc.b $00
[000b2389]                           dc.b $00
[000b238a]                           dc.b $00
[000b238b]                           dc.b $00
[000b238c]                           dc.b $00
[000b238d]                           dc.b $00
[000b238e]                           dc.b $00
[000b238f]                           dc.b $00
_68_ED_PICTURE:
[000b2390]                           dc.b $00
[000b2391]                           dc.b $46
[000b2392]                           dc.w $ffff
[000b2394]                           dc.w $ffff
[000b2396]                           dc.b $00
[000b2397]                           dc.b $18
[000b2398]                           dc.b $00
[000b2399]                           dc.b $05
[000b239a]                           dc.b $00
[000b239b]                           dc.b $00
[000b239c] 000b1bb0                  dc.l USER_033
[000b23a0]                           dc.b $00
[000b23a1]                           dc.b $19
[000b23a2]                           dc.b $00
[000b23a3]                           dc.b $01
[000b23a4]                           dc.b $00
[000b23a5]                           dc.b $03
[000b23a6]                           dc.b $00
[000b23a7]                           dc.b $01
_68aED_PICTURE:
[000b23a8] 00026098                  dc.l edpi_pattern
[000b23ac]                           dc.b $00
[000b23ad]                           dc.b $00
[000b23ae]                           dc.b $00
[000b23af]                           dc.b $00
[000b23b0]                           dc.w $8000
[000b23b2]                           dc.b $00
[000b23b3]                           dc.b $00
[000b23b4]                           dc.b $00
[000b23b5]                           dc.b $02
[000b23b6]                           dc.w $0c00
[000b23b8]                           dc.b $00
[000b23b9]                           dc.b $00
[000b23ba]                           dc.b $00
[000b23bb]                           dc.b $00
[000b23bc]                           dc.b $00
[000b23bd]                           dc.b $00
[000b23be]                           dc.b $00
[000b23bf]                           dc.b $00
_70_ED_PICTURE:
[000b23c0]                           dc.b $00
[000b23c1]                           dc.b $48
[000b23c2]                           dc.w $ffff
[000b23c4]                           dc.w $ffff
[000b23c6]                           dc.b $00
[000b23c7]                           dc.b $18
[000b23c8]                           dc.b $00
[000b23c9]                           dc.b $05
[000b23ca]                           dc.b $00
[000b23cb]                           dc.b $00
[000b23cc] 000b1bd0                  dc.l USER_034
[000b23d0]                           dc.b $00
[000b23d1]                           dc.b $19
[000b23d2]                           dc.b $00
[000b23d3]                           dc.b $02
[000b23d4]                           dc.b $00
[000b23d5]                           dc.b $03
[000b23d6]                           dc.b $00
[000b23d7]                           dc.b $01
_70aED_PICTURE:
[000b23d8] 00026098                  dc.l edpi_pattern
[000b23dc]                           dc.b $00
[000b23dd]                           dc.b $00
[000b23de]                           dc.b $00
[000b23df]                           dc.b $00
[000b23e0]                           dc.w $8000
[000b23e2]                           dc.b $00
[000b23e3]                           dc.b $00
[000b23e4]                           dc.b $00
[000b23e5]                           dc.b $02
[000b23e6]                           dc.w $0d00
[000b23e8]                           dc.b $00
[000b23e9]                           dc.b $00
[000b23ea]                           dc.b $00
[000b23eb]                           dc.b $00
[000b23ec]                           dc.b $00
[000b23ed]                           dc.b $00
[000b23ee]                           dc.b $00
[000b23ef]                           dc.b $00
_72_ED_PICTURE:
[000b23f0]                           dc.b $00
[000b23f1]                           dc.b $4a
[000b23f2]                           dc.w $ffff
[000b23f4]                           dc.w $ffff
[000b23f6]                           dc.b $00
[000b23f7]                           dc.b $18
[000b23f8]                           dc.b $00
[000b23f9]                           dc.b $05
[000b23fa]                           dc.b $00
[000b23fb]                           dc.b $00
[000b23fc] 000b1bf0                  dc.l USER_035
[000b2400]                           dc.b $00
[000b2401]                           dc.b $19
[000b2402]                           dc.b $00
[000b2403]                           dc.b $03
[000b2404]                           dc.b $00
[000b2405]                           dc.b $03
[000b2406]                           dc.b $00
[000b2407]                           dc.b $01
_72aED_PICTURE:
[000b2408] 00026098                  dc.l edpi_pattern
[000b240c]                           dc.b $00
[000b240d]                           dc.b $00
[000b240e]                           dc.b $00
[000b240f]                           dc.b $00
[000b2410]                           dc.w $8000
[000b2412]                           dc.b $00
[000b2413]                           dc.b $00
[000b2414]                           dc.b $00
[000b2415]                           dc.b $02
[000b2416]                           dc.w $0e00
[000b2418]                           dc.b $00
[000b2419]                           dc.b $00
[000b241a]                           dc.b $00
[000b241b]                           dc.b $00
[000b241c]                           dc.b $00
[000b241d]                           dc.b $00
[000b241e]                           dc.b $00
[000b241f]                           dc.b $00
_74_ED_PICTURE:
[000b2420]                           dc.b $00
[000b2421]                           dc.b $4c
[000b2422]                           dc.w $ffff
[000b2424]                           dc.w $ffff
[000b2426]                           dc.b $00
[000b2427]                           dc.b $18
[000b2428]                           dc.b $00
[000b2429]                           dc.b $05
[000b242a]                           dc.b $00
[000b242b]                           dc.b $00
[000b242c] 000b1c10                  dc.l USER_036
[000b2430]                           dc.b $00
[000b2431]                           dc.b $1c
[000b2432]                           dc.b $00
[000b2433]                           dc.b $01
[000b2434]                           dc.b $00
[000b2435]                           dc.b $03
[000b2436]                           dc.b $00
[000b2437]                           dc.b $01
_74aED_PICTURE:
[000b2438] 00026098                  dc.l edpi_pattern
[000b243c]                           dc.b $00
[000b243d]                           dc.b $00
[000b243e]                           dc.b $00
[000b243f]                           dc.b $00
[000b2440]                           dc.w $8000
[000b2442]                           dc.b $00
[000b2443]                           dc.b $00
[000b2444]                           dc.b $00
[000b2445]                           dc.b $02
[000b2446]                           dc.w $0f00
[000b2448]                           dc.b $00
[000b2449]                           dc.b $00
[000b244a]                           dc.b $00
[000b244b]                           dc.b $00
[000b244c]                           dc.b $00
[000b244d]                           dc.b $00
[000b244e]                           dc.b $00
[000b244f]                           dc.b $00
_76_ED_PICTURE:
[000b2450]                           dc.b $00
[000b2451]                           dc.b $4e
[000b2452]                           dc.w $ffff
[000b2454]                           dc.w $ffff
[000b2456]                           dc.b $00
[000b2457]                           dc.b $18
[000b2458]                           dc.b $00
[000b2459]                           dc.b $05
[000b245a]                           dc.b $00
[000b245b]                           dc.b $00
[000b245c] 000b1c30                  dc.l USER_037
[000b2460]                           dc.b $00
[000b2461]                           dc.b $1c
[000b2462]                           dc.b $00
[000b2463]                           dc.b $02
[000b2464]                           dc.b $00
[000b2465]                           dc.b $03
[000b2466]                           dc.b $00
[000b2467]                           dc.b $01
_76aED_PICTURE:
[000b2468] 00026098                  dc.l edpi_pattern
[000b246c]                           dc.b $00
[000b246d]                           dc.b $00
[000b246e]                           dc.b $00
[000b246f]                           dc.b $00
[000b2470]                           dc.w $8000
[000b2472]                           dc.b $00
[000b2473]                           dc.b $00
[000b2474]                           dc.b $00
[000b2475]                           dc.b $02
[000b2476]                           dc.w $1000
[000b2478]                           dc.b $00
[000b2479]                           dc.b $00
[000b247a]                           dc.b $00
[000b247b]                           dc.b $00
[000b247c]                           dc.b $00
[000b247d]                           dc.b $00
[000b247e]                           dc.b $00
[000b247f]                           dc.b $00
_78_ED_PICTURE:
[000b2480]                           dc.b $00
[000b2481]                           dc.b $50
[000b2482]                           dc.w $ffff
[000b2484]                           dc.w $ffff
[000b2486]                           dc.b $00
[000b2487]                           dc.b $18
[000b2488]                           dc.b $00
[000b2489]                           dc.b $05
[000b248a]                           dc.b $00
[000b248b]                           dc.b $00
[000b248c] 000b1c50                  dc.l USER_038
[000b2490]                           dc.b $00
[000b2491]                           dc.b $1c
[000b2492]                           dc.b $00
[000b2493]                           dc.b $03
[000b2494]                           dc.b $00
[000b2495]                           dc.b $03
[000b2496]                           dc.b $00
[000b2497]                           dc.b $01
_78aED_PICTURE:
[000b2498] 00026098                  dc.l edpi_pattern
[000b249c]                           dc.b $00
[000b249d]                           dc.b $00
[000b249e]                           dc.b $00
[000b249f]                           dc.b $00
[000b24a0]                           dc.w $8000
[000b24a2]                           dc.b $00
[000b24a3]                           dc.b $00
[000b24a4]                           dc.b $00
[000b24a5]                           dc.b $02
[000b24a6]                           dc.w $1100
[000b24a8]                           dc.b $00
[000b24a9]                           dc.b $00
[000b24aa]                           dc.b $00
[000b24ab]                           dc.b $00
[000b24ac]                           dc.b $00
[000b24ad]                           dc.b $00
[000b24ae]                           dc.b $00
[000b24af]                           dc.b $00
_80_ED_PICTURE:
[000b24b0]                           dc.b $00
[000b24b1]                           dc.b $52
[000b24b2]                           dc.w $ffff
[000b24b4]                           dc.w $ffff
[000b24b6]                           dc.b $00
[000b24b7]                           dc.b $18
[000b24b8]                           dc.b $00
[000b24b9]                           dc.b $05
[000b24ba]                           dc.b $00
[000b24bb]                           dc.b $00
[000b24bc] 000b1c70                  dc.l USER_039
[000b24c0]                           dc.b $00
[000b24c1]                           dc.b $1f
[000b24c2]                           dc.b $00
[000b24c3]                           dc.b $01
[000b24c4]                           dc.b $00
[000b24c5]                           dc.b $03
[000b24c6]                           dc.b $00
[000b24c7]                           dc.b $01
_80aED_PICTURE:
[000b24c8] 00026098                  dc.l edpi_pattern
[000b24cc]                           dc.b $00
[000b24cd]                           dc.b $00
[000b24ce]                           dc.b $00
[000b24cf]                           dc.b $00
[000b24d0]                           dc.w $8000
[000b24d2]                           dc.b $00
[000b24d3]                           dc.b $00
[000b24d4]                           dc.b $00
[000b24d5]                           dc.b $02
[000b24d6]                           dc.w $1200
[000b24d8]                           dc.b $00
[000b24d9]                           dc.b $00
[000b24da]                           dc.b $00
[000b24db]                           dc.b $00
[000b24dc]                           dc.b $00
[000b24dd]                           dc.b $00
[000b24de]                           dc.b $00
[000b24df]                           dc.b $00
_82_ED_PICTURE:
[000b24e0]                           dc.b $00
[000b24e1]                           dc.b $54
[000b24e2]                           dc.w $ffff
[000b24e4]                           dc.w $ffff
[000b24e6]                           dc.b $00
[000b24e7]                           dc.b $18
[000b24e8]                           dc.b $00
[000b24e9]                           dc.b $05
[000b24ea]                           dc.b $00
[000b24eb]                           dc.b $00
[000b24ec] 000b1c90                  dc.l USER_040
[000b24f0]                           dc.b $00
[000b24f1]                           dc.b $1f
[000b24f2]                           dc.b $00
[000b24f3]                           dc.b $02
[000b24f4]                           dc.b $00
[000b24f5]                           dc.b $03
[000b24f6]                           dc.b $00
[000b24f7]                           dc.b $01
_82aED_PICTURE:
[000b24f8] 00026098                  dc.l edpi_pattern
[000b24fc]                           dc.b $00
[000b24fd]                           dc.b $00
[000b24fe]                           dc.b $00
[000b24ff]                           dc.b $00
[000b2500]                           dc.w $8000
[000b2502]                           dc.b $00
[000b2503]                           dc.b $00
[000b2504]                           dc.b $00
[000b2505]                           dc.b $02
[000b2506]                           dc.w $1300
[000b2508]                           dc.b $00
[000b2509]                           dc.b $00
[000b250a]                           dc.b $00
[000b250b]                           dc.b $00
[000b250c]                           dc.b $00
[000b250d]                           dc.b $00
[000b250e]                           dc.b $00
[000b250f]                           dc.b $00
_84_ED_PICTURE:
[000b2510]                           dc.b $00
[000b2511]                           dc.b $56
[000b2512]                           dc.w $ffff
[000b2514]                           dc.w $ffff
[000b2516]                           dc.b $00
[000b2517]                           dc.b $18
[000b2518]                           dc.b $00
[000b2519]                           dc.b $05
[000b251a]                           dc.b $00
[000b251b]                           dc.b $00
[000b251c] 000b1cb0                  dc.l USER_041
[000b2520]                           dc.b $00
[000b2521]                           dc.b $1f
[000b2522]                           dc.b $00
[000b2523]                           dc.b $03
[000b2524]                           dc.b $00
[000b2525]                           dc.b $03
[000b2526]                           dc.b $00
[000b2527]                           dc.b $01
_84aED_PICTURE:
[000b2528] 00026098                  dc.l edpi_pattern
[000b252c]                           dc.b $00
[000b252d]                           dc.b $00
[000b252e]                           dc.b $00
[000b252f]                           dc.b $00
[000b2530]                           dc.w $8000
[000b2532]                           dc.b $00
[000b2533]                           dc.b $00
[000b2534]                           dc.b $00
[000b2535]                           dc.b $02
[000b2536]                           dc.w $1400
[000b2538]                           dc.b $00
[000b2539]                           dc.b $00
[000b253a]                           dc.b $00
[000b253b]                           dc.b $00
[000b253c]                           dc.b $00
[000b253d]                           dc.b $00
[000b253e]                           dc.b $00
[000b253f]                           dc.b $00
_86_ED_PICTURE:
[000b2540]                           dc.b $00
[000b2541]                           dc.b $58
[000b2542]                           dc.w $ffff
[000b2544]                           dc.w $ffff
[000b2546]                           dc.b $00
[000b2547]                           dc.b $18
[000b2548]                           dc.b $00
[000b2549]                           dc.b $05
[000b254a]                           dc.b $00
[000b254b]                           dc.b $00
[000b254c] 000b1cd0                  dc.l USER_042
[000b2550]                           dc.b $00
[000b2551]                           dc.b $22
[000b2552]                           dc.b $00
[000b2553]                           dc.b $01
[000b2554]                           dc.b $00
[000b2555]                           dc.b $03
[000b2556]                           dc.b $00
[000b2557]                           dc.b $01
_86aED_PICTURE:
[000b2558] 00026098                  dc.l edpi_pattern
[000b255c]                           dc.b $00
[000b255d]                           dc.b $00
[000b255e]                           dc.b $00
[000b255f]                           dc.b $00
[000b2560]                           dc.w $8000
[000b2562]                           dc.b $00
[000b2563]                           dc.b $00
[000b2564]                           dc.b $00
[000b2565]                           dc.b $02
[000b2566]                           dc.w $1500
[000b2568]                           dc.b $00
[000b2569]                           dc.b $00
[000b256a]                           dc.b $00
[000b256b]                           dc.b $00
[000b256c]                           dc.b $00
[000b256d]                           dc.b $00
[000b256e]                           dc.b $00
[000b256f]                           dc.b $00
_88_ED_PICTURE:
[000b2570]                           dc.b $00
[000b2571]                           dc.b $5a
[000b2572]                           dc.w $ffff
[000b2574]                           dc.w $ffff
[000b2576]                           dc.b $00
[000b2577]                           dc.b $18
[000b2578]                           dc.b $00
[000b2579]                           dc.b $05
[000b257a]                           dc.b $00
[000b257b]                           dc.b $00
[000b257c] 000b1cf0                  dc.l USER_043
[000b2580]                           dc.b $00
[000b2581]                           dc.b $22
[000b2582]                           dc.b $00
[000b2583]                           dc.b $02
[000b2584]                           dc.b $00
[000b2585]                           dc.b $03
[000b2586]                           dc.b $00
[000b2587]                           dc.b $01
_88aED_PICTURE:
[000b2588] 00026098                  dc.l edpi_pattern
[000b258c]                           dc.b $00
[000b258d]                           dc.b $00
[000b258e]                           dc.b $00
[000b258f]                           dc.b $00
[000b2590]                           dc.w $8000
[000b2592]                           dc.b $00
[000b2593]                           dc.b $00
[000b2594]                           dc.b $00
[000b2595]                           dc.b $02
[000b2596]                           dc.w $1600
[000b2598]                           dc.b $00
[000b2599]                           dc.b $00
[000b259a]                           dc.b $00
[000b259b]                           dc.b $00
[000b259c]                           dc.b $00
[000b259d]                           dc.b $00
[000b259e]                           dc.b $00
[000b259f]                           dc.b $00
_90_ED_PICTURE:
[000b25a0]                           dc.b $00
[000b25a1]                           dc.b $13
[000b25a2]                           dc.w $ffff
[000b25a4]                           dc.w $ffff
[000b25a6]                           dc.b $00
[000b25a7]                           dc.b $18
[000b25a8]                           dc.b $00
[000b25a9]                           dc.b $05
[000b25aa]                           dc.b $00
[000b25ab]                           dc.b $00
[000b25ac] 000b1d10                  dc.l USER_044
[000b25b0]                           dc.b $00
[000b25b1]                           dc.b $22
[000b25b2]                           dc.b $00
[000b25b3]                           dc.b $03
[000b25b4]                           dc.b $00
[000b25b5]                           dc.b $03
[000b25b6]                           dc.b $00
[000b25b7]                           dc.b $01
_90aED_PICTURE:
[000b25b8] 00026098                  dc.l edpi_pattern
[000b25bc]                           dc.b $00
[000b25bd]                           dc.b $00
[000b25be]                           dc.b $00
[000b25bf]                           dc.b $00
[000b25c0]                           dc.w $8020
[000b25c2]                           dc.b $00
[000b25c3]                           dc.b $00
[000b25c4]                           dc.b $00
[000b25c5]                           dc.b $02
[000b25c6]                           dc.w $1700
[000b25c8]                           dc.b $00
[000b25c9]                           dc.b $00
[000b25ca]                           dc.b $00
[000b25cb]                           dc.b $00
[000b25cc]                           dc.b $00
[000b25cd]                           dc.b $00
[000b25ce]                           dc.b $00
[000b25cf]                           dc.b $00
picture:
[000b25d0] 0005ca2a                  dc.l A_picture
[000b25d4]                           dc.b $00
[000b25d5]                           dc.b $00
[000b25d6]                           dc.b $00
[000b25d7]                           dc.b $00
[000b25d8] 0005cf28                  dc.l Auo_picture
[000b25dc] 000b1694                  dc.l PICDATA
[000b25e0]                           dc.b $00
[000b25e1]                           dc.b $00
[000b25e2]                           dc.b $00
[000b25e3]                           dc.b $00
[000b25e4]                           dc.b $00
[000b25e5]                           dc.b $00
[000b25e6]                           dc.b $00
[000b25e7]                           dc.b $00
[000b25e8]                           dc.b $00
[000b25e9]                           dc.b $00
[000b25ea]                           dc.b $00
[000b25eb]                           dc.b $00
[000b25ec]                           dc.b $00
[000b25ed]                           dc.b $00
[000b25ee]                           dc.b $00
[000b25ef]                           dc.b $00
visual:
[000b25f0]                           dc.w $ffff
[000b25f2]                           dc.w $ffff
[000b25f4]                           dc.w $ffff
[000b25f6]                           dc.b $00
[000b25f7]                           dc.b $18
[000b25f8]                           dc.b $00
[000b25f9]                           dc.b $00
[000b25fa]                           dc.b $00
[000b25fb]                           dc.b $00
[000b25fc] 000b25d0                  dc.l picture
[000b2600]                           dc.b $00
[000b2601]                           dc.b $00
[000b2602]                           dc.b $00
[000b2603]                           dc.b $00
[000b2604]                           dc.b $00
[000b2605]                           dc.b $06
[000b2606]                           dc.b $00
[000b2607]                           dc.b $02
logical:
[000b2608]                           dc.w $ffff
[000b260a]                           dc.w $ffff
[000b260c]                           dc.w $ffff
[000b260e]                           dc.b $00
[000b260f]                           dc.b $18
[000b2610]                           dc.b $00
[000b2611]                           dc.b $40
[000b2612]                           dc.b $00
[000b2613]                           dc.b $00
[000b2614]                           dc.b $00
[000b2615]                           dc.b $00
[000b2616]                           dc.b $00
[000b2617]                           dc.b $00
[000b2618]                           dc.b $00
[000b2619]                           dc.b $00
[000b261a]                           dc.b $00
[000b261b]                           dc.b $00
[000b261c]                           dc.b $00
[000b261d]                           dc.b $06
[000b261e]                           dc.b $00
[000b261f]                           dc.b $02
aud:
[000b2620] 000b269e                  dc.l $000b269e ; no symbol found
[000b2624] 000b26a3                  dc.l $000b26a3 ; no symbol found
[000b2628]                           dc.b $00
[000b2629]                           dc.b $03
[000b262a] 000b1694                  dc.l PICDATA
[000b262e]                           dc.b $00
[000b262f]                           dc.b $00
[000b2630]                           dc.b $00
[000b2631]                           dc.b $dc
[000b2632]                           dc.b $00
[000b2633]                           dc.b $00
[000b2634]                           dc.b $00
[000b2635]                           dc.b $00
[000b2636]                           dc.b $00
[000b2637]                           dc.b $00
[000b2638]                           dc.b $00
[000b2639]                           dc.b $00
[000b263a]                           dc.b $00
[000b263b]                           dc.b $00
[000b263c]                           dc.b $00
[000b263d]                           dc.b $00
[000b263e]                           dc.b $00
[000b263f]                           dc.b $00
[000b2640]                           dc.b $00
[000b2641]                           dc.b $00
[000b2642]                           dc.b $00
[000b2643]                           dc.b $00
[000b2644]                           dc.b $00
[000b2645]                           dc.b $00
[000b2646]                           dc.b $00
[000b2647]                           dc.b $00
[000b2648]                           dc.b $00
[000b2649]                           dc.b $00
[000b264a]                           dc.b $00
[000b264b]                           dc.b $00
[000b264c]                           dc.b $00
[000b264d]                           dc.b $00
data:
[000b264e]                           dc.b 'A_picture',0
[000b2658]                           dc.b $00
[000b2659]                           dc.b $00
[000b265a]                           dc.b $00
[000b265b]                           dc.b $00
[000b265c]                           dc.b $00
[000b265d]                           dc.b $00
[000b265e]                           dc.b $00
[000b265f]                           dc.b $00
[000b2660]                           dc.b $00
[000b2661]                           dc.b $00
[000b2662]                           dc.b $00
[000b2663]                           dc.b $00
[000b2664]                           dc.b $00
[000b2665]                           dc.b $00
[000b2666]                           dc.b $00
[000b2667]                           dc.b $00
[000b2668]                           dc.b $00
[000b2669]                           dc.b $00
[000b266a]                           dc.b $00
[000b266b]                           dc.b $00
[000b266c]                           dc.b $00
[000b266d]                           dc.b $00
[000b266e] 00026172                  dc.l object_tree
[000b2672] 00026258                  dc.l test_it
[000b2676] 000262b4                  dc.l ok
[000b267a] 00049b7c                  dc.l Aob_delete
[000b267e] 000b25f0                  dc.l visual
[000b2682] 000b2608                  dc.l logical
[000b2686] 000b2620                  dc.l aud
[000b268a] 00026142                  dc.l minsize
[000b268e]                           dc.b $00
[000b268f]                           dc.b $00
[000b2690]                           dc.b $00
[000b2691]                           dc.b $00
[000b2692] 000b136c                  dc.l title
[000b2696] 000b1359                  dc.l help_title
[000b269a]                           dc.b $00
[000b269b]                           dc.b $00
[000b269c]                           dc.b $00
[000b269d]                           dc.b $00
[000b269e]                           dc.b '0x0L',0
[000b26a3]                           dc.b 'Auo_picture',0
[000b26af]                           dc.b '0x%lxL',0

	.bss

parm: ds.b 32
