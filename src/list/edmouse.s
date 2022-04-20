
add_mouse:
[00033fa2] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[00033fa6] 2448                      movea.l    a0,a2
[00033fa8] 2c49                      movea.l    a1,a6
[00033faa] 006a 0001 0006            ori.w      #$0001,6(a2)
[00033fb0] 266a 0040                 movea.l    64(a2),a3
[00033fb4] 286b 0004                 movea.l    4(a3),a4
[00033fb8] 262b 000e                 move.l     14(a3),d3
[00033fbc] e48b                      lsr.l      #2,d3
[00033fbe] 4244                      clr.w      d4
[00033fc0] 601e                      bra.s      add_mouse_1
add_mouse_4:
[00033fc2] 2a5c                      movea.l    (a4)+,a5
[00033fc4] 704a                      moveq.l    #74,d0
[00033fc6] 226e 0004                 movea.l    4(a6),a1
[00033fca] 206d 0004                 movea.l    4(a5),a0
[00033fce] 4eb9 0007 6f2e            jsr        memcmp
[00033fd4] 4a40                      tst.w      d0
[00033fd6] 6606                      bne.s      add_mouse_2
[00033fd8] 526d 0036                 addq.w     #1,54(a5)
[00033fdc] 6048                      bra.s      add_mouse_3
add_mouse_2:
[00033fde] 5244                      addq.w     #1,d4
add_mouse_1:
[00033fe0] b644                      cmp.w      d4,d3
[00033fe2] 6ede                      bgt.s      add_mouse_4
[00033fe4] 7038                      moveq.l    #56,d0
[00033fe6] 204b                      movea.l    a3,a0
[00033fe8] 4eb9 0001 62aa            jsr        objextent
[00033fee] 4a40                      tst.w      d0
[00033ff0] 6610                      bne.s      add_mouse_5
[00033ff2] 224e                      movea.l    a6,a1
[00033ff4] 204a                      movea.l    a2,a0
[00033ff6] 4eb9 0003 402e            jsr        copy_mouse
[00033ffc] 2a48                      movea.l    a0,a5
[00033ffe] 200d                      move.l     a5,d0
[00034000] 6604                      bne.s      add_mouse_6
add_mouse_5:
[00034002] 91c8                      suba.l     a0,a0
[00034004] 6022                      bra.s      add_mouse_7
add_mouse_6:
[00034006] 2f39 000c 28da            move.l     $000C28DA,-(a7)
[0003400c] 486e 0016                 pea.l      22(a6)
[00034010] 224d                      movea.l    a5,a1
[00034012] 204a                      movea.l    a2,a0
[00034014] 4eb9 0001 6448            jsr        objname
[0003401a] 504f                      addq.w     #8,a7
[0003401c] 224d                      movea.l    a5,a1
[0003401e] 204b                      movea.l    a3,a0
[00034020] 4eb9 0003 1a94            jsr        add_entry
add_mouse_3:
[00034026] 204d                      movea.l    a5,a0
add_mouse_7:
[00034028] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[0003402c] 4e75                      rts

copy_mouse:
[0003402e] 2f0a                      move.l     a2,-(a7)
[00034030] 2f0b                      move.l     a3,-(a7)
[00034032] 2648                      movea.l    a0,a3
[00034034] 2449                      movea.l    a1,a2
[00034036] 202a 000e                 move.l     14(a2),d0
[0003403a] 4eb9 0001 6230            jsr        objmalloc
[00034040] 2648                      movea.l    a0,a3
[00034042] 200b                      move.l     a3,d0
[00034044] 6604                      bne.s      copy_mouse_1
[00034046] 91c8                      suba.l     a0,a0
[00034048] 601a                      bra.s      copy_mouse_2
copy_mouse_1:
[0003404a] 276a 000e 000e            move.l     14(a2),14(a3)
[00034050] 202a 000e                 move.l     14(a2),d0
[00034054] 226a 0004                 movea.l    4(a2),a1
[00034058] 206b 0004                 movea.l    4(a3),a0
[0003405c] 4eb9 0007 6f44            jsr        memcpy
[00034062] 204b                      movea.l    a3,a0
copy_mouse_2:
[00034064] 265f                      movea.l    (a7)+,a3
[00034066] 245f                      movea.l    (a7)+,a2
[00034068] 4e75                      rts

del_mouse:
[0003406a] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003406e] 2848                      movea.l    a0,a4
[00034070] 2449                      movea.l    a1,a2
[00034072] 536a 0036                 subq.w     #1,54(a2)
[00034076] 302a 0036                 move.w     54(a2),d0
[0003407a] 6e2a                      bgt.s      del_mouse_1
[0003407c] 266a 0012                 movea.l    18(a2),a3
[00034080] 220b                      move.l     a3,d1
[00034082] 670c                      beq.s      del_mouse_2
[00034084] 2a6b 0004                 movea.l    4(a3),a5
[00034088] 204b                      movea.l    a3,a0
[0003408a] 7002                      moveq.l    #2,d0
[0003408c] 93c9                      suba.l     a1,a1
[0003408e] 4e95                      jsr        (a5)
del_mouse_2:
[00034090] 224a                      movea.l    a2,a1
[00034092] 206c 0040                 movea.l    64(a4),a0
[00034096] 4eb9 0003 1b00            jsr        del_entry
[0003409c] 224a                      movea.l    a2,a1
[0003409e] 204c                      movea.l    a4,a0
[000340a0] 4eb9 0001 61d4            jsr        objfree
del_mouse_1:
[000340a6] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[000340aa] 4e75                      rts

new_work:
[000340ac] 303c 2722                 move.w     #$2722,d0
[000340b0] 2279 000a 647e            movea.l    $000A647E,a1
[000340b6] 4eb9 0003 24b6            jsr        work_icon
[000340bc] 4e75                      rts
