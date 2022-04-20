
copy_pup:
[00034210] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[00034214] 2648                      movea.l    a0,a3
[00034216] 2449                      movea.l    a1,a2
[00034218] 202a 000e                 move.l     14(a2),d0
[0003421c] 4eb9 0001 6230            jsr        objmalloc
[00034222] 2848                      movea.l    a0,a4
[00034224] 200c                      move.l     a4,d0
[00034226] 6604                      bne.s      copy_pup_1
[00034228] 91c8                      suba.l     a0,a0
[0003422a] 6046                      bra.s      copy_pup_2
copy_pup_1:
[0003422c] 202a 000e                 move.l     14(a2),d0
[00034230] 7238                      moveq.l    #56,d1
[00034232] 4eb9 0007 769e            jsr        _uldiv
[00034238] 2600                      move.l     d0,d3
[0003423a] 2a6a 0004                 movea.l    4(a2),a5
[0003423e] 2c6c 0004                 movea.l    4(a4),a6
[00034242] 4244                      clr.w      d4
[00034244] 6020                      bra.s      copy_pup_3
copy_pup_4:
[00034246] 3204                      move.w     d4,d1
[00034248] 48c1                      ext.l      d1
[0003424a] 2001                      move.l     d1,d0
[0003424c] e788                      lsl.l      #3,d0
[0003424e] 9081                      sub.l      d1,d0
[00034250] e788                      lsl.l      #3,d0
[00034252] 4875 0800                 pea.l      0(a5,d0.l)
[00034256] 43f6 0800                 lea.l      0(a6,d0.l),a1
[0003425a] 204b                      movea.l    a3,a0
[0003425c] 4eb9 0002 b5ea            jsr        copy_ob
[00034262] 584f                      addq.w     #4,a7
[00034264] 5244                      addq.w     #1,d4
copy_pup_3:
[00034266] b644                      cmp.w      d4,d3
[00034268] 6edc                      bgt.s      copy_pup_4
[0003426a] 296a 000e 000e            move.l     14(a2),14(a4)
[00034270] 204c                      movea.l    a4,a0
copy_pup_2:
[00034272] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[00034276] 4e75                      rts

del_pup:
[00034278] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0003427c] 2448                      movea.l    a0,a2
[0003427e] 2649                      movea.l    a1,a3
[00034280] 006a 0001 0006            ori.w      #$0001,6(a2)
[00034286] 536b 0036                 subq.w     #1,54(a3)
[0003428a] 302b 0036                 move.w     54(a3),d0
[0003428e] 6e5e                      bgt.s      del_pup_1
[00034290] 286b 0012                 movea.l    18(a3),a4
[00034294] 220c                      move.l     a4,d1
[00034296] 670c                      beq.s      del_pup_2
[00034298] 2a6c 0004                 movea.l    4(a4),a5
[0003429c] 204c                      movea.l    a4,a0
[0003429e] 7002                      moveq.l    #2,d0
[000342a0] 93c9                      suba.l     a1,a1
[000342a2] 4e95                      jsr        (a5)
del_pup_2:
[000342a4] 202b 000e                 move.l     14(a3),d0
[000342a8] 7238                      moveq.l    #56,d1
[000342aa] 4eb9 0007 769e            jsr        _uldiv
[000342b0] 2600                      move.l     d0,d3
[000342b2] 286b 0004                 movea.l    4(a3),a4
[000342b6] 4244                      clr.w      d4
[000342b8] 601a                      bra.s      del_pup_3
del_pup_4:
[000342ba] 3204                      move.w     d4,d1
[000342bc] 48c1                      ext.l      d1
[000342be] 2001                      move.l     d1,d0
[000342c0] e788                      lsl.l      #3,d0
[000342c2] 9081                      sub.l      d1,d0
[000342c4] e788                      lsl.l      #3,d0
[000342c6] 43f4 0800                 lea.l      0(a4,d0.l),a1
[000342ca] 204a                      movea.l    a2,a0
[000342cc] 4eb9 0002 b8b6            jsr        del_ob
[000342d2] 5244                      addq.w     #1,d4
del_pup_3:
[000342d4] b644                      cmp.w      d4,d3
[000342d6] 6ee2                      bgt.s      del_pup_4
[000342d8] 224b                      movea.l    a3,a1
[000342da] 206a 0020                 movea.l    32(a2),a0
[000342de] 4eb9 0003 1b00            jsr        del_entry
[000342e4] 224b                      movea.l    a3,a1
[000342e6] 204a                      movea.l    a2,a0
[000342e8] 4eb9 0001 61d4            jsr        objfree
del_pup_1:
[000342ee] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[000342f2] 4e75                      rts

new_work:
[000342f4] 303c 2712                 move.w     #$2712,d0
[000342f8] 2279 000b ca74            movea.l    $000BCA74,a1
[000342fe] 4eb9 0003 24b6            jsr        work_icon
[00034304] 4e75                      rts

		.data

protopup:
[000c2998]                           dc.b $00
[000c2999]                           dc.b $00
[000c299a]                           dc.b $00
[000c299b]                           dc.b $00
[000c299c]                           dc.b $00
[000c299d]                           dc.b $00
[000c299e]                           dc.b $00
[000c299f]                           dc.b $00
[000c29a0]                           dc.w $ffff
[000c29a2]                           dc.w $ffff
[000c29a4]                           dc.w $ffff
[000c29a6]                           dc.b $00
[000c29a7]                           dc.b $14
[000c29a8]                           dc.b $00
[000c29a9]                           dc.b $00
[000c29aa]                           dc.b $00
[000c29ab]                           dc.b $20
[000c29ac]                           dc.b $00
[000c29ad]                           dc.b $ff
[000c29ae]                           dc.w $1100
[000c29b0]                           dc.b $00
[000c29b1]                           dc.b $00
[000c29b2]                           dc.b $00
[000c29b3]                           dc.b $00
[000c29b4]                           dc.b $00
[000c29b5]                           dc.b $0c
[000c29b6]                           dc.b $00
[000c29b7]                           dc.b $06
[000c29b8]                           dc.b $00
[000c29b9]                           dc.b $00
[000c29ba]                           dc.b $00
[000c29bb]                           dc.b $00
[000c29bc]                           dc.b $00
[000c29bd]                           dc.b $00
[000c29be]                           dc.b $00
[000c29bf]                           dc.b $00
[000c29c0]                           dc.w $8000
[000c29c2]                           dc.b $00
[000c29c3]                           dc.b $00
[000c29c4]                           dc.b $00
[000c29c5]                           dc.b $00
[000c29c6]                           dc.b $00
[000c29c7]                           dc.b $00
[000c29c8]                           dc.b $00
[000c29c9]                           dc.b $00
[000c29ca]                           dc.b $00
[000c29cb]                           dc.b $00
[000c29cc]                           dc.b $00
[000c29cd]                           dc.b $00
[000c29ce]                           dc.b $00
[000c29cf]                           dc.b $00
protopopup:
[000c29d0]                           dc.b $00
[000c29d1]                           dc.b $00
[000c29d2]                           dc.b $00
[000c29d3]                           dc.b $00
[000c29d4] 000c2998                  dc.l protopup
[000c29d8]                           dc.b $00
[000c29d9]                           dc.b $00
[000c29da]                           dc.b $00
[000c29db]                           dc.b $00
[000c29dc]                           dc.b $00
[000c29dd]                           dc.b $38
[000c29de]                           dc.b $00
[000c29df]                           dc.b $00
[000c29e0]                           dc.b $00
[000c29e1]                           dc.b $38
[000c29e2]                           dc.b $00
[000c29e3]                           dc.b $00
[000c29e4]                           dc.b $00
[000c29e5]                           dc.b $00
[000c29e6]                           dc.b 'POPUP_01',0
[000c29ef]                           dc.b $00
[000c29f0]                           dc.b $00
[000c29f1]                           dc.b $00
[000c29f2]                           dc.b $00
[000c29f3]                           dc.b $00
[000c29f4]                           dc.b $00
[000c29f5]                           dc.b $00
[000c29f6]                           dc.b $00
[000c29f7]                           dc.b $00
[000c29f8]                           dc.b $00
[000c29f9]                           dc.b $00
[000c29fa]                           dc.b $00
[000c29fb]                           dc.b $00
[000c29fc]                           dc.b $00
[000c29fd]                           dc.b $00
[000c29fe]                           dc.b $00
[000c29ff]                           dc.b $00
[000c2a00]                           dc.b $00
[000c2a01]                           dc.b $00
[000c2a02]                           dc.b $00
[000c2a03]                           dc.b $00
[000c2a04]                           dc.b $00
[000c2a05]                           dc.b $00
[000c2a06]                           dc.b $00
[000c2a07]                           dc.b $01
[000c2a08]                           dc.b $00
[000c2a09]                           dc.b $00
[000c2a0a]                           dc.b $00
[000c2a0b]                           dc.b $00
[000c2a0c]                           dc.b $00
[000c2a0d]                           dc.b $00
[000c2a0e]                           dc.b $00
[000c2a0f]                           dc.b $00
[000c2a10]                           dc.b $00
[000c2a11]                           dc.b $00
list_popup:
[000c2a12]                           dc.b $00
[000c2a13]                           dc.b $00
[000c2a14]                           dc.b $00
[000c2a15]                           dc.b $00
[000c2a16]                           dc.b $00
[000c2a17]                           dc.b $00
[000c2a18]                           dc.b $00
[000c2a19]                           dc.b $00
[000c2a1a] 000bca1a                  dc.l WI_POPUP
[000c2a1e] 000c0c9e                  dc.l pu_list
[000c2a22] 000c0cac                  dc.l pu_name
[000c2a26]                           dc.b $27
[000c2a27]                           dc.b $12
[000c2a28] 000c29d0                  dc.l protopopup
[000c2a2c] 00034210                  dc.l copy_pup
[000c2a30] 00034278                  dc.l del_pup
[000c2a34] 000342f4                  dc.l new_work
[000c2a38]                           dc.l 0

