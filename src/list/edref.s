
add_ref:
[00034306] 48e7 1e3c                 movem.l    d3-d6/a2-a5,-(a7)
[0003430a] 4fef fff4                 lea.l      -12(a7),a7
[0003430e] 2f48 0008                 move.l     a0,8(a7)
[00034312] 2a49                      movea.l    a1,a5
[00034314] 0068 0001 0006            ori.w      #$0001,6(a0)
[0003431a] 2f68 003c 0004            move.l     60(a0),4(a7)
[00034320] 226f 0004                 movea.l    4(a7),a1
[00034324] 2ea9 0004                 move.l     4(a1),(a7)
[00034328] 2629 000e                 move.l     14(a1),d3
[0003432c] e48b                      lsr.l      #2,d3
[0003432e] 382d 0038                 move.w     56(a5),d4
[00034332] c87c 00ff                 and.w      #$00FF,d4
[00034336] 4245                      clr.w      d5
[00034338] 6000 00f2                 bra        add_ref_1
add_ref_7:
[0003433c] 3005                      move.w     d5,d0
[0003433e] 48c0                      ext.l      d0
[00034340] e588                      lsl.l      #2,d0
[00034342] 2057                      movea.l    (a7),a0
[00034344] 2470 0800                 movea.l    0(a0,d0.l),a2
[00034348] 43ed 0016                 lea.l      22(a5),a1
[0003434c] 41ea 0016                 lea.l      22(a2),a0
[00034350] 4eb9 0007 68fe            jsr        strcmp
[00034356] 4a40                      tst.w      d0
[00034358] 6600 00d0                 bne        add_ref_2
[0003435c] 3c2a 0038                 move.w     56(a2),d6
[00034360] cc7c 00ff                 and.w      #$00FF,d6
[00034364] 4a46                      tst.w      d6
[00034366] 6700 00ae                 beq        add_ref_3
[0003436a] 4a44                      tst.w      d4
[0003436c] 6700 00b6                 beq        add_ref_4
[00034370] b846                      cmp.w      d6,d4
[00034372] 6700 00b0                 beq        add_ref_4
[00034376] 49f9 0009 dd36            lea.l      REF_TYPE,a4
[0003437c] 41f9 000c 15f0            lea.l      WI_DIFF_TYPE,a0
[00034382] 2279 000c 15f8            movea.l    $000C15F8,a1
[00034388] 4e91                      jsr        (a1)
[0003438a] 2648                      movea.l    a0,a3
[0003438c] 200b                      move.l     a3,d0
[0003438e] 6700 00c4                 beq        add_ref_5
[00034392] 43ea 0016                 lea.l      22(a2),a1
[00034396] 700c                      moveq.l    #12,d0
[00034398] 206b 0014                 movea.l    20(a3),a0
[0003439c] 4eb9 0004 afe0            jsr        Aob_puttext
[000343a2] 3206                      move.w     d6,d1
[000343a4] 48c1                      ext.l      d1
[000343a6] d281                      add.l      d1,d1
[000343a8] 41f9 0009 eae0            lea.l      cross_type,a0
[000343ae] 3430 1800                 move.w     0(a0,d1.l),d2
[000343b2] 48c2                      ext.l      d2
[000343b4] 2002                      move.l     d2,d0
[000343b6] d080                      add.l      d0,d0
[000343b8] d082                      add.l      d2,d0
[000343ba] e788                      lsl.l      #3,d0
[000343bc] 2274 080c                 movea.l    12(a4,d0.l),a1
[000343c0] 206b 0014                 movea.l    20(a3),a0
[000343c4] 7003                      moveq.l    #3,d0
[000343c6] 4eb9 0004 afe0            jsr        Aob_puttext
[000343cc] 3204                      move.w     d4,d1
[000343ce] 48c1                      ext.l      d1
[000343d0] d281                      add.l      d1,d1
[000343d2] 41f9 0009 eae0            lea.l      cross_type,a0
[000343d8] 3430 1800                 move.w     0(a0,d1.l),d2
[000343dc] 48c2                      ext.l      d2
[000343de] 2002                      move.l     d2,d0
[000343e0] d080                      add.l      d0,d0
[000343e2] d082                      add.l      d2,d0
[000343e4] e788                      lsl.l      #3,d0
[000343e6] 2274 080c                 movea.l    12(a4,d0.l),a1
[000343ea] 206b 0014                 movea.l    20(a3),a0
[000343ee] 7004                      moveq.l    #4,d0
[000343f0] 4eb9 0004 afe0            jsr        Aob_puttext
[000343f6] 204b                      movea.l    a3,a0
[000343f8] 4eb9 0005 1292            jsr        Awi_dialog
[000343fe] 3c00                      move.w     d0,d6
[00034400] 204b                      movea.l    a3,a0
[00034402] 4eb9 0005 0330            jsr        Awi_delete
[00034408] bc7c 0006                 cmp.w      #$0006,d6
[0003440c] 6708                      beq.s      add_ref_3
[0003440e] bc7c 0006                 cmp.w      #$0006,d6
[00034412] 6640                      bne.s      add_ref_5
[00034414] 600e                      bra.s      add_ref_4
add_ref_3:
[00034416] 302a 0038                 move.w     56(a2),d0
[0003441a] c07c ff00                 and.w      #$FF00,d0
[0003441e] 8044                      or.w       d4,d0
[00034420] 3540 0038                 move.w     d0,56(a2)
add_ref_4:
[00034424] 526a 0036                 addq.w     #1,54(a2)
[00034428] 6058                      bra.s      add_ref_6
add_ref_2:
[0003442a] 5245                      addq.w     #1,d5
add_ref_1:
[0003442c] b645                      cmp.w      d5,d3
[0003442e] 6e00 ff0c                 bgt        add_ref_7
[00034432] 7004                      moveq.l    #4,d0
[00034434] 206f 0004                 movea.l    4(a7),a0
[00034438] 4eb9 0001 62aa            jsr        objextent
[0003443e] 4a40                      tst.w      d0
[00034440] 6612                      bne.s      add_ref_5
[00034442] 7000                      moveq.l    #0,d0
[00034444] 206f 0008                 movea.l    8(a7),a0
[00034448] 4eb9 0001 6230            jsr        objmalloc
[0003444e] 2448                      movea.l    a0,a2
[00034450] 200a                      move.l     a2,d0
[00034452] 6604                      bne.s      add_ref_8
add_ref_5:
[00034454] 91c8                      suba.l     a0,a0
[00034456] 602c                      bra.s      add_ref_9
add_ref_8:
[00034458] 356d 0038 0038            move.w     56(a5),56(a2)
[0003445e] 2f39 000c 2aee            move.l     $000C2AEE,-(a7)
[00034464] 486d 0016                 pea.l      22(a5)
[00034468] 224a                      movea.l    a2,a1
[0003446a] 206f 0010                 movea.l    16(a7),a0
[0003446e] 4eb9 0001 6448            jsr        objname
[00034474] 504f                      addq.w     #8,a7
[00034476] 224a                      movea.l    a2,a1
[00034478] 206f 0004                 movea.l    4(a7),a0
[0003447c] 4eb9 0003 1a94            jsr        add_entry
add_ref_6:
[00034482] 204a                      movea.l    a2,a0
add_ref_9:
[00034484] 4fef 000c                 lea.l      12(a7),a7
[00034488] 4cdf 3c78                 movem.l    (a7)+,d3-d6/a2-a5
[0003448c] 4e75                      rts

del_ref:
[0003448e] 2f0a                      move.l     a2,-(a7)
[00034490] 2f0b                      move.l     a3,-(a7)
[00034492] 2448                      movea.l    a0,a2
[00034494] 2649                      movea.l    a1,a3
[00034496] 006a 0001 0006            ori.w      #$0001,6(a2)
[0003449c] 536b 0036                 subq.w     #1,54(a3)
[000344a0] 302b 0036                 move.w     54(a3),d0
[000344a4] 6e14                      bgt.s      del_ref_1
[000344a6] 206a 003c                 movea.l    60(a2),a0
[000344aa] 4eb9 0003 1b00            jsr        del_entry
[000344b0] 224b                      movea.l    a3,a1
[000344b2] 204a                      movea.l    a2,a0
[000344b4] 4eb9 0001 61d4            jsr        objfree
del_ref_1:
[000344ba] 265f                      movea.l    (a7)+,a3
[000344bc] 245f                      movea.l    (a7)+,a2
[000344be] 4e75                      rts

dup_ref:
[000344c0] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[000344c4] 2848                      movea.l    a0,a4
[000344c6] 2449                      movea.l    a1,a2
[000344c8] 3600                      move.w     d0,d3
[000344ca] 47f9 000c 2b08            lea.l      free_ref,a3
[000344d0] 224a                      movea.l    a2,a1
[000344d2] 41eb 0016                 lea.l      22(a3),a0
[000344d6] 4eb9 0007 6950            jsr        strcpy
[000344dc] 303c 00ff                 move.w     #$00FF,d0
[000344e0] c043                      and.w      d3,d0
[000344e2] 3740 0038                 move.w     d0,56(a3)
[000344e6] 224b                      movea.l    a3,a1
[000344e8] 204c                      movea.l    a4,a0
[000344ea] 6100 fe1a                 bsr        add_ref
[000344ee] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[000344f2] 4e75                      rts

copy_ref:
[000344f4] 2f0a                      move.l     a2,-(a7)
[000344f6] 2f0c                      move.l     a4,-(a7)
[000344f8] 2449                      movea.l    a1,a2
[000344fa] 202a 000a                 move.l     10(a2),d0
[000344fe] 4eb9 0001 6230            jsr        objmalloc
[00034504] 2848                      movea.l    a0,a4
[00034506] 200c                      move.l     a4,d0
[00034508] 6604                      bne.s      copy_ref_1
[0003450a] 91c8                      suba.l     a0,a0
[0003450c] 6020                      bra.s      copy_ref_2
copy_ref_1:
[0003450e] 202a 000a                 move.l     10(a2),d0
[00034512] 226a 0004                 movea.l    4(a2),a1
[00034516] 206c 0004                 movea.l    4(a4),a0
[0003451a] 4eb9 0007 6f44            jsr        memcpy
[00034520] 296a 000e 000e            move.l     14(a2),14(a4)
[00034526] 396a 0038 0038            move.w     56(a2),56(a4)
[0003452c] 204c                      movea.l    a4,a0
copy_ref_2:
[0003452e] 285f                      movea.l    (a7)+,a4
[00034530] 245f                      movea.l    (a7)+,a2
[00034532] 4e75                      rts

new_work:
[00034534] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00034538] 594f                      subq.w     #4,a7
[0003453a] 2ea8 0004                 move.l     4(a0),(a7)
[0003453e] 2628 000e                 move.l     14(a0),d3
[00034542] e48b                      lsr.l      #2,d3
[00034544] 3203                      move.w     d3,d1
[00034546] 48c1                      ext.l      d1
[00034548] 2001                      move.l     d1,d0
[0003454a] e588                      lsl.l      #2,d0
[0003454c] d081                      add.l      d1,d0
[0003454e] e988                      lsl.l      #4,d0
[00034550] d0bc 0000 0030            add.l      #$00000030,d0
[00034556] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003455c] 2648                      movea.l    a0,a3
[0003455e] 200b                      move.l     a3,d0
[00034560] 6606                      bne.s      new_work_1
[00034562] 91c8                      suba.l     a0,a0
[00034564] 6000 00b0                 bra        new_work_2
new_work_1:
[00034568] 7030                      moveq.l    #48,d0
[0003456a] 43f9 000c 2a3c            lea.l      inner,a1
[00034570] 204b                      movea.l    a3,a0
[00034572] 4eb9 0007 6f44            jsr        memcpy
[00034578] 49eb 0030                 lea.l      48(a3),a4
[0003457c] 4a43                      tst.w      d3
[0003457e] 6f00 008c                 ble        new_work_3
[00034582] 3203                      move.w     d3,d1
[00034584] d241                      add.w      d1,d1
[00034586] 48c1                      ext.l      d1
[00034588] 2001                      move.l     d1,d0
[0003458a] d080                      add.l      d0,d0
[0003458c] d081                      add.l      d1,d0
[0003458e] e788                      lsl.l      #3,d0
[00034590] 4bf3 0830                 lea.l      48(a3,d0.l),a5
[00034594] 4244                      clr.w      d4
[00034596] 6052                      bra.s      new_work_4
new_work_6:
[00034598] 7030                      moveq.l    #48,d0
[0003459a] 43f9 000c 2a6c            lea.l      proto,a1
[000345a0] 204c                      movea.l    a4,a0
[000345a2] 4eb9 0007 6f44            jsr        memcpy
[000345a8] 3004                      move.w     d4,d0
[000345aa] d040                      add.w      d0,d0
[000345ac] 5840                      addq.w     #4,d0
[000345ae] 3880                      move.w     d0,(a4)
[000345b0] 294d 000c                 move.l     a5,12(a4)
[000345b4] 3204                      move.w     d4,d1
[000345b6] 48c1                      ext.l      d1
[000345b8] e589                      lsl.l      #2,d1
[000345ba] 2057                      movea.l    (a7),a0
[000345bc] 2470 1800                 movea.l    0(a0,d1.l),a2
[000345c0] 342a 0038                 move.w     56(a2),d2
[000345c4] c47c 0100                 and.w      #$0100,d2
[000345c8] 6606                      bne.s      new_work_5
[000345ca] 006c 0010 000a            ori.w      #$0010,10(a4)
new_work_5:
[000345d0] 294a 0024                 move.l     a2,36(a4)
[000345d4] 43ea 0016                 lea.l      22(a2),a1
[000345d8] 204d                      movea.l    a5,a0
[000345da] 4eb9 0007 6950            jsr        strcpy
[000345e0] 4bed 0020                 lea.l      32(a5),a5
[000345e4] 49ec 0030                 lea.l      48(a4),a4
[000345e8] 5244                      addq.w     #1,d4
new_work_4:
[000345ea] b644                      cmp.w      d4,d3
[000345ec] 6eaa                      bgt.s      new_work_6
[000345ee] 3003                      move.w     d3,d0
[000345f0] d040                      add.w      d0,d0
[000345f2] 3740 0004                 move.w     d0,4(a3)
[000345f6] 377c 0002 0002            move.w     #$0002,2(a3)
[000345fc] 026b ffdf 0020            andi.w     #$FFDF,32(a3)
[00034602] 426c ffd0                 clr.w      -48(a4)
[00034606] 006c 0020 fff0            ori.w      #$0020,-16(a4)
new_work_3:
[0003460c] 204b                      movea.l    a3,a0
[0003460e] 4eb9 0004 a25e            jsr        Aob_fix
[00034614] 204b                      movea.l    a3,a0
new_work_2:
[00034616] 584f                      addq.w     #4,a7
[00034618] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0003461c] 4e75                      rts

		.data

inner:
[000c2a3c]                           dc.w $ffff
[000c2a3e]                           dc.w $ffff
[000c2a40]                           dc.w $ffff
[000c2a42]                           dc.b $00
[000c2a43]                           dc.b $14
[000c2a44]                           dc.w $1800
[000c2a46]                           dc.b $00
[000c2a47]                           dc.b $00
[000c2a48]                           dc.b $00
[000c2a49]                           dc.b $00
[000c2a4a]                           dc.w $1101
[000c2a4c]                           dc.b $00
[000c2a4d]                           dc.b $00
[000c2a4e]                           dc.b $00
[000c2a4f]                           dc.b $00
[000c2a50]                           dc.b $00
[000c2a51]                           dc.b $64
[000c2a52]                           dc.b $00
[000c2a53]                           dc.b $64
pra00:
[000c2a54]                           dc.b $00
[000c2a55]                           dc.b $00
[000c2a56]                           dc.b $00
[000c2a57]                           dc.b $00
[000c2a58]                           dc.b $00
[000c2a59]                           dc.b $00
[000c2a5a]                           dc.b $00
[000c2a5b]                           dc.b $00
[000c2a5c]                           dc.w $8020
[000c2a5e]                           dc.b $00
[000c2a5f]                           dc.b $00
[000c2a60]                           dc.b $00
[000c2a61]                           dc.b $00
[000c2a62]                           dc.b $00
[000c2a63]                           dc.b $00
[000c2a64]                           dc.b $00
[000c2a65]                           dc.b $00
[000c2a66]                           dc.b $00
[000c2a67]                           dc.b $00
[000c2a68]                           dc.b $00
[000c2a69]                           dc.b $00
[000c2a6a]                           dc.b $00
[000c2a6b]                           dc.b $00
proto:
[000c2a6c]                           dc.b $00
[000c2a6d]                           dc.b $00
[000c2a6e]                           dc.w $ffff
[000c2a70]                           dc.w $ffff
[000c2a72]                           dc.b $00
[000c2a73]                           dc.b $1c
[000c2a74]                           dc.w $2005
[000c2a76]                           dc.b $00
[000c2a77]                           dc.b $00
[000c2a78]                           dc.b $00
[000c2a79]                           dc.b $00
[000c2a7a]                           dc.b $00
[000c2a7b]                           dc.b $00
[000c2a7c]                           dc.b $00
[000c2a7d]                           dc.b $02
[000c2a7e]                           dc.w $0400
[000c2a80]                           dc.b $00
[000c2a81]                           dc.b $20
[000c2a82]                           dc.b $00
[000c2a83]                           dc.b $01
pra04:
[000c2a84]                           dc.b $00
[000c2a85]                           dc.b $00
[000c2a86]                           dc.b $00
[000c2a87]                           dc.b $00
[000c2a88]                           dc.b $00
[000c2a89]                           dc.b $00
[000c2a8a]                           dc.b $00
[000c2a8b]                           dc.b $00
[000c2a8c]                           dc.w $8000
[000c2a8e]                           dc.b $00
[000c2a8f]                           dc.b $00
[000c2a90]                           dc.b $00
[000c2a91]                           dc.b $00
[000c2a92]                           dc.b $00
[000c2a93]                           dc.b $00
[000c2a94]                           dc.b $00
[000c2a95]                           dc.b $00
[000c2a96]                           dc.b $00
[000c2a97]                           dc.b $00
[000c2a98]                           dc.b $00
[000c2a99]                           dc.b $00
[000c2a9a]                           dc.w $271c
protoref:
[000c2a9c]                           dc.b $00
[000c2a9d]                           dc.b $00
[000c2a9e]                           dc.b $00
[000c2a9f]                           dc.b $00
[000c2aa0]                           dc.b $00
[000c2aa1]                           dc.b $00
[000c2aa2]                           dc.b $00
[000c2aa3]                           dc.b $00
[000c2aa4]                           dc.b $00
[000c2aa5]                           dc.b $00
[000c2aa6]                           dc.b $00
[000c2aa7]                           dc.b $00
[000c2aa8]                           dc.b $00
[000c2aa9]                           dc.b $00
[000c2aaa]                           dc.b $00
[000c2aab]                           dc.b $00
[000c2aac]                           dc.b $00
[000c2aad]                           dc.b $00
[000c2aae]                           dc.b $00
[000c2aaf]                           dc.b $00
[000c2ab0]                           dc.b $00
[000c2ab1]                           dc.b $00
[000c2ab2]                           dc.b 'REFERENCE_01',0
[000c2abf]                           dc.b $00
[000c2ac0]                           dc.b $00
[000c2ac1]                           dc.b $00
[000c2ac2]                           dc.b $00
[000c2ac3]                           dc.b $00
[000c2ac4]                           dc.b $00
[000c2ac5]                           dc.b $00
[000c2ac6]                           dc.b $00
[000c2ac7]                           dc.b $00
[000c2ac8]                           dc.b $00
[000c2ac9]                           dc.b $00
[000c2aca]                           dc.b $00
[000c2acb]                           dc.b $00
[000c2acc]                           dc.b $00
[000c2acd]                           dc.b $00
[000c2ace]                           dc.b $00
[000c2acf]                           dc.b $00
[000c2ad0]                           dc.b $00
[000c2ad1]                           dc.b $00
[000c2ad2]                           dc.b $00
[000c2ad3]                           dc.b $01
[000c2ad4]                           dc.b $00
[000c2ad5]                           dc.b $00
[000c2ad6]                           dc.b $00
[000c2ad7]                           dc.b $00
[000c2ad8]                           dc.b $00
[000c2ad9]                           dc.b $00
[000c2ada]                           dc.b $00
[000c2adb]                           dc.b $00
[000c2adc]                           dc.b $00
[000c2add]                           dc.b $00
list_reference:
[000c2ade]                           dc.b $00
[000c2adf]                           dc.b $00
[000c2ae0]                           dc.b $00
[000c2ae1]                           dc.b $00
[000c2ae2]                           dc.b $00
[000c2ae3]                           dc.b $00
[000c2ae4]                           dc.b $00
[000c2ae5]                           dc.b $00
[000c2ae6] 0009ea3e                  dc.l WI_REF
[000c2aea] 000c0cb7                  dc.l rf_list
[000c2aee] 000c0cca                  dc.l rf_name
[000c2af2]                           dc.w $271c
[000c2af4] 000c2a9c                  dc.l protoref
[000c2af8] 000344f4                  dc.l copy_ref
[000c2afc] 0003448e                  dc.l del_ref
[000c2b00] 00034534                  dc.l new_work
[000c2b04]                           dc.b $00
[000c2b05]                           dc.b $00
[000c2b06]                           dc.b $00
[000c2b07]                           dc.b $00
free_ref:
[000c2b08]                           dc.b $00
[000c2b09]                           dc.b $00
[000c2b0a]                           dc.b $00
[000c2b0b]                           dc.b $00
[000c2b0c]                           dc.b $00
[000c2b0d]                           dc.b $00
[000c2b0e]                           dc.b $00
[000c2b0f]                           dc.b $00
[000c2b10]                           dc.b $00
[000c2b11]                           dc.b $00
[000c2b12]                           dc.b $00
[000c2b13]                           dc.b $00
[000c2b14]                           dc.b $00
[000c2b15]                           dc.b $00
[000c2b16]                           dc.b $00
[000c2b17]                           dc.b $00
[000c2b18]                           dc.b $00
[000c2b19]                           dc.b $00
[000c2b1a]                           dc.b $00
[000c2b1b]                           dc.b $00
[000c2b1c]                           dc.b $00
[000c2b1d]                           dc.b $00
[000c2b1e]                           dc.b $00
[000c2b1f]                           dc.b $00
[000c2b20]                           dc.b $00
[000c2b21]                           dc.b $00
[000c2b22]                           dc.b $00
[000c2b23]                           dc.b $00
[000c2b24]                           dc.b $00
[000c2b25]                           dc.b $00
[000c2b26]                           dc.b $00
[000c2b27]                           dc.b $00
[000c2b28]                           dc.b $00
[000c2b29]                           dc.b $00
[000c2b2a]                           dc.b $00
[000c2b2b]                           dc.b $00
[000c2b2c]                           dc.b $00
[000c2b2d]                           dc.b $00
[000c2b2e]                           dc.b $00
[000c2b2f]                           dc.b $00
[000c2b30]                           dc.b $00
[000c2b31]                           dc.b $00
[000c2b32]                           dc.b $00
[000c2b33]                           dc.b $00
[000c2b34]                           dc.b $00
[000c2b35]                           dc.b $00
[000c2b36]                           dc.b $00
[000c2b37]                           dc.b $00
[000c2b38]                           dc.b $00
[000c2b39]                           dc.b $00
[000c2b3a]                           dc.b $00
[000c2b3b]                           dc.b $00
[000c2b3c]                           dc.b $00
[000c2b3d]                           dc.b $00
[000c2b3e]                           dc.b $00
[000c2b3f]                           dc.b $01
[000c2b40]                           dc.b $00
[000c2b41]                           dc.b $00
[000c2b42]                           dc.b $00
[000c2b43]                           dc.b $00
[000c2b44]                           dc.b $00
[000c2b45]                           dc.b $00
[000c2b46]                           dc.b $00
[000c2b47]                           dc.b $00
[000c2b48]                           dc.b $00
[000c2b49]                           dc.b $00
