Aev_InitPCHelp:
[00058848] 7001                      moveq.l    #1,d0
[0005884a] 4e75                      rts
Aev_ExitPCHelp:
[0005884c] 2039 000d 4c52            move.l     $000D4C52,d0
[00058852] 670c                      beq.s      $00058860
[00058854] 2079 000d 4c52            movea.l    $000D4C52,a0
[0005885a] 4eb9 0004 7fa6            jsr        $00047FA6
[00058860] 42b9 000d 4c52            clr.l      $000D4C52
[00058866] 42b9 000d 4c58            clr.l      $000D4C58
[0005886c] 7001                      moveq.l    #1,d0
[0005886e] 4e75                      rts
FindPCHelp:
[00058870] 5d4f                      subq.w     #6,a7
[00058872] 2f48 0002                 move.l     a0,2(a7)
[00058876] 202f 0002                 move.l     2(a7),d0
[0005887a] 6734                      beq.s      $000588B0
[0005887c] 206f 0002                 movea.l    2(a7),a0
[00058880] 1010                      move.b     (a0),d0
[00058882] 672c                      beq.s      $000588B0
[00058884] 2279 000d 99d6            movea.l    $000D99D6,a1
[0005888a] 206f 0002                 movea.l    2(a7),a0
[0005888e] 4eb9 0006 a886            jsr        $0006A886
[00058894] 3e80                      move.w     d0,(a7)
[00058896] 7008                      moveq.l    #8,d0
[00058898] 226f 0002                 movea.l    2(a7),a1
[0005889c] 41f9 000d 4c5c            lea.l      $000D4C5C,a0
[000588a2] 4eb9 0007 6a1a            jsr        $00076A1A
[000588a8] 4239 000d 4c65            clr.b      $000D4C65
[000588ae] 6004                      bra.s      $000588B4
[000588b0] 3ebc ffff                 move.w     #$FFFF,(a7)
[000588b4] 3017                      move.w     (a7),d0
[000588b6] 6a2e                      bpl.s      $000588E6
[000588b8] 2279 000d 99d6            movea.l    $000D99D6,a1
[000588be] 41f9 000d 4c66            lea.l      $000D4C66,a0
[000588c4] 4eb9 0006 a886            jsr        $0006A886
[000588ca] 3e80                      move.w     d0,(a7)
[000588cc] 7008                      moveq.l    #8,d0
[000588ce] 43f9 000d 4c6f            lea.l      $000D4C6F,a1
[000588d4] 41f9 000d 4c5c            lea.l      $000D4C5C,a0
[000588da] 4eb9 0007 6a1a            jsr        $00076A1A
[000588e0] 4239 000d 4c65            clr.b      $000D4C65
[000588e6] 3017                      move.w     (a7),d0
[000588e8] 6a2e                      bpl.s      $00058918
[000588ea] 2279 000d 99d6            movea.l    $000D99D6,a1
[000588f0] 41f9 000d 4c78            lea.l      $000D4C78,a0
[000588f6] 4eb9 0006 a886            jsr        $0006A886
[000588fc] 3e80                      move.w     d0,(a7)
[000588fe] 7008                      moveq.l    #8,d0
[00058900] 43f9 000d 4c81            lea.l      $000D4C81,a1
[00058906] 41f9 000d 4c5c            lea.l      $000D4C5C,a0
[0005890c] 4eb9 0007 6a1a            jsr        $00076A1A
[00058912] 4239 000d 4c65            clr.b      $000D4C65
[00058918] 3017                      move.w     (a7),d0
[0005891a] 6a06                      bpl.s      $00058922
[0005891c] 4239 000d 4c5c            clr.b      $000D4C5C
[00058922] 3017                      move.w     (a7),d0
[00058924] 5c4f                      addq.w     #6,a7
[00058926] 4e75                      rts
CheckPcHelp:
[00058928] 594f                      subq.w     #4,a7
[0005892a] 2e88                      move.l     a0,(a7)
[0005892c] 2057                      movea.l    (a7),a0
[0005892e] b1f9 000d 4c58            cmpa.l     $000D4C58,a0
[00058934] 6606                      bne.s      $0005893C
[00058936] 42b9 000d 4c58            clr.l      $000D4C58
[0005893c] 584f                      addq.w     #4,a7
[0005893e] 4e75                      rts
SendMeldung:
[00058940] 2f0a                      move.l     a2,-(a7)
[00058942] 554f                      subq.w     #2,a7
[00058944] 3e80                      move.w     d0,(a7)
[00058946] 2039 000d 4c58            move.l     $000D4C58,d0
[0005894c] 672c                      beq.s      $0005897A
[0005894e] 3017                      move.w     (a7),d0
[00058950] 6606                      bne.s      $00058958
[00058952] 4279 000d 4c56            clr.w      $000D4C56
[00058958] 43f9 000d 4c56            lea.l      $000D4C56,a1
[0005895e] 303c 0192                 move.w     #$0192,d0
[00058962] 2079 000d 4c58            movea.l    $000D4C58,a0
[00058968] 2479 000d 4c58            movea.l    $000D4C58,a2
[0005896e] 246a 0004                 movea.l    4(a2),a2
[00058972] 4e92                      jsr        (a2)
[00058974] 42b9 000d 4c58            clr.l      $000D4C58
[0005897a] 544f                      addq.w     #2,a7
[0005897c] 245f                      movea.l    (a7)+,a2
[0005897e] 4e75                      rts
Aev_GetAcReply:
[00058980] 514f                      subq.w     #8,a7
[00058982] 2f48 0004                 move.l     a0,4(a7)
[00058986] 206f 0004                 movea.l    4(a7),a0
[0005898a] 2e90                      move.l     (a0),(a7)
[0005898c] 2057                      movea.l    (a7),a0
[0005898e] 3028 0004                 move.w     4(a0),d0
[00058992] 6f54                      ble.s      $000589E8
[00058994] 2057                      movea.l    (a7),a0
[00058996] 2f08                      move.l     a0,-(a7)
[00058998] 2279 000d 99d6            movea.l    $000D99D6,a1
[0005899e] 41f9 000d 4c5c            lea.l      $000D4C5C,a0
[000589a4] 4eb9 0006 a886            jsr        $0006A886
[000589aa] 205f                      movea.l    (a7)+,a0
[000589ac] b068 0002                 cmp.w      2(a0),d0
[000589b0] 6636                      bne.s      $000589E8
[000589b2] 2057                      movea.l    (a7),a0
[000589b4] 33e8 0004 000d 4c56       move.w     4(a0),$000D4C56
[000589bc] 7001                      moveq.l    #1,d0
[000589be] 6100 ff80                 bsr.w      $00058940
[000589c2] 2039 000d 4c52            move.l     $000D4C52,d0
[000589c8] 670c                      beq.s      $000589D6
[000589ca] 2079 000d 4c52            movea.l    $000D4C52,a0
[000589d0] 4eb9 0004 7fa6            jsr        $00047FA6
[000589d6] 42b9 000d 4c52            clr.l      $000D4C52
[000589dc] 4239 000d 4c5c            clr.b      $000D4C5C
[000589e2] 7001                      moveq.l    #1,d0
[000589e4] 6004                      bra.s      $000589EA
[000589e6] 4e71                      nop
[000589e8] 4240                      clr.w      d0
[000589ea] 504f                      addq.w     #8,a7
[000589ec] 4e75                      rts
Aev_AcHelp:
[000589ee] 4fef ffe6                 lea.l      -26(a7),a7
[000589f2] 2f48 0016                 move.l     a0,22(a7)
[000589f6] 2f49 0012                 move.l     a1,18(a7)
[000589fa] 206f 0016                 movea.l    22(a7),a0
[000589fe] 6100 fe70                 bsr        $00058870
[00058a02] 3f40 0010                 move.w     d0,16(a7)
[00058a06] 302f 0010                 move.w     16(a7),d0
[00058a0a] 6b00 00a0                 bmi        $00058AAC
[00058a0e] 2079 0010 1f12            movea.l    ACSblk,a0
[00058a14] 302f 0010                 move.w     16(a7),d0
[00058a18] b050                      cmp.w      (a0),d0
[00058a1a] 6700 0090                 beq        $00058AAC
[00058a1e] 4240                      clr.w      d0
[00058a20] 6100 ff1e                 bsr        $00058940
[00058a24] 2039 000d 4c52            move.l     $000D4C52,d0
[00058a2a] 670c                      beq.s      $00058A38
[00058a2c] 2079 000d 4c52            movea.l    $000D4C52,a0
[00058a32] 4eb9 0004 7fa6            jsr        $00047FA6
[00058a38] 7001                      moveq.l    #1,d0
[00058a3a] 206f 0012                 movea.l    18(a7),a0
[00058a3e] 4eb9 0004 41b4            jsr        $000441B4
[00058a44] 23c8 000d 4c52            move.l     a0,$000D4C52
[00058a4a] 2079 000d 4c52            movea.l    $000D4C52,a0
[00058a50] 4eb9 0004 3a92            jsr        $00043A92
[00058a56] 4a40                      tst.w      d0
[00058a58] 6704                      beq.s      $00058A5E
[00058a5a] 4240                      clr.w      d0
[00058a5c] 6050                      bra.s      $00058AAE
[00058a5e] 3ebc 0401                 move.w     #$0401,(a7)
[00058a62] 2079 0010 1f12            movea.l    ACSblk,a0
[00058a68] 3f50 0002                 move.w     (a0),2(a7)
[00058a6c] 426f 0004                 clr.w      4(a7)
[00058a70] 426f 000a                 clr.w      10(a7)
[00058a74] 426f 000c                 clr.w      12(a7)
[00058a78] 426f 000e                 clr.w      14(a7)
[00058a7c] 2f79 000d 4c52 0006       move.l     $000D4C52,6(a7)
[00058a84] 23ef 001e 000d 4c58       move.l     30(a7),$000D4C58
[00058a8c] 2279 000d 99d6            movea.l    $000D99D6,a1
[00058a92] 41d7                      lea.l      (a7),a0
[00058a94] 7210                      moveq.l    #16,d1
[00058a96] 302f 0010                 move.w     16(a7),d0
[00058a9a] 4eb9 0006 a818            jsr        $0006A818
[00058aa0] 4a40                      tst.w      d0
[00058aa2] 6704                      beq.s      $00058AA8
[00058aa4] 7001                      moveq.l    #1,d0
[00058aa6] 6002                      bra.s      $00058AAA
[00058aa8] 4240                      clr.w      d0
[00058aaa] 6002                      bra.s      $00058AAE
[00058aac] 4240                      clr.w      d0
[00058aae] 4fef 001a                 lea.l      26(a7),a7
[00058ab2] 4e75                      rts
