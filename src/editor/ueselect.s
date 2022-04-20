
init_select:
[00025ab0] 2f0a                      move.l     a2,-(a7)
[00025ab2] 2f0b                      move.l     a3,-(a7)
[00025ab4] 2448                      movea.l    a0,a2
[00025ab6] 43f9 000b 0a82            lea.l      data,a1
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
[00025aea] 22bc 0005 b5a0            move.l     #A_select,(a1)
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

	.data
visual:
[000b0a24]                           dc.w $ffff
[000b0a26]                           dc.w $ffff
[000b0a28]                           dc.w $ffff
[000b0a2a]                           dc.b $00
[000b0a2b]                           dc.b $1a
[000b0a2c]                           dc.b $00
[000b0a2d]                           dc.b $00
[000b0a2e]                           dc.b $00
[000b0a2f]                           dc.b $00
[000b0a30] 000b0ad2                  dc.l $000b0ad2 ; no symbol found
[000b0a34]                           dc.b $00
[000b0a35]                           dc.b $00
[000b0a36]                           dc.b $00
[000b0a37]                           dc.b $00
[000b0a38]                           dc.b $00
[000b0a39]                           dc.b $08
[000b0a3a]                           dc.b $00
[000b0a3b]                           dc.b $02
logical:
[000b0a3c]                           dc.w $ffff
[000b0a3e]                           dc.w $ffff
[000b0a40]                           dc.w $ffff
[000b0a42]                           dc.b $00
[000b0a43]                           dc.b $18
[000b0a44]                           dc.b $00
[000b0a45]                           dc.b $00
[000b0a46]                           dc.b $00
[000b0a47]                           dc.b $00
[000b0a48]                           dc.b $00
[000b0a49]                           dc.b $00
[000b0a4a]                           dc.b $00
[000b0a4b]                           dc.b $00
[000b0a4c]                           dc.b $00
[000b0a4d]                           dc.b $00
[000b0a4e]                           dc.b $00
[000b0a4f]                           dc.b $00
[000b0a50]                           dc.b $00
[000b0a51]                           dc.b $08
[000b0a52]                           dc.b $00
[000b0a53]                           dc.b $02
aud:
[000b0a54] 000b0ad9                  dc.l $000b0ad9 ; no symbol found
[000b0a58] 000b0ad8                  dc.l $000b0ad8 ; no symbol found
[000b0a5c]                           dc.b $00
[000b0a5d]                           dc.b $00
[000b0a5e]                           dc.b $00
[000b0a5f]                           dc.b $00
[000b0a60]                           dc.b $00
[000b0a61]                           dc.b $00
[000b0a62]                           dc.b $00
[000b0a63]                           dc.b $00
[000b0a64]                           dc.b $00
[000b0a65]                           dc.b $00
[000b0a66]                           dc.b $00
[000b0a67]                           dc.b $00
[000b0a68]                           dc.b $00
[000b0a69]                           dc.b $00
[000b0a6a]                           dc.b $00
[000b0a6b]                           dc.b $00
[000b0a6c]                           dc.b $00
[000b0a6d]                           dc.b $00
[000b0a6e]                           dc.b $00
[000b0a6f]                           dc.b $00
[000b0a70]                           dc.b $00
[000b0a71]                           dc.b $00
[000b0a72]                           dc.b $00
[000b0a73]                           dc.b $00
[000b0a74]                           dc.b $00
[000b0a75]                           dc.b $00
[000b0a76]                           dc.b $00
[000b0a77]                           dc.b $00
[000b0a78]                           dc.b $00
[000b0a79]                           dc.b $00
[000b0a7a]                           dc.b $00
[000b0a7b]                           dc.b $00
[000b0a7c]                           dc.b $00
[000b0a7d]                           dc.b $00
[000b0a7e]                           dc.b $00
[000b0a7f]                           dc.b $00
[000b0a80]                           dc.b $00
[000b0a81]                           dc.b $00
data:
[000b0a82]                           dc.b 'A_select',0
[000b0a8b]                           dc.b $00
[000b0a8c]                           dc.b $00
[000b0a8d]                           dc.b $00
[000b0a8e]                           dc.b $00
[000b0a8f]                           dc.b $00
[000b0a90]                           dc.b $00
[000b0a91]                           dc.b $00
[000b0a92]                           dc.b $00
[000b0a93]                           dc.b $00
[000b0a94]                           dc.b $00
[000b0a95]                           dc.b $00
[000b0a96]                           dc.b $00
[000b0a97]                           dc.b $00
[000b0a98]                           dc.b $00
[000b0a99]                           dc.b $00
[000b0a9a]                           dc.b $00
[000b0a9b]                           dc.b $00
[000b0a9c]                           dc.b $00
[000b0a9d]                           dc.b $00
[000b0a9e]                           dc.b $00
[000b0a9f]                           dc.b $00
[000b0aa0]                           dc.b $00
[000b0aa1]                           dc.b $00
[000b0aa2] 00025ae6                  dc.l object_tree
[000b0aa6] 00025aea                  dc.l test_it
[000b0aaa] 00025b0c                  dc.l abort
[000b0aae] 00049b7c                  dc.l Aob_delete
[000b0ab2] 000b0a24                  dc.l visual
[000b0ab6] 000b0a3c                  dc.l logical
[000b0aba] 000b0a54                  dc.l aud
[000b0abe] 00025acc                  dc.l minsize
[000b0ac2]                           dc.b $00
[000b0ac3]                           dc.b $00
[000b0ac4]                           dc.b $00
[000b0ac5]                           dc.b $00
[000b0ac6] 000b0ade                  dc.l $000b0ade ; no symbol found
[000b0aca] 000b0ae7                  dc.l $000b0ae7 ; no symbol found
[000b0ace]                           dc.b $00
[000b0acf]                           dc.b $00
[000b0ad0]                           dc.b $00
[000b0ad1]                           dc.b $00
[000b0ad2]                           dc.b 'SELECT',0
[000b0ad9]                           dc.b '0x0L',0
[000b0ade]                           dc.b 'SELECT |',0
[000b0ae7]                           dc.b 'Der Select-Editor',0
	.even

