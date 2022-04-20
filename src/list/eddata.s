
add_data:
[000329b4] 48e7 003c                 movem.l    a2-a5,-(a7)
[000329b8] 2448                      movea.l    a0,a2
[000329ba] 2849                      movea.l    a1,a4
[000329bc] 266a 0044                 movea.l    68(a2),a3
[000329c0] 006a 0001 0006            ori.w      #$0001,6(a2)
[000329c6] 3039 0007 8250            move.w     refimages,d0
[000329cc] 6718                      beq.s      add_data_1
[000329ce] 43ec 0016                 lea.l      22(a4),a1
[000329d2] 204b                      movea.l    a3,a0
[000329d4] 4eb9 0003 1a5c            jsr        find_entry
[000329da] b9c8                      cmpa.l     a0,a4
[000329dc] 6608                      bne.s      add_data_1
[000329de] 526c 0036                 addq.w     #1,54(a4)
[000329e2] 204c                      movea.l    a4,a0
[000329e4] 6044                      bra.s      add_data_2
add_data_1:
[000329e6] 7004                      moveq.l    #4,d0
[000329e8] 204b                      movea.l    a3,a0
[000329ea] 4eb9 0001 62aa            jsr        objextent
[000329f0] 4a40                      tst.w      d0
[000329f2] 6610                      bne.s      add_data_3
[000329f4] 224c                      movea.l    a4,a1
[000329f6] 204a                      movea.l    a2,a0
[000329f8] 4eb9 0003 2a30            jsr        copy_data
[000329fe] 2a48                      movea.l    a0,a5
[00032a00] 200d                      move.l     a5,d0
[00032a02] 6604                      bne.s      add_data_4
add_data_3:
[00032a04] 91c8                      suba.l     a0,a0
[00032a06] 6022                      bra.s      add_data_2
add_data_4:
[00032a08] 2f39 000c 1aac            move.l     $000C1AAC,-(a7)
[00032a0e] 486c 0016                 pea.l      22(a4)
[00032a12] 224d                      movea.l    a5,a1
[00032a14] 204a                      movea.l    a2,a0
[00032a16] 4eb9 0001 6448            jsr        objname
[00032a1c] 504f                      addq.w     #8,a7
[00032a1e] 224d                      movea.l    a5,a1
[00032a20] 204b                      movea.l    a3,a0
[00032a22] 4eb9 0003 1a94            jsr        add_entry
[00032a28] 204d                      movea.l    a5,a0
add_data_2:
[00032a2a] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00032a2e] 4e75                      rts

copy_data:
[00032a30] 48e7 003c                 movem.l    a2-a5,-(a7)
[00032a34] 2648                      movea.l    a0,a3
[00032a36] 2449                      movea.l    a1,a2
[00032a38] 202a 000e                 move.l     14(a2),d0
[00032a3c] 4eb9 0001 6230            jsr        objmalloc
[00032a42] 2648                      movea.l    a0,a3
[00032a44] 200b                      move.l     a3,d0
[00032a46] 6604                      bne.s      copy_data_1
[00032a48] 91c8                      suba.l     a0,a0
[00032a4a] 601e                      bra.s      copy_data_2
copy_data_1:
[00032a4c] 276a 000e 000e            move.l     14(a2),14(a3)
[00032a52] 286a 0004                 movea.l    4(a2),a4
[00032a56] 2a6b 0004                 movea.l    4(a3),a5
[00032a5a] 202a 000e                 move.l     14(a2),d0
[00032a5e] 224c                      movea.l    a4,a1
[00032a60] 204d                      movea.l    a5,a0
[00032a62] 4eb9 0007 6f44            jsr        memcpy
[00032a68] 204b                      movea.l    a3,a0
copy_data_2:
[00032a6a] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00032a6e] 4e75                      rts

dup_data:
[00032a70] 2f0a                      move.l     a2,-(a7)
[00032a72] 2f0b                      move.l     a3,-(a7)
[00032a74] 2648                      movea.l    a0,a3
[00032a76] 45f9 000c 1ac6            lea.l      free_data,a2
[00032a7c] 2549 0004                 move.l     a1,4(a2)
[00032a80] 2540 000a                 move.l     d0,10(a2)
[00032a84] 2540 000e                 move.l     d0,14(a2)
[00032a88] 224a                      movea.l    a2,a1
[00032a8a] 204b                      movea.l    a3,a0
[00032a8c] 6100 ff26                 bsr        add_data
[00032a90] 265f                      movea.l    (a7)+,a3
[00032a92] 245f                      movea.l    (a7)+,a2
[00032a94] 4e75                      rts

del_data:
[00032a96] 48e7 003c                 movem.l    a2-a5,-(a7)
[00032a9a] 2448                      movea.l    a0,a2
[00032a9c] 2649                      movea.l    a1,a3
[00032a9e] 006a 0001 0006            ori.w      #$0001,6(a2)
[00032aa4] 536b 0036                 subq.w     #1,54(a3)
[00032aa8] 302b 0036                 move.w     54(a3),d0
[00032aac] 6e2a                      bgt.s      del_data_1
[00032aae] 286b 0012                 movea.l    18(a3),a4
[00032ab2] 220c                      move.l     a4,d1
[00032ab4] 670c                      beq.s      del_data_2
[00032ab6] 2a6c 0004                 movea.l    4(a4),a5
[00032aba] 204c                      movea.l    a4,a0
[00032abc] 7002                      moveq.l    #2,d0
[00032abe] 93c9                      suba.l     a1,a1
[00032ac0] 4e95                      jsr        (a5)
del_data_2:
[00032ac2] 224b                      movea.l    a3,a1
[00032ac4] 206a 0044                 movea.l    68(a2),a0
[00032ac8] 4eb9 0003 1b00            jsr        del_entry
[00032ace] 224b                      movea.l    a3,a1
[00032ad0] 204a                      movea.l    a2,a0
[00032ad2] 4eb9 0001 61d4            jsr        objfree
del_data_1:
[00032ad8] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00032adc] 4e75                      rts

new_work:
[00032ade] 303c 2724                 move.w     #$2724,d0
[00032ae2] 2279 0009 d01e            movea.l    $0009D01E,a1
[00032ae8] 4eb9 0003 24b6            jsr        work_icon
[00032aee] 4e75                      rts

		.data
protodata:
[000c1a5a]                           dc.b $00
[000c1a5b]                           dc.b $00
[000c1a5c]                           dc.b $00
[000c1a5d]                           dc.b $00
[000c1a5e]                           dc.b $00
[000c1a5f]                           dc.b $00
[000c1a60]                           dc.b $00
[000c1a61]                           dc.b $00
[000c1a62]                           dc.b $00
[000c1a63]                           dc.b $00
[000c1a64]                           dc.b $00
[000c1a65]                           dc.b $00
[000c1a66]                           dc.b $00
[000c1a67]                           dc.b $00
[000c1a68]                           dc.b $00
[000c1a69]                           dc.b $00
[000c1a6a]                           dc.b $00
[000c1a6b]                           dc.b $00
[000c1a6c]                           dc.b $00
[000c1a6d]                           dc.b $00
[000c1a6e]                           dc.b $00
[000c1a6f]                           dc.b $00
[000c1a70]                           dc.b 'DATAS_01',0
[000c1a79]                           dc.b $00
[000c1a7a]                           dc.b $00
[000c1a7b]                           dc.b $00
[000c1a7c]                           dc.b $00
[000c1a7d]                           dc.b $00
[000c1a7e]                           dc.b $00
[000c1a7f]                           dc.b $00
[000c1a80]                           dc.b $00
[000c1a81]                           dc.b $00
[000c1a82]                           dc.b $00
[000c1a83]                           dc.b $00
[000c1a84]                           dc.b $00
[000c1a85]                           dc.b $00
[000c1a86]                           dc.b $00
[000c1a87]                           dc.b $00
[000c1a88]                           dc.b $00
[000c1a89]                           dc.b $00
[000c1a8a]                           dc.b $00
[000c1a8b]                           dc.b $00
[000c1a8c]                           dc.b $00
[000c1a8d]                           dc.b $00
[000c1a8e]                           dc.b $00
[000c1a8f]                           dc.b $00
[000c1a90]                           dc.b $00
[000c1a91]                           dc.b $01
[000c1a92]                           dc.b $00
[000c1a93]                           dc.b $00
[000c1a94]                           dc.b $00
[000c1a95]                           dc.b $00
[000c1a96]                           dc.b $00
[000c1a97]                           dc.b $00
[000c1a98]                           dc.b $00
[000c1a99]                           dc.b $00
[000c1a9a]                           dc.b $00
[000c1a9b]                           dc.b $00
list_data:
[000c1a9c]                           dc.b $00
[000c1a9d]                           dc.b $00
[000c1a9e]                           dc.b $00
[000c1a9f]                           dc.b $00
[000c1aa0]                           dc.b $00
[000c1aa1]                           dc.b $00
[000c1aa2]                           dc.b $00
[000c1aa3]                           dc.b $00
[000c1aa4] 0009cfc4                  dc.l WI_DATA
[000c1aa8] 000c0bf2                  dc.l if_list
[000c1aac] 000c0c00                  dc.l if_name
[000c1ab0]                           dc.w $2724
[000c1ab2] 000c1a5a                  dc.l protodata
[000c1ab6] 00032a30                  dc.l copy_data
[000c1aba] 00032a96                  dc.l del_data
[000c1abe] 00032ade                  dc.l new_work
[000c1ac2]                           dc.b $00
[000c1ac3]                           dc.b $00
[000c1ac4]                           dc.b $00
[000c1ac5]                           dc.b $00
free_data:
[000c1ac6]                           dc.b $00
[000c1ac7]                           dc.b $00
[000c1ac8]                           dc.b $00
[000c1ac9]                           dc.b $00
[000c1aca]                           dc.b $00
[000c1acb]                           dc.b $00
[000c1acc]                           dc.b $00
[000c1acd]                           dc.b $00
[000c1ace]                           dc.b $00
[000c1acf]                           dc.b $00
[000c1ad0]                           dc.b $00
[000c1ad1]                           dc.b $00
[000c1ad2]                           dc.b $00
[000c1ad3]                           dc.b $00
[000c1ad4]                           dc.b $00
[000c1ad5]                           dc.b $00
[000c1ad6]                           dc.b $00
[000c1ad7]                           dc.b $00
[000c1ad8]                           dc.b $00
[000c1ad9]                           dc.b $00
[000c1ada]                           dc.b $00
[000c1adb]                           dc.b $00
[000c1adc]                           dc.b 'DATAS_01',0
[000c1ae5]                           dc.b $00
[000c1ae6]                           dc.b $00
[000c1ae7]                           dc.b $00
[000c1ae8]                           dc.b $00
[000c1ae9]                           dc.b $00
[000c1aea]                           dc.b $00
[000c1aeb]                           dc.b $00
[000c1aec]                           dc.b $00
[000c1aed]                           dc.b $00
[000c1aee]                           dc.b $00
[000c1aef]                           dc.b $00
[000c1af0]                           dc.b $00
[000c1af1]                           dc.b $00
[000c1af2]                           dc.b $00
[000c1af3]                           dc.b $00
[000c1af4]                           dc.b $00
[000c1af5]                           dc.b $00
[000c1af6]                           dc.b $00
[000c1af7]                           dc.b $00
[000c1af8]                           dc.b $00
[000c1af9]                           dc.b $00
[000c1afa]                           dc.b $00
[000c1afb]                           dc.b $00
[000c1afc]                           dc.b $00
[000c1afd]                           dc.b $01
[000c1afe]                           dc.b $00
[000c1aff]                           dc.b $00
[000c1b00]                           dc.b $00
[000c1b01]                           dc.b $00
[000c1b02]                           dc.b $00
[000c1b03]                           dc.b $00
[000c1b04]                           dc.b $00
[000c1b05]                           dc.b $00
[000c1b06]                           dc.b $00
[000c1b07]                           dc.b $00
