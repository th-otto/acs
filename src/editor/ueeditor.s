init_editor:
[00025b18] 2f0a                      move.l     a2,-(a7)
[00025b1a] 2f0b                      move.l     a3,-(a7)
[00025b1c] 2448                      movea.l    a0,a2
[00025b1e] 43f9 000b 0b58            lea.l      data,a1
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
[00025b5a] 22bc 0003 62da            move.l     #A_editor,(a1)
[00025b60] 237c 0003 8e52 0008       move.l     #Auo_editor,8(a1)
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

	.data
visual:
[000b0afa]                           dc.w $ffff
[000b0afc]                           dc.w $ffff
[000b0afe]                           dc.w $ffff
[000b0b00]                           dc.b $00
[000b0b01]                           dc.b $1a
[000b0b02]                           dc.b $00
[000b0b03]                           dc.b $00
[000b0b04]                           dc.b $00
[000b0b05]                           dc.b $00
[000b0b06] 000b0ba8                  dc.l $000b0ba8 ; no symbol found
[000b0b0a]                           dc.b $00
[000b0b0b]                           dc.b $00
[000b0b0c]                           dc.b $00
[000b0b0d]                           dc.b $00
[000b0b0e]                           dc.b $00
[000b0b0f]                           dc.b $0a
[000b0b10]                           dc.b $00
[000b0b11]                           dc.b $02
logical:
[000b0b12]                           dc.w $ffff
[000b0b14]                           dc.w $ffff
[000b0b16]                           dc.w $ffff
[000b0b18]                           dc.b $00
[000b0b19]                           dc.b $18
[000b0b1a]                           dc.b $00
[000b0b1b]                           dc.b $00
[000b0b1c]                           dc.b $00
[000b0b1d]                           dc.b $00
[000b0b1e]                           dc.b $00
[000b0b1f]                           dc.b $00
[000b0b20]                           dc.b $00
[000b0b21]                           dc.b $00
[000b0b22]                           dc.b $00
[000b0b23]                           dc.b $00
[000b0b24]                           dc.b $00
[000b0b25]                           dc.b $00
[000b0b26]                           dc.b $00
[000b0b27]                           dc.b $08
[000b0b28]                           dc.b $00
[000b0b29]                           dc.b $02
aud:
[000b0b2a] 000b0baf                  dc.l $000b0baf ; no symbol found
[000b0b2e] 000b0bb4                  dc.l $000b0bb4 ; no symbol found
[000b0b32]                           dc.b $00
[000b0b33]                           dc.b $00
[000b0b34]                           dc.b $00
[000b0b35]                           dc.b $00
[000b0b36]                           dc.b $00
[000b0b37]                           dc.b $00
[000b0b38]                           dc.b $00
[000b0b39]                           dc.b $00
[000b0b3a]                           dc.b $00
[000b0b3b]                           dc.b $00
[000b0b3c]                           dc.b $00
[000b0b3d]                           dc.b $00
[000b0b3e]                           dc.b $00
[000b0b3f]                           dc.b $00
[000b0b40]                           dc.b $00
[000b0b41]                           dc.b $00
[000b0b42]                           dc.b $00
[000b0b43]                           dc.b $00
[000b0b44]                           dc.b $00
[000b0b45]                           dc.b $00
[000b0b46]                           dc.b $00
[000b0b47]                           dc.b $00
[000b0b48]                           dc.b $00
[000b0b49]                           dc.b $00
[000b0b4a]                           dc.b $00
[000b0b4b]                           dc.b $00
[000b0b4c]                           dc.b $00
[000b0b4d]                           dc.b $00
[000b0b4e]                           dc.b $00
[000b0b4f]                           dc.b $00
[000b0b50]                           dc.b $00
[000b0b51]                           dc.b $00
[000b0b52]                           dc.b $00
[000b0b53]                           dc.b $00
[000b0b54]                           dc.b $00
[000b0b55]                           dc.b $00
[000b0b56]                           dc.b $00
[000b0b57]                           dc.b $00
data:
[000b0b58]                           dc.b 'A_editor',0
[000b0b61]                           dc.b $00
[000b0b62]                           dc.b $00
[000b0b63]                           dc.b $00
[000b0b64]                           dc.b $00
[000b0b65]                           dc.b $00
[000b0b66]                           dc.b $00
[000b0b67]                           dc.b $00
[000b0b68]                           dc.b $00
[000b0b69]                           dc.b $00
[000b0b6a]                           dc.b $00
[000b0b6b]                           dc.b $00
[000b0b6c]                           dc.b $00
[000b0b6d]                           dc.b $00
[000b0b6e]                           dc.b $00
[000b0b6f]                           dc.b $00
[000b0b70]                           dc.b $00
[000b0b71]                           dc.b $00
[000b0b72]                           dc.b $00
[000b0b73]                           dc.b $00
[000b0b74]                           dc.b $00
[000b0b75]                           dc.b $00
[000b0b76]                           dc.b $00
[000b0b77]                           dc.b $00
[000b0b78] 00025b56                  dc.l object_tree
[000b0b7c] 00025b5a                  dc.l test_it
[000b0b80] 00025b80                  dc.l abort
[000b0b84] 00049b7c                  dc.l Aob_delete
[000b0b88] 000b0afa                  dc.l visual
[000b0b8c] 000b0b12                  dc.l logical
[000b0b90] 000b0b2a                  dc.l aud
[000b0b94] 00025b34                  dc.l minsize
[000b0b98]                           dc.b $00
[000b0b99]                           dc.b $00
[000b0b9a]                           dc.b $00
[000b0b9b]                           dc.b $00
[000b0b9c] 000b0bbf                  dc.l $000b0bbf ; no symbol found
[000b0ba0] 000b0bc9                  dc.l $000b0bc9 ; no symbol found
[000b0ba4]                           dc.b $00
[000b0ba5]                           dc.b $00
[000b0ba6]                           dc.b $00
[000b0ba7]                           dc.b $00
[000b0ba8]                           dc.b 'EDITOR',0
[000b0baf]                           dc.b '0x0L',0
[000b0bb4]                           dc.b 'Auo_editor',0
[000b0bbf]                           dc.b ' EDITOR |',0
[000b0bc9]                           dc.b 'Der Editor',0
	.even
