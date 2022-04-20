
comp:
[000318f2] 2251                      movea.l    (a1),a1
[000318f4] 4eb9 0004 3856            jsr        Ast_cmp
[000318fa] 4e75                      rts

[000318fc] 2251                      movea.l    (a1),a1
[000318fe] 2050                      movea.l    (a0),a0
[00031900] 4eb9 0004 3856            jsr        Ast_cmp
[00031906] 4e75                      rts

key_code:
[00031908] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0003190c] 2448                      movea.l    a0,a2
[0003190e] 4243                      clr.w      d3
key_code_6:
[00031910] 4240                      clr.w      d0
[00031912] 0c12 0007                 cmpi.b     #$07,(a2)
[00031916] 6606                      bne.s      key_code_1
[00031918] 867c 8800                 or.w       #$8800,d3
[0003191c] 6016                      bra.s      key_code_2
key_code_1:
[0003191e] 0c12 0001                 cmpi.b     #$01,(a2)
[00031922] 6606                      bne.s      key_code_3
[00031924] 867c 0300                 or.w       #$0300,d3
[00031928] 600a                      bra.s      key_code_2
key_code_3:
[0003192a] 0c12 005e                 cmpi.b     #$5E,(a2)
[0003192e] 6606                      bne.s      key_code_4
[00031930] 867c 8400                 or.w       #$8400,d3
key_code_2:
[00031934] 7001                      moveq.l    #1,d0
key_code_4:
[00031936] 4a40                      tst.w      d0
[00031938] 6702                      beq.s      key_code_5
[0003193a] 524a                      addq.w     #1,a2
key_code_5:
[0003193c] 4a40                      tst.w      d0
[0003193e] 66d0                      bne.s      key_code_6
[00031940] 47f9 000c 08da            lea.l      nktab,a3
[00031946] 302b 00bc                 move.w     188(a3),d0
[0003194a] 661a                      bne.s      key_code_7
[0003194c] 43fa ffae                 lea.l      $000318FC(pc),a1
[00031950] 7206                      moveq.l    #6,d1
[00031952] 302b 00ba                 move.w     186(a3),d0
[00031956] 48c0                      ext.l      d0
[00031958] 204b                      movea.l    a3,a0
[0003195a] 4eb9 0007 5314            jsr        qsort
[00031960] 377c 0001 00bc            move.w     #$0001,188(a3)
key_code_7:
[00031966] 487a ff8a                 pea.l      comp(pc)
[0003196a] 7206                      moveq.l    #6,d1
[0003196c] 302b 00ba                 move.w     186(a3),d0
[00031970] 48c0                      ext.l      d0
[00031972] 224b                      movea.l    a3,a1
[00031974] 204a                      movea.l    a2,a0
[00031976] 4eb9 0007 5178            jsr        bsearch
[0003197c] 584f                      addq.w     #4,a7
[0003197e] 2008                      move.l     a0,d0
[00031980] 661e                      bne.s      key_code_8
[00031982] 0c12 0020                 cmpi.b     #$20,(a2)
[00031986] 6514                      bcs.s      key_code_9
[00031988] 122a 0001                 move.b     1(a2),d1
[0003198c] 6706                      beq.s      key_code_10
[0003198e] b23c 0020                 cmp.b      #$20,d1
[00031992] 6608                      bne.s      key_code_9
key_code_10:
[00031994] 4240                      clr.w      d0
[00031996] 1012                      move.b     (a2),d0
[00031998] 8043                      or.w       d3,d0
[0003199a] 600e                      bra.s      key_code_11
key_code_9:
[0003199c] 4240                      clr.w      d0
[0003199e] 600a                      bra.s      key_code_11
key_code_8:
[000319a0] 3003                      move.w     d3,d0
[000319a2] 8068 0004                 or.w       4(a0),d0
[000319a6] 807c 8000                 or.w       #$8000,d0
key_code_11:
[000319aa] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[000319ae] 4e75                      rts

key_string:
[000319b0] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[000319b4] 3600                      move.w     d0,d3
[000319b6] 45f9 000f f6d2            lea.l      string,a2
[000319bc] 4212                      clr.b      (a2)
[000319be] 3003                      move.w     d3,d0
[000319c0] c07c 0300                 and.w      #$0300,d0
[000319c4] 670e                      beq.s      key_string_1
[000319c6] 43f9 000c 0a1d            lea.l      $000C0A1D,a1
[000319cc] 204a                      movea.l    a2,a0
[000319ce] 4eb9 0007 6886            jsr        strcat
key_string_1:
[000319d4] 3003                      move.w     d3,d0
[000319d6] c07c 0400                 and.w      #$0400,d0
[000319da] 670e                      beq.s      key_string_2
[000319dc] 43f9 000c 0a1f            lea.l      $000C0A1F,a1
[000319e2] 204a                      movea.l    a2,a0
[000319e4] 4eb9 0007 6886            jsr        strcat
key_string_2:
[000319ea] 3003                      move.w     d3,d0
[000319ec] c07c 0800                 and.w      #$0800,d0
[000319f0] 670e                      beq.s      key_string_3
[000319f2] 43f9 000c 0a21            lea.l      $000C0A21,a1
[000319f8] 204a                      movea.l    a2,a0
[000319fa] 4eb9 0007 6886            jsr        strcat
key_string_3:
[00031a00] 204a                      movea.l    a2,a0
[00031a02] 4eb9 0007 69b0            jsr        strlen
[00031a08] 2800                      move.l     d0,d4
[00031a0a] 4245                      clr.w      d5
[00031a0c] 47f9 000c 08da            lea.l      nktab,a3
[00031a12] 601e                      bra.s      key_string_4
key_string_7:
[00031a14] 3005                      move.w     d5,d0
[00031a16] d040                      add.w      d0,d0
[00031a18] d045                      add.w      d5,d0
[00031a1a] d040                      add.w      d0,d0
[00031a1c] b633 0005                 cmp.b      5(a3,d0.w),d3
[00031a20] 660e                      bne.s      key_string_5
[00031a22] 2273 0000                 movea.l    0(a3,d0.w),a1
[00031a26] 204a                      movea.l    a2,a0
[00031a28] 4eb9 0007 6886            jsr        strcat
[00031a2e] 6026                      bra.s      key_string_6
key_string_5:
[00031a30] 5245                      addq.w     #1,d5
key_string_4:
[00031a32] ba6b 00ba                 cmp.w      186(a3),d5
[00031a36] 6ddc                      blt.s      key_string_7
[00031a38] 3003                      move.w     d3,d0
[00031a3a] c07c 00ff                 and.w      #$00FF,d0
[00031a3e] b07c 0020                 cmp.w      #$0020,d0
[00031a42] 6d0c                      blt.s      key_string_8
[00031a44] 1203                      move.b     d3,d1
[00031a46] c23c 00ff                 and.b      #$FF,d1
[00031a4a] 1581 4000                 move.b     d1,0(a2,d4.w)
[00031a4e] 5244                      addq.w     #1,d4
key_string_8:
[00031a50] 4232 4000                 clr.b      0(a2,d4.w)
[00031a54] 204a                      movea.l    a2,a0
key_string_6:
[00031a56] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[00031a5a] 4e75                      rts

	.data

nktab:
[000c08da] 000c0998                  dc.l $000c0998 ; no symbol found
[000c08de]                           dc.b $00
[000c08df]                           dc.b $08
[000c08e0] 000c099b                  dc.l $000c099b ; no symbol found
[000c08e4]                           dc.b $00
[000c08e5]                           dc.b $1f
[000c08e6] 000c099f                  dc.l $000c099f ; no symbol found
[000c08ea]                           dc.b $00
[000c08eb]                           dc.b $0c
[000c08ec] 000c09a3                  dc.l $000c09a3 ; no symbol found
[000c08f0]                           dc.b $00
[000c08f1]                           dc.b $0c
[000c08f2] 000c09a8                  dc.l $000c09a8 ; no symbol found
[000c08f6]                           dc.b $00
[000c08f7]                           dc.b $01
[000c08f8] 000c09ab                  dc.l $000c09ab ; no symbol found
[000c08fc]                           dc.b $00
[000c08fd]                           dc.b $02
[000c08fe] 000c09b0                  dc.l $000c09b0 ; no symbol found
[000c0902]                           dc.b $00
[000c0903]                           dc.b $04
[000c0904] 000c09b5                  dc.l $000c09b5 ; no symbol found
[000c0908]                           dc.b $00
[000c0909]                           dc.b $03
[000c090a] 000c09bb                  dc.l $000c09bb ; no symbol found
[000c090e]                           dc.b $00
[000c090f]                           dc.b $05
[000c0910] 000c09c2                  dc.l $000c09c2 ; no symbol found
[000c0914]                           dc.b $00
[000c0915]                           dc.b $06
[000c0916] 000c09cb                  dc.l $000c09cb ; no symbol found
[000c091a]                           dc.b $00
[000c091b]                           dc.b $09
[000c091c] 000c09cf                  dc.l $000c09cf ; no symbol found
[000c0920]                           dc.b $00
[000c0921]                           dc.b $1b
[000c0922] 000c09d3                  dc.l $000c09d3 ; no symbol found
[000c0926]                           dc.b $00
[000c0927]                           dc.b $10
[000c0928] 000c09d6                  dc.l $000c09d6 ; no symbol found
[000c092c]                           dc.b $00
[000c092d]                           dc.b $11
[000c092e] 000c09d9                  dc.l $000c09d9 ; no symbol found
[000c0932]                           dc.b $00
[000c0933]                           dc.b $12
[000c0934] 000c09dc                  dc.l $000c09dc ; no symbol found
[000c0938]                           dc.b $00
[000c0939]                           dc.b $13
[000c093a] 000c09df                  dc.l $000c09df ; no symbol found
[000c093e]                           dc.b $00
[000c093f]                           dc.b $14
[000c0940] 000c09e2                  dc.l $000c09e2 ; no symbol found
[000c0944]                           dc.b $00
[000c0945]                           dc.b $15
[000c0946] 000c09e5                  dc.l $000c09e5 ; no symbol found
[000c094a]                           dc.b $00
[000c094b]                           dc.b $16
[000c094c] 000c09e8                  dc.l $000c09e8 ; no symbol found
[000c0950]                           dc.b $00
[000c0951]                           dc.b $17
[000c0952] 000c09eb                  dc.l $000c09eb ; no symbol found
[000c0956]                           dc.b $00
[000c0957]                           dc.b $18
[000c0958] 000c09ee                  dc.l $000c09ee ; no symbol found
[000c095c]                           dc.b $00
[000c095d]                           dc.b $19
[000c095e] 000c09f2                  dc.l $000c09f2 ; no symbol found
[000c0962]                           dc.b $00
[000c0963]                           dc.b $1a
[000c0964] 000c09f6                  dc.l $000c09f6 ; no symbol found
[000c0968]                           dc.b $00
[000c0969]                           dc.b $1c
[000c096a] 000c09fa                  dc.l $000c09fa ; no symbol found
[000c096e]                           dc.b $00
[000c096f]                           dc.b $1d
[000c0970] 000c09fe                  dc.l $000c09fe ; no symbol found
[000c0974]                           dc.b $00
[000c0975]                           dc.b $0b
[000c0976] 000c0a02                  dc.l $000c0a02 ; no symbol found
[000c097a]                           dc.b $00
[000c097b]                           dc.b $0d
[000c097c] 000c0a06                  dc.l $000c0a06 ; no symbol found
[000c0980]                           dc.b $00
[000c0981]                           dc.b $0d
[000c0982] 000c0a0d                  dc.l $000c0a0d ; no symbol found
[000c0986]                           dc.b $00
[000c0987]                           dc.b $0a
[000c0988] 000c0a13                  dc.l $000c0a13 ; no symbol found
[000c098c]                           dc.b $00
[000c098d]                           dc.b $0e
[000c098e] 000c0a18                  dc.l $000c0a18 ; no symbol found
[000c0992]                           dc.b $00
[000c0993]                           dc.b $0f
[000c0994]                           dc.b $00
[000c0995]                           dc.b $1f
[000c0996]                           dc.b $00
[000c0997]                           dc.b $00
[000c0998]                           dc.w $4253
[000c099a]                           dc.b $00
[000c099b]                           dc.b 'DEL',0
[000c099f]                           dc.b 'CLR',0
[000c09a3]                           dc.b 'HOME',0
[000c09a8]                           dc.w $5550
[000c09aa]                           dc.b $00
[000c09ab]                           dc.b 'DOWN',0
[000c09b0]                           dc.b 'LEFT',0
[000c09b5]                           dc.b 'RIGHT',0
[000c09bb]                           dc.b 'PAGEUP',0
[000c09c2]                           dc.b 'PAGEDOWN',0
[000c09cb]                           dc.b 'TAB',0
[000c09cf]                           dc.b 'ESC',0
[000c09d3]                           dc.b $46
[000c09d4]                           dc.w $3100
[000c09d6]                           dc.w $4632
[000c09d8]                           dc.b $00
[000c09d9]                           dc.b $46
[000c09da]                           dc.w $3300
[000c09dc]                           dc.w $4634
[000c09de]                           dc.b $00
[000c09df]                           dc.b $46
[000c09e0]                           dc.w $3500
[000c09e2]                           dc.w $4636
[000c09e4]                           dc.b $00
[000c09e5]                           dc.b $46
[000c09e6]                           dc.w $3700
[000c09e8]                           dc.w $4638
[000c09ea]                           dc.b $00
[000c09eb]                           dc.b $46
[000c09ec]                           dc.w $3900
[000c09ee]                           dc.b 'F10',0
[000c09f2]                           dc.b 'F11',0
[000c09f6]                           dc.b 'F12',0
[000c09fa]                           dc.b 'F14',0
[000c09fe]                           dc.b 'INS',0
[000c0a02]                           dc.b 'RET',0
[000c0a06]                           dc.b 'RETURN',0
[000c0a0d]                           dc.b 'ENTER',0
[000c0a13]                           dc.b 'HELP',0
[000c0a18]                           dc.b 'UNDO',0
[000c0a1d]                           dc.b $01
[000c0a1e]                           dc.b $00
[000c0a1f]                           dc.b $5e
[000c0a20]                           dc.b $00
[000c0a21]                           dc.b $07
[000c0a22]                           dc.b $00
	.even

	.bss

string: ds.b 32
