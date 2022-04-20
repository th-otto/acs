nkc_gemks2n:
[00041e3e] 3f04                      move.w     d4,-(a7)
[00041e40] 3800                      move.w     d0,d4
[00041e42] c07c 00ff                 and.w      #$00FF,d0
[00041e46] 48c0                      ext.l      d0
[00041e48] 3404                      move.w     d4,d2
[00041e4a] 48c2                      ext.l      d2
[00041e4c] c4bc 0000 ff00            and.l      #$0000FF00,d2
[00041e52] e18a                      lsl.l      #8,d2
[00041e54] 8082                      or.l       d2,d0
[00041e56] c27c 00ff                 and.w      #$00FF,d1
[00041e5a] 48c1                      ext.l      d1
[00041e5c] 7418                      moveq.l    #24,d2
[00041e5e] e5a9                      lsl.l      d2,d1
[00041e60] 8081                      or.l       d1,d0
[00041e62] 4eb9 0004 1b4e            jsr        $00041B4E
[00041e68] c07c bfff                 and.w      #$BFFF,d0
[00041e6c] 381f                      move.w     (a7)+,d4
[00041e6e] 4e75                      rts
nkc_gem2n:
[00041e70] 3f03                      move.w     d3,-(a7)
[00041e72] 3600                      move.w     d0,d3
[00041e74] 4eb9 0004 1ef0            jsr        $00041EF0
[00041e7a] 3203                      move.w     d3,d1
[00041e7c] 6100 ffc0                 bsr.w      $00041E3E
[00041e80] 361f                      move.w     (a7)+,d3
[00041e82] 4e75                      rts
nkc_n2gemks:
[00041e84] 2f0a                      move.l     a2,-(a7)
[00041e86] 2f0b                      move.l     a3,-(a7)
[00041e88] 2648                      movea.l    a0,a3
[00041e8a] 2449                      movea.l    a1,a2
[00041e8c] 4eb9 0004 1cc2            jsr        $00041CC2
[00041e92] 220a                      move.l     a2,d1
[00041e94] 6714                      beq.s      $00041EAA
[00041e96] 3400                      move.w     d0,d2
[00041e98] c47c 00ff                 and.w      #$00FF,d2
[00041e9c] 2200                      move.l     d0,d1
[00041e9e] c2bc 00ff 0000            and.l      #$00FF0000,d1
[00041ea4] e081                      asr.l      #8,d1
[00041ea6] 8441                      or.w       d1,d2
[00041ea8] 3482                      move.w     d2,(a2)
[00041eaa] 220b                      move.l     a3,d1
[00041eac] 670e                      beq.s      $00041EBC
[00041eae] 2400                      move.l     d0,d2
[00041eb0] c4bc ff00 0000            and.l      #$FF000000,d2
[00041eb6] 7218                      moveq.l    #24,d1
[00041eb8] e2aa                      lsr.l      d1,d2
[00041eba] 3682                      move.w     d2,(a3)
[00041ebc] 265f                      movea.l    (a7)+,a3
[00041ebe] 245f                      movea.l    (a7)+,a2
[00041ec0] 4e75                      rts
nkc_n2gem:
[00041ec2] 4eb9 0004 1cc2            jsr        $00041CC2
[00041ec8] 3200                      move.w     d0,d1
[00041eca] c27c 00ff                 and.w      #$00FF,d1
[00041ece] 2400                      move.l     d0,d2
[00041ed0] c4bc 00ff 0000            and.l      #$00FF0000,d2
[00041ed6] e082                      asr.l      #8,d2
[00041ed8] 8242                      or.w       d2,d1
[00041eda] 3001                      move.w     d1,d0
[00041edc] 4e75                      rts
nkc_n2kstate:
[00041ede] 4eb9 0004 1cc2            jsr        $00041CC2
[00041ee4] c0bc ff00 0000            and.l      #$FF000000,d0
[00041eea] 7218                      moveq.l    #24,d1
[00041eec] e2a8                      lsr.l      d1,d0
[00041eee] 4e75                      rts
nkc_kstate:
[00041ef0] 2f0a                      move.l     a2,-(a7)
[00041ef2] 45f9 000d 3610            lea.l      $000D3610,a2
[00041ef8] 2012                      move.l     (a2),d0
[00041efa] 661a                      bne.s      $00041F16
[00041efc] 4eb9 0007 2cf0            jsr        $00072CF0
[00041f02] 0c68 0100 0002            cmpi.w     #$0100,2(a0)
[00041f08] 6706                      beq.s      $00041F10
[00041f0a] 24a8 0024                 move.l     36(a0),(a2)
[00041f0e] 6006                      bra.s      $00041F16
[00041f10] 24bc 0000 0e1b            move.l     #$00000E1B,(a2)
[00041f16] 701f                      moveq.l    #31,d0
[00041f18] 2052                      movea.l    (a2),a0
[00041f1a] c068 0002                 and.w      2(a0),d0
[00041f1e] e148                      lsl.w      #8,d0
[00041f20] 245f                      movea.l    (a7)+,a2
[00041f22] 4e75                      rts
nkc_cmp:
[00041f24] 48e7 1f00                 movem.l    d3-d7,-(a7)
[00041f28] 554f                      subq.w     #2,a7
[00041f2a] 3800                      move.w     d0,d4
[00041f2c] 3601                      move.w     d1,d3
[00041f2e] 3a00                      move.w     d0,d5
[00041f30] b345                      eor.w      d1,d5
[00041f32] 7cff                      moveq.l    #-1,d6
[00041f34] cc04                      and.b      d4,d6
[00041f36] 7eff                      moveq.l    #-1,d7
[00041f38] ce03                      and.b      d3,d7
[00041f3a] 4a45                      tst.w      d5
[00041f3c] 6700 00e2                 beq        $00042020
[00041f40] 3405                      move.w     d5,d2
[00041f42] c47c 8000                 and.w      #$8000,d2
[00041f46] 6700 0070                 beq.w      $00041FB8
[00041f4a] 3005                      move.w     d5,d0
[00041f4c] c07c 0c00                 and.w      #$0C00,d0
[00041f50] 6600 00de                 bne        $00042030
[00041f54] bc3c 0020                 cmp.b      #$20,d6
[00041f58] 6d34                      blt.s      $00041F8E
[00041f5a] 4a44                      tst.w      d4
[00041f5c] 6604                      bne.s      $00041F62
[00041f5e] 7201                      moveq.l    #1,d1
[00041f60] 6002                      bra.s      $00041F64
[00041f62] 4241                      clr.w      d1
[00041f64] c27c 4000                 and.w      #$4000,d1
[00041f68] 670a                      beq.s      $00041F74
[00041f6a] 3005                      move.w     d5,d0
[00041f6c] c07c 2000                 and.w      #$2000,d0
[00041f70] 6600 00be                 bne        $00042030
[00041f74] be06                      cmp.b      d6,d7
[00041f76] 6600 00b8                 bne        $00042030
[00041f7a] 4a43                      tst.w      d3
[00041f7c] 6604                      bne.s      $00041F82
[00041f7e] 7001                      moveq.l    #1,d0
[00041f80] 6002                      bra.s      $00041F84
[00041f82] 4240                      clr.w      d0
[00041f84] c07c 4000                 and.w      #$4000,d0
[00041f88] 670a                      beq.s      $00041F94
[00041f8a] 6000 0094                 bra        $00042020
[00041f8e] be06                      cmp.b      d6,d7
[00041f90] 6600 009e                 bne        $00042030
[00041f94] 4a45                      tst.w      d5
[00041f96] 6604                      bne.s      $00041F9C
[00041f98] 7001                      moveq.l    #1,d0
[00041f9a] 6002                      bra.s      $00041F9E
[00041f9c] 4240                      clr.w      d0
[00041f9e] c07c 0300                 and.w      #$0300,d0
[00041fa2] 6600 007c                 bne.w      $00042020
[00041fa6] 3204                      move.w     d4,d1
[00041fa8] c27c 0300                 and.w      #$0300,d1
[00041fac] b27c 0300                 cmp.w      #$0300,d1
[00041fb0] 6600 007e                 bne.w      $00042030
[00041fb4] 6000 007e                 bra.w      $00042034
[00041fb8] 4a44                      tst.w      d4
[00041fba] 6604                      bne.s      $00041FC0
[00041fbc] 7001                      moveq.l    #1,d0
[00041fbe] 6002                      bra.s      $00041FC2
[00041fc0] 4240                      clr.w      d0
[00041fc2] c07c 4000                 and.w      #$4000,d0
[00041fc6] 6708                      beq.s      $00041FD0
[00041fc8] 3205                      move.w     d5,d1
[00041fca] c27c 2000                 and.w      #$2000,d1
[00041fce] 6660                      bne.s      $00042030
[00041fd0] 3004                      move.w     d4,d0
[00041fd2] 4eb9 0004 1e1e            jsr        $00041E1E
[00041fd8] 1e80                      move.b     d0,(a7)
[00041fda] be06                      cmp.b      d6,d7
[00041fdc] 6722                      beq.s      $00042000
[00041fde] 3204                      move.w     d4,d1
[00041fe0] c27c 1000                 and.w      #$1000,d1
[00041fe4] 674a                      beq.s      $00042030
[00041fe6] 3003                      move.w     d3,d0
[00041fe8] 4eb9 0004 1e1e            jsr        $00041E1E
[00041fee] c03c ffff                 and.b      #$FF,d0
[00041ff2] 1217                      move.b     (a7),d1
[00041ff4] b200                      cmp.b      d0,d1
[00041ff6] 6604                      bne.s      $00041FFC
[00041ff8] 7001                      moveq.l    #1,d0
[00041ffa] 6002                      bra.s      $00041FFE
[00041ffc] 4240                      clr.w      d0
[00041ffe] 6042                      bra.s      $00042042
[00042000] 4a43                      tst.w      d3
[00042002] 6604                      bne.s      $00042008
[00042004] 7001                      moveq.l    #1,d0
[00042006] 6002                      bra.s      $0004200A
[00042008] 4240                      clr.w      d0
[0004200a] c07c 4000                 and.w      #$4000,d0
[0004200e] 6610                      bne.s      $00042020
[00042010] 4a45                      tst.w      d5
[00042012] 6604                      bne.s      $00042018
[00042014] 7201                      moveq.l    #1,d1
[00042016] 6002                      bra.s      $0004201A
[00042018] 4241                      clr.w      d1
[0004201a] c27c 0300                 and.w      #$0300,d1
[0004201e] 6704                      beq.s      $00042024
[00042020] 7001                      moveq.l    #1,d0
[00042022] 601e                      bra.s      $00042042
[00042024] 3004                      move.w     d4,d0
[00042026] c07c 0300                 and.w      #$0300,d0
[0004202a] b07c 0300                 cmp.w      #$0300,d0
[0004202e] 6704                      beq.s      $00042034
[00042030] 4240                      clr.w      d0
[00042032] 600e                      bra.s      $00042042
[00042034] 3003                      move.w     d3,d0
[00042036] c07c 0300                 and.w      #$0300,d0
[0004203a] 6704                      beq.s      $00042040
[0004203c] 7001                      moveq.l    #1,d0
[0004203e] 6002                      bra.s      $00042042
[00042040] 4240                      clr.w      d0
[00042042] 544f                      addq.w     #2,a7
[00042044] 4cdf 00f8                 movem.l    (a7)+,d3-d7
[00042048] 4e75                      rts
nkc_exit:
[0004204a] 4240                      clr.w      d0
[0004204c] 4e75                      rts
