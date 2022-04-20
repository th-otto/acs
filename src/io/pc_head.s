
out_acs:
[000178b8] 3028 0006                 move.w     6(a0),d0
[000178bc] c07c 8000                 and.w      #$8000,d0
[000178c0] 660c                      bne.s      out_acs_1
[000178c2] 41f9 0009 8bb0            lea.l      $00098BB0,a0
[000178c8] 4eb9 0001 65f6            jsr        save_string
out_acs_1:
[000178ce] 4e75                      rts

out_list:
[000178d0] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[000178d4] 2448                      movea.l    a0,a2
[000178d6] 2649                      movea.l    a1,a3
[000178d8] 286f 001c                 movea.l    28(a7),a4
[000178dc] 262a 000e                 move.l     14(a2),d3
[000178e0] e48b                      lsr.l      #2,d3
[000178e2] 4a43                      tst.w      d3
[000178e4] 6f00 007c                 ble.w      out_list_1
[000178e8] 41ea 0016                 lea.l      22(a2),a0
[000178ec] 4eb9 0001 800e            jsr        info_list
[000178f2] 246a 0004                 movea.l    4(a2),a2
[000178f6] 204b                      movea.l    a3,a0
[000178f8] 4eb9 0001 65f6            jsr        save_string
[000178fe] 4244                      clr.w      d4
[00017900] 4bf9 000f b02a            lea.l      iostring,a5
[00017906] 6056                      bra.s      out_list_2
out_list_4:
[00017908] 3004                      move.w     d4,d0
[0001790a] 48c0                      ext.l      d0
[0001790c] e588                      lsl.l      #2,d0
[0001790e] 2672 0800                 movea.l    0(a2,d0.l),a3
[00017912] 43f9 0009 8bd0            lea.l      $00098BD0,a1
[00017918] 41eb 0016                 lea.l      22(a3),a0
[0001791c] 7004                      moveq.l    #4,d0
[0001791e] 4eb9 0007 69fc            jsr        strncmp
[00017924] 4a40                      tst.w      d0
[00017926] 6734                      beq.s      out_list_3
[00017928] 302b 0038                 move.w     56(a3),d0
[0001792c] c07c 0500                 and.w      #$0500,d0
[00017930] b07c 0100                 cmp.w      #$0100,d0
[00017934] 6626                      bne.s      out_list_3
[00017936] 41eb 0016                 lea.l      22(a3),a0
[0001793a] 4eb9 0001 8066            jsr        info_obj
[00017940] 2f2b 000a                 move.l     10(a3),-(a7)
[00017944] 486b 0016                 pea.l      22(a3)
[00017948] 224c                      movea.l    a4,a1
[0001794a] 204d                      movea.l    a5,a0
[0001794c] 4eb9 0007 5680            jsr        sprintf
[00017952] 504f                      addq.w     #8,a7
[00017954] 204d                      movea.l    a5,a0
[00017956] 4eb9 0001 65f6            jsr        save_string
out_list_3:
[0001795c] 5244                      addq.w     #1,d4
out_list_2:
[0001795e] b644                      cmp.w      d4,d3
[00017960] 6ea6                      bgt.s      out_list_4
out_list_1:
[00017962] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00017966] 4e75                      rts

out_obj:
[00017968] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0001796c] 2448                      movea.l    a0,a2
[0001796e] 2a49                      movea.l    a1,a5
[00017970] 262a 000e                 move.l     14(a2),d3
[00017974] e48b                      lsr.l      #2,d3
[00017976] 4a43                      tst.w      d3
[00017978] 6f00 00e4                 ble        out_obj_1
[0001797c] 41ea 0016                 lea.l      22(a2),a0
[00017980] 4eb9 0001 800e            jsr        info_list
[00017986] 246a 0004                 movea.l    4(a2),a2
[0001798a] 204d                      movea.l    a5,a0
[0001798c] 4eb9 0001 65f6            jsr        save_string
[00017992] 4244                      clr.w      d4
[00017994] 47f9 0009 8bb0            lea.l      $00098BB0,a3
[0001799a] 49f9 000f b02a            lea.l      iostring,a4
[000179a0] 6000 00b6                 bra        out_obj_2
out_obj_9:
[000179a4] 3004                      move.w     d4,d0
[000179a6] 48c0                      ext.l      d0
[000179a8] e588                      lsl.l      #2,d0
[000179aa] 2a72 0800                 movea.l    0(a2,d0.l),a5
[000179ae] 322d 0038                 move.w     56(a5),d1
[000179b2] c27c 0500                 and.w      #$0500,d1
[000179b6] b27c 0100                 cmp.w      #$0100,d1
[000179ba] 6600 009a                 bne        out_obj_3
[000179be] 41ed 0016                 lea.l      22(a5),a0
[000179c2] 4eb9 0001 8066            jsr        info_obj
[000179c8] 486d 0016                 pea.l      22(a5)
[000179cc] 43eb 0025                 lea.l      37(a3),a1
[000179d0] 204c                      movea.l    a4,a0
[000179d2] 4eb9 0007 5680            jsr        sprintf
[000179d8] 584f                      addq.w     #4,a7
[000179da] 204c                      movea.l    a4,a0
[000179dc] 4eb9 0001 65f6            jsr        save_string
[000179e2] 202d 000e                 move.l     14(a5),d0
[000179e6] 7238                      moveq.l    #56,d1
[000179e8] 4eb9 0007 769e            jsr        _uldiv
[000179ee] 2a00                      move.l     d0,d5
[000179f0] 2a6d 0004                 movea.l    4(a5),a5
[000179f4] 4246                      clr.w      d6
[000179f6] 3e06                      move.w     d6,d7
[000179f8] 6058                      bra.s      out_obj_4
out_obj_8:
[000179fa] 2015                      move.l     (a5),d0
[000179fc] 671e                      beq.s      out_obj_5
[000179fe] 3f06                      move.w     d6,-(a7)
[00017a00] 2040                      movea.l    d0,a0
[00017a02] 4868 0016                 pea.l      22(a0)
[00017a06] 43eb 003b                 lea.l      59(a3),a1
[00017a0a] 204c                      movea.l    a4,a0
[00017a0c] 4eb9 0007 5680            jsr        sprintf
[00017a12] 5c4f                      addq.w     #6,a7
[00017a14] 204c                      movea.l    a4,a0
[00017a16] 4eb9 0001 65f6            jsr        save_string
out_obj_5:
[00017a1c] 202d 0020                 move.l     32(a5),d0
[00017a20] 6628                      bne.s      out_obj_6
[00017a22] 222d 0024                 move.l     36(a5),d1
[00017a26] 6622                      bne.s      out_obj_6
[00017a28] 242d 002c                 move.l     44(a5),d2
[00017a2c] 661c                      bne.s      out_obj_6
[00017a2e] 202d 0030                 move.l     48(a5),d0
[00017a32] 6616                      bne.s      out_obj_6
[00017a34] 222d 0004                 move.l     4(a5),d1
[00017a38] 6610                      bne.s      out_obj_6
[00017a3a] 342d 002a                 move.w     42(a5),d2
[00017a3e] 660a                      bne.s      out_obj_6
[00017a40] 302d 0034                 move.w     52(a5),d0
[00017a44] 6604                      bne.s      out_obj_6
[00017a46] 5246                      addq.w     #1,d6
[00017a48] 6002                      bra.s      out_obj_7
out_obj_6:
[00017a4a] 5446                      addq.w     #2,d6
out_obj_7:
[00017a4c] 4bed 0038                 lea.l      56(a5),a5
[00017a50] 5247                      addq.w     #1,d7
out_obj_4:
[00017a52] ba47                      cmp.w      d7,d5
[00017a54] 6ea4                      bgt.s      out_obj_8
out_obj_3:
[00017a56] 5244                      addq.w     #1,d4
out_obj_2:
[00017a58] b644                      cmp.w      d4,d3
[00017a5a] 6e00 ff48                 bgt        out_obj_9
out_obj_1:
[00017a5e] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[00017a62] 4e75                      rts

out_declproto:
[00017a64] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[00017a68] 2648                      movea.l    a0,a3
[00017a6a] 246b 003c                 movea.l    60(a3),a2
[00017a6e] 262a 000e                 move.l     14(a2),d3
[00017a72] e48b                      lsr.l      #2,d3
[00017a74] 4a43                      tst.w      d3
[00017a76] 6f00 0294                 ble        out_declproto_1
[00017a7a] 206b 003c                 movea.l    60(a3),a0
[00017a7e] 41e8 0016                 lea.l      22(a0),a0
[00017a82] 4eb9 0001 800e            jsr        info_list
[00017a88] 246a 0004                 movea.l    4(a2),a2
[00017a8c] 47f9 0009 8bb0            lea.l      $00098BB0,a3
[00017a92] 41eb 0051                 lea.l      81(a3),a0
[00017a96] 4eb9 0001 65f6            jsr        save_string
[00017a9c] 4244                      clr.w      d4
[00017a9e] 4bf9 000f b02a            lea.l      iostring,a5
[00017aa4] 6000 0256                 bra        out_declproto_2
out_declproto_27:
[00017aa8] 3004                      move.w     d4,d0
[00017aaa] 48c0                      ext.l      d0
[00017aac] e588                      lsl.l      #2,d0
[00017aae] 2872 0800                 movea.l    0(a2,d0.l),a4
[00017ab2] 3a2c 0038                 move.w     56(a4),d5
[00017ab6] 3205                      move.w     d5,d1
[00017ab8] c27c 0200                 and.w      #$0200,d1
[00017abc] 660e                      bne.s      out_declproto_3
[00017abe] 3405                      move.w     d5,d2
[00017ac0] c47c 0500                 and.w      #$0500,d2
[00017ac4] b47c 0100                 cmp.w      #$0100,d2
[00017ac8] 6600 0230                 bne        out_declproto_4
out_declproto_3:
[00017acc] 41ec 0016                 lea.l      22(a4),a0
[00017ad0] 4eb9 0001 8066            jsr        info_obj
[00017ad6] 3005                      move.w     d5,d0
[00017ad8] c07c 00ff                 and.w      #$00FF,d0
[00017adc] b07c 0025                 cmp.w      #$0025,d0
[00017ae0] 6200 01f6                 bhi        out_declproto_5
[00017ae4] d040                      add.w      d0,d0
[00017ae6] 303b 0006                 move.w     $00017AEE(pc,d0.w),d0
[00017aea] 4efb 0002                 jmp        $00017AEE(pc,d0.w)
J4:
[00017aee] 0154                      dc.w $0154   ; out_declproto_6-J4
[00017af0] 004c                      dc.w $004c   ; out_declproto_7-J4
[00017af2] 004c                      dc.w $004c   ; out_declproto_7-J4
[00017af4] 0062                      dc.w $0062   ; out_declproto_8-J4
[00017af6] 0078                      dc.w $0078   ; out_declproto_9-J4
[00017af8] 01ea                      dc.w $01ea   ; out_declproto_5-J4
[00017afa] 008e                      dc.w $008e   ; out_declproto_10-J4
[00017afc] 00a4                      dc.w $00a4   ; out_declproto_11-J4
[00017afe] 008e                      dc.w $008e   ; out_declproto_10-J4
[00017b00] 00ba                      dc.w $00ba   ; out_declproto_12-J4
[00017b02] 00d0                      dc.w $00d0   ; out_declproto_13-J4
[00017b04] 00e6                      dc.w $00e6   ; out_declproto_14-J4
[00017b06] 00fc                      dc.w $00fc   ; out_declproto_15-J4
[00017b08] 01ea                      dc.w $01ea   ; out_declproto_5-J4
[00017b0a] 00fc                      dc.w $00fc   ; out_declproto_15-J4
[00017b0c] 0112                      dc.w $0112   ; out_declproto_16-J4
[00017b0e] 0128                      dc.w $0128   ; out_declproto_17-J4
[00017b10] 0128                      dc.w $0128   ; out_declproto_17-J4
[00017b12] 00e6                      dc.w $00e6   ; out_declproto_14-J4
[00017b14] 00e6                      dc.w $00e6   ; out_declproto_14-J4
[00017b16] 00fc                      dc.w $00fc   ; out_declproto_15-J4
[00017b18] 013e                      dc.w $013e   ; out_declproto_18-J4
[00017b1a] 015a                      dc.w $015a   ; out_declproto_19-J4
[00017b1c] 008e                      dc.w $008e   ; out_declproto_10-J4
[00017b1e] 0170                      dc.w $0170   ; out_declproto_20-J4
[00017b20] 0186                      dc.w $0186   ; out_declproto_21-J4
[00017b22] 0186                      dc.w $0186   ; out_declproto_21-J4
[00017b24] 004c                      dc.w $004c   ; out_declproto_7-J4
[00017b26] 004c                      dc.w $004c   ; out_declproto_7-J4
[00017b28] 004c                      dc.w $004c   ; out_declproto_7-J4
[00017b2a] 019a                      dc.w $019a   ; out_declproto_22-J4
[00017b2c] 019a                      dc.w $019a   ; out_declproto_22-J4
[00017b2e] 004c                      dc.w $004c   ; out_declproto_7-J4
[00017b30] 01c2                      dc.w $01c2   ; out_declproto_23-J4
[00017b32] 01ae                      dc.w $01ae   ; out_declproto_24-J4
[00017b34] 004c                      dc.w $004c   ; out_declproto_7-J4
[00017b36] 01c2                      dc.w $01c2   ; out_declproto_23-J4
[00017b38] 01d6                      dc.w $01d6   ; out_declproto_25-J4
out_declproto_7:
[00017b3a] 486c 0016                 pea.l      22(a4)
[00017b3e] 43eb 0073                 lea.l      115(a3),a1
[00017b42] 204d                      movea.l    a5,a0
[00017b44] 4eb9 0007 5680            jsr        sprintf
[00017b4a] 584f                      addq.w     #4,a7
[00017b4c] 6000 01a4                 bra        out_declproto_26
out_declproto_8:
[00017b50] 486c 0016                 pea.l      22(a4)
[00017b54] 43eb 008d                 lea.l      141(a3),a1
[00017b58] 204d                      movea.l    a5,a0
[00017b5a] 4eb9 0007 5680            jsr        sprintf
[00017b60] 584f                      addq.w     #4,a7
[00017b62] 6000 018e                 bra        out_declproto_26
out_declproto_9:
[00017b66] 486c 0016                 pea.l      22(a4)
[00017b6a] 43eb 00b5                 lea.l      181(a3),a1
[00017b6e] 204d                      movea.l    a5,a0
[00017b70] 4eb9 0007 5680            jsr        sprintf
[00017b76] 584f                      addq.w     #4,a7
[00017b78] 6000 0178                 bra        out_declproto_26
out_declproto_10:
[00017b7c] 486c 0016                 pea.l      22(a4)
[00017b80] 43eb 00f3                 lea.l      243(a3),a1
[00017b84] 204d                      movea.l    a5,a0
[00017b86] 4eb9 0007 5680            jsr        sprintf
[00017b8c] 584f                      addq.w     #4,a7
[00017b8e] 6000 0162                 bra        out_declproto_26
out_declproto_11:
[00017b92] 486c 0016                 pea.l      22(a4)
[00017b96] 43eb 0117                 lea.l      279(a3),a1
[00017b9a] 204d                      movea.l    a5,a0
[00017b9c] 4eb9 0007 5680            jsr        sprintf
[00017ba2] 584f                      addq.w     #4,a7
[00017ba4] 6000 014c                 bra        out_declproto_26
out_declproto_12:
[00017ba8] 486c 0016                 pea.l      22(a4)
[00017bac] 43eb 013b                 lea.l      315(a3),a1
[00017bb0] 204d                      movea.l    a5,a0
[00017bb2] 4eb9 0007 5680            jsr        sprintf
[00017bb8] 584f                      addq.w     #4,a7
[00017bba] 6000 0136                 bra        out_declproto_26
out_declproto_13:
[00017bbe] 486c 0016                 pea.l      22(a4)
[00017bc2] 43eb 0178                 lea.l      376(a3),a1
[00017bc6] 204d                      movea.l    a5,a0
[00017bc8] 4eb9 0007 5680            jsr        sprintf
[00017bce] 584f                      addq.w     #4,a7
[00017bd0] 6000 0120                 bra        out_declproto_26
out_declproto_14:
[00017bd4] 486c 0016                 pea.l      22(a4)
[00017bd8] 43eb 01b4                 lea.l      436(a3),a1
[00017bdc] 204d                      movea.l    a5,a0
[00017bde] 4eb9 0007 5680            jsr        sprintf
[00017be4] 584f                      addq.w     #4,a7
[00017be6] 6000 010a                 bra        out_declproto_26
out_declproto_15:
[00017bea] 486c 0016                 pea.l      22(a4)
[00017bee] 43eb 01e4                 lea.l      484(a3),a1
[00017bf2] 204d                      movea.l    a5,a0
[00017bf4] 4eb9 0007 5680            jsr        sprintf
[00017bfa] 584f                      addq.w     #4,a7
[00017bfc] 6000 00f4                 bra        out_declproto_26
out_declproto_16:
[00017c00] 486c 0016                 pea.l      22(a4)
[00017c04] 43eb 0207                 lea.l      519(a3),a1
[00017c08] 204d                      movea.l    a5,a0
[00017c0a] 4eb9 0007 5680            jsr        sprintf
[00017c10] 584f                      addq.w     #4,a7
[00017c12] 6000 00de                 bra        out_declproto_26
out_declproto_17:
[00017c16] 486c 0016                 pea.l      22(a4)
[00017c1a] 43eb 0243                 lea.l      579(a3),a1
[00017c1e] 204d                      movea.l    a5,a0
[00017c20] 4eb9 0007 5680            jsr        sprintf
[00017c26] 584f                      addq.w     #4,a7
[00017c28] 6000 00c8                 bra        out_declproto_26
out_declproto_18:
[00017c2c] 486c 0016                 pea.l      22(a4)
[00017c30] 43eb 0271                 lea.l      625(a3),a1
[00017c34] 204d                      movea.l    a5,a0
[00017c36] 4eb9 0007 5680            jsr        sprintf
[00017c3c] 584f                      addq.w     #4,a7
[00017c3e] 6000 00b2                 bra        out_declproto_26
out_declproto_6:
[00017c42] 4215                      clr.b      (a5)
[00017c44] 6000 00ac                 bra        out_declproto_26
out_declproto_19:
[00017c48] 486c 0016                 pea.l      22(a4)
[00017c4c] 43eb 02af                 lea.l      687(a3),a1
[00017c50] 204d                      movea.l    a5,a0
[00017c52] 4eb9 0007 5680            jsr        sprintf
[00017c58] 584f                      addq.w     #4,a7
[00017c5a] 6000 0096                 bra        out_declproto_26
out_declproto_20:
[00017c5e] 486c 0016                 pea.l      22(a4)
[00017c62] 43eb 02de                 lea.l      734(a3),a1
[00017c66] 204d                      movea.l    a5,a0
[00017c68] 4eb9 0007 5680            jsr        sprintf
[00017c6e] 584f                      addq.w     #4,a7
[00017c70] 6000 0080                 bra        out_declproto_26
out_declproto_21:
[00017c74] 486c 0016                 pea.l      22(a4)
[00017c78] 43eb 032f                 lea.l      815(a3),a1
[00017c7c] 204d                      movea.l    a5,a0
[00017c7e] 4eb9 0007 5680            jsr        sprintf
[00017c84] 584f                      addq.w     #4,a7
[00017c86] 606a                      bra.s      out_declproto_26
out_declproto_22:
[00017c88] 486c 0016                 pea.l      22(a4)
[00017c8c] 43eb 034a                 lea.l      842(a3),a1
[00017c90] 204d                      movea.l    a5,a0
[00017c92] 4eb9 0007 5680            jsr        sprintf
[00017c98] 584f                      addq.w     #4,a7
[00017c9a] 6056                      bra.s      out_declproto_26
out_declproto_24:
[00017c9c] 486c 0016                 pea.l      22(a4)
[00017ca0] 43eb 036f                 lea.l      879(a3),a1
[00017ca4] 204d                      movea.l    a5,a0
[00017ca6] 4eb9 0007 5680            jsr        sprintf
[00017cac] 584f                      addq.w     #4,a7
[00017cae] 6042                      bra.s      out_declproto_26
out_declproto_23:
[00017cb0] 486c 0016                 pea.l      22(a4)
[00017cb4] 43eb 03a2                 lea.l      930(a3),a1
[00017cb8] 204d                      movea.l    a5,a0
[00017cba] 4eb9 0007 5680            jsr        sprintf
[00017cc0] 584f                      addq.w     #4,a7
[00017cc2] 602e                      bra.s      out_declproto_26
out_declproto_25:
[00017cc4] 486c 0016                 pea.l      22(a4)
[00017cc8] 43eb 03d1                 lea.l      977(a3),a1
[00017ccc] 204d                      movea.l    a5,a0
[00017cce] 4eb9 0007 5680            jsr        sprintf
[00017cd4] 584f                      addq.w     #4,a7
[00017cd6] 601a                      bra.s      out_declproto_26
out_declproto_5:
[00017cd8] 3005                      move.w     d5,d0
[00017cda] c07c 00ff                 and.w      #$00FF,d0
[00017cde] 3f00                      move.w     d0,-(a7)
[00017ce0] 486c 0016                 pea.l      22(a4)
[00017ce4] 43eb 0413                 lea.l      1043(a3),a1
[00017ce8] 204d                      movea.l    a5,a0
[00017cea] 4eb9 0007 5680            jsr        sprintf
[00017cf0] 5c4f                      addq.w     #6,a7
out_declproto_26:
[00017cf2] 204d                      movea.l    a5,a0
[00017cf4] 4eb9 0001 65f6            jsr        save_string
out_declproto_4:
[00017cfa] 5244                      addq.w     #1,d4
out_declproto_2:
[00017cfc] b644                      cmp.w      d4,d3
[00017cfe] 6e00 fda8                 bgt        out_declproto_27
[00017d02] 41eb 001b                 lea.l      27(a3),a0
[00017d06] 4eb9 0001 65f6            jsr        save_string
out_declproto_1:
[00017d0c] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[00017d10] 4e75                      rts

pc_header:
[00017d12] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00017d16] 4fef ff78                 lea.l      -136(a7),a7
[00017d1a] 2448                      movea.l    a0,a2
[00017d1c] 705c                      moveq.l    #92,d0
[00017d1e] 206a 0008                 movea.l    8(a2),a0
[00017d22] 4eb9 0007 68e2            jsr        strrchr
[00017d28] 5248                      addq.w     #1,a0
[00017d2a] 2e88                      move.l     a0,(a7)
[00017d2c] 49ef 0004                 lea.l      4(a7),a4
[00017d30] 226a 0008                 movea.l    8(a2),a1
[00017d34] 204c                      movea.l    a4,a0
[00017d36] 4eb9 0007 6950            jsr        strcpy
[00017d3c] 702e                      moveq.l    #46,d0
[00017d3e] 204c                      movea.l    a4,a0
[00017d40] 4eb9 0007 68e2            jsr        strrchr
[00017d46] 2648                      movea.l    a0,a3
[00017d48] 4bf9 0009 8bb0            lea.l      $00098BB0,a5
[00017d4e] 200b                      move.l     a3,d0
[00017d50] 670e                      beq.s      pc_header_1
[00017d52] 43ed 0429                 lea.l      1065(a5),a1
[00017d56] 204b                      movea.l    a3,a0
[00017d58] 4eb9 0007 6950            jsr        strcpy
[00017d5e] 600c                      bra.s      pc_header_2
pc_header_1:
[00017d60] 43ed 0429                 lea.l      1065(a5),a1
[00017d64] 204c                      movea.l    a4,a0
[00017d66] 4eb9 0007 6886            jsr        strcat
pc_header_2:
[00017d6c] 4240                      clr.w      d0
[00017d6e] 204c                      movea.l    a4,a0
[00017d70] 4eb9 0007 29be            jsr        Fcreate
[00017d76] 2600                      move.l     d0,d3
[00017d78] 4a43                      tst.w      d3
[00017d7a] 6a14                      bpl.s      pc_header_3
[00017d7c] 2057                      movea.l    (a7),a0
[00017d7e] 7009                      moveq.l    #9,d0
[00017d80] 2279 0010 1f12            movea.l    ACSblk,a1
[00017d86] 2269 03d6                 movea.l    982(a1),a1
[00017d8a] 4e91                      jsr        (a1)
[00017d8c] 6000 012e                 bra        pc_header_4
pc_header_3:
[00017d90] 204c                      movea.l    a4,a0
[00017d92] 4eb9 0001 7ec6            jsr        info_start
[00017d98] 41ed 042c                 lea.l      1068(a5),a0
[00017d9c] 4eb9 0001 7faa            jsr        info_title
[00017da2] 3003                      move.w     d3,d0
[00017da4] 4eb9 0001 653e            jsr        set_handle
[00017daa] 4eb9 0007 5162            jsr        setjmp
[00017db0] 4a40                      tst.w      d0
[00017db2] 6714                      beq.s      pc_header_5
[00017db4] 91c8                      suba.l     a0,a0
[00017db6] 700a                      moveq.l    #10,d0
[00017db8] 2279 0010 1f12            movea.l    ACSblk,a1
[00017dbe] 2269 03d6                 movea.l    982(a1),a1
[00017dc2] 4e91                      jsr        (a1)
[00017dc4] 6000 00e8                 bra        pc_header_6
pc_header_5:
[00017dc8] 91c8                      suba.l     a0,a0
[00017dca] 4eb9 0007 539e            jsr        time
[00017dd0] 2f40 0084                 move.l     d0,132(a7)
[00017dd4] 47f9 000f b02a            lea.l      iostring,a3
[00017dda] 2f2a 0008                 move.l     8(a2),-(a7)
[00017dde] 41ef 0088                 lea.l      136(a7),a0
[00017de2] 4eb9 0007 531e            jsr        ctime
[00017de8] 2f08                      move.l     a0,-(a7)
[00017dea] 43f9 0009 82c6            lea.l      pc_welcome,a1
[00017df0] 204b                      movea.l    a3,a0
[00017df2] 4eb9 0007 5680            jsr        sprintf
[00017df8] 504f                      addq.w     #8,a7
[00017dfa] 204b                      movea.l    a3,a0
[00017dfc] 4eb9 0001 65f6            jsr        save_string
[00017e02] 41ed 043a                 lea.l      1082(a5),a0
[00017e06] 4eb9 0001 65f6            jsr        save_string
[00017e0c] 486d 047f                 pea.l      1151(a5)
[00017e10] 43ed 0464                 lea.l      1124(a5),a1
[00017e14] 206a 0024                 movea.l    36(a2),a0
[00017e18] 6100 fab6                 bsr        out_list
[00017e1c] 584f                      addq.w     #4,a7
[00017e1e] 486d 047f                 pea.l      1151(a5)
[00017e22] 43ed 0497                 lea.l      1175(a5),a1
[00017e26] 206a 0034                 movea.l    52(a2),a0
[00017e2a] 6100 faa4                 bsr        out_list
[00017e2e] 584f                      addq.w     #4,a7
[00017e30] 486d 04c5                 pea.l      1221(a5)
[00017e34] 43ed 04af                 lea.l      1199(a5),a1
[00017e38] 206a 002c                 movea.l    44(a2),a0
[00017e3c] 6100 fa92                 bsr        out_list
[00017e40] 584f                      addq.w     #4,a7
[00017e42] 486d 04f2                 pea.l      1266(a5)
[00017e46] 43ed 04db                 lea.l      1243(a5),a1
[00017e4a] 206a 0030                 movea.l    48(a2),a0
[00017e4e] 6100 fa80                 bsr        out_list
[00017e52] 584f                      addq.w     #4,a7
[00017e54] 43ed 0506                 lea.l      1286(a5),a1
[00017e58] 206a 001c                 movea.l    28(a2),a0
[00017e5c] 6100 fb0a                 bsr        out_obj
[00017e60] 43ed 0521                 lea.l      1313(a5),a1
[00017e64] 206a 0020                 movea.l    32(a2),a0
[00017e68] 6100 fafe                 bsr        out_obj
[00017e6c] 43ed 053d                 lea.l      1341(a5),a1
[00017e70] 206a 0018                 movea.l    24(a2),a0
[00017e74] 6100 faf2                 bsr        out_obj
[00017e78] 486d 0572                 pea.l      1394(a5)
[00017e7c] 43ed 055a                 lea.l      1370(a5),a1
[00017e80] 206a 0014                 movea.l    20(a2),a0
[00017e84] 6100 fa4a                 bsr        out_list
[00017e88] 584f                      addq.w     #4,a7
[00017e8a] 486d 05a2                 pea.l      1442(a5)
[00017e8e] 43ed 0587                 lea.l      1415(a5),a1
[00017e92] 206a 0040                 movea.l    64(a2),a0
[00017e96] 6100 fa38                 bsr        out_list
[00017e9a] 584f                      addq.w     #4,a7
[00017e9c] 204a                      movea.l    a2,a0
[00017e9e] 6100 fa18                 bsr        out_acs
[00017ea2] 204a                      movea.l    a2,a0
[00017ea4] 6100 fbbe                 bsr        out_declproto
[00017ea8] 4eb9 0001 660a            jsr        close_buf
pc_header_6:
[00017eae] 4eb9 0001 7f8a            jsr        info_end
[00017eb4] 3003                      move.w     d3,d0
[00017eb6] 4eb9 0007 29ae            jsr        Fclose
pc_header_4:
[00017ebc] 4fef 0088                 lea.l      136(a7),a7
[00017ec0] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00017ec4] 4e75                      rts

	.data
[00098bb0]                           dc.b $0d,$0a,$0d,$0a,'extern Adescr ACSdescr;',$0d,$0a,$0d,$0a,0
[00098bd0]                           dc.b 'ACS(',0
[00098bd5]                           dc.b $0d,$0a,'extern OBJECT %s;',$0d,$0a,0
[00098beb]                           dc.b '#define %-14s (%3d)',$0d,$0a,0
[00098c01]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'ANSI-C Prototypes',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00098c23]                           dc.b 'extern void %s( void );',$0d,$0a,0
[00098c3d]                           dc.b 'extern INT16 CDECL %s( PARMBLK *pb );',$0d,$0a,0
[00098c65]                           dc.b 'extern INT16 %s( OBJECT *entry, INT16 task, void *in_out );',$0d,$0a,0
[00098ca3]                           dc.b 'extern INT16 %s( Awindow *wind );',$0d,$0a,0
[00098cc7]                           dc.b 'extern Awindow *%s( void *para );',$0d,$0a,0
[00098ceb]                           dc.b 'extern INT16 %s( Awindow *wind, INT16 kstate, INT16 key );',$0d,$0a,0
[00098d28]                           dc.b 'extern void %s( Awindow *wind, INT16 obnr, INT16 state );',$0d,$0a,0
[00098d64]                           dc.b 'extern void %s( Awindow *wind, Axywh *area );',$0d,$0a,0
[00098d94]                           dc.b 'extern void %s( Awindow *wind );',$0d,$0a,0
[00098db7]                           dc.b 'extern void %s( Awindow *wind, INT16 pos, INT16 amount );',$0d,$0a,0
[00098df3]                           dc.b 'extern void %s( Awindow *wind, INT16 pos );',$0d,$0a,0
[00098e21]                           dc.b 'extern INT16 %s( Awindow *wind, INT16 task, void *in_out );',$0d,$0a,0
[00098e5f]                           dc.b 'extern INT16 %s( Awindow *wind, INT16 all );',$0d,$0a,0
[00098e8e]                           dc.b 'extern INT16 %s( Awindow *wind, INT16 anz, char **cmd, A_GSAntwort *antwort );',$0d,$0a,0
[00098edf]                           dc.b 'extern INT16 %s( void );',$0d,$0a,0
[00098efa]                           dc.b 'extern INT16 %s( INT16 *message );',$0d,$0a,0
[00098f1f]                           dc.b 'extern void %s( INT16 *button, INT16 *kreturn );',$0d,$0a,0
[00098f52]                           dc.b 'extern void %s( INT16 *kstate, INT16 *key );',$0d,$0a,0
[00098f81]                           dc.b 'extern INT16 %s( INT16 anz, char **cmd, A_GSAntwort *antwort );',$0d,$0a,0
[00098fc3]                           dc.b '/* %s Type %d ?? */',$0d,$0a,0
[00098fd9]                           dc.b $2e
[00098fda]                           dc.w $4800
[00098fdc]                           dc.b 'ANSI C Header',0
[00098fea]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'PLATFORM',$09,$09,'*/',$0d,$0a,'#define ACS_ATARI',$0d,$0a,0
[00099014]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'ALERTBOXES',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[0009902f]                           dc.b 'extern char %s [%ld];',$0d,$0a,0
[00099047]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'STRINGS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[0009905f]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'ICONS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00099075]                           dc.b 'extern CICONBLK %s;',$0d,$0a,0
[0009908b]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'IMAGES',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[000990a2]                           dc.b 'extern BITBLK %s;',$0d,$0a,0
[000990b6]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'MENU TREES',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[000990d1]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'POPUP TREES',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[000990ed]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'OBJECT TREES',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[0009910a]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'WINDOWS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00099122]                           dc.b 'extern Awindow %s;',$0d,$0a,0
[00099137]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'MOUSEFORMS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00099152]                           dc.b 'extern MFORM %s;',$0d,$0a,0
[00099165]                           dc.b $00
