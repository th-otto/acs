
Aev_InitDD:
[00056354] 7001                      moveq.l    #1,d0
[00056356] 4e75                      rts

Aev_ExitDD:
[00056358] 7001                      moveq.l    #1,d0
[0005635a] 4e75                      rts

Aev_ddabort:
[0005635c] 5d4f                      subq.w     #6,a7
[0005635e] 3f40 0004                 move.w     d0,4(a7)
[00056362] 2e81                      move.l     d1,(a7)
[00056364] 2057                      movea.l    (a7),a0
[00056366] 700d                      moveq.l    #13,d0
[00056368] 4eb9 0007 2b30            jsr        Psignal
[0005636e] 302f 0004                 move.w     4(a7),d0
[00056372] 4eb9 0007 29ae            jsr        Fclose
[00056378] 7001                      moveq.l    #1,d0
[0005637a] 4eb9 0005 1e1c            jsr        Awi_update
[00056380] 4240                      clr.w      d0
[00056382] 5c4f                      addq.w     #6,a7
[00056384] 4e75                      rts

Aev_GetAPDragDrop:
[00056386] 2f0a                      move.l     a2,-(a7)
[00056388] 4fef ffac                 lea.l      -84(a7),a7
[0005638c] 2f48 0050                 move.l     a0,80(a7)
[00056390] 41f9 000d 4aba            lea.l      $000D4ABA,a0
[00056396] 43ef 003c                 lea.l      60(a7),a1
[0005639a] 7013                      moveq.l    #19,d0
Aev_GetAPDragDrop_1:
[0005639c] 12d8                      move.b     (a0)+,(a1)+
[0005639e] 51c8 fffc                 dbf        d0,Aev_GetAPDragDrop_1
[000563a2] 41f9 000d 4ace            lea.l      $000D4ACE,a0
[000563a8] 43ef 0014                 lea.l      20(a7),a1
[000563ac] 12d8                      move.b     (a0)+,(a1)+
[000563ae] 12d8                      move.b     (a0)+,(a1)+
[000563b0] 12d8                      move.b     (a0)+,(a1)+
[000563b2] 12d8                      move.b     (a0)+,(a1)+
[000563b4] 12d8                      move.b     (a0)+,(a1)+
[000563b6] 206f 0050                 movea.l    80(a7),a0
[000563ba] 2050                      movea.l    (a0),a0
[000563bc] 1f68 000f 004e            move.b     15(a0),78(a7)
[000563c2] 206f 0050                 movea.l    80(a7),a0
[000563c6] 2050                      movea.l    (a0),a0
[000563c8] 3028 000e                 move.w     14(a0),d0
[000563cc] e040                      asr.w      #8,d0
[000563ce] 1f40 004d                 move.b     d0,77(a7)
[000563d2] 7002                      moveq.l    #2,d0
[000563d4] 41ef 003c                 lea.l      60(a7),a0
[000563d8] 4eb9 0007 29f0            jsr        Fopen
[000563de] 2f40 0008                 move.l     d0,8(a7)
[000563e2] 202f 0008                 move.l     8(a7),d0
[000563e6] 6a06                      bpl.s      Aev_GetAPDragDrop_2
[000563e8] 4240                      clr.w      d0
[000563ea] 6000 0366                 bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_2:
[000563ee] 3f6f 000a 000e            move.w     10(a7),14(a7)
[000563f4] 4240                      clr.w      d0
[000563f6] 4eb9 0005 1e1c            jsr        Awi_update
[000563fc] 207c 0000 0001            movea.l    #$00000001,a0
[00056402] 700d                      moveq.l    #13,d0
[00056404] 4eb9 0007 2b30            jsr        Psignal
[0005640a] 2f40 0004                 move.l     d0,4(a7)
[0005640e] 7221                      moveq.l    #33,d1
[00056410] 4240                      clr.w      d0
[00056412] 41ef 001a                 lea.l      26(a7),a0
[00056416] 4eb9 0007 712e            jsr        memset
[0005641c] 43f9 000d 4ae8            lea.l      $000D4AE8,a1
[00056422] 41ef 001b                 lea.l      27(a7),a0
[00056426] 4eb9 0007 6950            jsr        strcpy
[0005642c] 41ef 001a                 lea.l      26(a7),a0
[00056430] 7221                      moveq.l    #33,d1
[00056432] 302f 000e                 move.w     14(a7),d0
[00056436] 4eb9 0007 2a8e            jsr        Fwrite
[0005643c] 7221                      moveq.l    #33,d1
[0005643e] b280                      cmp.l      d0,d1
[00056440] 6710                      beq.s      Aev_GetAPDragDrop_4
[00056442] 222f 0004                 move.l     4(a7),d1
[00056446] 302f 000e                 move.w     14(a7),d0
[0005644a] 6100 ff10                 bsr        Aev_ddabort
[0005644e] 6000 0302                 bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_4:
[00056452] 2079 000d 99d6            movea.l    _globl,a0
[00056458] 7032                      moveq.l    #50,d0
[0005645a] 4eb9 0006 af04            jsr        mt_evnt_timer
[00056460] 41ef 000c                 lea.l      12(a7),a0
[00056464] 7202                      moveq.l    #2,d1
[00056466] 302f 000e                 move.w     14(a7),d0
[0005646a] 4eb9 0007 2a02            jsr        Fread
[00056470] 7202                      moveq.l    #2,d1
[00056472] b280                      cmp.l      d0,d1
[00056474] 6608                      bne.s      Aev_GetAPDragDrop_5
[00056476] 0c6f 0008 000c            cmpi.w     #$0008,12(a7)
[0005647c] 6c10                      bge.s      Aev_GetAPDragDrop_6
Aev_GetAPDragDrop_5:
[0005647e] 222f 0004                 move.l     4(a7),d1
[00056482] 302f 000e                 move.w     14(a7),d0
[00056486] 6100 fed4                 bsr        Aev_ddabort
[0005648a] 6000 02c6                 bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_6:
[0005648e] 41ef 0014                 lea.l      20(a7),a0
[00056492] 7204                      moveq.l    #4,d1
[00056494] 302f 000e                 move.w     14(a7),d0
[00056498] 4eb9 0007 2a02            jsr        Fread
[0005649e] 7204                      moveq.l    #4,d1
[000564a0] b280                      cmp.l      d0,d1
[000564a2] 6710                      beq.s      Aev_GetAPDragDrop_7
[000564a4] 222f 0004                 move.l     4(a7),d1
[000564a8] 302f 000e                 move.w     14(a7),d0
[000564ac] 6100 feae                 bsr        Aev_ddabort
[000564b0] 6000 02a0                 bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_7:
[000564b4] 422f 0018                 clr.b      24(a7)
[000564b8] 41ef 0014                 lea.l      20(a7),a0
[000564bc] 4eb9 0004 3740            jsr        Ast_toupper
[000564c2] 596f 000c                 subq.w     #4,12(a7)
[000564c6] 7004                      moveq.l    #4,d0
[000564c8] 43f9 000d 4af1            lea.l      $000D4AF1,a1
[000564ce] 41ef 0014                 lea.l      20(a7),a0
[000564d2] 4eb9 0007 69fc            jsr        strncmp
[000564d8] 4a40                      tst.w      d0
[000564da] 664a                      bne.s      Aev_GetAPDragDrop_8
[000564dc] 6004                      bra.s      Aev_GetAPDragDrop_9
Aev_GetAPDragDrop_11:
[000564de] 536f 000c                 subq.w     #1,12(a7)
Aev_GetAPDragDrop_9:
[000564e2] 302f 000c                 move.w     12(a7),d0
[000564e6] 6f16                      ble.s      Aev_GetAPDragDrop_10
[000564e8] 41ef 001a                 lea.l      26(a7),a0
[000564ec] 7201                      moveq.l    #1,d1
[000564ee] 302f 000e                 move.w     14(a7),d0
[000564f2] 4eb9 0007 2a02            jsr        Fread
[000564f8] 7201                      moveq.l    #1,d1
[000564fa] b280                      cmp.l      d0,d1
[000564fc] 67e0                      beq.s      Aev_GetAPDragDrop_11
Aev_GetAPDragDrop_10:
[000564fe] 1f7c 0001 001a            move.b     #$01,26(a7)
[00056504] 41ef 001a                 lea.l      26(a7),a0
[00056508] 7201                      moveq.l    #1,d1
[0005650a] 302f 000e                 move.w     14(a7),d0
[0005650e] 4eb9 0007 2a8e            jsr        Fwrite
[00056514] 222f 0004                 move.l     4(a7),d1
[00056518] 302f 000e                 move.w     14(a7),d0
[0005651c] 6100 fe3e                 bsr        Aev_ddabort
[00056520] 7001                      moveq.l    #1,d0
[00056522] 6000 022e                 bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_8:
[00056526] 41d7                      lea.l      (a7),a0
[00056528] 7204                      moveq.l    #4,d1
[0005652a] 302f 000e                 move.w     14(a7),d0
[0005652e] 4eb9 0007 2a02            jsr        Fread
[00056534] 7204                      moveq.l    #4,d1
[00056536] b280                      cmp.l      d0,d1
[00056538] 6710                      beq.s      Aev_GetAPDragDrop_12
[0005653a] 222f 0004                 move.l     4(a7),d1
[0005653e] 302f 000e                 move.w     14(a7),d0
[00056542] 6100 fe18                 bsr        Aev_ddabort
[00056546] 6000 020a                 bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_12:
[0005654a] 596f 000c                 subq.w     #4,12(a7)
[0005654e] 602a                      bra.s      Aev_GetAPDragDrop_13
Aev_GetAPDragDrop_15:
[00056550] 41ef 001a                 lea.l      26(a7),a0
[00056554] 7201                      moveq.l    #1,d1
[00056556] 302f 000e                 move.w     14(a7),d0
[0005655a] 4eb9 0007 2a02            jsr        Fread
[00056560] 7201                      moveq.l    #1,d1
[00056562] b280                      cmp.l      d0,d1
[00056564] 6710                      beq.s      Aev_GetAPDragDrop_14
[00056566] 222f 0004                 move.l     4(a7),d1
[0005656a] 302f 000e                 move.w     14(a7),d0
[0005656e] 6100 fdec                 bsr        Aev_ddabort
[00056572] 6000 01de                 bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_14:
[00056576] 536f 000c                 subq.w     #1,12(a7)
Aev_GetAPDragDrop_13:
[0005657a] 302f 000c                 move.w     12(a7),d0
[0005657e] 6ed0                      bgt.s      Aev_GetAPDragDrop_15
[00056580] 7001                      moveq.l    #1,d0
[00056582] d097                      add.l      (a7),d0
[00056584] 4eb9 0004 7cc8            jsr        Ax_malloc
[0005658a] 2f48 0010                 move.l     a0,16(a7)
[0005658e] 202f 0010                 move.l     16(a7),d0
[00056592] 6626                      bne.s      Aev_GetAPDragDrop_16
[00056594] 1f7c 0001 001a            move.b     #$01,26(a7)
[0005659a] 41ef 001a                 lea.l      26(a7),a0
[0005659e] 7201                      moveq.l    #1,d1
[000565a0] 302f 000e                 move.w     14(a7),d0
[000565a4] 4eb9 0007 2a8e            jsr        Fwrite
[000565aa] 222f 0004                 move.l     4(a7),d1
[000565ae] 302f 000e                 move.w     14(a7),d0
[000565b2] 6100 fda8                 bsr        Aev_ddabort
[000565b6] 6000 019a                 bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_16:
[000565ba] 422f 001a                 clr.b      26(a7)
[000565be] 41ef 001a                 lea.l      26(a7),a0
[000565c2] 7201                      moveq.l    #1,d1
[000565c4] 302f 000e                 move.w     14(a7),d0
[000565c8] 4eb9 0007 2a8e            jsr        Fwrite
[000565ce] 7201                      moveq.l    #1,d1
[000565d0] b280                      cmp.l      d0,d1
[000565d2] 6710                      beq.s      Aev_GetAPDragDrop_17
[000565d4] 222f 0004                 move.l     4(a7),d1
[000565d8] 302f 000e                 move.w     14(a7),d0
[000565dc] 6100 fd7e                 bsr        Aev_ddabort
[000565e0] 6000 0170                 bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_17:
[000565e4] 2079 000d 99d6            movea.l    _globl,a0
[000565ea] 7064                      moveq.l    #100,d0
[000565ec] 4eb9 0006 af04            jsr        mt_evnt_timer
[000565f2] 206f 0010                 movea.l    16(a7),a0
[000565f6] 2217                      move.l     (a7),d1
[000565f8] 302f 000e                 move.w     14(a7),d0
[000565fc] 4eb9 0007 2a02            jsr        Fread
[00056602] b097                      cmp.l      (a7),d0
[00056604] 671a                      beq.s      Aev_GetAPDragDrop_18
[00056606] 206f 0010                 movea.l    16(a7),a0
[0005660a] 4eb9 0004 7e26            jsr        Ax_free
[00056610] 222f 0004                 move.l     4(a7),d1
[00056614] 302f 000e                 move.w     14(a7),d0
[00056618] 6100 fd42                 bsr        Aev_ddabort
[0005661c] 6000 0134                 bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_18:
[00056620] 222f 0004                 move.l     4(a7),d1
[00056624] 302f 000e                 move.w     14(a7),d0
[00056628] 6100 fd32                 bsr        Aev_ddabort
[0005662c] 2017                      move.l     (a7),d0
[0005662e] 206f 0010                 movea.l    16(a7),a0
[00056632] 4230 0800                 clr.b      0(a0,d0.l)
[00056636] 7004                      moveq.l    #4,d0
[00056638] 43f9 000d 4af6            lea.l      $000D4AF6,a1
[0005663e] 41ef 0014                 lea.l      20(a7),a0
[00056642] 4eb9 0007 69fc            jsr        strncmp
[00056648] 4a40                      tst.w      d0
[0005664a] 663c                      bne.s      Aev_GetAPDragDrop_19
[0005664c] 206f 0050                 movea.l    80(a7),a0
[00056650] 2f28 0014                 move.l     20(a0),-(a7)
[00056654] 206f 0054                 movea.l    84(a7),a0
[00056658] 2f28 0010                 move.l     16(a0),-(a7)
[0005665c] 206f 0058                 movea.l    88(a7),a0
[00056660] 3028 0018                 move.w     24(a0),d0
[00056664] 206f 0058                 movea.l    88(a7),a0
[00056668] 2268 000c                 movea.l    12(a0),a1
[0005666c] 206f 0018                 movea.l    24(a7),a0
[00056670] 4eb9 0005 4754            jsr        GetImgIntoObj
[00056676] 504f                      addq.w     #8,a7
[00056678] 206f 0010                 movea.l    16(a7),a0
[0005667c] 4eb9 0004 7e26            jsr        Ax_free
[00056682] 7001                      moveq.l    #1,d0
[00056684] 6000 00cc                 bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_19:
[00056688] 7004                      moveq.l    #4,d0
[0005668a] 43f9 000d 4afb            lea.l      $000D4AFB,a1
[00056690] 41ef 0014                 lea.l      20(a7),a0
[00056694] 4eb9 0007 69fc            jsr        strncmp
[0005669a] 4a40                      tst.w      d0
[0005669c] 6716                      beq.s      Aev_GetAPDragDrop_20
[0005669e] 7004                      moveq.l    #4,d0
[000566a0] 43f9 000d 4b00            lea.l      $000D4B00,a1
[000566a6] 41ef 0014                 lea.l      20(a7),a0
[000566aa] 4eb9 0007 69fc            jsr        strncmp
[000566b0] 4a40                      tst.w      d0
[000566b2] 6648                      bne.s      Aev_GetAPDragDrop_21
Aev_GetAPDragDrop_20:
[000566b4] 206f 0050                 movea.l    80(a7),a0
[000566b8] 2f28 0014                 move.l     20(a0),-(a7)
[000566bc] 206f 0054                 movea.l    84(a7),a0
[000566c0] 2f28 0010                 move.l     16(a0),-(a7)
[000566c4] 206f 0058                 movea.l    88(a7),a0
[000566c8] 2f28 000c                 move.l     12(a0),-(a7)
[000566cc] 206f 005c                 movea.l    92(a7),a0
[000566d0] 3228 001a                 move.w     26(a0),d1
[000566d4] 206f 005c                 movea.l    92(a7),a0
[000566d8] 3028 0018                 move.w     24(a0),d0
[000566dc] 43ef 0020                 lea.l      32(a7),a1
[000566e0] 206f 001c                 movea.l    28(a7),a0
[000566e4] 4eb9 0005 47c8            jsr        GetTxtIntoObj
[000566ea] 4fef 000c                 lea.l      12(a7),a7
[000566ee] 206f 0010                 movea.l    16(a7),a0
[000566f2] 4eb9 0004 7e26            jsr        Ax_free
[000566f8] 7001                      moveq.l    #1,d0
[000566fa] 6056                      bra.s      Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_21:
[000566fc] 0c2f 002e 0014            cmpi.b     #$2E,20(a7)
[00056702] 6710                      beq.s      Aev_GetAPDragDrop_22
[00056704] 43f9 000d 4b05            lea.l      $000D4B05,a1
[0005670a] 41ef 0014                 lea.l      20(a7),a0
[0005670e] 4eb9 0007 6950            jsr        strcpy
Aev_GetAPDragDrop_22:
[00056714] 4241                      clr.w      d1
[00056716] 2017                      move.l     (a7),d0
[00056718] 226f 0010                 movea.l    16(a7),a1
[0005671c] 41ef 0015                 lea.l      21(a7),a0
[00056720] 4eb9 0005 fd30            jsr        Ascrp_put
[00056726] 43ef 0015                 lea.l      21(a7),a1
[0005672a] 701d                      moveq.l    #29,d0
[0005672c] 206f 0050                 movea.l    80(a7),a0
[00056730] 2068 000c                 movea.l    12(a0),a0
[00056734] 246f 0050                 movea.l    80(a7),a2
[00056738] 246a 000c                 movea.l    12(a2),a2
[0005673c] 246a 0004                 movea.l    4(a2),a2
[00056740] 4e92                      jsr        (a2)
[00056742] 4a40                      tst.w      d0
[00056744] 660a                      bne.s      Aev_GetAPDragDrop_23
[00056746] 41ef 0015                 lea.l      21(a7),a0
[0005674a] 4eb9 0005 faca            jsr        Ascrp_clear
Aev_GetAPDragDrop_23:
[00056750] 7001                      moveq.l    #1,d0
Aev_GetAPDragDrop_3:
[00056752] 4fef 0054                 lea.l      84(a7),a7
[00056756] 245f                      movea.l    (a7)+,a2
[00056758] 4e75                      rts

		.data

[000d4aba]                           dc.b 'U:\PIPE\DRAGDROP.AA',0
[000d4ace]                           dc.b $00
[000d4acf]                           dc.b $00
[000d4ad0]                           dc.b $00
[000d4ad1]                           dc.b $00
[000d4ad2]                           dc.b $00
[000d4ad3]                           dc.b 'U:\PIPE\DRAGDROP.AA',0
[000d4ae7]                           dc.b $00
[000d4ae8]                           dc.b '.TXT.IMG',0
[000d4af1]                           dc.b 'PATH',0
[000d4af6]                           dc.b '.IMG',0
[000d4afb]                           dc.b '.TXT',0
[000d4b00]                           dc.b 'ARGS',0
[000d4b05]                           dc.b '.TMP',0
[000d4b0a]                           dc.b 'U:\PIPE',0
[000d4b12]                           dc.b '    ',0
[000d4b17]                           dc.b $00
[000d4b18]                           dc.b $00
[000d4b19]                           dc.b 'PATH',0
