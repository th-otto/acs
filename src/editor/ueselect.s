init_select:
[00025ab0] 2f0a                      move.l     a2,-(a7)
[00025ab2] 2f0b                      move.l     a3,-(a7)
[00025ab4] 2448                      movea.l    a0,a2
[00025ab6] 43f9 000b 0a82            lea.l      $000B0A82,a1
[00025abc] 303c 2329                 move.w     #$2329,d0
[00025ac0] 266a 0004                 movea.l    4(a2),a3
[00025ac4] 4e93                      jsr        (a3)
[00025ac6] 265f                      movea.l    (a7)+,a3
[00025ac8] 245f                      movea.l    (a7)+,a2
[00025aca] 4e75                      rts
minsize:
[00025acc] 2079 0010 1f12            movea.l    ACSblk,a0
[00025ad2] 32a8 0012                 move.w     18(a0),(a1)
[00025ad6] 2079 0010 1f12            movea.l    ACSblk,a0
[00025adc] 226f 0004                 movea.l    4(a7),a1
[00025ae0] 32a8 0014                 move.w     20(a0),(a1)
[00025ae4] 4e75                      rts
object_tree:
[00025ae6] 91c8                      suba.l     a0,a0
[00025ae8] 4e75                      rts
test_it:
[00025aea] 22bc 0005 b5a0            move.l     #$0005B5A0,(a1)
[00025af0] 42a9 0008                 clr.l      8(a1)
[00025af4] 7000                      moveq.l    #0,d0
[00025af6] 2340 0014                 move.l     d0,20(a1)
[00025afa] 2340 0010                 move.l     d0,16(a1)
[00025afe] 2340 000c                 move.l     d0,12(a1)
[00025b02] 42a9 0018                 clr.l      24(a1)
[00025b06] 42a9 001c                 clr.l      28(a1)
[00025b0a] 4e75                      rts
abort:
[00025b0c] 2079 000b 0ac2            movea.l    $000B0AC2,a0
[00025b12] 2050                      movea.l    (a0),a0
[00025b14] 4e90                      jsr        (a0)
[00025b16] 4e75                      rts
