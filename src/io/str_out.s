
out_string:
[0001ad5e] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[0001ad62] 2648                      movea.l    a0,a3
[0001ad64] 2449                      movea.l    a1,a2
[0001ad66] 286f 0020                 movea.l    32(a7),a4
[0001ad6a] 262b 000e                 move.l     14(a3),d3
[0001ad6e] e48b                      lsr.l      #2,d3
[0001ad70] 4a43                      tst.w      d3
[0001ad72] 6f00 0090                 ble        out_string_1
[0001ad76] 41ea 0016                 lea.l      22(a2),a0
[0001ad7a] 4eb9 0001 800e            jsr        info_list
[0001ad80] 266b 0004                 movea.l    4(a3),a3
[0001ad84] 204c                      movea.l    a4,a0
[0001ad86] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0001ad8c] 4a40                      tst.w      d0
[0001ad8e] 6608                      bne.s      out_string_2
[0001ad90] 204c                      movea.l    a4,a0
[0001ad92] 4eb9 0001 65f6            jsr        save_string
out_string_2:
[0001ad98] 4244                      clr.w      d4
[0001ad9a] 4df9 000f b02a            lea.l      iostring,a6
[0001ada0] 605e                      bra.s      out_string_3
out_string_5:
[0001ada2] 3004                      move.w     d4,d0
[0001ada4] 48c0                      ext.l      d0
[0001ada6] e588                      lsl.l      #2,d0
[0001ada8] 2873 0800                 movea.l    0(a3,d0.l),a4
[0001adac] 206a 0004                 movea.l    4(a2),a0
[0001adb0] 2a70 0800                 movea.l    0(a0,d0.l),a5
[0001adb4] 43f9 0009 aaeb            lea.l      $0009AAEB,a1
[0001adba] 41ed 0016                 lea.l      22(a5),a0
[0001adbe] 7004                      moveq.l    #4,d0
[0001adc0] 4eb9 0007 69fc            jsr        strncmp
[0001adc6] 4a40                      tst.w      d0
[0001adc8] 6734                      beq.s      out_string_4
[0001adca] 41ec 0016                 lea.l      22(a4),a0
[0001adce] 4eb9 0001 8066            jsr        info_obj
[0001add4] 2f2c 000e                 move.l     14(a4),-(a7)
[0001add8] 486d 0016                 pea.l      22(a5)
[0001addc] 43f9 0009 aaf0            lea.l      $0009AAF0,a1
[0001ade2] 204e                      movea.l    a6,a0
[0001ade4] 4eb9 0007 5680            jsr        sprintf
[0001adea] 504f                      addq.w     #8,a7
[0001adec] 204e                      movea.l    a6,a0
[0001adee] 4eb9 0001 65f6            jsr        save_string
[0001adf4] 703b                      moveq.l    #59,d0
[0001adf6] 206c 0004                 movea.l    4(a4),a0
[0001adfa] 6100 eee0                 bsr        p_string
out_string_4:
[0001adfe] 5244                      addq.w     #1,d4
out_string_3:
[0001ae00] b644                      cmp.w      d4,d3
[0001ae02] 6e9e                      bgt.s      out_string_5
out_string_1:
[0001ae04] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[0001ae08] 4e75                      rts

out_tedi:
[0001ae0a] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0001ae0e] 2448                      movea.l    a0,a2
[0001ae10] 262a 000e                 move.l     14(a2),d3
[0001ae14] e48b                      lsr.l      #2,d3
[0001ae16] 4a43                      tst.w      d3
[0001ae18] 6f00 0096                 ble        out_tedi_1
[0001ae1c] 41ea 0016                 lea.l      22(a2),a0
[0001ae20] 4eb9 0001 800e            jsr        info_list
[0001ae26] 246a 0004                 movea.l    4(a2),a2
[0001ae2a] 41f9 0009 ab15            lea.l      $0009AB15,a0
[0001ae30] 4eb9 0001 65f6            jsr        save_string
[0001ae36] 4244                      clr.w      d4
[0001ae38] 4bf9 000f b02a            lea.l      iostring,a5
[0001ae3e] 606c                      bra.s      out_tedi_2
out_tedi_3:
[0001ae40] 3004                      move.w     d4,d0
[0001ae42] 48c0                      ext.l      d0
[0001ae44] e588                      lsl.l      #2,d0
[0001ae46] 2672 0800                 movea.l    0(a2,d0.l),a3
[0001ae4a] 41eb 0016                 lea.l      22(a3),a0
[0001ae4e] 4eb9 0001 8066            jsr        info_obj
[0001ae54] 286b 0004                 movea.l    4(a3),a4
[0001ae58] 206c 0004                 movea.l    4(a4),a0
[0001ae5c] 2f28 000e                 move.l     14(a0),-(a7)
[0001ae60] 2254                      movea.l    (a4),a1
[0001ae62] 2f29 000e                 move.l     14(a1),-(a7)
[0001ae66] 3f2c 0016                 move.w     22(a4),-(a7)
[0001ae6a] 3f2c 0012                 move.w     18(a4),-(a7)
[0001ae6e] 3f2c 0010                 move.w     16(a4),-(a7)
[0001ae72] 3f2c 000c                 move.w     12(a4),-(a7)
[0001ae76] 206c 0008                 movea.l    8(a4),a0
[0001ae7a] 4868 0016                 pea.l      22(a0)
[0001ae7e] 226c 0004                 movea.l    4(a4),a1
[0001ae82] 4869 0016                 pea.l      22(a1)
[0001ae86] 2054                      movea.l    (a4),a0
[0001ae88] 4868 0016                 pea.l      22(a0)
[0001ae8c] 486b 0016                 pea.l      22(a3)
[0001ae90] 43f9 0009 ab2e            lea.l      $0009AB2E,a1
[0001ae96] 204d                      movea.l    a5,a0
[0001ae98] 4eb9 0007 5680            jsr        sprintf
[0001ae9e] 4fef 0020                 lea.l      32(a7),a7
[0001aea2] 204d                      movea.l    a5,a0
[0001aea4] 4eb9 0001 65f6            jsr        save_string
[0001aeaa] 5244                      addq.w     #1,d4
out_tedi_2:
[0001aeac] b644                      cmp.w      d4,d3
[0001aeae] 6e90                      bgt.s      out_tedi_3
out_tedi_1:
[0001aeb0] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0001aeb4] 4e75                      rts

out_user:
[0001aeb6] 48e7 181e                 movem.l    d3-d4/a3-a6,-(a7)
[0001aeba] 4fef ffe8                 lea.l      -24(a7),a7
[0001aebe] 2f48 0014                 move.l     a0,20(a7)
[0001aec2] 2628 000e                 move.l     14(a0),d3
[0001aec6] e48b                      lsr.l      #2,d3
[0001aec8] 4a43                      tst.w      d3
[0001aeca] 6f00 015c                 ble        out_user_1
[0001aece] 41e8 0016                 lea.l      22(a0),a0
[0001aed2] 4eb9 0001 800e            jsr        info_list
[0001aed8] 206f 0014                 movea.l    20(a7),a0
[0001aedc] 2f68 0004 0010            move.l     4(a0),16(a7)
[0001aee2] 47f9 0009 9f7e            lea.l      $00099F7E,a3
[0001aee8] 41eb 0c5b                 lea.l      3163(a3),a0
[0001aeec] 4eb9 0001 65f6            jsr        save_string
[0001aef2] 4244                      clr.w      d4
[0001aef4] 4bf9 000f b02a            lea.l      iostring,a5
[0001aefa] 6000 0126                 bra        out_user_2
out_user_5:
[0001aefe] 3004                      move.w     d4,d0
[0001af00] 48c0                      ext.l      d0
[0001af02] e588                      lsl.l      #2,d0
[0001af04] 206f 0010                 movea.l    16(a7),a0
[0001af08] 2c70 0800                 movea.l    0(a0,d0.l),a6
[0001af0c] 41ee 0016                 lea.l      22(a6),a0
[0001af10] 4eb9 0001 8066            jsr        info_obj
[0001af16] 286e 0004                 movea.l    4(a6),a4
[0001af1a] 2054                      movea.l    (a4),a0
[0001af1c] 4868 0016                 pea.l      22(a0)
[0001af20] 486e 0016                 pea.l      22(a6)
[0001af24] 43eb 0c74                 lea.l      3188(a3),a1
[0001af28] 204d                      movea.l    a5,a0
[0001af2a] 4eb9 0007 5680            jsr        sprintf
[0001af30] 504f                      addq.w     #8,a7
[0001af32] 204d                      movea.l    a5,a0
[0001af34] 4eb9 0001 65f6            jsr        save_string
[0001af3a] 2c6c 0004                 movea.l    4(a4),a6
[0001af3e] 4dee 0016                 lea.l      22(a6),a6
[0001af42] 0c16 0030                 cmpi.b     #$30,(a6)
[0001af46] 6632                      bne.s      out_user_3
[0001af48] 0c2e 0078 0001            cmpi.b     #$78,1(a6)
[0001af4e] 662a                      bne.s      out_user_3
[0001af50] 43ee 0002                 lea.l      2(a6),a1
[0001af54] 41d7                      lea.l      (a7),a0
[0001af56] 4eb9 0007 6950            jsr        strcpy
[0001af5c] 41d7                      lea.l      (a7),a0
[0001af5e] 4eb9 0007 69b0            jsr        strlen
[0001af64] 4237 00ff                 clr.b      -1(a7,d0.w)
[0001af68] 4857                      pea.l      (a7)
[0001af6a] 43eb 0c9b                 lea.l      3227(a3),a1
[0001af6e] 204d                      movea.l    a5,a0
[0001af70] 4eb9 0007 5680            jsr        sprintf
[0001af76] 584f                      addq.w     #4,a7
[0001af78] 6010                      bra.s      out_user_4
out_user_3:
[0001af7a] 2f0e                      move.l     a6,-(a7)
[0001af7c] 43eb 0015                 lea.l      21(a3),a1
[0001af80] 204d                      movea.l    a5,a0
[0001af82] 4eb9 0007 5680            jsr        sprintf
[0001af88] 584f                      addq.w     #4,a7
out_user_4:
[0001af8a] 204d                      movea.l    a5,a0
[0001af8c] 4eb9 0001 65f6            jsr        save_string
[0001af92] 41eb 0c9f                 lea.l      3231(a3),a0
[0001af96] 4eb9 0001 65f6            jsr        save_string
[0001af9c] 43eb 0406                 lea.l      1030(a3),a1
[0001afa0] 206c 0008                 movea.l    8(a4),a0
[0001afa4] 6100 ee22                 bsr        out_label
[0001afa8] 41eb 0cab                 lea.l      3243(a3),a0
[0001afac] 4eb9 0001 65f6            jsr        save_string
[0001afb2] 43eb 0406                 lea.l      1030(a3),a1
[0001afb6] 206c 000c                 movea.l    12(a4),a0
[0001afba] 6100 ee4a                 bsr        out_label2
[0001afbe] 41eb 0cb7                 lea.l      3255(a3),a0
[0001afc2] 4eb9 0001 65f6            jsr        save_string
[0001afc8] 43eb 0406                 lea.l      1030(a3),a1
[0001afcc] 206c 0010                 movea.l    16(a4),a0
[0001afd0] 6100 ee34                 bsr        out_label2
[0001afd4] 41eb 0cc3                 lea.l      3267(a3),a0
[0001afd8] 4eb9 0001 65f6            jsr        save_string
[0001afde] 43eb 0406                 lea.l      1030(a3),a1
[0001afe2] 206c 0014                 movea.l    20(a4),a0
[0001afe6] 6100 ee1e                 bsr        out_label2
[0001afea] 41eb 0ccf                 lea.l      3279(a3),a0
[0001afee] 4eb9 0001 65f6            jsr        save_string
[0001aff4] 43eb 0406                 lea.l      1030(a3),a1
[0001aff8] 206c 0018                 movea.l    24(a4),a0
[0001affc] 6100 ee08                 bsr        out_label2
[0001b000] 41eb 0cda                 lea.l      3290(a3),a0
[0001b004] 4eb9 0001 65f6            jsr        save_string
[0001b00a] 43eb 0406                 lea.l      1030(a3),a1
[0001b00e] 206c 001c                 movea.l    28(a4),a0
[0001b012] 6100 edf2                 bsr        out_label2
[0001b016] 41eb 0208                 lea.l      520(a3),a0
[0001b01a] 4eb9 0001 65f6            jsr        save_string
[0001b020] 5244                      addq.w     #1,d4
out_user_2:
[0001b022] b644                      cmp.w      d4,d3
[0001b024] 6e00 fed8                 bgt        out_user_5
out_user_1:
[0001b028] 4fef 0018                 lea.l      24(a7),a7
[0001b02c] 4cdf 7818                 movem.l    (a7)+,d3-d4/a3-a6
[0001b030] 4e75                      rts

out_data:
[0001b032] 48e7 1e3c                 movem.l    d3-d6/a2-a5,-(a7)
[0001b036] 2448                      movea.l    a0,a2
[0001b038] 262a 000e                 move.l     14(a2),d3
[0001b03c] e48b                      lsr.l      #2,d3
[0001b03e] 4a43                      tst.w      d3
[0001b040] 6f00 00c2                 ble        out_data_1
[0001b044] 41ea 0016                 lea.l      22(a2),a0
[0001b048] 4eb9 0001 800e            jsr        info_list
[0001b04e] 246a 0004                 movea.l    4(a2),a2
[0001b052] 47f9 0009 9f7e            lea.l      $00099F7E,a3
[0001b058] 41eb 0ce6                 lea.l      3302(a3),a0
[0001b05c] 4eb9 0001 65f6            jsr        save_string
[0001b062] 4244                      clr.w      d4
[0001b064] 49f9 000f b02a            lea.l      iostring,a4
[0001b06a] 6000 0092                 bra        out_data_2
out_data_7:
[0001b06e] 3004                      move.w     d4,d0
[0001b070] 48c0                      ext.l      d0
[0001b072] e588                      lsl.l      #2,d0
[0001b074] 2a72 0800                 movea.l    0(a2,d0.l),a5
[0001b078] 41ed 0016                 lea.l      22(a5),a0
[0001b07c] 4eb9 0001 8066            jsr        info_obj
[0001b082] 7aff                      moveq.l    #-1,d5
[0001b084] daad 000e                 add.l      14(a5),d5
[0001b088] e285                      asr.l      #1,d5
[0001b08a] 4a85                      tst.l      d5
[0001b08c] 6f6e                      ble.s      out_data_3
[0001b08e] 2f05                      move.l     d5,-(a7)
[0001b090] 486d 0016                 pea.l      22(a5)
[0001b094] 43eb 0cfc                 lea.l      3324(a3),a1
[0001b098] 204c                      movea.l    a4,a0
[0001b09a] 4eb9 0007 5680            jsr        sprintf
[0001b0a0] 504f                      addq.w     #8,a7
[0001b0a2] 204c                      movea.l    a4,a0
[0001b0a4] 4eb9 0001 65f6            jsr        save_string
[0001b0aa] 2a6d 0004                 movea.l    4(a5),a5
[0001b0ae] 7c00                      moveq.l    #0,d6
[0001b0b0] 602e                      bra.s      out_data_4
out_data_6:
[0001b0b2] 3f1d                      move.w     (a5)+,-(a7)
[0001b0b4] 43eb 06f3                 lea.l      1779(a3),a1
[0001b0b8] 204c                      movea.l    a4,a0
[0001b0ba] 4eb9 0007 5680            jsr        sprintf
[0001b0c0] 544f                      addq.w     #2,a7
[0001b0c2] 204c                      movea.l    a4,a0
[0001b0c4] 4eb9 0001 65f6            jsr        save_string
[0001b0ca] 7007                      moveq.l    #7,d0
[0001b0cc] c086                      and.l      d6,d0
[0001b0ce] 7207                      moveq.l    #7,d1
[0001b0d0] b280                      cmp.l      d0,d1
[0001b0d2] 660a                      bne.s      out_data_5
[0001b0d4] 41eb 08fb                 lea.l      2299(a3),a0
[0001b0d8] 4eb9 0001 65f6            jsr        save_string
out_data_5:
[0001b0de] 5286                      addq.l     #1,d6
out_data_4:
[0001b0e0] ba86                      cmp.l      d6,d5
[0001b0e2] 6ece                      bgt.s      out_data_6
[0001b0e4] 3f1d                      move.w     (a5)+,-(a7)
[0001b0e6] 43eb 0732                 lea.l      1842(a3),a1
[0001b0ea] 204c                      movea.l    a4,a0
[0001b0ec] 4eb9 0007 5680            jsr        sprintf
[0001b0f2] 544f                      addq.w     #2,a7
[0001b0f4] 204c                      movea.l    a4,a0
[0001b0f6] 4eb9 0001 65f6            jsr        save_string
out_data_3:
[0001b0fc] 5244                      addq.w     #1,d4
out_data_2:
[0001b0fe] b644                      cmp.w      d4,d3
[0001b100] 6e00 ff6c                 bgt        out_data_7
out_data_1:
[0001b104] 4cdf 3c78                 movem.l    (a7)+,d3-d6/a2-a5
[0001b108] 4e75                      rts

out_window:
[0001b10a] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[0001b10e] 2448                      movea.l    a0,a2
[0001b110] 262a 000e                 move.l     14(a2),d3
[0001b114] e48b                      lsr.l      #2,d3
[0001b116] 4a43                      tst.w      d3
[0001b118] 6f00 02ca                 ble        out_window_1
[0001b11c] 41ea 0016                 lea.l      22(a2),a0
[0001b120] 4eb9 0001 800e            jsr        info_list
[0001b126] 246a 0004                 movea.l    4(a2),a2
[0001b12a] 47f9 0009 9f7e            lea.l      $00099F7E,a3
[0001b130] 41eb 0d22                 lea.l      3362(a3),a0
[0001b134] 4eb9 0001 65f6            jsr        save_string
[0001b13a] 4244                      clr.w      d4
[0001b13c] 4df9 000f b02a            lea.l      iostring,a6
[0001b142] 6000 029a                 bra        out_window_2
out_window_3:
[0001b146] 3004                      move.w     d4,d0
[0001b148] 48c0                      ext.l      d0
[0001b14a] e588                      lsl.l      #2,d0
[0001b14c] 2872 0800                 movea.l    0(a2,d0.l),a4
[0001b150] 41ec 0016                 lea.l      22(a4),a0
[0001b154] 4eb9 0001 8066            jsr        info_obj
[0001b15a] 2a6c 0004                 movea.l    4(a4),a5
[0001b15e] 486c 0016                 pea.l      22(a4)
[0001b162] 43eb 0d3a                 lea.l      3386(a3),a1
[0001b166] 204e                      movea.l    a6,a0
[0001b168] 4eb9 0007 5680            jsr        sprintf
[0001b16e] 584f                      addq.w     #4,a7
[0001b170] 204e                      movea.l    a6,a0
[0001b172] 4eb9 0001 65f6            jsr        save_string
[0001b178] 41eb 0d4f                 lea.l      3407(a3),a0
[0001b17c] 4eb9 0001 65f6            jsr        save_string
[0001b182] 43eb 0406                 lea.l      1030(a3),a1
[0001b186] 2055                      movea.l    (a5),a0
[0001b188] 6100 ec7c                 bsr        out_label2
[0001b18c] 41eb 0d58                 lea.l      3416(a3),a0
[0001b190] 4eb9 0001 65f6            jsr        save_string
[0001b196] 43eb 0d67                 lea.l      3431(a3),a1
[0001b19a] 206d 0004                 movea.l    4(a5),a0
[0001b19e] 6100 ec28                 bsr        out_label
[0001b1a2] 41eb 0d73                 lea.l      3443(a3),a0
[0001b1a6] 4eb9 0001 65f6            jsr        save_string
[0001b1ac] 43eb 0d81                 lea.l      3457(a3),a1
[0001b1b0] 206d 0008                 movea.l    8(a5),a0
[0001b1b4] 6100 ec12                 bsr        out_label
[0001b1b8] 41eb 0d90                 lea.l      3472(a3),a0
[0001b1bc] 4eb9 0001 65f6            jsr        save_string
[0001b1c2] 43eb 0d9c                 lea.l      3484(a3),a1
[0001b1c6] 206d 000c                 movea.l    12(a5),a0
[0001b1ca] 6100 ebfc                 bsr        out_label
[0001b1ce] 41eb 0da5                 lea.l      3493(a3),a0
[0001b1d2] 4eb9 0001 65f6            jsr        save_string
[0001b1d8] 43eb 0db1                 lea.l      3505(a3),a1
[0001b1dc] 206d 0010                 movea.l    16(a5),a0
[0001b1e0] 6100 ebe6                 bsr        out_label
[0001b1e4] 41eb 0dba                 lea.l      3514(a3),a0
[0001b1e8] 4eb9 0001 65f6            jsr        save_string
[0001b1ee] 43eb 0406                 lea.l      1030(a3),a1
[0001b1f2] 206d 0014                 movea.l    20(a5),a0
[0001b1f6] 6100 ec0e                 bsr        out_label2
[0001b1fa] 41eb 0dc6                 lea.l      3526(a3),a0
[0001b1fe] 4eb9 0001 65f6            jsr        save_string
[0001b204] 43eb 0406                 lea.l      1030(a3),a1
[0001b208] 206d 0018                 movea.l    24(a5),a0
[0001b20c] 6100 ebf8                 bsr        out_label2
[0001b210] 41eb 0dd5                 lea.l      3541(a3),a0
[0001b214] 4eb9 0001 65f6            jsr        save_string
[0001b21a] 3f2d 002a                 move.w     42(a5),-(a7)
[0001b21e] 3f2d 0028                 move.w     40(a5),-(a7)
[0001b222] 3f2d 0026                 move.w     38(a5),-(a7)
[0001b226] 3f2d 0024                 move.w     36(a5),-(a7)
[0001b22a] 3f2d 0022                 move.w     34(a5),-(a7)
[0001b22e] 43eb 0dfe                 lea.l      3582(a3),a1
[0001b232] 204e                      movea.l    a6,a0
[0001b234] 4eb9 0007 5680            jsr        sprintf
[0001b23a] 4fef 000a                 lea.l      10(a7),a7
[0001b23e] 204e                      movea.l    a6,a0
[0001b240] 4eb9 0001 65f6            jsr        save_string
[0001b246] 41eb 0e3c                 lea.l      3644(a3),a0
[0001b24a] 4eb9 0001 65f6            jsr        save_string
[0001b250] 3f2d 0048                 move.w     72(a5),-(a7)
[0001b254] 43eb 0e69                 lea.l      3689(a3),a1
[0001b258] 204e                      movea.l    a6,a0
[0001b25a] 4eb9 0007 5680            jsr        sprintf
[0001b260] 544f                      addq.w     #2,a7
[0001b262] 204e                      movea.l    a6,a0
[0001b264] 4eb9 0001 65f6            jsr        save_string
[0001b26a] 41eb 0e7f                 lea.l      3711(a3),a0
[0001b26e] 4eb9 0001 65f6            jsr        save_string
[0001b274] 43eb 0406                 lea.l      1030(a3),a1
[0001b278] 206d 004a                 movea.l    74(a5),a0
[0001b27c] 6100 eb88                 bsr        out_label2
[0001b280] 41eb 0e8a                 lea.l      3722(a3),a0
[0001b284] 4eb9 0001 65f6            jsr        save_string
[0001b28a] 43eb 0406                 lea.l      1030(a3),a1
[0001b28e] 206d 004e                 movea.l    78(a5),a0
[0001b292] 6100 eb72                 bsr        out_label2
[0001b296] 3f2d 0054                 move.w     84(a5),-(a7)
[0001b29a] 3f2d 0052                 move.w     82(a5),-(a7)
[0001b29e] 43eb 0e93                 lea.l      3731(a3),a1
[0001b2a2] 204e                      movea.l    a6,a0
[0001b2a4] 4eb9 0007 5680            jsr        sprintf
[0001b2aa] 584f                      addq.w     #4,a7
[0001b2ac] 204e                      movea.l    a6,a0
[0001b2ae] 4eb9 0001 65f6            jsr        save_string
[0001b2b4] 41eb 0ebe                 lea.l      3774(a3),a0
[0001b2b8] 4eb9 0001 65f6            jsr        save_string
[0001b2be] 43eb 0406                 lea.l      1030(a3),a1
[0001b2c2] 206d 005a                 movea.l    90(a5),a0
[0001b2c6] 6100 eb3e                 bsr        out_label2
[0001b2ca] 41eb 0ecd                 lea.l      3789(a3),a0
[0001b2ce] 4eb9 0001 65f6            jsr        save_string
[0001b2d4] 43eb 0406                 lea.l      1030(a3),a1
[0001b2d8] 206d 005e                 movea.l    94(a5),a0
[0001b2dc] 6100 eb28                 bsr        out_label2
[0001b2e0] 41eb 0ed9                 lea.l      3801(a3),a0
[0001b2e4] 4eb9 0001 65f6            jsr        save_string
[0001b2ea] 43eb 0ee5                 lea.l      3813(a3),a1
[0001b2ee] 206d 0062                 movea.l    98(a5),a0
[0001b2f2] 6100 ead4                 bsr        out_label
[0001b2f6] 41eb 0eee                 lea.l      3822(a3),a0
[0001b2fa] 4eb9 0001 65f6            jsr        save_string
[0001b300] 43eb 0efe                 lea.l      3838(a3),a1
[0001b304] 206d 0066                 movea.l    102(a5),a0
[0001b308] 6100 eabe                 bsr        out_label
[0001b30c] 41eb 0f0b                 lea.l      3851(a3),a0
[0001b310] 4eb9 0001 65f6            jsr        save_string
[0001b316] 43eb 0f19                 lea.l      3865(a3),a1
[0001b31a] 206d 006a                 movea.l    106(a5),a0
[0001b31e] 6100 eaa8                 bsr        out_label
[0001b322] 41eb 0f24                 lea.l      3876(a3),a0
[0001b326] 4eb9 0001 65f6            jsr        save_string
[0001b32c] 43eb 0f32                 lea.l      3890(a3),a1
[0001b330] 206d 006e                 movea.l    110(a5),a0
[0001b334] 6100 ea92                 bsr        out_label
[0001b338] 41eb 0f3d                 lea.l      3901(a3),a0
[0001b33c] 4eb9 0001 65f6            jsr        save_string
[0001b342] 43eb 0f4b                 lea.l      3915(a3),a1
[0001b346] 206d 0072                 movea.l    114(a5),a0
[0001b34a] 6100 ea7c                 bsr        out_label
[0001b34e] 41eb 0f56                 lea.l      3926(a3),a0
[0001b352] 4eb9 0001 65f6            jsr        save_string
[0001b358] 43eb 0f64                 lea.l      3940(a3),a1
[0001b35c] 206d 0076                 movea.l    118(a5),a0
[0001b360] 6100 ea66                 bsr        out_label
[0001b364] 41eb 0f6f                 lea.l      3951(a3),a0
[0001b368] 4eb9 0001 65f6            jsr        save_string
[0001b36e] 43eb 0f7e                 lea.l      3966(a3),a1
[0001b372] 206d 007a                 movea.l    122(a5),a0
[0001b376] 6100 ea50                 bsr        out_label
[0001b37a] 41eb 0f8a                 lea.l      3978(a3),a0
[0001b37e] 4eb9 0001 65f6            jsr        save_string
[0001b384] 43eb 0f97                 lea.l      3991(a3),a1
[0001b388] 206d 007e                 movea.l    126(a5),a0
[0001b38c] 6100 ea3a                 bsr        out_label
[0001b390] 41eb 0fa1                 lea.l      4001(a3),a0
[0001b394] 4eb9 0001 65f6            jsr        save_string
[0001b39a] 43eb 0fae                 lea.l      4014(a3),a1
[0001b39e] 206d 0082                 movea.l    130(a5),a0
[0001b3a2] 6100 ea24                 bsr        out_label
[0001b3a6] 41eb 0fb8                 lea.l      4024(a3),a0
[0001b3aa] 4eb9 0001 65f6            jsr        save_string
[0001b3b0] 43eb 0fc5                 lea.l      4037(a3),a1
[0001b3b4] 206d 0086                 movea.l    134(a5),a0
[0001b3b8] 6100 ea0e                 bsr        out_label
[0001b3bc] 41eb 0fcf                 lea.l      4047(a3),a0
[0001b3c0] 4eb9 0001 65f6            jsr        save_string
[0001b3c6] 43eb 0fdc                 lea.l      4060(a3),a1
[0001b3ca] 206d 008a                 movea.l    138(a5),a0
[0001b3ce] 6100 e9f8                 bsr        out_label
[0001b3d2] 41eb 0870                 lea.l      2160(a3),a0
[0001b3d6] 4eb9 0001 65f6            jsr        save_string
[0001b3dc] 5244                      addq.w     #1,d4
out_window_2:
[0001b3de] b644                      cmp.w      d4,d3
[0001b3e0] 6e00 fd64                 bgt        out_window_3
out_window_1:
[0001b3e4] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[0001b3e8] 4e75                      rts

pp_output:
[0001b3ea] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[0001b3ee] 4fef ff78                 lea.l      -136(a7),a7
[0001b3f2] 2448                      movea.l    a0,a2
[0001b3f4] 705c                      moveq.l    #92,d0
[0001b3f6] 206a 0008                 movea.l    8(a2),a0
[0001b3fa] 4eb9 0007 68e2            jsr        strrchr
[0001b400] 5248                      addq.w     #1,a0
[0001b402] 2e88                      move.l     a0,(a7)
[0001b404] 49ef 0004                 lea.l      4(a7),a4
[0001b408] 226a 0008                 movea.l    8(a2),a1
[0001b40c] 204c                      movea.l    a4,a0
[0001b40e] 4eb9 0007 6950            jsr        strcpy
[0001b414] 702e                      moveq.l    #46,d0
[0001b416] 204c                      movea.l    a4,a0
[0001b418] 4eb9 0007 68e2            jsr        strrchr
[0001b41e] 2648                      movea.l    a0,a3
[0001b420] 4bf9 0009 9f7e            lea.l      $00099F7E,a5
[0001b426] 43ed 0fe6                 lea.l      4070(a5),a1
[0001b42a] 204b                      movea.l    a3,a0
[0001b42c] 4eb9 0007 6950            jsr        strcpy
[0001b432] 4240                      clr.w      d0
[0001b434] 204c                      movea.l    a4,a0
[0001b436] 4eb9 0007 29be            jsr        Fcreate
[0001b43c] 2600                      move.l     d0,d3
[0001b43e] 4a43                      tst.w      d3
[0001b440] 6a14                      bpl.s      pp_output_1
[0001b442] 2057                      movea.l    (a7),a0
[0001b444] 7009                      moveq.l    #9,d0
[0001b446] 2279 0010 1f12            movea.l    ACSblk,a1
[0001b44c] 2269 03d6                 movea.l    982(a1),a1
[0001b450] 4e91                      jsr        (a1)
[0001b452] 6000 036a                 bra        pp_output_2
pp_output_1:
[0001b456] 204c                      movea.l    a4,a0
[0001b458] 4eb9 0001 7ec6            jsr        info_start
[0001b45e] 41ed 0fe9                 lea.l      4073(a5),a0
[0001b462] 4eb9 0001 7faa            jsr        info_title
[0001b468] 3003                      move.w     d3,d0
[0001b46a] 4eb9 0001 653e            jsr        set_handle
[0001b470] 4eb9 0007 5162            jsr        setjmp
[0001b476] 4a40                      tst.w      d0
[0001b478] 6714                      beq.s      pp_output_3
[0001b47a] 91c8                      suba.l     a0,a0
[0001b47c] 700a                      moveq.l    #10,d0
[0001b47e] 2279 0010 1f12            movea.l    ACSblk,a1
[0001b484] 2269 03d6                 movea.l    982(a1),a1
[0001b488] 4e91                      jsr        (a1)
[0001b48a] 6000 0324                 bra        pp_output_4
pp_output_3:
[0001b48e] 91c8                      suba.l     a0,a0
[0001b490] 4eb9 0007 539e            jsr        time
[0001b496] 2f40 0084                 move.l     d0,132(a7)
[0001b49a] 4213                      clr.b      (a3)
[0001b49c] 47f9 000f b02a            lea.l      iostring,a3
[0001b4a2] 2f2a 0008                 move.l     8(a2),-(a7)
[0001b4a6] 41ef 0088                 lea.l      136(a7),a0
[0001b4aa] 4eb9 0007 531e            jsr        ctime
[0001b4b0] 2f08                      move.l     a0,-(a7)
[0001b4b2] 43f9 0009 850c            lea.l      pp_welcome,a1
[0001b4b8] 204b                      movea.l    a3,a0
[0001b4ba] 4eb9 0007 5680            jsr        sprintf
[0001b4c0] 504f                      addq.w     #8,a7
[0001b4c2] 204b                      movea.l    a3,a0
[0001b4c4] 4eb9 0001 65f6            jsr        save_string
[0001b4ca] 41ed 0ffa                 lea.l      4090(a5),a0
[0001b4ce] 4eb9 0001 65f6            jsr        save_string
[0001b4d4] 41ed 101e                 lea.l      4126(a5),a0
[0001b4d8] 4eb9 0001 65f6            jsr        save_string
[0001b4de] 41ed 1036                 lea.l      4150(a5),a0
[0001b4e2] 4eb9 0001 65f6            jsr        save_string
[0001b4e8] 4244                      clr.w      d4
[0001b4ea] 603c                      bra.s      pp_output_5
pp_output_8:
[0001b4ec] 7a01                      moveq.l    #1,d5
[0001b4ee] da44                      add.w      d4,d5
[0001b4f0] 602e                      bra.s      pp_output_6
pp_output_7:
[0001b4f2] 7001                      moveq.l    #1,d0
[0001b4f4] d045                      add.w      d5,d0
[0001b4f6] 3f00                      move.w     d0,-(a7)
[0001b4f8] 7201                      moveq.l    #1,d1
[0001b4fa] d244                      add.w      d4,d1
[0001b4fc] 3f01                      move.w     d1,-(a7)
[0001b4fe] 43ed 104f                 lea.l      4175(a5),a1
[0001b502] 204b                      movea.l    a3,a0
[0001b504] 4eb9 0007 5680            jsr        sprintf
[0001b50a] 584f                      addq.w     #4,a7
[0001b50c] 204b                      movea.l    a3,a0
[0001b50e] 4eb9 0001 65f6            jsr        save_string
[0001b514] 41ed 107c                 lea.l      4220(a5),a0
[0001b518] 4eb9 0001 65f6            jsr        save_string
[0001b51e] 5245                      addq.w     #1,d5
pp_output_6:
[0001b520] ba7c 0003                 cmp.w      #$0003,d5
[0001b524] 6fcc                      ble.s      pp_output_7
[0001b526] 5244                      addq.w     #1,d4
pp_output_5:
[0001b528] b87c 0003                 cmp.w      #$0003,d4
[0001b52c] 6fbe                      ble.s      pp_output_8
[0001b52e] 41ed 004e                 lea.l      78(a5),a0
[0001b532] 4eb9 0001 65f6            jsr        save_string
[0001b538] 4245                      clr.w      d5
[0001b53a] 601e                      bra.s      pp_output_9
pp_output_10:
[0001b53c] 7001                      moveq.l    #1,d0
[0001b53e] d045                      add.w      d5,d0
[0001b540] 3f00                      move.w     d0,-(a7)
[0001b542] 43ed 10c9                 lea.l      4297(a5),a1
[0001b546] 204b                      movea.l    a3,a0
[0001b548] 4eb9 0007 5680            jsr        sprintf
[0001b54e] 544f                      addq.w     #2,a7
[0001b550] 204b                      movea.l    a3,a0
[0001b552] 4eb9 0001 65f6            jsr        save_string
[0001b558] 5245                      addq.w     #1,d5
pp_output_9:
[0001b55a] ba7c 0003                 cmp.w      #$0003,d5
[0001b55e] 6fdc                      ble.s      pp_output_10
[0001b560] 7001                      moveq.l    #1,d0
[0001b562] d06a 01f4                 add.w      500(a2),d0
[0001b566] 3f00                      move.w     d0,-(a7)
[0001b568] 43ed 10e0                 lea.l      4320(a5),a1
[0001b56c] 204b                      movea.l    a3,a0
[0001b56e] 4eb9 0007 5680            jsr        sprintf
[0001b574] 544f                      addq.w     #2,a7
[0001b576] 204b                      movea.l    a3,a0
[0001b578] 4eb9 0001 65f6            jsr        save_string
[0001b57e] 4245                      clr.w      d5
[0001b580] 600c                      bra.s      pp_output_11
pp_output_12:
[0001b582] 41ed 10fc                 lea.l      4348(a5),a0
[0001b586] 4eb9 0001 65f6            jsr        save_string
[0001b58c] 5245                      addq.w     #1,d5
pp_output_11:
[0001b58e] ba7c 0003                 cmp.w      #$0003,d5
[0001b592] 6fee                      ble.s      pp_output_12
[0001b594] 41ed 004e                 lea.l      78(a5),a0
[0001b598] 4eb9 0001 65f6            jsr        save_string
[0001b59e] 204b                      movea.l    a3,a0
[0001b5a0] 4eb9 0001 65f6            jsr        save_string
[0001b5a6] 302a 0006                 move.w     6(a2),d0
[0001b5aa] c07c 2000                 and.w      #$2000,d0
[0001b5ae] 6706                      beq.s      pp_output_13
[0001b5b0] 204a                      movea.l    a2,a0
[0001b5b2] 6100 e966                 bsr        out_declproto
pp_output_13:
[0001b5b6] 41ed 1107                 lea.l      4359(a5),a0
[0001b5ba] 4eb9 0001 65f6            jsr        save_string
[0001b5c0] 41ed 110f                 lea.l      4367(a5),a0
[0001b5c4] 4eb9 0001 65f6            jsr        save_string
[0001b5ca] 41ed 112b                 lea.l      4395(a5),a0
[0001b5ce] 4eb9 0001 65f6            jsr        save_string
[0001b5d4] 4245                      clr.w      d5
[0001b5d6] 6000 007c                 bra.w      pp_output_14
pp_output_19:
[0001b5da] ba6a 01f4                 cmp.w      500(a2),d5
[0001b5de] 6c1c                      bge.s      pp_output_15
[0001b5e0] 42a7                      clr.l      -(a7)
[0001b5e2] 226a 0024                 movea.l    36(a2),a1
[0001b5e6] 3005                      move.w     d5,d0
[0001b5e8] 48c0                      ext.l      d0
[0001b5ea] e588                      lsl.l      #2,d0
[0001b5ec] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0001b5f0] 2068 0202                 movea.l    514(a0),a0
[0001b5f4] 6100 f768                 bsr        out_string
[0001b5f8] 584f                      addq.w     #4,a7
[0001b5fa] 6032                      bra.s      pp_output_16
pp_output_15:
[0001b5fc] ba6a 01f4                 cmp.w      500(a2),d5
[0001b600] 6612                      bne.s      pp_output_17
[0001b602] 42a7                      clr.l      -(a7)
[0001b604] 226a 0024                 movea.l    36(a2),a1
[0001b608] 206a 0024                 movea.l    36(a2),a0
[0001b60c] 6100 f750                 bsr        out_string
[0001b610] 584f                      addq.w     #4,a7
[0001b612] 601a                      bra.s      pp_output_16
pp_output_17:
[0001b614] 42a7                      clr.l      -(a7)
[0001b616] 226a 0024                 movea.l    36(a2),a1
[0001b61a] 3005                      move.w     d5,d0
[0001b61c] 48c0                      ext.l      d0
[0001b61e] e588                      lsl.l      #2,d0
[0001b620] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0001b624] 2068 01fe                 movea.l    510(a0),a0
[0001b628] 6100 f734                 bsr        out_string
[0001b62c] 584f                      addq.w     #4,a7
pp_output_16:
[0001b62e] ba7c 0003                 cmp.w      #$0003,d5
[0001b632] 6c1e                      bge.s      pp_output_18
[0001b634] 7002                      moveq.l    #2,d0
[0001b636] d045                      add.w      d5,d0
[0001b638] 3f00                      move.w     d0,-(a7)
[0001b63a] 3f00                      move.w     d0,-(a7)
[0001b63c] 43ed 1162                 lea.l      4450(a5),a1
[0001b640] 204b                      movea.l    a3,a0
[0001b642] 4eb9 0007 5680            jsr        sprintf
[0001b648] 584f                      addq.w     #4,a7
[0001b64a] 204b                      movea.l    a3,a0
[0001b64c] 4eb9 0001 65f6            jsr        save_string
pp_output_18:
[0001b652] 5245                      addq.w     #1,d5
pp_output_14:
[0001b654] ba7c 0003                 cmp.w      #$0003,d5
[0001b658] 6f00 ff80                 ble.w      pp_output_19
[0001b65c] 41ed 11a4                 lea.l      4516(a5),a0
[0001b660] 4eb9 0001 65f6            jsr        save_string
[0001b666] 4245                      clr.w      d5
[0001b668] 600c                      bra.s      pp_output_20
pp_output_21:
[0001b66a] 41ed 11e0                 lea.l      4576(a5),a0
[0001b66e] 4eb9 0001 65f6            jsr        save_string
[0001b674] 5245                      addq.w     #1,d5
pp_output_20:
[0001b676] ba7c 0003                 cmp.w      #$0003,d5
[0001b67a] 6fee                      ble.s      pp_output_21
[0001b67c] 41ed 11ef                 lea.l      4591(a5),a0
[0001b680] 4eb9 0001 65f6            jsr        save_string
[0001b686] 41ed 1207                 lea.l      4615(a5),a0
[0001b68a] 4eb9 0001 65f6            jsr        save_string
[0001b690] 4245                      clr.w      d5
[0001b692] 6000 007c                 bra.w      pp_output_22
pp_output_27:
[0001b696] ba6a 01f4                 cmp.w      500(a2),d5
[0001b69a] 6c1c                      bge.s      pp_output_23
[0001b69c] 42a7                      clr.l      -(a7)
[0001b69e] 226a 0034                 movea.l    52(a2),a1
[0001b6a2] 3005                      move.w     d5,d0
[0001b6a4] 48c0                      ext.l      d0
[0001b6a6] e588                      lsl.l      #2,d0
[0001b6a8] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0001b6ac] 2068 01f6                 movea.l    502(a0),a0
[0001b6b0] 6100 f6ac                 bsr        out_string
[0001b6b4] 584f                      addq.w     #4,a7
[0001b6b6] 6032                      bra.s      pp_output_24
pp_output_23:
[0001b6b8] ba6a 01f4                 cmp.w      500(a2),d5
[0001b6bc] 6612                      bne.s      pp_output_25
[0001b6be] 42a7                      clr.l      -(a7)
[0001b6c0] 226a 0034                 movea.l    52(a2),a1
[0001b6c4] 206a 0034                 movea.l    52(a2),a0
[0001b6c8] 6100 f694                 bsr        out_string
[0001b6cc] 584f                      addq.w     #4,a7
[0001b6ce] 601a                      bra.s      pp_output_24
pp_output_25:
[0001b6d0] 42a7                      clr.l      -(a7)
[0001b6d2] 226a 0034                 movea.l    52(a2),a1
[0001b6d6] 3005                      move.w     d5,d0
[0001b6d8] 48c0                      ext.l      d0
[0001b6da] e588                      lsl.l      #2,d0
[0001b6dc] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0001b6e0] 2068 01f2                 movea.l    498(a0),a0
[0001b6e4] 6100 f678                 bsr        out_string
[0001b6e8] 584f                      addq.w     #4,a7
pp_output_24:
[0001b6ea] ba7c 0003                 cmp.w      #$0003,d5
[0001b6ee] 6c1e                      bge.s      pp_output_26
[0001b6f0] 7002                      moveq.l    #2,d0
[0001b6f2] d045                      add.w      d5,d0
[0001b6f4] 3f00                      move.w     d0,-(a7)
[0001b6f6] 3f00                      move.w     d0,-(a7)
[0001b6f8] 43ed 1242                 lea.l      4674(a5),a1
[0001b6fc] 204b                      movea.l    a3,a0
[0001b6fe] 4eb9 0007 5680            jsr        sprintf
[0001b704] 584f                      addq.w     #4,a7
[0001b706] 204b                      movea.l    a3,a0
[0001b708] 4eb9 0001 65f6            jsr        save_string
pp_output_26:
[0001b70e] 5245                      addq.w     #1,d5
pp_output_22:
[0001b710] ba7c 0003                 cmp.w      #$0003,d5
[0001b714] 6f00 ff80                 ble.w      pp_output_27
[0001b718] 41ed 11a4                 lea.l      4516(a5),a0
[0001b71c] 4eb9 0001 65f6            jsr        save_string
[0001b722] 4245                      clr.w      d5
[0001b724] 600c                      bra.s      pp_output_28
pp_output_29:
[0001b726] 41ed 11e0                 lea.l      4576(a5),a0
[0001b72a] 4eb9 0001 65f6            jsr        save_string
[0001b730] 5245                      addq.w     #1,d5
pp_output_28:
[0001b732] ba7c 0003                 cmp.w      #$0003,d5
[0001b736] 6fee                      ble.s      pp_output_29
[0001b738] 206a 0044                 movea.l    68(a2),a0
[0001b73c] 6100 f8f4                 bsr        out_data
[0001b740] 206a 0028                 movea.l    40(a2),a0
[0001b744] 6100 f6c4                 bsr        out_tedi
[0001b748] 206a 0038                 movea.l    56(a2),a0
[0001b74c] 6100 f768                 bsr        out_user
[0001b750] 206a 002c                 movea.l    44(a2),a0
[0001b754] 6100 ee1c                 bsr        out_icon
[0001b758] 206a 0030                 movea.l    48(a2),a0
[0001b75c] 6100 f138                 bsr        out_image
[0001b760] 43ed 1285                 lea.l      4741(a5),a1
[0001b764] 206a 001c                 movea.l    28(a2),a0
[0001b768] 6100 f248                 bsr        out_obj
[0001b76c] 43ed 129c                 lea.l      4764(a5),a1
[0001b770] 206a 0020                 movea.l    32(a2),a0
[0001b774] 6100 f23c                 bsr        out_obj
[0001b778] 43ed 12b4                 lea.l      4788(a5),a1
[0001b77c] 206a 0018                 movea.l    24(a2),a0
[0001b780] 6100 f230                 bsr        out_obj
[0001b784] 206a 0014                 movea.l    20(a2),a0
[0001b788] 6100 f980                 bsr        out_window
[0001b78c] 206a 0040                 movea.l    64(a2),a0
[0001b790] 6100 efdc                 bsr        out_mouse
[0001b794] 204a                      movea.l    a2,a0
[0001b796] 6100 e98a                 bsr        out_acs
[0001b79a] 302a 0006                 move.w     6(a2),d0
[0001b79e] c07c 2000                 and.w      #$2000,d0
[0001b7a2] 6706                      beq.s      pp_output_30
[0001b7a4] 204a                      movea.l    a2,a0
[0001b7a6] 6100 e6da                 bsr        out_refs
pp_output_30:
[0001b7aa] 4eb9 0001 660a            jsr        close_buf
pp_output_4:
[0001b7b0] 4eb9 0001 7f8a            jsr        info_end
[0001b7b6] 3003                      move.w     d3,d0
[0001b7b8] 4eb9 0007 29ae            jsr        Fclose
pp_output_2:
[0001b7be] 4fef 0088                 lea.l      136(a7),a7
[0001b7c2] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0001b7c6] 4e75                      rts

out_string:
[0001b7c8] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0001b7cc] 2448                      movea.l    a0,a2
[0001b7ce] 262a 000e                 move.l     14(a2),d3
[0001b7d2] e48b                      lsr.l      #2,d3
[0001b7d4] 4a43                      tst.w      d3
[0001b7d6] 6f00 007c                 ble.w      out_string_1
[0001b7da] 41ea 0016                 lea.l      22(a2),a0
[0001b7de] 4eb9 0001 800e            jsr        info_list
[0001b7e4] 246a 0004                 movea.l    4(a2),a2
[0001b7e8] 4244                      clr.w      d4
[0001b7ea] 49f9 0009 b24c            lea.l      $0009B24C,a4
[0001b7f0] 4bf9 000f b02a            lea.l      iostring,a5
[0001b7f6] 6058                      bra.s      out_string_2
out_string_4:
[0001b7f8] 3004                      move.w     d4,d0
[0001b7fa] 48c0                      ext.l      d0
[0001b7fc] e588                      lsl.l      #2,d0
[0001b7fe] 2672 0800                 movea.l    0(a2,d0.l),a3
[0001b802] 43ec 0017                 lea.l      23(a4),a1
[0001b806] 41eb 0016                 lea.l      22(a3),a0
[0001b80a] 7004                      moveq.l    #4,d0
[0001b80c] 4eb9 0007 69fc            jsr        strncmp
[0001b812] 4a40                      tst.w      d0
[0001b814] 6738                      beq.s      out_string_3
[0001b816] 41eb 0016                 lea.l      22(a3),a0
[0001b81a] 4eb9 0001 8066            jsr        info_obj
[0001b820] 486b 0016                 pea.l      22(a3)
[0001b824] 43ec 001c                 lea.l      28(a4),a1
[0001b828] 204d                      movea.l    a5,a0
[0001b82a] 4eb9 0007 5680            jsr        sprintf
[0001b830] 584f                      addq.w     #4,a7
[0001b832] 204d                      movea.l    a5,a0
[0001b834] 4eb9 0001 65f6            jsr        save_string
[0001b83a] 206b 0004                 movea.l    4(a3),a0
[0001b83e] 4eb9 0001 65f6            jsr        save_string
[0001b844] 41ec 0021                 lea.l      33(a4),a0
[0001b848] 4eb9 0001 65f6            jsr        save_string
out_string_3:
[0001b84e] 5244                      addq.w     #1,d4
out_string_2:
[0001b850] b644                      cmp.w      d4,d3
[0001b852] 6ea4                      bgt.s      out_string_4
out_string_1:
[0001b854] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0001b858] 4e75                      rts

str_output:
[0001b85a] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0001b85e] 4fef fdfc                 lea.l      -516(a7),a7
[0001b862] 2448                      movea.l    a0,a2
[0001b864] 705c                      moveq.l    #92,d0
[0001b866] 206a 0008                 movea.l    8(a2),a0
[0001b86a] 4eb9 0007 68e2            jsr        strrchr
[0001b870] 2648                      movea.l    a0,a3
[0001b872] 524b                      addq.w     #1,a3
[0001b874] 49ef 0100                 lea.l      256(a7),a4
[0001b878] 226a 0008                 movea.l    8(a2),a1
[0001b87c] 204c                      movea.l    a4,a0
[0001b87e] 4eb9 0007 6950            jsr        strcpy
[0001b884] 702e                      moveq.l    #46,d0
[0001b886] 204c                      movea.l    a4,a0
[0001b888] 4eb9 0007 68e2            jsr        strrchr
[0001b88e] 2a48                      movea.l    a0,a5
[0001b890] 43f9 0009 b271            lea.l      $0009B271,a1
[0001b896] 4eb9 0007 6950            jsr        strcpy
[0001b89c] 102a 01f5                 move.b     501(a2),d0
[0001b8a0] d12d 0003                 add.b      d0,3(a5)
[0001b8a4] 4240                      clr.w      d0
[0001b8a6] 204c                      movea.l    a4,a0
[0001b8a8] 4eb9 0007 29be            jsr        Fcreate
[0001b8ae] 2600                      move.l     d0,d3
[0001b8b0] 4a43                      tst.w      d3
[0001b8b2] 6a14                      bpl.s      str_output_1
[0001b8b4] 204b                      movea.l    a3,a0
[0001b8b6] 7009                      moveq.l    #9,d0
[0001b8b8] 2279 0010 1f12            movea.l    ACSblk,a1
[0001b8be] 2269 03d6                 movea.l    982(a1),a1
[0001b8c2] 4e91                      jsr        (a1)
[0001b8c4] 6000 00f0                 bra        str_output_2
str_output_1:
[0001b8c8] 204c                      movea.l    a4,a0
[0001b8ca] 4eb9 0001 7ec6            jsr        info_start
[0001b8d0] 41f9 0009 b276            lea.l      $0009B276,a0
[0001b8d6] 4eb9 0001 7faa            jsr        info_title
[0001b8dc] 3003                      move.w     d3,d0
[0001b8de] 4eb9 0001 653e            jsr        set_handle
[0001b8e4] 4eb9 0007 5162            jsr        setjmp
[0001b8ea] 4a40                      tst.w      d0
[0001b8ec] 6722                      beq.s      str_output_3
[0001b8ee] 91c8                      suba.l     a0,a0
[0001b8f0] 700a                      moveq.l    #10,d0
[0001b8f2] 2279 0010 1f12            movea.l    ACSblk,a1
[0001b8f8] 2269 03d6                 movea.l    982(a1),a1
[0001b8fc] 4e91                      jsr        (a1)
[0001b8fe] 3003                      move.w     d3,d0
[0001b900] 4eb9 0007 29ae            jsr        Fclose
[0001b906] 4eb9 0001 7f8a            jsr        info_end
[0001b90c] 6000 00a8                 bra        str_output_2
str_output_3:
[0001b910] 91c8                      suba.l     a0,a0
[0001b912] 4eb9 0007 539e            jsr        time
[0001b918] 2f40 0200                 move.l     d0,512(a7)
[0001b91c] 4bf9 000f b02a            lea.l      iostring,a5
[0001b922] 2f2a 0008                 move.l     8(a2),-(a7)
[0001b926] 41ef 0204                 lea.l      516(a7),a0
[0001b92a] 4eb9 0007 531e            jsr        ctime
[0001b930] 2f08                      move.l     a0,-(a7)
[0001b932] 43f9 0009 8752            lea.l      str_welcome,a1
[0001b938] 204d                      movea.l    a5,a0
[0001b93a] 4eb9 0007 5680            jsr        sprintf
[0001b940] 504f                      addq.w     #8,a7
[0001b942] 204d                      movea.l    a5,a0
[0001b944] 4eb9 0001 65f6            jsr        save_string
[0001b94a] 226a 0008                 movea.l    8(a2),a1
[0001b94e] 41d7                      lea.l      (a7),a0
[0001b950] 4eb9 0004 4212            jsr        Ast_reverse
[0001b956] 4868 0004                 pea.l      4(a0)
[0001b95a] 43f9 0009 b284            lea.l      $0009B284,a1
[0001b960] 204d                      movea.l    a5,a0
[0001b962] 4eb9 0007 5680            jsr        sprintf
[0001b968] 584f                      addq.w     #4,a7
[0001b96a] 204d                      movea.l    a5,a0
[0001b96c] 4eb9 0001 65f6            jsr        save_string
[0001b972] 7001                      moveq.l    #1,d0
[0001b974] d06a 01f4                 add.w      500(a2),d0
[0001b978] 3f00                      move.w     d0,-(a7)
[0001b97a] 43f9 0009 b28b            lea.l      $0009B28B,a1
[0001b980] 204d                      movea.l    a5,a0
[0001b982] 4eb9 0007 5680            jsr        sprintf
[0001b988] 544f                      addq.w     #2,a7
[0001b98a] 204d                      movea.l    a5,a0
[0001b98c] 4eb9 0001 65f6            jsr        save_string
[0001b992] 206a 0024                 movea.l    36(a2),a0
[0001b996] 6100 fe30                 bsr        out_string
[0001b99a] 206a 0034                 movea.l    52(a2),a0
[0001b99e] 6100 fe28                 bsr        out_string
[0001b9a2] 4eb9 0001 660a            jsr        close_buf
[0001b9a8] 4eb9 0001 7f8a            jsr        info_end
[0001b9ae] 3003                      move.w     d3,d0
[0001b9b0] 4eb9 0007 29ae            jsr        Fclose
str_output_2:
[0001b9b6] 4fef 0204                 lea.l      516(a7),a7
[0001b9ba] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0001b9be] 4e75                      rts

	.data

[0009b24c]                           dc.b '%-12s',0
[0009b252]                           dc.b '&%-12s',0
[0009b259]                           dc.b '&%-12s[3]',0
[0009b263]                           dc.b 'ACS(',0
[0009b268]                           dc.b '%s=#',0
[0009b26d]                           dc.b '#',$0d,$0a,0
[0009b271]                           dc.b '.ST0',0
[0009b276]                           dc.b 'String-Export',0
[0009b284]                           dc.b '[%s]',$0d,$0a,0
[0009b28b]                           dc.b 'GUI-LANGUAGE=ACS_LANG%d',$0d,$0a,0
	.even
