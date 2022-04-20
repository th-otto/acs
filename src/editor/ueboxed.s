
init_boxed:
[0002503e] 2f0a                      move.l     a2,-(a7)
[00025040] 2f0b                      move.l     a3,-(a7)
[00025042] 2448                      movea.l    a0,a2
[00025044] 43f9 000b 09a6            lea.l      data,a1
[0002504a] 303c 2329                 move.w     #$2329,d0
[0002504e] 266a 0004                 movea.l    4(a2),a3
[00025052] 4e93                      jsr        (a3)
[00025054] 265f                      movea.l    (a7)+,a3
[00025056] 245f                      movea.l    (a7)+,a2
[00025058] 4e75                      rts

minsize:
[0002505a] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0002505e] 2448                      movea.l    a0,a2
[00025060] 2649                      movea.l    a1,a3
[00025062] 202a 000c                 move.l     12(a2),d0
[00025066] 6716                      beq.s      minsize_1
[00025068] 2040                      movea.l    d0,a0
[0002506a] 4eb9 0007 69b0            jsr        strlen
[00025070] 2600                      move.l     d0,d3
[00025072] 2079 0010 1f12            movea.l    ACSblk,a0
[00025078] c7e8 0012                 muls.w     18(a0),d3
[0002507c] 600a                      bra.s      minsize_2
minsize_1:
[0002507e] 2079 0010 1f12            movea.l    ACSblk,a0
[00025084] 3628 0012                 move.w     18(a0),d3
minsize_2:
[00025088] 3683                      move.w     d3,(a3)
[0002508a] 2079 0010 1f12            movea.l    ACSblk,a0
[00025090] 226f 0010                 movea.l    16(a7),a1
[00025094] 32a8 0014                 move.w     20(a0),(a1)
[00025098] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0002509c] 4e75                      rts

object_tree:
[0002509e] 48e7 003e                 movem.l    a2-a6,-(a7)
[000250a2] 4fef fff2                 lea.l      -14(a7),a7
[000250a6] 2a48                      movea.l    a0,a5
[000250a8] 2649                      movea.l    a1,a3
[000250aa] 41f9 000b 0374            lea.l      ED_BOXED,a0
[000250b0] 4eb9 0004 9a5c            jsr        Aob_create
[000250b6] 2448                      movea.l    a0,a2
[000250b8] 200a                      move.l     a2,d0
[000250ba] 6700 02c6                 beq        object_tree_1
[000250be] 49ea 0030                 lea.l      48(a2),a4
[000250c2] 7216                      moveq.l    #22,d1
[000250c4] c26b 0008                 and.w      8(a3),d1
[000250c8] 836c 0008                 or.w       d1,8(a4)
[000250cc] 723f                      moveq.l    #63,d1
[000250ce] c26b 000a                 and.w      10(a3),d1
[000250d2] 836c 000a                 or.w       d1,10(a4)
[000250d6] 266c 000c                 movea.l    12(a4),a3
[000250da] 4857                      pea.l      (a7)
[000250dc] 43f9 000b 0a1a            lea.l      $000B0A1A,a1
[000250e2] 2055                      movea.l    (a5),a0
[000250e4] 4eb9 0007 594a            jsr        sscanf
[000250ea] 584f                      addq.w     #4,a7
[000250ec] 2757 0004                 move.l     (a7),4(a3)
[000250f0] 4deb 0004                 lea.l      4(a3),a6
[000250f4] 7016                      moveq.l    #22,d0
[000250f6] 224a                      movea.l    a2,a1
[000250f8] 2079 0010 1f12            movea.l    ACSblk,a0
[000250fe] 2068 0258                 movea.l    600(a0),a0
[00025102] 4eb9 0002 f23c            jsr        oe_beself
[00025108] 7008                      moveq.l    #8,d0
[0002510a] 224a                      movea.l    a2,a1
[0002510c] 2079 0010 1f12            movea.l    ACSblk,a0
[00025112] 2068 0258                 movea.l    600(a0),a0
[00025116] 4eb9 0002 f23c            jsr        oe_beself
[0002511c] 7002                      moveq.l    #2,d0
[0002511e] 224a                      movea.l    a2,a1
[00025120] 2079 0010 1f12            movea.l    ACSblk,a0
[00025126] 2068 0258                 movea.l    600(a0),a0
[0002512a] 4eb9 0002 f23c            jsr        oe_beself
[00025130] 7035                      moveq.l    #53,d0
[00025132] 224a                      movea.l    a2,a1
[00025134] 2079 0010 1f12            movea.l    ACSblk,a0
[0002513a] 2068 0258                 movea.l    600(a0),a0
[0002513e] 4eb9 0002 f23c            jsr        oe_beself
[00025144] 7036                      moveq.l    #54,d0
[00025146] 224a                      movea.l    a2,a1
[00025148] 2079 0010 1f12            movea.l    ACSblk,a0
[0002514e] 2068 0258                 movea.l    600(a0),a0
[00025152] 4eb9 0002 f23c            jsr        oe_beself
[00025158] 286a 00cc                 movea.l    204(a2),a4
[0002515c] 584c                      addq.w     #4,a4
[0002515e] 3016                      move.w     (a6),d0
[00025160] e648                      lsr.w      #3,d0
[00025162] c07c 001f                 and.w      #$001F,d0
[00025166] 0254 ff07                 andi.w     #$FF07,(a4)
[0002516a] c07c 001f                 and.w      #$001F,d0
[0002516e] e748                      lsl.w      #3,d0
[00025170] 8154                      or.w       d0,(a4)
[00025172] 0c6d 0002 0008            cmpi.w     #$0002,8(a5)
[00025178] 661e                      bne.s      object_tree_2
[0002517a] 226d 000a                 movea.l    10(a5),a1
[0002517e] 7002                      moveq.l    #2,d0
[00025180] 204a                      movea.l    a2,a0
[00025182] 4eb9 0004 afe0            jsr        Aob_puttext
[00025188] 226d 000a                 movea.l    10(a5),a1
[0002518c] 7008                      moveq.l    #8,d0
[0002518e] 204a                      movea.l    a2,a0
[00025190] 4eb9 0004 afe0            jsr        Aob_puttext
[00025196] 6020                      bra.s      object_tree_3
object_tree_2:
[00025198] 43f9 000b 09f6            lea.l      $000B09F6,a1
[0002519e] 7002                      moveq.l    #2,d0
[000251a0] 204a                      movea.l    a2,a0
[000251a2] 4eb9 0004 afe0            jsr        Aob_puttext
[000251a8] 43f9 000b 09f6            lea.l      $000B09F6,a1
[000251ae] 7008                      moveq.l    #8,d0
[000251b0] 204a                      movea.l    a2,a0
[000251b2] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_3:
[000251b8] 206a 0504                 movea.l    1284(a2),a0
[000251bc] 2768 000c 0018            move.l     12(a0),24(a3)
[000251c2] 206d 0026                 movea.l    38(a5),a0
[000251c6] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000251cc] 4a40                      tst.w      d0
[000251ce] 6712                      beq.s      object_tree_4
[000251d0] 43f9 000b 09f6            lea.l      $000B09F6,a1
[000251d6] 7035                      moveq.l    #53,d0
[000251d8] 204a                      movea.l    a2,a0
[000251da] 4eb9 0004 afe0            jsr        Aob_puttext
[000251e0] 600e                      bra.s      object_tree_5
object_tree_4:
[000251e2] 226d 0026                 movea.l    38(a5),a1
[000251e6] 7035                      moveq.l    #53,d0
[000251e8] 204a                      movea.l    a2,a0
[000251ea] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_5:
[000251f0] 206a 051c                 movea.l    1308(a2),a0
[000251f4] 2768 000c 001c            move.l     12(a0),28(a3)
[000251fa] 206d 002a                 movea.l    42(a5),a0
[000251fe] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00025204] 4a40                      tst.w      d0
[00025206] 6712                      beq.s      object_tree_6
[00025208] 43f9 000b 09f6            lea.l      $000B09F6,a1
[0002520e] 7036                      moveq.l    #54,d0
[00025210] 204a                      movea.l    a2,a0
[00025212] 4eb9 0004 afe0            jsr        Aob_puttext
[00025218] 600e                      bra.s      object_tree_7
object_tree_6:
[0002521a] 226d 002a                 movea.l    42(a5),a1
[0002521e] 7036                      moveq.l    #54,d0
[00025220] 204a                      movea.l    a2,a0
[00025222] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_7:
[00025228] 302e 0002                 move.w     2(a6),d0
[0002522c] e848                      lsr.w      #4,d0
[0002522e] c07c 000f                 and.w      #$000F,d0
[00025232] 7200                      moveq.l    #0,d1
[00025234] 3200                      move.w     d0,d1
[00025236] e589                      lsl.l      #2,d1
[00025238] 41f9 000b e270            lea.l      colour_text,a0
[0002523e] 2270 1800                 movea.l    0(a0,d1.l),a1
[00025242] 204a                      movea.l    a2,a0
[00025244] 700f                      moveq.l    #15,d0
[00025246] 4eb9 0004 afe0            jsr        Aob_puttext
[0002524c] 302e 0002                 move.w     2(a6),d0
[00025250] e848                      lsr.w      #4,d0
[00025252] c07c 000f                 and.w      #$000F,d0
[00025256] 026a fff0 015e            andi.w     #$FFF0,350(a2)
[0002525c] c07c 000f                 and.w      #$000F,d0
[00025260] 816a 015e                 or.w       d0,350(a2)
[00025264] 3016                      move.w     (a6),d0
[00025266] e048                      lsr.w      #8,d0
[00025268] c07c 000f                 and.w      #$000F,d0
[0002526c] 7200                      moveq.l    #0,d1
[0002526e] 3200                      move.w     d0,d1
[00025270] e589                      lsl.l      #2,d1
[00025272] 41f9 000b e270            lea.l      colour_text,a0
[00025278] 2270 1800                 movea.l    0(a0,d1.l),a1
[0002527c] 204a                      movea.l    a2,a0
[0002527e] 702f                      moveq.l    #47,d0
[00025280] 4eb9 0004 afe0            jsr        Aob_puttext
[00025286] 3016                      move.w     (a6),d0
[00025288] e048                      lsr.w      #8,d0
[0002528a] c07c 000f                 and.w      #$000F,d0
[0002528e] 026a fff0 045e            andi.w     #$FFF0,1118(a2)
[00025294] c07c 000f                 and.w      #$000F,d0
[00025298] 816a 045e                 or.w       d0,1118(a2)
[0002529c] 3016                      move.w     (a6),d0
[0002529e] 720c                      moveq.l    #12,d1
[000252a0] e268                      lsr.w      d1,d0
[000252a2] c07c 000f                 and.w      #$000F,d0
[000252a6] 7400                      moveq.l    #0,d2
[000252a8] 3400                      move.w     d0,d2
[000252aa] e58a                      lsl.l      #2,d2
[000252ac] 41f9 000b e270            lea.l      colour_text,a0
[000252b2] 2270 2800                 movea.l    0(a0,d2.l),a1
[000252b6] 204a                      movea.l    a2,a0
[000252b8] 7028                      moveq.l    #40,d0
[000252ba] 4eb9 0004 afe0            jsr        Aob_puttext
[000252c0] 3016                      move.w     (a6),d0
[000252c2] 720c                      moveq.l    #12,d1
[000252c4] e268                      lsr.w      d1,d0
[000252c6] c07c 000f                 and.w      #$000F,d0
[000252ca] 026a fff0 03b6            andi.w     #$FFF0,950(a2)
[000252d0] c07c 000f                 and.w      #$000F,d0
[000252d4] 816a 03b6                 or.w       d0,950(a2)
[000252d8] 3016                      move.w     (a6),d0
[000252da] e648                      lsr.w      #3,d0
[000252dc] c07c 001f                 and.w      #$001F,d0
[000252e0] e548                      lsl.w      #2,d0
[000252e2] 41f9 000b 089c            lea.l      masklist,a0
[000252e8] 2270 0000                 movea.l    0(a0,d0.w),a1
[000252ec] 204a                      movea.l    a2,a0
[000252ee] 701e                      moveq.l    #30,d0
[000252f0] 4eb9 0004 afe0            jsr        Aob_puttext
[000252f6] 302e 0002                 move.w     2(a6),d0
[000252fa] e448                      lsr.w      #2,d0
[000252fc] c07c 0001                 and.w      #$0001,d0
[00025300] 6712                      beq.s      object_tree_8
[00025302] 43f9 000b d327            lea.l      SIZE_TEXT1,a1
[00025308] 204a                      movea.l    a2,a0
[0002530a] 7014                      moveq.l    #20,d0
[0002530c] 4eb9 0004 afe0            jsr        Aob_puttext
[00025312] 6010                      bra.s      object_tree_9
object_tree_8:
[00025314] 43f9 000b d322            lea.l      SIZE_TEXT0,a1
[0002531a] 7014                      moveq.l    #20,d0
[0002531c] 204a                      movea.l    a2,a0
[0002531e] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_9:
[00025324] 302e 0002                 move.w     2(a6),d0
[00025328] e048                      lsr.w      #8,d0
[0002532a] c07c 00ff                 and.w      #$00FF,d0
[0002532e] 3f00                      move.w     d0,-(a7)
[00025330] 43f9 000b 0a21            lea.l      $000B0A21,a1
[00025336] 41ef 0006                 lea.l      6(a7),a0
[0002533a] 4eb9 0007 5680            jsr        sprintf
[00025340] 544f                      addq.w     #2,a7
[00025342] 43ef 0004                 lea.l      4(a7),a1
[00025346] 7016                      moveq.l    #22,d0
[00025348] 204a                      movea.l    a2,a0
[0002534a] 4eb9 0004 afe0            jsr        Aob_puttext
[00025350] 302e 0002                 move.w     2(a6),d0
[00025354] e248                      lsr.w      #1,d0
[00025356] c07c 0001                 and.w      #$0001,d0
[0002535a] 6706                      beq.s      object_tree_10
[0002535c] 006a 0001 048a            ori.w      #$0001,1162(a2)
object_tree_10:
[00025362] 302e 0002                 move.w     2(a6),d0
[00025366] e648                      lsr.w      #3,d0
[00025368] c07c 0001                 and.w      #$0001,d0
[0002536c] 6706                      beq.s      object_tree_11
[0002536e] 006a 0001 024a            ori.w      #$0001,586(a2)
object_tree_11:
[00025374] 7001                      moveq.l    #1,d0
[00025376] c06e 0002                 and.w      2(a6),d0
[0002537a] 6706                      beq.s      object_tree_1
[0002537c] 006a 0001 027a            ori.w      #$0001,634(a2)
object_tree_1:
[00025382] 204a                      movea.l    a2,a0
[00025384] 4fef 000e                 lea.l      14(a7),a7
[00025388] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[0002538c] 4e75                      rts

test_it:
[0002538e] 2f0a                      move.l     a2,-(a7)
[00025390] 2f0b                      move.l     a3,-(a7)
[00025392] 2648                      movea.l    a0,a3
[00025394] 2449                      movea.l    a1,a2
[00025396] 22bc 0005 e9d2            move.l     #A_boxed,(a1)
[0002539c] 486a 0004                 pea.l      4(a2)
[000253a0] 43f9 000b 0a1a            lea.l      $000B0A1A,a1
[000253a6] 2050                      movea.l    (a0),a0
[000253a8] 4eb9 0007 594a            jsr        sscanf
[000253ae] 584f                      addq.w     #4,a7
[000253b0] 257c 0005 e010 0008       move.l     #Auo_boxed,8(a2)
[000253b8] 0c6b 0002 0008            cmpi.w     #$0002,8(a3)
[000253be] 6608                      bne.s      test_it_1
[000253c0] 256b 000a 000c            move.l     10(a3),12(a2)
[000253c6] 6004                      bra.s      test_it_2
test_it_1:
[000253c8] 42aa 000c                 clr.l      12(a2)
test_it_2:
[000253cc] 7000                      moveq.l    #0,d0
[000253ce] 2540 0014                 move.l     d0,20(a2)
[000253d2] 2540 0010                 move.l     d0,16(a2)
[000253d6] 206b 0026                 movea.l    38(a3),a0
[000253da] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000253e0] 4a40                      tst.w      d0
[000253e2] 6704                      beq.s      test_it_3
[000253e4] 91c8                      suba.l     a0,a0
[000253e6] 6004                      bra.s      test_it_4
test_it_3:
[000253e8] 206b 0026                 movea.l    38(a3),a0
test_it_4:
[000253ec] 2548 0018                 move.l     a0,24(a2)
[000253f0] 206b 002a                 movea.l    42(a3),a0
[000253f4] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000253fa] 4a40                      tst.w      d0
[000253fc] 6704                      beq.s      test_it_5
[000253fe] 91c8                      suba.l     a0,a0
[00025400] 6004                      bra.s      test_it_6
test_it_5:
[00025402] 206b 002a                 movea.l    42(a3),a0
test_it_6:
[00025406] 2548 001c                 move.l     a0,28(a2)
[0002540a] 265f                      movea.l    (a7)+,a3
[0002540c] 245f                      movea.l    (a7)+,a2
[0002540e] 4e75                      rts

abort:
[00025410] 2079 0010 1f12            movea.l    ACSblk,a0
[00025416] 2268 0258                 movea.l    600(a0),a1
[0002541a] 2069 0014                 movea.l    20(a1),a0
[0002541e] 2068 003c                 movea.l    60(a0),a0
[00025422] 42a8 0018                 clr.l      24(a0)
[00025426] 42a8 001c                 clr.l      28(a0)
[0002542a] 2079 000b 09e6            movea.l    $000B09E6,a0
[00025430] 2050                      movea.l    (a0),a0
[00025432] 4e90                      jsr        (a0)
[00025434] 4e75                      rts

ok:
[00025436] 2f0a                      move.l     a2,-(a7)
[00025438] 2f0b                      move.l     a3,-(a7)
[0002543a] 4fef ffcc                 lea.l      -52(a7),a7
[0002543e] 2079 0010 1f12            movea.l    ACSblk,a0
[00025444] 2268 0258                 movea.l    600(a0),a1
[00025448] 2669 0014                 movea.l    20(a1),a3
[0002544c] 206b 003c                 movea.l    60(a3),a0
[00025450] 45e8 0004                 lea.l      4(a0),a2
[00025454] 4857                      pea.l      (a7)
[00025456] 43f9 000b 0a21            lea.l      $000B0A21,a1
[0002545c] 7016                      moveq.l    #22,d0
[0002545e] 204b                      movea.l    a3,a0
[00025460] 4eb9 0004 b0b2            jsr        Aob_scanf
[00025466] 584f                      addq.w     #4,a7
[00025468] 0c57 00ff                 cmpi.w     #$00FF,(a7)
[0002546c] 6f04                      ble.s      ok_1
[0002546e] 3ebc 00ff                 move.w     #$00FF,(a7)
ok_1:
[00025472] 3017                      move.w     (a7),d0
[00025474] 026a 00ff 0002            andi.w     #$00FF,2(a2)
[0002547a] c07c 00ff                 and.w      #$00FF,d0
[0002547e] e148                      lsl.w      #8,d0
[00025480] 816a 0002                 or.w       d0,2(a2)
[00025484] 2f12                      move.l     (a2),-(a7)
[00025486] 43f9 000b 0a1a            lea.l      $000B0A1A,a1
[0002548c] 41f9 000f f4e0            lea.l      parm,a0
[00025492] 4eb9 0007 5680            jsr        sprintf
[00025498] 584f                      addq.w     #4,a7
[0002549a] 45ef 0002                 lea.l      2(a7),a2
[0002549e] 24bc 000f f4e0            move.l     #parm,(a2)
[000254a4] 257c 000b 0a0b 0004       move.l     #$000B0A0B,4(a2)
[000254ac] 43ef 0030                 lea.l      48(a7),a1
[000254b0] 7003                      moveq.l    #3,d0
[000254b2] 41eb 00c0                 lea.l      192(a3),a0
[000254b6] 4eb9 0005 e010            jsr        Auo_boxed
[000254bc] 206f 0030                 movea.l    48(a7),a0
[000254c0] 1010                      move.b     (a0),d0
[000254c2] 6720                      beq.s      ok_2
[000254c4] 4eb9 0007 69b0            jsr        strlen
[000254ca] 2079 0010 1f12            movea.l    ACSblk,a0
[000254d0] c1e8 0012                 muls.w     18(a0),d0
[000254d4] 3e80                      move.w     d0,(a7)
[000254d6] 357c 0002 0008            move.w     #$0002,8(a2)
[000254dc] 256f 0030 000a            move.l     48(a7),10(a2)
[000254e2] 6012                      bra.s      ok_3
ok_2:
[000254e4] 2079 0010 1f12            movea.l    ACSblk,a0
[000254ea] 3ea8 0012                 move.w     18(a0),(a7)
[000254ee] 426a 0008                 clr.w      8(a2)
[000254f2] 42aa 000a                 clr.l      10(a2)
ok_3:
[000254f6] 42aa 000e                 clr.l      14(a2)
[000254fa] 4240                      clr.w      d0
[000254fc] 3540 001c                 move.w     d0,28(a2)
[00025500] 3540 0012                 move.w     d0,18(a2)
[00025504] 7200                      moveq.l    #0,d1
[00025506] 2541 001e                 move.l     d1,30(a2)
[0002550a] 2541 0014                 move.l     d1,20(a2)
[0002550e] 7000                      moveq.l    #0,d0
[00025510] 2540 0022                 move.l     d0,34(a2)
[00025514] 2540 0018                 move.l     d0,24(a2)
[00025518] 43ea 0026                 lea.l      38(a2),a1
[0002551c] 41eb 04f8                 lea.l      1272(a3),a0
[00025520] 7003                      moveq.l    #3,d0
[00025522] 4eb9 0005 e010            jsr        Auo_boxed
[00025528] 206a 0026                 movea.l    38(a2),a0
[0002552c] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00025532] 4a40                      tst.w      d0
[00025534] 6704                      beq.s      ok_4
[00025536] 42aa 0026                 clr.l      38(a2)
ok_4:
[0002553a] 43ea 002a                 lea.l      42(a2),a1
[0002553e] 7003                      moveq.l    #3,d0
[00025540] 41eb 0510                 lea.l      1296(a3),a0
[00025544] 4eb9 0005 e010            jsr        Auo_boxed
[0002554a] 206a 002a                 movea.l    42(a2),a0
[0002554e] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00025554] 4a40                      tst.w      d0
[00025556] 6704                      beq.s      ok_5
[00025558] 42aa 002a                 clr.l      42(a2)
ok_5:
[0002555c] 2079 0010 1f12            movea.l    ACSblk,a0
[00025562] 3228 0014                 move.w     20(a0),d1
[00025566] 3017                      move.w     (a7),d0
[00025568] 204a                      movea.l    a2,a0
[0002556a] 2279 000b 09e6            movea.l    $000B09E6,a1
[00025570] 2269 0004                 movea.l    4(a1),a1
[00025574] 4e91                      jsr        (a1)
[00025576] 6100 fe98                 bsr        abort
[0002557a] 4fef 0034                 lea.l      52(a7),a7
[0002557e] 265f                      movea.l    (a7)+,a3
[00025580] 245f                      movea.l    (a7)+,a2
[00025582] 4e75                      rts

edbe_3d:
[00025584] 2f0a                      move.l     a2,-(a7)
[00025586] 2f0b                      move.l     a3,-(a7)
[00025588] 45f9 0010 1f12            lea.l      ACSblk,a2
[0002558e] 2052                      movea.l    (a2),a0
[00025590] 2268 025c                 movea.l    604(a0),a1
[00025594] 2669 003c                 movea.l    60(a1),a3
[00025598] 584b                      addq.w     #4,a3
[0002559a] 7001                      moveq.l    #1,d0
[0002559c] 3428 0260                 move.w     608(a0),d2
[000255a0] 48c2                      ext.l      d2
[000255a2] 2202                      move.l     d2,d1
[000255a4] d281                      add.l      d1,d1
[000255a6] d282                      add.l      d2,d1
[000255a8] e789                      lsl.l      #3,d1
[000255aa] c071 180a                 and.w      10(a1,d1.l),d0
[000255ae] 670e                      beq.s      edbe_3d_1
[000255b0] 026b fffd 0002            andi.w     #$FFFD,2(a3)
[000255b6] 006b 0002 0002            ori.w      #$0002,2(a3)
[000255bc] 6006                      bra.s      edbe_3d_2
edbe_3d_1:
[000255be] 026b fffd 0002            andi.w     #$FFFD,2(a3)
edbe_3d_2:
[000255c4] 72ff                      moveq.l    #-1,d1
[000255c6] 2052                      movea.l    (a2),a0
[000255c8] 3028 0260                 move.w     608(a0),d0
[000255cc] 2068 0258                 movea.l    600(a0),a0
[000255d0] 2252                      movea.l    (a2),a1
[000255d2] 2669 0258                 movea.l    600(a1),a3
[000255d6] 226b 0066                 movea.l    102(a3),a1
[000255da] 4e91                      jsr        (a1)
[000255dc] 72ff                      moveq.l    #-1,d1
[000255de] 7001                      moveq.l    #1,d0
[000255e0] 2052                      movea.l    (a2),a0
[000255e2] 2068 0258                 movea.l    600(a0),a0
[000255e6] 2252                      movea.l    (a2),a1
[000255e8] 2669 0258                 movea.l    600(a1),a3
[000255ec] 226b 0066                 movea.l    102(a3),a1
[000255f0] 4e91                      jsr        (a1)
[000255f2] 265f                      movea.l    (a7)+,a3
[000255f4] 245f                      movea.l    (a7)+,a2
[000255f6] 4e75                      rts

edbe_autobig:
[000255f8] 2f0a                      move.l     a2,-(a7)
[000255fa] 2f0b                      move.l     a3,-(a7)
[000255fc] 45f9 0010 1f12            lea.l      ACSblk,a2
[00025602] 2052                      movea.l    (a2),a0
[00025604] 2268 025c                 movea.l    604(a0),a1
[00025608] 2669 003c                 movea.l    60(a1),a3
[0002560c] 584b                      addq.w     #4,a3
[0002560e] 7001                      moveq.l    #1,d0
[00025610] 3428 0260                 move.w     608(a0),d2
[00025614] 48c2                      ext.l      d2
[00025616] 2202                      move.l     d2,d1
[00025618] d281                      add.l      d1,d1
[0002561a] d282                      add.l      d2,d1
[0002561c] e789                      lsl.l      #3,d1
[0002561e] c071 180a                 and.w      10(a1,d1.l),d0
[00025622] 670e                      beq.s      edbe_autobig_1
[00025624] 026b fff7 0002            andi.w     #$FFF7,2(a3)
[0002562a] 006b 0008 0002            ori.w      #$0008,2(a3)
[00025630] 6006                      bra.s      edbe_autobig_2
edbe_autobig_1:
[00025632] 026b fff7 0002            andi.w     #$FFF7,2(a3)
edbe_autobig_2:
[00025638] 72ff                      moveq.l    #-1,d1
[0002563a] 2052                      movea.l    (a2),a0
[0002563c] 3028 0260                 move.w     608(a0),d0
[00025640] 2068 0258                 movea.l    600(a0),a0
[00025644] 2252                      movea.l    (a2),a1
[00025646] 2669 0258                 movea.l    600(a1),a3
[0002564a] 226b 0066                 movea.l    102(a3),a1
[0002564e] 4e91                      jsr        (a1)
[00025650] 72ff                      moveq.l    #-1,d1
[00025652] 7001                      moveq.l    #1,d0
[00025654] 2052                      movea.l    (a2),a0
[00025656] 2068 0258                 movea.l    600(a0),a0
[0002565a] 2252                      movea.l    (a2),a1
[0002565c] 2669 0258                 movea.l    600(a1),a3
[00025660] 226b 0066                 movea.l    102(a3),a1
[00025664] 4e91                      jsr        (a1)
[00025666] 265f                      movea.l    (a7)+,a3
[00025668] 245f                      movea.l    (a7)+,a2
[0002566a] 4e75                      rts

edbe_secret:
[0002566c] 2f0a                      move.l     a2,-(a7)
[0002566e] 2f0b                      move.l     a3,-(a7)
[00025670] 45f9 0010 1f12            lea.l      ACSblk,a2
[00025676] 2052                      movea.l    (a2),a0
[00025678] 2268 025c                 movea.l    604(a0),a1
[0002567c] 2669 003c                 movea.l    60(a1),a3
[00025680] 584b                      addq.w     #4,a3
[00025682] 7001                      moveq.l    #1,d0
[00025684] 3428 0260                 move.w     608(a0),d2
[00025688] 48c2                      ext.l      d2
[0002568a] 2202                      move.l     d2,d1
[0002568c] d281                      add.l      d1,d1
[0002568e] d282                      add.l      d2,d1
[00025690] e789                      lsl.l      #3,d1
[00025692] c071 180a                 and.w      10(a1,d1.l),d0
[00025696] 670e                      beq.s      edbe_secret_1
[00025698] 026b fffe 0002            andi.w     #$FFFE,2(a3)
[0002569e] 006b 0001 0002            ori.w      #$0001,2(a3)
[000256a4] 6006                      bra.s      edbe_secret_2
edbe_secret_1:
[000256a6] 026b fffe 0002            andi.w     #$FFFE,2(a3)
edbe_secret_2:
[000256ac] 72ff                      moveq.l    #-1,d1
[000256ae] 2052                      movea.l    (a2),a0
[000256b0] 3028 0260                 move.w     608(a0),d0
[000256b4] 2068 0258                 movea.l    600(a0),a0
[000256b8] 2252                      movea.l    (a2),a1
[000256ba] 2669 0258                 movea.l    600(a1),a3
[000256be] 226b 0066                 movea.l    102(a3),a1
[000256c2] 4e91                      jsr        (a1)
[000256c4] 72ff                      moveq.l    #-1,d1
[000256c6] 7001                      moveq.l    #1,d0
[000256c8] 2052                      movea.l    (a2),a0
[000256ca] 2068 0258                 movea.l    600(a0),a0
[000256ce] 2252                      movea.l    (a2),a1
[000256d0] 2669 0258                 movea.l    600(a1),a3
[000256d4] 226b 0066                 movea.l    102(a3),a1
[000256d8] 4e91                      jsr        (a1)
[000256da] 265f                      movea.l    (a7)+,a3
[000256dc] 245f                      movea.l    (a7)+,a2
[000256de] 4e75                      rts

edbe_incol:
[000256e0] 3f03                      move.w     d3,-(a7)
[000256e2] 2f0a                      move.l     a2,-(a7)
[000256e4] 2079 0010 1f12            movea.l    ACSblk,a0
[000256ea] 2268 025c                 movea.l    604(a0),a1
[000256ee] 2469 003c                 movea.l    60(a1),a2
[000256f2] 584a                      addq.w     #4,a2
[000256f4] 702e                      moveq.l    #46,d0
[000256f6] 3f00                      move.w     d0,-(a7)
[000256f8] 742f                      moveq.l    #47,d2
[000256fa] 722c                      moveq.l    #44,d1
[000256fc] 3012                      move.w     (a2),d0
[000256fe] e048                      lsr.w      #8,d0
[00025700] c07c 000f                 and.w      #$000F,d0
[00025704] 4eb9 0002 f280            jsr        oe_colsel
[0002570a] 544f                      addq.w     #2,a7
[0002570c] 3600                      move.w     d0,d3
[0002570e] 6f2c                      ble.s      edbe_incol_1
[00025710] 3203                      move.w     d3,d1
[00025712] 0252 f0ff                 andi.w     #$F0FF,(a2)
[00025716] c27c 000f                 and.w      #$000F,d1
[0002571a] e149                      lsl.w      #8,d1
[0002571c] 8352                      or.w       d1,(a2)
[0002571e] 72ff                      moveq.l    #-1,d1
[00025720] 2079 0010 1f12            movea.l    ACSblk,a0
[00025726] 2068 0258                 movea.l    600(a0),a0
[0002572a] 2279 0010 1f12            movea.l    ACSblk,a1
[00025730] 2469 0258                 movea.l    600(a1),a2
[00025734] 226a 0066                 movea.l    102(a2),a1
[00025738] 7001                      moveq.l    #1,d0
[0002573a] 4e91                      jsr        (a1)
edbe_incol_1:
[0002573c] 245f                      movea.l    (a7)+,a2
[0002573e] 361f                      move.w     (a7)+,d3
[00025740] 4e75                      rts

edbe_outcol:
[00025742] 2f03                      move.l     d3,-(a7)
[00025744] 2f0a                      move.l     a2,-(a7)
[00025746] 2079 0010 1f12            movea.l    ACSblk,a0
[0002574c] 2268 025c                 movea.l    604(a0),a1
[00025750] 2469 003c                 movea.l    60(a1),a2
[00025754] 584a                      addq.w     #4,a2
[00025756] 7027                      moveq.l    #39,d0
[00025758] 3f00                      move.w     d0,-(a7)
[0002575a] 7428                      moveq.l    #40,d2
[0002575c] 7225                      moveq.l    #37,d1
[0002575e] 3012                      move.w     (a2),d0
[00025760] 760c                      moveq.l    #12,d3
[00025762] e668                      lsr.w      d3,d0
[00025764] c07c 000f                 and.w      #$000F,d0
[00025768] 4eb9 0002 f280            jsr        oe_colsel
[0002576e] 544f                      addq.w     #2,a7
[00025770] 3600                      move.w     d0,d3
[00025772] 6f2e                      ble.s      edbe_outcol_1
[00025774] 3203                      move.w     d3,d1
[00025776] 0252 0fff                 andi.w     #$0FFF,(a2)
[0002577a] c27c 000f                 and.w      #$000F,d1
[0002577e] e149                      lsl.w      #8,d1
[00025780] e949                      lsl.w      #4,d1
[00025782] 8352                      or.w       d1,(a2)
[00025784] 72ff                      moveq.l    #-1,d1
[00025786] 2079 0010 1f12            movea.l    ACSblk,a0
[0002578c] 2068 0258                 movea.l    600(a0),a0
[00025790] 2279 0010 1f12            movea.l    ACSblk,a1
[00025796] 2469 0258                 movea.l    600(a1),a2
[0002579a] 226a 0066                 movea.l    102(a2),a1
[0002579e] 7001                      moveq.l    #1,d0
[000257a0] 4e91                      jsr        (a1)
edbe_outcol_1:
[000257a2] 245f                      movea.l    (a7)+,a2
[000257a4] 261f                      move.l     (a7)+,d3
[000257a6] 4e75                      rts

edbe_size:
[000257a8] 48e7 0034                 movem.l    a2-a3/a5,-(a7)
[000257ac] 514f                      subq.w     #8,a7
[000257ae] 41f9 000b dc40            lea.l      POP_SIZESEL,a0
[000257b4] 4eb9 0004 9a5c            jsr        Aob_create
[000257ba] 2448                      movea.l    a0,a2
[000257bc] 200a                      move.l     a2,d0
[000257be] 6700 00ea                 beq        edbe_size_1
[000257c2] 47f9 0010 1f12            lea.l      ACSblk,a3
[000257c8] 7012                      moveq.l    #18,d0
[000257ca] 2053                      movea.l    (a3),a0
[000257cc] 2268 0258                 movea.l    600(a0),a1
[000257d0] 2269 0014                 movea.l    20(a1),a1
[000257d4] 41d7                      lea.l      (a7),a0
[000257d6] 4eb9 0004 a3be            jsr        Aob_offset
[000257dc] 7001                      moveq.l    #1,d0
[000257de] 2053                      movea.l    (a3),a0
[000257e0] 2268 0258                 movea.l    600(a0),a1
[000257e4] d069 0034                 add.w      52(a1),d0
[000257e8] d157                      add.w      d0,(a7)
[000257ea] 7201                      moveq.l    #1,d1
[000257ec] d269 0036                 add.w      54(a1),d1
[000257f0] d36f 0002                 add.w      d1,2(a7)
[000257f4] 2268 025c                 movea.l    604(a0),a1
[000257f8] 2a69 003c                 movea.l    60(a1),a5
[000257fc] 584d                      addq.w     #4,a5
[000257fe] 302d 0002                 move.w     2(a5),d0
[00025802] e448                      lsr.w      #2,d0
[00025804] c07c 0001                 and.w      #$0001,d0
[00025808] 5240                      addq.w     #1,d0
[0002580a] 7200                      moveq.l    #0,d1
[0002580c] 3200                      move.w     d0,d1
[0002580e] 2401                      move.l     d1,d2
[00025810] d482                      add.l      d2,d2
[00025812] d481                      add.l      d1,d2
[00025814] e78a                      lsl.l      #3,d2
[00025816] 0072 0004 280a            ori.w      #$0004,10(a2,d2.l)
[0002581c] 322f 0002                 move.w     2(a7),d1
[00025820] 3017                      move.w     (a7),d0
[00025822] 224a                      movea.l    a2,a1
[00025824] 2053                      movea.l    (a3),a0
[00025826] 2068 0258                 movea.l    600(a0),a0
[0002582a] 4eb9 0004 948a            jsr        Ame_popup
[00025830] 4a40                      tst.w      d0
[00025832] 6f6e                      ble.s      edbe_size_2
[00025834] b07c 0001                 cmp.w      #$0001,d0
[00025838] 661c                      bne.s      edbe_size_3
[0002583a] 026d fffb 0002            andi.w     #$FFFB,2(a5)
[00025840] 43f9 000b d322            lea.l      SIZE_TEXT0,a1
[00025846] 7014                      moveq.l    #20,d0
[00025848] 2053                      movea.l    (a3),a0
[0002584a] 2068 025c                 movea.l    604(a0),a0
[0002584e] 4eb9 0004 afe0            jsr        Aob_puttext
[00025854] 6020                      bra.s      edbe_size_4
edbe_size_3:
[00025856] 026d fffb 0002            andi.w     #$FFFB,2(a5)
[0002585c] 006d 0004 0002            ori.w      #$0004,2(a5)
[00025862] 43f9 000b d327            lea.l      SIZE_TEXT1,a1
[00025868] 7014                      moveq.l    #20,d0
[0002586a] 2053                      movea.l    (a3),a0
[0002586c] 2068 025c                 movea.l    604(a0),a0
[00025870] 4eb9 0004 afe0            jsr        Aob_puttext
edbe_size_4:
[00025876] 72ff                      moveq.l    #-1,d1
[00025878] 7014                      moveq.l    #20,d0
[0002587a] 2053                      movea.l    (a3),a0
[0002587c] 2068 0258                 movea.l    600(a0),a0
[00025880] 2253                      movea.l    (a3),a1
[00025882] 2a69 0258                 movea.l    600(a1),a5
[00025886] 226d 0066                 movea.l    102(a5),a1
[0002588a] 4e91                      jsr        (a1)
[0002588c] 72ff                      moveq.l    #-1,d1
[0002588e] 7001                      moveq.l    #1,d0
[00025890] 2053                      movea.l    (a3),a0
[00025892] 2068 0258                 movea.l    600(a0),a0
[00025896] 2253                      movea.l    (a3),a1
[00025898] 2a69 0258                 movea.l    600(a1),a5
[0002589c] 226d 0066                 movea.l    102(a5),a1
[000258a0] 4e91                      jsr        (a1)
edbe_size_2:
[000258a2] 204a                      movea.l    a2,a0
[000258a4] 4eb9 0004 9b7c            jsr        Aob_delete
edbe_size_1:
[000258aa] 504f                      addq.w     #8,a7
[000258ac] 4cdf 2c00                 movem.l    (a7)+,a2-a3/a5
[000258b0] 4e75                      rts

edbe_mask:
[000258b2] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[000258b6] 4fef fff0                 lea.l      -16(a7),a7
[000258ba] 41f9 000a fd44            lea.l      POP_MASKSEL,a0
[000258c0] 4eb9 0004 9a5c            jsr        Aob_create
[000258c6] 2448                      movea.l    a0,a2
[000258c8] 200a                      move.l     a2,d0
[000258ca] 6700 0172                 beq        edbe_mask_1
[000258ce] 47f9 0010 1f12            lea.l      ACSblk,a3
[000258d4] 4bef 0008                 lea.l      8(a7),a5
[000258d8] 701c                      moveq.l    #28,d0
[000258da] 2053                      movea.l    (a3),a0
[000258dc] 2268 0258                 movea.l    600(a0),a1
[000258e0] 2269 0014                 movea.l    20(a1),a1
[000258e4] 204d                      movea.l    a5,a0
[000258e6] 4eb9 0004 a3be            jsr        Aob_offset
[000258ec] 7001                      moveq.l    #1,d0
[000258ee] 2053                      movea.l    (a3),a0
[000258f0] 2268 0258                 movea.l    600(a0),a1
[000258f4] d069 0034                 add.w      52(a1),d0
[000258f8] d155                      add.w      d0,(a5)
[000258fa] 7201                      moveq.l    #1,d1
[000258fc] d269 0036                 add.w      54(a1),d1
[00025900] d36d 0002                 add.w      d1,2(a5)
[00025904] 2268 025c                 movea.l    604(a0),a1
[00025908] 2869 003c                 movea.l    60(a1),a4
[0002590c] 584c                      addq.w     #4,a4
[0002590e] 2068 0258                 movea.l    600(a0),a0
[00025912] 224a                      movea.l    a2,a1
[00025914] 3015                      move.w     (a5),d0
[00025916] 322d 0002                 move.w     2(a5),d1
[0002591a] 4eb9 0004 948a            jsr        Ame_popup
[00025920] 3600                      move.w     d0,d3
[00025922] 6f00 0112                 ble        edbe_mask_2
[00025926] 48c0                      ext.l      d0
[00025928] 2200                      move.l     d0,d1
[0002592a] d281                      add.l      d1,d1
[0002592c] d280                      add.l      d0,d1
[0002592e] e789                      lsl.l      #3,d1
[00025930] 4bf2 1818                 lea.l      24(a2,d1.l),a5
[00025934] 342d 0008                 move.w     8(a5),d2
[00025938] c47c 8000                 and.w      #$8000,d2
[0002593c] 6700 00f8                 beq        edbe_mask_2
[00025940] 342d 000e                 move.w     14(a5),d2
[00025944] 0254 ff07                 andi.w     #$FF07,(a4)
[00025948] c47c 001f                 and.w      #$001F,d2
[0002594c] e74a                      lsl.w      #3,d2
[0002594e] 8554                      or.w       d2,(a4)
[00025950] 3414                      move.w     (a4),d2
[00025952] e64a                      lsr.w      #3,d2
[00025954] c47c 001f                 and.w      #$001F,d2
[00025958] e54a                      lsl.w      #2,d2
[0002595a] 41f9 000b 089c            lea.l      masklist,a0
[00025960] 2270 2000                 movea.l    0(a0,d2.w),a1
[00025964] 2053                      movea.l    (a3),a0
[00025966] 2068 025c                 movea.l    604(a0),a0
[0002596a] 701e                      moveq.l    #30,d0
[0002596c] 4eb9 0004 afe0            jsr        Aob_puttext
[00025972] 43ef 0004                 lea.l      4(a7),a1
[00025976] 7003                      moveq.l    #3,d0
[00025978] 2053                      movea.l    (a3),a0
[0002597a] 2068 0258                 movea.l    600(a0),a0
[0002597e] 2068 0014                 movea.l    20(a0),a0
[00025982] 41e8 00c0                 lea.l      192(a0),a0
[00025986] 4eb9 0005 e010            jsr        Auo_boxed
[0002598c] 206f 0004                 movea.l    4(a7),a0
[00025990] 4eb9 0004 36d6            jsr        Ast_create
[00025996] 2e88                      move.l     a0,(a7)
[00025998] 6770                      beq.s      edbe_mask_3
[0002599a] 43f9 000b 09f6            lea.l      $000B09F6,a1
[000259a0] 7004                      moveq.l    #4,d0
[000259a2] 2053                      movea.l    (a3),a0
[000259a4] 2068 0258                 movea.l    600(a0),a0
[000259a8] 2068 0014                 movea.l    20(a0),a0
[000259ac] 41e8 00c0                 lea.l      192(a0),a0
[000259b0] 4eb9 0005 e010            jsr        Auo_boxed
[000259b6] 2053                      movea.l    (a3),a0
[000259b8] 2268 025c                 movea.l    604(a0),a1
[000259bc] 2869 00cc                 movea.l    204(a1),a4
[000259c0] 584c                      addq.w     #4,a4
[000259c2] 302d 000e                 move.w     14(a5),d0
[000259c6] 0254 ff07                 andi.w     #$FF07,(a4)
[000259ca] c07c 001f                 and.w      #$001F,d0
[000259ce] e748                      lsl.w      #3,d0
[000259d0] 8154                      or.w       d0,(a4)
[000259d2] 2257                      movea.l    (a7),a1
[000259d4] 7004                      moveq.l    #4,d0
[000259d6] 2053                      movea.l    (a3),a0
[000259d8] 2868 0258                 movea.l    600(a0),a4
[000259dc] 206c 0014                 movea.l    20(a4),a0
[000259e0] 41e8 00c0                 lea.l      192(a0),a0
[000259e4] 4eb9 0005 e010            jsr        Auo_boxed
[000259ea] 93c9                      suba.l     a1,a1
[000259ec] 7006                      moveq.l    #6,d0
[000259ee] 2053                      movea.l    (a3),a0
[000259f0] 2868 0258                 movea.l    600(a0),a4
[000259f4] 206c 0014                 movea.l    20(a4),a0
[000259f8] 41e8 00c0                 lea.l      192(a0),a0
[000259fc] 4eb9 0005 e010            jsr        Auo_boxed
[00025a02] 2057                      movea.l    (a7),a0
[00025a04] 4eb9 0004 371c            jsr        Ast_delete
edbe_mask_3:
[00025a0a] 72ff                      moveq.l    #-1,d1
[00025a0c] 701c                      moveq.l    #28,d0
[00025a0e] 2053                      movea.l    (a3),a0
[00025a10] 2068 0258                 movea.l    600(a0),a0
[00025a14] 2253                      movea.l    (a3),a1
[00025a16] 2869 0258                 movea.l    600(a1),a4
[00025a1a] 226c 0066                 movea.l    102(a4),a1
[00025a1e] 4e91                      jsr        (a1)
[00025a20] 72ff                      moveq.l    #-1,d1
[00025a22] 7001                      moveq.l    #1,d0
[00025a24] 2053                      movea.l    (a3),a0
[00025a26] 2068 0258                 movea.l    600(a0),a0
[00025a2a] 2253                      movea.l    (a3),a1
[00025a2c] 2869 0258                 movea.l    600(a1),a4
[00025a30] 226c 0066                 movea.l    102(a4),a1
[00025a34] 4e91                      jsr        (a1)
edbe_mask_2:
[00025a36] 204a                      movea.l    a2,a0
[00025a38] 4eb9 0004 9b7c            jsr        Aob_delete
edbe_mask_1:
[00025a3e] 4fef 0010                 lea.l      16(a7),a7
[00025a42] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00025a46] 4e75                      rts

edbe_textcol:
[00025a48] 3f03                      move.w     d3,-(a7)
[00025a4a] 2f0a                      move.l     a2,-(a7)
[00025a4c] 2079 0010 1f12            movea.l    ACSblk,a0
[00025a52] 2268 025c                 movea.l    604(a0),a1
[00025a56] 2469 003c                 movea.l    60(a1),a2
[00025a5a] 584a                      addq.w     #4,a2
[00025a5c] 700e                      moveq.l    #14,d0
[00025a5e] 3f00                      move.w     d0,-(a7)
[00025a60] 740f                      moveq.l    #15,d2
[00025a62] 720c                      moveq.l    #12,d1
[00025a64] 302a 0002                 move.w     2(a2),d0
[00025a68] e848                      lsr.w      #4,d0
[00025a6a] c07c 000f                 and.w      #$000F,d0
[00025a6e] 4eb9 0002 f280            jsr        oe_colsel
[00025a74] 544f                      addq.w     #2,a7
[00025a76] 3600                      move.w     d0,d3
[00025a78] 6f30                      ble.s      edbe_textcol_1
[00025a7a] 3203                      move.w     d3,d1
[00025a7c] 026a ff0f 0002            andi.w     #$FF0F,2(a2)
[00025a82] c27c 000f                 and.w      #$000F,d1
[00025a86] e949                      lsl.w      #4,d1
[00025a88] 836a 0002                 or.w       d1,2(a2)
[00025a8c] 72ff                      moveq.l    #-1,d1
[00025a8e] 2079 0010 1f12            movea.l    ACSblk,a0
[00025a94] 2068 0258                 movea.l    600(a0),a0
[00025a98] 2279 0010 1f12            movea.l    ACSblk,a1
[00025a9e] 2469 0258                 movea.l    600(a1),a2
[00025aa2] 226a 0066                 movea.l    102(a2),a1
[00025aa6] 7001                      moveq.l    #1,d0
[00025aa8] 4e91                      jsr        (a1)
edbe_textcol_1:
[00025aaa] 245f                      movea.l    (a7)+,a2
[00025aac] 361f                      move.w     (a7)+,d3
[00025aae] 4e75                      rts

	.data

BUBBLE_01:
[000af26e]                           dc.b 'Die énderungen werden Åbernommen und Åberschreiben die alten Einstellungen.',0
BUBBLE_02:
[000af2ba]                           dc.b 'Die énderungen werden verworfen, die alten Einstellungen bleiben erhalten.',0
BUBBLE_03:
[000af305]                           dc.b 'Hier kann der String, der fÅr BubbleGEM verwendet werden soll, eingegeben werden.',0
BUBBLE_04:
[000af357]                           dc.b 'Hier kann der String eingegeben werden, der das aufzurufende Context-Popup beschreibt (siehe in der Dokumentation zu Ame_strpopup).',0
PMT00:
[000af3db]                           dc.b '  alle Zeichen',0
PMT01:
[000af3ea]                           dc.b '  normaler Pfad',0
PMT02:
[000af3fa]                           dc.b '  normale Datei',0
PMT03:
[000af40a]                           dc.b '  TOS-Datei',0
PMT04:
[000af416]                           dc.b '  TOS-Datei-Muster',0
PMT05:
[000af429]                           dc.b '  TOS-Pfad',0
PMT06:
[000af434]                           dc.b '  TOS-Pfad-Muster',0
PMT07:
[000af446]                           dc.b '  normal',0
PMT08:
[000af44f]                           dc.b '  Buchstaben',0
PMT09:
[000af45c]                           dc.b '  Buchstaben & Zahlen',0
PMT10:
[000af472]                           dc.b '  BinÑrzahl',0
PMT11:
[000af47e]                           dc.b '  neg. BinÑrzahl',0
PMT12:
[000af48f]                           dc.b '  Oktalzahl',0
PMT13:
[000af49b]                           dc.b '  neg. Oktalzahl',0
PMT14:
[000af4ac]                           dc.b '  Dezimalzahl',0
PMT15:
[000af4ba]                           dc.b '  neg. Dezimalzahl',0
PMT16:
[000af4cd]                           dc.b '  Hexadezimalzahl',0
PMT17:
[000af4df]                           dc.b '  neg. Hexadezimalzahl',0
PMT18:
[000af4f6]                           dc.b '  Flieûkommazahl',0
PMT19:
[000af507]                           dc.b '  neg. Flieûkommazahl',0
PMT20:
[000af51d]                           dc.b '  TT.MM.JJJJ',0
PMT21:
[000af52a]                           dc.b '  TT/MM/JJJJ',0
PMT22:
[000af537]                           dc.b '  MM.TT.JJJJ',0
PMT23:
[000af544]                           dc.b '  MM/TT/JJJJ',0
PMT24:
[000af551]                           dc.b '  Stunden unbegrenzt',0
PMT25:
[000af566]                           dc.b '  max. 12 Stunden',0
PMT26:
[000af578]                           dc.b '  max. 24 Stunden',0
TEXT_005:
[000af58a]                           dc.b '  Datum             '
[000af59e]                           dc.w $0300
TEXT_009:
[000af5a0]                           dc.b 'Abbruch',0
TEXT_01:
[000af5a8]                           dc.b '3D-Modus',0
TEXT_02:
[000af5b1]                           dc.b 'unsichtbarer Text',0
TEXT_05:
[000af5c3]                           dc.b 'Sonstiges',0
TEXT_06:
[000af5cd]                           dc.b '  Zeit              '
[000af5e1]                           dc.b $03
[000af5e2]                           dc.b $00
TEXT_07:
[000af5e3]                           dc.b 'Kapitalisieren',0
TEXT_08:
[000af5f2]                           dc.b 'BubbleGEM-Text',0
TEXT_09:
[000af601]                           dc.b 'unten:',0
TEXT_10:
[000af608]                           dc.b 'Rahmen:                ',0
TEXT_11:
[000af620]                           dc.b 'Farbe:',0
TEXT_12:
[000af627]                           dc.b 'Grîûe:',0
TEXT_13:
[000af62e]                           dc.b 'LÑnge:',0
TEXT_14:
[000af635]                           dc.b 'Text:',0
TEXT_15:
[000af63b]                           dc.b 'Maske:',0
TEXT_16:
[000af642]                           dc.b 'Context-Popup',0
TEXT_18:
[000af650]                           dc.b 'Eingabe:',0
TEXT_19:
[000af659]                           dc.b 'oben:',0
TEXT_20:
[000af65f]                           dc.b 'Format: Std:Min:Sek',0
TEXT_21:
[000af673]                           dc.b 'links/',0
TEXT_22:
[000af67a]                           dc.b 'rechts/',0
TEXT_30:
[000af682]                           dc.b '  Zahlen            '
[000af696]                           dc.w $0300
TEXT_41:
[000af698]                           dc.w $4f4b
[000af69a]                           dc.b $00
TXT0:
[000af69b]                           dc.b '  Pfad              '
[000af6af]                           dc.b $03
[000af6b0]                           dc.b $00
TXT1:
[000af6b1]                           dc.b '  Datei             '
[000af6c5]                           dc.b $03
[000af6c6]                           dc.b $00
help_title:
[000af6c7]                           dc.b 'Der BoxEdit-Editor',0
title:
[000af6da]                           dc.b 'BOXEDIT -',0
A_3DBUTTON01:
[000af6e4] 0005a4e2                  dc.l A_3Dbutton
[000af6e8]                           dc.w $09f1
[000af6ea]                           dc.w $0178
[000af6ec] 00059318                  dc.l Auo_string
[000af6f0] 000af6b1                  dc.l TXT1
[000af6f4]                           dc.b $00
[000af6f5]                           dc.b $00
[000af6f6]                           dc.b $00
[000af6f7]                           dc.b $00
[000af6f8]                           dc.b $00
[000af6f9]                           dc.b $00
[000af6fa]                           dc.b $00
[000af6fb]                           dc.b $00
[000af6fc]                           dc.b $00
[000af6fd]                           dc.b $00
[000af6fe]                           dc.b $00
[000af6ff]                           dc.b $00
[000af700]                           dc.b $00
[000af701]                           dc.b $00
[000af702]                           dc.b $00
[000af703]                           dc.b $00
A_3DBUTTON02:
[000af704] 0005a4e2                  dc.l A_3Dbutton
[000af708]                           dc.w $09f1
[000af70a]                           dc.w $0178
[000af70c] 00059318                  dc.l Auo_string
[000af710] 000af3db                  dc.l PMT00
[000af714]                           dc.b $00
[000af715]                           dc.b $00
[000af716]                           dc.b $00
[000af717]                           dc.b $00
[000af718]                           dc.b $00
[000af719]                           dc.b $00
[000af71a]                           dc.b $00
[000af71b]                           dc.b $00
[000af71c]                           dc.b $00
[000af71d]                           dc.b $00
[000af71e]                           dc.b $00
[000af71f]                           dc.b $00
[000af720]                           dc.b $00
[000af721]                           dc.b $00
[000af722]                           dc.b $00
[000af723]                           dc.b $00
A_3DBUTTON03:
[000af724] 0005a4e2                  dc.l A_3Dbutton
[000af728]                           dc.w $09f1
[000af72a]                           dc.w $0178
[000af72c] 00059318                  dc.l Auo_string
[000af730] 000af682                  dc.l TEXT_30
[000af734]                           dc.b $00
[000af735]                           dc.b $00
[000af736]                           dc.b $00
[000af737]                           dc.b $00
[000af738]                           dc.b $00
[000af739]                           dc.b $00
[000af73a]                           dc.b $00
[000af73b]                           dc.b $00
[000af73c]                           dc.b $00
[000af73d]                           dc.b $00
[000af73e]                           dc.b $00
[000af73f]                           dc.b $00
[000af740]                           dc.b $00
[000af741]                           dc.b $00
[000af742]                           dc.b $00
[000af743]                           dc.b $00
A_3DBUTTON04:
[000af744] 0005a4e2                  dc.l A_3Dbutton
[000af748]                           dc.w $09f1
[000af74a]                           dc.w $0178
[000af74c] 00059318                  dc.l Auo_string
[000af750] 000af58a                  dc.l TEXT_005
[000af754]                           dc.b $00
[000af755]                           dc.b $00
[000af756]                           dc.b $00
[000af757]                           dc.b $00
[000af758]                           dc.b $00
[000af759]                           dc.b $00
[000af75a]                           dc.b $00
[000af75b]                           dc.b $00
[000af75c]                           dc.b $00
[000af75d]                           dc.b $00
[000af75e]                           dc.b $00
[000af75f]                           dc.b $00
[000af760]                           dc.b $00
[000af761]                           dc.b $00
[000af762]                           dc.b $00
[000af763]                           dc.b $00
A_3DBUTTON05:
[000af764] 0005a4e2                  dc.l A_3Dbutton
[000af768]                           dc.w $09f1
[000af76a]                           dc.w $0178
[000af76c] 00059318                  dc.l Auo_string
[000af770] 000af69b                  dc.l TXT0
[000af774]                           dc.b $00
[000af775]                           dc.b $00
[000af776]                           dc.b $00
[000af777]                           dc.b $00
[000af778]                           dc.b $00
[000af779]                           dc.b $00
[000af77a]                           dc.b $00
[000af77b]                           dc.b $00
[000af77c]                           dc.b $00
[000af77d]                           dc.b $00
[000af77e]                           dc.b $00
[000af77f]                           dc.b $00
[000af780]                           dc.b $00
[000af781]                           dc.b $00
[000af782]                           dc.b $00
[000af783]                           dc.b $00
A_3DBUTTON06:
[000af784] 0005a4e2                  dc.l A_3Dbutton
[000af788]                           dc.w $21f1
[000af78a]                           dc.w $0178
[000af78c] 00059318                  dc.l Auo_string
[000af790]                           dc.b $00
[000af791]                           dc.b $00
[000af792]                           dc.b $00
[000af793]                           dc.b $00
[000af794]                           dc.b $00
[000af795]                           dc.b $00
[000af796]                           dc.b $00
[000af797]                           dc.b $00
[000af798]                           dc.b $00
[000af799]                           dc.b $00
[000af79a]                           dc.b $00
[000af79b]                           dc.b $00
[000af79c]                           dc.b $00
[000af79d]                           dc.b $00
[000af79e]                           dc.b $00
[000af79f]                           dc.b $00
[000af7a0]                           dc.b $00
[000af7a1]                           dc.b $00
[000af7a2]                           dc.b $00
[000af7a3]                           dc.b $00
A_3DBUTTON07:
[000af7a4] 0005a4e2                  dc.l A_3Dbutton
[000af7a8]                           dc.w $09f1
[000af7aa]                           dc.w $0178
[000af7ac] 00059318                  dc.l Auo_string
[000af7b0]                           dc.b $00
[000af7b1]                           dc.b $00
[000af7b2]                           dc.b $00
[000af7b3]                           dc.b $00
[000af7b4]                           dc.b $00
[000af7b5]                           dc.b $00
[000af7b6]                           dc.b $00
[000af7b7]                           dc.b $00
[000af7b8]                           dc.b $00
[000af7b9]                           dc.b $00
[000af7ba]                           dc.b $00
[000af7bb]                           dc.b $00
[000af7bc]                           dc.b $00
[000af7bd]                           dc.b $00
[000af7be]                           dc.b $00
[000af7bf]                           dc.b $00
[000af7c0]                           dc.b $00
[000af7c1]                           dc.b $00
[000af7c2]                           dc.b $00
[000af7c3]                           dc.b $00
A_3DBUTTON08:
[000af7c4] 0005a4e2                  dc.l A_3Dbutton
[000af7c8]                           dc.w $09f1
[000af7ca]                           dc.w $0178
[000af7cc] 00059318                  dc.l Auo_string
[000af7d0] 000af3fa                  dc.l PMT02
[000af7d4]                           dc.b $00
[000af7d5]                           dc.b $00
[000af7d6]                           dc.b $00
[000af7d7]                           dc.b $00
[000af7d8]                           dc.b $00
[000af7d9]                           dc.b $00
[000af7da]                           dc.b $00
[000af7db]                           dc.b $00
[000af7dc]                           dc.b $00
[000af7dd]                           dc.b $00
[000af7de]                           dc.b $00
[000af7df]                           dc.b $00
[000af7e0]                           dc.b $00
[000af7e1]                           dc.b $00
[000af7e2]                           dc.b $00
[000af7e3]                           dc.b $00
A_3DBUTTON09:
[000af7e4] 0005a4e2                  dc.l A_3Dbutton
[000af7e8]                           dc.w $29c1
[000af7ea]                           dc.w $0178
[000af7ec] 00059318                  dc.l Auo_string
[000af7f0] 000af5a0                  dc.l TEXT_009
[000af7f4]                           dc.b $00
[000af7f5]                           dc.b $00
[000af7f6]                           dc.b $00
[000af7f7]                           dc.b $00
[000af7f8]                           dc.b $00
[000af7f9]                           dc.b $00
[000af7fa]                           dc.b $00
[000af7fb]                           dc.b $00
[000af7fc] 000af2ba                  dc.l BUBBLE_02
[000af800]                           dc.b $00
[000af801]                           dc.b $00
[000af802]                           dc.b $00
[000af803]                           dc.b $00
A_3DBUTTON10:
[000af804] 0005a4e2                  dc.l A_3Dbutton
[000af808]                           dc.w $09f1
[000af80a]                           dc.w $0178
[000af80c] 00059318                  dc.l Auo_string
[000af810] 000af40a                  dc.l PMT03
[000af814]                           dc.b $00
[000af815]                           dc.b $00
[000af816]                           dc.b $00
[000af817]                           dc.b $00
[000af818]                           dc.b $00
[000af819]                           dc.b $00
[000af81a]                           dc.b $00
[000af81b]                           dc.b $00
[000af81c]                           dc.b $00
[000af81d]                           dc.b $00
[000af81e]                           dc.b $00
[000af81f]                           dc.b $00
[000af820]                           dc.b $00
[000af821]                           dc.b $00
[000af822]                           dc.b $00
[000af823]                           dc.b $00
A_3DBUTTON11:
[000af824] 0005a4e2                  dc.l A_3Dbutton
[000af828]                           dc.w $09f1
[000af82a]                           dc.w $0178
[000af82c] 00059318                  dc.l Auo_string
[000af830] 000af446                  dc.l PMT07
[000af834]                           dc.b $00
[000af835]                           dc.b $00
[000af836]                           dc.b $00
[000af837]                           dc.b $00
[000af838]                           dc.b $00
[000af839]                           dc.b $00
[000af83a]                           dc.b $00
[000af83b]                           dc.b $00
[000af83c]                           dc.b $00
[000af83d]                           dc.b $00
[000af83e]                           dc.b $00
[000af83f]                           dc.b $00
[000af840]                           dc.b $00
[000af841]                           dc.b $00
[000af842]                           dc.b $00
[000af843]                           dc.b $00
A_3DBUTTON12:
[000af844] 0005a4e2                  dc.l A_3Dbutton
[000af848]                           dc.w $09f1
[000af84a]                           dc.w $0178
[000af84c] 00059318                  dc.l Auo_string
[000af850] 000af472                  dc.l PMT10
[000af854]                           dc.b $00
[000af855]                           dc.b $00
[000af856]                           dc.b $00
[000af857]                           dc.b $00
[000af858]                           dc.b $00
[000af859]                           dc.b $00
[000af85a]                           dc.b $00
[000af85b]                           dc.b $00
[000af85c]                           dc.b $00
[000af85d]                           dc.b $00
[000af85e]                           dc.b $00
[000af85f]                           dc.b $00
[000af860]                           dc.b $00
[000af861]                           dc.b $00
[000af862]                           dc.b $00
[000af863]                           dc.b $00
A_3DBUTTON13:
[000af864] 0005a4e2                  dc.l A_3Dbutton
[000af868]                           dc.w $09f1
[000af86a]                           dc.w $0178
[000af86c] 00059318                  dc.l Auo_string
[000af870] 000af44f                  dc.l PMT08
[000af874]                           dc.b $00
[000af875]                           dc.b $00
[000af876]                           dc.b $00
[000af877]                           dc.b $00
[000af878]                           dc.b $00
[000af879]                           dc.b $00
[000af87a]                           dc.b $00
[000af87b]                           dc.b $00
[000af87c]                           dc.b $00
[000af87d]                           dc.b $00
[000af87e]                           dc.b $00
[000af87f]                           dc.b $00
[000af880]                           dc.b $00
[000af881]                           dc.b $00
[000af882]                           dc.b $00
[000af883]                           dc.b $00
A_3DBUTTON14:
[000af884] 0005a4e2                  dc.l A_3Dbutton
[000af888]                           dc.w $09f1
[000af88a]                           dc.w $0178
[000af88c] 00059318                  dc.l Auo_string
[000af890] 000af45c                  dc.l PMT09
[000af894]                           dc.b $00
[000af895]                           dc.b $00
[000af896]                           dc.b $00
[000af897]                           dc.b $00
[000af898]                           dc.b $00
[000af899]                           dc.b $00
[000af89a]                           dc.b $00
[000af89b]                           dc.b $00
[000af89c]                           dc.b $00
[000af89d]                           dc.b $00
[000af89e]                           dc.b $00
[000af89f]                           dc.b $00
[000af8a0]                           dc.b $00
[000af8a1]                           dc.b $00
[000af8a2]                           dc.b $00
[000af8a3]                           dc.b $00
A_3DBUTTON15:
[000af8a4] 0005a4e2                  dc.l A_3Dbutton
[000af8a8]                           dc.w $09f1
[000af8aa]                           dc.w $0178
[000af8ac] 00059318                  dc.l Auo_string
[000af8b0] 000af47e                  dc.l PMT11
[000af8b4]                           dc.b $00
[000af8b5]                           dc.b $00
[000af8b6]                           dc.b $00
[000af8b7]                           dc.b $00
[000af8b8]                           dc.b $00
[000af8b9]                           dc.b $00
[000af8ba]                           dc.b $00
[000af8bb]                           dc.b $00
[000af8bc]                           dc.b $00
[000af8bd]                           dc.b $00
[000af8be]                           dc.b $00
[000af8bf]                           dc.b $00
[000af8c0]                           dc.b $00
[000af8c1]                           dc.b $00
[000af8c2]                           dc.b $00
[000af8c3]                           dc.b $00
A_3DBUTTON16:
[000af8c4] 0005a4e2                  dc.l A_3Dbutton
[000af8c8]                           dc.w $29c1
[000af8ca]                           dc.w $0178
[000af8cc] 00059318                  dc.l Auo_string
[000af8d0] 000af698                  dc.l TEXT_41
[000af8d4]                           dc.b $00
[000af8d5]                           dc.b $00
[000af8d6]                           dc.b $00
[000af8d7]                           dc.b $00
[000af8d8]                           dc.b $00
[000af8d9]                           dc.b $00
[000af8da]                           dc.b $00
[000af8db]                           dc.b $00
[000af8dc] 000af26e                  dc.l BUBBLE_01
[000af8e0]                           dc.b $00
[000af8e1]                           dc.b $00
[000af8e2]                           dc.b $00
[000af8e3]                           dc.b $00
A_3DBUTTON25:
[000af8e4] 0005a4e2                  dc.l A_3Dbutton
[000af8e8]                           dc.w $09f1
[000af8ea]                           dc.w $0178
[000af8ec] 00059318                  dc.l Auo_string
[000af8f0] 000af51d                  dc.l PMT20
[000af8f4]                           dc.b $00
[000af8f5]                           dc.b $00
[000af8f6]                           dc.b $00
[000af8f7]                           dc.b $00
[000af8f8]                           dc.b $00
[000af8f9]                           dc.b $00
[000af8fa]                           dc.b $00
[000af8fb]                           dc.b $00
[000af8fc]                           dc.b $00
[000af8fd]                           dc.b $00
[000af8fe]                           dc.b $00
[000af8ff]                           dc.b $00
[000af900]                           dc.b $00
[000af901]                           dc.b $00
[000af902]                           dc.b $00
[000af903]                           dc.b $00
A_3DBUTTON26:
[000af904] 0005a4e2                  dc.l A_3Dbutton
[000af908]                           dc.w $09f1
[000af90a]                           dc.w $0178
[000af90c] 00059318                  dc.l Auo_string
[000af910] 000af537                  dc.l PMT22
[000af914]                           dc.b $00
[000af915]                           dc.b $00
[000af916]                           dc.b $00
[000af917]                           dc.b $00
[000af918]                           dc.b $00
[000af919]                           dc.b $00
[000af91a]                           dc.b $00
[000af91b]                           dc.b $00
[000af91c]                           dc.b $00
[000af91d]                           dc.b $00
[000af91e]                           dc.b $00
[000af91f]                           dc.b $00
[000af920]                           dc.b $00
[000af921]                           dc.b $00
[000af922]                           dc.b $00
[000af923]                           dc.b $00
A_3DBUTTON27:
[000af924] 0005a4e2                  dc.l A_3Dbutton
[000af928]                           dc.w $09f1
[000af92a]                           dc.w $0178
[000af92c] 00059318                  dc.l Auo_string
[000af930]                           dc.b $00
[000af931]                           dc.b $00
[000af932]                           dc.b $00
[000af933]                           dc.b $00
[000af934]                           dc.b $00
[000af935]                           dc.b $00
[000af936]                           dc.b $00
[000af937]                           dc.b $00
[000af938]                           dc.b $00
[000af939]                           dc.b $00
[000af93a]                           dc.b $00
[000af93b]                           dc.b $00
[000af93c]                           dc.b $00
[000af93d]                           dc.b $00
[000af93e]                           dc.b $00
[000af93f]                           dc.b $00
[000af940]                           dc.b $00
[000af941]                           dc.b $00
[000af942]                           dc.b $00
[000af943]                           dc.b $00
A_3DBUTTON28:
[000af944] 0005a4e2                  dc.l A_3Dbutton
[000af948]                           dc.w $09f1
[000af94a]                           dc.w $0178
[000af94c] 00059318                  dc.l Auo_string
[000af950] 000af52a                  dc.l PMT21
[000af954]                           dc.b $00
[000af955]                           dc.b $00
[000af956]                           dc.b $00
[000af957]                           dc.b $00
[000af958]                           dc.b $00
[000af959]                           dc.b $00
[000af95a]                           dc.b $00
[000af95b]                           dc.b $00
[000af95c]                           dc.b $00
[000af95d]                           dc.b $00
[000af95e]                           dc.b $00
[000af95f]                           dc.b $00
[000af960]                           dc.b $00
[000af961]                           dc.b $00
[000af962]                           dc.b $00
[000af963]                           dc.b $00
A_3DBUTTON29:
[000af964] 0005a4e2                  dc.l A_3Dbutton
[000af968]                           dc.w $09f1
[000af96a]                           dc.w $0178
[000af96c] 00059318                  dc.l Auo_string
[000af970] 000af5cd                  dc.l TEXT_06
[000af974]                           dc.b $00
[000af975]                           dc.b $00
[000af976]                           dc.b $00
[000af977]                           dc.b $00
[000af978]                           dc.b $00
[000af979]                           dc.b $00
[000af97a]                           dc.b $00
[000af97b]                           dc.b $00
[000af97c]                           dc.b $00
[000af97d]                           dc.b $00
[000af97e]                           dc.b $00
[000af97f]                           dc.b $00
[000af980]                           dc.b $00
[000af981]                           dc.b $00
[000af982]                           dc.b $00
[000af983]                           dc.b $00
A_3DBUTTON30:
[000af984] 0005a4e2                  dc.l A_3Dbutton
[000af988]                           dc.w $09f1
[000af98a]                           dc.w $0178
[000af98c] 00059318                  dc.l Auo_string
[000af990] 000af551                  dc.l PMT24
[000af994]                           dc.b $00
[000af995]                           dc.b $00
[000af996]                           dc.b $00
[000af997]                           dc.b $00
[000af998]                           dc.b $00
[000af999]                           dc.b $00
[000af99a]                           dc.b $00
[000af99b]                           dc.b $00
[000af99c]                           dc.b $00
[000af99d]                           dc.b $00
[000af99e]                           dc.b $00
[000af99f]                           dc.b $00
[000af9a0]                           dc.b $00
[000af9a1]                           dc.b $00
[000af9a2]                           dc.b $00
[000af9a3]                           dc.b $00
A_3DBUTTON31:
[000af9a4] 0005a4e2                  dc.l A_3Dbutton
[000af9a8]                           dc.w $09f1
[000af9aa]                           dc.w $0178
[000af9ac] 00059318                  dc.l Auo_string
[000af9b0] 000af566                  dc.l PMT25
[000af9b4]                           dc.b $00
[000af9b5]                           dc.b $00
[000af9b6]                           dc.b $00
[000af9b7]                           dc.b $00
[000af9b8]                           dc.b $00
[000af9b9]                           dc.b $00
[000af9ba]                           dc.b $00
[000af9bb]                           dc.b $00
[000af9bc]                           dc.b $00
[000af9bd]                           dc.b $00
[000af9be]                           dc.b $00
[000af9bf]                           dc.b $00
[000af9c0]                           dc.b $00
[000af9c1]                           dc.b $00
[000af9c2]                           dc.b $00
[000af9c3]                           dc.b $00
A_3DBUTTON32:
[000af9c4] 0005a4e2                  dc.l A_3Dbutton
[000af9c8]                           dc.w $09f1
[000af9ca]                           dc.w $0178
[000af9cc] 00059318                  dc.l Auo_string
[000af9d0] 000af578                  dc.l PMT26
[000af9d4]                           dc.b $00
[000af9d5]                           dc.b $00
[000af9d6]                           dc.b $00
[000af9d7]                           dc.b $00
[000af9d8]                           dc.b $00
[000af9d9]                           dc.b $00
[000af9da]                           dc.b $00
[000af9db]                           dc.b $00
[000af9dc]                           dc.b $00
[000af9dd]                           dc.b $00
[000af9de]                           dc.b $00
[000af9df]                           dc.b $00
[000af9e0]                           dc.b $00
[000af9e1]                           dc.b $00
[000af9e2]                           dc.b $00
[000af9e3]                           dc.b $00
A_3DBUTTON33:
[000af9e4] 0005a4e2                  dc.l A_3Dbutton
[000af9e8]                           dc.w $6900
[000af9ea]                           dc.w $0178
[000af9ec] 00059318                  dc.l Auo_string
[000af9f0] 000af65f                  dc.l TEXT_20
[000af9f4]                           dc.b $00
[000af9f5]                           dc.b $00
[000af9f6]                           dc.b $00
[000af9f7]                           dc.b $00
[000af9f8]                           dc.b $00
[000af9f9]                           dc.b $00
[000af9fa]                           dc.b $00
[000af9fb]                           dc.b $00
[000af9fc]                           dc.b $00
[000af9fd]                           dc.b $00
[000af9fe]                           dc.b $00
[000af9ff]                           dc.b $00
[000afa00]                           dc.b $00
[000afa01]                           dc.b $00
[000afa02]                           dc.b $00
[000afa03]                           dc.b $00
A_3DBUTTON34:
[000afa04] 0005a4e2                  dc.l A_3Dbutton
[000afa08]                           dc.w $09f1
[000afa0a]                           dc.w $0178
[000afa0c] 00059318                  dc.l Auo_string
[000afa10] 000af544                  dc.l PMT23
[000afa14]                           dc.b $00
[000afa15]                           dc.b $00
[000afa16]                           dc.b $00
[000afa17]                           dc.b $00
[000afa18]                           dc.b $00
[000afa19]                           dc.b $00
[000afa1a]                           dc.b $00
[000afa1b]                           dc.b $00
[000afa1c]                           dc.b $00
[000afa1d]                           dc.b $00
[000afa1e]                           dc.b $00
[000afa1f]                           dc.b $00
[000afa20]                           dc.b $00
[000afa21]                           dc.b $00
[000afa22]                           dc.b $00
[000afa23]                           dc.b $00
A_3DBUTTON35:
[000afa24] 0005a4e2                  dc.l A_3Dbutton
[000afa28]                           dc.w $09f1
[000afa2a]                           dc.w $0178
[000afa2c] 00059318                  dc.l Auo_string
[000afa30] 000af3ea                  dc.l PMT01
[000afa34]                           dc.b $00
[000afa35]                           dc.b $00
[000afa36]                           dc.b $00
[000afa37]                           dc.b $00
[000afa38]                           dc.b $00
[000afa39]                           dc.b $00
[000afa3a]                           dc.b $00
[000afa3b]                           dc.b $00
[000afa3c]                           dc.b $00
[000afa3d]                           dc.b $00
[000afa3e]                           dc.b $00
[000afa3f]                           dc.b $00
[000afa40]                           dc.b $00
[000afa41]                           dc.b $00
[000afa42]                           dc.b $00
[000afa43]                           dc.b $00
A_3DBUTTON36:
[000afa44] 0005a4e2                  dc.l A_3Dbutton
[000afa48]                           dc.w $09f1
[000afa4a]                           dc.w $0178
[000afa4c] 00059318                  dc.l Auo_string
[000afa50] 000af429                  dc.l PMT05
[000afa54]                           dc.b $00
[000afa55]                           dc.b $00
[000afa56]                           dc.b $00
[000afa57]                           dc.b $00
[000afa58]                           dc.b $00
[000afa59]                           dc.b $00
[000afa5a]                           dc.b $00
[000afa5b]                           dc.b $00
[000afa5c]                           dc.b $00
[000afa5d]                           dc.b $00
[000afa5e]                           dc.b $00
[000afa5f]                           dc.b $00
[000afa60]                           dc.b $00
[000afa61]                           dc.b $00
[000afa62]                           dc.b $00
[000afa63]                           dc.b $00
A_3DBUTTON37:
[000afa64] 0005a4e2                  dc.l A_3Dbutton
[000afa68]                           dc.w $09f1
[000afa6a]                           dc.w $0178
[000afa6c] 00059318                  dc.l Auo_string
[000afa70] 000af434                  dc.l PMT06
[000afa74]                           dc.b $00
[000afa75]                           dc.b $00
[000afa76]                           dc.b $00
[000afa77]                           dc.b $00
[000afa78]                           dc.b $00
[000afa79]                           dc.b $00
[000afa7a]                           dc.b $00
[000afa7b]                           dc.b $00
[000afa7c]                           dc.b $00
[000afa7d]                           dc.b $00
[000afa7e]                           dc.b $00
[000afa7f]                           dc.b $00
[000afa80]                           dc.b $00
[000afa81]                           dc.b $00
[000afa82]                           dc.b $00
[000afa83]                           dc.b $00
A_3DBUTTON38:
[000afa84] 0005a4e2                  dc.l A_3Dbutton
[000afa88]                           dc.w $09f1
[000afa8a]                           dc.w $0178
[000afa8c] 00059318                  dc.l Auo_string
[000afa90] 000af416                  dc.l PMT04
[000afa94]                           dc.b $00
[000afa95]                           dc.b $00
[000afa96]                           dc.b $00
[000afa97]                           dc.b $00
[000afa98]                           dc.b $00
[000afa99]                           dc.b $00
[000afa9a]                           dc.b $00
[000afa9b]                           dc.b $00
[000afa9c]                           dc.b $00
[000afa9d]                           dc.b $00
[000afa9e]                           dc.b $00
[000afa9f]                           dc.b $00
[000afaa0]                           dc.b $00
[000afaa1]                           dc.b $00
[000afaa2]                           dc.b $00
[000afaa3]                           dc.b $00
A_3DBUTTON39:
[000afaa4] 0005a4e2                  dc.l A_3Dbutton
[000afaa8]                           dc.w $09f1
[000afaaa]                           dc.w $0178
[000afaac] 00059318                  dc.l Auo_string
[000afab0] 000af48f                  dc.l PMT12
[000afab4]                           dc.b $00
[000afab5]                           dc.b $00
[000afab6]                           dc.b $00
[000afab7]                           dc.b $00
[000afab8]                           dc.b $00
[000afab9]                           dc.b $00
[000afaba]                           dc.b $00
[000afabb]                           dc.b $00
[000afabc]                           dc.b $00
[000afabd]                           dc.b $00
[000afabe]                           dc.b $00
[000afabf]                           dc.b $00
[000afac0]                           dc.b $00
[000afac1]                           dc.b $00
[000afac2]                           dc.b $00
[000afac3]                           dc.b $00
A_3DBUTTON40:
[000afac4] 0005a4e2                  dc.l A_3Dbutton
[000afac8]                           dc.w $09f1
[000afaca]                           dc.w $0178
[000afacc] 00059318                  dc.l Auo_string
[000afad0] 000af49b                  dc.l PMT13
[000afad4]                           dc.b $00
[000afad5]                           dc.b $00
[000afad6]                           dc.b $00
[000afad7]                           dc.b $00
[000afad8]                           dc.b $00
[000afad9]                           dc.b $00
[000afada]                           dc.b $00
[000afadb]                           dc.b $00
[000afadc]                           dc.b $00
[000afadd]                           dc.b $00
[000afade]                           dc.b $00
[000afadf]                           dc.b $00
[000afae0]                           dc.b $00
[000afae1]                           dc.b $00
[000afae2]                           dc.b $00
[000afae3]                           dc.b $00
A_3DBUTTON41:
[000afae4] 0005a4e2                  dc.l A_3Dbutton
[000afae8]                           dc.w $09f1
[000afaea]                           dc.w $0178
[000afaec] 00059318                  dc.l Auo_string
[000afaf0] 000af4ac                  dc.l PMT14
[000afaf4]                           dc.b $00
[000afaf5]                           dc.b $00
[000afaf6]                           dc.b $00
[000afaf7]                           dc.b $00
[000afaf8]                           dc.b $00
[000afaf9]                           dc.b $00
[000afafa]                           dc.b $00
[000afafb]                           dc.b $00
[000afafc]                           dc.b $00
[000afafd]                           dc.b $00
[000afafe]                           dc.b $00
[000afaff]                           dc.b $00
[000afb00]                           dc.b $00
[000afb01]                           dc.b $00
[000afb02]                           dc.b $00
[000afb03]                           dc.b $00
A_3DBUTTON42:
[000afb04] 0005a4e2                  dc.l A_3Dbutton
[000afb08]                           dc.w $09f1
[000afb0a]                           dc.w $0178
[000afb0c] 00059318                  dc.l Auo_string
[000afb10] 000af4ba                  dc.l PMT15
[000afb14]                           dc.b $00
[000afb15]                           dc.b $00
[000afb16]                           dc.b $00
[000afb17]                           dc.b $00
[000afb18]                           dc.b $00
[000afb19]                           dc.b $00
[000afb1a]                           dc.b $00
[000afb1b]                           dc.b $00
[000afb1c]                           dc.b $00
[000afb1d]                           dc.b $00
[000afb1e]                           dc.b $00
[000afb1f]                           dc.b $00
[000afb20]                           dc.b $00
[000afb21]                           dc.b $00
[000afb22]                           dc.b $00
[000afb23]                           dc.b $00
A_3DBUTTON43:
[000afb24] 0005a4e2                  dc.l A_3Dbutton
[000afb28]                           dc.w $09f1
[000afb2a]                           dc.w $0178
[000afb2c] 00059318                  dc.l Auo_string
[000afb30] 000af4cd                  dc.l PMT16
[000afb34]                           dc.b $00
[000afb35]                           dc.b $00
[000afb36]                           dc.b $00
[000afb37]                           dc.b $00
[000afb38]                           dc.b $00
[000afb39]                           dc.b $00
[000afb3a]                           dc.b $00
[000afb3b]                           dc.b $00
[000afb3c]                           dc.b $00
[000afb3d]                           dc.b $00
[000afb3e]                           dc.b $00
[000afb3f]                           dc.b $00
[000afb40]                           dc.b $00
[000afb41]                           dc.b $00
[000afb42]                           dc.b $00
[000afb43]                           dc.b $00
A_3DBUTTON44:
[000afb44] 0005a4e2                  dc.l A_3Dbutton
[000afb48]                           dc.w $09f1
[000afb4a]                           dc.w $0178
[000afb4c] 00059318                  dc.l Auo_string
[000afb50] 000af4df                  dc.l PMT17
[000afb54]                           dc.b $00
[000afb55]                           dc.b $00
[000afb56]                           dc.b $00
[000afb57]                           dc.b $00
[000afb58]                           dc.b $00
[000afb59]                           dc.b $00
[000afb5a]                           dc.b $00
[000afb5b]                           dc.b $00
[000afb5c]                           dc.b $00
[000afb5d]                           dc.b $00
[000afb5e]                           dc.b $00
[000afb5f]                           dc.b $00
[000afb60]                           dc.b $00
[000afb61]                           dc.b $00
[000afb62]                           dc.b $00
[000afb63]                           dc.b $00
A_3DBUTTON45:
[000afb64] 0005a4e2                  dc.l A_3Dbutton
[000afb68]                           dc.w $09f1
[000afb6a]                           dc.w $0178
[000afb6c] 00059318                  dc.l Auo_string
[000afb70] 000af4f6                  dc.l PMT18
[000afb74]                           dc.b $00
[000afb75]                           dc.b $00
[000afb76]                           dc.b $00
[000afb77]                           dc.b $00
[000afb78]                           dc.b $00
[000afb79]                           dc.b $00
[000afb7a]                           dc.b $00
[000afb7b]                           dc.b $00
[000afb7c]                           dc.b $00
[000afb7d]                           dc.b $00
[000afb7e]                           dc.b $00
[000afb7f]                           dc.b $00
[000afb80]                           dc.b $00
[000afb81]                           dc.b $00
[000afb82]                           dc.b $00
[000afb83]                           dc.b $00
A_3DBUTTON46:
[000afb84] 0005a4e2                  dc.l A_3Dbutton
[000afb88]                           dc.w $09f1
[000afb8a]                           dc.w $0178
[000afb8c] 00059318                  dc.l Auo_string
[000afb90] 000af507                  dc.l PMT19
[000afb94]                           dc.b $00
[000afb95]                           dc.b $00
[000afb96]                           dc.b $00
[000afb97]                           dc.b $00
[000afb98]                           dc.b $00
[000afb99]                           dc.b $00
[000afb9a]                           dc.b $00
[000afb9b]                           dc.b $00
[000afb9c]                           dc.b $00
[000afb9d]                           dc.b $00
[000afb9e]                           dc.b $00
[000afb9f]                           dc.b $00
[000afba0]                           dc.b $00
[000afba1]                           dc.b $00
[000afba2]                           dc.b $00
[000afba3]                           dc.b $00
A_ARROWS02:
[000afba4] 0005b212                  dc.l A_arrows
[000afba8]                           dc.w $1301
[000afbaa]                           dc.b $00
[000afbab]                           dc.b $01
[000afbac]                           dc.b $00
[000afbad]                           dc.b $00
[000afbae]                           dc.b $00
[000afbaf]                           dc.b $00
[000afbb0]                           dc.b $00
[000afbb1]                           dc.b $00
[000afbb2]                           dc.b $00
[000afbb3]                           dc.b $00
[000afbb4]                           dc.b $00
[000afbb5]                           dc.b $00
[000afbb6]                           dc.b $00
[000afbb7]                           dc.b $00
[000afbb8]                           dc.b $00
[000afbb9]                           dc.b $00
[000afbba]                           dc.b $00
[000afbbb]                           dc.b $00
[000afbbc]                           dc.b $00
[000afbbd]                           dc.b $00
[000afbbe]                           dc.b $00
[000afbbf]                           dc.b $00
[000afbc0]                           dc.b $00
[000afbc1]                           dc.b $00
[000afbc2]                           dc.b $00
[000afbc3]                           dc.b $00
A_BOXED01:
[000afbc4] 0005e9d2                  dc.l A_boxed
[000afbc8]                           dc.w $9000
[000afbca]                           dc.w $ff12
[000afbcc] 0005e010                  dc.l Auo_boxed
[000afbd0]                           dc.b $00
[000afbd1]                           dc.b $00
[000afbd2]                           dc.b $00
[000afbd3]                           dc.b $00
[000afbd4]                           dc.b $00
[000afbd5]                           dc.b $00
[000afbd6]                           dc.b $00
[000afbd7]                           dc.b $00
[000afbd8]                           dc.b $00
[000afbd9]                           dc.b $00
[000afbda]                           dc.b $00
[000afbdb]                           dc.b $00
[000afbdc]                           dc.b $00
[000afbdd]                           dc.b $00
[000afbde]                           dc.b $00
[000afbdf]                           dc.b $00
[000afbe0]                           dc.b $00
[000afbe1]                           dc.b $00
[000afbe2]                           dc.b $00
[000afbe3]                           dc.b $00
A_BOXED02:
[000afbe4] 0005e9d2                  dc.l A_boxed
[000afbe8]                           dc.w $9038
[000afbea]                           dc.w $ff12
[000afbec] 0005e010                  dc.l Auo_boxed
[000afbf0]                           dc.b $00
[000afbf1]                           dc.b $00
[000afbf2]                           dc.b $00
[000afbf3]                           dc.b $00
[000afbf4]                           dc.b $00
[000afbf5]                           dc.b $00
[000afbf6]                           dc.b $00
[000afbf7]                           dc.b $00
[000afbf8]                           dc.b $00
[000afbf9]                           dc.b $00
[000afbfa]                           dc.b $00
[000afbfb]                           dc.b $00
[000afbfc]                           dc.b $00
[000afbfd]                           dc.b $00
[000afbfe]                           dc.b $00
[000afbff]                           dc.b $00
[000afc00]                           dc.b $00
[000afc01]                           dc.b $00
[000afc02]                           dc.b $00
[000afc03]                           dc.b $00
A_BOXED03:
[000afc04] 0005e9d2                  dc.l A_boxed
[000afc08]                           dc.w $9070
[000afc0a]                           dc.w $0512
[000afc0c] 0005e010                  dc.l Auo_boxed
[000afc10]                           dc.b $00
[000afc11]                           dc.b $00
[000afc12]                           dc.b $00
[000afc13]                           dc.b $00
[000afc14]                           dc.b $00
[000afc15]                           dc.b $00
[000afc16]                           dc.b $00
[000afc17]                           dc.b $00
[000afc18]                           dc.b $00
[000afc19]                           dc.b $00
[000afc1a]                           dc.b $00
[000afc1b]                           dc.b $00
[000afc1c]                           dc.b $00
[000afc1d]                           dc.b $00
[000afc1e]                           dc.b $00
[000afc1f]                           dc.b $00
[000afc20]                           dc.b $00
[000afc21]                           dc.b $00
[000afc22]                           dc.b $00
[000afc23]                           dc.b $00
A_BOXED04:
[000afc24] 0005e9d2                  dc.l A_boxed
[000afc28]                           dc.w $9038
[000afc2a]                           dc.w $ff12
[000afc2c] 0005e010                  dc.l Auo_boxed
[000afc30]                           dc.b $00
[000afc31]                           dc.b $00
[000afc32]                           dc.b $00
[000afc33]                           dc.b $00
[000afc34]                           dc.b $00
[000afc35]                           dc.b $00
[000afc36]                           dc.b $00
[000afc37]                           dc.b $00
[000afc38]                           dc.b $00
[000afc39]                           dc.b $00
[000afc3a]                           dc.b $00
[000afc3b]                           dc.b $00
[000afc3c] 000af305                  dc.l BUBBLE_03
[000afc40]                           dc.b $00
[000afc41]                           dc.b $00
[000afc42]                           dc.b $00
[000afc43]                           dc.b $00
A_BOXED05:
[000afc44] 0005e9d2                  dc.l A_boxed
[000afc48]                           dc.w $9038
[000afc4a]                           dc.w $ff12
[000afc4c] 0005e010                  dc.l Auo_boxed
[000afc50]                           dc.b $00
[000afc51]                           dc.b $00
[000afc52]                           dc.b $00
[000afc53]                           dc.b $00
[000afc54]                           dc.b $00
[000afc55]                           dc.b $00
[000afc56]                           dc.b $00
[000afc57]                           dc.b $00
[000afc58]                           dc.b $00
[000afc59]                           dc.b $00
[000afc5a]                           dc.b $00
[000afc5b]                           dc.b $00
[000afc5c] 000af357                  dc.l BUBBLE_04
[000afc60]                           dc.b $00
[000afc61]                           dc.b $00
[000afc62]                           dc.b $00
[000afc63]                           dc.b $00
A_CHECKBOX01:
[000afc64] 000593fc                  dc.l A_checkbox
[000afc68]                           dc.b $00
[000afc69]                           dc.b $00
[000afc6a]                           dc.b $00
[000afc6b]                           dc.b $01
[000afc6c] 00059318                  dc.l Auo_string
[000afc70] 000af5a8                  dc.l TEXT_01
[000afc74]                           dc.b $00
[000afc75]                           dc.b $00
[000afc76]                           dc.b $00
[000afc77]                           dc.b $00
[000afc78]                           dc.b $00
[000afc79]                           dc.b $00
[000afc7a]                           dc.b $00
[000afc7b]                           dc.b $00
[000afc7c]                           dc.b $00
[000afc7d]                           dc.b $00
[000afc7e]                           dc.b $00
[000afc7f]                           dc.b $00
[000afc80]                           dc.b $00
[000afc81]                           dc.b $00
[000afc82]                           dc.b $00
[000afc83]                           dc.b $00
A_CHECKBOX02:
[000afc84] 000593fc                  dc.l A_checkbox
[000afc88]                           dc.b $00
[000afc89]                           dc.b $00
[000afc8a]                           dc.b $00
[000afc8b]                           dc.b $01
[000afc8c] 00059318                  dc.l Auo_string
[000afc90] 000af5e3                  dc.l TEXT_07
[000afc94]                           dc.b $00
[000afc95]                           dc.b $00
[000afc96]                           dc.b $00
[000afc97]                           dc.b $00
[000afc98]                           dc.b $00
[000afc99]                           dc.b $00
[000afc9a]                           dc.b $00
[000afc9b]                           dc.b $00
[000afc9c]                           dc.b $00
[000afc9d]                           dc.b $00
[000afc9e]                           dc.b $00
[000afc9f]                           dc.b $00
[000afca0]                           dc.b $00
[000afca1]                           dc.b $00
[000afca2]                           dc.b $00
[000afca3]                           dc.b $00
A_CHECKBOX03:
[000afca4] 000593fc                  dc.l A_checkbox
[000afca8]                           dc.b $00
[000afca9]                           dc.b $00
[000afcaa]                           dc.b $00
[000afcab]                           dc.b $01
[000afcac] 00059318                  dc.l Auo_string
[000afcb0] 000af5b1                  dc.l TEXT_02
[000afcb4]                           dc.b $00
[000afcb5]                           dc.b $00
[000afcb6]                           dc.b $00
[000afcb7]                           dc.b $00
[000afcb8]                           dc.b $00
[000afcb9]                           dc.b $00
[000afcba]                           dc.b $00
[000afcbb]                           dc.b $00
[000afcbc]                           dc.b $00
[000afcbd]                           dc.b $00
[000afcbe]                           dc.b $00
[000afcbf]                           dc.b $00
[000afcc0]                           dc.b $00
[000afcc1]                           dc.b $00
[000afcc2]                           dc.b $00
[000afcc3]                           dc.b $00
A_INNERFRAME01:
[000afcc4] 00059f9c                  dc.l A_innerframe
[000afcc8]                           dc.w $1800
[000afcca]                           dc.w $8f19
[000afccc] 00059318                  dc.l Auo_string
[000afcd0] 000af608                  dc.l TEXT_10
[000afcd4]                           dc.b $00
[000afcd5]                           dc.b $00
[000afcd6]                           dc.b $00
[000afcd7]                           dc.b $00
[000afcd8]                           dc.b $00
[000afcd9]                           dc.b $00
[000afcda]                           dc.b $00
[000afcdb]                           dc.b $00
[000afcdc]                           dc.b $00
[000afcdd]                           dc.b $00
[000afcde]                           dc.b $00
[000afcdf]                           dc.b $00
[000afce0]                           dc.b $00
[000afce1]                           dc.b $00
[000afce2]                           dc.b $00
[000afce3]                           dc.b $00
A_INNERFRAME02:
[000afce4] 00059f9c                  dc.l A_innerframe
[000afce8]                           dc.w $1800
[000afcea]                           dc.w $8f19
[000afcec] 00059318                  dc.l Auo_string
[000afcf0] 000af635                  dc.l TEXT_14
[000afcf4]                           dc.b $00
[000afcf5]                           dc.b $00
[000afcf6]                           dc.b $00
[000afcf7]                           dc.b $00
[000afcf8]                           dc.b $00
[000afcf9]                           dc.b $00
[000afcfa]                           dc.b $00
[000afcfb]                           dc.b $00
[000afcfc]                           dc.b $00
[000afcfd]                           dc.b $00
[000afcfe]                           dc.b $00
[000afcff]                           dc.b $00
[000afd00]                           dc.b $00
[000afd01]                           dc.b $00
[000afd02]                           dc.b $00
[000afd03]                           dc.b $00
A_INNERFRAME03:
[000afd04] 00059f9c                  dc.l A_innerframe
[000afd08]                           dc.w $1800
[000afd0a]                           dc.w $8f19
[000afd0c] 00059318                  dc.l Auo_string
[000afd10] 000af5c3                  dc.l TEXT_05
[000afd14]                           dc.b $00
[000afd15]                           dc.b $00
[000afd16]                           dc.b $00
[000afd17]                           dc.b $00
[000afd18]                           dc.b $00
[000afd19]                           dc.b $00
[000afd1a]                           dc.b $00
[000afd1b]                           dc.b $00
[000afd1c]                           dc.b $00
[000afd1d]                           dc.b $00
[000afd1e]                           dc.b $00
[000afd1f]                           dc.b $00
[000afd20]                           dc.b $00
[000afd21]                           dc.b $00
[000afd22]                           dc.b $00
[000afd23]                           dc.b $00
A_INNERFRAME04:
[000afd24] 00059f9c                  dc.l A_innerframe
[000afd28]                           dc.w $1800
[000afd2a]                           dc.w $8f19
[000afd2c] 00059318                  dc.l Auo_string
[000afd30] 000af650                  dc.l TEXT_18
[000afd34]                           dc.b $00
[000afd35]                           dc.b $00
[000afd36]                           dc.b $00
[000afd37]                           dc.b $00
[000afd38]                           dc.b $00
[000afd39]                           dc.b $00
[000afd3a]                           dc.b $00
[000afd3b]                           dc.b $00
[000afd3c]                           dc.b $00
[000afd3d]                           dc.b $00
[000afd3e]                           dc.b $00
[000afd3f]                           dc.b $00
[000afd40]                           dc.b $00
[000afd41]                           dc.b $00
[000afd42]                           dc.b $00
[000afd43]                           dc.b $00
POP_MASKSEL:
[000afd44]                           dc.w $ffff
[000afd46]                           dc.b $00
[000afd47]                           dc.b $01
[000afd48]                           dc.b $00
[000afd49]                           dc.b $39
[000afd4a]                           dc.b $00
[000afd4b]                           dc.b $14
[000afd4c]                           dc.b $00
[000afd4d]                           dc.b $00
[000afd4e]                           dc.b $00
[000afd4f]                           dc.b $20
[000afd50]                           dc.b $00
[000afd51]                           dc.b $ff
[000afd52]                           dc.w $1100
[000afd54]                           dc.b $00
[000afd55]                           dc.b $00
[000afd56]                           dc.b $00
[000afd57]                           dc.b $00
[000afd58]                           dc.b $00
[000afd59]                           dc.b $16
[000afd5a]                           dc.b $00
[000afd5b]                           dc.b $09
_01_POP_MASKSEL:
[000afd5c]                           dc.b $00
[000afd5d]                           dc.b $03
[000afd5e]                           dc.w $ffff
[000afd60]                           dc.w $ffff
[000afd62]                           dc.b $00
[000afd63]                           dc.b $18
[000afd64]                           dc.b $00
[000afd65]                           dc.b $01
[000afd66]                           dc.b $00
[000afd67]                           dc.b $00
[000afd68] 000af704                  dc.l A_3DBUTTON02
[000afd6c]                           dc.b $00
[000afd6d]                           dc.b $00
[000afd6e]                           dc.b $00
[000afd6f]                           dc.b $00
[000afd70]                           dc.b $00
[000afd71]                           dc.b $16
[000afd72]                           dc.b $00
[000afd73]                           dc.b $01
_01aPOP_MASKSEL:
[000afd74]                           dc.b $00
[000afd75]                           dc.b $00
[000afd76]                           dc.b $00
[000afd77]                           dc.b $00
[000afd78]                           dc.b $00
[000afd79]                           dc.b $00
[000afd7a]                           dc.b $00
[000afd7b]                           dc.b $00
[000afd7c]                           dc.w $8000
[000afd7e]                           dc.b $00
[000afd7f]                           dc.b $00
[000afd80]                           dc.b $00
[000afd81]                           dc.b $00
[000afd82]                           dc.b $00
[000afd83]                           dc.b $00
[000afd84]                           dc.b $00
[000afd85]                           dc.b $00
[000afd86]                           dc.b $00
[000afd87]                           dc.b $00
[000afd88]                           dc.b $00
[000afd89]                           dc.b $00
[000afd8a]                           dc.b $00
[000afd8b]                           dc.b $00
_03_POP_MASKSEL:
[000afd8c]                           dc.b $00
[000afd8d]                           dc.b $05
[000afd8e]                           dc.w $ffff
[000afd90]                           dc.w $ffff
[000afd92]                           dc.b $00
[000afd93]                           dc.b $18
[000afd94]                           dc.b $00
[000afd95]                           dc.b $01
[000afd96]                           dc.b $00
[000afd97]                           dc.b $00
[000afd98] 000af824                  dc.l A_3DBUTTON11
[000afd9c]                           dc.b $00
[000afd9d]                           dc.b $00
[000afd9e]                           dc.b $00
[000afd9f]                           dc.b $01
[000afda0]                           dc.b $00
[000afda1]                           dc.b $16
[000afda2]                           dc.b $00
[000afda3]                           dc.b $01
_03aPOP_MASKSEL:
[000afda4]                           dc.b $00
[000afda5]                           dc.b $00
[000afda6]                           dc.b $00
[000afda7]                           dc.b $00
[000afda8]                           dc.b $00
[000afda9]                           dc.b $00
[000afdaa]                           dc.b $00
[000afdab]                           dc.b $00
[000afdac]                           dc.w $8000
[000afdae]                           dc.b $00
[000afdaf]                           dc.b $00
[000afdb0]                           dc.b $00
[000afdb1]                           dc.b $00
[000afdb2]                           dc.b $00
[000afdb3]                           dc.b $07
[000afdb4]                           dc.b $00
[000afdb5]                           dc.b $00
[000afdb6]                           dc.b $00
[000afdb7]                           dc.b $00
[000afdb8]                           dc.b $00
[000afdb9]                           dc.b $00
[000afdba]                           dc.b $00
[000afdbb]                           dc.b $00
_05_POP_MASKSEL:
[000afdbc]                           dc.b $00
[000afdbd]                           dc.b $07
[000afdbe]                           dc.w $ffff
[000afdc0]                           dc.w $ffff
[000afdc2]                           dc.b $00
[000afdc3]                           dc.b $18
[000afdc4]                           dc.b $00
[000afdc5]                           dc.b $01
[000afdc6]                           dc.b $00
[000afdc7]                           dc.b $00
[000afdc8] 000af864                  dc.l A_3DBUTTON13
[000afdcc]                           dc.b $00
[000afdcd]                           dc.b $00
[000afdce]                           dc.b $00
[000afdcf]                           dc.b $02
[000afdd0]                           dc.b $00
[000afdd1]                           dc.b $16
[000afdd2]                           dc.b $00
[000afdd3]                           dc.b $01
_05aPOP_MASKSEL:
[000afdd4]                           dc.b $00
[000afdd5]                           dc.b $00
[000afdd6]                           dc.b $00
[000afdd7]                           dc.b $00
[000afdd8]                           dc.b $00
[000afdd9]                           dc.b $00
[000afdda]                           dc.b $00
[000afddb]                           dc.b $00
[000afddc]                           dc.w $8000
[000afdde]                           dc.b $00
[000afddf]                           dc.b $00
[000afde0]                           dc.b $00
[000afde1]                           dc.b $00
[000afde2]                           dc.b $00
[000afde3]                           dc.b $08
[000afde4]                           dc.b $00
[000afde5]                           dc.b $00
[000afde6]                           dc.b $00
[000afde7]                           dc.b $00
[000afde8]                           dc.b $00
[000afde9]                           dc.b $00
[000afdea]                           dc.b $00
[000afdeb]                           dc.b $00
_07_POP_MASKSEL:
[000afdec]                           dc.b $00
[000afded]                           dc.b $09
[000afdee]                           dc.w $ffff
[000afdf0]                           dc.w $ffff
[000afdf2]                           dc.b $00
[000afdf3]                           dc.b $18
[000afdf4]                           dc.b $00
[000afdf5]                           dc.b $01
[000afdf6]                           dc.b $00
[000afdf7]                           dc.b $00
[000afdf8] 000af884                  dc.l A_3DBUTTON14
[000afdfc]                           dc.b $00
[000afdfd]                           dc.b $00
[000afdfe]                           dc.b $00
[000afdff]                           dc.b $03
[000afe00]                           dc.b $00
[000afe01]                           dc.b $16
[000afe02]                           dc.b $00
[000afe03]                           dc.b $01
_07aPOP_MASKSEL:
[000afe04]                           dc.b $00
[000afe05]                           dc.b $00
[000afe06]                           dc.b $00
[000afe07]                           dc.b $00
[000afe08]                           dc.b $00
[000afe09]                           dc.b $00
[000afe0a]                           dc.b $00
[000afe0b]                           dc.b $00
[000afe0c]                           dc.w $8000
[000afe0e]                           dc.b $00
[000afe0f]                           dc.b $00
[000afe10]                           dc.b $00
[000afe11]                           dc.b $00
[000afe12]                           dc.b $00
[000afe13]                           dc.b $09
[000afe14]                           dc.b $00
[000afe15]                           dc.b $00
[000afe16]                           dc.b $00
[000afe17]                           dc.b $00
[000afe18]                           dc.b $00
[000afe19]                           dc.b $00
[000afe1a]                           dc.b $00
[000afe1b]                           dc.b $00
_09_POP_MASKSEL:
[000afe1c]                           dc.b $00
[000afe1d]                           dc.b $11
[000afe1e]                           dc.b $00
[000afe1f]                           dc.b $0a
[000afe20]                           dc.b $00
[000afe21]                           dc.b $0a
[000afe22]                           dc.b $00
[000afe23]                           dc.b $18
[000afe24]                           dc.b $00
[000afe25]                           dc.b $01
[000afe26]                           dc.b $00
[000afe27]                           dc.b $00
[000afe28] 000af764                  dc.l A_3DBUTTON05
[000afe2c]                           dc.b $00
[000afe2d]                           dc.b $00
[000afe2e]                           dc.b $00
[000afe2f]                           dc.b $04
[000afe30]                           dc.b $00
[000afe31]                           dc.b $16
[000afe32]                           dc.b $00
[000afe33]                           dc.b $01
_10_POP_MASKSEL:
[000afe34]                           dc.b $00
[000afe35]                           dc.b $09
[000afe36]                           dc.b $00
[000afe37]                           dc.b $0b
[000afe38]                           dc.b $00
[000afe39]                           dc.b $0f
[000afe3a]                           dc.b $00
[000afe3b]                           dc.b $14
[000afe3c]                           dc.b $00
[000afe3d]                           dc.b $80
[000afe3e]                           dc.b $00
[000afe3f]                           dc.b $20
[000afe40]                           dc.b $00
[000afe41]                           dc.b $ff
[000afe42]                           dc.w $1101
[000afe44]                           dc.b $00
[000afe45]                           dc.b $00
[000afe46]                           dc.b $00
[000afe47]                           dc.b $00
[000afe48]                           dc.b $00
[000afe49]                           dc.b $12
[000afe4a]                           dc.b $00
[000afe4b]                           dc.b $03
_11_POP_MASKSEL:
[000afe4c]                           dc.b $00
[000afe4d]                           dc.b $0d
[000afe4e]                           dc.w $ffff
[000afe50]                           dc.w $ffff
[000afe52]                           dc.b $00
[000afe53]                           dc.b $18
[000afe54]                           dc.b $00
[000afe55]                           dc.b $01
[000afe56]                           dc.b $00
[000afe57]                           dc.b $00
[000afe58] 000afa24                  dc.l A_3DBUTTON35
[000afe5c]                           dc.b $00
[000afe5d]                           dc.b $00
[000afe5e]                           dc.b $00
[000afe5f]                           dc.b $00
[000afe60]                           dc.b $00
[000afe61]                           dc.b $12
[000afe62]                           dc.b $00
[000afe63]                           dc.b $01
_11aPOP_MASKSEL:
[000afe64]                           dc.b $00
[000afe65]                           dc.b $00
[000afe66]                           dc.b $00
[000afe67]                           dc.b $00
[000afe68]                           dc.b $00
[000afe69]                           dc.b $00
[000afe6a]                           dc.b $00
[000afe6b]                           dc.b $00
[000afe6c]                           dc.w $8000
[000afe6e]                           dc.b $00
[000afe6f]                           dc.b $00
[000afe70]                           dc.b $00
[000afe71]                           dc.b $00
[000afe72]                           dc.b $00
[000afe73]                           dc.b $01
[000afe74]                           dc.b $00
[000afe75]                           dc.b $00
[000afe76]                           dc.b $00
[000afe77]                           dc.b $00
[000afe78]                           dc.b $00
[000afe79]                           dc.b $00
[000afe7a]                           dc.b $00
[000afe7b]                           dc.b $00
_13_POP_MASKSEL:
[000afe7c]                           dc.b $00
[000afe7d]                           dc.b $0f
[000afe7e]                           dc.w $ffff
[000afe80]                           dc.w $ffff
[000afe82]                           dc.b $00
[000afe83]                           dc.b $18
[000afe84]                           dc.b $00
[000afe85]                           dc.b $01
[000afe86]                           dc.b $00
[000afe87]                           dc.b $00
[000afe88] 000afa44                  dc.l A_3DBUTTON36
[000afe8c]                           dc.b $00
[000afe8d]                           dc.b $00
[000afe8e]                           dc.b $00
[000afe8f]                           dc.b $01
[000afe90]                           dc.b $00
[000afe91]                           dc.b $12
[000afe92]                           dc.b $00
[000afe93]                           dc.b $01
_13aPOP_MASKSEL:
[000afe94]                           dc.b $00
[000afe95]                           dc.b $00
[000afe96]                           dc.b $00
[000afe97]                           dc.b $00
[000afe98]                           dc.b $00
[000afe99]                           dc.b $00
[000afe9a]                           dc.b $00
[000afe9b]                           dc.b $00
[000afe9c]                           dc.w $8000
[000afe9e]                           dc.b $00
[000afe9f]                           dc.b $00
[000afea0]                           dc.b $00
[000afea1]                           dc.b $00
[000afea2]                           dc.b $00
[000afea3]                           dc.b $05
[000afea4]                           dc.b $00
[000afea5]                           dc.b $00
[000afea6]                           dc.b $00
[000afea7]                           dc.b $00
[000afea8]                           dc.b $00
[000afea9]                           dc.b $00
[000afeaa]                           dc.b $00
[000afeab]                           dc.b $00
_15_POP_MASKSEL:
[000afeac]                           dc.b $00
[000afead]                           dc.b $0a
[000afeae]                           dc.w $ffff
[000afeb0]                           dc.w $ffff
[000afeb2]                           dc.b $00
[000afeb3]                           dc.b $18
[000afeb4]                           dc.b $00
[000afeb5]                           dc.b $01
[000afeb6]                           dc.b $00
[000afeb7]                           dc.b $00
[000afeb8] 000afa64                  dc.l A_3DBUTTON37
[000afebc]                           dc.b $00
[000afebd]                           dc.b $00
[000afebe]                           dc.b $00
[000afebf]                           dc.b $02
[000afec0]                           dc.b $00
[000afec1]                           dc.b $12
[000afec2]                           dc.b $00
[000afec3]                           dc.b $01
_15aPOP_MASKSEL:
[000afec4]                           dc.b $00
[000afec5]                           dc.b $00
[000afec6]                           dc.b $00
[000afec7]                           dc.b $00
[000afec8]                           dc.b $00
[000afec9]                           dc.b $00
[000afeca]                           dc.b $00
[000afecb]                           dc.b $00
[000afecc]                           dc.w $8000
[000afece]                           dc.b $00
[000afecf]                           dc.b $00
[000afed0]                           dc.b $00
[000afed1]                           dc.b $00
[000afed2]                           dc.b $00
[000afed3]                           dc.b $06
[000afed4]                           dc.b $00
[000afed5]                           dc.b $00
[000afed6]                           dc.b $00
[000afed7]                           dc.b $00
[000afed8]                           dc.b $00
[000afed9]                           dc.b $00
[000afeda]                           dc.b $00
[000afedb]                           dc.b $00
_17_POP_MASKSEL:
[000afedc]                           dc.b $00
[000afedd]                           dc.b $19
[000afede]                           dc.b $00
[000afedf]                           dc.b $12
[000afee0]                           dc.b $00
[000afee1]                           dc.b $12
[000afee2]                           dc.b $00
[000afee3]                           dc.b $18
[000afee4]                           dc.b $00
[000afee5]                           dc.b $01
[000afee6]                           dc.b $00
[000afee7]                           dc.b $00
[000afee8] 000af6e4                  dc.l A_3DBUTTON01
[000afeec]                           dc.b $00
[000afeed]                           dc.b $00
[000afeee]                           dc.b $00
[000afeef]                           dc.b $05
[000afef0]                           dc.b $00
[000afef1]                           dc.b $16
[000afef2]                           dc.b $00
[000afef3]                           dc.b $01
_18_POP_MASKSEL:
[000afef4]                           dc.b $00
[000afef5]                           dc.b $11
[000afef6]                           dc.b $00
[000afef7]                           dc.b $13
[000afef8]                           dc.b $00
[000afef9]                           dc.b $17
[000afefa]                           dc.b $00
[000afefb]                           dc.b $14
[000afefc]                           dc.b $00
[000afefd]                           dc.b $80
[000afefe]                           dc.b $00
[000afeff]                           dc.b $20
[000aff00]                           dc.b $00
[000aff01]                           dc.b $ff
[000aff02]                           dc.w $1101
[000aff04]                           dc.b $00
[000aff05]                           dc.b $00
[000aff06]                           dc.b $00
[000aff07]                           dc.b $00
[000aff08]                           dc.b $00
[000aff09]                           dc.b $13
[000aff0a]                           dc.b $00
[000aff0b]                           dc.b $03
_19_POP_MASKSEL:
[000aff0c]                           dc.b $00
[000aff0d]                           dc.b $15
[000aff0e]                           dc.w $ffff
[000aff10]                           dc.w $ffff
[000aff12]                           dc.b $00
[000aff13]                           dc.b $18
[000aff14]                           dc.b $00
[000aff15]                           dc.b $01
[000aff16]                           dc.b $00
[000aff17]                           dc.b $00
[000aff18] 000af7c4                  dc.l A_3DBUTTON08
[000aff1c]                           dc.b $00
[000aff1d]                           dc.b $00
[000aff1e]                           dc.b $00
[000aff1f]                           dc.b $00
[000aff20]                           dc.b $00
[000aff21]                           dc.b $13
[000aff22]                           dc.b $00
[000aff23]                           dc.b $01
_19aPOP_MASKSEL:
[000aff24]                           dc.b $00
[000aff25]                           dc.b $00
[000aff26]                           dc.b $00
[000aff27]                           dc.b $00
[000aff28]                           dc.b $00
[000aff29]                           dc.b $00
[000aff2a]                           dc.b $00
[000aff2b]                           dc.b $00
[000aff2c]                           dc.w $8000
[000aff2e]                           dc.b $00
[000aff2f]                           dc.b $00
[000aff30]                           dc.b $00
[000aff31]                           dc.b $00
[000aff32]                           dc.b $00
[000aff33]                           dc.b $02
[000aff34]                           dc.b $00
[000aff35]                           dc.b $00
[000aff36]                           dc.b $00
[000aff37]                           dc.b $00
[000aff38]                           dc.b $00
[000aff39]                           dc.b $00
[000aff3a]                           dc.b $00
[000aff3b]                           dc.b $00
_21_POP_MASKSEL:
[000aff3c]                           dc.b $00
[000aff3d]                           dc.b $17
[000aff3e]                           dc.w $ffff
[000aff40]                           dc.w $ffff
[000aff42]                           dc.b $00
[000aff43]                           dc.b $18
[000aff44]                           dc.b $00
[000aff45]                           dc.b $01
[000aff46]                           dc.b $00
[000aff47]                           dc.b $00
[000aff48] 000af804                  dc.l A_3DBUTTON10
[000aff4c]                           dc.b $00
[000aff4d]                           dc.b $00
[000aff4e]                           dc.b $00
[000aff4f]                           dc.b $01
[000aff50]                           dc.b $00
[000aff51]                           dc.b $13
[000aff52]                           dc.b $00
[000aff53]                           dc.b $01
_21aPOP_MASKSEL:
[000aff54]                           dc.b $00
[000aff55]                           dc.b $00
[000aff56]                           dc.b $00
[000aff57]                           dc.b $00
[000aff58]                           dc.b $00
[000aff59]                           dc.b $00
[000aff5a]                           dc.b $00
[000aff5b]                           dc.b $00
[000aff5c]                           dc.w $8000
[000aff5e]                           dc.b $00
[000aff5f]                           dc.b $00
[000aff60]                           dc.b $00
[000aff61]                           dc.b $00
[000aff62]                           dc.b $00
[000aff63]                           dc.b $03
[000aff64]                           dc.b $00
[000aff65]                           dc.b $00
[000aff66]                           dc.b $00
[000aff67]                           dc.b $00
[000aff68]                           dc.b $00
[000aff69]                           dc.b $00
[000aff6a]                           dc.b $00
[000aff6b]                           dc.b $00
_23_POP_MASKSEL:
[000aff6c]                           dc.b $00
[000aff6d]                           dc.b $12
[000aff6e]                           dc.w $ffff
[000aff70]                           dc.w $ffff
[000aff72]                           dc.b $00
[000aff73]                           dc.b $18
[000aff74]                           dc.b $00
[000aff75]                           dc.b $01
[000aff76]                           dc.b $00
[000aff77]                           dc.b $00
[000aff78] 000afa84                  dc.l A_3DBUTTON38
[000aff7c]                           dc.b $00
[000aff7d]                           dc.b $00
[000aff7e]                           dc.b $00
[000aff7f]                           dc.b $02
[000aff80]                           dc.b $00
[000aff81]                           dc.b $13
[000aff82]                           dc.b $00
[000aff83]                           dc.b $01
_23aPOP_MASKSEL:
[000aff84]                           dc.b $00
[000aff85]                           dc.b $00
[000aff86]                           dc.b $00
[000aff87]                           dc.b $00
[000aff88]                           dc.b $00
[000aff89]                           dc.b $00
[000aff8a]                           dc.b $00
[000aff8b]                           dc.b $00
[000aff8c]                           dc.w $8000
[000aff8e]                           dc.b $00
[000aff8f]                           dc.b $00
[000aff90]                           dc.b $00
[000aff91]                           dc.b $00
[000aff92]                           dc.b $00
[000aff93]                           dc.b $04
[000aff94]                           dc.b $00
[000aff95]                           dc.b $00
[000aff96]                           dc.b $00
[000aff97]                           dc.b $00
[000aff98]                           dc.b $00
[000aff99]                           dc.b $00
[000aff9a]                           dc.b $00
[000aff9b]                           dc.b $00
_25_POP_MASKSEL:
[000aff9c]                           dc.b $00
[000aff9d]                           dc.b $2f
[000aff9e]                           dc.b $00
[000aff9f]                           dc.b $1a
[000affa0]                           dc.b $00
[000affa1]                           dc.b $1a
[000affa2]                           dc.b $00
[000affa3]                           dc.b $18
[000affa4]                           dc.b $00
[000affa5]                           dc.b $01
[000affa6]                           dc.b $00
[000affa7]                           dc.b $00
[000affa8] 000af724                  dc.l A_3DBUTTON03
[000affac]                           dc.b $00
[000affad]                           dc.b $00
[000affae]                           dc.b $00
[000affaf]                           dc.b $06
[000affb0]                           dc.b $00
[000affb1]                           dc.b $16
[000affb2]                           dc.b $00
[000affb3]                           dc.b $01
_26_POP_MASKSEL:
[000affb4]                           dc.b $00
[000affb5]                           dc.b $19
[000affb6]                           dc.b $00
[000affb7]                           dc.b $1b
[000affb8]                           dc.b $00
[000affb9]                           dc.b $2d
[000affba]                           dc.b $00
[000affbb]                           dc.b $14
[000affbc]                           dc.b $00
[000affbd]                           dc.b $80
[000affbe]                           dc.b $00
[000affbf]                           dc.b $20
[000affc0]                           dc.b $00
[000affc1]                           dc.b $ff
[000affc2]                           dc.w $1101
[000affc4]                           dc.b $00
[000affc5]                           dc.b $00
[000affc6]                           dc.b $00
[000affc7]                           dc.b $00
[000affc8]                           dc.b $00
[000affc9]                           dc.b $17
[000affca]                           dc.b $00
[000affcb]                           dc.b $0a
_27_POP_MASKSEL:
[000affcc]                           dc.b $00
[000affcd]                           dc.b $1d
[000affce]                           dc.w $ffff
[000affd0]                           dc.w $ffff
[000affd2]                           dc.b $00
[000affd3]                           dc.b $18
[000affd4]                           dc.b $00
[000affd5]                           dc.b $01
[000affd6]                           dc.b $00
[000affd7]                           dc.b $00
[000affd8] 000af844                  dc.l A_3DBUTTON12
[000affdc]                           dc.b $00
[000affdd]                           dc.b $00
[000affde]                           dc.b $00
[000affdf]                           dc.b $00
[000affe0]                           dc.b $00
[000affe1]                           dc.b $17
[000affe2]                           dc.b $00
[000affe3]                           dc.b $01
_27aPOP_MASKSEL:
[000affe4]                           dc.b $00
[000affe5]                           dc.b $00
[000affe6]                           dc.b $00
[000affe7]                           dc.b $00
[000affe8]                           dc.b $00
[000affe9]                           dc.b $00
[000affea]                           dc.b $00
[000affeb]                           dc.b $00
[000affec]                           dc.w $8000
[000affee]                           dc.b $00
[000affef]                           dc.b $00
[000afff0]                           dc.b $00
[000afff1]                           dc.b $00
[000afff2]                           dc.b $00
[000afff3]                           dc.b $0a
[000afff4]                           dc.b $00
[000afff5]                           dc.b $00
[000afff6]                           dc.b $00
[000afff7]                           dc.b $00
[000afff8]                           dc.b $00
[000afff9]                           dc.b $00
[000afffa]                           dc.b $00
[000afffb]                           dc.b $00
_29_POP_MASKSEL:
[000afffc]                           dc.b $00
[000afffd]                           dc.b $1f
[000afffe]                           dc.w $ffff
[000b0000]                           dc.w $ffff
[000b0002]                           dc.b $00
[000b0003]                           dc.b $18
[000b0004]                           dc.b $00
[000b0005]                           dc.b $01
[000b0006]                           dc.b $00
[000b0007]                           dc.b $00
[000b0008] 000af8a4                  dc.l A_3DBUTTON15
[000b000c]                           dc.b $00
[000b000d]                           dc.b $00
[000b000e]                           dc.b $00
[000b000f]                           dc.b $01
[000b0010]                           dc.b $00
[000b0011]                           dc.b $17
[000b0012]                           dc.b $00
[000b0013]                           dc.b $01
_29aPOP_MASKSEL:
[000b0014]                           dc.b $00
[000b0015]                           dc.b $00
[000b0016]                           dc.b $00
[000b0017]                           dc.b $00
[000b0018]                           dc.b $00
[000b0019]                           dc.b $00
[000b001a]                           dc.b $00
[000b001b]                           dc.b $00
[000b001c]                           dc.w $8000
[000b001e]                           dc.b $00
[000b001f]                           dc.b $00
[000b0020]                           dc.b $00
[000b0021]                           dc.b $00
[000b0022]                           dc.b $00
[000b0023]                           dc.b $0b
[000b0024]                           dc.b $00
[000b0025]                           dc.b $00
[000b0026]                           dc.b $00
[000b0027]                           dc.b $00
[000b0028]                           dc.b $00
[000b0029]                           dc.b $00
[000b002a]                           dc.b $00
[000b002b]                           dc.b $00
_31_POP_MASKSEL:
[000b002c]                           dc.b $00
[000b002d]                           dc.b $21
[000b002e]                           dc.w $ffff
[000b0030]                           dc.w $ffff
[000b0032]                           dc.b $00
[000b0033]                           dc.b $18
[000b0034]                           dc.b $00
[000b0035]                           dc.b $01
[000b0036]                           dc.b $00
[000b0037]                           dc.b $00
[000b0038] 000afaa4                  dc.l A_3DBUTTON39
[000b003c]                           dc.b $00
[000b003d]                           dc.b $00
[000b003e]                           dc.b $00
[000b003f]                           dc.b $02
[000b0040]                           dc.b $00
[000b0041]                           dc.b $17
[000b0042]                           dc.b $00
[000b0043]                           dc.b $01
_31aPOP_MASKSEL:
[000b0044]                           dc.b $00
[000b0045]                           dc.b $00
[000b0046]                           dc.b $00
[000b0047]                           dc.b $00
[000b0048]                           dc.b $00
[000b0049]                           dc.b $00
[000b004a]                           dc.b $00
[000b004b]                           dc.b $00
[000b004c]                           dc.w $8000
[000b004e]                           dc.b $00
[000b004f]                           dc.b $00
[000b0050]                           dc.b $00
[000b0051]                           dc.b $00
[000b0052]                           dc.b $00
[000b0053]                           dc.b $0c
[000b0054]                           dc.b $00
[000b0055]                           dc.b $00
[000b0056]                           dc.b $00
[000b0057]                           dc.b $00
[000b0058]                           dc.b $00
[000b0059]                           dc.b $00
[000b005a]                           dc.b $00
[000b005b]                           dc.b $00
_33_POP_MASKSEL:
[000b005c]                           dc.b $00
[000b005d]                           dc.b $23
[000b005e]                           dc.w $ffff
[000b0060]                           dc.w $ffff
[000b0062]                           dc.b $00
[000b0063]                           dc.b $18
[000b0064]                           dc.b $00
[000b0065]                           dc.b $01
[000b0066]                           dc.b $00
[000b0067]                           dc.b $00
[000b0068] 000afac4                  dc.l A_3DBUTTON40
[000b006c]                           dc.b $00
[000b006d]                           dc.b $00
[000b006e]                           dc.b $00
[000b006f]                           dc.b $03
[000b0070]                           dc.b $00
[000b0071]                           dc.b $17
[000b0072]                           dc.b $00
[000b0073]                           dc.b $01
_33aPOP_MASKSEL:
[000b0074]                           dc.b $00
[000b0075]                           dc.b $00
[000b0076]                           dc.b $00
[000b0077]                           dc.b $00
[000b0078]                           dc.b $00
[000b0079]                           dc.b $00
[000b007a]                           dc.b $00
[000b007b]                           dc.b $00
[000b007c]                           dc.w $8000
[000b007e]                           dc.b $00
[000b007f]                           dc.b $00
[000b0080]                           dc.b $00
[000b0081]                           dc.b $00
[000b0082]                           dc.b $00
[000b0083]                           dc.b $0d
[000b0084]                           dc.b $00
[000b0085]                           dc.b $00
[000b0086]                           dc.b $00
[000b0087]                           dc.b $00
[000b0088]                           dc.b $00
[000b0089]                           dc.b $00
[000b008a]                           dc.b $00
[000b008b]                           dc.b $00
_35_POP_MASKSEL:
[000b008c]                           dc.b $00
[000b008d]                           dc.b $25
[000b008e]                           dc.w $ffff
[000b0090]                           dc.w $ffff
[000b0092]                           dc.b $00
[000b0093]                           dc.b $18
[000b0094]                           dc.b $00
[000b0095]                           dc.b $01
[000b0096]                           dc.b $00
[000b0097]                           dc.b $00
[000b0098] 000afae4                  dc.l A_3DBUTTON41
[000b009c]                           dc.b $00
[000b009d]                           dc.b $00
[000b009e]                           dc.b $00
[000b009f]                           dc.b $04
[000b00a0]                           dc.b $00
[000b00a1]                           dc.b $17
[000b00a2]                           dc.b $00
[000b00a3]                           dc.b $01
_35aPOP_MASKSEL:
[000b00a4]                           dc.b $00
[000b00a5]                           dc.b $00
[000b00a6]                           dc.b $00
[000b00a7]                           dc.b $00
[000b00a8]                           dc.b $00
[000b00a9]                           dc.b $00
[000b00aa]                           dc.b $00
[000b00ab]                           dc.b $00
[000b00ac]                           dc.w $8000
[000b00ae]                           dc.b $00
[000b00af]                           dc.b $00
[000b00b0]                           dc.b $00
[000b00b1]                           dc.b $00
[000b00b2]                           dc.b $00
[000b00b3]                           dc.b $0e
[000b00b4]                           dc.b $00
[000b00b5]                           dc.b $00
[000b00b6]                           dc.b $00
[000b00b7]                           dc.b $00
[000b00b8]                           dc.b $00
[000b00b9]                           dc.b $00
[000b00ba]                           dc.b $00
[000b00bb]                           dc.b $00
_37_POP_MASKSEL:
[000b00bc]                           dc.b $00
[000b00bd]                           dc.b $27
[000b00be]                           dc.w $ffff
[000b00c0]                           dc.w $ffff
[000b00c2]                           dc.b $00
[000b00c3]                           dc.b $18
[000b00c4]                           dc.b $00
[000b00c5]                           dc.b $01
[000b00c6]                           dc.b $00
[000b00c7]                           dc.b $00
[000b00c8] 000afb04                  dc.l A_3DBUTTON42
[000b00cc]                           dc.b $00
[000b00cd]                           dc.b $00
[000b00ce]                           dc.b $00
[000b00cf]                           dc.b $05
[000b00d0]                           dc.b $00
[000b00d1]                           dc.b $17
[000b00d2]                           dc.b $00
[000b00d3]                           dc.b $01
_37aPOP_MASKSEL:
[000b00d4]                           dc.b $00
[000b00d5]                           dc.b $00
[000b00d6]                           dc.b $00
[000b00d7]                           dc.b $00
[000b00d8]                           dc.b $00
[000b00d9]                           dc.b $00
[000b00da]                           dc.b $00
[000b00db]                           dc.b $00
[000b00dc]                           dc.w $8000
[000b00de]                           dc.b $00
[000b00df]                           dc.b $00
[000b00e0]                           dc.b $00
[000b00e1]                           dc.b $00
[000b00e2]                           dc.b $00
[000b00e3]                           dc.b $0f
[000b00e4]                           dc.b $00
[000b00e5]                           dc.b $00
[000b00e6]                           dc.b $00
[000b00e7]                           dc.b $00
[000b00e8]                           dc.b $00
[000b00e9]                           dc.b $00
[000b00ea]                           dc.b $00
[000b00eb]                           dc.b $00
_39_POP_MASKSEL:
[000b00ec]                           dc.b $00
[000b00ed]                           dc.b $29
[000b00ee]                           dc.w $ffff
[000b00f0]                           dc.w $ffff
[000b00f2]                           dc.b $00
[000b00f3]                           dc.b $18
[000b00f4]                           dc.b $00
[000b00f5]                           dc.b $01
[000b00f6]                           dc.b $00
[000b00f7]                           dc.b $00
[000b00f8] 000afb24                  dc.l A_3DBUTTON43
[000b00fc]                           dc.b $00
[000b00fd]                           dc.b $00
[000b00fe]                           dc.b $00
[000b00ff]                           dc.b $06
[000b0100]                           dc.b $00
[000b0101]                           dc.b $17
[000b0102]                           dc.b $00
[000b0103]                           dc.b $01
_39aPOP_MASKSEL:
[000b0104]                           dc.b $00
[000b0105]                           dc.b $00
[000b0106]                           dc.b $00
[000b0107]                           dc.b $00
[000b0108]                           dc.b $00
[000b0109]                           dc.b $00
[000b010a]                           dc.b $00
[000b010b]                           dc.b $00
[000b010c]                           dc.w $8000
[000b010e]                           dc.b $00
[000b010f]                           dc.b $00
[000b0110]                           dc.b $00
[000b0111]                           dc.b $00
[000b0112]                           dc.b $00
[000b0113]                           dc.b $10
[000b0114]                           dc.b $00
[000b0115]                           dc.b $00
[000b0116]                           dc.b $00
[000b0117]                           dc.b $00
[000b0118]                           dc.b $00
[000b0119]                           dc.b $00
[000b011a]                           dc.b $00
[000b011b]                           dc.b $00
_41_POP_MASKSEL:
[000b011c]                           dc.b $00
[000b011d]                           dc.b $2b
[000b011e]                           dc.w $ffff
[000b0120]                           dc.w $ffff
[000b0122]                           dc.b $00
[000b0123]                           dc.b $18
[000b0124]                           dc.b $00
[000b0125]                           dc.b $01
[000b0126]                           dc.b $00
[000b0127]                           dc.b $00
[000b0128] 000afb44                  dc.l A_3DBUTTON44
[000b012c]                           dc.b $00
[000b012d]                           dc.b $00
[000b012e]                           dc.b $00
[000b012f]                           dc.b $07
[000b0130]                           dc.b $00
[000b0131]                           dc.b $17
[000b0132]                           dc.b $00
[000b0133]                           dc.b $01
_41aPOP_MASKSEL:
[000b0134]                           dc.b $00
[000b0135]                           dc.b $00
[000b0136]                           dc.b $00
[000b0137]                           dc.b $00
[000b0138]                           dc.b $00
[000b0139]                           dc.b $00
[000b013a]                           dc.b $00
[000b013b]                           dc.b $00
[000b013c]                           dc.w $8000
[000b013e]                           dc.b $00
[000b013f]                           dc.b $00
[000b0140]                           dc.b $00
[000b0141]                           dc.b $00
[000b0142]                           dc.b $00
[000b0143]                           dc.b $11
[000b0144]                           dc.b $00
[000b0145]                           dc.b $00
[000b0146]                           dc.b $00
[000b0147]                           dc.b $00
[000b0148]                           dc.b $00
[000b0149]                           dc.b $00
[000b014a]                           dc.b $00
[000b014b]                           dc.b $00
_43_POP_MASKSEL:
[000b014c]                           dc.b $00
[000b014d]                           dc.b $2d
[000b014e]                           dc.w $ffff
[000b0150]                           dc.w $ffff
[000b0152]                           dc.b $00
[000b0153]                           dc.b $18
[000b0154]                           dc.b $00
[000b0155]                           dc.b $01
[000b0156]                           dc.b $00
[000b0157]                           dc.b $00
[000b0158] 000afb64                  dc.l A_3DBUTTON45
[000b015c]                           dc.b $00
[000b015d]                           dc.b $00
[000b015e]                           dc.b $00
[000b015f]                           dc.b $08
[000b0160]                           dc.b $00
[000b0161]                           dc.b $17
[000b0162]                           dc.b $00
[000b0163]                           dc.b $01
_43aPOP_MASKSEL:
[000b0164]                           dc.b $00
[000b0165]                           dc.b $00
[000b0166]                           dc.b $00
[000b0167]                           dc.b $00
[000b0168]                           dc.b $00
[000b0169]                           dc.b $00
[000b016a]                           dc.b $00
[000b016b]                           dc.b $00
[000b016c]                           dc.w $8000
[000b016e]                           dc.b $00
[000b016f]                           dc.b $00
[000b0170]                           dc.b $00
[000b0171]                           dc.b $00
[000b0172]                           dc.b $00
[000b0173]                           dc.b $12
[000b0174]                           dc.b $00
[000b0175]                           dc.b $00
[000b0176]                           dc.b $00
[000b0177]                           dc.b $00
[000b0178]                           dc.b $00
[000b0179]                           dc.b $00
[000b017a]                           dc.b $00
[000b017b]                           dc.b $00
_45_POP_MASKSEL:
[000b017c]                           dc.b $00
[000b017d]                           dc.b $1a
[000b017e]                           dc.w $ffff
[000b0180]                           dc.w $ffff
[000b0182]                           dc.b $00
[000b0183]                           dc.b $18
[000b0184]                           dc.b $00
[000b0185]                           dc.b $01
[000b0186]                           dc.b $00
[000b0187]                           dc.b $00
[000b0188] 000afb84                  dc.l A_3DBUTTON46
[000b018c]                           dc.b $00
[000b018d]                           dc.b $00
[000b018e]                           dc.b $00
[000b018f]                           dc.b $09
[000b0190]                           dc.b $00
[000b0191]                           dc.b $17
[000b0192]                           dc.b $00
[000b0193]                           dc.b $01
_45aPOP_MASKSEL:
[000b0194]                           dc.b $00
[000b0195]                           dc.b $00
[000b0196]                           dc.b $00
[000b0197]                           dc.b $00
[000b0198]                           dc.b $00
[000b0199]                           dc.b $00
[000b019a]                           dc.b $00
[000b019b]                           dc.b $00
[000b019c]                           dc.w $8000
[000b019e]                           dc.b $00
[000b019f]                           dc.b $00
[000b01a0]                           dc.b $00
[000b01a1]                           dc.b $00
[000b01a2]                           dc.b $00
[000b01a3]                           dc.b $13
[000b01a4]                           dc.b $00
[000b01a5]                           dc.b $00
[000b01a6]                           dc.b $00
[000b01a7]                           dc.b $00
[000b01a8]                           dc.b $00
[000b01a9]                           dc.b $00
[000b01aa]                           dc.b $00
[000b01ab]                           dc.b $00
_47_POP_MASKSEL:
[000b01ac]                           dc.b $00
[000b01ad]                           dc.b $39
[000b01ae]                           dc.b $00
[000b01af]                           dc.b $30
[000b01b0]                           dc.b $00
[000b01b1]                           dc.b $30
[000b01b2]                           dc.b $00
[000b01b3]                           dc.b $18
[000b01b4]                           dc.b $00
[000b01b5]                           dc.b $01
[000b01b6]                           dc.b $00
[000b01b7]                           dc.b $00
[000b01b8] 000af744                  dc.l A_3DBUTTON04
[000b01bc]                           dc.b $00
[000b01bd]                           dc.b $00
[000b01be]                           dc.b $00
[000b01bf]                           dc.b $07
[000b01c0]                           dc.b $00
[000b01c1]                           dc.b $16
[000b01c2]                           dc.b $00
[000b01c3]                           dc.b $01
_48_POP_MASKSEL:
[000b01c4]                           dc.b $00
[000b01c5]                           dc.b $2f
[000b01c6]                           dc.b $00
[000b01c7]                           dc.b $31
[000b01c8]                           dc.b $00
[000b01c9]                           dc.b $37
[000b01ca]                           dc.b $00
[000b01cb]                           dc.b $14
[000b01cc]                           dc.b $00
[000b01cd]                           dc.b $80
[000b01ce]                           dc.b $00
[000b01cf]                           dc.b $20
[000b01d0]                           dc.b $00
[000b01d1]                           dc.b $ff
[000b01d2]                           dc.w $1101
[000b01d4]                           dc.b $00
[000b01d5]                           dc.b $00
[000b01d6]                           dc.b $00
[000b01d7]                           dc.b $00
[000b01d8]                           dc.b $00
[000b01d9]                           dc.b $0e
[000b01da]                           dc.b $00
[000b01db]                           dc.b $04
_49_POP_MASKSEL:
[000b01dc]                           dc.b $00
[000b01dd]                           dc.b $33
[000b01de]                           dc.w $ffff
[000b01e0]                           dc.w $ffff
[000b01e2]                           dc.b $00
[000b01e3]                           dc.b $18
[000b01e4]                           dc.b $00
[000b01e5]                           dc.b $01
[000b01e6]                           dc.b $00
[000b01e7]                           dc.b $00
[000b01e8] 000af8e4                  dc.l A_3DBUTTON25
[000b01ec]                           dc.b $00
[000b01ed]                           dc.b $00
[000b01ee]                           dc.b $00
[000b01ef]                           dc.b $00
[000b01f0]                           dc.b $00
[000b01f1]                           dc.b $0e
[000b01f2]                           dc.b $00
[000b01f3]                           dc.b $01
_49aPOP_MASKSEL:
[000b01f4]                           dc.b $00
[000b01f5]                           dc.b $00
[000b01f6]                           dc.b $00
[000b01f7]                           dc.b $00
[000b01f8]                           dc.b $00
[000b01f9]                           dc.b $00
[000b01fa]                           dc.b $00
[000b01fb]                           dc.b $00
[000b01fc]                           dc.w $8000
[000b01fe]                           dc.b $00
[000b01ff]                           dc.b $00
[000b0200]                           dc.b $00
[000b0201]                           dc.b $00
[000b0202]                           dc.b $00
[000b0203]                           dc.b $14
[000b0204]                           dc.b $00
[000b0205]                           dc.b $00
[000b0206]                           dc.b $00
[000b0207]                           dc.b $00
[000b0208]                           dc.b $00
[000b0209]                           dc.b $00
[000b020a]                           dc.b $00
[000b020b]                           dc.b $00
_51_POP_MASKSEL:
[000b020c]                           dc.b $00
[000b020d]                           dc.b $35
[000b020e]                           dc.w $ffff
[000b0210]                           dc.w $ffff
[000b0212]                           dc.b $00
[000b0213]                           dc.b $18
[000b0214]                           dc.b $00
[000b0215]                           dc.b $01
[000b0216]                           dc.b $00
[000b0217]                           dc.b $00
[000b0218] 000af944                  dc.l A_3DBUTTON28
[000b021c]                           dc.b $00
[000b021d]                           dc.b $00
[000b021e]                           dc.b $00
[000b021f]                           dc.b $01
[000b0220]                           dc.b $00
[000b0221]                           dc.b $0e
[000b0222]                           dc.b $00
[000b0223]                           dc.b $01
_51aPOP_MASKSEL:
[000b0224]                           dc.b $00
[000b0225]                           dc.b $00
[000b0226]                           dc.b $00
[000b0227]                           dc.b $00
[000b0228]                           dc.b $00
[000b0229]                           dc.b $00
[000b022a]                           dc.b $00
[000b022b]                           dc.b $00
[000b022c]                           dc.w $8000
[000b022e]                           dc.b $00
[000b022f]                           dc.b $00
[000b0230]                           dc.b $00
[000b0231]                           dc.b $00
[000b0232]                           dc.b $00
[000b0233]                           dc.b $15
[000b0234]                           dc.b $00
[000b0235]                           dc.b $00
[000b0236]                           dc.b $00
[000b0237]                           dc.b $00
[000b0238]                           dc.b $00
[000b0239]                           dc.b $00
[000b023a]                           dc.b $00
[000b023b]                           dc.b $00
_53_POP_MASKSEL:
[000b023c]                           dc.b $00
[000b023d]                           dc.b $37
[000b023e]                           dc.w $ffff
[000b0240]                           dc.w $ffff
[000b0242]                           dc.b $00
[000b0243]                           dc.b $18
[000b0244]                           dc.b $00
[000b0245]                           dc.b $01
[000b0246]                           dc.b $00
[000b0247]                           dc.b $00
[000b0248] 000af904                  dc.l A_3DBUTTON26
[000b024c]                           dc.b $00
[000b024d]                           dc.b $00
[000b024e]                           dc.b $00
[000b024f]                           dc.b $02
[000b0250]                           dc.b $00
[000b0251]                           dc.b $0e
[000b0252]                           dc.b $00
[000b0253]                           dc.b $01
_53aPOP_MASKSEL:
[000b0254]                           dc.b $00
[000b0255]                           dc.b $00
[000b0256]                           dc.b $00
[000b0257]                           dc.b $00
[000b0258]                           dc.b $00
[000b0259]                           dc.b $00
[000b025a]                           dc.b $00
[000b025b]                           dc.b $00
[000b025c]                           dc.w $8000
[000b025e]                           dc.b $00
[000b025f]                           dc.b $00
[000b0260]                           dc.b $00
[000b0261]                           dc.b $00
[000b0262]                           dc.b $00
[000b0263]                           dc.b $16
[000b0264]                           dc.b $00
[000b0265]                           dc.b $00
[000b0266]                           dc.b $00
[000b0267]                           dc.b $00
[000b0268]                           dc.b $00
[000b0269]                           dc.b $00
[000b026a]                           dc.b $00
[000b026b]                           dc.b $00
_55_POP_MASKSEL:
[000b026c]                           dc.b $00
[000b026d]                           dc.b $30
[000b026e]                           dc.w $ffff
[000b0270]                           dc.w $ffff
[000b0272]                           dc.b $00
[000b0273]                           dc.b $18
[000b0274]                           dc.b $00
[000b0275]                           dc.b $01
[000b0276]                           dc.b $00
[000b0277]                           dc.b $00
[000b0278] 000afa04                  dc.l A_3DBUTTON34
[000b027c]                           dc.b $00
[000b027d]                           dc.b $00
[000b027e]                           dc.b $00
[000b027f]                           dc.b $03
[000b0280]                           dc.b $00
[000b0281]                           dc.b $0e
[000b0282]                           dc.b $00
[000b0283]                           dc.b $01
_55aPOP_MASKSEL:
[000b0284]                           dc.b $00
[000b0285]                           dc.b $00
[000b0286]                           dc.b $00
[000b0287]                           dc.b $00
[000b0288]                           dc.b $00
[000b0289]                           dc.b $00
[000b028a]                           dc.b $00
[000b028b]                           dc.b $00
[000b028c]                           dc.w $8000
[000b028e]                           dc.b $00
[000b028f]                           dc.b $00
[000b0290]                           dc.b $00
[000b0291]                           dc.b $00
[000b0292]                           dc.b $00
[000b0293]                           dc.b $17
[000b0294]                           dc.b $00
[000b0295]                           dc.b $00
[000b0296]                           dc.b $00
[000b0297]                           dc.b $00
[000b0298]                           dc.b $00
[000b0299]                           dc.b $00
[000b029a]                           dc.b $00
[000b029b]                           dc.b $00
_57_POP_MASKSEL:
[000b029c]                           dc.b $00
[000b029d]                           dc.b $00
[000b029e]                           dc.b $00
[000b029f]                           dc.b $3a
[000b02a0]                           dc.b $00
[000b02a1]                           dc.b $3a
[000b02a2]                           dc.b $00
[000b02a3]                           dc.b $18
[000b02a4]                           dc.b $00
[000b02a5]                           dc.b $01
[000b02a6]                           dc.b $00
[000b02a7]                           dc.b $00
[000b02a8] 000af964                  dc.l A_3DBUTTON29
[000b02ac]                           dc.b $00
[000b02ad]                           dc.b $00
[000b02ae]                           dc.b $00
[000b02af]                           dc.b $08
[000b02b0]                           dc.b $00
[000b02b1]                           dc.b $16
[000b02b2]                           dc.b $00
[000b02b3]                           dc.b $01
_58_POP_MASKSEL:
[000b02b4]                           dc.b $00
[000b02b5]                           dc.b $39
[000b02b6]                           dc.b $00
[000b02b7]                           dc.b $3b
[000b02b8]                           dc.b $00
[000b02b9]                           dc.b $40
[000b02ba]                           dc.b $00
[000b02bb]                           dc.b $14
[000b02bc]                           dc.b $00
[000b02bd]                           dc.b $80
[000b02be]                           dc.b $00
[000b02bf]                           dc.b $20
[000b02c0]                           dc.b $00
[000b02c1]                           dc.b $ff
[000b02c2]                           dc.w $1101
[000b02c4]                           dc.b $00
[000b02c5]                           dc.b $00
[000b02c6]                           dc.b $00
[000b02c7]                           dc.b $00
[000b02c8]                           dc.b $00
[000b02c9]                           dc.b $15
[000b02ca]                           dc.b $00
[000b02cb]                           dc.b $04
_59_POP_MASKSEL:
[000b02cc]                           dc.b $00
[000b02cd]                           dc.b $3c
[000b02ce]                           dc.w $ffff
[000b02d0]                           dc.w $ffff
[000b02d2]                           dc.b $00
[000b02d3]                           dc.b $18
[000b02d4]                           dc.b $00
[000b02d5]                           dc.b $00
[000b02d6]                           dc.b $00
[000b02d7]                           dc.b $00
[000b02d8] 000af9e4                  dc.l A_3DBUTTON33
[000b02dc]                           dc.b $00
[000b02dd]                           dc.b $00
[000b02de]                           dc.b $00
[000b02df]                           dc.b $00
[000b02e0]                           dc.b $00
[000b02e1]                           dc.b $15
[000b02e2]                           dc.b $00
[000b02e3]                           dc.b $01
_60_POP_MASKSEL:
[000b02e4]                           dc.b $00
[000b02e5]                           dc.b $3e
[000b02e6]                           dc.w $ffff
[000b02e8]                           dc.w $ffff
[000b02ea]                           dc.b $00
[000b02eb]                           dc.b $18
[000b02ec]                           dc.b $00
[000b02ed]                           dc.b $01
[000b02ee]                           dc.b $00
[000b02ef]                           dc.b $00
[000b02f0] 000af984                  dc.l A_3DBUTTON30
[000b02f4]                           dc.b $00
[000b02f5]                           dc.b $00
[000b02f6]                           dc.b $00
[000b02f7]                           dc.b $01
[000b02f8]                           dc.b $00
[000b02f9]                           dc.b $15
[000b02fa]                           dc.b $00
[000b02fb]                           dc.b $01
_60aPOP_MASKSEL:
[000b02fc]                           dc.b $00
[000b02fd]                           dc.b $00
[000b02fe]                           dc.b $00
[000b02ff]                           dc.b $00
[000b0300]                           dc.b $00
[000b0301]                           dc.b $00
[000b0302]                           dc.b $00
[000b0303]                           dc.b $00
[000b0304]                           dc.w $8000
[000b0306]                           dc.b $00
[000b0307]                           dc.b $00
[000b0308]                           dc.b $00
[000b0309]                           dc.b $00
[000b030a]                           dc.b $00
[000b030b]                           dc.b $18
[000b030c]                           dc.b $00
[000b030d]                           dc.b $00
[000b030e]                           dc.b $00
[000b030f]                           dc.b $00
[000b0310]                           dc.b $00
[000b0311]                           dc.b $00
[000b0312]                           dc.b $00
[000b0313]                           dc.b $00
_62_POP_MASKSEL:
[000b0314]                           dc.b $00
[000b0315]                           dc.b $40
[000b0316]                           dc.w $ffff
[000b0318]                           dc.w $ffff
[000b031a]                           dc.b $00
[000b031b]                           dc.b $18
[000b031c]                           dc.b $00
[000b031d]                           dc.b $01
[000b031e]                           dc.b $00
[000b031f]                           dc.b $00
[000b0320] 000af9a4                  dc.l A_3DBUTTON31
[000b0324]                           dc.b $00
[000b0325]                           dc.b $00
[000b0326]                           dc.b $00
[000b0327]                           dc.b $02
[000b0328]                           dc.b $00
[000b0329]                           dc.b $15
[000b032a]                           dc.b $00
[000b032b]                           dc.b $01
_62aPOP_MASKSEL:
[000b032c]                           dc.b $00
[000b032d]                           dc.b $00
[000b032e]                           dc.b $00
[000b032f]                           dc.b $00
[000b0330]                           dc.b $00
[000b0331]                           dc.b $00
[000b0332]                           dc.b $00
[000b0333]                           dc.b $00
[000b0334]                           dc.w $8000
[000b0336]                           dc.b $00
[000b0337]                           dc.b $00
[000b0338]                           dc.b $00
[000b0339]                           dc.b $00
[000b033a]                           dc.b $00
[000b033b]                           dc.b $19
[000b033c]                           dc.b $00
[000b033d]                           dc.b $00
[000b033e]                           dc.b $00
[000b033f]                           dc.b $00
[000b0340]                           dc.b $00
[000b0341]                           dc.b $00
[000b0342]                           dc.b $00
[000b0343]                           dc.b $00
_64_POP_MASKSEL:
[000b0344]                           dc.b $00
[000b0345]                           dc.b $3a
[000b0346]                           dc.w $ffff
[000b0348]                           dc.w $ffff
[000b034a]                           dc.b $00
[000b034b]                           dc.b $18
[000b034c]                           dc.b $00
[000b034d]                           dc.b $01
[000b034e]                           dc.b $00
[000b034f]                           dc.b $00
[000b0350] 000af9c4                  dc.l A_3DBUTTON32
[000b0354]                           dc.b $00
[000b0355]                           dc.b $00
[000b0356]                           dc.b $00
[000b0357]                           dc.b $03
[000b0358]                           dc.b $00
[000b0359]                           dc.b $15
[000b035a]                           dc.b $00
[000b035b]                           dc.b $01
_64aPOP_MASKSEL:
[000b035c]                           dc.b $00
[000b035d]                           dc.b $00
[000b035e]                           dc.b $00
[000b035f]                           dc.b $00
[000b0360]                           dc.b $00
[000b0361]                           dc.b $00
[000b0362]                           dc.b $00
[000b0363]                           dc.b $00
[000b0364]                           dc.w $8020
[000b0366]                           dc.b $00
[000b0367]                           dc.b $00
[000b0368]                           dc.b $00
[000b0369]                           dc.b $00
[000b036a]                           dc.b $00
[000b036b]                           dc.b $1a
[000b036c]                           dc.b $00
[000b036d]                           dc.b $00
[000b036e]                           dc.b $00
[000b036f]                           dc.b $00
[000b0370]                           dc.b $00
[000b0371]                           dc.b $00
[000b0372]                           dc.b $00
[000b0373]                           dc.b $00
ED_BOXED:
[000b0374]                           dc.w $ffff
[000b0376]                           dc.b $00
[000b0377]                           dc.b $01
[000b0378]                           dc.b $00
[000b0379]                           dc.b $32
[000b037a]                           dc.b $00
[000b037b]                           dc.b $18
[000b037c]                           dc.b $00
[000b037d]                           dc.b $00
[000b037e]                           dc.b $00
[000b037f]                           dc.b $10
[000b0380] 000af784                  dc.l A_3DBUTTON06
[000b0384]                           dc.b $00
[000b0385]                           dc.b $00
[000b0386]                           dc.b $00
[000b0387]                           dc.b $00
[000b0388]                           dc.b $00
[000b0389]                           dc.b $3c
[000b038a]                           dc.b $00
[000b038b]                           dc.b $14
_01_ED_BOXED:
[000b038c]                           dc.b $00
[000b038d]                           dc.b $03
[000b038e]                           dc.b $00
[000b038f]                           dc.b $02
[000b0390]                           dc.b $00
[000b0391]                           dc.b $02
[000b0392]                           dc.b $00
[000b0393]                           dc.b $18
[000b0394]                           dc.b $00
[000b0395]                           dc.b $40
[000b0396]                           dc.b $00
[000b0397]                           dc.b $10
[000b0398] 000af7a4                  dc.l A_3DBUTTON07
[000b039c]                           dc.b $00
[000b039d]                           dc.b $00
[000b039e]                           dc.b $00
[000b039f]                           dc.b $00
[000b03a0]                           dc.b $00
[000b03a1]                           dc.b $17
[000b03a2]                           dc.b $00
[000b03a3]                           dc.b $03
_02_ED_BOXED:
[000b03a4]                           dc.b $00
[000b03a5]                           dc.b $01
[000b03a6]                           dc.w $ffff
[000b03a8]                           dc.w $ffff
[000b03aa]                           dc.b $00
[000b03ab]                           dc.b $18
[000b03ac]                           dc.b $00
[000b03ad]                           dc.b $00
[000b03ae]                           dc.b $00
[000b03af]                           dc.b $10
[000b03b0] 000afbe4                  dc.l A_BOXED02
[000b03b4]                           dc.b $00
[000b03b5]                           dc.b $02
[000b03b6]                           dc.b $00
[000b03b7]                           dc.b $01
[000b03b8]                           dc.b $00
[000b03b9]                           dc.b $13
[000b03ba]                           dc.b $00
[000b03bb]                           dc.b $01
_03_ED_BOXED:
[000b03bc]                           dc.b $00
[000b03bd]                           dc.b $05
[000b03be]                           dc.w $ffff
[000b03c0]                           dc.w $ffff
[000b03c2]                           dc.b $00
[000b03c3]                           dc.b $18
[000b03c4]                           dc.w $4007
[000b03c6]                           dc.b $00
[000b03c7]                           dc.b $10
[000b03c8] 000af8c4                  dc.l A_3DBUTTON16
[000b03cc]                           dc.b $00
[000b03cd]                           dc.b $20
[000b03ce]                           dc.b $00
[000b03cf]                           dc.b $01
[000b03d0]                           dc.b $00
[000b03d1]                           dc.b $0c
[000b03d2]                           dc.b $00
[000b03d3]                           dc.b $02
_03aED_BOXED:
[000b03d4] 00025436                  dc.l ok
[000b03d8]                           dc.b $00
[000b03d9]                           dc.b $00
[000b03da]                           dc.b $00
[000b03db]                           dc.b $00
[000b03dc]                           dc.w $8000
[000b03de]                           dc.w $884f
[000b03e0]                           dc.b $00
[000b03e1]                           dc.b $00
[000b03e2]                           dc.b $00
[000b03e3]                           dc.b $00
[000b03e4]                           dc.b $00
[000b03e5]                           dc.b $00
[000b03e6]                           dc.b $00
[000b03e7]                           dc.b $00
[000b03e8]                           dc.b $00
[000b03e9]                           dc.b $00
[000b03ea]                           dc.b $00
[000b03eb]                           dc.b $00
_05_ED_BOXED:
[000b03ec]                           dc.b $00
[000b03ed]                           dc.b $07
[000b03ee]                           dc.w $ffff
[000b03f0]                           dc.w $ffff
[000b03f2]                           dc.b $00
[000b03f3]                           dc.b $18
[000b03f4]                           dc.w $4005
[000b03f6]                           dc.b $00
[000b03f7]                           dc.b $10
[000b03f8] 000af7e4                  dc.l A_3DBUTTON09
[000b03fc]                           dc.b $00
[000b03fd]                           dc.b $2e
[000b03fe]                           dc.b $00
[000b03ff]                           dc.b $01
[000b0400]                           dc.b $00
[000b0401]                           dc.b $0c
[000b0402]                           dc.b $00
[000b0403]                           dc.b $02
_05aED_BOXED:
[000b0404] 00025410                  dc.l abort
[000b0408]                           dc.b $00
[000b0409]                           dc.b $00
[000b040a]                           dc.b $00
[000b040b]                           dc.b $00
[000b040c]                           dc.w $8000
[000b040e]                           dc.w $8841
[000b0410]                           dc.b $00
[000b0411]                           dc.b $00
[000b0412]                           dc.b $00
[000b0413]                           dc.b $00
[000b0414]                           dc.b $00
[000b0415]                           dc.b $00
[000b0416]                           dc.b $00
[000b0417]                           dc.b $00
[000b0418]                           dc.b $00
[000b0419]                           dc.b $00
[000b041a]                           dc.b $00
[000b041b]                           dc.b $00
_07_ED_BOXED:
[000b041c]                           dc.b $00
[000b041d]                           dc.b $17
[000b041e]                           dc.b $00
[000b041f]                           dc.b $08
[000b0420]                           dc.b $00
[000b0421]                           dc.b $16
[000b0422]                           dc.b $00
[000b0423]                           dc.b $18
[000b0424]                           dc.b $00
[000b0425]                           dc.b $40
[000b0426]                           dc.b $00
[000b0427]                           dc.b $00
[000b0428] 000afce4                  dc.l A_INNERFRAME02
[000b042c]                           dc.b $00
[000b042d]                           dc.b $01
[000b042e]                           dc.b $00
[000b042f]                           dc.b $04
[000b0430]                           dc.b $00
[000b0431]                           dc.b $3a
[000b0432]                           dc.b $00
[000b0433]                           dc.b $05
_08_ED_BOXED:
[000b0434]                           dc.b $00
[000b0435]                           dc.b $0a
[000b0436]                           dc.w $ffff
[000b0438]                           dc.w $ffff
[000b043a]                           dc.b $00
[000b043b]                           dc.b $18
[000b043c]                           dc.b $00
[000b043d]                           dc.b $48
[000b043e]                           dc.b $00
[000b043f]                           dc.b $10
[000b0440] 000afbc4                  dc.l A_BOXED01
[000b0444]                           dc.b $00
[000b0445]                           dc.b $01
[000b0446]                           dc.b $00
[000b0447]                           dc.b $01
[000b0448]                           dc.b $00
[000b0449]                           dc.b $38
[000b044a]                           dc.b $00
[000b044b]                           dc.b $02
_08aED_BOXED:
[000b044c] 0005dc3a                  dc.l Aus_boxed
[000b0450]                           dc.b $00
[000b0451]                           dc.b $00
[000b0452]                           dc.b $00
[000b0453]                           dc.b $00
[000b0454]                           dc.w $8000
[000b0456]                           dc.b $00
[000b0457]                           dc.b $00
[000b0458]                           dc.b $00
[000b0459]                           dc.b $00
[000b045a]                           dc.b $00
[000b045b]                           dc.b $00
[000b045c]                           dc.b $00
[000b045d]                           dc.b $00
[000b045e]                           dc.b $00
[000b045f]                           dc.b $00
[000b0460]                           dc.b $00
[000b0461]                           dc.b $00
[000b0462]                           dc.b $00
[000b0463]                           dc.b $00
_10_ED_BOXED:
[000b0464]                           dc.b $00
[000b0465]                           dc.b $0c
[000b0466]                           dc.b $00
[000b0467]                           dc.b $0b
[000b0468]                           dc.b $00
[000b0469]                           dc.b $0b
[000b046a]                           dc.b $00
[000b046b]                           dc.b $1c
[000b046c]                           dc.b $00
[000b046d]                           dc.b $40
[000b046e]                           dc.b $00
[000b046f]                           dc.b $00
[000b0470] 000af620                  dc.l TEXT_11
[000b0474]                           dc.b $00
[000b0475]                           dc.b $01
[000b0476]                           dc.b $00
[000b0477]                           dc.b $03
[000b0478]                           dc.b $00
[000b0479]                           dc.b $06
[000b047a]                           dc.b $00
[000b047b]                           dc.b $01
_11_ED_BOXED:
[000b047c]                           dc.b $00
[000b047d]                           dc.b $0a
[000b047e]                           dc.w $ffff
[000b0480]                           dc.w $ffff
[000b0482]                           dc.b $00
[000b0483]                           dc.b $18
[000b0484]                           dc.b $00
[000b0485]                           dc.b $40
[000b0486]                           dc.b $00
[000b0487]                           dc.b $00
[000b0488] 000afba4                  dc.l A_ARROWS02
[000b048c]                           dc.b $00
[000b048d]                           dc.b $00
[000b048e]                           dc.b $00
[000b048f]                           dc.b $00
[000b0490]                           dc.b $00
[000b0491]                           dc.b $01
[000b0492]                           dc.b $00
[000b0493]                           dc.b $01
_12_ED_BOXED:
[000b0494]                           dc.b $00
[000b0495]                           dc.b $10
[000b0496]                           dc.b $00
[000b0497]                           dc.b $0e
[000b0498]                           dc.b $00
[000b0499]                           dc.b $0f
[000b049a]                           dc.b $00
[000b049b]                           dc.b $14
[000b049c]                           dc.b $00
[000b049d]                           dc.b $40
[000b049e]                           dc.b $00
[000b049f]                           dc.b $20
[000b04a0]                           dc.b $00
[000b04a1]                           dc.b $ff
[000b04a2]                           dc.w $1101
[000b04a4]                           dc.b $00
[000b04a5]                           dc.b $08
[000b04a6]                           dc.b $00
[000b04a7]                           dc.b $03
[000b04a8]                           dc.b $00
[000b04a9]                           dc.b $12
[000b04aa]                           dc.b $00
[000b04ab]                           dc.b $01
_12aED_BOXED:
[000b04ac] 00025a48                  dc.l edbe_textcol
[000b04b0]                           dc.b $00
[000b04b1]                           dc.b $00
[000b04b2]                           dc.b $00
[000b04b3]                           dc.b $00
[000b04b4]                           dc.w $8000
[000b04b6]                           dc.w $8846
[000b04b8]                           dc.b $00
[000b04b9]                           dc.b $00
[000b04ba]                           dc.b $00
[000b04bb]                           dc.b $00
[000b04bc]                           dc.b $00
[000b04bd]                           dc.b $00
[000b04be]                           dc.b $00
[000b04bf]                           dc.b $00
[000b04c0]                           dc.b $00
[000b04c1]                           dc.b $00
[000b04c2]                           dc.b $00
[000b04c3]                           dc.b $00
_14_ED_BOXED:
[000b04c4]                           dc.b $00
[000b04c5]                           dc.b $0f
[000b04c6]                           dc.w $ffff
[000b04c8]                           dc.w $ffff
[000b04ca]                           dc.b $00
[000b04cb]                           dc.b $14
[000b04cc]                           dc.b $00
[000b04cd]                           dc.b $00
[000b04ce]                           dc.b $00
[000b04cf]                           dc.b $00
[000b04d0]                           dc.b $00
[000b04d1]                           dc.b $01
[000b04d2]                           dc.w $1171
[000b04d4]                           dc.b $00
[000b04d5]                           dc.b $10
[000b04d6]                           dc.b $00
[000b04d7]                           dc.b $00
[000b04d8]                           dc.b $00
[000b04d9]                           dc.b $02
[000b04da]                           dc.b $00
[000b04db]                           dc.b $01
_15_ED_BOXED:
[000b04dc]                           dc.b $00
[000b04dd]                           dc.b $0c
[000b04de]                           dc.w $ffff
[000b04e0]                           dc.w $ffff
[000b04e2]                           dc.b $00
[000b04e3]                           dc.b $18
[000b04e4]                           dc.b $00
[000b04e5]                           dc.b $00
[000b04e6]                           dc.b $00
[000b04e7]                           dc.b $00
[000b04e8] 000af924                  dc.l A_3DBUTTON27
[000b04ec]                           dc.b $00
[000b04ed]                           dc.b $00
[000b04ee]                           dc.b $00
[000b04ef]                           dc.b $00
[000b04f0]                           dc.b $00
[000b04f1]                           dc.b $10
[000b04f2]                           dc.b $00
[000b04f3]                           dc.b $01
_16_ED_BOXED:
[000b04f4]                           dc.b $00
[000b04f5]                           dc.b $12
[000b04f6]                           dc.b $00
[000b04f7]                           dc.b $11
[000b04f8]                           dc.b $00
[000b04f9]                           dc.b $11
[000b04fa]                           dc.b $00
[000b04fb]                           dc.b $1c
[000b04fc]                           dc.b $00
[000b04fd]                           dc.b $40
[000b04fe]                           dc.b $00
[000b04ff]                           dc.b $00
[000b0500] 000af627                  dc.l TEXT_12
[000b0504]                           dc.b $00
[000b0505]                           dc.b $1d
[000b0506]                           dc.b $00
[000b0507]                           dc.b $03
[000b0508]                           dc.b $00
[000b0509]                           dc.b $06
[000b050a]                           dc.b $00
[000b050b]                           dc.b $01
_17_ED_BOXED:
[000b050c]                           dc.b $00
[000b050d]                           dc.b $10
[000b050e]                           dc.w $ffff
[000b0510]                           dc.w $ffff
[000b0512]                           dc.b $00
[000b0513]                           dc.b $18
[000b0514]                           dc.b $00
[000b0515]                           dc.b $40
[000b0516]                           dc.b $00
[000b0517]                           dc.b $00
[000b0518] 000afba4                  dc.l A_ARROWS02
[000b051c]                           dc.b $00
[000b051d]                           dc.b $00
[000b051e]                           dc.b $00
[000b051f]                           dc.b $00
[000b0520]                           dc.b $00
[000b0521]                           dc.b $01
[000b0522]                           dc.b $00
[000b0523]                           dc.b $01
_18_ED_BOXED:
[000b0524]                           dc.b $00
[000b0525]                           dc.b $15
[000b0526]                           dc.b $00
[000b0527]                           dc.b $14
[000b0528]                           dc.b $00
[000b0529]                           dc.b $14
[000b052a]                           dc.b $00
[000b052b]                           dc.b $14
[000b052c]                           dc.b $00
[000b052d]                           dc.b $40
[000b052e]                           dc.b $00
[000b052f]                           dc.b $20
[000b0530]                           dc.b $00
[000b0531]                           dc.b $ff
[000b0532]                           dc.w $1101
[000b0534]                           dc.b $00
[000b0535]                           dc.b $24
[000b0536]                           dc.b $00
[000b0537]                           dc.b $03
[000b0538]                           dc.b $00
[000b0539]                           dc.b $08
[000b053a]                           dc.b $00
[000b053b]                           dc.b $01
_18aED_BOXED:
[000b053c] 000257a8                  dc.l edbe_size
[000b0540]                           dc.b $00
[000b0541]                           dc.b $00
[000b0542]                           dc.b $00
[000b0543]                           dc.b $00
[000b0544]                           dc.w $8000
[000b0546]                           dc.w $8847
[000b0548]                           dc.b $00
[000b0549]                           dc.b $00
[000b054a]                           dc.b $00
[000b054b]                           dc.b $00
[000b054c]                           dc.b $00
[000b054d]                           dc.b $00
[000b054e]                           dc.b $00
[000b054f]                           dc.b $00
[000b0550]                           dc.b $00
[000b0551]                           dc.b $00
[000b0552]                           dc.b $00
[000b0553]                           dc.b $00
_20_ED_BOXED:
[000b0554]                           dc.b $00
[000b0555]                           dc.b $12
[000b0556]                           dc.w $ffff
[000b0558]                           dc.w $ffff
[000b055a]                           dc.b $00
[000b055b]                           dc.b $18
[000b055c]                           dc.b $00
[000b055d]                           dc.b $00
[000b055e]                           dc.b $00
[000b055f]                           dc.b $00
[000b0560] 000af7a4                  dc.l A_3DBUTTON07
[000b0564]                           dc.b $00
[000b0565]                           dc.b $00
[000b0566]                           dc.b $00
[000b0567]                           dc.b $00
[000b0568]                           dc.b $00
[000b0569]                           dc.b $08
[000b056a]                           dc.b $00
[000b056b]                           dc.b $01
_21_ED_BOXED:
[000b056c]                           dc.b $00
[000b056d]                           dc.b $16
[000b056e]                           dc.w $ffff
[000b0570]                           dc.w $ffff
[000b0572]                           dc.b $00
[000b0573]                           dc.b $1c
[000b0574]                           dc.b $00
[000b0575]                           dc.b $40
[000b0576]                           dc.b $00
[000b0577]                           dc.b $00
[000b0578] 000af62e                  dc.l TEXT_13
[000b057c]                           dc.b $00
[000b057d]                           dc.b $2f
[000b057e]                           dc.b $00
[000b057f]                           dc.b $03
[000b0580]                           dc.b $00
[000b0581]                           dc.b $07
[000b0582]                           dc.b $00
[000b0583]                           dc.b $01
_22_ED_BOXED:
[000b0584]                           dc.b $00
[000b0585]                           dc.b $07
[000b0586]                           dc.w $ffff
[000b0588]                           dc.w $ffff
[000b058a]                           dc.b $00
[000b058b]                           dc.b $18
[000b058c]                           dc.b $00
[000b058d]                           dc.b $08
[000b058e]                           dc.b $00
[000b058f]                           dc.b $10
[000b0590] 000afc04                  dc.l A_BOXED03
[000b0594]                           dc.b $00
[000b0595]                           dc.b $36
[000b0596]                           dc.b $00
[000b0597]                           dc.b $03
[000b0598]                           dc.b $00
[000b0599]                           dc.b $03
[000b059a]                           dc.b $00
[000b059b]                           dc.b $01
_23_ED_BOXED:
[000b059c]                           dc.b $00
[000b059d]                           dc.b $21
[000b059e]                           dc.b $00
[000b059f]                           dc.b $18
[000b05a0]                           dc.b $00
[000b05a1]                           dc.b $1f
[000b05a2]                           dc.b $00
[000b05a3]                           dc.b $18
[000b05a4]                           dc.b $00
[000b05a5]                           dc.b $40
[000b05a6]                           dc.b $00
[000b05a7]                           dc.b $00
[000b05a8] 000afd24                  dc.l A_INNERFRAME04
[000b05ac]                           dc.b $00
[000b05ad]                           dc.b $01
[000b05ae]                           dc.b $00
[000b05af]                           dc.b $09
[000b05b0]                           dc.b $00
[000b05b1]                           dc.b $1e
[000b05b2]                           dc.b $00
[000b05b3]                           dc.b $06
_24_ED_BOXED:
[000b05b4]                           dc.b $00
[000b05b5]                           dc.b $1a
[000b05b6]                           dc.w $ffff
[000b05b8]                           dc.w $ffff
[000b05ba]                           dc.b $00
[000b05bb]                           dc.b $18
[000b05bc]                           dc.b $00
[000b05bd]                           dc.b $41
[000b05be]                           dc.b $00
[000b05bf]                           dc.b $00
[000b05c0] 000afc84                  dc.l A_CHECKBOX02
[000b05c4]                           dc.b $00
[000b05c5]                           dc.b $07
[000b05c6]                           dc.b $00
[000b05c7]                           dc.b $01
[000b05c8]                           dc.b $00
[000b05c9]                           dc.b $11
[000b05ca]                           dc.b $00
[000b05cb]                           dc.b $01
_24aED_BOXED:
[000b05cc] 000255f8                  dc.l edbe_autobig
[000b05d0]                           dc.b $00
[000b05d1]                           dc.b $00
[000b05d2]                           dc.b $00
[000b05d3]                           dc.b $00
[000b05d4]                           dc.w $8000
[000b05d6]                           dc.w $884b
[000b05d8]                           dc.b $00
[000b05d9]                           dc.b $00
[000b05da]                           dc.b $00
[000b05db]                           dc.b $00
[000b05dc]                           dc.b $00
[000b05dd]                           dc.b $00
[000b05de]                           dc.b $00
[000b05df]                           dc.b $00
[000b05e0]                           dc.b $00
[000b05e1]                           dc.b $00
[000b05e2]                           dc.b $00
[000b05e3]                           dc.b $00
_26_ED_BOXED:
[000b05e4]                           dc.b $00
[000b05e5]                           dc.b $1c
[000b05e6]                           dc.w $ffff
[000b05e8]                           dc.w $ffff
[000b05ea]                           dc.b $00
[000b05eb]                           dc.b $18
[000b05ec]                           dc.b $00
[000b05ed]                           dc.b $41
[000b05ee]                           dc.b $00
[000b05ef]                           dc.b $00
[000b05f0] 000afca4                  dc.l A_CHECKBOX03
[000b05f4]                           dc.b $00
[000b05f5]                           dc.b $07
[000b05f6]                           dc.b $00
[000b05f7]                           dc.b $02
[000b05f8]                           dc.b $00
[000b05f9]                           dc.b $14
[000b05fa]                           dc.b $00
[000b05fb]                           dc.b $01
_26aED_BOXED:
[000b05fc] 0002566c                  dc.l edbe_secret
[000b0600]                           dc.b $00
[000b0601]                           dc.b $00
[000b0602]                           dc.b $00
[000b0603]                           dc.b $00
[000b0604]                           dc.w $8000
[000b0606]                           dc.b $00
[000b0607]                           dc.b $00
[000b0608]                           dc.b $00
[000b0609]                           dc.b $00
[000b060a]                           dc.b $00
[000b060b]                           dc.b $00
[000b060c]                           dc.b $00
[000b060d]                           dc.b $00
[000b060e]                           dc.b $00
[000b060f]                           dc.b $00
[000b0610]                           dc.b $00
[000b0611]                           dc.b $00
[000b0612]                           dc.b $00
[000b0613]                           dc.b $00
_28_ED_BOXED:
[000b0614]                           dc.b $00
[000b0615]                           dc.b $1f
[000b0616]                           dc.b $00
[000b0617]                           dc.b $1e
[000b0618]                           dc.b $00
[000b0619]                           dc.b $1e
[000b061a]                           dc.b $00
[000b061b]                           dc.b $14
[000b061c]                           dc.b $00
[000b061d]                           dc.b $40
[000b061e]                           dc.b $00
[000b061f]                           dc.b $20
[000b0620]                           dc.b $00
[000b0621]                           dc.b $ff
[000b0622]                           dc.w $1101
[000b0624]                           dc.b $00
[000b0625]                           dc.b $07
[000b0626]                           dc.b $00
[000b0627]                           dc.b $04
[000b0628]                           dc.b $00
[000b0629]                           dc.b $16
[000b062a]                           dc.b $00
[000b062b]                           dc.b $01
_28aED_BOXED:
[000b062c] 000258b2                  dc.l edbe_mask
[000b0630]                           dc.b $00
[000b0631]                           dc.b $00
[000b0632]                           dc.b $00
[000b0633]                           dc.b $00
[000b0634]                           dc.w $8000
[000b0636]                           dc.w $884d
[000b0638]                           dc.b $00
[000b0639]                           dc.b $00
[000b063a]                           dc.b $00
[000b063b]                           dc.b $00
[000b063c]                           dc.b $00
[000b063d]                           dc.b $00
[000b063e]                           dc.b $00
[000b063f]                           dc.b $00
[000b0640]                           dc.b $00
[000b0641]                           dc.b $00
[000b0642]                           dc.b $00
[000b0643]                           dc.b $00
_30_ED_BOXED:
[000b0644]                           dc.b $00
[000b0645]                           dc.b $1c
[000b0646]                           dc.w $ffff
[000b0648]                           dc.w $ffff
[000b064a]                           dc.b $00
[000b064b]                           dc.b $18
[000b064c]                           dc.b $00
[000b064d]                           dc.b $00
[000b064e]                           dc.b $00
[000b064f]                           dc.b $00
[000b0650] 000af7a4                  dc.l A_3DBUTTON07
[000b0654]                           dc.b $00
[000b0655]                           dc.b $00
[000b0656]                           dc.b $00
[000b0657]                           dc.b $00
[000b0658]                           dc.b $00
[000b0659]                           dc.b $16
[000b065a]                           dc.b $00
[000b065b]                           dc.b $01
_31_ED_BOXED:
[000b065c]                           dc.b $00
[000b065d]                           dc.b $17
[000b065e]                           dc.b $00
[000b065f]                           dc.b $20
[000b0660]                           dc.b $00
[000b0661]                           dc.b $20
[000b0662]                           dc.b $00
[000b0663]                           dc.b $1c
[000b0664]                           dc.b $00
[000b0665]                           dc.b $40
[000b0666]                           dc.b $00
[000b0667]                           dc.b $00
[000b0668] 000af63b                  dc.l TEXT_15
[000b066c]                           dc.b $00
[000b066d]                           dc.b $01
[000b066e]                           dc.b $00
[000b066f]                           dc.b $04
[000b0670]                           dc.b $00
[000b0671]                           dc.b $06
[000b0672]                           dc.b $00
[000b0673]                           dc.b $01
_32_ED_BOXED:
[000b0674]                           dc.b $00
[000b0675]                           dc.b $1f
[000b0676]                           dc.w $ffff
[000b0678]                           dc.w $ffff
[000b067a]                           dc.b $00
[000b067b]                           dc.b $18
[000b067c]                           dc.b $00
[000b067d]                           dc.b $40
[000b067e]                           dc.b $00
[000b067f]                           dc.b $00
[000b0680] 000afba4                  dc.l A_ARROWS02
[000b0684]                           dc.b $00
[000b0685]                           dc.b $00
[000b0686]                           dc.b $00
[000b0687]                           dc.b $00
[000b0688]                           dc.b $00
[000b0689]                           dc.b $01
[000b068a]                           dc.b $00
[000b068b]                           dc.b $01
_33_ED_BOXED:
[000b068c]                           dc.b $00
[000b068d]                           dc.b $32
[000b068e]                           dc.b $00
[000b068f]                           dc.b $22
[000b0690]                           dc.b $00
[000b0691]                           dc.b $30
[000b0692]                           dc.b $00
[000b0693]                           dc.b $18
[000b0694]                           dc.b $00
[000b0695]                           dc.b $40
[000b0696]                           dc.b $00
[000b0697]                           dc.b $00
[000b0698] 000afcc4                  dc.l A_INNERFRAME01
[000b069c]                           dc.b $00
[000b069d]                           dc.b $1f
[000b069e]                           dc.b $00
[000b069f]                           dc.b $09
[000b06a0]                           dc.b $00
[000b06a1]                           dc.b $1c
[000b06a2]                           dc.b $00
[000b06a3]                           dc.b $06
_34_ED_BOXED:
[000b06a4]                           dc.b $00
[000b06a5]                           dc.b $24
[000b06a6]                           dc.b $00
[000b06a7]                           dc.b $23
[000b06a8]                           dc.b $00
[000b06a9]                           dc.b $23
[000b06aa]                           dc.b $00
[000b06ab]                           dc.b $1c
[000b06ac]                           dc.b $00
[000b06ad]                           dc.b $40
[000b06ae]                           dc.b $00
[000b06af]                           dc.b $00
[000b06b0] 000af673                  dc.l TEXT_21
[000b06b4]                           dc.b $00
[000b06b5]                           dc.b $02
[000b06b6]                           dc.b $00
[000b06b7]                           dc.b $01
[000b06b8]                           dc.b $00
[000b06b9]                           dc.b $06
[000b06ba]                           dc.b $00
[000b06bb]                           dc.b $01
_35_ED_BOXED:
[000b06bc]                           dc.b $00
[000b06bd]                           dc.b $22
[000b06be]                           dc.w $ffff
[000b06c0]                           dc.w $ffff
[000b06c2]                           dc.b $00
[000b06c3]                           dc.b $18
[000b06c4]                           dc.b $00
[000b06c5]                           dc.b $40
[000b06c6]                           dc.b $00
[000b06c7]                           dc.b $00
[000b06c8] 000afba4                  dc.l A_ARROWS02
[000b06cc]                           dc.b $00
[000b06cd]                           dc.b $00
[000b06ce]                           dc.b $00
[000b06cf]                           dc.b $00
[000b06d0]                           dc.b $00
[000b06d1]                           dc.b $01
[000b06d2]                           dc.b $00
[000b06d3]                           dc.b $01
_36_ED_BOXED:
[000b06d4]                           dc.b $00
[000b06d5]                           dc.b $25
[000b06d6]                           dc.w $ffff
[000b06d8]                           dc.w $ffff
[000b06da]                           dc.b $00
[000b06db]                           dc.b $1c
[000b06dc]                           dc.b $00
[000b06dd]                           dc.b $40
[000b06de]                           dc.b $00
[000b06df]                           dc.b $00
[000b06e0] 000af659                  dc.l TEXT_19
[000b06e4]                           dc.b $00
[000b06e5]                           dc.b $03
[000b06e6]                           dc.b $00
[000b06e7]                           dc.b $02
[000b06e8]                           dc.b $00
[000b06e9]                           dc.b $05
[000b06ea]                           dc.b $00
[000b06eb]                           dc.b $01
_37_ED_BOXED:
[000b06ec]                           dc.b $00
[000b06ed]                           dc.b $29
[000b06ee]                           dc.b $00
[000b06ef]                           dc.b $27
[000b06f0]                           dc.b $00
[000b06f1]                           dc.b $28
[000b06f2]                           dc.b $00
[000b06f3]                           dc.b $14
[000b06f4]                           dc.b $00
[000b06f5]                           dc.b $40
[000b06f6]                           dc.b $00
[000b06f7]                           dc.b $20
[000b06f8]                           dc.b $00
[000b06f9]                           dc.b $ff
[000b06fa]                           dc.w $1101
[000b06fc]                           dc.b $00
[000b06fd]                           dc.b $09
[000b06fe]                           dc.b $00
[000b06ff]                           dc.b $02
[000b0700]                           dc.b $00
[000b0701]                           dc.b $12
[000b0702]                           dc.b $00
[000b0703]                           dc.b $01
_37aED_BOXED:
[000b0704] 00025742                  dc.l edbe_outcol
[000b0708]                           dc.b $00
[000b0709]                           dc.b $00
[000b070a]                           dc.b $00
[000b070b]                           dc.b $00
[000b070c]                           dc.w $8000
[000b070e]                           dc.w $884c
[000b0710]                           dc.b $00
[000b0711]                           dc.b $00
[000b0712]                           dc.b $00
[000b0713]                           dc.b $00
[000b0714]                           dc.b $00
[000b0715]                           dc.b $00
[000b0716]                           dc.b $00
[000b0717]                           dc.b $00
[000b0718]                           dc.b $00
[000b0719]                           dc.b $00
[000b071a]                           dc.b $00
[000b071b]                           dc.b $00
_39_ED_BOXED:
[000b071c]                           dc.b $00
[000b071d]                           dc.b $28
[000b071e]                           dc.w $ffff
[000b0720]                           dc.w $ffff
[000b0722]                           dc.b $00
[000b0723]                           dc.b $14
[000b0724]                           dc.b $00
[000b0725]                           dc.b $00
[000b0726]                           dc.b $00
[000b0727]                           dc.b $00
[000b0728]                           dc.w $4301
[000b072a]                           dc.w $1371
[000b072c]                           dc.b $00
[000b072d]                           dc.b $10
[000b072e]                           dc.b $00
[000b072f]                           dc.b $00
[000b0730]                           dc.b $00
[000b0731]                           dc.b $02
[000b0732]                           dc.b $00
[000b0733]                           dc.b $01
_40_ED_BOXED:
[000b0734]                           dc.b $00
[000b0735]                           dc.b $25
[000b0736]                           dc.w $ffff
[000b0738]                           dc.w $ffff
[000b073a]                           dc.b $00
[000b073b]                           dc.b $18
[000b073c]                           dc.b $00
[000b073d]                           dc.b $00
[000b073e]                           dc.b $00
[000b073f]                           dc.b $00
[000b0740] 000af924                  dc.l A_3DBUTTON27
[000b0744]                           dc.b $00
[000b0745]                           dc.b $00
[000b0746]                           dc.b $00
[000b0747]                           dc.b $00
[000b0748]                           dc.b $00
[000b0749]                           dc.b $10
[000b074a]                           dc.b $00
[000b074b]                           dc.b $01
_41_ED_BOXED:
[000b074c]                           dc.b $00
[000b074d]                           dc.b $2b
[000b074e]                           dc.b $00
[000b074f]                           dc.b $2a
[000b0750]                           dc.b $00
[000b0751]                           dc.b $2a
[000b0752]                           dc.b $00
[000b0753]                           dc.b $1c
[000b0754]                           dc.b $00
[000b0755]                           dc.b $40
[000b0756]                           dc.b $00
[000b0757]                           dc.b $00
[000b0758] 000af67a                  dc.l TEXT_22
[000b075c]                           dc.b $00
[000b075d]                           dc.b $01
[000b075e]                           dc.b $00
[000b075f]                           dc.b $03
[000b0760]                           dc.b $00
[000b0761]                           dc.b $07
[000b0762]                           dc.b $00
[000b0763]                           dc.b $01
_42_ED_BOXED:
[000b0764]                           dc.b $00
[000b0765]                           dc.b $29
[000b0766]                           dc.w $ffff
[000b0768]                           dc.w $ffff
[000b076a]                           dc.b $00
[000b076b]                           dc.b $18
[000b076c]                           dc.b $00
[000b076d]                           dc.b $40
[000b076e]                           dc.b $00
[000b076f]                           dc.b $00
[000b0770] 000afba4                  dc.l A_ARROWS02
[000b0774]                           dc.b $00
[000b0775]                           dc.b $00
[000b0776]                           dc.b $00
[000b0777]                           dc.b $00
[000b0778]                           dc.b $00
[000b0779]                           dc.b $01
[000b077a]                           dc.b $00
[000b077b]                           dc.b $01
_43_ED_BOXED:
[000b077c]                           dc.b $00
[000b077d]                           dc.b $2c
[000b077e]                           dc.w $ffff
[000b0780]                           dc.w $ffff
[000b0782]                           dc.b $00
[000b0783]                           dc.b $1c
[000b0784]                           dc.b $00
[000b0785]                           dc.b $40
[000b0786]                           dc.b $00
[000b0787]                           dc.b $00
[000b0788] 000af601                  dc.l TEXT_09
[000b078c]                           dc.b $00
[000b078d]                           dc.b $02
[000b078e]                           dc.b $00
[000b078f]                           dc.b $04
[000b0790]                           dc.b $00
[000b0791]                           dc.b $06
[000b0792]                           dc.b $00
[000b0793]                           dc.b $01
_44_ED_BOXED:
[000b0794]                           dc.b $00
[000b0795]                           dc.b $30
[000b0796]                           dc.b $00
[000b0797]                           dc.b $2e
[000b0798]                           dc.b $00
[000b0799]                           dc.b $2f
[000b079a]                           dc.b $00
[000b079b]                           dc.b $14
[000b079c]                           dc.b $00
[000b079d]                           dc.b $40
[000b079e]                           dc.b $00
[000b079f]                           dc.b $20
[000b07a0]                           dc.b $00
[000b07a1]                           dc.b $ff
[000b07a2]                           dc.w $1101
[000b07a4]                           dc.b $00
[000b07a5]                           dc.b $09
[000b07a6]                           dc.b $00
[000b07a7]                           dc.b $04
[000b07a8]                           dc.b $00
[000b07a9]                           dc.b $12
[000b07aa]                           dc.b $00
[000b07ab]                           dc.b $01
_44aED_BOXED:
[000b07ac] 000256e0                  dc.l edbe_incol
[000b07b0]                           dc.b $00
[000b07b1]                           dc.b $00
[000b07b2]                           dc.b $00
[000b07b3]                           dc.b $00
[000b07b4]                           dc.w $8000
[000b07b6]                           dc.w $8852
[000b07b8]                           dc.b $00
[000b07b9]                           dc.b $00
[000b07ba]                           dc.b $00
[000b07bb]                           dc.b $00
[000b07bc]                           dc.b $00
[000b07bd]                           dc.b $00
[000b07be]                           dc.b $00
[000b07bf]                           dc.b $00
[000b07c0]                           dc.b $00
[000b07c1]                           dc.b $00
[000b07c2]                           dc.b $00
[000b07c3]                           dc.b $00
_46_ED_BOXED:
[000b07c4]                           dc.b $00
[000b07c5]                           dc.b $2f
[000b07c6]                           dc.w $ffff
[000b07c8]                           dc.w $ffff
[000b07ca]                           dc.b $00
[000b07cb]                           dc.b $14
[000b07cc]                           dc.b $00
[000b07cd]                           dc.b $00
[000b07ce]                           dc.b $00
[000b07cf]                           dc.b $00
[000b07d0]                           dc.w $4301
[000b07d2]                           dc.w $1371
[000b07d4]                           dc.b $00
[000b07d5]                           dc.b $10
[000b07d6]                           dc.b $00
[000b07d7]                           dc.b $00
[000b07d8]                           dc.b $00
[000b07d9]                           dc.b $02
[000b07da]                           dc.b $00
[000b07db]                           dc.b $01
_47_ED_BOXED:
[000b07dc]                           dc.b $00
[000b07dd]                           dc.b $2c
[000b07de]                           dc.w $ffff
[000b07e0]                           dc.w $ffff
[000b07e2]                           dc.b $00
[000b07e3]                           dc.b $18
[000b07e4]                           dc.b $00
[000b07e5]                           dc.b $00
[000b07e6]                           dc.b $00
[000b07e7]                           dc.b $00
[000b07e8] 000af924                  dc.l A_3DBUTTON27
[000b07ec]                           dc.b $00
[000b07ed]                           dc.b $00
[000b07ee]                           dc.b $00
[000b07ef]                           dc.b $00
[000b07f0]                           dc.b $00
[000b07f1]                           dc.b $10
[000b07f2]                           dc.b $00
[000b07f3]                           dc.b $01
_48_ED_BOXED:
[000b07f4]                           dc.b $00
[000b07f5]                           dc.b $21
[000b07f6]                           dc.w $ffff
[000b07f8]                           dc.w $ffff
[000b07fa]                           dc.b $00
[000b07fb]                           dc.b $18
[000b07fc]                           dc.b $00
[000b07fd]                           dc.b $41
[000b07fe]                           dc.b $00
[000b07ff]                           dc.b $00
[000b0800] 000afc64                  dc.l A_CHECKBOX01
[000b0804]                           dc.b $00
[000b0805]                           dc.b $07
[000b0806]                           dc.b $00
[000b0807]                           dc.b $00
[000b0808]                           dc.b $00
[000b0809]                           dc.b $0b
[000b080a]                           dc.b $00
[000b080b]                           dc.b $01
_48aED_BOXED:
[000b080c] 00025584                  dc.l edbe_3d
[000b0810]                           dc.b $00
[000b0811]                           dc.b $00
[000b0812]                           dc.b $00
[000b0813]                           dc.b $00
[000b0814]                           dc.w $8000
[000b0816]                           dc.w $8844
[000b0818]                           dc.b $00
[000b0819]                           dc.b $00
[000b081a]                           dc.b $00
[000b081b]                           dc.b $00
[000b081c]                           dc.b $00
[000b081d]                           dc.b $00
[000b081e]                           dc.b $00
[000b081f]                           dc.b $00
[000b0820]                           dc.b $00
[000b0821]                           dc.b $00
[000b0822]                           dc.b $00
[000b0823]                           dc.b $00
_50_ED_BOXED:
[000b0824]                           dc.b $00
[000b0825]                           dc.b $00
[000b0826]                           dc.b $00
[000b0827]                           dc.b $33
[000b0828]                           dc.b $00
[000b0829]                           dc.b $36
[000b082a]                           dc.b $00
[000b082b]                           dc.b $18
[000b082c]                           dc.b $00
[000b082d]                           dc.b $40
[000b082e]                           dc.b $00
[000b082f]                           dc.b $00
[000b0830] 000afd04                  dc.l A_INNERFRAME03
[000b0834]                           dc.b $00
[000b0835]                           dc.b $01
[000b0836]                           dc.b $00
[000b0837]                           dc.b $0f
[000b0838]                           dc.b $00
[000b0839]                           dc.b $3a
[000b083a]                           dc.b $00
[000b083b]                           dc.b $05
_51_ED_BOXED:
[000b083c]                           dc.b $00
[000b083d]                           dc.b $34
[000b083e]                           dc.w $ffff
[000b0840]                           dc.w $ffff
[000b0842]                           dc.b $00
[000b0843]                           dc.b $1c
[000b0844]                           dc.b $00
[000b0845]                           dc.b $00
[000b0846]                           dc.b $00
[000b0847]                           dc.b $00
[000b0848] 000af5f2                  dc.l TEXT_08
[000b084c]                           dc.b $00
[000b084d]                           dc.b $01
[000b084e]                           dc.b $00
[000b084f]                           dc.b $01
[000b0850]                           dc.b $00
[000b0851]                           dc.b $0e
[000b0852]                           dc.b $00
[000b0853]                           dc.b $01
_52_ED_BOXED:
[000b0854]                           dc.b $00
[000b0855]                           dc.b $35
[000b0856]                           dc.w $ffff
[000b0858]                           dc.w $ffff
[000b085a]                           dc.b $00
[000b085b]                           dc.b $1c
[000b085c]                           dc.b $00
[000b085d]                           dc.b $00
[000b085e]                           dc.b $00
[000b085f]                           dc.b $00
[000b0860] 000af642                  dc.l TEXT_16
[000b0864]                           dc.b $00
[000b0865]                           dc.b $01
[000b0866]                           dc.b $00
[000b0867]                           dc.b $03
[000b0868]                           dc.b $00
[000b0869]                           dc.b $0d
[000b086a]                           dc.b $00
[000b086b]                           dc.b $01
_53_ED_BOXED:
[000b086c]                           dc.b $00
[000b086d]                           dc.b $36
[000b086e]                           dc.w $ffff
[000b0870]                           dc.w $ffff
[000b0872]                           dc.b $00
[000b0873]                           dc.b $18
[000b0874]                           dc.b $00
[000b0875]                           dc.b $08
[000b0876]                           dc.b $00
[000b0877]                           dc.b $10
[000b0878] 000afc24                  dc.l A_BOXED04
[000b087c]                           dc.b $00
[000b087d]                           dc.b $10
[000b087e]                           dc.b $00
[000b087f]                           dc.b $01
[000b0880]                           dc.b $00
[000b0881]                           dc.b $29
[000b0882]                           dc.b $00
[000b0883]                           dc.b $01
_54_ED_BOXED:
[000b0884]                           dc.b $00
[000b0885]                           dc.b $32
[000b0886]                           dc.w $ffff
[000b0888]                           dc.w $ffff
[000b088a]                           dc.b $00
[000b088b]                           dc.b $18
[000b088c]                           dc.b $00
[000b088d]                           dc.b $28
[000b088e]                           dc.b $00
[000b088f]                           dc.b $10
[000b0890] 000afc44                  dc.l A_BOXED05
[000b0894]                           dc.b $00
[000b0895]                           dc.b $10
[000b0896]                           dc.b $00
[000b0897]                           dc.b $03
[000b0898]                           dc.b $00
[000b0899]                           dc.b $29
[000b089a]                           dc.b $00
[000b089b]                           dc.b $01
masklist:
[000b089c] 000af3db                  dc.l PMT00
[000b08a0] 000af3ea                  dc.l PMT01
[000b08a4] 000af3fa                  dc.l PMT02
[000b08a8] 000af40a                  dc.l PMT03
[000b08ac] 000af416                  dc.l PMT04
[000b08b0] 000af429                  dc.l PMT05
[000b08b4] 000af434                  dc.l PMT06
[000b08b8] 000af446                  dc.l PMT07
[000b08bc] 000af44f                  dc.l PMT08
[000b08c0] 000af45c                  dc.l PMT09
[000b08c4] 000af472                  dc.l PMT10
[000b08c8] 000af47e                  dc.l PMT11
[000b08cc] 000af48f                  dc.l PMT12
[000b08d0] 000af49b                  dc.l PMT13
[000b08d4] 000af4ac                  dc.l PMT14
[000b08d8] 000af4ba                  dc.l PMT15
[000b08dc] 000af4cd                  dc.l PMT16
[000b08e0] 000af4df                  dc.l PMT17
[000b08e4] 000af4f6                  dc.l PMT18
[000b08e8] 000af507                  dc.l PMT19
[000b08ec] 000af51d                  dc.l PMT20
[000b08f0] 000af52a                  dc.l PMT21
[000b08f4] 000af537                  dc.l PMT22
[000b08f8] 000af544                  dc.l PMT23
[000b08fc] 000af551                  dc.l PMT24
[000b0900] 000af566                  dc.l PMT25
[000b0904] 000af578                  dc.l PMT26
[000b0908] 000b09f6                  dc.l $000b09f6 ; no symbol found
[000b090c] 000b09f6                  dc.l $000b09f6 ; no symbol found
[000b0910] 000b09f6                  dc.l $000b09f6 ; no symbol found
[000b0914] 000b09f6                  dc.l $000b09f6 ; no symbol found
[000b0918] 000b09f6                  dc.l $000b09f6 ; no symbol found
[000b091c] 000b09f6                  dc.l $000b09f6 ; no symbol found
[000b0920] 000b09f6                  dc.l $000b09f6 ; no symbol found
[000b0924] 000b09f6                  dc.l $000b09f6 ; no symbol found
DB1:
[000b0928] 0005e9d2                  dc.l A_boxed
[000b092c]                           dc.w $9038
[000b092e]                           dc.w $ff12
[000b0930] 0005e010                  dc.l Auo_boxed
[000b0934] 000b09f7                  dc.l $000b09f7 ; no symbol found
[000b0938]                           dc.b $00
[000b0939]                           dc.b $00
[000b093a]                           dc.b $00
[000b093b]                           dc.b $00
[000b093c]                           dc.b $00
[000b093d]                           dc.b $00
[000b093e]                           dc.b $00
[000b093f]                           dc.b $00
[000b0940]                           dc.b $00
[000b0941]                           dc.b $00
[000b0942]                           dc.b $00
[000b0943]                           dc.b $00
[000b0944]                           dc.b $00
[000b0945]                           dc.b $00
[000b0946]                           dc.b $00
[000b0947]                           dc.b $00
visual:
[000b0948]                           dc.w $ffff
[000b094a]                           dc.w $ffff
[000b094c]                           dc.w $ffff
[000b094e]                           dc.b $00
[000b094f]                           dc.b $18
[000b0950]                           dc.w $2005
[000b0952]                           dc.b $00
[000b0953]                           dc.b $10
[000b0954] 000b0928                  dc.l DB1
[000b0958]                           dc.b $00
[000b0959]                           dc.b $00
[000b095a]                           dc.b $00
[000b095b]                           dc.b $00
[000b095c]                           dc.b $00
[000b095d]                           dc.b $0a
[000b095e]                           dc.b $00
[000b095f]                           dc.b $01
logical:
[000b0960]                           dc.w $ffff
[000b0962]                           dc.w $ffff
[000b0964]                           dc.w $ffff
[000b0966]                           dc.b $00
[000b0967]                           dc.b $18
[000b0968]                           dc.b $00
[000b0969]                           dc.b $08
[000b096a]                           dc.b $00
[000b096b]                           dc.b $10
[000b096c] 000b0928                  dc.l DB1
[000b0970]                           dc.b $00
[000b0971]                           dc.b $00
[000b0972]                           dc.b $00
[000b0973]                           dc.b $00
[000b0974]                           dc.b $00
[000b0975]                           dc.b $0a
[000b0976]                           dc.b $00
[000b0977]                           dc.b $01
aud:
[000b0978] 000b09ff                  dc.l $000b09ff ; no symbol found
[000b097c] 000b0a0b                  dc.l $000b0a0b ; no symbol found
[000b0980]                           dc.b $00
[000b0981]                           dc.b $02
[000b0982] 000b0a15                  dc.l $000b0a15 ; no symbol found
[000b0986]                           dc.b $00
[000b0987]                           dc.b $00
[000b0988]                           dc.b $00
[000b0989]                           dc.b $00
[000b098a]                           dc.b $00
[000b098b]                           dc.b $00
[000b098c]                           dc.b $00
[000b098d]                           dc.b $00
[000b098e]                           dc.b $00
[000b098f]                           dc.b $00
[000b0990]                           dc.b $00
[000b0991]                           dc.b $00
[000b0992]                           dc.b $00
[000b0993]                           dc.b $00
[000b0994]                           dc.b $00
[000b0995]                           dc.b $00
[000b0996]                           dc.b $00
[000b0997]                           dc.b $00
[000b0998]                           dc.b $00
[000b0999]                           dc.b $00
[000b099a]                           dc.b $00
[000b099b]                           dc.b $00
[000b099c]                           dc.b $00
[000b099d]                           dc.b $00
[000b099e]                           dc.b $00
[000b099f]                           dc.b $00
[000b09a0]                           dc.b $00
[000b09a1]                           dc.b $00
[000b09a2]                           dc.b $00
[000b09a3]                           dc.b $00
[000b09a4]                           dc.b $00
[000b09a5]                           dc.b $00
data:
[000b09a6]                           dc.b 'A_boxed',0
[000b09ae]                           dc.b $00
[000b09af]                           dc.b $00
[000b09b0]                           dc.b $00
[000b09b1]                           dc.b $00
[000b09b2]                           dc.b $00
[000b09b3]                           dc.b $00
[000b09b4]                           dc.b $00
[000b09b5]                           dc.b $00
[000b09b6]                           dc.b $00
[000b09b7]                           dc.b $00
[000b09b8]                           dc.b $00
[000b09b9]                           dc.b $00
[000b09ba]                           dc.b $00
[000b09bb]                           dc.b $00
[000b09bc]                           dc.b $00
[000b09bd]                           dc.b $00
[000b09be]                           dc.b $00
[000b09bf]                           dc.b $00
[000b09c0]                           dc.b $00
[000b09c1]                           dc.b $00
[000b09c2]                           dc.b $00
[000b09c3]                           dc.b $00
[000b09c4]                           dc.b $00
[000b09c5]                           dc.b $00
[000b09c6] 0002509e                  dc.l object_tree
[000b09ca] 0002538e                  dc.l test_it
[000b09ce] 00025436                  dc.l ok
[000b09d2] 00049b7c                  dc.l Aob_delete
[000b09d6] 000b0948                  dc.l visual
[000b09da] 000b0960                  dc.l logical
[000b09de] 000b0978                  dc.l aud
[000b09e2] 0002505a                  dc.l minsize
[000b09e6]                           dc.b $00
[000b09e7]                           dc.b $00
[000b09e8]                           dc.b $00
[000b09e9]                           dc.b $00
[000b09ea] 000af6da                  dc.l title
[000b09ee] 000af6c7                  dc.l help_title
[000b09f2]                           dc.b $00
[000b09f3]                           dc.b $00
[000b09f4]                           dc.b $00
[000b09f5]                           dc.b $00
[000b09f6]                           dc.b $00
[000b09f7]                           dc.b 'BoxEdit',0
[000b09ff]                           dc.b '0x9038ff12L',0
[000b0a0b]                           dc.b 'Auo_boxed',0
[000b0a15]                           dc.b 'Text',0
[000b0a1a]                           dc.b '0x%lxL',0
[000b0a21]                           dc.b $25
[000b0a22]                           dc.w $6400
