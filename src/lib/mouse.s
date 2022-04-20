
INmouse:
[00049870] 3039 000d 3d02            move.w     init,d0
[00049876] 5279 000d 3d02            addq.w     #1,init
[0004987c] 4a40                      tst.w      d0
[0004987e] 660c                      bne.s      INmouse_1
[00049880] 4279 0010 678c            clr.w      hide
[00049886] 4eb9 0004 98d8            jsr        Amo_point
INmouse_1:
[0004988c] 4240                      clr.w      d0
[0004988e] 4e75                      rts

TRmouse:
[00049890] 4eb9 0004 98d8            jsr        Amo_point
[00049896] 4e75                      rts

Amo_new:
[00049898] 2f0a                      move.l     a2,-(a7)
[0004989a] 2448                      movea.l    a0,a2
[0004989c] 41f9 000d 3d04            lea.l      prevmouse,a0
[000498a2] 3010                      move.w     (a0),d0
[000498a4] b052                      cmp.w      (a2),d0
[000498a6] 660a                      bne.s      Amo_new_1
[000498a8] 2268 0002                 movea.l    2(a0),a1
[000498ac] b3ea 0002                 cmpa.l     2(a2),a1
[000498b0] 6722                      beq.s      Amo_new_2
Amo_new_1:
[000498b2] 3092                      move.w     (a2),(a0)
[000498b4] 216a 0002 0002            move.l     2(a2),2(a0)
[000498ba] 3039 0010 678c            move.w     hide,d0
[000498c0] 6612                      bne.s      Amo_new_2
[000498c2] 2279 000d 99d6            movea.l    _globl,a1
[000498c8] 206a 0002                 movea.l    2(a2),a0
[000498cc] 3012                      move.w     (a2),d0
[000498ce] 4eb9 0006 c914            jsr        mt_graf_mouse
Amo_new_2:
[000498d4] 245f                      movea.l    (a7)+,a2
[000498d6] 4e75                      rts

Amo_point:
[000498d8] 4279 0010 678e            clr.w      busy
[000498de] 6006                      bra.s      Amo_point_1
Amo_point_2:
[000498e0] 4eb9 0004 9994            jsr        Amo_show
Amo_point_1:
[000498e6] 3039 0010 678c            move.w     hide,d0
[000498ec] 66f2                      bne.s      Amo_point_2
[000498ee] 2079 0010 1f12            movea.l    ACSblk,a0
[000498f4] 2068 023c                 movea.l    572(a0),a0
[000498f8] 41e8 0038                 lea.l      56(a0),a0
[000498fc] 6100 ff9a                 bsr.w      Amo_new
[00049900] 4e75                      rts

Amo_busy:
[00049902] 2f0a                      move.l     a2,-(a7)
[00049904] 3039 0010 678e            move.w     busy,d0
[0004990a] 5279 0010 678e            addq.w     #1,busy
[00049910] 4a40                      tst.w      d0
[00049912] 6628                      bne.s      Amo_busy_1
[00049914] 3039 0010 678c            move.w     hide,d0
[0004991a] 6620                      bne.s      Amo_busy_1
[0004991c] 2079 0010 1f12            movea.l    ACSblk,a0
[00049922] 2468 023c                 movea.l    572(a0),a2
[00049926] 45ea 003e                 lea.l      62(a2),a2
[0004992a] 2279 000d 99d6            movea.l    _globl,a1
[00049930] 206a 0002                 movea.l    2(a2),a0
[00049934] 3012                      move.w     (a2),d0
[00049936] 4eb9 0006 c914            jsr        mt_graf_mouse
Amo_busy_1:
[0004993c] 245f                      movea.l    (a7)+,a2
[0004993e] 4e75                      rts

Amo_unbusy:
[00049940] 5379 0010 678e            subq.w     #1,busy
[00049946] 6e26                      bgt.s      Amo_unbusy_1
[00049948] 4279 0010 678e            clr.w      busy
[0004994e] 3039 0010 678c            move.w     hide,d0
[00049954] 6618                      bne.s      Amo_unbusy_1
[00049956] 2279 000d 99d6            movea.l    _globl,a1
[0004995c] 2079 000d 3d06            movea.l    $000D3D06,a0
[00049962] 3039 000d 3d04            move.w     prevmouse,d0
[00049968] 4eb9 0006 c914            jsr        mt_graf_mouse
Amo_unbusy_1:
[0004996e] 4e75                      rts

Amo_hide:
[00049970] 3039 0010 678c            move.w     hide,d0
[00049976] 5279 0010 678c            addq.w     #1,hide
[0004997c] 4a40                      tst.w      d0
[0004997e] 6612                      bne.s      Amo_hide_1
[00049980] 2279 000d 99d6            movea.l    _globl,a1
[00049986] 91c8                      suba.l     a0,a0
[00049988] 303c 0100                 move.w     #$0100,d0
[0004998c] 4eb9 0006 c914            jsr        mt_graf_mouse
Amo_hide_1:
[00049992] 4e75                      rts

Amo_show:
[00049994] 5379 0010 678c            subq.w     #1,hide
[0004999a] 6e30                      bgt.s      Amo_show_1
[0004999c] 4279 0010 678c            clr.w      hide
[000499a2] 2279 000d 99d6            movea.l    _globl,a1
[000499a8] 91c8                      suba.l     a0,a0
[000499aa] 303c 0101                 move.w     #$0101,d0
[000499ae] 4eb9 0006 c914            jsr        mt_graf_mouse
[000499b4] 2279 000d 99d6            movea.l    _globl,a1
[000499ba] 2079 000d 3d06            movea.l    $000D3D06,a0
[000499c0] 3039 000d 3d04            move.w     prevmouse,d0
[000499c6] 4eb9 0006 c914            jsr        mt_graf_mouse
Amo_show_1:
[000499cc] 4e75                      rts

Amo_restart:
[000499ce] 3f03                      move.w     d3,-(a7)
[000499d0] 2f0a                      move.l     a2,-(a7)
[000499d2] 3639 0010 678e            move.w     busy,d3
[000499d8] 4279 0010 678e            clr.w      busy
[000499de] 30b9 000d 3d04            move.w     prevmouse,(a0)
[000499e4] 2179 000d 3d06 0002       move.l     $000D3D06,2(a0)
[000499ec] 2079 0010 1f12            movea.l    ACSblk,a0
[000499f2] 2468 023c                 movea.l    572(a0),a2
[000499f6] 45ea 0038                 lea.l      56(a2),a2
[000499fa] 2279 000d 99d6            movea.l    _globl,a1
[00049a00] 206a 0002                 movea.l    2(a2),a0
[00049a04] 3012                      move.w     (a2),d0
[00049a06] 4eb9 0006 c914            jsr        mt_graf_mouse
[00049a0c] 3003                      move.w     d3,d0
[00049a0e] 245f                      movea.l    (a7)+,a2
[00049a10] 361f                      move.w     (a7)+,d3
[00049a12] 4e75                      rts

Amo_return:
[00049a14] 2f0a                      move.l     a2,-(a7)
[00049a16] 2448                      movea.l    a0,a2
[00049a18] 33c0 0010 678e            move.w     d0,busy
[00049a1e] 33d0 000d 3d04            move.w     (a0),prevmouse
[00049a24] 23ea 0002 000d 3d06       move.l     2(a2),$000D3D06
[00049a2c] 3239 0010 678c            move.w     hide,d1
[00049a32] 6624                      bne.s      Amo_return_1
[00049a34] 4a40                      tst.w      d0
[00049a36] 670e                      beq.s      Amo_return_2
[00049a38] 2279 0010 1f12            movea.l    ACSblk,a1
[00049a3e] 2469 023c                 movea.l    572(a1),a2
[00049a42] 45ea 003e                 lea.l      62(a2),a2
Amo_return_2:
[00049a46] 2279 000d 99d6            movea.l    _globl,a1
[00049a4c] 206a 0002                 movea.l    2(a2),a0
[00049a50] 3012                      move.w     (a2),d0
[00049a52] 4eb9 0006 c914            jsr        mt_graf_mouse
Amo_return_1:
[00049a58] 245f                      movea.l    (a7)+,a2
[00049a5a] 4e75                      rts

		.data

init:
[000d3d02]                           dc.b $00
[000d3d03]                           dc.b $00
prevmouse:
[000d3d04]                           dc.w $ffff
[000d3d06]                           dc.l 0

	.bss

hide: ds.w 1
busy: ds.w 1
