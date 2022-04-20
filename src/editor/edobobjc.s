ed_abort:
[0002d91e] 2079 0010 1f12            movea.l    ACSblk,a0
[0002d924] 2068 0258                 movea.l    600(a0),a0
[0002d928] 4eb9 0002 d930            jsr        $0002D930
[0002d92e] 4e75                      rts
ed_wabort:
[0002d930] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002d934] 2448                      movea.l    a0,a2
[0002d936] 2279 0010 1f12            movea.l    ACSblk,a1
[0002d93c] b1e9 0240                 cmpa.l     576(a1),a0
[0002d940] 6606                      bne.s      $0002D948
[0002d942] 4eb9 0004 4a26            jsr        $00044A26
[0002d948] 4eb9 0004 b286            jsr        $0004B286
[0002d94e] 2652                      movea.l    (a2),a3
[0002d950] 026a fffe 0054            andi.w     #$FFFE,84(a2)
[0002d956] 70ff                      moveq.l    #-1,d0
[0002d958] 3540 001e                 move.w     d0,30(a2)
[0002d95c] 3540 001c                 move.w     d0,28(a2)
[0002d960] 206a 0014                 movea.l    20(a2),a0
[0002d964] 226b 0022                 movea.l    34(a3),a1
[0002d968] 4e91                      jsr        (a1)
[0002d96a] 42aa 0014                 clr.l      20(a2)
[0002d96e] 202b 0026                 move.l     38(a3),d0
[0002d972] 6728                      beq.s      $0002D99C
[0002d974] 206a 004a                 movea.l    74(a2),a0
[0002d978] 4eb9 0004 371c            jsr        $0004371C
[0002d97e] 256b 0026 004a            move.l     38(a3),74(a2)
[0002d984] 302a 0020                 move.w     32(a2),d0
[0002d988] 6f12                      ble.s      $0002D99C
[0002d98a] 4267                      clr.w      -(a7)
[0002d98c] 4267                      clr.w      -(a7)
[0002d98e] 2f2a 004a                 move.l     74(a2),-(a7)
[0002d992] 7202                      moveq.l    #2,d1
[0002d994] 4eb9 0007 1656            jsr        $00071656
[0002d99a] 504f                      addq.w     #8,a7
[0002d99c] 206a 009a                 movea.l    154(a2),a0
[0002d9a0] 4eb9 0004 3a92            jsr        $00043A92
[0002d9a6] 4a40                      tst.w      d0
[0002d9a8] 660a                      bne.s      $0002D9B4
[0002d9aa] 206a 009a                 movea.l    154(a2),a0
[0002d9ae] 4eb9 0004 371c            jsr        $0004371C
[0002d9b4] 256b 002a 009a            move.l     42(a3),154(a2)
[0002d9ba] 206a 009e                 movea.l    158(a2),a0
[0002d9be] 4eb9 0004 3a92            jsr        $00043A92
[0002d9c4] 4a40                      tst.w      d0
[0002d9c6] 660a                      bne.s      $0002D9D2
[0002d9c8] 206a 009e                 movea.l    158(a2),a0
[0002d9cc] 4eb9 0004 371c            jsr        $0004371C
[0002d9d2] 256b 002e 009e            move.l     46(a3),158(a2)
[0002d9d8] 302a 0056                 move.w     86(a2),d0
[0002d9dc] c07c 0100                 and.w      #$0100,d0
[0002d9e0] 6600 00cc                 bne        $0002DAAE
[0002d9e4] 356b 0010 0024            move.w     16(a3),36(a2)
[0002d9ea] 356b 0012 0026            move.w     18(a3),38(a2)
[0002d9f0] 356b 0014 0028            move.w     20(a3),40(a2)
[0002d9f6] 356b 0016 002a            move.w     22(a3),42(a2)
[0002d9fc] 2079 000b c9d6            movea.l    $000BC9D6,a0
[0002da02] 4eb9 0004 9a5c            jsr        $00049A5C
[0002da08] 2848                      movea.l    a0,a4
[0002da0a] 2548 005e                 move.l     a0,94(a2)
[0002da0e] 200c                      move.l     a4,d0
[0002da10] 6710                      beq.s      $0002DA22
[0002da12] 204c                      movea.l    a4,a0
[0002da14] 4eb9 0004 a25e            jsr        $0004A25E
[0002da1a] 204c                      movea.l    a4,a0
[0002da1c] 4eb9 0004 975e            jsr        $0004975E
[0002da22] 204a                      movea.l    a2,a0
[0002da24] 226a 0010                 movea.l    16(a2),a1
[0002da28] 4e91                      jsr        (a1)
[0002da2a] 206a 0014                 movea.l    20(a2),a0
[0002da2e] 316b 000c 0010            move.w     12(a3),16(a0)
[0002da34] 206a 0014                 movea.l    20(a2),a0
[0002da38] 316b 000e 0012            move.w     14(a3),18(a0)
[0002da3e] 302a 0022                 move.w     34(a2),d0
[0002da42] c07c 0100                 and.w      #$0100,d0
[0002da46] 670a                      beq.s      $0002DA52
[0002da48] 322a 0022                 move.w     34(a2),d1
[0002da4c] c27c 0800                 and.w      #$0800,d1
[0002da50] 6624                      bne.s      $0002DA76
[0002da52] 006a 0fe0 0022            ori.w      #$0FE0,34(a2)
[0002da58] 006a 0100 0056            ori.w      #$0100,86(a2)
[0002da5e] 204a                      movea.l    a2,a0
[0002da60] 4eb9 0005 013e            jsr        $0005013E
[0002da66] 204a                      movea.l    a2,a0
[0002da68] 4eb9 0004 f69e            jsr        $0004F69E
[0002da6e] 026a feff 0056            andi.w     #$FEFF,86(a2)
[0002da74] 6008                      bra.s      $0002DA7E
[0002da76] 204a                      movea.l    a2,a0
[0002da78] 4eb9 0001 454a            jsr        $0001454A
[0002da7e] 286b 001e                 movea.l    30(a3),a4
[0002da82] 2079 0010 1f12            movea.l    ACSblk,a0
[0002da88] 3028 0246                 move.w     582(a0),d0
[0002da8c] 6620                      bne.s      $0002DAAE
[0002da8e] 220c                      move.l     a4,d1
[0002da90] 671c                      beq.s      $0002DAAE
[0002da92] 361c                      move.w     (a4)+,d3
[0002da94] 6014                      bra.s      $0002DAAA
[0002da96] 321c                      move.w     (a4)+,d1
[0002da98] 3001                      move.w     d1,d0
[0002da9a] d040                      add.w      d0,d0
[0002da9c] d041                      add.w      d1,d0
[0002da9e] 5440                      addq.w     #2,d0
[0002daa0] 204a                      movea.l    a2,a0
[0002daa2] 4eb9 0004 487c            jsr        $0004487C
[0002daa8] 5343                      subq.w     #1,d3
[0002daaa] 4a43                      tst.w      d3
[0002daac] 6ee8                      bgt.s      $0002DA96
[0002daae] 206b 001e                 movea.l    30(a3),a0
[0002dab2] 4eb9 0004 7d6c            jsr        $00047D6C
[0002dab8] 42ab 001e                 clr.l      30(a3)
[0002dabc] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0002dac0] 4e75                      rts
edob_refs:
[0002dac2] 48e7 0038                 movem.l    a2-a4,-(a7)
[0002dac6] 2079 0010 1f12            movea.l    ACSblk,a0
[0002dacc] 2468 0258                 movea.l    600(a0),a2
[0002dad0] 2652                      movea.l    (a2),a3
[0002dad2] 302b 000a                 move.w     10(a3),d0
[0002dad6] 6b4c                      bmi.s      $0002DB24
[0002dad8] 322b 0018                 move.w     24(a3),d1
[0002dadc] 6b46                      bmi.s      $0002DB24
[0002dade] 226b 0004                 movea.l    4(a3),a1
[0002dae2] 2869 0004                 movea.l    4(a1),a4
[0002dae6] 48c0                      ext.l      d0
[0002dae8] 2400                      move.l     d0,d2
[0002daea] e78a                      lsl.l      #3,d2
[0002daec] 9480                      sub.l      d0,d2
[0002daee] e78a                      lsl.l      #3,d2
[0002daf0] d9c2                      adda.l     d2,a4
[0002daf2] 204c                      movea.l    a4,a0
[0002daf4] 4eb9 0003 177e            jsr        $0003177E
[0002dafa] 2848                      movea.l    a0,a4
[0002dafc] 200c                      move.l     a4,d0
[0002dafe] 6724                      beq.s      $0002DB24
[0002db00] 2f2c 0014                 move.l     20(a4),-(a7)
[0002db04] 2f2c 0010                 move.l     16(a4),-(a7)
[0002db08] 42a7                      clr.l      -(a7)
[0002db0a] 2f2c 0008                 move.l     8(a4),-(a7)
[0002db0e] 2f2c 0004                 move.l     4(a4),-(a7)
[0002db12] 2f2c 000c                 move.l     12(a4),-(a7)
[0002db16] 2250                      movea.l    (a0),a1
[0002db18] 204a                      movea.l    a2,a0
[0002db1a] 4eb9 0002 db2a            jsr        $0002DB2A
[0002db20] 4fef 0018                 lea.l      24(a7),a7
[0002db24] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002db28] 4e75                      rts
change_work:
[0002db2a] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[0002db2e] 4fef fef4                 lea.l      -268(a7),a7
[0002db32] 2448                      movea.l    a0,a2
[0002db34] 2849                      movea.l    a1,a4
[0002db36] 2c6f 0134                 movea.l    308(a7),a6
[0002db3a] 006a 0001 0054            ori.w      #$0001,84(a2)
[0002db40] 4eb9 0004 b286            jsr        $0004B286
[0002db46] 2652                      movea.l    (a2),a3
[0002db48] 2079 0010 1f12            movea.l    ACSblk,a0
[0002db4e] 3628 0246                 move.w     582(a0),d3
[0002db52] 4a43                      tst.w      d3
[0002db54] 6f4c                      ble.s      $0002DBA2
[0002db56] b5e8 0240                 cmpa.l     576(a0),a2
[0002db5a] 6646                      bne.s      $0002DBA2
[0002db5c] 7001                      moveq.l    #1,d0
[0002db5e] d043                      add.w      d3,d0
[0002db60] 48c0                      ext.l      d0
[0002db62] d080                      add.l      d0,d0
[0002db64] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002db6a] 2a48                      movea.l    a0,a5
[0002db6c] 2748 001e                 move.l     a0,30(a3)
[0002db70] 200d                      move.l     a5,d0
[0002db72] 6726                      beq.s      $0002DB9A
[0002db74] 3ac3                      move.w     d3,(a5)+
[0002db76] 2079 0010 1f12            movea.l    ACSblk,a0
[0002db7c] 4268 0248                 clr.w      584(a0)
[0002db80] 6010                      bra.s      $0002DB92
[0002db82] 4eb9 0004 484c            jsr        $0004484C
[0002db88] 5540                      subq.w     #2,d0
[0002db8a] 48c0                      ext.l      d0
[0002db8c] 81fc 0003                 divs.w     #$0003,d0
[0002db90] 3ac0                      move.w     d0,(a5)+
[0002db92] 3003                      move.w     d3,d0
[0002db94] 5343                      subq.w     #1,d3
[0002db96] 4a40                      tst.w      d0
[0002db98] 6ee8                      bgt.s      $0002DB82
[0002db9a] 4eb9 0004 4a26            jsr        $00044A26
[0002dba0] 6004                      bra.s      $0002DBA6
[0002dba2] 42ab 001e                 clr.l      30(a3)
[0002dba6] 2a6a 0014                 movea.l    20(a2),a5
[0002dbaa] 376d 0010 000c            move.w     16(a5),12(a3)
[0002dbb0] 376d 0012 000e            move.w     18(a5),14(a3)
[0002dbb6] 302a 0056                 move.w     86(a2),d0
[0002dbba] c07c 0800                 and.w      #$0800,d0
[0002dbbe] 671a                      beq.s      $0002DBDA
[0002dbc0] 376a 002c 0010            move.w     44(a2),16(a3)
[0002dbc6] 376a 002e 0012            move.w     46(a2),18(a3)
[0002dbcc] 376a 0030 0014            move.w     48(a2),20(a3)
[0002dbd2] 376a 0032 0016            move.w     50(a2),22(a3)
[0002dbd8] 6018                      bra.s      $0002DBF2
[0002dbda] 376a 0024 0010            move.w     36(a2),16(a3)
[0002dbe0] 376a 0026 0012            move.w     38(a2),18(a3)
[0002dbe6] 376a 0028 0014            move.w     40(a2),20(a3)
[0002dbec] 376a 002a 0016            move.w     42(a2),22(a3)
[0002dbf2] 206a 005e                 movea.l    94(a2),a0
[0002dbf6] 4eb9 0004 9b7c            jsr        $00049B7C
[0002dbfc] 254e 005e                 move.l     a6,94(a2)
[0002dc00] 200e                      move.l     a6,d0
[0002dc02] 6708                      beq.s      $0002DC0C
[0002dc04] 204e                      movea.l    a6,a0
[0002dc06] 4eb9 0004 975e            jsr        $0004975E
[0002dc0c] 204d                      movea.l    a5,a0
[0002dc0e] 4eb9 0004 7e26            jsr        $00047E26
[0002dc14] 2a4c                      movea.l    a4,a5
[0002dc16] 254d 0014                 move.l     a5,20(a2)
[0002dc1a] 377c 0002 0008            move.w     #$0002,8(a3)
[0002dc20] 204d                      movea.l    a5,a0
[0002dc22] 4eb9 0004 a25e            jsr        $0004A25E
[0002dc28] 7208                      moveq.l    #8,d1
[0002dc2a] 70ff                      moveq.l    #-1,d0
[0002dc2c] 204d                      movea.l    a5,a0
[0002dc2e] 4eb9 0004 aeca            jsr        $0004AECA
[0002dc34] 3540 001c                 move.w     d0,28(a2)
[0002dc38] 357c ffff 001e            move.w     #$FFFF,30(a2)
[0002dc3e] 276f 012c 001a            move.l     300(a7),26(a3)
[0002dc44] 276f 0130 0022            move.l     304(a7),34(a3)
[0002dc4a] 202f 0128                 move.l     296(a7),d0
[0002dc4e] 6754                      beq.s      $0002DCA4
[0002dc50] 2240                      movea.l    d0,a1
[0002dc52] 41d7                      lea.l      (a7),a0
[0002dc54] 203c 0000 0100            move.l     #$00000100,d0
[0002dc5a] 4eb9 0007 6a1a            jsr        $00076A1A
[0002dc60] 203c 0000 0100            move.l     #$00000100,d0
[0002dc66] 226a 004a                 movea.l    74(a2),a1
[0002dc6a] 41d7                      lea.l      (a7),a0
[0002dc6c] 4eb9 0007 69da            jsr        $000769DA
[0002dc72] 41d7                      lea.l      (a7),a0
[0002dc74] 4eb9 0004 36d6            jsr        Ast_create
[0002dc7a] 2f48 0100                 move.l     a0,256(a7)
[0002dc7e] 2008                      move.l     a0,d0
[0002dc80] 6722                      beq.s      $0002DCA4
[0002dc82] 276a 004a 0026            move.l     74(a2),38(a3)
[0002dc88] 2540 004a                 move.l     d0,74(a2)
[0002dc8c] 322a 0020                 move.w     32(a2),d1
[0002dc90] 6f12                      ble.s      $0002DCA4
[0002dc92] 4267                      clr.w      -(a7)
[0002dc94] 4267                      clr.w      -(a7)
[0002dc96] 2f00                      move.l     d0,-(a7)
[0002dc98] 3001                      move.w     d1,d0
[0002dc9a] 7202                      moveq.l    #2,d1
[0002dc9c] 4eb9 0007 1656            jsr        $00071656
[0002dca2] 504f                      addq.w     #8,a7
[0002dca4] 276a 009a 002a            move.l     154(a2),42(a3)
[0002dcaa] 276a 009e 002e            move.l     158(a2),46(a3)
[0002dcb0] 206f 0138                 movea.l    312(a7),a0
[0002dcb4] 4eb9 0004 36d6            jsr        Ast_create
[0002dcba] 2548 009a                 move.l     a0,154(a2)
[0002dcbe] 206f 013c                 movea.l    316(a7),a0
[0002dcc2] 4eb9 0004 36d6            jsr        Ast_create
[0002dcc8] 2548 009e                 move.l     a0,158(a2)
[0002dccc] 2279 0010 1f12            movea.l    ACSblk,a1
[0002dcd2] 3029 0004                 move.w     4(a1),d0
[0002dcd6] d040                      add.w      d0,d0
[0002dcd8] d06d 0014                 add.w      20(a5),d0
[0002dcdc] 3540 0028                 move.w     d0,40(a2)
[0002dce0] 2079 0010 1f12            movea.l    ACSblk,a0
[0002dce6] 3228 0006                 move.w     6(a0),d1
[0002dcea] e549                      lsl.w      #2,d1
[0002dcec] d26d 0016                 add.w      22(a5),d1
[0002dcf0] 3541 002a                 move.w     d1,42(a2)
[0002dcf4] 49ef 0104                 lea.l      260(a7),a4
[0002dcf8] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0002dcfe] 486c 0006                 pea.l      6(a4)
[0002dd02] 486c 0004                 pea.l      4(a4)
[0002dd06] 206a 0014                 movea.l    20(a2),a0
[0002dd0a] 3f28 0016                 move.w     22(a0),-(a7)
[0002dd0e] 3f28 0014                 move.w     20(a0),-(a7)
[0002dd12] 3f28 0012                 move.w     18(a0),-(a7)
[0002dd16] 43ec 0002                 lea.l      2(a4),a1
[0002dd1a] 204c                      movea.l    a4,a0
[0002dd1c] 266a 0014                 movea.l    20(a2),a3
[0002dd20] 342b 0010                 move.w     16(a3),d2
[0002dd24] 322a 0022                 move.w     34(a2),d1
[0002dd28] c27c f01f                 and.w      #$F01F,d1
[0002dd2c] 4240                      clr.w      d0
[0002dd2e] 4eb9 0006 d60a            jsr        $0006D60A
[0002dd34] 4fef 0012                 lea.l      18(a7),a7
[0002dd38] 302a 0022                 move.w     34(a2),d0
[0002dd3c] 2079 0010 1f12            movea.l    ACSblk,a0
[0002dd42] 322c 0004                 move.w     4(a4),d1
[0002dd46] b268 000c                 cmp.w      12(a0),d1
[0002dd4a] 6c04                      bge.s      $0002DD50
[0002dd4c] c07c f1ff                 and.w      #$F1FF,d0
[0002dd50] 2079 0010 1f12            movea.l    ACSblk,a0
[0002dd56] 322c 0006                 move.w     6(a4),d1
[0002dd5a] b268 000e                 cmp.w      14(a0),d1
[0002dd5e] 6c04                      bge.s      $0002DD64
[0002dd60] c07c fe3f                 and.w      #$FE3F,d0
[0002dd64] 3200                      move.w     d0,d1
[0002dd66] c27c 0900                 and.w      #$0900,d1
[0002dd6a] 6604                      bne.s      $0002DD70
[0002dd6c] c07c ffdf                 and.w      #$FFDF,d0
[0002dd70] b06a 0022                 cmp.w      34(a2),d0
[0002dd74] 6722                      beq.s      $0002DD98
[0002dd76] 3540 0022                 move.w     d0,34(a2)
[0002dd7a] 006a 0100 0056            ori.w      #$0100,86(a2)
[0002dd80] 204a                      movea.l    a2,a0
[0002dd82] 4eb9 0005 013e            jsr        $0005013E
[0002dd88] 204a                      movea.l    a2,a0
[0002dd8a] 4eb9 0004 f69e            jsr        $0004F69E
[0002dd90] 026a feff 0056            andi.w     #$FEFF,86(a2)
[0002dd96] 6008                      bra.s      $0002DDA0
[0002dd98] 204a                      movea.l    a2,a0
[0002dd9a] 4eb9 0001 44f2            jsr        $000144F2
[0002dda0] 4fef 010c                 lea.l      268(a7),a7
[0002dda4] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[0002dda8] 4e75                      rts
edob_aflags:
[0002ddaa] 2f0a                      move.l     a2,-(a7)
[0002ddac] 2f0b                      move.l     a3,-(a7)
[0002ddae] 41f9 0010 1f12            lea.l      ACSblk,a0
[0002ddb4] 2250                      movea.l    (a0),a1
[0002ddb6] 2469 0258                 movea.l    600(a1),a2
[0002ddba] 2252                      movea.l    (a2),a1
[0002ddbc] 2650                      movea.l    (a0),a3
[0002ddbe] b5eb 0240                 cmpa.l     576(a3),a2
[0002ddc2] 663c                      bne.s      $0002DE00
[0002ddc4] 302b 0246                 move.w     582(a3),d0
[0002ddc8] 6b36                      bmi.s      $0002DE00
[0002ddca] 3229 0018                 move.w     24(a1),d1
[0002ddce] 6b30                      bmi.s      $0002DE00
[0002ddd0] 91c8                      suba.l     a0,a0
[0002ddd2] 4eb9 0003 103a            jsr        $0003103A
[0002ddd8] 2648                      movea.l    a0,a3
[0002ddda] 200b                      move.l     a3,d0
[0002dddc] 6722                      beq.s      $0002DE00
[0002ddde] 2f2b 0014                 move.l     20(a3),-(a7)
[0002dde2] 2f2b 0010                 move.l     16(a3),-(a7)
[0002dde6] 42a7                      clr.l      -(a7)
[0002dde8] 2f2b 0008                 move.l     8(a3),-(a7)
[0002ddec] 2f2b 0004                 move.l     4(a3),-(a7)
[0002ddf0] 2f2b 000c                 move.l     12(a3),-(a7)
[0002ddf4] 2250                      movea.l    (a0),a1
[0002ddf6] 204a                      movea.l    a2,a0
[0002ddf8] 6100 fd30                 bsr        $0002DB2A
[0002ddfc] 4fef 0018                 lea.l      24(a7),a7
[0002de00] 265f                      movea.l    (a7)+,a3
[0002de02] 245f                      movea.l    (a7)+,a2
[0002de04] 4e75                      rts
edob_hide:
[0002de06] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0002de0a] 2079 0010 1f12            movea.l    ACSblk,a0
[0002de10] 2468 0258                 movea.l    600(a0),a2
[0002de14] 2652                      movea.l    (a2),a3
[0002de16] 2253                      movea.l    (a3),a1
[0002de18] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002de1e] 362b 000a                 move.w     10(a3),d3
[0002de22] 4a43                      tst.w      d3
[0002de24] 6f54                      ble.s      $0002DE7A
[0002de26] 377c ffff 000a            move.w     #$FFFF,10(a3)
[0002de2c] 4eb9 0004 4a26            jsr        $00044A26
[0002de32] 286a 0014                 movea.l    20(a2),a4
[0002de36] 3803                      move.w     d3,d4
[0002de38] d844                      add.w      d4,d4
[0002de3a] d843                      add.w      d3,d4
[0002de3c] 5444                      addq.w     #2,d4
[0002de3e] 3004                      move.w     d4,d0
[0002de40] 204a                      movea.l    a2,a0
[0002de42] 4eb9 0002 d8e6            jsr        $0002D8E6
[0002de48] 3204                      move.w     d4,d1
[0002de4a] 48c1                      ext.l      d1
[0002de4c] 2001                      move.l     d1,d0
[0002de4e] d080                      add.l      d0,d0
[0002de50] d081                      add.l      d1,d0
[0002de52] e788                      lsl.l      #3,d0
[0002de54] 0074 0080 0808            ori.w      #$0080,8(a4,d0.l)
[0002de5a] 0074 0080 08f0            ori.w      #$0080,-16(a4,d0.l)
[0002de60] 206b 0004                 movea.l    4(a3),a0
[0002de64] 2868 0004                 movea.l    4(a0),a4
[0002de68] 3803                      move.w     d3,d4
[0002de6a] 48c4                      ext.l      d4
[0002de6c] 2404                      move.l     d4,d2
[0002de6e] e78a                      lsl.l      #3,d2
[0002de70] 9484                      sub.l      d4,d2
[0002de72] e78a                      lsl.l      #3,d2
[0002de74] 0074 0080 2810            ori.w      #$0080,16(a4,d2.l)
[0002de7a] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[0002de7e] 4e75                      rts
set_userdata:
[0002de80] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0002de84] 2848                      movea.l    a0,a4
[0002de86] 3600                      move.w     d0,d3
[0002de88] 3801                      move.w     d1,d4
[0002de8a] 2279 0010 1f12            movea.l    ACSblk,a1
[0002de90] 2069 0258                 movea.l    600(a1),a0
[0002de94] 2450                      movea.l    (a0),a2
[0002de96] 206a 0004                 movea.l    4(a2),a0
[0002de9a] 2668 0004                 movea.l    4(a0),a3
[0002de9e] 322a 000a                 move.w     10(a2),d1
[0002dea2] 48c1                      ext.l      d1
[0002dea4] 2401                      move.l     d1,d2
[0002dea6] e78a                      lsl.l      #3,d2
[0002dea8] 9481                      sub.l      d1,d2
[0002deaa] e78a                      lsl.l      #3,d2
[0002deac] d7c2                      adda.l     d2,a3
[0002deae] 302b 001c                 move.w     28(a3),d0
[0002deb2] 4eb9 0002 bfbe            jsr        $0002BFBE
[0002deb8] b640                      cmp.w      d0,d3
[0002deba] 6f0c                      ble.s      $0002DEC8
[0002debc] 3003                      move.w     d3,d0
[0002debe] 4eb9 0002 bf2a            jsr        $0002BF2A
[0002dec4] 3740 001c                 move.w     d0,28(a3)
[0002dec8] 302b 001e                 move.w     30(a3),d0
[0002decc] 4eb9 0002 bfe6            jsr        $0002BFE6
[0002ded2] b840                      cmp.w      d0,d4
[0002ded4] 6f0c                      ble.s      $0002DEE2
[0002ded6] 3004                      move.w     d4,d0
[0002ded8] 4eb9 0002 bf74            jsr        $0002BF74
[0002dede] 3740 001e                 move.w     d0,30(a3)
[0002dee2] 2f0c                      move.l     a4,-(a7)
[0002dee4] 226b 0014                 movea.l    20(a3),a1
[0002dee8] 2052                      movea.l    (a2),a0
[0002deea] 4eb9 0003 3b9e            jsr        $00033B9E
[0002def0] 584f                      addq.w     #4,a7
[0002def2] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[0002def6] 4e75                      rts
edob_specs:
[0002def8] 48e7 003c                 movem.l    a2-a5,-(a7)
[0002defc] 4fef ffae                 lea.l      -82(a7),a7
[0002df00] 2079 0010 1f12            movea.l    ACSblk,a0
[0002df06] 2ea8 0258                 move.l     600(a0),(a7)
[0002df0a] 2257                      movea.l    (a7),a1
[0002df0c] 2851                      movea.l    (a1),a4
[0002df0e] 302c 000a                 move.w     10(a4),d0
[0002df12] 6b00 0164                 bmi        $0002E078
[0002df16] 206c 0004                 movea.l    4(a4),a0
[0002df1a] 2668 0004                 movea.l    4(a0),a3
[0002df1e] 48c0                      ext.l      d0
[0002df20] 2200                      move.l     d0,d1
[0002df22] e789                      lsl.l      #3,d1
[0002df24] 9280                      sub.l      d0,d1
[0002df26] e789                      lsl.l      #3,d1
[0002df28] d7c1                      adda.l     d1,a3
[0002df2a] 142b 000f                 move.b     15(a3),d2
[0002df2e] 4882                      ext.w      d2
[0002df30] 947c 0014                 sub.w      #$0014,d2
[0002df34] b47c 000d                 cmp.w      #$000D,d2
[0002df38] 6200 0116                 bhi        $0002E050
[0002df3c] d442                      add.w      d2,d2
[0002df3e] 343b 2006                 move.w     $0002DF46(pc,d2.w),d2
[0002df42] 4efb 2002                 jmp        $0002DF46(pc,d2.w)
J22:
[0002df46] 001c                      dc.w $001c   ; $0002df62-$0002df46
[0002df48] 002a                      dc.w $002a   ; $0002df70-$0002df46
[0002df4a] 002a                      dc.w $002a   ; $0002df70-$0002df46
[0002df4c] 0038                      dc.w $0038   ; $0002df7e-$0002df46
[0002df4e] 0046                      dc.w $0046   ; $0002df8c-$0002df46
[0002df50] 001c                      dc.w $001c   ; $0002df62-$0002df46
[0002df52] 00f4                      dc.w $00f4   ; $0002e03a-$0002df46
[0002df54] 001c                      dc.w $001c   ; $0002df62-$0002df46
[0002df56] 00f4                      dc.w $00f4   ; $0002e03a-$0002df46
[0002df58] 002a                      dc.w $002a   ; $0002df70-$0002df46
[0002df5a] 002a                      dc.w $002a   ; $0002df70-$0002df46
[0002df5c] 0100                      dc.w $0100   ; $0002e046-$0002df46
[0002df5e] 00f4                      dc.w $00f4   ; $0002e03a-$0002df46
[0002df60] 0100                      dc.w $0100   ; $0002e046-$0002df46
[0002df62] 204b                      movea.l    a3,a0
[0002df64] 4eb9 0002 faae            jsr        $0002FAAE
[0002df6a] 2848                      movea.l    a0,a4
[0002df6c] 6000 00e2                 bra        $0002E050
[0002df70] 204b                      movea.l    a3,a0
[0002df72] 4eb9 0003 0a26            jsr        $00030A26
[0002df78] 2848                      movea.l    a0,a4
[0002df7a] 6000 00d4                 bra        $0002E050
[0002df7e] 204b                      movea.l    a3,a0
[0002df80] 4eb9 0002 ffbc            jsr        $0002FFBC
[0002df86] 2848                      movea.l    a0,a4
[0002df88] 6000 00c6                 bra        $0002E050
[0002df8c] 2f6b 0014 0008            move.l     20(a3),8(a7)
[0002df92] 206f 0008                 movea.l    8(a7),a0
[0002df96] 2468 0004                 movea.l    4(a0),a2
[0002df9a] 4bef 0006                 lea.l      6(a7),a5
[0002df9e] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0002dfa4] 486f 0008                 pea.l      8(a7)
[0002dfa8] 4855                      pea.l      (a5)
[0002dfaa] 224d                      movea.l    a5,a1
[0002dfac] 204d                      movea.l    a5,a0
[0002dfae] 4eb9 0006 c978            jsr        $0006C978
[0002dfb4] 4fef 000c                 lea.l      12(a7),a7
[0002dfb8] 7004                      moveq.l    #4,d0
[0002dfba] c06f 0004                 and.w      4(a7),d0
[0002dfbe] 666e                      bne.s      $0002E02E
[0002dfc0] 2052                      movea.l    (a2),a0
[0002dfc2] 41e8 0016                 lea.l      22(a0),a0
[0002dfc6] 4eb9 0002 34bc            jsr        $000234BC
[0002dfcc] 2a48                      movea.l    a0,a5
[0002dfce] 200d                      move.l     a5,d0
[0002dfd0] 675c                      beq.s      $0002E02E
[0002dfd2] 43eb 0008                 lea.l      8(a3),a1
[0002dfd6] 41ef 003a                 lea.l      58(a7),a0
[0002dfda] 7018                      moveq.l    #24,d0
[0002dfdc] 4eb9 0007 6f44            jsr        $00076F44
[0002dfe2] 42af 0046                 clr.l      70(a7)
[0002dfe6] 43ef 000c                 lea.l      12(a7),a1
[0002dfea] 206f 0008                 movea.l    8(a7),a0
[0002dfee] 4eb9 0002 affc            jsr        $0002AFFC
[0002dff4] 43ef 003a                 lea.l      58(a7),a1
[0002dff8] 41ef 000c                 lea.l      12(a7),a0
[0002dffc] 246d 0020                 movea.l    32(a5),a2
[0002e000] 4e92                      jsr        (a2)
[0002e002] 2448                      movea.l    a0,a2
[0002e004] 200a                      move.l     a2,d0
[0002e006] 6726                      beq.s      $0002E02E
[0002e008] 2f2d 004c                 move.l     76(a5),-(a7)
[0002e00c] 2f2d 0048                 move.l     72(a5),-(a7)
[0002e010] 42a7                      clr.l      -(a7)
[0002e012] 2f2d 002c                 move.l     44(a5),-(a7)
[0002e016] 2f2d 0028                 move.l     40(a5),-(a7)
[0002e01a] 2f2d 0044                 move.l     68(a5),-(a7)
[0002e01e] 224a                      movea.l    a2,a1
[0002e020] 206f 0018                 movea.l    24(a7),a0
[0002e024] 6100 fb04                 bsr        $0002DB2A
[0002e028] 4fef 0018                 lea.l      24(a7),a7
[0002e02c] 604a                      bra.s      $0002E078
[0002e02e] 204b                      movea.l    a3,a0
[0002e030] 4eb9 0002 f572            jsr        $0002F572
[0002e036] 2848                      movea.l    a0,a4
[0002e038] 6016                      bra.s      $0002E050
[0002e03a] 204b                      movea.l    a3,a0
[0002e03c] 4eb9 0003 01ee            jsr        $000301EE
[0002e042] 2848                      movea.l    a0,a4
[0002e044] 600a                      bra.s      $0002E050
[0002e046] 204b                      movea.l    a3,a0
[0002e048] 4eb9 0002 fdf2            jsr        $0002FDF2
[0002e04e] 2848                      movea.l    a0,a4
[0002e050] 200c                      move.l     a4,d0
[0002e052] 6724                      beq.s      $0002E078
[0002e054] 2f2c 0014                 move.l     20(a4),-(a7)
[0002e058] 2f2c 0010                 move.l     16(a4),-(a7)
[0002e05c] 42a7                      clr.l      -(a7)
[0002e05e] 2f2c 0008                 move.l     8(a4),-(a7)
[0002e062] 2f2c 0004                 move.l     4(a4),-(a7)
[0002e066] 2f2c 000c                 move.l     12(a4),-(a7)
[0002e06a] 2254                      movea.l    (a4),a1
[0002e06c] 206f 0018                 movea.l    24(a7),a0
[0002e070] 6100 fab8                 bsr        $0002DB2A
[0002e074] 4fef 0018                 lea.l      24(a7),a7
[0002e078] 4fef 0052                 lea.l      82(a7),a7
[0002e07c] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0002e080] 4e75                      rts
open_it:
[0002e082] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0002e086] 2079 0010 1f12            movea.l    ACSblk,a0
[0002e08c] 2468 0258                 movea.l    600(a0),a2
[0002e090] 3628 0260                 move.w     608(a0),d3
[0002e094] 4eb9 0004 4a26            jsr        $00044A26
[0002e09a] 3003                      move.w     d3,d0
[0002e09c] 204a                      movea.l    a2,a0
[0002e09e] 4eb9 0004 487c            jsr        $0004487C
[0002e0a4] 2652                      movea.l    (a2),a3
[0002e0a6] 78fe                      moveq.l    #-2,d4
[0002e0a8] d843                      add.w      d3,d4
[0002e0aa] 48c4                      ext.l      d4
[0002e0ac] 89fc 0003                 divs.w     #$0003,d4
[0002e0b0] 3744 000a                 move.w     d4,10(a3)
[0002e0b4] 206b 0004                 movea.l    4(a3),a0
[0002e0b8] 2868 0004                 movea.l    4(a0),a4
[0002e0bc] 4bf9 000b ba54            lea.l      $000BBA54,a5
[0002e0c2] 3204                      move.w     d4,d1
[0002e0c4] 48c1                      ext.l      d1
[0002e0c6] 2001                      move.l     d1,d0
[0002e0c8] e788                      lsl.l      #3,d0
[0002e0ca] 9081                      sub.l      d1,d0
[0002e0cc] e788                      lsl.l      #3,d0
[0002e0ce] 3434 080a                 move.w     10(a4,d0.l),d2
[0002e0d2] 6b08                      bmi.s      $0002E0DC
[0002e0d4] 026d fff7 04d2            andi.w     #$FFF7,1234(a5)
[0002e0da] 6006                      bra.s      $0002E0E2
[0002e0dc] 006d 0008 04d2            ori.w      #$0008,1234(a5)
[0002e0e2] 3204                      move.w     d4,d1
[0002e0e4] 48c1                      ext.l      d1
[0002e0e6] 2001                      move.l     d1,d0
[0002e0e8] e788                      lsl.l      #3,d0
[0002e0ea] 9081                      sub.l      d1,d0
[0002e0ec] e788                      lsl.l      #3,d0
[0002e0ee] 3434 0812                 move.w     18(a4,d0.l),d2
[0002e0f2] c47c 1000                 and.w      #$1000,d2
[0002e0f6] 670e                      beq.s      $0002E106
[0002e0f8] 006d 0008 0502            ori.w      #$0008,1282(a5)
[0002e0fe] 026d fff7 0532            andi.w     #$FFF7,1330(a5)
[0002e104] 600c                      bra.s      $0002E112
[0002e106] 026d fff7 0502            andi.w     #$FFF7,1282(a5)
[0002e10c] 006d 0008 0532            ori.w      #$0008,1330(a5)
[0002e112] b66b 0018                 cmp.w      24(a3),d3
[0002e116] 661a                      bne.s      $0002E132
[0002e118] 006d 0008 04a2            ori.w      #$0008,1186(a5)
[0002e11e] 006d 0008 0562            ori.w      #$0008,1378(a5)
[0002e124] 006d 0008 0592            ori.w      #$0008,1426(a5)
[0002e12a] 006d 0008 02aa            ori.w      #$0008,682(a5)
[0002e130] 6018                      bra.s      $0002E14A
[0002e132] 026d fff7 04a2            andi.w     #$FFF7,1186(a5)
[0002e138] 026d fff7 0562            andi.w     #$FFF7,1378(a5)
[0002e13e] 026d fff7 0592            andi.w     #$FFF7,1426(a5)
[0002e144] 026d fff7 02aa            andi.w     #$FFF7,682(a5)
[0002e14a] 3204                      move.w     d4,d1
[0002e14c] 48c1                      ext.l      d1
[0002e14e] 2001                      move.l     d1,d0
[0002e150] e788                      lsl.l      #3,d0
[0002e152] 9081                      sub.l      d1,d0
[0002e154] e788                      lsl.l      #3,d0
[0002e156] 3434 080a                 move.w     10(a4,d0.l),d2
[0002e15a] b474 080c                 cmp.w      12(a4,d0.l),d2
[0002e15e] 6708                      beq.s      $0002E168
[0002e160] 026d fff7 07ba            andi.w     #$FFF7,1978(a5)
[0002e166] 6006                      bra.s      $0002E16E
[0002e168] 006d 0008 07ba            ori.w      #$0008,1978(a5)
[0002e16e] 204d                      movea.l    a5,a0
[0002e170] 4eb9 0004 a25e            jsr        $0004A25E
[0002e176] 206d 078c                 movea.l    1932(a5),a0
[0002e17a] 3028 0004                 move.w     4(a0),d0
[0002e17e] e748                      lsl.w      #3,d0
[0002e180] 3b40 0794                 move.w     d0,1940(a5)
[0002e184] 3b40 0764                 move.w     d0,1892(a5)
[0002e188] 3b40 0790                 move.w     d0,1936(a5)
[0002e18c] 3228 0004                 move.w     4(a0),d1
[0002e190] e949                      lsl.w      #4,d1
[0002e192] 3b41 074c                 move.w     d1,1868(a5)
[0002e196] 3028 0006                 move.w     6(a0),d0
[0002e19a] 3b40 0796                 move.w     d0,1942(a5)
[0002e19e] 3b40 0766                 move.w     d0,1894(a5)
[0002e1a2] 3b40 074e                 move.w     d0,1870(a5)
[0002e1a6] 4eb9 0004 ad60            jsr        $0004AD60
[0002e1ac] 72ff                      moveq.l    #-1,d1
[0002e1ae] 70ff                      moveq.l    #-1,d0
[0002e1b0] 224d                      movea.l    a5,a1
[0002e1b2] 204a                      movea.l    a2,a0
[0002e1b4] 4eb9 0004 948a            jsr        $0004948A
[0002e1ba] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0002e1be] 4e75                      rts
find_papa:
[0002e1c0] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[0002e1c4] 2448                      movea.l    a0,a2
[0002e1c6] 3600                      move.w     d0,d3
[0002e1c8] 3203                      move.w     d3,d1
[0002e1ca] 48c1                      ext.l      d1
[0002e1cc] 2001                      move.l     d1,d0
[0002e1ce] e788                      lsl.l      #3,d0
[0002e1d0] 9081                      sub.l      d1,d0
[0002e1d2] e788                      lsl.l      #3,d0
[0002e1d4] 3832 0808                 move.w     8(a2,d0.l),d4
[0002e1d8] 4a44                      tst.w      d4
[0002e1da] 6a04                      bpl.s      $0002E1E0
[0002e1dc] 70ff                      moveq.l    #-1,d0
[0002e1de] 601a                      bra.s      $0002E1FA
[0002e1e0] 3204                      move.w     d4,d1
[0002e1e2] 48c1                      ext.l      d1
[0002e1e4] 2001                      move.l     d1,d0
[0002e1e6] e788                      lsl.l      #3,d0
[0002e1e8] 9081                      sub.l      d1,d0
[0002e1ea] e788                      lsl.l      #3,d0
[0002e1ec] b672 080c                 cmp.w      12(a2,d0.l),d3
[0002e1f0] 6604                      bne.s      $0002E1F6
[0002e1f2] 3004                      move.w     d4,d0
[0002e1f4] 6004                      bra.s      $0002E1FA
[0002e1f6] 3604                      move.w     d4,d3
[0002e1f8] 60ce                      bra.s      $0002E1C8
[0002e1fa] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[0002e1fe] 4e75                      rts
edob_left:
[0002e200] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0002e204] 2079 0010 1f12            movea.l    ACSblk,a0
[0002e20a] 2468 0258                 movea.l    600(a0),a2
[0002e20e] 2052                      movea.l    (a2),a0
[0002e210] 2250                      movea.l    (a0),a1
[0002e212] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002e218] 3628 000a                 move.w     10(a0),d3
[0002e21c] 2268 0004                 movea.l    4(a0),a1
[0002e220] 2669 0004                 movea.l    4(a1),a3
[0002e224] 3203                      move.w     d3,d1
[0002e226] 48c1                      ext.l      d1
[0002e228] 2001                      move.l     d1,d0
[0002e22a] e788                      lsl.l      #3,d0
[0002e22c] 9081                      sub.l      d1,d0
[0002e22e] e788                      lsl.l      #3,d0
[0002e230] 4273 0818                 clr.w      24(a3,d0.l)
[0002e234] 266a 0014                 movea.l    20(a2),a3
[0002e238] 3403                      move.w     d3,d2
[0002e23a] d442                      add.w      d2,d2
[0002e23c] d443                      add.w      d3,d2
[0002e23e] 5442                      addq.w     #2,d2
[0002e240] 3602                      move.w     d2,d3
[0002e242] 3003                      move.w     d3,d0
[0002e244] 204b                      movea.l    a3,a0
[0002e246] 4eb9 0004 af6c            jsr        $0004AF6C
[0002e24c] 3800                      move.w     d0,d4
[0002e24e] 4241                      clr.w      d1
[0002e250] 3003                      move.w     d3,d0
[0002e252] 48c0                      ext.l      d0
[0002e254] 2400                      move.l     d0,d2
[0002e256] d482                      add.l      d2,d2
[0002e258] d480                      add.l      d0,d2
[0002e25a] e78a                      lsl.l      #3,d2
[0002e25c] 3781 2810                 move.w     d1,16(a3,d2.l)
[0002e260] 3781 28f8                 move.w     d1,-8(a3,d2.l)
[0002e264] 4eb9 0004 4a26            jsr        $00044A26
[0002e26a] 3004                      move.w     d4,d0
[0002e26c] 204a                      movea.l    a2,a0
[0002e26e] 4eb9 0004 b846            jsr        $0004B846
[0002e274] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0002e278] 4e75                      rts
edob_right:
[0002e27a] 48e7 1e38                 movem.l    d3-d6/a2-a4,-(a7)
[0002e27e] 2079 0010 1f12            movea.l    ACSblk,a0
[0002e284] 2468 0258                 movea.l    600(a0),a2
[0002e288] 2652                      movea.l    (a2),a3
[0002e28a] 2253                      movea.l    (a3),a1
[0002e28c] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002e292] 362b 000a                 move.w     10(a3),d3
[0002e296] 286a 0014                 movea.l    20(a2),a4
[0002e29a] 3803                      move.w     d3,d4
[0002e29c] d844                      add.w      d4,d4
[0002e29e] d843                      add.w      d3,d4
[0002e2a0] 5444                      addq.w     #2,d4
[0002e2a2] 3004                      move.w     d4,d0
[0002e2a4] 204c                      movea.l    a4,a0
[0002e2a6] 4eb9 0004 af6c            jsr        $0004AF6C
[0002e2ac] 3a00                      move.w     d0,d5
[0002e2ae] 48c0                      ext.l      d0
[0002e2b0] 2200                      move.l     d0,d1
[0002e2b2] d281                      add.l      d1,d1
[0002e2b4] d280                      add.l      d0,d1
[0002e2b6] e789                      lsl.l      #3,d1
[0002e2b8] 3034 1814                 move.w     20(a4,d1.l),d0
[0002e2bc] 3204                      move.w     d4,d1
[0002e2be] 48c1                      ext.l      d1
[0002e2c0] 2401                      move.l     d1,d2
[0002e2c2] d482                      add.l      d2,d2
[0002e2c4] d481                      add.l      d1,d2
[0002e2c6] e78a                      lsl.l      #3,d2
[0002e2c8] 9074 2814                 sub.w      20(a4,d2.l),d0
[0002e2cc] 4eb9 0002 bf2a            jsr        $0002BF2A
[0002e2d2] 3c00                      move.w     d0,d6
[0002e2d4] 4eb9 0002 bfbe            jsr        $0002BFBE
[0002e2da] 3404                      move.w     d4,d2
[0002e2dc] 48c2                      ext.l      d2
[0002e2de] 2202                      move.l     d2,d1
[0002e2e0] d281                      add.l      d1,d1
[0002e2e2] d282                      add.l      d2,d1
[0002e2e4] e789                      lsl.l      #3,d1
[0002e2e6] 3980 1810                 move.w     d0,16(a4,d1.l)
[0002e2ea] 3980 18f8                 move.w     d0,-8(a4,d1.l)
[0002e2ee] 4eb9 0004 4a26            jsr        $00044A26
[0002e2f4] 3005                      move.w     d5,d0
[0002e2f6] 204a                      movea.l    a2,a0
[0002e2f8] 4eb9 0004 b846            jsr        $0004B846
[0002e2fe] 206b 0004                 movea.l    4(a3),a0
[0002e302] 2868 0004                 movea.l    4(a0),a4
[0002e306] 3203                      move.w     d3,d1
[0002e308] 48c1                      ext.l      d1
[0002e30a] 2001                      move.l     d1,d0
[0002e30c] e788                      lsl.l      #3,d0
[0002e30e] 9081                      sub.l      d1,d0
[0002e310] e788                      lsl.l      #3,d0
[0002e312] 3986 0818                 move.w     d6,24(a4,d0.l)
[0002e316] 4cdf 1c78                 movem.l    (a7)+,d3-d6/a2-a4
[0002e31a] 4e75                      rts
edob_center:
[0002e31c] 48e7 1e38                 movem.l    d3-d6/a2-a4,-(a7)
[0002e320] 2079 0010 1f12            movea.l    ACSblk,a0
[0002e326] 2468 0258                 movea.l    600(a0),a2
[0002e32a] 2652                      movea.l    (a2),a3
[0002e32c] 2253                      movea.l    (a3),a1
[0002e32e] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002e334] 362b 000a                 move.w     10(a3),d3
[0002e338] 3803                      move.w     d3,d4
[0002e33a] d844                      add.w      d4,d4
[0002e33c] d843                      add.w      d3,d4
[0002e33e] 5444                      addq.w     #2,d4
[0002e340] 286a 0014                 movea.l    20(a2),a4
[0002e344] 3004                      move.w     d4,d0
[0002e346] 204c                      movea.l    a4,a0
[0002e348] 4eb9 0004 af6c            jsr        $0004AF6C
[0002e34e] 3a00                      move.w     d0,d5
[0002e350] 48c0                      ext.l      d0
[0002e352] 2200                      move.l     d0,d1
[0002e354] d281                      add.l      d1,d1
[0002e356] d280                      add.l      d0,d1
[0002e358] e789                      lsl.l      #3,d1
[0002e35a] 3034 1814                 move.w     20(a4,d1.l),d0
[0002e35e] 3204                      move.w     d4,d1
[0002e360] 48c1                      ext.l      d1
[0002e362] 2401                      move.l     d1,d2
[0002e364] d482                      add.l      d2,d2
[0002e366] d481                      add.l      d1,d2
[0002e368] e78a                      lsl.l      #3,d2
[0002e36a] 9074 2814                 sub.w      20(a4,d2.l),d0
[0002e36e] e240                      asr.w      #1,d0
[0002e370] 4eb9 0002 bf2a            jsr        $0002BF2A
[0002e376] 3c00                      move.w     d0,d6
[0002e378] 4eb9 0002 bfbe            jsr        $0002BFBE
[0002e37e] 3404                      move.w     d4,d2
[0002e380] 48c2                      ext.l      d2
[0002e382] 2202                      move.l     d2,d1
[0002e384] d281                      add.l      d1,d1
[0002e386] d282                      add.l      d2,d1
[0002e388] e789                      lsl.l      #3,d1
[0002e38a] 3980 1810                 move.w     d0,16(a4,d1.l)
[0002e38e] 3980 18f8                 move.w     d0,-8(a4,d1.l)
[0002e392] 4eb9 0004 4a26            jsr        $00044A26
[0002e398] 3005                      move.w     d5,d0
[0002e39a] 204a                      movea.l    a2,a0
[0002e39c] 4eb9 0004 b846            jsr        $0004B846
[0002e3a2] 206b 0004                 movea.l    4(a3),a0
[0002e3a6] 2868 0004                 movea.l    4(a0),a4
[0002e3aa] 3203                      move.w     d3,d1
[0002e3ac] 48c1                      ext.l      d1
[0002e3ae] 2001                      move.l     d1,d0
[0002e3b0] e788                      lsl.l      #3,d0
[0002e3b2] 9081                      sub.l      d1,d0
[0002e3b4] e788                      lsl.l      #3,d0
[0002e3b6] 3986 0818                 move.w     d6,24(a4,d0.l)
[0002e3ba] 4cdf 1c78                 movem.l    (a7)+,d3-d6/a2-a4
[0002e3be] 4e75                      rts
edob_horfill:
[0002e3c0] 48e7 1e38                 movem.l    d3-d6/a2-a4,-(a7)
[0002e3c4] 2079 0010 1f12            movea.l    ACSblk,a0
[0002e3ca] 2468 0258                 movea.l    600(a0),a2
[0002e3ce] 2052                      movea.l    (a2),a0
[0002e3d0] 2250                      movea.l    (a0),a1
[0002e3d2] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002e3d8] 3628 000a                 move.w     10(a0),d3
[0002e3dc] 3803                      move.w     d3,d4
[0002e3de] d844                      add.w      d4,d4
[0002e3e0] d843                      add.w      d3,d4
[0002e3e2] 5444                      addq.w     #2,d4
[0002e3e4] 266a 0014                 movea.l    20(a2),a3
[0002e3e8] 2268 0004                 movea.l    4(a0),a1
[0002e3ec] 2869 0004                 movea.l    4(a1),a4
[0002e3f0] 3004                      move.w     d4,d0
[0002e3f2] 204b                      movea.l    a3,a0
[0002e3f4] 4eb9 0004 af6c            jsr        $0004AF6C
[0002e3fa] 3a00                      move.w     d0,d5
[0002e3fc] 48c0                      ext.l      d0
[0002e3fe] 2200                      move.l     d0,d1
[0002e400] d281                      add.l      d1,d1
[0002e402] d280                      add.l      d0,d1
[0002e404] e789                      lsl.l      #3,d1
[0002e406] 3c33 1814                 move.w     20(a3,d1.l),d6
[0002e40a] 3204                      move.w     d4,d1
[0002e40c] 48c1                      ext.l      d1
[0002e40e] 2401                      move.l     d1,d2
[0002e410] d482                      add.l      d2,d2
[0002e412] d481                      add.l      d1,d2
[0002e414] e78a                      lsl.l      #3,d2
[0002e416] 9c73 2814                 sub.w      20(a3,d2.l),d6
[0002e41a] 224b                      movea.l    a3,a1
[0002e41c] 204c                      movea.l    a4,a0
[0002e41e] 3003                      move.w     d3,d0
[0002e420] 3206                      move.w     d6,d1
[0002e422] 4242                      clr.w      d2
[0002e424] 4eb9 0002 bed6            jsr        $0002BED6
[0002e42a] 4240                      clr.w      d0
[0002e42c] 3404                      move.w     d4,d2
[0002e42e] 48c2                      ext.l      d2
[0002e430] 2202                      move.l     d2,d1
[0002e432] d281                      add.l      d1,d1
[0002e434] d282                      add.l      d2,d1
[0002e436] e789                      lsl.l      #3,d1
[0002e438] 3780 1810                 move.w     d0,16(a3,d1.l)
[0002e43c] 3780 18f8                 move.w     d0,-8(a3,d1.l)
[0002e440] 3005                      move.w     d5,d0
[0002e442] 48c0                      ext.l      d0
[0002e444] 2c00                      move.l     d0,d6
[0002e446] dc86                      add.l      d6,d6
[0002e448] dc80                      add.l      d0,d6
[0002e44a] e78e                      lsl.l      #3,d6
[0002e44c] 3433 6814                 move.w     20(a3,d6.l),d2
[0002e450] 3782 1814                 move.w     d2,20(a3,d1.l)
[0002e454] 3782 18fc                 move.w     d2,-4(a3,d1.l)
[0002e458] 4eb9 0004 4a26            jsr        $00044A26
[0002e45e] 3004                      move.w     d4,d0
[0002e460] 204a                      movea.l    a2,a0
[0002e462] 4eb9 0004 b846            jsr        $0004B846
[0002e468] 70fe                      moveq.l    #-2,d0
[0002e46a] d045                      add.w      d5,d0
[0002e46c] 48c0                      ext.l      d0
[0002e46e] 81fc 0003                 divs.w     #$0003,d0
[0002e472] 3a00                      move.w     d0,d5
[0002e474] 3403                      move.w     d3,d2
[0002e476] 48c2                      ext.l      d2
[0002e478] 2202                      move.l     d2,d1
[0002e47a] e789                      lsl.l      #3,d1
[0002e47c] 9282                      sub.l      d2,d1
[0002e47e] e789                      lsl.l      #3,d1
[0002e480] 4274 1818                 clr.w      24(a4,d1.l)
[0002e484] 48c0                      ext.l      d0
[0002e486] 2800                      move.l     d0,d4
[0002e488] e78c                      lsl.l      #3,d4
[0002e48a] 9880                      sub.l      d0,d4
[0002e48c] e78c                      lsl.l      #3,d4
[0002e48e] 39b4 481c 181c            move.w     28(a4,d4.l),28(a4,d1.l)
[0002e494] 4cdf 1c78                 movem.l    (a7)+,d3-d6/a2-a4
[0002e498] 4e75                      rts
edob_top:
[0002e49a] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[0002e49e] 2079 0010 1f12            movea.l    ACSblk,a0
[0002e4a4] 2468 0258                 movea.l    600(a0),a2
[0002e4a8] 2652                      movea.l    (a2),a3
[0002e4aa] 2253                      movea.l    (a3),a1
[0002e4ac] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002e4b2] 362b 000a                 move.w     10(a3),d3
[0002e4b6] 3803                      move.w     d3,d4
[0002e4b8] d844                      add.w      d4,d4
[0002e4ba] d843                      add.w      d3,d4
[0002e4bc] 5444                      addq.w     #2,d4
[0002e4be] 286a 0014                 movea.l    20(a2),a4
[0002e4c2] 3004                      move.w     d4,d0
[0002e4c4] 204c                      movea.l    a4,a0
[0002e4c6] 4eb9 0004 af6c            jsr        $0004AF6C
[0002e4cc] 3a00                      move.w     d0,d5
[0002e4ce] 4241                      clr.w      d1
[0002e4d0] 3004                      move.w     d4,d0
[0002e4d2] 48c0                      ext.l      d0
[0002e4d4] 2400                      move.l     d0,d2
[0002e4d6] d482                      add.l      d2,d2
[0002e4d8] d480                      add.l      d0,d2
[0002e4da] e78a                      lsl.l      #3,d2
[0002e4dc] 3981 2812                 move.w     d1,18(a4,d2.l)
[0002e4e0] 3981 28fa                 move.w     d1,-6(a4,d2.l)
[0002e4e4] 206b 0004                 movea.l    4(a3),a0
[0002e4e8] 2868 0004                 movea.l    4(a0),a4
[0002e4ec] 3803                      move.w     d3,d4
[0002e4ee] 48c4                      ext.l      d4
[0002e4f0] 2204                      move.l     d4,d1
[0002e4f2] e789                      lsl.l      #3,d1
[0002e4f4] 9284                      sub.l      d4,d1
[0002e4f6] e789                      lsl.l      #3,d1
[0002e4f8] 4274 181a                 clr.w      26(a4,d1.l)
[0002e4fc] 4eb9 0004 4a26            jsr        $00044A26
[0002e502] 3005                      move.w     d5,d0
[0002e504] 204a                      movea.l    a2,a0
[0002e506] 4eb9 0004 b846            jsr        $0004B846
[0002e50c] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[0002e510] 4e75                      rts
edob_bottom:
[0002e512] 48e7 1e38                 movem.l    d3-d6/a2-a4,-(a7)
[0002e516] 2079 0010 1f12            movea.l    ACSblk,a0
[0002e51c] 2468 0258                 movea.l    600(a0),a2
[0002e520] 2652                      movea.l    (a2),a3
[0002e522] 2253                      movea.l    (a3),a1
[0002e524] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002e52a] 362b 000a                 move.w     10(a3),d3
[0002e52e] 3803                      move.w     d3,d4
[0002e530] d844                      add.w      d4,d4
[0002e532] d843                      add.w      d3,d4
[0002e534] 5444                      addq.w     #2,d4
[0002e536] 286a 0014                 movea.l    20(a2),a4
[0002e53a] 3004                      move.w     d4,d0
[0002e53c] 204c                      movea.l    a4,a0
[0002e53e] 4eb9 0004 af6c            jsr        $0004AF6C
[0002e544] 3a00                      move.w     d0,d5
[0002e546] 48c0                      ext.l      d0
[0002e548] 2200                      move.l     d0,d1
[0002e54a] d281                      add.l      d1,d1
[0002e54c] d280                      add.l      d0,d1
[0002e54e] e789                      lsl.l      #3,d1
[0002e550] 3034 1816                 move.w     22(a4,d1.l),d0
[0002e554] 3204                      move.w     d4,d1
[0002e556] 48c1                      ext.l      d1
[0002e558] 2401                      move.l     d1,d2
[0002e55a] d482                      add.l      d2,d2
[0002e55c] d481                      add.l      d1,d2
[0002e55e] e78a                      lsl.l      #3,d2
[0002e560] 9074 2816                 sub.w      22(a4,d2.l),d0
[0002e564] 4eb9 0002 bf74            jsr        $0002BF74
[0002e56a] 3c00                      move.w     d0,d6
[0002e56c] 4eb9 0002 bfe6            jsr        $0002BFE6
[0002e572] 3404                      move.w     d4,d2
[0002e574] 48c2                      ext.l      d2
[0002e576] 2202                      move.l     d2,d1
[0002e578] d281                      add.l      d1,d1
[0002e57a] d282                      add.l      d2,d1
[0002e57c] e789                      lsl.l      #3,d1
[0002e57e] 3980 1812                 move.w     d0,18(a4,d1.l)
[0002e582] 3980 18fa                 move.w     d0,-6(a4,d1.l)
[0002e586] 4eb9 0004 4a26            jsr        $00044A26
[0002e58c] 3005                      move.w     d5,d0
[0002e58e] 204a                      movea.l    a2,a0
[0002e590] 4eb9 0004 b846            jsr        $0004B846
[0002e596] 206b 0004                 movea.l    4(a3),a0
[0002e59a] 2868 0004                 movea.l    4(a0),a4
[0002e59e] 3203                      move.w     d3,d1
[0002e5a0] 48c1                      ext.l      d1
[0002e5a2] 2001                      move.l     d1,d0
[0002e5a4] e788                      lsl.l      #3,d0
[0002e5a6] 9081                      sub.l      d1,d0
[0002e5a8] e788                      lsl.l      #3,d0
[0002e5aa] 3986 081a                 move.w     d6,26(a4,d0.l)
[0002e5ae] 4cdf 1c78                 movem.l    (a7)+,d3-d6/a2-a4
[0002e5b2] 4e75                      rts
edob_mid:
[0002e5b4] 48e7 1e38                 movem.l    d3-d6/a2-a4,-(a7)
[0002e5b8] 2079 0010 1f12            movea.l    ACSblk,a0
[0002e5be] 2468 0258                 movea.l    600(a0),a2
[0002e5c2] 2652                      movea.l    (a2),a3
[0002e5c4] 2253                      movea.l    (a3),a1
[0002e5c6] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002e5cc] 362b 000a                 move.w     10(a3),d3
[0002e5d0] 3803                      move.w     d3,d4
[0002e5d2] d844                      add.w      d4,d4
[0002e5d4] d843                      add.w      d3,d4
[0002e5d6] 5444                      addq.w     #2,d4
[0002e5d8] 286a 0014                 movea.l    20(a2),a4
[0002e5dc] 3004                      move.w     d4,d0
[0002e5de] 204c                      movea.l    a4,a0
[0002e5e0] 4eb9 0004 af6c            jsr        $0004AF6C
[0002e5e6] 3a00                      move.w     d0,d5
[0002e5e8] 48c0                      ext.l      d0
[0002e5ea] 2200                      move.l     d0,d1
[0002e5ec] d281                      add.l      d1,d1
[0002e5ee] d280                      add.l      d0,d1
[0002e5f0] e789                      lsl.l      #3,d1
[0002e5f2] 3034 1816                 move.w     22(a4,d1.l),d0
[0002e5f6] 3204                      move.w     d4,d1
[0002e5f8] 48c1                      ext.l      d1
[0002e5fa] 2401                      move.l     d1,d2
[0002e5fc] d482                      add.l      d2,d2
[0002e5fe] d481                      add.l      d1,d2
[0002e600] e78a                      lsl.l      #3,d2
[0002e602] 9074 2816                 sub.w      22(a4,d2.l),d0
[0002e606] e240                      asr.w      #1,d0
[0002e608] 4eb9 0002 bf74            jsr        $0002BF74
[0002e60e] 3c00                      move.w     d0,d6
[0002e610] 4eb9 0002 bfe6            jsr        $0002BFE6
[0002e616] 3404                      move.w     d4,d2
[0002e618] 48c2                      ext.l      d2
[0002e61a] 2202                      move.l     d2,d1
[0002e61c] d281                      add.l      d1,d1
[0002e61e] d282                      add.l      d2,d1
[0002e620] e789                      lsl.l      #3,d1
[0002e622] 3980 1812                 move.w     d0,18(a4,d1.l)
[0002e626] 3980 18fa                 move.w     d0,-6(a4,d1.l)
[0002e62a] 4eb9 0004 4a26            jsr        $00044A26
[0002e630] 3005                      move.w     d5,d0
[0002e632] 204a                      movea.l    a2,a0
[0002e634] 4eb9 0004 b846            jsr        $0004B846
[0002e63a] 206b 0004                 movea.l    4(a3),a0
[0002e63e] 2868 0004                 movea.l    4(a0),a4
[0002e642] 3203                      move.w     d3,d1
[0002e644] 48c1                      ext.l      d1
[0002e646] 2001                      move.l     d1,d0
[0002e648] e788                      lsl.l      #3,d0
[0002e64a] 9081                      sub.l      d1,d0
[0002e64c] e788                      lsl.l      #3,d0
[0002e64e] 3986 081a                 move.w     d6,26(a4,d0.l)
[0002e652] 4cdf 1c78                 movem.l    (a7)+,d3-d6/a2-a4
[0002e656] 4e75                      rts
edob_verfill:
[0002e658] 48e7 1e38                 movem.l    d3-d6/a2-a4,-(a7)
[0002e65c] 2079 0010 1f12            movea.l    ACSblk,a0
[0002e662] 2468 0258                 movea.l    600(a0),a2
[0002e666] 2052                      movea.l    (a2),a0
[0002e668] 2250                      movea.l    (a0),a1
[0002e66a] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002e670] 3628 000a                 move.w     10(a0),d3
[0002e674] 3803                      move.w     d3,d4
[0002e676] d844                      add.w      d4,d4
[0002e678] d843                      add.w      d3,d4
[0002e67a] 5444                      addq.w     #2,d4
[0002e67c] 266a 0014                 movea.l    20(a2),a3
[0002e680] 2268 0004                 movea.l    4(a0),a1
[0002e684] 2869 0004                 movea.l    4(a1),a4
[0002e688] 3004                      move.w     d4,d0
[0002e68a] 204b                      movea.l    a3,a0
[0002e68c] 4eb9 0004 af6c            jsr        $0004AF6C
[0002e692] 3a00                      move.w     d0,d5
[0002e694] 48c0                      ext.l      d0
[0002e696] 2200                      move.l     d0,d1
[0002e698] d281                      add.l      d1,d1
[0002e69a] d280                      add.l      d0,d1
[0002e69c] e789                      lsl.l      #3,d1
[0002e69e] 3c33 1816                 move.w     22(a3,d1.l),d6
[0002e6a2] 3204                      move.w     d4,d1
[0002e6a4] 48c1                      ext.l      d1
[0002e6a6] 2401                      move.l     d1,d2
[0002e6a8] d482                      add.l      d2,d2
[0002e6aa] d481                      add.l      d1,d2
[0002e6ac] e78a                      lsl.l      #3,d2
[0002e6ae] 9c73 2816                 sub.w      22(a3,d2.l),d6
[0002e6b2] 224b                      movea.l    a3,a1
[0002e6b4] 204c                      movea.l    a4,a0
[0002e6b6] 3003                      move.w     d3,d0
[0002e6b8] 4241                      clr.w      d1
[0002e6ba] 3406                      move.w     d6,d2
[0002e6bc] 4eb9 0002 bed6            jsr        $0002BED6
[0002e6c2] 4240                      clr.w      d0
[0002e6c4] 3404                      move.w     d4,d2
[0002e6c6] 48c2                      ext.l      d2
[0002e6c8] 2202                      move.l     d2,d1
[0002e6ca] d281                      add.l      d1,d1
[0002e6cc] d282                      add.l      d2,d1
[0002e6ce] e789                      lsl.l      #3,d1
[0002e6d0] 3780 1812                 move.w     d0,18(a3,d1.l)
[0002e6d4] 3780 18fa                 move.w     d0,-6(a3,d1.l)
[0002e6d8] 3005                      move.w     d5,d0
[0002e6da] 48c0                      ext.l      d0
[0002e6dc] 2c00                      move.l     d0,d6
[0002e6de] dc86                      add.l      d6,d6
[0002e6e0] dc80                      add.l      d0,d6
[0002e6e2] e78e                      lsl.l      #3,d6
[0002e6e4] 3433 6816                 move.w     22(a3,d6.l),d2
[0002e6e8] 3782 1816                 move.w     d2,22(a3,d1.l)
[0002e6ec] 3782 18fe                 move.w     d2,-2(a3,d1.l)
[0002e6f0] 4eb9 0004 4a26            jsr        $00044A26
[0002e6f6] 3004                      move.w     d4,d0
[0002e6f8] 204a                      movea.l    a2,a0
[0002e6fa] 4eb9 0004 b846            jsr        $0004B846
[0002e700] 70fe                      moveq.l    #-2,d0
[0002e702] d045                      add.w      d5,d0
[0002e704] 48c0                      ext.l      d0
[0002e706] 81fc 0003                 divs.w     #$0003,d0
[0002e70a] 3a00                      move.w     d0,d5
[0002e70c] 3403                      move.w     d3,d2
[0002e70e] 48c2                      ext.l      d2
[0002e710] 2202                      move.l     d2,d1
[0002e712] e789                      lsl.l      #3,d1
[0002e714] 9282                      sub.l      d2,d1
[0002e716] e789                      lsl.l      #3,d1
[0002e718] 4274 181a                 clr.w      26(a4,d1.l)
[0002e71c] 48c0                      ext.l      d0
[0002e71e] 2800                      move.l     d0,d4
[0002e720] e78c                      lsl.l      #3,d4
[0002e722] 9880                      sub.l      d0,d4
[0002e724] e78c                      lsl.l      #3,d4
[0002e726] 39b4 481e 181e            move.w     30(a4,d4.l),30(a4,d1.l)
[0002e72c] 4cdf 1c78                 movem.l    (a7)+,d3-d6/a2-a4
[0002e730] 4e75                      rts
edob_up:
[0002e732] 48e7 1f38                 movem.l    d3-d7/a2-a4,-(a7)
[0002e736] 2079 0010 1f12            movea.l    ACSblk,a0
[0002e73c] 2468 0258                 movea.l    600(a0),a2
[0002e740] 2652                      movea.l    (a2),a3
[0002e742] 362b 000a                 move.w     10(a3),d3
[0002e746] 226b 0004                 movea.l    4(a3),a1
[0002e74a] 2869 0004                 movea.l    4(a1),a4
[0002e74e] 3003                      move.w     d3,d0
[0002e750] 204c                      movea.l    a4,a0
[0002e752] 6100 fa6c                 bsr        $0002E1C0
[0002e756] 3800                      move.w     d0,d4
[0002e758] 48c0                      ext.l      d0
[0002e75a] 2200                      move.l     d0,d1
[0002e75c] e789                      lsl.l      #3,d1
[0002e75e] 9280                      sub.l      d0,d1
[0002e760] e789                      lsl.l      #3,d1
[0002e762] 3a34 180c                 move.w     12(a4,d1.l),d5
[0002e766] b645                      cmp.w      d5,d3
[0002e768] 6700 00a4                 beq        $0002E80E
[0002e76c] 2053                      movea.l    (a3),a0
[0002e76e] 0068 0001 0006            ori.w      #$0001,6(a0)
[0002e774] 3c34 180a                 move.w     10(a4,d1.l),d6
[0002e778] b646                      cmp.w      d6,d3
[0002e77a] 6614                      bne.s      $0002E790
[0002e77c] 3003                      move.w     d3,d0
[0002e77e] 48c0                      ext.l      d0
[0002e780] 2400                      move.l     d0,d2
[0002e782] e78a                      lsl.l      #3,d2
[0002e784] 9480                      sub.l      d0,d2
[0002e786] e78a                      lsl.l      #3,d2
[0002e788] 39b4 2808 180a            move.w     8(a4,d2.l),10(a4,d1.l)
[0002e78e] 6034                      bra.s      $0002E7C4
[0002e790] 3e06                      move.w     d6,d7
[0002e792] 3206                      move.w     d6,d1
[0002e794] 48c1                      ext.l      d1
[0002e796] 2001                      move.l     d1,d0
[0002e798] e788                      lsl.l      #3,d0
[0002e79a] 9081                      sub.l      d1,d0
[0002e79c] e788                      lsl.l      #3,d0
[0002e79e] 3c34 0808                 move.w     8(a4,d0.l),d6
[0002e7a2] b646                      cmp.w      d6,d3
[0002e7a4] 66ea                      bne.s      $0002E790
[0002e7a6] 3203                      move.w     d3,d1
[0002e7a8] 48c1                      ext.l      d1
[0002e7aa] 2001                      move.l     d1,d0
[0002e7ac] e788                      lsl.l      #3,d0
[0002e7ae] 9081                      sub.l      d1,d0
[0002e7b0] e788                      lsl.l      #3,d0
[0002e7b2] 3c07                      move.w     d7,d6
[0002e7b4] 48c6                      ext.l      d6
[0002e7b6] 2406                      move.l     d6,d2
[0002e7b8] e78a                      lsl.l      #3,d2
[0002e7ba] 9486                      sub.l      d6,d2
[0002e7bc] e78a                      lsl.l      #3,d2
[0002e7be] 39b4 0808 2808            move.w     8(a4,d0.l),8(a4,d2.l)
[0002e7c4] 3205                      move.w     d5,d1
[0002e7c6] 48c1                      ext.l      d1
[0002e7c8] 2001                      move.l     d1,d0
[0002e7ca] e788                      lsl.l      #3,d0
[0002e7cc] 9081                      sub.l      d1,d0
[0002e7ce] e788                      lsl.l      #3,d0
[0002e7d0] 3983 0808                 move.w     d3,8(a4,d0.l)
[0002e7d4] 3a03                      move.w     d3,d5
[0002e7d6] 48c5                      ext.l      d5
[0002e7d8] 2405                      move.l     d5,d2
[0002e7da] e78a                      lsl.l      #3,d2
[0002e7dc] 9485                      sub.l      d5,d2
[0002e7de] e78a                      lsl.l      #3,d2
[0002e7e0] 3984 2808                 move.w     d4,8(a4,d2.l)
[0002e7e4] 3e04                      move.w     d4,d7
[0002e7e6] 48c7                      ext.l      d7
[0002e7e8] 2c07                      move.l     d7,d6
[0002e7ea] e78e                      lsl.l      #3,d6
[0002e7ec] 9c87                      sub.l      d7,d6
[0002e7ee] e78e                      lsl.l      #3,d6
[0002e7f0] 3983 680c                 move.w     d3,12(a4,d6.l)
[0002e7f4] 204a                      movea.l    a2,a0
[0002e7f6] 226a 0010                 movea.l    16(a2),a1
[0002e7fa] 4e91                      jsr        (a1)
[0002e7fc] 3e04                      move.w     d4,d7
[0002e7fe] de47                      add.w      d7,d7
[0002e800] de44                      add.w      d4,d7
[0002e802] 5447                      addq.w     #2,d7
[0002e804] 3007                      move.w     d7,d0
[0002e806] 204a                      movea.l    a2,a0
[0002e808] 4eb9 0004 b846            jsr        $0004B846
[0002e80e] 4cdf 1cf8                 movem.l    (a7)+,d3-d7/a2-a4
[0002e812] 4e75                      rts
edob_down:
[0002e814] 48e7 1f30                 movem.l    d3-d7/a2-a3,-(a7)
[0002e818] 2079 0010 1f12            movea.l    ACSblk,a0
[0002e81e] 2468 0258                 movea.l    600(a0),a2
[0002e822] 2052                      movea.l    (a2),a0
[0002e824] 2250                      movea.l    (a0),a1
[0002e826] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002e82c] 3628 000a                 move.w     10(a0),d3
[0002e830] 2268 0004                 movea.l    4(a0),a1
[0002e834] 2669 0004                 movea.l    4(a1),a3
[0002e838] 3003                      move.w     d3,d0
[0002e83a] 204b                      movea.l    a3,a0
[0002e83c] 6100 f982                 bsr        $0002E1C0
[0002e840] 3800                      move.w     d0,d4
[0002e842] 48c0                      ext.l      d0
[0002e844] 2200                      move.l     d0,d1
[0002e846] e789                      lsl.l      #3,d1
[0002e848] 9280                      sub.l      d0,d1
[0002e84a] e789                      lsl.l      #3,d1
[0002e84c] 3a33 180a                 move.w     10(a3,d1.l),d5
[0002e850] b645                      cmp.w      d5,d3
[0002e852] 6700 008e                 beq        $0002E8E2
[0002e856] 3c05                      move.w     d5,d6
[0002e858] 3e06                      move.w     d6,d7
[0002e85a] 3207                      move.w     d7,d1
[0002e85c] 48c1                      ext.l      d1
[0002e85e] 2001                      move.l     d1,d0
[0002e860] e788                      lsl.l      #3,d0
[0002e862] 9081                      sub.l      d1,d0
[0002e864] e788                      lsl.l      #3,d0
[0002e866] 3c33 0808                 move.w     8(a3,d0.l),d6
[0002e86a] b646                      cmp.w      d6,d3
[0002e86c] 66ea                      bne.s      $0002E858
[0002e86e] 3c04                      move.w     d4,d6
[0002e870] 48c6                      ext.l      d6
[0002e872] 2406                      move.l     d6,d2
[0002e874] e78a                      lsl.l      #3,d2
[0002e876] 9486                      sub.l      d6,d2
[0002e878] e78a                      lsl.l      #3,d2
[0002e87a] b673 280c                 cmp.w      12(a3,d2.l),d3
[0002e87e] 660a                      bne.s      $0002E88A
[0002e880] 3787 280c                 move.w     d7,12(a3,d2.l)
[0002e884] 3784 0808                 move.w     d4,8(a3,d0.l)
[0002e888] 601e                      bra.s      $0002E8A8
[0002e88a] 3203                      move.w     d3,d1
[0002e88c] 48c1                      ext.l      d1
[0002e88e] 2001                      move.l     d1,d0
[0002e890] e788                      lsl.l      #3,d0
[0002e892] 9081                      sub.l      d1,d0
[0002e894] e788                      lsl.l      #3,d0
[0002e896] 3c07                      move.w     d7,d6
[0002e898] 48c6                      ext.l      d6
[0002e89a] 2406                      move.l     d6,d2
[0002e89c] e78a                      lsl.l      #3,d2
[0002e89e] 9486                      sub.l      d6,d2
[0002e8a0] e78a                      lsl.l      #3,d2
[0002e8a2] 37b3 0808 2808            move.w     8(a3,d0.l),8(a3,d2.l)
[0002e8a8] 3203                      move.w     d3,d1
[0002e8aa] 48c1                      ext.l      d1
[0002e8ac] 2001                      move.l     d1,d0
[0002e8ae] e788                      lsl.l      #3,d0
[0002e8b0] 9081                      sub.l      d1,d0
[0002e8b2] e788                      lsl.l      #3,d0
[0002e8b4] 3785 0808                 move.w     d5,8(a3,d0.l)
[0002e8b8] 3c04                      move.w     d4,d6
[0002e8ba] 48c6                      ext.l      d6
[0002e8bc] 2406                      move.l     d6,d2
[0002e8be] e78a                      lsl.l      #3,d2
[0002e8c0] 9486                      sub.l      d6,d2
[0002e8c2] e78a                      lsl.l      #3,d2
[0002e8c4] 3783 280a                 move.w     d3,10(a3,d2.l)
[0002e8c8] 204a                      movea.l    a2,a0
[0002e8ca] 226a 0010                 movea.l    16(a2),a1
[0002e8ce] 4e91                      jsr        (a1)
[0002e8d0] 3e04                      move.w     d4,d7
[0002e8d2] de47                      add.w      d7,d7
[0002e8d4] de44                      add.w      d4,d7
[0002e8d6] 5447                      addq.w     #2,d7
[0002e8d8] 3007                      move.w     d7,d0
[0002e8da] 204a                      movea.l    a2,a0
[0002e8dc] 4eb9 0004 b846            jsr        $0004B846
[0002e8e2] 4cdf 0cf8                 movem.l    (a7)+,d3-d7/a2-a3
[0002e8e6] 4e75                      rts
sort:
[0002e8e8] 48e7 1f38                 movem.l    d3-d7/a2-a4,-(a7)
[0002e8ec] 594f                      subq.w     #4,a7
[0002e8ee] 2448                      movea.l    a0,a2
[0002e8f0] 3800                      move.w     d0,d4
[0002e8f2] 2650                      movea.l    (a0),a3
[0002e8f4] 3f6b 000a 0002            move.w     10(a3),2(a7)
[0002e8fa] 226b 0004                 movea.l    4(a3),a1
[0002e8fe] 2869 0004                 movea.l    4(a1),a4
[0002e902] 342f 0002                 move.w     2(a7),d2
[0002e906] 48c2                      ext.l      d2
[0002e908] 2202                      move.l     d2,d1
[0002e90a] e789                      lsl.l      #3,d1
[0002e90c] 9282                      sub.l      d2,d1
[0002e90e] e789                      lsl.l      #3,d1
[0002e910] 3eb4 180a                 move.w     10(a4,d1.l),(a7)
[0002e914] 3a34 180c                 move.w     12(a4,d1.l),d5
[0002e918] 3405                      move.w     d5,d2
[0002e91a] 48c2                      ext.l      d2
[0002e91c] 2002                      move.l     d2,d0
[0002e91e] e788                      lsl.l      #3,d0
[0002e920] 9082                      sub.l      d2,d0
[0002e922] e788                      lsl.l      #3,d0
[0002e924] 39bc ffff 0808            move.w     #$FFFF,8(a4,d0.l)
[0002e92a] 4245                      clr.w      d5
[0002e92c] 3c17                      move.w     (a7),d6
[0002e92e] 7eff                      moveq.l    #-1,d7
[0002e930] 3206                      move.w     d6,d1
[0002e932] 48c1                      ext.l      d1
[0002e934] 2001                      move.l     d1,d0
[0002e936] e788                      lsl.l      #3,d0
[0002e938] 9081                      sub.l      d1,d0
[0002e93a] e788                      lsl.l      #3,d0
[0002e93c] 3634 0808                 move.w     8(a4,d0.l),d3
[0002e940] 4a43                      tst.w      d3
[0002e942] 6b00 0126                 bmi        $0002EA6A
[0002e946] 4a44                      tst.w      d4
[0002e948] 6732                      beq.s      $0002E97C
[0002e94a] 3003                      move.w     d3,d0
[0002e94c] 48c0                      ext.l      d0
[0002e94e] 2400                      move.l     d0,d2
[0002e950] e78a                      lsl.l      #3,d2
[0002e952] 9480                      sub.l      d0,d2
[0002e954] e78a                      lsl.l      #3,d2
[0002e956] 3034 281a                 move.w     26(a4,d2.l),d0
[0002e95a] 4eb9 0002 bfe6            jsr        $0002BFE6
[0002e960] 3f00                      move.w     d0,-(a7)
[0002e962] 3406                      move.w     d6,d2
[0002e964] 48c2                      ext.l      d2
[0002e966] 2202                      move.l     d2,d1
[0002e968] e789                      lsl.l      #3,d1
[0002e96a] 9282                      sub.l      d2,d1
[0002e96c] e789                      lsl.l      #3,d1
[0002e96e] 3034 181a                 move.w     26(a4,d1.l),d0
[0002e972] 4eb9 0002 bfe6            jsr        $0002BFE6
[0002e978] b05f                      cmp.w      (a7)+,d0
[0002e97a] 6c3a                      bge.s      $0002E9B6
[0002e97c] 4a44                      tst.w      d4
[0002e97e] 6600 00e2                 bne        $0002EA62
[0002e982] 3403                      move.w     d3,d2
[0002e984] 48c2                      ext.l      d2
[0002e986] 2202                      move.l     d2,d1
[0002e988] e789                      lsl.l      #3,d1
[0002e98a] 9282                      sub.l      d2,d1
[0002e98c] e789                      lsl.l      #3,d1
[0002e98e] 3034 1818                 move.w     24(a4,d1.l),d0
[0002e992] 4eb9 0002 bfbe            jsr        $0002BFBE
[0002e998] 3f00                      move.w     d0,-(a7)
[0002e99a] 3406                      move.w     d6,d2
[0002e99c] 48c2                      ext.l      d2
[0002e99e] 2202                      move.l     d2,d1
[0002e9a0] e789                      lsl.l      #3,d1
[0002e9a2] 9282                      sub.l      d2,d1
[0002e9a4] e789                      lsl.l      #3,d1
[0002e9a6] 3034 1818                 move.w     24(a4,d1.l),d0
[0002e9aa] 4eb9 0002 bfbe            jsr        $0002BFBE
[0002e9b0] b05f                      cmp.w      (a7)+,d0
[0002e9b2] 6d00 00ae                 blt        $0002EA62
[0002e9b6] 3403                      move.w     d3,d2
[0002e9b8] 48c2                      ext.l      d2
[0002e9ba] 2202                      move.l     d2,d1
[0002e9bc] e789                      lsl.l      #3,d1
[0002e9be] 9282                      sub.l      d2,d1
[0002e9c0] e789                      lsl.l      #3,d1
[0002e9c2] 3034 181a                 move.w     26(a4,d1.l),d0
[0002e9c6] 4eb9 0002 bfe6            jsr        $0002BFE6
[0002e9cc] 3f00                      move.w     d0,-(a7)
[0002e9ce] 3406                      move.w     d6,d2
[0002e9d0] 48c2                      ext.l      d2
[0002e9d2] 2202                      move.l     d2,d1
[0002e9d4] e789                      lsl.l      #3,d1
[0002e9d6] 9282                      sub.l      d2,d1
[0002e9d8] e789                      lsl.l      #3,d1
[0002e9da] 3034 181a                 move.w     26(a4,d1.l),d0
[0002e9de] 4eb9 0002 bfe6            jsr        $0002BFE6
[0002e9e4] b05f                      cmp.w      (a7)+,d0
[0002e9e6] 6e32                      bgt.s      $0002EA1A
[0002e9e8] 3403                      move.w     d3,d2
[0002e9ea] 48c2                      ext.l      d2
[0002e9ec] 2202                      move.l     d2,d1
[0002e9ee] e789                      lsl.l      #3,d1
[0002e9f0] 9282                      sub.l      d2,d1
[0002e9f2] e789                      lsl.l      #3,d1
[0002e9f4] 3034 1818                 move.w     24(a4,d1.l),d0
[0002e9f8] 4eb9 0002 bfbe            jsr        $0002BFBE
[0002e9fe] 3f00                      move.w     d0,-(a7)
[0002ea00] 3406                      move.w     d6,d2
[0002ea02] 48c2                      ext.l      d2
[0002ea04] 2202                      move.l     d2,d1
[0002ea06] e789                      lsl.l      #3,d1
[0002ea08] 9282                      sub.l      d2,d1
[0002ea0a] e789                      lsl.l      #3,d1
[0002ea0c] 3034 1818                 move.w     24(a4,d1.l),d0
[0002ea10] 4eb9 0002 bfbe            jsr        $0002BFBE
[0002ea16] b05f                      cmp.w      (a7)+,d0
[0002ea18] 6f48                      ble.s      $0002EA62
[0002ea1a] 7a01                      moveq.l    #1,d5
[0002ea1c] 2053                      movea.l    (a3),a0
[0002ea1e] 8b68 0006                 or.w       d5,6(a0)
[0002ea22] 4a47                      tst.w      d7
[0002ea24] 6a04                      bpl.s      $0002EA2A
[0002ea26] 3e83                      move.w     d3,(a7)
[0002ea28] 6010                      bra.s      $0002EA3A
[0002ea2a] 3207                      move.w     d7,d1
[0002ea2c] 48c1                      ext.l      d1
[0002ea2e] 2001                      move.l     d1,d0
[0002ea30] e788                      lsl.l      #3,d0
[0002ea32] 9081                      sub.l      d1,d0
[0002ea34] e788                      lsl.l      #3,d0
[0002ea36] 3983 0808                 move.w     d3,8(a4,d0.l)
[0002ea3a] 3203                      move.w     d3,d1
[0002ea3c] 48c1                      ext.l      d1
[0002ea3e] 2001                      move.l     d1,d0
[0002ea40] e788                      lsl.l      #3,d0
[0002ea42] 9081                      sub.l      d1,d0
[0002ea44] e788                      lsl.l      #3,d0
[0002ea46] 3206                      move.w     d6,d1
[0002ea48] 48c1                      ext.l      d1
[0002ea4a] 2401                      move.l     d1,d2
[0002ea4c] e78a                      lsl.l      #3,d2
[0002ea4e] 9481                      sub.l      d1,d2
[0002ea50] e78a                      lsl.l      #3,d2
[0002ea52] 39b4 0808 2808            move.w     8(a4,d0.l),8(a4,d2.l)
[0002ea58] 3986 0808                 move.w     d6,8(a4,d0.l)
[0002ea5c] 3e03                      move.w     d3,d7
[0002ea5e] 3606                      move.w     d6,d3
[0002ea60] 3c07                      move.w     d7,d6
[0002ea62] 3e06                      move.w     d6,d7
[0002ea64] 3c03                      move.w     d3,d6
[0002ea66] 6000 fec8                 bra        $0002E930
[0002ea6a] 4a45                      tst.w      d5
[0002ea6c] 6600 febc                 bne        $0002E92A
[0002ea70] 322f 0002                 move.w     2(a7),d1
[0002ea74] 48c1                      ext.l      d1
[0002ea76] 2001                      move.l     d1,d0
[0002ea78] e788                      lsl.l      #3,d0
[0002ea7a] 9081                      sub.l      d1,d0
[0002ea7c] e788                      lsl.l      #3,d0
[0002ea7e] 3997 080a                 move.w     (a7),10(a4,d0.l)
[0002ea82] 3986 080c                 move.w     d6,12(a4,d0.l)
[0002ea86] 3606                      move.w     d6,d3
[0002ea88] 48c3                      ext.l      d3
[0002ea8a] 2403                      move.l     d3,d2
[0002ea8c] e78a                      lsl.l      #3,d2
[0002ea8e] 9483                      sub.l      d3,d2
[0002ea90] e78a                      lsl.l      #3,d2
[0002ea92] 39af 0002 2808            move.w     2(a7),8(a4,d2.l)
[0002ea98] 204a                      movea.l    a2,a0
[0002ea9a] 226a 0010                 movea.l    16(a2),a1
[0002ea9e] 4e91                      jsr        (a1)
[0002eaa0] 302f 0002                 move.w     2(a7),d0
[0002eaa4] 3800                      move.w     d0,d4
[0002eaa6] d844                      add.w      d4,d4
[0002eaa8] d840                      add.w      d0,d4
[0002eaaa] 5444                      addq.w     #2,d4
[0002eaac] 204a                      movea.l    a2,a0
[0002eaae] 3004                      move.w     d4,d0
[0002eab0] 4eb9 0004 b846            jsr        $0004B846
[0002eab6] 584f                      addq.w     #4,a7
[0002eab8] 4cdf 1cf8                 movem.l    (a7)+,d3-d7/a2-a4
[0002eabc] 4e75                      rts
edob_sortxy:
[0002eabe] 7001                      moveq.l    #1,d0
[0002eac0] 2079 0010 1f12            movea.l    ACSblk,a0
[0002eac6] 2068 0258                 movea.l    600(a0),a0
[0002eaca] 6100 fe1c                 bsr        $0002E8E8
[0002eace] 4e75                      rts
edob_sortyx:
[0002ead0] 4240                      clr.w      d0
[0002ead2] 2079 0010 1f12            movea.l    ACSblk,a0
[0002ead8] 2068 0258                 movea.l    600(a0),a0
[0002eadc] 6100 fe0a                 bsr        $0002E8E8
[0002eae0] 4e75                      rts
edob_lock:
[0002eae2] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0002eae6] 2079 0010 1f12            movea.l    ACSblk,a0
[0002eaec] 2668 0258                 movea.l    600(a0),a3
[0002eaf0] 2453                      movea.l    (a3),a2
[0002eaf2] 2252                      movea.l    (a2),a1
[0002eaf4] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002eafa] 362a 000a                 move.w     10(a2),d3
[0002eafe] 3803                      move.w     d3,d4
[0002eb00] d844                      add.w      d4,d4
[0002eb02] d843                      add.w      d3,d4
[0002eb04] 5444                      addq.w     #2,d4
[0002eb06] 4eb9 0004 4a26            jsr        $00044A26
[0002eb0c] 266b 0014                 movea.l    20(a3),a3
[0002eb10] 3204                      move.w     d4,d1
[0002eb12] 48c1                      ext.l      d1
[0002eb14] 2001                      move.l     d1,d0
[0002eb16] d080                      add.l      d0,d0
[0002eb18] d081                      add.l      d1,d0
[0002eb1a] e788                      lsl.l      #3,d0
[0002eb1c] 0073 1000 080a            ori.w      #$1000,10(a3,d0.l)
[0002eb22] 206a 0004                 movea.l    4(a2),a0
[0002eb26] 2668 0004                 movea.l    4(a0),a3
[0002eb2a] 3803                      move.w     d3,d4
[0002eb2c] 48c4                      ext.l      d4
[0002eb2e] 2404                      move.l     d4,d2
[0002eb30] e78a                      lsl.l      #3,d2
[0002eb32] 9484                      sub.l      d4,d2
[0002eb34] e78a                      lsl.l      #3,d2
[0002eb36] 0073 1000 2812            ori.w      #$1000,18(a3,d2.l)
[0002eb3c] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0002eb40] 4e75                      rts
edob_unlock:
[0002eb42] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0002eb46] 2079 0010 1f12            movea.l    ACSblk,a0
[0002eb4c] 2668 0258                 movea.l    600(a0),a3
[0002eb50] 2453                      movea.l    (a3),a2
[0002eb52] 2252                      movea.l    (a2),a1
[0002eb54] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002eb5a] 362a 000a                 move.w     10(a2),d3
[0002eb5e] 3803                      move.w     d3,d4
[0002eb60] d844                      add.w      d4,d4
[0002eb62] d843                      add.w      d3,d4
[0002eb64] 5444                      addq.w     #2,d4
[0002eb66] 4eb9 0004 4a26            jsr        $00044A26
[0002eb6c] 266b 0014                 movea.l    20(a3),a3
[0002eb70] 3204                      move.w     d4,d1
[0002eb72] 48c1                      ext.l      d1
[0002eb74] 2001                      move.l     d1,d0
[0002eb76] d080                      add.l      d0,d0
[0002eb78] d081                      add.l      d1,d0
[0002eb7a] e788                      lsl.l      #3,d0
[0002eb7c] 0273 efff 080a            andi.w     #$EFFF,10(a3,d0.l)
[0002eb82] 206a 0004                 movea.l    4(a2),a0
[0002eb86] 2668 0004                 movea.l    4(a0),a3
[0002eb8a] 3803                      move.w     d3,d4
[0002eb8c] 48c4                      ext.l      d4
[0002eb8e] 2404                      move.l     d4,d2
[0002eb90] e78a                      lsl.l      #3,d2
[0002eb92] 9484                      sub.l      d4,d2
[0002eb94] e78a                      lsl.l      #3,d2
[0002eb96] 0273 efff 2812            andi.w     #$EFFF,18(a3,d2.l)
[0002eb9c] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0002eba0] 4e75                      rts
edob_unhide:
[0002eba2] 48e7 1e3c                 movem.l    d3-d6/a2-a5,-(a7)
[0002eba6] 2079 0010 1f12            movea.l    ACSblk,a0
[0002ebac] 2468 0258                 movea.l    600(a0),a2
[0002ebb0] 266a 0014                 movea.l    20(a2),a3
[0002ebb4] 2852                      movea.l    (a2),a4
[0002ebb6] 362c 000a                 move.w     10(a4),d3
[0002ebba] 226c 0004                 movea.l    4(a4),a1
[0002ebbe] 2a69 0004                 movea.l    4(a1),a5
[0002ebc2] 3203                      move.w     d3,d1
[0002ebc4] 48c1                      ext.l      d1
[0002ebc6] 2001                      move.l     d1,d0
[0002ebc8] e788                      lsl.l      #3,d0
[0002ebca] 9081                      sub.l      d1,d0
[0002ebcc] e788                      lsl.l      #3,d0
[0002ebce] 3835 080a                 move.w     10(a5,d0.l),d4
[0002ebd2] 4a44                      tst.w      d4
[0002ebd4] 6b00 0082                 bmi        $0002EC58
[0002ebd8] 4245                      clr.w      d5
[0002ebda] 605a                      bra.s      $0002EC36
[0002ebdc] 303c 0080                 move.w     #$0080,d0
[0002ebe0] 3404                      move.w     d4,d2
[0002ebe2] 48c2                      ext.l      d2
[0002ebe4] 2202                      move.l     d2,d1
[0002ebe6] e789                      lsl.l      #3,d1
[0002ebe8] 9282                      sub.l      d2,d1
[0002ebea] e789                      lsl.l      #3,d1
[0002ebec] c075 1810                 and.w      16(a5,d1.l),d0
[0002ebf0] 6734                      beq.s      $0002EC26
[0002ebf2] 7a01                      moveq.l    #1,d5
[0002ebf4] 3c04                      move.w     d4,d6
[0002ebf6] dc46                      add.w      d6,d6
[0002ebf8] dc44                      add.w      d4,d6
[0002ebfa] dc45                      add.w      d5,d6
[0002ebfc] 3206                      move.w     d6,d1
[0002ebfe] 48c1                      ext.l      d1
[0002ec00] 2001                      move.l     d1,d0
[0002ec02] d080                      add.l      d0,d0
[0002ec04] d081                      add.l      d1,d0
[0002ec06] e788                      lsl.l      #3,d0
[0002ec08] 0273 ff7f 0808            andi.w     #$FF7F,8(a3,d0.l)
[0002ec0e] 0273 ff7f 0820            andi.w     #$FF7F,32(a3,d0.l)
[0002ec14] 3c04                      move.w     d4,d6
[0002ec16] 48c6                      ext.l      d6
[0002ec18] 2406                      move.l     d6,d2
[0002ec1a] e78a                      lsl.l      #3,d2
[0002ec1c] 9486                      sub.l      d6,d2
[0002ec1e] e78a                      lsl.l      #3,d2
[0002ec20] 0275 ff7f 2810            andi.w     #$FF7F,16(a5,d2.l)
[0002ec26] 3204                      move.w     d4,d1
[0002ec28] 48c1                      ext.l      d1
[0002ec2a] 2001                      move.l     d1,d0
[0002ec2c] e788                      lsl.l      #3,d0
[0002ec2e] 9081                      sub.l      d1,d0
[0002ec30] e788                      lsl.l      #3,d0
[0002ec32] 3835 0808                 move.w     8(a5,d0.l),d4
[0002ec36] b644                      cmp.w      d4,d3
[0002ec38] 66a2                      bne.s      $0002EBDC
[0002ec3a] 4a45                      tst.w      d5
[0002ec3c] 671a                      beq.s      $0002EC58
[0002ec3e] 2054                      movea.l    (a4),a0
[0002ec40] 0068 0001 0006            ori.w      #$0001,6(a0)
[0002ec46] 3003                      move.w     d3,d0
[0002ec48] d040                      add.w      d0,d0
[0002ec4a] d043                      add.w      d3,d0
[0002ec4c] 5240                      addq.w     #1,d0
[0002ec4e] 3600                      move.w     d0,d3
[0002ec50] 204a                      movea.l    a2,a0
[0002ec52] 4eb9 0004 b846            jsr        $0004B846
[0002ec58] 4cdf 3c78                 movem.l    (a7)+,d3-d6/a2-a5
[0002ec5c] 4e75                      rts
edob_pos:
[0002ec5e] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0002ec62] 4fef fff6                 lea.l      -10(a7),a7
[0002ec66] 2079 0010 1f12            movea.l    ACSblk,a0
[0002ec6c] 2ea8 0258                 move.l     600(a0),(a7)
[0002ec70] 2257                      movea.l    (a7),a1
[0002ec72] 2451                      movea.l    (a1),a2
[0002ec74] 362a 000a                 move.w     10(a2),d3
[0002ec78] 4a43                      tst.w      d3
[0002ec7a] 6b00 04ca                 bmi        $0002F146
[0002ec7e] 302a 0018                 move.w     24(a2),d0
[0002ec82] 6b00 04c2                 bmi        $0002F146
[0002ec86] 41f9 000b cabc            lea.l      $000BCABC,a0
[0002ec8c] 2279 000b cac4            movea.l    $000BCAC4,a1
[0002ec92] 4e91                      jsr        (a1)
[0002ec94] 2648                      movea.l    a0,a3
[0002ec96] 200b                      move.l     a3,d0
[0002ec98] 6700 04ac                 beq        $0002F146
[0002ec9c] 2257                      movea.l    (a7),a1
[0002ec9e] 2869 0014                 movea.l    20(a1),a4
[0002eca2] 206a 0004                 movea.l    4(a2),a0
[0002eca6] 2a68 0004                 movea.l    4(a0),a5
[0002ecaa] 3403                      move.w     d3,d2
[0002ecac] 48c2                      ext.l      d2
[0002ecae] 2202                      move.l     d2,d1
[0002ecb0] e789                      lsl.l      #3,d1
[0002ecb2] 9282                      sub.l      d2,d1
[0002ecb4] e789                      lsl.l      #3,d1
[0002ecb6] 3035 1818                 move.w     24(a5,d1.l),d0
[0002ecba] c07c 00ff                 and.w      #$00FF,d0
[0002ecbe] 3f00                      move.w     d0,-(a7)
[0002ecc0] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002ecc6] 206b 0014                 movea.l    20(a3),a0
[0002ecca] 7007                      moveq.l    #7,d0
[0002eccc] 4eb9 0004 afac            jsr        $0004AFAC
[0002ecd2] 544f                      addq.w     #2,a7
[0002ecd4] 3203                      move.w     d3,d1
[0002ecd6] 48c1                      ext.l      d1
[0002ecd8] 2001                      move.l     d1,d0
[0002ecda] e788                      lsl.l      #3,d0
[0002ecdc] 9081                      sub.l      d1,d0
[0002ecde] e788                      lsl.l      #3,d0
[0002ece0] 3435 081a                 move.w     26(a5,d0.l),d2
[0002ece4] c47c 00ff                 and.w      #$00FF,d2
[0002ece8] 3f02                      move.w     d2,-(a7)
[0002ecea] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002ecf0] 206b 0014                 movea.l    20(a3),a0
[0002ecf4] 7008                      moveq.l    #8,d0
[0002ecf6] 4eb9 0004 afac            jsr        $0004AFAC
[0002ecfc] 544f                      addq.w     #2,a7
[0002ecfe] 3203                      move.w     d3,d1
[0002ed00] 48c1                      ext.l      d1
[0002ed02] 2001                      move.l     d1,d0
[0002ed04] e788                      lsl.l      #3,d0
[0002ed06] 9081                      sub.l      d1,d0
[0002ed08] e788                      lsl.l      #3,d0
[0002ed0a] 3435 081c                 move.w     28(a5,d0.l),d2
[0002ed0e] c47c 00ff                 and.w      #$00FF,d2
[0002ed12] 3f02                      move.w     d2,-(a7)
[0002ed14] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002ed1a] 206b 0014                 movea.l    20(a3),a0
[0002ed1e] 7009                      moveq.l    #9,d0
[0002ed20] 4eb9 0004 afac            jsr        $0004AFAC
[0002ed26] 544f                      addq.w     #2,a7
[0002ed28] 3203                      move.w     d3,d1
[0002ed2a] 48c1                      ext.l      d1
[0002ed2c] 2001                      move.l     d1,d0
[0002ed2e] e788                      lsl.l      #3,d0
[0002ed30] 9081                      sub.l      d1,d0
[0002ed32] e788                      lsl.l      #3,d0
[0002ed34] 3435 081e                 move.w     30(a5,d0.l),d2
[0002ed38] c47c 00ff                 and.w      #$00FF,d2
[0002ed3c] 3f02                      move.w     d2,-(a7)
[0002ed3e] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002ed44] 206b 0014                 movea.l    20(a3),a0
[0002ed48] 700a                      moveq.l    #10,d0
[0002ed4a] 4eb9 0004 afac            jsr        $0004AFAC
[0002ed50] 544f                      addq.w     #2,a7
[0002ed52] 3203                      move.w     d3,d1
[0002ed54] 48c1                      ext.l      d1
[0002ed56] 2001                      move.l     d1,d0
[0002ed58] e788                      lsl.l      #3,d0
[0002ed5a] 9081                      sub.l      d1,d0
[0002ed5c] e788                      lsl.l      #3,d0
[0002ed5e] 3435 0818                 move.w     24(a5,d0.l),d2
[0002ed62] e042                      asr.w      #8,d2
[0002ed64] 3f02                      move.w     d2,-(a7)
[0002ed66] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002ed6c] 206b 0014                 movea.l    20(a3),a0
[0002ed70] 700c                      moveq.l    #12,d0
[0002ed72] 4eb9 0004 afac            jsr        $0004AFAC
[0002ed78] 544f                      addq.w     #2,a7
[0002ed7a] 3203                      move.w     d3,d1
[0002ed7c] 48c1                      ext.l      d1
[0002ed7e] 2001                      move.l     d1,d0
[0002ed80] e788                      lsl.l      #3,d0
[0002ed82] 9081                      sub.l      d1,d0
[0002ed84] e788                      lsl.l      #3,d0
[0002ed86] 3435 081a                 move.w     26(a5,d0.l),d2
[0002ed8a] e042                      asr.w      #8,d2
[0002ed8c] 3f02                      move.w     d2,-(a7)
[0002ed8e] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002ed94] 206b 0014                 movea.l    20(a3),a0
[0002ed98] 700d                      moveq.l    #13,d0
[0002ed9a] 4eb9 0004 afac            jsr        $0004AFAC
[0002eda0] 544f                      addq.w     #2,a7
[0002eda2] 3203                      move.w     d3,d1
[0002eda4] 48c1                      ext.l      d1
[0002eda6] 2001                      move.l     d1,d0
[0002eda8] e788                      lsl.l      #3,d0
[0002edaa] 9081                      sub.l      d1,d0
[0002edac] e788                      lsl.l      #3,d0
[0002edae] 3435 081c                 move.w     28(a5,d0.l),d2
[0002edb2] e042                      asr.w      #8,d2
[0002edb4] 3f02                      move.w     d2,-(a7)
[0002edb6] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002edbc] 206b 0014                 movea.l    20(a3),a0
[0002edc0] 700e                      moveq.l    #14,d0
[0002edc2] 4eb9 0004 afac            jsr        $0004AFAC
[0002edc8] 544f                      addq.w     #2,a7
[0002edca] 3203                      move.w     d3,d1
[0002edcc] 48c1                      ext.l      d1
[0002edce] 2001                      move.l     d1,d0
[0002edd0] e788                      lsl.l      #3,d0
[0002edd2] 9081                      sub.l      d1,d0
[0002edd4] e788                      lsl.l      #3,d0
[0002edd6] 3435 081e                 move.w     30(a5,d0.l),d2
[0002edda] e042                      asr.w      #8,d2
[0002eddc] 3f02                      move.w     d2,-(a7)
[0002edde] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002ede4] 206b 0014                 movea.l    20(a3),a0
[0002ede8] 700f                      moveq.l    #15,d0
[0002edea] 4eb9 0004 afac            jsr        $0004AFAC
[0002edf0] 544f                      addq.w     #2,a7
[0002edf2] 3803                      move.w     d3,d4
[0002edf4] d844                      add.w      d4,d4
[0002edf6] d843                      add.w      d3,d4
[0002edf8] 5444                      addq.w     #2,d4
[0002edfa] 3204                      move.w     d4,d1
[0002edfc] 48c1                      ext.l      d1
[0002edfe] 2001                      move.l     d1,d0
[0002ee00] d080                      add.l      d0,d0
[0002ee02] d081                      add.l      d1,d0
[0002ee04] e788                      lsl.l      #3,d0
[0002ee06] 3a34 0814                 move.w     20(a4,d0.l),d5
[0002ee0a] 3c34 0816                 move.w     22(a4,d0.l),d6
[0002ee0e] 204b                      movea.l    a3,a0
[0002ee10] 4eb9 0005 1292            jsr        $00051292
[0002ee16] b07c 0013                 cmp.w      #$0013,d0
[0002ee1a] 6600 0322                 bne        $0002F13E
[0002ee1e] 2052                      movea.l    (a2),a0
[0002ee20] 0068 0001 0006            ori.w      #$0001,6(a0)
[0002ee26] 45ef 0008                 lea.l      8(a7),a2
[0002ee2a] 4a43                      tst.w      d3
[0002ee2c] 6700 0124                 beq        $0002EF52
[0002ee30] 4852                      pea.l      (a2)
[0002ee32] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002ee38] 7007                      moveq.l    #7,d0
[0002ee3a] 206b 0014                 movea.l    20(a3),a0
[0002ee3e] 4eb9 0004 b0b2            jsr        $0004B0B2
[0002ee44] 584f                      addq.w     #4,a7
[0002ee46] 486f 0006                 pea.l      6(a7)
[0002ee4a] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002ee50] 700c                      moveq.l    #12,d0
[0002ee52] 206b 0014                 movea.l    20(a3),a0
[0002ee56] 4eb9 0004 b0b2            jsr        $0004B0B2
[0002ee5c] 584f                      addq.w     #4,a7
[0002ee5e] 0c52 00ff                 cmpi.w     #$00FF,(a2)
[0002ee62] 6f06                      ble.s      $0002EE6A
[0002ee64] 34bc 00ff                 move.w     #$00FF,(a2)
[0002ee68] 6006                      bra.s      $0002EE70
[0002ee6a] 3012                      move.w     (a2),d0
[0002ee6c] 6a02                      bpl.s      $0002EE70
[0002ee6e] 4252                      clr.w      (a2)
[0002ee70] 0c6f 007f 0006            cmpi.w     #$007F,6(a7)
[0002ee76] 6f08                      ble.s      $0002EE80
[0002ee78] 3f7c 007f 0006            move.w     #$007F,6(a7)
[0002ee7e] 600e                      bra.s      $0002EE8E
[0002ee80] 0c6f ff80 0006            cmpi.w     #$FF80,6(a7)
[0002ee86] 6c06                      bge.s      $0002EE8E
[0002ee88] 3f7c ff80 0006            move.w     #$FF80,6(a7)
[0002ee8e] 3012                      move.w     (a2),d0
[0002ee90] c07c 00ff                 and.w      #$00FF,d0
[0002ee94] 322f 0006                 move.w     6(a7),d1
[0002ee98] e149                      lsl.w      #8,d1
[0002ee9a] 8041                      or.w       d1,d0
[0002ee9c] 3203                      move.w     d3,d1
[0002ee9e] 48c1                      ext.l      d1
[0002eea0] 2401                      move.l     d1,d2
[0002eea2] e78a                      lsl.l      #3,d2
[0002eea4] 9481                      sub.l      d1,d2
[0002eea6] e78a                      lsl.l      #3,d2
[0002eea8] 3b80 2818                 move.w     d0,24(a5,d2.l)
[0002eeac] 3204                      move.w     d4,d1
[0002eeae] 48c1                      ext.l      d1
[0002eeb0] 2401                      move.l     d1,d2
[0002eeb2] d482                      add.l      d2,d2
[0002eeb4] d481                      add.l      d1,d2
[0002eeb6] e78a                      lsl.l      #3,d2
[0002eeb8] 3980 2810                 move.w     d0,16(a4,d2.l)
[0002eebc] 3980 28f8                 move.w     d0,-8(a4,d2.l)
[0002eec0] 4852                      pea.l      (a2)
[0002eec2] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002eec8] 206b 0014                 movea.l    20(a3),a0
[0002eecc] 7008                      moveq.l    #8,d0
[0002eece] 4eb9 0004 b0b2            jsr        $0004B0B2
[0002eed4] 584f                      addq.w     #4,a7
[0002eed6] 486f 0006                 pea.l      6(a7)
[0002eeda] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002eee0] 700d                      moveq.l    #13,d0
[0002eee2] 206b 0014                 movea.l    20(a3),a0
[0002eee6] 4eb9 0004 b0b2            jsr        $0004B0B2
[0002eeec] 584f                      addq.w     #4,a7
[0002eeee] 0c52 00ff                 cmpi.w     #$00FF,(a2)
[0002eef2] 6f06                      ble.s      $0002EEFA
[0002eef4] 34bc 00ff                 move.w     #$00FF,(a2)
[0002eef8] 6006                      bra.s      $0002EF00
[0002eefa] 3012                      move.w     (a2),d0
[0002eefc] 6a02                      bpl.s      $0002EF00
[0002eefe] 4252                      clr.w      (a2)
[0002ef00] 0c6f 007f 0006            cmpi.w     #$007F,6(a7)
[0002ef06] 6f08                      ble.s      $0002EF10
[0002ef08] 3f7c 007f 0006            move.w     #$007F,6(a7)
[0002ef0e] 600e                      bra.s      $0002EF1E
[0002ef10] 0c6f ff80 0006            cmpi.w     #$FF80,6(a7)
[0002ef16] 6c06                      bge.s      $0002EF1E
[0002ef18] 3f7c ff80 0006            move.w     #$FF80,6(a7)
[0002ef1e] 3012                      move.w     (a2),d0
[0002ef20] c07c 00ff                 and.w      #$00FF,d0
[0002ef24] 322f 0006                 move.w     6(a7),d1
[0002ef28] e149                      lsl.w      #8,d1
[0002ef2a] 8041                      or.w       d1,d0
[0002ef2c] 3203                      move.w     d3,d1
[0002ef2e] 48c1                      ext.l      d1
[0002ef30] 2401                      move.l     d1,d2
[0002ef32] e78a                      lsl.l      #3,d2
[0002ef34] 9481                      sub.l      d1,d2
[0002ef36] e78a                      lsl.l      #3,d2
[0002ef38] 3b80 281a                 move.w     d0,26(a5,d2.l)
[0002ef3c] 3204                      move.w     d4,d1
[0002ef3e] 48c1                      ext.l      d1
[0002ef40] 2401                      move.l     d1,d2
[0002ef42] d482                      add.l      d2,d2
[0002ef44] d481                      add.l      d1,d2
[0002ef46] e78a                      lsl.l      #3,d2
[0002ef48] 3980 2812                 move.w     d0,18(a4,d2.l)
[0002ef4c] 3980 28fa                 move.w     d0,-6(a4,d2.l)
[0002ef50] 6016                      bra.s      $0002EF68
[0002ef52] 3204                      move.w     d4,d1
[0002ef54] 48c1                      ext.l      d1
[0002ef56] 2001                      move.l     d1,d0
[0002ef58] d080                      add.l      d0,d0
[0002ef5a] d081                      add.l      d1,d0
[0002ef5c] e788                      lsl.l      #3,d0
[0002ef5e] 3f74 0810 0004            move.w     16(a4,d0.l),4(a7)
[0002ef64] 3e34 0812                 move.w     18(a4,d0.l),d7
[0002ef68] 4852                      pea.l      (a2)
[0002ef6a] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002ef70] 7009                      moveq.l    #9,d0
[0002ef72] 206b 0014                 movea.l    20(a3),a0
[0002ef76] 4eb9 0004 b0b2            jsr        $0004B0B2
[0002ef7c] 584f                      addq.w     #4,a7
[0002ef7e] 486f 0006                 pea.l      6(a7)
[0002ef82] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002ef88] 700e                      moveq.l    #14,d0
[0002ef8a] 206b 0014                 movea.l    20(a3),a0
[0002ef8e] 4eb9 0004 b0b2            jsr        $0004B0B2
[0002ef94] 584f                      addq.w     #4,a7
[0002ef96] 0c52 00ff                 cmpi.w     #$00FF,(a2)
[0002ef9a] 6f06                      ble.s      $0002EFA2
[0002ef9c] 34bc 00ff                 move.w     #$00FF,(a2)
[0002efa0] 6006                      bra.s      $0002EFA8
[0002efa2] 3012                      move.w     (a2),d0
[0002efa4] 6a02                      bpl.s      $0002EFA8
[0002efa6] 4252                      clr.w      (a2)
[0002efa8] 0c6f 007f 0006            cmpi.w     #$007F,6(a7)
[0002efae] 6f08                      ble.s      $0002EFB8
[0002efb0] 3f7c 007f 0006            move.w     #$007F,6(a7)
[0002efb6] 600e                      bra.s      $0002EFC6
[0002efb8] 0c6f ff80 0006            cmpi.w     #$FF80,6(a7)
[0002efbe] 6c06                      bge.s      $0002EFC6
[0002efc0] 3f7c ff80 0006            move.w     #$FF80,6(a7)
[0002efc6] 3012                      move.w     (a2),d0
[0002efc8] c07c 00ff                 and.w      #$00FF,d0
[0002efcc] 322f 0006                 move.w     6(a7),d1
[0002efd0] e149                      lsl.w      #8,d1
[0002efd2] 8041                      or.w       d1,d0
[0002efd4] 3203                      move.w     d3,d1
[0002efd6] 48c1                      ext.l      d1
[0002efd8] 2401                      move.l     d1,d2
[0002efda] e78a                      lsl.l      #3,d2
[0002efdc] 9481                      sub.l      d1,d2
[0002efde] e78a                      lsl.l      #3,d2
[0002efe0] 3b80 281c                 move.w     d0,28(a5,d2.l)
[0002efe4] 3204                      move.w     d4,d1
[0002efe6] 48c1                      ext.l      d1
[0002efe8] 2401                      move.l     d1,d2
[0002efea] d482                      add.l      d2,d2
[0002efec] d481                      add.l      d1,d2
[0002efee] e78a                      lsl.l      #3,d2
[0002eff0] 3980 2814                 move.w     d0,20(a4,d2.l)
[0002eff4] 3980 28fc                 move.w     d0,-4(a4,d2.l)
[0002eff8] 4852                      pea.l      (a2)
[0002effa] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002f000] 206b 0014                 movea.l    20(a3),a0
[0002f004] 700a                      moveq.l    #10,d0
[0002f006] 4eb9 0004 b0b2            jsr        $0004B0B2
[0002f00c] 584f                      addq.w     #4,a7
[0002f00e] 486f 0006                 pea.l      6(a7)
[0002f012] 43f9 000b cd71            lea.l      $000BCD71,a1
[0002f018] 700f                      moveq.l    #15,d0
[0002f01a] 206b 0014                 movea.l    20(a3),a0
[0002f01e] 4eb9 0004 b0b2            jsr        $0004B0B2
[0002f024] 584f                      addq.w     #4,a7
[0002f026] 0c52 00ff                 cmpi.w     #$00FF,(a2)
[0002f02a] 6f06                      ble.s      $0002F032
[0002f02c] 34bc 00ff                 move.w     #$00FF,(a2)
[0002f030] 6006                      bra.s      $0002F038
[0002f032] 3012                      move.w     (a2),d0
[0002f034] 6a02                      bpl.s      $0002F038
[0002f036] 4252                      clr.w      (a2)
[0002f038] 0c6f 007f 0006            cmpi.w     #$007F,6(a7)
[0002f03e] 6f08                      ble.s      $0002F048
[0002f040] 3f7c 007f 0006            move.w     #$007F,6(a7)
[0002f046] 600e                      bra.s      $0002F056
[0002f048] 0c6f ff80 0006            cmpi.w     #$FF80,6(a7)
[0002f04e] 6c06                      bge.s      $0002F056
[0002f050] 3f7c ff80 0006            move.w     #$FF80,6(a7)
[0002f056] 3012                      move.w     (a2),d0
[0002f058] c07c 00ff                 and.w      #$00FF,d0
[0002f05c] 322f 0006                 move.w     6(a7),d1
[0002f060] e149                      lsl.w      #8,d1
[0002f062] 8041                      or.w       d1,d0
[0002f064] 3203                      move.w     d3,d1
[0002f066] 48c1                      ext.l      d1
[0002f068] 2401                      move.l     d1,d2
[0002f06a] e78a                      lsl.l      #3,d2
[0002f06c] 9481                      sub.l      d1,d2
[0002f06e] e78a                      lsl.l      #3,d2
[0002f070] 3b80 281e                 move.w     d0,30(a5,d2.l)
[0002f074] 3204                      move.w     d4,d1
[0002f076] 48c1                      ext.l      d1
[0002f078] 2401                      move.l     d1,d2
[0002f07a] d482                      add.l      d2,d2
[0002f07c] d481                      add.l      d1,d2
[0002f07e] e78a                      lsl.l      #3,d2
[0002f080] 3980 2816                 move.w     d0,22(a4,d2.l)
[0002f084] 3980 28fe                 move.w     d0,-2(a4,d2.l)
[0002f088] 2279 000d 99d6            movea.l    $000D99D6,a1
[0002f08e] 70ff                      moveq.l    #-1,d0
[0002f090] d044                      add.w      d4,d0
[0002f092] 204c                      movea.l    a4,a0
[0002f094] 4eb9 0006 d908            jsr        $0006D908
[0002f09a] 2279 000d 99d6            movea.l    $000D99D6,a1
[0002f0a0] 3004                      move.w     d4,d0
[0002f0a2] 204c                      movea.l    a4,a0
[0002f0a4] 4eb9 0006 d908            jsr        $0006D908
[0002f0aa] 4a43                      tst.w      d3
[0002f0ac] 6620                      bne.s      $0002F0CE
[0002f0ae] 302f 0004                 move.w     4(a7),d0
[0002f0b2] 3404                      move.w     d4,d2
[0002f0b4] 48c2                      ext.l      d2
[0002f0b6] 2202                      move.l     d2,d1
[0002f0b8] d281                      add.l      d1,d1
[0002f0ba] d282                      add.l      d2,d1
[0002f0bc] e789                      lsl.l      #3,d1
[0002f0be] 3980 1810                 move.w     d0,16(a4,d1.l)
[0002f0c2] 3980 18f8                 move.w     d0,-8(a4,d1.l)
[0002f0c6] 3987 1812                 move.w     d7,18(a4,d1.l)
[0002f0ca] 3987 18fa                 move.w     d7,-6(a4,d1.l)
[0002f0ce] 3204                      move.w     d4,d1
[0002f0d0] 48c1                      ext.l      d1
[0002f0d2] 2001                      move.l     d1,d0
[0002f0d4] d080                      add.l      d0,d0
[0002f0d6] d081                      add.l      d1,d0
[0002f0d8] e788                      lsl.l      #3,d0
[0002f0da] 9a74 0814                 sub.w      20(a4,d0.l),d5
[0002f0de] 9c74 0816                 sub.w      22(a4,d0.l),d6
[0002f0e2] 4a45                      tst.w      d5
[0002f0e4] 6604                      bne.s      $0002F0EA
[0002f0e6] 4a46                      tst.w      d6
[0002f0e8] 6714                      beq.s      $0002F0FE
[0002f0ea] 224c                      movea.l    a4,a1
[0002f0ec] 3406                      move.w     d6,d2
[0002f0ee] 4442                      neg.w      d2
[0002f0f0] 3205                      move.w     d5,d1
[0002f0f2] 4441                      neg.w      d1
[0002f0f4] 3003                      move.w     d3,d0
[0002f0f6] 204d                      movea.l    a5,a0
[0002f0f8] 4eb9 0002 bed6            jsr        $0002BED6
[0002f0fe] 3004                      move.w     d4,d0
[0002f100] 204c                      movea.l    a4,a0
[0002f102] 4eb9 0004 af6c            jsr        $0004AF6C
[0002f108] 3e00                      move.w     d0,d7
[0002f10a] 4eb9 0004 4a26            jsr        $00044A26
[0002f110] 4a43                      tst.w      d3
[0002f112] 6620                      bne.s      $0002F134
[0002f114] 2057                      movea.l    (a7),a0
[0002f116] 2257                      movea.l    (a7),a1
[0002f118] 2269 0010                 movea.l    16(a1),a1
[0002f11c] 4e91                      jsr        (a1)
[0002f11e] 2057                      movea.l    (a7),a0
[0002f120] 0068 0010 0056            ori.w      #$0010,86(a0)
[0002f126] 2248                      movea.l    a0,a1
[0002f128] 43e9 0024                 lea.l      36(a1),a1
[0002f12c] 2468 0086                 movea.l    134(a0),a2
[0002f130] 4e92                      jsr        (a2)
[0002f132] 600a                      bra.s      $0002F13E
[0002f134] 3007                      move.w     d7,d0
[0002f136] 2057                      movea.l    (a7),a0
[0002f138] 4eb9 0004 b846            jsr        $0004B846
[0002f13e] 204b                      movea.l    a3,a0
[0002f140] 4eb9 0005 0330            jsr        $00050330
[0002f146] 4fef 000a                 lea.l      10(a7),a7
[0002f14a] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[0002f14e] 4e75                      rts
edob_resetref:
[0002f150] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0002f154] 594f                      subq.w     #4,a7
[0002f156] 41f9 0010 1f12            lea.l      ACSblk,a0
[0002f15c] 2250                      movea.l    (a0),a1
[0002f15e] 2269 0258                 movea.l    600(a1),a1
[0002f162] 2450                      movea.l    (a0),a2
[0002f164] b3ea 0240                 cmpa.l     576(a2),a1
[0002f168] 6600 00ca                 bne        $0002F234
[0002f16c] 302a 0246                 move.w     582(a2),d0
[0002f170] 6b00 00c2                 bmi        $0002F234
[0002f174] 2251                      movea.l    (a1),a1
[0002f176] 2451                      movea.l    (a1),a2
[0002f178] 006a 0001 0006            ori.w      #$0001,6(a2)
[0002f17e] 2669 0004                 movea.l    4(a1),a3
[0002f182] 2eab 0004                 move.l     4(a3),(a7)
[0002f186] 2250                      movea.l    (a0),a1
[0002f188] 4269 0248                 clr.w      584(a1)
[0002f18c] 47f9 000b cd6a            lea.l      $000BCD6A,a3
[0002f192] 6000 0094                 bra        $0002F228
[0002f196] 78fe                      moveq.l    #-2,d4
[0002f198] d843                      add.w      d3,d4
[0002f19a] 48c4                      ext.l      d4
[0002f19c] 89fc 0003                 divs.w     #$0003,d4
[0002f1a0] 3204                      move.w     d4,d1
[0002f1a2] 48c1                      ext.l      d1
[0002f1a4] 2001                      move.l     d1,d0
[0002f1a6] e788                      lsl.l      #3,d0
[0002f1a8] 9081                      sub.l      d1,d0
[0002f1aa] e788                      lsl.l      #3,d0
[0002f1ac] 2857                      movea.l    (a7),a4
[0002f1ae] d9c0                      adda.l     d0,a4
[0002f1b0] 426c 002a                 clr.w      42(a4)
[0002f1b4] 2414                      move.l     (a4),d2
[0002f1b6] 670c                      beq.s      $0002F1C4
[0002f1b8] 2242                      movea.l    d2,a1
[0002f1ba] 204a                      movea.l    a2,a0
[0002f1bc] 4eb9 0001 61d4            jsr        $000161D4
[0002f1c2] 4294                      clr.l      (a4)
[0002f1c4] 486b 0006                 pea.l      6(a3)
[0002f1c8] 4240                      clr.w      d0
[0002f1ca] 43ec 0004                 lea.l      4(a4),a1
[0002f1ce] 204a                      movea.l    a2,a0
[0002f1d0] 4eb9 0001 3f82            jsr        $00013F82
[0002f1d6] 584f                      addq.w     #4,a7
[0002f1d8] 486b 0006                 pea.l      6(a3)
[0002f1dc] 7001                      moveq.l    #1,d0
[0002f1de] 43ec 0020                 lea.l      32(a4),a1
[0002f1e2] 204a                      movea.l    a2,a0
[0002f1e4] 4eb9 0001 3f82            jsr        $00013F82
[0002f1ea] 584f                      addq.w     #4,a7
[0002f1ec] 486b 0006                 pea.l      6(a3)
[0002f1f0] 7002                      moveq.l    #2,d0
[0002f1f2] 43ec 0024                 lea.l      36(a4),a1
[0002f1f6] 204a                      movea.l    a2,a0
[0002f1f8] 4eb9 0001 3f82            jsr        $00013F82
[0002f1fe] 584f                      addq.w     #4,a7
[0002f200] 486b 0006                 pea.l      6(a3)
[0002f204] 4240                      clr.w      d0
[0002f206] 43ec 002c                 lea.l      44(a4),a1
[0002f20a] 204a                      movea.l    a2,a0
[0002f20c] 4eb9 0001 3f82            jsr        $00013F82
[0002f212] 584f                      addq.w     #4,a7
[0002f214] 486b 0006                 pea.l      6(a3)
[0002f218] 4240                      clr.w      d0
[0002f21a] 43ec 0030                 lea.l      48(a4),a1
[0002f21e] 204a                      movea.l    a2,a0
[0002f220] 4eb9 0001 3f82            jsr        $00013F82
[0002f226] 584f                      addq.w     #4,a7
[0002f228] 4eb9 0004 484c            jsr        $0004484C
[0002f22e] 3600                      move.w     d0,d3
[0002f230] 6a00 ff64                 bpl        $0002F196
[0002f234] 584f                      addq.w     #4,a7
[0002f236] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[0002f23a] 4e75                      rts
oe_beself:
[0002f23c] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0002f240] 4fef fff6                 lea.l      -10(a7),a7
[0002f244] 2449                      movea.l    a1,a2
[0002f246] 3600                      move.w     d0,d3
[0002f248] c07c 0fff                 and.w      #$0FFF,d0
[0002f24c] 48c0                      ext.l      d0
[0002f24e] 2200                      move.l     d0,d1
[0002f250] d281                      add.l      d1,d1
[0002f252] d280                      add.l      d0,d1
[0002f254] e789                      lsl.l      #3,d1
[0002f256] 2672 180c                 movea.l    12(a2,d1.l),a3
[0002f25a] 2e88                      move.l     a0,(a7)
[0002f25c] 43f2 1800                 lea.l      0(a2,d1.l),a1
[0002f260] 2f49 0004                 move.l     a1,4(a7)
[0002f264] 3f43 0008                 move.w     d3,8(a7)
[0002f268] 43d7                      lea.l      (a7),a1
[0002f26a] 246b 0008                 movea.l    8(a3),a2
[0002f26e] 206f 0004                 movea.l    4(a7),a0
[0002f272] 7009                      moveq.l    #9,d0
[0002f274] 4e92                      jsr        (a2)
[0002f276] 4fef 000a                 lea.l      10(a7),a7
[0002f27a] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0002f27e] 4e75                      rts
oe_colsel:
[0002f280] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[0002f284] 514f                      subq.w     #8,a7
[0002f286] 3800                      move.w     d0,d4
[0002f288] 3601                      move.w     d1,d3
[0002f28a] 3a02                      move.w     d2,d5
[0002f28c] 41f9 000b d7f0            lea.l      $000BD7F0,a0
[0002f292] 4eb9 0004 9a5c            jsr        $00049A5C
[0002f298] 2448                      movea.l    a0,a2
[0002f29a] 200a                      move.l     a2,d0
[0002f29c] 6606                      bne.s      $0002F2A4
[0002f29e] 70ff                      moveq.l    #-1,d0
[0002f2a0] 6000 00cc                 bra        $0002F36E
[0002f2a4] 47f9 0010 1f12            lea.l      ACSblk,a3
[0002f2aa] 3003                      move.w     d3,d0
[0002f2ac] 2053                      movea.l    (a3),a0
[0002f2ae] 2268 0258                 movea.l    600(a0),a1
[0002f2b2] 2269 0014                 movea.l    20(a1),a1
[0002f2b6] 41d7                      lea.l      (a7),a0
[0002f2b8] 4eb9 0004 a3be            jsr        $0004A3BE
[0002f2be] 7001                      moveq.l    #1,d0
[0002f2c0] 2053                      movea.l    (a3),a0
[0002f2c2] 2268 0258                 movea.l    600(a0),a1
[0002f2c6] d069 0034                 add.w      52(a1),d0
[0002f2ca] d157                      add.w      d0,(a7)
[0002f2cc] 7201                      moveq.l    #1,d1
[0002f2ce] d269 0036                 add.w      54(a1),d1
[0002f2d2] d36f 0002                 add.w      d1,2(a7)
[0002f2d6] 3004                      move.w     d4,d0
[0002f2d8] d040                      add.w      d0,d0
[0002f2da] 48c0                      ext.l      d0
[0002f2dc] 2400                      move.l     d0,d2
[0002f2de] d482                      add.l      d2,d2
[0002f2e0] d480                      add.l      d0,d2
[0002f2e2] e78a                      lsl.l      #3,d2
[0002f2e4] 0072 0004 2822            ori.w      #$0004,34(a2,d2.l)
[0002f2ea] 322f 0002                 move.w     2(a7),d1
[0002f2ee] 224a                      movea.l    a2,a1
[0002f2f0] 2053                      movea.l    (a3),a0
[0002f2f2] 2068 0258                 movea.l    600(a0),a0
[0002f2f6] 3017                      move.w     (a7),d0
[0002f2f8] 4eb9 0004 948a            jsr        $0004948A
[0002f2fe] 3800                      move.w     d0,d4
[0002f300] 6b62                      bmi.s      $0002F364
[0002f302] 72fe                      moveq.l    #-2,d1
[0002f304] c240                      and.w      d0,d1
[0002f306] 48c1                      ext.l      d1
[0002f308] 83fc 0002                 divs.w     #$0002,d1
[0002f30c] 3801                      move.w     d1,d4
[0002f30e] 48c1                      ext.l      d1
[0002f310] e589                      lsl.l      #2,d1
[0002f312] 41f9 000b e270            lea.l      $000BE270,a0
[0002f318] 2270 1800                 movea.l    0(a0,d1.l),a1
[0002f31c] 3005                      move.w     d5,d0
[0002f31e] 2053                      movea.l    (a3),a0
[0002f320] 2068 025c                 movea.l    604(a0),a0
[0002f324] 4eb9 0004 afe0            jsr        $0004AFE0
[0002f32a] 322f 0020                 move.w     32(a7),d1
[0002f32e] 48c1                      ext.l      d1
[0002f330] 2001                      move.l     d1,d0
[0002f332] d080                      add.l      d0,d0
[0002f334] d081                      add.l      d1,d0
[0002f336] e788                      lsl.l      #3,d0
[0002f338] 2053                      movea.l    (a3),a0
[0002f33a] 2268 025c                 movea.l    604(a0),a1
[0002f33e] 3404                      move.w     d4,d2
[0002f340] 0271 fff0 080e            andi.w     #$FFF0,14(a1,d0.l)
[0002f346] c47c 000f                 and.w      #$000F,d2
[0002f34a] 8571 080e                 or.w       d2,14(a1,d0.l)
[0002f34e] 2053                      movea.l    (a3),a0
[0002f350] 2068 0258                 movea.l    600(a0),a0
[0002f354] 2253                      movea.l    (a3),a1
[0002f356] 2269 0258                 movea.l    600(a1),a1
[0002f35a] 2269 0066                 movea.l    102(a1),a1
[0002f35e] 3003                      move.w     d3,d0
[0002f360] 72ff                      moveq.l    #-1,d1
[0002f362] 4e91                      jsr        (a1)
[0002f364] 204a                      movea.l    a2,a0
[0002f366] 4eb9 0004 9b7c            jsr        $00049B7C
[0002f36c] 3004                      move.w     d4,d0
[0002f36e] 504f                      addq.w     #8,a7
[0002f370] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[0002f374] 4e75                      rts
