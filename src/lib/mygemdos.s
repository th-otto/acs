mygemdos:
[00041a04] 2078 04f2                 movea.l    ($000004F2).w,a0
[00041a08] 2028 0028                 move.l     40(a0),d0
[00041a0c] 0c68 0102 0002            cmpi.w     #$0102,2(a0)
[00041a12] 6c18                      bge.s      mygemdos_1
[00041a14] 3028 001c                 move.w     28(a0),d0
[00041a18] 41f8 602c                 lea.l      ($0000602C).w,a0
[00041a1c] e248                      lsr.w      #1,d0
[00041a1e] b07c 0004                 cmp.w      #$0004,d0
[00041a22] 6606                      bne.s      mygemdos_2
[00041a24] 41f9 0000 873c            lea.l      $0000873C,a0
mygemdos_2:
[00041a2a] 2008                      move.l     a0,d0
mygemdos_1:
[00041a2c] 2040                      movea.l    d0,a0
[00041a2e] 23d0 0010 263a            move.l     (a0),oldpd
[00041a34] 23c8 0010 263e            move.l     a0,_run
[00041a3a] 20b9 000d 9eb0            move.l     _BasPag,(a0)
[00041a40] 23ef 0002 0010 2632       move.l     2(a7),oldret
[00041a48] 2f7c 0004 1a58 0002       move.l     #$00041A58,2(a7)
[00041a50] 2079 0010 2636            movea.l    oldvec,a0
[00041a56] 4ed0                      jmp        (a0)
[00041a58] 2079 0010 263e            movea.l    _run,a0
[00041a5e] 20b9 0010 263a            move.l     oldpd,(a0)
[00041a64] 2079 0010 2632            movea.l    oldret,a0
[00041a6a] 4ed0                      jmp        (a0)
[00041a6c] 21f9 0010 2642 007c       move.l     sint7,($0000007C).w
[00041a74] 4e75                      rts

int7:
[00041a76] 48e7 00c0                 movem.l    a0-a1,-(a7)
[00041a7a] 2279 0010 2642            movea.l    sint7,a1
[00041a80] 2079 0010 263e            movea.l    _run,a0
[00041a86] 20b9 0010 263a            move.l     oldpd,(a0)
[00041a8c] 4a78 059e                 tst.w      ($0000059E).w
[00041a90] 6704                      beq.s      int7_1
[00041a92] 3f2f 000e                 move.w     14(a7),-(a7)
int7_1:
[00041a96] 4879 0004 1aa0            pea.l      $00041AA0
[00041a9c] 40e7                      move.w     sr,-(a7)
[00041a9e] 4ed1                      jmp        (a1)
[00041aa0] 2079 0010 263e            movea.l    _run,a0
[00041aa6] 20b9 000d 9eb0            move.l     _BasPag,(a0)
[00041aac] 4cdf 0300                 movem.l    (a7)+,a0-a1
[00041ab0] 4e73                      rte

accgemdos:
[00041ab2] 4879 0004 1a04            pea.l      mygemdos
[00041ab8] 2f3c 0005 0021            move.l     #$00050021,-(a7)
[00041abe] 4e4d                      trap       #13
[00041ac0] 508f                      addq.l     #8,a7
[00041ac2] 23c0 0010 2636            move.l     d0,oldvec
[00041ac8] 4e75                      rts

oldgemdos:
[00041aca] 2f39 0010 2636            move.l     oldvec,-(a7)
[00041ad0] 2f3c 0005 0021            move.l     #$00050021,-(a7)
[00041ad6] 4e4d                      trap       #13
[00041ad8] 508f                      addq.l     #8,a7
[00041ada] 4e75                      rts

	.bss

oldret: ds.l 1
oldvec: ds.l 1
oldpd: ds.l 1
_run: ds.l 1
sint7: ds.l 1
