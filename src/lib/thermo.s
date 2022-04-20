Ash_thermometer:
[00052950] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[00052954] 594f                      subq.w     #4,a7
[00052956] 3600                      move.w     d0,d3
[00052958] 2848                      movea.l    a0,a4
[0005295a] 3801                      move.w     d1,d4
[0005295c] 2e89                      move.l     a1,(a7)
[0005295e] 2a6f 0028                 movea.l    40(a7),a5
[00052962] 266f 0030                 movea.l    48(a7),a3
[00052966] 7072                      moveq.l    #114,d0
[00052968] 4eb9 0004 7cc8            jsr        Ax_malloc
[0005296e] 2448                      movea.l    a0,a2
[00052970] 200a                      move.l     a2,d0
[00052972] 6606                      bne.s      $0005297A
[00052974] 70ff                      moveq.l    #-1,d0
[00052976] 6000 00f6                 bra        $00052A6E
[0005297a] 7272                      moveq.l    #114,d1
[0005297c] 4240                      clr.w      d0
[0005297e] 204a                      movea.l    a2,a0
[00052980] 4eb9 0007 712e            jsr        $0007712E
[00052986] 2557 0040                 move.l     (a7),64(a2)
[0005298a] 256f 0024 0044            move.l     36(a7),68(a2)
[00052990] 254d 0048                 move.l     a5,72(a2)
[00052994] 256f 002c 004c            move.l     44(a7),76(a2)
[0005299a] 254b 0050                 move.l     a3,80(a2)
[0005299e] 256f 0034 0054            move.l     52(a7),84(a2)
[000529a4] 256f 0038 0058            move.l     56(a7),88(a2)
[000529aa] 3543 0064                 move.w     d3,100(a2)
[000529ae] 254c 005c                 move.l     a4,92(a2)
[000529b2] 3544 0066                 move.w     d4,102(a2)
[000529b6] 204a                      movea.l    a2,a0
[000529b8] 2279 000d 4434            movea.l    $000D4434,a1
[000529be] 4e91                      jsr        (a1)
[000529c0] 2848                      movea.l    a0,a4
[000529c2] 200c                      move.l     a4,d0
[000529c4] 6750                      beq.s      $00052A16
[000529c6] 7208                      moveq.l    #8,d1
[000529c8] c243                      and.w      d3,d1
[000529ca] 670c                      beq.s      $000529D8
[000529cc] 226c 000c                 movea.l    12(a4),a1
[000529d0] 4e91                      jsr        (a1)
[000529d2] 7802                      moveq.l    #2,d4
[000529d4] 6000 0096                 bra        $00052A6C
[000529d8] 2079 0010 1f12            movea.l    ACSblk,a0
[000529de] 2568 0232 006a            move.l     562(a0),106(a2)
[000529e4] 2079 0010 1f12            movea.l    ACSblk,a0
[000529ea] 217c 0000 0001 0232       move.l     #$00000001,562(a0)
[000529f2] 204c                      movea.l    a4,a0
[000529f4] 4eb9 0005 1292            jsr        $00051292
[000529fa] 3800                      move.w     d0,d4
[000529fc] 93c9                      suba.l     a1,a1
[000529fe] 204c                      movea.l    a4,a0
[00052a00] 2c6c 0004                 movea.l    4(a4),a6
[00052a04] 7002                      moveq.l    #2,d0
[00052a06] 4e96                      jsr        (a6)
[00052a08] 2079 0010 1f12            movea.l    ACSblk,a0
[00052a0e] 216a 006a 0232            move.l     106(a2),562(a0)
[00052a14] 604c                      bra.s      $00052A62
[00052a16] 202f 0024                 move.l     36(a7),d0
[00052a1a] 6706                      beq.s      $00052A22
[00052a1c] 204a                      movea.l    a2,a0
[00052a1e] 2240                      movea.l    d0,a1
[00052a20] 4e91                      jsr        (a1)
[00052a22] 200d                      move.l     a5,d0
[00052a24] 6708                      beq.s      $00052A2E
[00052a26] 204a                      movea.l    a2,a0
[00052a28] 4e95                      jsr        (a5)
[00052a2a] 4a40                      tst.w      d0
[00052a2c] 6728                      beq.s      $00052A56
[00052a2e] 202f 002c                 move.l     44(a7),d0
[00052a32] 6716                      beq.s      $00052A4A
[00052a34] 6008                      bra.s      $00052A3E
[00052a36] 200b                      move.l     a3,d0
[00052a38] 6704                      beq.s      $00052A3E
[00052a3a] 204a                      movea.l    a2,a0
[00052a3c] 4e93                      jsr        (a3)
[00052a3e] 204a                      movea.l    a2,a0
[00052a40] 226f 002c                 movea.l    44(a7),a1
[00052a44] 4e91                      jsr        (a1)
[00052a46] 4a40                      tst.w      d0
[00052a48] 66ec                      bne.s      $00052A36
[00052a4a] 202f 0034                 move.l     52(a7),d0
[00052a4e] 6706                      beq.s      $00052A56
[00052a50] 204a                      movea.l    a2,a0
[00052a52] 2240                      movea.l    d0,a1
[00052a54] 4e91                      jsr        (a1)
[00052a56] 202f 0038                 move.l     56(a7),d0
[00052a5a] 6706                      beq.s      $00052A62
[00052a5c] 204a                      movea.l    a2,a0
[00052a5e] 2240                      movea.l    d0,a1
[00052a60] 4e91                      jsr        (a1)
[00052a62] 7072                      moveq.l    #114,d0
[00052a64] 204a                      movea.l    a2,a0
[00052a66] 4eb9 0004 8140            jsr        $00048140
[00052a6c] 3004                      move.w     d4,d0
[00052a6e] 584f                      addq.w     #4,a7
[00052a70] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[00052a74] 4e75                      rts
Prozent:
[00052a76] 48e7 1c3e                 movem.l    d3-d5/a2-a6,-(a7)
[00052a7a] 2448                      movea.l    a0,a2
[00052a7c] 2800                      move.l     d0,d4
[00052a7e] 2650                      movea.l    (a0),a3
[00052a80] 49f9 000d 44e6            lea.l      $000D44E6,a4
[00052a86] 322b 0062                 move.w     98(a3),d1
[00052a8a] d241                      add.w      d1,d1
[00052a8c] 3434 1000                 move.w     0(a4,d1.w),d2
[00052a90] 48c2                      ext.l      d2
[00052a92] 2002                      move.l     d2,d0
[00052a94] d080                      add.l      d0,d0
[00052a96] d082                      add.l      d2,d0
[00052a98] e788                      lsl.l      #3,d0
[00052a9a] 2a6a 0014                 movea.l    20(a2),a5
[00052a9e] dbc0                      adda.l     d0,a5
[00052aa0] 3434 1008                 move.w     8(a4,d1.w),d2
[00052aa4] 48c2                      ext.l      d2
[00052aa6] 2002                      move.l     d2,d0
[00052aa8] d080                      add.l      d0,d0
[00052aaa] d082                      add.l      d2,d0
[00052aac] e788                      lsl.l      #3,d0
[00052aae] 2c6a 0014                 movea.l    20(a2),a6
[00052ab2] ddc0                      adda.l     d0,a6
[00052ab4] 4243                      clr.w      d3
[00052ab6] 302e 0014                 move.w     20(a6),d0
[00052aba] 48c0                      ext.l      d0
[00052abc] 2204                      move.l     d4,d1
[00052abe] 4eb9 0007 76f0            jsr        $000776F0
[00052ac4] 2a00                      move.l     d0,d5
[00052ac6] 700c                      moveq.l    #12,d0
[00052ac8] e0a5                      asr.l      d0,d5
[00052aca] 4df9 0010 1f12            lea.l      ACSblk,a6
[00052ad0] ba6d 0014                 cmp.w      20(a5),d5
[00052ad4] 6e04                      bgt.s      $00052ADA
[00052ad6] 4a45                      tst.w      d5
[00052ad8] 6630                      bne.s      $00052B0A
[00052ada] 3b45 0014                 move.w     d5,20(a5)
[00052ade] 2056                      movea.l    (a6),a0
[00052ae0] 216a 0014 025c            move.l     20(a2),604(a0)
[00052ae6] 302b 0062                 move.w     98(a3),d0
[00052aea] d040                      add.w      d0,d0
[00052aec] 2056                      movea.l    (a6),a0
[00052aee] 3174 0000 0260            move.w     0(a4,d0.w),608(a0)
[00052af4] 72ff                      moveq.l    #-1,d1
[00052af6] 342b 0062                 move.w     98(a3),d2
[00052afa] d442                      add.w      d2,d2
[00052afc] 3034 2000                 move.w     0(a4,d2.w),d0
[00052b00] 204a                      movea.l    a2,a0
[00052b02] 4eb9 0004 b600            jsr        $0004B600
[00052b08] 7601                      moveq.l    #1,d3
[00052b0a] 7004                      moveq.l    #4,d0
[00052b0c] c06b 0064                 and.w      100(a3),d0
[00052b10] 6772                      beq.s      $00052B84
[00052b12] 2a04                      move.l     d4,d5
[00052b14] da85                      add.l      d5,d5
[00052b16] da84                      add.l      d4,d5
[00052b18] e78d                      lsl.l      #3,d5
[00052b1a] da84                      add.l      d4,d5
[00052b1c] e58d                      lsl.l      #2,d5
[00052b1e] 720c                      moveq.l    #12,d1
[00052b20] e2a5                      asr.l      d1,d5
[00052b22] 4a43                      tst.w      d3
[00052b24] 660a                      bne.s      $00052B30
[00052b26] ba6b 0060                 cmp.w      96(a3),d5
[00052b2a] 6e04                      bgt.s      $00052B30
[00052b2c] 4a45                      tst.w      d5
[00052b2e] 6654                      bne.s      $00052B84
[00052b30] ba6b 0060                 cmp.w      96(a3),d5
[00052b34] 6e04                      bgt.s      $00052B3A
[00052b36] 4a45                      tst.w      d5
[00052b38] 6604                      bne.s      $00052B3E
[00052b3a] 3745 0060                 move.w     d5,96(a3)
[00052b3e] 3f05                      move.w     d5,-(a7)
[00052b40] 43f9 000d 44fe            lea.l      $000D44FE,a1
[00052b46] 322b 0062                 move.w     98(a3),d1
[00052b4a] d241                      add.w      d1,d1
[00052b4c] 3034 1010                 move.w     16(a4,d1.w),d0
[00052b50] 206a 0014                 movea.l    20(a2),a0
[00052b54] 4eb9 0004 afac            jsr        $0004AFAC
[00052b5a] 544f                      addq.w     #2,a7
[00052b5c] 2056                      movea.l    (a6),a0
[00052b5e] 216a 0014 025c            move.l     20(a2),604(a0)
[00052b64] 302b 0062                 move.w     98(a3),d0
[00052b68] d040                      add.w      d0,d0
[00052b6a] 2056                      movea.l    (a6),a0
[00052b6c] 3174 0010 0260            move.w     16(a4,d0.w),608(a0)
[00052b72] 322b 0062                 move.w     98(a3),d1
[00052b76] d241                      add.w      d1,d1
[00052b78] 3034 1010                 move.w     16(a4,d1.w),d0
[00052b7c] 204a                      movea.l    a2,a0
[00052b7e] 4eb9 0004 b846            jsr        $0004B846
[00052b84] 4cdf 7c38                 movem.l    (a7)+,d3-d5/a2-a6
[00052b88] 4e75                      rts
TextUpdate:
[00052b8a] 48e7 003c                 movem.l    a2-a5,-(a7)
[00052b8e] 2448                      movea.l    a0,a2
[00052b90] 2849                      movea.l    a1,a4
[00052b92] 2650                      movea.l    (a0),a3
[00052b94] 7001                      moveq.l    #1,d0
[00052b96] c06b 0064                 and.w      100(a3),d0
[00052b9a] 674c                      beq.s      $00052BE8
[00052b9c] 4bf9 000d 44de            lea.l      $000D44DE,a5
[00052ba2] 224c                      movea.l    a4,a1
[00052ba4] 322b 0062                 move.w     98(a3),d1
[00052ba8] d241                      add.w      d1,d1
[00052baa] 3035 1000                 move.w     0(a5,d1.w),d0
[00052bae] 206a 0014                 movea.l    20(a2),a0
[00052bb2] 4eb9 0004 afe0            jsr        $0004AFE0
[00052bb8] 2079 0010 1f12            movea.l    ACSblk,a0
[00052bbe] 216a 0014 025c            move.l     20(a2),604(a0)
[00052bc4] 302b 0062                 move.w     98(a3),d0
[00052bc8] d040                      add.w      d0,d0
[00052bca] 2079 0010 1f12            movea.l    ACSblk,a0
[00052bd0] 3175 0000 0260            move.w     0(a5,d0.w),608(a0)
[00052bd6] 322b 0062                 move.w     98(a3),d1
[00052bda] d241                      add.w      d1,d1
[00052bdc] 3035 1000                 move.w     0(a5,d1.w),d0
[00052be0] 204a                      movea.l    a2,a0
[00052be2] 4eb9 0004 b846            jsr        $0004B846
[00052be8] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00052bec] 4e75                      rts
ThermoCreate:
[00052bee] 48e7 003c                 movem.l    a2-a5,-(a7)
[00052bf2] 554f                      subq.w     #2,a7
[00052bf4] 2448                      movea.l    a0,a2
[00052bf6] 47f9 000d 442c            lea.l      $000D442C,a3
[00052bfc] 200a                      move.l     a2,d0
[00052bfe] 672a                      beq.s      $00052C2A
[00052c00] 7203                      moveq.l    #3,d1
[00052c02] c26a 0064                 and.w      100(a2),d1
[00052c06] 3541 0062                 move.w     d1,98(a2)
[00052c0a] e549                      lsl.w      #2,d1
[00052c0c] 41eb 00a2                 lea.l      162(a3),a0
[00052c10] 2770 1000 0014            move.l     0(a0,d1.w),20(a3)
[00052c16] 276a 005c 004a            move.l     92(a2),74(a3)
[00052c1c] 204b                      movea.l    a3,a0
[00052c1e] 4eb9 0004 f41a            jsr        $0004F41A
[00052c24] 2848                      movea.l    a0,a4
[00052c26] 200c                      move.l     a4,d0
[00052c28] 6606                      bne.s      $00052C30
[00052c2a] 91c8                      suba.l     a0,a0
[00052c2c] 6000 015c                 bra        $00052D8A
[00052c30] 206c 0014                 movea.l    20(a4),a0
[00052c34] 3968 0014 0038            move.w     20(a0),56(a4)
[00052c3a] 206c 0014                 movea.l    20(a4),a0
[00052c3e] 3968 0016 003a            move.w     22(a0),58(a4)
[00052c44] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[00052c4a] 486c 002a                 pea.l      42(a4)
[00052c4e] 486c 0028                 pea.l      40(a4)
[00052c52] 3f2c 003a                 move.w     58(a4),-(a7)
[00052c56] 3f2c 0038                 move.w     56(a4),-(a7)
[00052c5a] 3f2c 0036                 move.w     54(a4),-(a7)
[00052c5e] 43ef 0012                 lea.l      18(a7),a1
[00052c62] 41ef 0012                 lea.l      18(a7),a0
[00052c66] 342c 0034                 move.w     52(a4),d2
[00052c6a] 322c 0022                 move.w     34(a4),d1
[00052c6e] 4240                      clr.w      d0
[00052c70] 4eb9 0006 d60a            jsr        $0006D60A
[00052c76] 4fef 0012                 lea.l      18(a7),a7
[00052c7a] 288a                      move.l     a2,(a4)
[00052c7c] 254c 006e                 move.l     a4,110(a2)
[00052c80] 24bc ffff ffff            move.l     #$FFFFFFFF,(a2)
[00052c86] 42aa 0004                 clr.l      4(a2)
[00052c8a] 42aa 0008                 clr.l      8(a2)
[00052c8e] 322a 0062                 move.w     98(a2),d1
[00052c92] d241                      add.w      d1,d1
[00052c94] 41eb 00ba                 lea.l      186(a3),a0
[00052c98] 3430 1000                 move.w     0(a0,d1.w),d2
[00052c9c] 48c2                      ext.l      d2
[00052c9e] 2002                      move.l     d2,d0
[00052ca0] d080                      add.l      d0,d0
[00052ca2] d082                      add.l      d2,d0
[00052ca4] e788                      lsl.l      #3,d0
[00052ca6] 226c 0014                 movea.l    20(a4),a1
[00052caa] 4271 0814                 clr.w      20(a1,d0.l)
[00052cae] 7000                      moveq.l    #0,d0
[00052cb0] 204c                      movea.l    a4,a0
[00052cb2] 6100 fdc2                 bsr        $00052A76
[00052cb6] 302a 0066                 move.w     102(a2),d0
[00052cba] 6b56                      bmi.s      $00052D12
[00052cbc] 2079 0010 1f12            movea.l    ACSblk,a0
[00052cc2] 0c68 0010 001a            cmpi.w     #$0010,26(a0)
[00052cc8] 6d48                      blt.s      $00052D12
[00052cca] 2268 023c                 movea.l    572(a0),a1
[00052cce] 3229 000e                 move.w     14(a1),d1
[00052cd2] c27c 0100                 and.w      #$0100,d1
[00052cd6] 663a                      bne.s      $00052D12
[00052cd8] 302a 0062                 move.w     98(a2),d0
[00052cdc] d040                      add.w      d0,d0
[00052cde] 41eb 00ba                 lea.l      186(a3),a0
[00052ce2] 3230 0000                 move.w     0(a0,d0.w),d1
[00052ce6] 48c1                      ext.l      d1
[00052ce8] 2401                      move.l     d1,d2
[00052cea] d482                      add.l      d2,d2
[00052cec] d481                      add.l      d1,d2
[00052cee] e78a                      lsl.l      #3,d2
[00052cf0] 226c 0014                 movea.l    20(a4),a1
[00052cf4] 2071 280c                 movea.l    12(a1,d2.l),a0
[00052cf8] 02a8 ffff ff80 0004       andi.l     #$FFFFFF80,4(a0)
[00052d00] 700f                      moveq.l    #15,d0
[00052d02] c06a 0066                 and.w      102(a2),d0
[00052d06] 48c0                      ext.l      d0
[00052d08] 80bc 0000 0070            or.l       #$00000070,d0
[00052d0e] 81a8 0004                 or.l       d0,4(a0)
[00052d12] 2012                      move.l     (a2),d0
[00052d14] 6a1c                      bpl.s      $00052D32
[00052d16] 222a 0044                 move.l     68(a2),d1
[00052d1a] 6716                      beq.s      $00052D32
[00052d1c] 204a                      movea.l    a2,a0
[00052d1e] 2241                      movea.l    d1,a1
[00052d20] 4e91                      jsr        (a1)
[00052d22] 4a40                      tst.w      d0
[00052d24] 660c                      bne.s      $00052D32
[00052d26] 93c9                      suba.l     a1,a1
[00052d28] 7002                      moveq.l    #2,d0
[00052d2a] 204c                      movea.l    a4,a0
[00052d2c] 2a6c 0004                 movea.l    4(a4),a5
[00052d30] 4e95                      jsr        (a5)
[00052d32] 7001                      moveq.l    #1,d0
[00052d34] c06a 0064                 and.w      100(a2),d0
[00052d38] 671c                      beq.s      $00052D56
[00052d3a] 43ea 000c                 lea.l      12(a2),a1
[00052d3e] 322a 0062                 move.w     98(a2),d1
[00052d42] d241                      add.w      d1,d1
[00052d44] 41eb 00b2                 lea.l      178(a3),a0
[00052d48] 3030 1000                 move.w     0(a0,d1.w),d0
[00052d4c] 206c 0014                 movea.l    20(a4),a0
[00052d50] 4eb9 0004 afe0            jsr        $0004AFE0
[00052d56] 7004                      moveq.l    #4,d0
[00052d58] c06a 0064                 and.w      100(a2),d0
[00052d5c] 6604                      bne.s      $00052D62
[00052d5e] 7401                      moveq.l    #1,d2
[00052d60] 6002                      bra.s      $00052D64
[00052d62] 4242                      clr.w      d2
[00052d64] 323c 0080                 move.w     #$0080,d1
[00052d68] 302a 0062                 move.w     98(a2),d0
[00052d6c] d040                      add.w      d0,d0
[00052d6e] 41eb 00ca                 lea.l      202(a3),a0
[00052d72] 3030 0000                 move.w     0(a0,d0.w),d0
[00052d76] 204c                      movea.l    a4,a0
[00052d78] 4eb9 0004 d65e            jsr        $0004D65E
[00052d7e] 006c 0024 0056            ori.w      #$0024,86(a4)
[00052d84] 426a 0068                 clr.w      104(a2)
[00052d88] 204c                      movea.l    a4,a0
[00052d8a] 544f                      addq.w     #2,a7
[00052d8c] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00052d90] 4e75                      rts
ThermoService:
[00052d92] 48e7 0038                 movem.l    a2-a4,-(a7)
[00052d96] 2448                      movea.l    a0,a2
[00052d98] 2650                      movea.l    (a0),a3
[00052d9a] 3200                      move.w     d0,d1
[00052d9c] 5541                      subq.w     #2,d1
[00052d9e] 6704                      beq.s      $00052DA4
[00052da0] 6000 00a8                 bra        $00052E4A
[00052da4] 302a 0056                 move.w     86(a2),d0
[00052da8] c07c 0200                 and.w      #$0200,d0
[00052dac] 6600 0098                 bne        $00052E46
[00052db0] 006a 0200 0056            ori.w      #$0200,86(a2)
[00052db6] 026a ffdf 0056            andi.w     #$FFDF,86(a2)
[00052dbc] 49f9 0010 1f12            lea.l      ACSblk,a4
[00052dc2] 302b 0068                 move.w     104(a3),d0
[00052dc6] 6730                      beq.s      $00052DF8
[00052dc8] 222b 0054                 move.l     84(a3),d1
[00052dcc] 672a                      beq.s      $00052DF8
[00052dce] 7408                      moveq.l    #8,d2
[00052dd0] c46b 0064                 and.w      100(a3),d2
[00052dd4] 6608                      bne.s      $00052DDE
[00052dd6] 2054                      movea.l    (a4),a0
[00052dd8] 216b 006a 0232            move.l     106(a3),562(a0)
[00052dde] 204b                      movea.l    a3,a0
[00052de0] 226b 0054                 movea.l    84(a3),a1
[00052de4] 4e91                      jsr        (a1)
[00052de6] 7008                      moveq.l    #8,d0
[00052de8] c06b 0064                 and.w      100(a3),d0
[00052dec] 660a                      bne.s      $00052DF8
[00052dee] 2054                      movea.l    (a4),a0
[00052df0] 217c 0000 0001 0232       move.l     #$00000001,562(a0)
[00052df8] 204a                      movea.l    a2,a0
[00052dfa] 4eb9 0005 0330            jsr        $00050330
[00052e00] 42ab 006e                 clr.l      110(a3)
[00052e04] 202b 0058                 move.l     88(a3),d0
[00052e08] 672a                      beq.s      $00052E34
[00052e0a] 7208                      moveq.l    #8,d1
[00052e0c] c26b 0064                 and.w      100(a3),d1
[00052e10] 6608                      bne.s      $00052E1A
[00052e12] 2054                      movea.l    (a4),a0
[00052e14] 216b 006a 0232            move.l     106(a3),562(a0)
[00052e1a] 204b                      movea.l    a3,a0
[00052e1c] 226b 0058                 movea.l    88(a3),a1
[00052e20] 4e91                      jsr        (a1)
[00052e22] 7008                      moveq.l    #8,d0
[00052e24] c06b 0064                 and.w      100(a3),d0
[00052e28] 660a                      bne.s      $00052E34
[00052e2a] 2054                      movea.l    (a4),a0
[00052e2c] 217c 0000 0001 0232       move.l     #$00000001,562(a0)
[00052e34] 7008                      moveq.l    #8,d0
[00052e36] c06b 0064                 and.w      100(a3),d0
[00052e3a] 670a                      beq.s      $00052E46
[00052e3c] 204b                      movea.l    a3,a0
[00052e3e] 7072                      moveq.l    #114,d0
[00052e40] 4eb9 0004 8140            jsr        $00048140
[00052e46] 7001                      moveq.l    #1,d0
[00052e48] 6002                      bra.s      $00052E4C
[00052e4a] 4240                      clr.w      d0
[00052e4c] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00052e50] 4e75                      rts
ThermoInit:
[00052e52] 48e7 1e38                 movem.l    d3-d6/a2-a4,-(a7)
[00052e56] 2448                      movea.l    a0,a2
[00052e58] 2650                      movea.l    (a0),a3
[00052e5a] 7601                      moveq.l    #1,d3
[00052e5c] 49f9 0010 1f12            lea.l      ACSblk,a4
[00052e62] 302b 0068                 move.w     104(a3),d0
[00052e66] 6700 00c6                 beq        $00052F2E
[00052e6a] 7208                      moveq.l    #8,d1
[00052e6c] c26b 0064                 and.w      100(a3),d1
[00052e70] 6608                      bne.s      $00052E7A
[00052e72] 2054                      movea.l    (a4),a0
[00052e74] 216b 006a 0232            move.l     106(a3),562(a0)
[00052e7a] 026a ffdf 0056            andi.w     #$FFDF,86(a2)
[00052e80] 202b 004c                 move.l     76(a3),d0
[00052e84] 670e                      beq.s      $00052E94
[00052e86] 204b                      movea.l    a3,a0
[00052e88] 2240                      movea.l    d0,a1
[00052e8a] 4e91                      jsr        (a1)
[00052e8c] 4a40                      tst.w      d0
[00052e8e] 6704                      beq.s      $00052E94
[00052e90] 7601                      moveq.l    #1,d3
[00052e92] 6002                      bra.s      $00052E96
[00052e94] 4243                      clr.w      d3
[00052e96] 43eb 000c                 lea.l      12(a3),a1
[00052e9a] 204a                      movea.l    a2,a0
[00052e9c] 6100 fcec                 bsr        $00052B8A
[00052ea0] 4a43                      tst.w      d3
[00052ea2] 670c                      beq.s      $00052EB0
[00052ea4] 202b 0050                 move.l     80(a3),d0
[00052ea8] 6706                      beq.s      $00052EB0
[00052eaa] 204b                      movea.l    a3,a0
[00052eac] 2240                      movea.l    d0,a1
[00052eae] 4e91                      jsr        (a1)
[00052eb0] 5293                      addq.l     #1,(a3)
[00052eb2] 7008                      moveq.l    #8,d0
[00052eb4] c06b 0064                 and.w      100(a3),d0
[00052eb8] 660a                      bne.s      $00052EC4
[00052eba] 2054                      movea.l    (a4),a0
[00052ebc] 217c 0000 0001 0232       move.l     #$00000001,562(a0)
[00052ec4] 4a43                      tst.w      d3
[00052ec6] 6742                      beq.s      $00052F0A
[00052ec8] 202b 0008                 move.l     8(a3),d0
[00052ecc] 673c                      beq.s      $00052F0A
[00052ece] 282b 0004                 move.l     4(a3),d4
[00052ed2] c8bc fff0 0000            and.l      #$FFF00000,d4
[00052ed8] 2a2b 0004                 move.l     4(a3),d5
[00052edc] cabc 000f ffff            and.l      #$000FFFFF,d5
[00052ee2] 2005                      move.l     d5,d0
[00052ee4] 720c                      moveq.l    #12,d1
[00052ee6] e3a8                      lsl.l      d1,d0
[00052ee8] 222b 0008                 move.l     8(a3),d1
[00052eec] 4eb9 0007 769e            jsr        $0007769E
[00052ef2] 2f00                      move.l     d0,-(a7)
[00052ef4] 2004                      move.l     d4,d0
[00052ef6] 222b 0008                 move.l     8(a3),d1
[00052efa] 4eb9 0007 769e            jsr        $0007769E
[00052f00] 2c00                      move.l     d0,d6
[00052f02] 700c                      moveq.l    #12,d0
[00052f04] e0ae                      lsr.l      d0,d6
[00052f06] dc9f                      add.l      (a7)+,d6
[00052f08] 6006                      bra.s      $00052F10
[00052f0a] 2c3c 0000 1000            move.l     #$00001000,d6
[00052f10] 4a86                      tst.l      d6
[00052f12] 6a04                      bpl.s      $00052F18
[00052f14] 7c00                      moveq.l    #0,d6
[00052f16] 600e                      bra.s      $00052F26
[00052f18] bcbc 0000 1000            cmp.l      #$00001000,d6
[00052f1e] 6f06                      ble.s      $00052F26
[00052f20] 2c3c 0000 1000            move.l     #$00001000,d6
[00052f26] 2006                      move.l     d6,d0
[00052f28] 204a                      movea.l    a2,a0
[00052f2a] 6100 fb4a                 bsr        $00052A76
[00052f2e] 302b 0068                 move.w     104(a3),d0
[00052f32] 664c                      bne.s      $00052F80
[00052f34] 322a 0020                 move.w     32(a2),d1
[00052f38] 6b46                      bmi.s      $00052F80
[00052f3a] 242b 0048                 move.l     72(a3),d2
[00052f3e] 6732                      beq.s      $00052F72
[00052f40] 7808                      moveq.l    #8,d4
[00052f42] c86b 0064                 and.w      100(a3),d4
[00052f46] 6608                      bne.s      $00052F50
[00052f48] 2054                      movea.l    (a4),a0
[00052f4a] 216b 006a 0232            move.l     106(a3),562(a0)
[00052f50] 026a ffdf 0056            andi.w     #$FFDF,86(a2)
[00052f56] 204b                      movea.l    a3,a0
[00052f58] 226b 0048                 movea.l    72(a3),a1
[00052f5c] 4e91                      jsr        (a1)
[00052f5e] 3600                      move.w     d0,d3
[00052f60] 7208                      moveq.l    #8,d1
[00052f62] c26b 0064                 and.w      100(a3),d1
[00052f66] 660a                      bne.s      $00052F72
[00052f68] 2054                      movea.l    (a4),a0
[00052f6a] 217c 0000 0001 0232       move.l     #$00000001,562(a0)
[00052f72] 43eb 000c                 lea.l      12(a3),a1
[00052f76] 204a                      movea.l    a2,a0
[00052f78] 6100 fc10                 bsr        $00052B8A
[00052f7c] 3743 0068                 move.w     d3,104(a3)
[00052f80] 302a 0056                 move.w     86(a2),d0
[00052f84] c07c 0200                 and.w      #$0200,d0
[00052f88] 6630                      bne.s      $00052FBA
[00052f8a] 006a 0020 0056            ori.w      #$0020,86(a2)
[00052f90] 7008                      moveq.l    #8,d0
[00052f92] c06b 0064                 and.w      100(a3),d0
[00052f96] 6612                      bne.s      $00052FAA
[00052f98] 4a43                      tst.w      d3
[00052f9a] 6604                      bne.s      $00052FA0
[00052f9c] 7201                      moveq.l    #1,d1
[00052f9e] 6002                      bra.s      $00052FA2
[00052fa0] 4241                      clr.w      d1
[00052fa2] 2054                      movea.l    (a4),a0
[00052fa4] 3141 0268                 move.w     d1,616(a0)
[00052fa8] 6010                      bra.s      $00052FBA
[00052faa] 4a43                      tst.w      d3
[00052fac] 660c                      bne.s      $00052FBA
[00052fae] 93c9                      suba.l     a1,a1
[00052fb0] 7002                      moveq.l    #2,d0
[00052fb2] 204a                      movea.l    a2,a0
[00052fb4] 266a 0004                 movea.l    4(a2),a3
[00052fb8] 4e93                      jsr        (a3)
[00052fba] 4240                      clr.w      d0
[00052fbc] 4cdf 1c78                 movem.l    (a7)+,d3-d6/a2-a4
[00052fc0] 4e75                      rts
ThermCancel:
[00052fc2] 48e7 003c                 movem.l    a2-a5,-(a7)
[00052fc6] 45f9 0010 1f12            lea.l      ACSblk,a2
[00052fcc] 2052                      movea.l    (a2),a0
[00052fce] 2668 0258                 movea.l    600(a0),a3
[00052fd2] 2853                      movea.l    (a3),a4
[00052fd4] 202c 0054                 move.l     84(a4),d0
[00052fd8] 6764                      beq.s      $0005303E
[00052fda] 7208                      moveq.l    #8,d1
[00052fdc] c26c 0064                 and.w      100(a4),d1
[00052fe0] 6606                      bne.s      $00052FE8
[00052fe2] 216c 006a 0232            move.l     106(a4),562(a0)
[00052fe8] 026b ffdf 0056            andi.w     #$FFDF,86(a3)
[00052fee] 204c                      movea.l    a4,a0
[00052ff0] 226c 0054                 movea.l    84(a4),a1
[00052ff4] 4e91                      jsr        (a1)
[00052ff6] 4a40                      tst.w      d0
[00052ff8] 672e                      beq.s      $00053028
[00052ffa] 43ec 000c                 lea.l      12(a4),a1
[00052ffe] 204b                      movea.l    a3,a0
[00053000] 6100 fb88                 bsr        $00052B8A
[00053004] 7008                      moveq.l    #8,d0
[00053006] c06c 0064                 and.w      100(a4),d0
[0005300a] 670e                      beq.s      $0005301A
[0005300c] 93c9                      suba.l     a1,a1
[0005300e] 204b                      movea.l    a3,a0
[00053010] 2a6b 0004                 movea.l    4(a3),a5
[00053014] 7002                      moveq.l    #2,d0
[00053016] 4e95                      jsr        (a5)
[00053018] 6008                      bra.s      $00053022
[0005301a] 2052                      movea.l    (a2),a0
[0005301c] 317c 0001 0268            move.w     #$0001,616(a0)
[00053022] 426c 0068                 clr.w      104(a4)
[00053026] 6006                      bra.s      $0005302E
[00053028] 006b 0020 0056            ori.w      #$0020,86(a3)
[0005302e] 7008                      moveq.l    #8,d0
[00053030] c06c 0064                 and.w      100(a4),d0
[00053034] 6608                      bne.s      $0005303E
[00053036] 2052                      movea.l    (a2),a0
[00053038] 216c 006a 0232            move.l     106(a4),562(a0)
[0005303e] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00053042] 4e75                      rts
ThermoClosed:
[00053044] 4e75                      rts
ThermoGEMScript:
[00053046] 7001                      moveq.l    #1,d0
[00053048] 4e75                      rts
