init_editor:
[00025b18] 2f0a                      move.l     a2,-(a7)
[00025b1a] 2f0b                      move.l     a3,-(a7)
[00025b1c] 2448                      movea.l    a0,a2
[00025b1e] 43f9 000b 0b58            lea.l      $000B0B58,a1
[00025b24] 303c 2329                 move.w     #$2329,d0
[00025b28] 266a 0004                 movea.l    4(a2),a3
[00025b2c] 4e93                      jsr        (a3)
[00025b2e] 265f                      movea.l    (a7)+,a3
[00025b30] 245f                      movea.l    (a7)+,a2
[00025b32] 4e75                      rts
minsize:
[00025b34] 2079 0010 1f12            movea.l    ACSblk,a0
[00025b3a] 3028 0012                 move.w     18(a0),d0
[00025b3e] e748                      lsl.w      #3,d0
[00025b40] 3280                      move.w     d0,(a1)
[00025b42] 2079 0010 1f12            movea.l    ACSblk,a0
[00025b48] 3228 0014                 move.w     20(a0),d1
[00025b4c] d241                      add.w      d1,d1
[00025b4e] 226f 0004                 movea.l    4(a7),a1
[00025b52] 3281                      move.w     d1,(a1)
[00025b54] 4e75                      rts
object_tree:
[00025b56] 91c8                      suba.l     a0,a0
[00025b58] 4e75                      rts
test_it:
[00025b5a] 22bc 0003 62da            move.l     #$000362DA,(a1)
[00025b60] 237c 0003 8e52 0008       move.l     #$00038E52,8(a1)
[00025b68] 7000                      moveq.l    #0,d0
[00025b6a] 2340 0014                 move.l     d0,20(a1)
[00025b6e] 2340 0010                 move.l     d0,16(a1)
[00025b72] 2340 000c                 move.l     d0,12(a1)
[00025b76] 42a9 0018                 clr.l      24(a1)
[00025b7a] 42a9 001c                 clr.l      28(a1)
[00025b7e] 4e75                      rts
abort:
[00025b80] 2079 000b 0b98            movea.l    $000B0B98,a0
[00025b86] 2050                      movea.l    (a0),a0
[00025b88] 4e90                      jsr        (a0)
[00025b8a] 4e75                      rts
