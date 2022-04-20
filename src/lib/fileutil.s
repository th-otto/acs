
Af_cfgfile:
[00047066] 48e7 0038                 movem.l    a2-a4,-(a7)
[0004706a] 2848                      movea.l    a0,a4
[0004706c] 45f9 0010 1f12            lea.l      ACSblk,a2
[00047072] 47f9 0010 6654            lea.l      scrap,a3
[00047078] 2052                      movea.l    (a2),a0
[0004707a] 41e8 02d6                 lea.l      726(a0),a0
[0004707e] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00047084] 4a40                      tst.w      d0
[00047086] 6612                      bne.s      Af_cfgfile_1
[00047088] 2052                      movea.l    (a2),a0
[0004708a] 41e8 02d6                 lea.l      726(a0),a0
[0004708e] 4eb9 0004 73bc            jsr        Af_length
[00047094] 72ff                      moveq.l    #-1,d1
[00047096] b280                      cmp.l      d0,d1
[00047098] 6f30                      ble.s      Af_cfgfile_2
Af_cfgfile_1:
[0004709a] 2052                      movea.l    (a2),a0
[0004709c] 1028 0356                 move.b     854(a0),d0
[000470a0] 6618                      bne.s      Af_cfgfile_3
[000470a2] 43f9 000d 38b0            lea.l      $000D38B0,a1
[000470a8] 204b                      movea.l    a3,a0
[000470aa] 4eb9 0007 6950            jsr        strcpy
[000470b0] 4eb9 0007 2902            jsr        Dgetdrv
[000470b6] d113                      add.b      d0,(a3)
[000470b8] 601e                      bra.s      Af_cfgfile_4
Af_cfgfile_3:
[000470ba] 2252                      movea.l    (a2),a1
[000470bc] 43e9 0356                 lea.l      854(a1),a1
[000470c0] 204b                      movea.l    a3,a0
[000470c2] 4eb9 0007 6950            jsr        strcpy
[000470c8] 600e                      bra.s      Af_cfgfile_4
Af_cfgfile_2:
[000470ca] 2252                      movea.l    (a2),a1
[000470cc] 43e9 02d6                 lea.l      726(a1),a1
[000470d0] 204b                      movea.l    a3,a0
[000470d2] 4eb9 0007 6950            jsr        strcpy
Af_cfgfile_4:
[000470d8] 224c                      movea.l    a4,a1
[000470da] 204b                      movea.l    a3,a0
[000470dc] 4eb9 0007 6886            jsr        strcat
[000470e2] 43f9 000d 38b4            lea.l      $000D38B4,a1
[000470e8] 204b                      movea.l    a3,a0
[000470ea] 4eb9 0007 6886            jsr        strcat
[000470f0] 204b                      movea.l    a3,a0
[000470f2] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000470f6] 4e75                      rts

Af_2drv:
[000470f8] 2f0a                      move.l     a2,-(a7)
[000470fa] 2448                      movea.l    a0,a2
[000470fc] 0c2a 003a 0001            cmpi.b     #$3A,1(a2)
[00047102] 661e                      bne.s      Af_2drv_1
[00047104] 1010                      move.b     (a0),d0
[00047106] 4880                      ext.w      d0
[00047108] 4eb9 0007 7200            jsr        isalpha
[0004710e] 4a40                      tst.w      d0
[00047110] 6710                      beq.s      Af_2drv_1
[00047112] 1012                      move.b     (a2),d0
[00047114] 4880                      ext.w      d0
[00047116] 4eb9 0007 7268            jsr        toupper
[0004711c] d07c ffbf                 add.w      #$FFBF,d0
[00047120] 6006                      bra.s      Af_2drv_2
Af_2drv_1:
[00047122] 4eb9 0007 2902            jsr        Dgetdrv
Af_2drv_2:
[00047128] 245f                      movea.l    (a7)+,a2
[0004712a] 4e75                      rts

Af_2path:
[0004712c] 48e7 0038                 movem.l    a2-a4,-(a7)
[00047130] 2648                      movea.l    a0,a3
[00047132] 2849                      movea.l    a1,a4
[00047134] 705c                      moveq.l    #92,d0
[00047136] 2049                      movea.l    a1,a0
[00047138] 4eb9 0007 68ce            jsr        strchr
[0004713e] 2448                      movea.l    a0,a2
[00047140] 200a                      move.l     a2,d0
[00047142] 662e                      bne.s      Af_2path_1
[00047144] 204b                      movea.l    a3,a0
[00047146] 4240                      clr.w      d0
[00047148] 4eb9 0007 2910            jsr        Dgetpath
[0004714e] 204b                      movea.l    a3,a0
[00047150] 4eb9 0007 69b0            jsr        strlen
[00047156] 5380                      subq.l     #1,d0
[00047158] 0c33 005c 0800            cmpi.b     #$5C,0(a3,d0.l)
[0004715e] 6700 0076                 beq.w      Af_2path_2
[00047162] 43f9 000d 38b2            lea.l      $000D38B2,a1
[00047168] 204b                      movea.l    a3,a0
[0004716a] 4eb9 0007 6886            jsr        strcat
[00047170] 6064                      bra.s      Af_2path_2
Af_2path_1:
[00047172] 1014                      move.b     (a4),d0
[00047174] 4880                      ext.w      d0
[00047176] 4eb9 0007 725e            jsr        isascii
[0004717c] 4a40                      tst.w      d0
[0004717e] 6716                      beq.s      Af_2path_3
[00047180] 1014                      move.b     (a4),d0
[00047182] 4880                      ext.w      d0
[00047184] 4eb9 0007 71ee            jsr        isalnum
[0004718a] 4a40                      tst.w      d0
[0004718c] 6708                      beq.s      Af_2path_3
[0004718e] 0c2c 003a 0001            cmpi.b     #$3A,1(a4)
[00047194] 6702                      beq.s      Af_2path_4
Af_2path_3:
[00047196] 244c                      movea.l    a4,a2
Af_2path_4:
[00047198] 7002                      moveq.l    #2,d0
[0004719a] 43f9 000d 38b9            lea.l      $000D38B9,a1
[000471a0] 204c                      movea.l    a4,a0
[000471a2] 4eb9 0004 3918            jsr        Ast_ncmp
[000471a8] 4a40                      tst.w      d0
[000471aa] 660c                      bne.s      Af_2path_5
[000471ac] 4240                      clr.w      d0
[000471ae] 204b                      movea.l    a3,a0
[000471b0] 4eb9 0007 2910            jsr        Dgetpath
[000471b6] 6002                      bra.s      Af_2path_6
Af_2path_5:
[000471b8] 4213                      clr.b      (a3)
Af_2path_6:
[000471ba] 705c                      moveq.l    #92,d0
[000471bc] 204c                      movea.l    a4,a0
[000471be] 4eb9 0007 68e2            jsr        strrchr
[000471c4] 2848                      movea.l    a0,a4
[000471c6] 200c                      move.l     a4,d0
[000471c8] 908a                      sub.l      a2,d0
[000471ca] 5280                      addq.l     #1,d0
[000471cc] 224a                      movea.l    a2,a1
[000471ce] 204b                      movea.l    a3,a0
[000471d0] 4eb9 0007 69da            jsr        strncat
Af_2path_2:
[000471d6] 204b                      movea.l    a3,a0
[000471d8] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000471dc] 4e75                      rts

Af_2name:
[000471de] 48e7 0038                 movem.l    a2-a4,-(a7)
[000471e2] 2848                      movea.l    a0,a4
[000471e4] 2649                      movea.l    a1,a3
[000471e6] 705c                      moveq.l    #92,d0
[000471e8] 2049                      movea.l    a1,a0
[000471ea] 4eb9 0007 68e2            jsr        strrchr
[000471f0] 2448                      movea.l    a0,a2
[000471f2] 200a                      move.l     a2,d0
[000471f4] 6614                      bne.s      Af_2name_1
[000471f6] 204b                      movea.l    a3,a0
[000471f8] 703a                      moveq.l    #58,d0
[000471fa] 4eb9 0007 68e2            jsr        strrchr
[00047200] 2448                      movea.l    a0,a2
[00047202] 200a                      move.l     a2,d0
[00047204] 6604                      bne.s      Af_2name_1
[00047206] 244b                      movea.l    a3,a2
[00047208] 6002                      bra.s      Af_2name_2
Af_2name_1:
[0004720a] 524a                      addq.w     #1,a2
Af_2name_2:
[0004720c] 702e                      moveq.l    #46,d0
[0004720e] 204a                      movea.l    a2,a0
[00047210] 4eb9 0007 68e2            jsr        strrchr
[00047216] 2648                      movea.l    a0,a3
[00047218] 200b                      move.l     a3,d0
[0004721a] 660c                      bne.s      Af_2name_3
[0004721c] 224a                      movea.l    a2,a1
[0004721e] 204c                      movea.l    a4,a0
[00047220] 4eb9 0007 6950            jsr        strcpy
[00047226] 6016                      bra.s      Af_2name_4
Af_2name_3:
[00047228] 200b                      move.l     a3,d0
[0004722a] 908a                      sub.l      a2,d0
[0004722c] 224a                      movea.l    a2,a1
[0004722e] 204c                      movea.l    a4,a0
[00047230] 4eb9 0007 6a1a            jsr        strncpy
[00047236] 204b                      movea.l    a3,a0
[00047238] 91ca                      suba.l     a2,a0
[0004723a] 4234 8800                 clr.b      0(a4,a0.l)
Af_2name_4:
[0004723e] 204c                      movea.l    a4,a0
[00047240] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00047244] 4e75                      rts

Af_2fullname:
[00047246] 48e7 0038                 movem.l    a2-a4,-(a7)
[0004724a] 2848                      movea.l    a0,a4
[0004724c] 2449                      movea.l    a1,a2
[0004724e] 705c                      moveq.l    #92,d0
[00047250] 2049                      movea.l    a1,a0
[00047252] 4eb9 0007 68e2            jsr        strrchr
[00047258] 2648                      movea.l    a0,a3
[0004725a] 200b                      move.l     a3,d0
[0004725c] 6614                      bne.s      Af_2fullname_1
[0004725e] 204a                      movea.l    a2,a0
[00047260] 703a                      moveq.l    #58,d0
[00047262] 4eb9 0007 68e2            jsr        strrchr
[00047268] 2648                      movea.l    a0,a3
[0004726a] 200b                      move.l     a3,d0
[0004726c] 6604                      bne.s      Af_2fullname_1
[0004726e] 264a                      movea.l    a2,a3
[00047270] 6002                      bra.s      Af_2fullname_2
Af_2fullname_1:
[00047272] 524b                      addq.w     #1,a3
Af_2fullname_2:
[00047274] 224b                      movea.l    a3,a1
[00047276] 204c                      movea.l    a4,a0
[00047278] 4eb9 0007 6950            jsr        strcpy
[0004727e] 204c                      movea.l    a4,a0
[00047280] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00047284] 4e75                      rts

Af_2ext:
[00047286] 48e7 0038                 movem.l    a2-a4,-(a7)
[0004728a] 2848                      movea.l    a0,a4
[0004728c] 2649                      movea.l    a1,a3
[0004728e] 705c                      moveq.l    #92,d0
[00047290] 2049                      movea.l    a1,a0
[00047292] 4eb9 0007 68e2            jsr        strrchr
[00047298] 2448                      movea.l    a0,a2
[0004729a] 702e                      moveq.l    #46,d0
[0004729c] 204b                      movea.l    a3,a0
[0004729e] 4eb9 0007 68e2            jsr        strrchr
[000472a4] 2648                      movea.l    a0,a3
[000472a6] 200b                      move.l     a3,d0
[000472a8] 6708                      beq.s      Af_2ext_1
[000472aa] 220a                      move.l     a2,d1
[000472ac] 6714                      beq.s      Af_2ext_2
[000472ae] b081                      cmp.l      d1,d0
[000472b0] 6410                      bcc.s      Af_2ext_2
Af_2ext_1:
[000472b2] 43f9 000d 38b3            lea.l      $000D38B3,a1
[000472b8] 204c                      movea.l    a4,a0
[000472ba] 4eb9 0007 6950            jsr        strcpy
[000472c0] 600c                      bra.s      Af_2ext_3
Af_2ext_2:
[000472c2] 43eb 0001                 lea.l      1(a3),a1
[000472c6] 204c                      movea.l    a4,a0
[000472c8] 4eb9 0007 6950            jsr        strcpy
Af_2ext_3:
[000472ce] 204c                      movea.l    a4,a0
[000472d0] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000472d4] 4e75                      rts

Af_buildname:
[000472d6] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[000472da] 2648                      movea.l    a0,a3
[000472dc] 3800                      move.w     d0,d4
[000472de] 2849                      movea.l    a1,a4
[000472e0] 2a6f 0020                 movea.l    32(a7),a5
[000472e4] 2c6f 0024                 movea.l    36(a7),a6
[000472e8] 7603                      moveq.l    #3,d3
[000472ea] 45f9 000d 38b0            lea.l      $000D38B0,a2
[000472f0] 224a                      movea.l    a2,a1
[000472f2] 204b                      movea.l    a3,a0
[000472f4] 4eb9 0007 6950            jsr        strcpy
[000472fa] 4a44                      tst.w      d4
[000472fc] 6b04                      bmi.s      Af_buildname_1
[000472fe] d913                      add.b      d4,(a3)
[00047300] 6008                      bra.s      Af_buildname_2
Af_buildname_1:
[00047302] 4eb9 0007 2902            jsr        Dgetdrv
[00047308] d113                      add.b      d0,(a3)
Af_buildname_2:
[0004730a] 200c                      move.l     a4,d0
[0004730c] 6704                      beq.s      Af_buildname_3
[0004730e] 1214                      move.b     (a4),d1
[00047310] 6628                      bne.s      Af_buildname_4
Af_buildname_3:
[00047312] 1013                      move.b     (a3),d0
[00047314] 4880                      ext.w      d0
[00047316] d07c ffc0                 add.w      #$FFC0,d0
[0004731a] 41eb 0002                 lea.l      2(a3),a0
[0004731e] 4eb9 0007 2910            jsr        Dgetpath
[00047324] 43ea 0002                 lea.l      2(a2),a1
[00047328] 204b                      movea.l    a3,a0
[0004732a] 4eb9 0007 6886            jsr        strcat
[00047330] 4eb9 0007 69b0            jsr        strlen
[00047336] 2600                      move.l     d0,d3
[00047338] 603a                      bra.s      Af_buildname_5
Af_buildname_4:
[0004733a] 0c14 005c                 cmpi.b     #$5C,(a4)
[0004733e] 6606                      bne.s      Af_buildname_6
[00047340] 43ec 0001                 lea.l      1(a4),a1
[00047344] 6002                      bra.s      Af_buildname_7
Af_buildname_6:
[00047346] 224c                      movea.l    a4,a1
Af_buildname_7:
[00047348] 41f3 3800                 lea.l      0(a3,d3.l),a0
[0004734c] 4eb9 0007 6950            jsr        strcpy
[00047352] 204b                      movea.l    a3,a0
[00047354] 4eb9 0007 69b0            jsr        strlen
[0004735a] 2600                      move.l     d0,d3
[0004735c] 0c33 005c 38ff            cmpi.b     #$5C,-1(a3,d3.l)
[00047362] 6710                      beq.s      Af_buildname_5
[00047364] 43ea 0002                 lea.l      2(a2),a1
[00047368] 41f3 3800                 lea.l      0(a3,d3.l),a0
[0004736c] 4eb9 0007 6950            jsr        strcpy
[00047372] 5283                      addq.l     #1,d3
Af_buildname_5:
[00047374] 200d                      move.l     a5,d0
[00047376] 673c                      beq.s      Af_buildname_8
[00047378] 224d                      movea.l    a5,a1
[0004737a] 204b                      movea.l    a3,a0
[0004737c] 4eb9 0007 6886            jsr        strcat
[00047382] 200e                      move.l     a6,d0
[00047384] 672e                      beq.s      Af_buildname_8
[00047386] 204b                      movea.l    a3,a0
[00047388] 4eb9 0007 69b0            jsr        strlen
[0004738e] 2600                      move.l     d0,d3
[00047390] 0c33 002e 38ff            cmpi.b     #$2E,-1(a3,d3.l)
[00047396] 6710                      beq.s      Af_buildname_9
[00047398] 43ea 000c                 lea.l      12(a2),a1
[0004739c] 41f3 3800                 lea.l      0(a3,d3.l),a0
[000473a0] 4eb9 0007 6950            jsr        strcpy
[000473a6] 5283                      addq.l     #1,d3
Af_buildname_9:
[000473a8] 224e                      movea.l    a6,a1
[000473aa] 41f3 3800                 lea.l      0(a3,d3.l),a0
[000473ae] 4eb9 0007 6950            jsr        strcpy
Af_buildname_8:
[000473b4] 204b                      movea.l    a3,a0
[000473b6] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[000473ba] 4e75                      rts

Af_length:
[000473bc] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[000473c0] 2448                      movea.l    a0,a2
[000473c2] 76fe                      moveq.l    #-2,d3
[000473c4] 200a                      move.l     a2,d0
[000473c6] 675e                      beq.s      Af_length_1
[000473c8] 1210                      move.b     (a0),d1
[000473ca] 675a                      beq.s      Af_length_1
[000473cc] 142a 0001                 move.b     1(a2),d2
[000473d0] 6606                      bne.s      Af_length_2
[000473d2] b23c 005c                 cmp.b      #$5C,d1
[000473d6] 6748                      beq.s      Af_length_3
Af_length_2:
[000473d8] 1012                      move.b     (a2),d0
[000473da] 4880                      ext.w      d0
[000473dc] 4eb9 0007 725e            jsr        isascii
[000473e2] 4a40                      tst.w      d0
[000473e4] 6746                      beq.s      Af_length_4
[000473e6] 1012                      move.b     (a2),d0
[000473e8] 4880                      ext.w      d0
[000473ea] 4eb9 0007 7200            jsr        isalpha
[000473f0] 4a40                      tst.w      d0
[000473f2] 6738                      beq.s      Af_length_4
[000473f4] 43f9 000d 38b1            lea.l      $000D38B1,a1
[000473fa] 41ea 0001                 lea.l      1(a2),a0
[000473fe] 4eb9 0004 3856            jsr        Ast_cmp
[00047404] 4a40                      tst.w      d0
[00047406] 6624                      bne.s      Af_length_4
[00047408] 4eb9 0007 2902            jsr        Dgetdrv
[0004740e] 4eb9 0007 2978            jsr        Dsetdrv
[00047414] 7201                      moveq.l    #1,d1
[00047416] 74bf                      moveq.l    #-65,d2
[00047418] d412                      add.b      (a2),d2
[0004741a] e5a9                      lsl.l      d2,d1
[0004741c] c081                      and.l      d1,d0
[0004741e] 6706                      beq.s      Af_length_1
Af_length_3:
[00047420] 70ff                      moveq.l    #-1,d0
[00047422] 6000 007a                 bra.w      Af_length_5
Af_length_1:
[00047426] 70fe                      moveq.l    #-2,d0
[00047428] 6000 0074                 bra.w      Af_length_5
Af_length_4:
[0004742c] 4eb9 0004 9902            jsr        Amo_busy
[00047432] 705c                      moveq.l    #92,d0
[00047434] 204a                      movea.l    a2,a0
[00047436] 4eb9 0007 68e2            jsr        strrchr
[0004743c] 2648                      movea.l    a0,a3
[0004743e] 200b                      move.l     a3,d0
[00047440] 670a                      beq.s      Af_length_6
[00047442] 122b 0001                 move.b     1(a3),d1
[00047446] 6604                      bne.s      Af_length_6
[00047448] 4210                      clr.b      (a0)
[0004744a] 6002                      bra.s      Af_length_7
Af_length_6:
[0004744c] 97cb                      suba.l     a3,a3
Af_length_7:
[0004744e] 4241                      clr.w      d1
[00047450] 4240                      clr.w      d0
[00047452] 204a                      movea.l    a2,a0
[00047454] 4eb9 0007 2998            jsr        Fattrib
[0004745a] 4a80                      tst.l      d0
[0004745c] 6b30                      bmi.s      Af_length_8
[0004745e] 7210                      moveq.l    #16,d1
[00047460] c240                      and.w      d0,d1
[00047462] 6704                      beq.s      Af_length_9
[00047464] 76ff                      moveq.l    #-1,d3
[00047466] 6026                      bra.s      Af_length_8
Af_length_9:
[00047468] 4240                      clr.w      d0
[0004746a] 204a                      movea.l    a2,a0
[0004746c] 4eb9 0007 29f0            jsr        Fopen
[00047472] 2800                      move.l     d0,d4
[00047474] 4a80                      tst.l      d0
[00047476] 6f16                      ble.s      Af_length_8
[00047478] 7402                      moveq.l    #2,d2
[0004747a] 3204                      move.w     d4,d1
[0004747c] 7000                      moveq.l    #0,d0
[0004747e] 4eb9 0007 2a2e            jsr        Fseek
[00047484] 2600                      move.l     d0,d3
[00047486] 3004                      move.w     d4,d0
[00047488] 4eb9 0007 29ae            jsr        Fclose
Af_length_8:
[0004748e] 4eb9 0004 9940            jsr        Amo_unbusy
[00047494] 200b                      move.l     a3,d0
[00047496] 6704                      beq.s      Af_length_10
[00047498] 16bc 005c                 move.b     #$5C,(a3)
Af_length_10:
[0004749c] 2003                      move.l     d3,d0
Af_length_5:
[0004749e] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[000474a2] 4e75                      rts

Af_readdirOld:
[000474a4] 48e7 183a                 movem.l    d3-d4/a2-a4/a6,-(a7)
[000474a8] 4fef ffd0                 lea.l      -48(a7),a7
[000474ac] 2448                      movea.l    a0,a2
[000474ae] 4eb9 0007 69b0            jsr        strlen
[000474b4] 2600                      move.l     d0,d3
[000474b6] 47f9 000d 38b0            lea.l      $000D38B0,a3
[000474bc] 0c32 005c 38ff            cmpi.b     #$5C,-1(a2,d3.l)
[000474c2] 660e                      bne.s      Af_readdirOld_1
[000474c4] 43eb 000e                 lea.l      14(a3),a1
[000474c8] 204a                      movea.l    a2,a0
[000474ca] 4eb9 0007 6886            jsr        strcat
[000474d0] 600c                      bra.s      Af_readdirOld_2
Af_readdirOld_1:
[000474d2] 43eb 0012                 lea.l      18(a3),a1
[000474d6] 204a                      movea.l    a2,a0
[000474d8] 4eb9 0007 6886            jsr        strcat
Af_readdirOld_2:
[000474de] 4eb9 0007 29e0            jsr        Fgetdta
[000474e4] 2f48 002c                 move.l     a0,44(a7)
[000474e8] 41d7                      lea.l      (a7),a0
[000474ea] 4eb9 0007 2a5e            jsr        Fsetdta
[000474f0] 9dce                      suba.l     a6,a6
[000474f2] 284e                      movea.l    a6,a4
[000474f4] 7011                      moveq.l    #17,d0
[000474f6] 204a                      movea.l    a2,a0
[000474f8] 4eb9 0007 2a6e            jsr        Fsfirst
[000474fe] 3800                      move.w     d0,d4
[00047500] 6000 0100                 bra        Af_readdirOld_3
Af_readdirOld_9:
[00047504] 43eb 000c                 lea.l      12(a3),a1
[00047508] 41ef 001e                 lea.l      30(a7),a0
[0004750c] 4eb9 0004 3856            jsr        Ast_cmp
[00047512] 4a40                      tst.w      d0
[00047514] 6700 00e4                 beq        Af_readdirOld_4
[00047518] 43eb 0017                 lea.l      23(a3),a1
[0004751c] 41ef 001e                 lea.l      30(a7),a0
[00047520] 4eb9 0004 3856            jsr        Ast_cmp
[00047526] 4a40                      tst.w      d0
[00047528] 6700 00d0                 beq        Af_readdirOld_4
[0004752c] 200c                      move.l     a4,d0
[0004752e] 661e                      bne.s      Af_readdirOld_5
[00047530] 703c                      moveq.l    #60,d0
[00047532] 4eb9 0004 7cc8            jsr        Ax_malloc
[00047538] 2c48                      movea.l    a0,a6
[0004753a] 200e                      move.l     a6,d0
[0004753c] 6700 00ca                 beq        Af_readdirOld_6
[00047540] 723c                      moveq.l    #60,d1
[00047542] 4240                      clr.w      d0
[00047544] 4eb9 0007 712e            jsr        memset
[0004754a] 284e                      movea.l    a6,a4
[0004754c] 6020                      bra.s      Af_readdirOld_7
Af_readdirOld_5:
[0004754e] 703c                      moveq.l    #60,d0
[00047550] 4eb9 0004 7cc8            jsr        Ax_malloc
[00047556] 2d48 0004                 move.l     a0,4(a6)
[0004755a] 2008                      move.l     a0,d0
[0004755c] 6700 00aa                 beq        Af_readdirOld_6
[00047560] 2c40                      movea.l    d0,a6
[00047562] 723c                      moveq.l    #60,d1
[00047564] 204e                      movea.l    a6,a0
[00047566] 4240                      clr.w      d0
[00047568] 4eb9 0007 712e            jsr        memset
Af_readdirOld_7:
[0004756e] 7014                      moveq.l    #20,d0
[00047570] d083                      add.l      d3,d0
[00047572] 4eb9 0004 7cc8            jsr        Ax_malloc
[00047578] 2c88                      move.l     a0,(a6)
[0004757a] 2008                      move.l     a0,d0
[0004757c] 6700 008a                 beq        Af_readdirOld_6
[00047580] 4210                      clr.b      (a0)
[00047582] 224a                      movea.l    a2,a1
[00047584] 2056                      movea.l    (a6),a0
[00047586] 4eb9 0007 6950            jsr        strcpy
[0004758c] 2056                      movea.l    (a6),a0
[0004758e] 4eb9 0007 69b0            jsr        strlen
[00047594] 5780                      subq.l     #3,d0
[00047596] 2056                      movea.l    (a6),a0
[00047598] 4230 0800                 clr.b      0(a0,d0.l)
[0004759c] 43ef 001e                 lea.l      30(a7),a1
[000475a0] 2056                      movea.l    (a6),a0
[000475a2] 4eb9 0007 6886            jsr        strcat
[000475a8] 7010                      moveq.l    #16,d0
[000475aa] c02f 0015                 and.b      21(a7),d0
[000475ae] 670c                      beq.s      Af_readdirOld_8
[000475b0] 43eb 0002                 lea.l      2(a3),a1
[000475b4] 2056                      movea.l    (a6),a0
[000475b6] 4eb9 0007 6886            jsr        strcat
Af_readdirOld_8:
[000475bc] 102f 0015                 move.b     21(a7),d0
[000475c0] 4880                      ext.w      d0
[000475c2] 3d40 0030                 move.w     d0,48(a6)
[000475c6] 3d6f 0016 0024            move.w     22(a7),36(a6)
[000475cc] 3d6f 0016 0028            move.w     22(a7),40(a6)
[000475d2] 3d6f 0016 002c            move.w     22(a7),44(a6)
[000475d8] 3d6f 0018 0026            move.w     24(a7),38(a6)
[000475de] 3d6f 0018 002a            move.w     24(a7),42(a6)
[000475e4] 3d6f 0018 002e            move.w     24(a7),46(a6)
[000475ea] 204a                      movea.l    a2,a0
[000475ec] 6100 fb0a                 bsr        Af_2drv
[000475f0] 3d40 000e                 move.w     d0,14(a6)
[000475f4] 2d6f 001a 0018            move.l     26(a7),24(a6)
Af_readdirOld_4:
[000475fa] 4eb9 0007 2a80            jsr        Fsnext
[00047600] 3800                      move.w     d0,d4
Af_readdirOld_3:
[00047602] 4a44                      tst.w      d4
[00047604] 6700 fefe                 beq        Af_readdirOld_9
Af_readdirOld_6:
[00047608] 206f 002c                 movea.l    44(a7),a0
[0004760c] 4eb9 0007 2a5e            jsr        Fsetdta
[00047612] 4a44                      tst.w      d4
[00047614] 660c                      bne.s      Af_readdirOld_10
[00047616] 204c                      movea.l    a4,a0
[00047618] 4eb9 0004 795e            jsr        Af_freedir
[0004761e] 9dce                      suba.l     a6,a6
[00047620] 284e                      movea.l    a6,a4
Af_readdirOld_10:
[00047622] 204c                      movea.l    a4,a0
[00047624] 4fef 0030                 lea.l      48(a7),a7
[00047628] 4cdf 5c18                 movem.l    (a7)+,d3-d4/a2-a4/a6
[0004762c] 4e75                      rts

Af_readdirNew:
[0004762e] 48e7 1f1e                 movem.l    d3-d7/a3-a6,-(a7)
[00047632] 4fef ffc4                 lea.l      -60(a7),a7
[00047636] 2f48 0038                 move.l     a0,56(a7)
[0004763a] 4243                      clr.w      d3
[0004763c] 4eb9 0007 69b0            jsr        strlen
[00047642] 2800                      move.l     d0,d4
[00047644] 70ff                      moveq.l    #-1,d0
[00047646] 206f 0038                 movea.l    56(a7),a0
[0004764a] 4eb9 0007 2934            jsr        Dpathconf
[00047650] 2a00                      move.l     d0,d5
[00047652] 72e0                      moveq.l    #-32,d1
[00047654] b280                      cmp.l      d0,d1
[00047656] 6726                      beq.s      Af_readdirNew_1
[00047658] 7402                      moveq.l    #2,d2
[0004765a] b480                      cmp.l      d0,d2
[0004765c] 6e20                      bgt.s      Af_readdirNew_1
[0004765e] 206f 0038                 movea.l    56(a7),a0
[00047662] 7002                      moveq.l    #2,d0
[00047664] 4eb9 0007 2934            jsr        Dpathconf
[0004766a] 2a00                      move.l     d0,d5
[0004766c] 72e0                      moveq.l    #-32,d1
[0004766e] b280                      cmp.l      d0,d1
[00047670] 6706                      beq.s      Af_readdirNew_2
[00047672] 7c1e                      moveq.l    #30,d6
[00047674] dc45                      add.w      d5,d6
[00047676] 6004                      bra.s      Af_readdirNew_3
Af_readdirNew_2:
[00047678] 3c3c 0096                 move.w     #$0096,d6
Af_readdirNew_3:
[0004767c] 6004                      bra.s      Af_readdirNew_4
Af_readdirNew_1:
[0004767e] 3c3c 0096                 move.w     #$0096,d6
Af_readdirNew_4:
[00047682] 3006                      move.w     d6,d0
[00047684] 48c0                      ext.l      d0
[00047686] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004768c] 2648                      movea.l    a0,a3
[0004768e] 200b                      move.l     a3,d0
[00047690] 673c                      beq.s      Af_readdirNew_5
[00047692] 4210                      clr.b      (a0)
[00047694] 206f 0038                 movea.l    56(a7),a0
[00047698] 4240                      clr.w      d0
[0004769a] 4eb9 0007 2922            jsr        Dopendir
[000476a0] 2e00                      move.l     d0,d7
[000476a2] c0bc ff00 0000            and.l      #$FF000000,d0
[000476a8] b0bc ff00 0000            cmp.l      #$FF000000,d0
[000476ae] 6712                      beq.s      Af_readdirNew_6
[000476b0] 72de                      moveq.l    #-34,d1
[000476b2] b287                      cmp.l      d7,d1
[000476b4] 670c                      beq.s      Af_readdirNew_6
[000476b6] 74dc                      moveq.l    #-36,d2
[000476b8] b487                      cmp.l      d7,d2
[000476ba] 6706                      beq.s      Af_readdirNew_6
[000476bc] 70d9                      moveq.l    #-39,d0
[000476be] b087                      cmp.l      d7,d0
[000476c0] 6612                      bne.s      Af_readdirNew_7
Af_readdirNew_6:
[000476c2] 4a87                      tst.l      d7
[000476c4] 6b08                      bmi.s      Af_readdirNew_5
[000476c6] 2007                      move.l     d7,d0
[000476c8] 4eb9 0007 28e2            jsr        Dclosedir
Af_readdirNew_5:
[000476ce] 91c8                      suba.l     a0,a0
[000476d0] 6000 01ba                 bra        Af_readdirNew_8
Af_readdirNew_7:
[000476d4] 99cc                      suba.l     a4,a4
[000476d6] 2a4c                      movea.l    a4,a5
Af_readdirNew_17:
[000476d8] 4def 0034                 lea.l      52(a7),a6
[000476dc] 4856                      pea.l      (a6)
[000476de] 43ef 0004                 lea.l      4(a7),a1
[000476e2] 204b                      movea.l    a3,a0
[000476e4] 2207                      move.l     d7,d1
[000476e6] 3006                      move.w     d6,d0
[000476e8] 4eb9 0007 295c            jsr        Dxreaddir
[000476ee] 584f                      addq.w     #4,a7
[000476f0] 2a00                      move.l     d0,d5
[000476f2] 72e0                      moveq.l    #-32,d1
[000476f4] b280                      cmp.l      d0,d1
[000476f6] 6636                      bne.s      Af_readdirNew_9
Af_readdirNew_10:
[000476f8] 204b                      movea.l    a3,a0
[000476fa] 2207                      move.l     d7,d1
[000476fc] 3006                      move.w     d6,d0
[000476fe] 4eb9 0007 2946            jsr        Dreaddir
[00047704] 2a00                      move.l     d0,d5
[00047706] 72c0                      moveq.l    #-64,d1
[00047708] b280                      cmp.l      d0,d1
[0004770a] 67ec                      beq.s      Af_readdirNew_10
[0004770c] 4a80                      tst.l      d0
[0004770e] 6b28                      bmi.s      Af_readdirNew_11
[00047710] 2cbc ffff ffe0            move.l     #$FFFFFFE0,(a6)
[00047716] 6030                      bra.s      Af_readdirNew_12
Af_readdirNew_13:
[00047718] 4856                      pea.l      (a6)
[0004771a] 43ef 0004                 lea.l      4(a7),a1
[0004771e] 204b                      movea.l    a3,a0
[00047720] 2207                      move.l     d7,d1
[00047722] 3006                      move.w     d6,d0
[00047724] 4eb9 0007 295c            jsr        Dxreaddir
[0004772a] 584f                      addq.w     #4,a7
[0004772c] 2a00                      move.l     d0,d5
Af_readdirNew_9:
[0004772e] 70c0                      moveq.l    #-64,d0
[00047730] b085                      cmp.l      d5,d0
[00047732] 67e4                      beq.s      Af_readdirNew_13
[00047734] 4a85                      tst.l      d5
[00047736] 6a10                      bpl.s      Af_readdirNew_12
Af_readdirNew_11:
[00047738] 70cf                      moveq.l    #-49,d0
[0004773a] b085                      cmp.l      d5,d0
[0004773c] 6704                      beq.s      Af_readdirNew_14
[0004773e] 7601                      moveq.l    #1,d3
[00047740] 6002                      bra.s      Af_readdirNew_15
Af_readdirNew_14:
[00047742] 4243                      clr.w      d3
Af_readdirNew_15:
[00047744] 6000 0124                 bra        Af_readdirNew_16
Af_readdirNew_12:
[00047748] 43f9 000d 38bc            lea.l      $000D38BC,a1
[0004774e] 41eb 0004                 lea.l      4(a3),a0
[00047752] 4eb9 0004 3856            jsr        Ast_cmp
[00047758] 4a40                      tst.w      d0
[0004775a] 6700 ff7c                 beq        Af_readdirNew_17
[0004775e] 43f9 000d 38c7            lea.l      $000D38C7,a1
[00047764] 41eb 0004                 lea.l      4(a3),a0
[00047768] 4eb9 0004 3856            jsr        Ast_cmp
[0004776e] 4a40                      tst.w      d0
[00047770] 6700 ff66                 beq        Af_readdirNew_17
[00047774] 200d                      move.l     a5,d0
[00047776] 662a                      bne.s      Af_readdirNew_18
[00047778] 703c                      moveq.l    #60,d0
[0004777a] 4eb9 0004 7cc8            jsr        Ax_malloc
[00047780] 2848                      movea.l    a0,a4
[00047782] 200c                      move.l     a4,d0
[00047784] 6604                      bne.s      Af_readdirNew_19
[00047786] 7601                      moveq.l    #1,d3
[00047788] 6002                      bra.s      Af_readdirNew_20
Af_readdirNew_19:
[0004778a] 4243                      clr.w      d3
Af_readdirNew_20:
[0004778c] 4a43                      tst.w      d3
[0004778e] 6600 00da                 bne        Af_readdirNew_16
[00047792] 723c                      moveq.l    #60,d1
[00047794] 4240                      clr.w      d0
[00047796] 204c                      movea.l    a4,a0
[00047798] 4eb9 0007 712e            jsr        memset
[0004779e] 2a4c                      movea.l    a4,a5
[000477a0] 602c                      bra.s      Af_readdirNew_21
Af_readdirNew_18:
[000477a2] 703c                      moveq.l    #60,d0
[000477a4] 4eb9 0004 7cc8            jsr        Ax_malloc
[000477aa] 2948 0004                 move.l     a0,4(a4)
[000477ae] 2008                      move.l     a0,d0
[000477b0] 6604                      bne.s      Af_readdirNew_22
[000477b2] 7601                      moveq.l    #1,d3
[000477b4] 6002                      bra.s      Af_readdirNew_23
Af_readdirNew_22:
[000477b6] 4243                      clr.w      d3
Af_readdirNew_23:
[000477b8] 4a43                      tst.w      d3
[000477ba] 6600 00ae                 bne        Af_readdirNew_16
[000477be] 286c 0004                 movea.l    4(a4),a4
[000477c2] 723c                      moveq.l    #60,d1
[000477c4] 4240                      clr.w      d0
[000477c6] 204c                      movea.l    a4,a0
[000477c8] 4eb9 0007 712e            jsr        memset
Af_readdirNew_21:
[000477ce] 3006                      move.w     d6,d0
[000477d0] 48c0                      ext.l      d0
[000477d2] d084                      add.l      d4,d0
[000477d4] 5280                      addq.l     #1,d0
[000477d6] 4eb9 0004 7cc8            jsr        Ax_malloc
[000477dc] 2888                      move.l     a0,(a4)
[000477de] 2008                      move.l     a0,d0
[000477e0] 6700 0088                 beq        Af_readdirNew_16
[000477e4] 4210                      clr.b      (a0)
[000477e6] 226f 0038                 movea.l    56(a7),a1
[000477ea] 2054                      movea.l    (a4),a0
[000477ec] 4eb9 0007 6950            jsr        strcpy
[000477f2] 43f9 000d 38b2            lea.l      $000D38B2,a1
[000477f8] 2054                      movea.l    (a4),a0
[000477fa] 4eb9 0007 6886            jsr        strcat
[00047800] 43eb 0004                 lea.l      4(a3),a1
[00047804] 2054                      movea.l    (a4),a0
[00047806] 4eb9 0007 6886            jsr        strcat
[0004780c] 70e0                      moveq.l    #-32,d0
[0004780e] b096                      cmp.l      (a6),d0
[00047810] 6626                      bne.s      Af_readdirNew_24
[00047812] 43ec 0008                 lea.l      8(a4),a1
[00047816] 2054                      movea.l    (a4),a0
[00047818] 4240                      clr.w      d0
[0004781a] 4eb9 0007 2aa4            jsr        Fxattr
[00047820] 2c80                      move.l     d0,(a6)
[00047822] 72e0                      moveq.l    #-32,d1
[00047824] b280                      cmp.l      d0,d1
[00047826] 661e                      bne.s      Af_readdirNew_25
[00047828] 41ec 0008                 lea.l      8(a4),a0
[0004782c] 4240                      clr.w      d0
[0004782e] 7234                      moveq.l    #52,d1
[00047830] 4eb9 0007 712e            jsr        memset
[00047836] 600e                      bra.s      Af_readdirNew_25
Af_readdirNew_24:
[00047838] 7034                      moveq.l    #52,d0
[0004783a] 43d7                      lea.l      (a7),a1
[0004783c] 41ec 0008                 lea.l      8(a4),a0
[00047840] 4eb9 0007 6f44            jsr        memcpy
Af_readdirNew_25:
[00047846] 70e0                      moveq.l    #-32,d0
[00047848] b096                      cmp.l      (a6),d0
[0004784a] 6700 fe8c                 beq        Af_readdirNew_17
[0004784e] 7210                      moveq.l    #16,d1
[00047850] c26c 0030                 and.w      48(a4),d1
[00047854] 6700 fe82                 beq        Af_readdirNew_17
[00047858] 43f9 000d 38b2            lea.l      $000D38B2,a1
[0004785e] 2054                      movea.l    (a4),a0
[00047860] 4eb9 0007 6886            jsr        strcat
[00047866] 6000 fe70                 bra        Af_readdirNew_17
Af_readdirNew_16:
[0004786a] 204b                      movea.l    a3,a0
[0004786c] 4eb9 0004 7e26            jsr        Ax_free
[00047872] 2007                      move.l     d7,d0
[00047874] 4eb9 0007 28e2            jsr        Dclosedir
[0004787a] 4a43                      tst.w      d3
[0004787c] 670c                      beq.s      Af_readdirNew_26
[0004787e] 204d                      movea.l    a5,a0
[00047880] 4eb9 0004 795e            jsr        Af_freedir
[00047886] 99cc                      suba.l     a4,a4
[00047888] 2a4c                      movea.l    a4,a5
Af_readdirNew_26:
[0004788a] 204d                      movea.l    a5,a0
Af_readdirNew_8:
[0004788c] 4fef 003c                 lea.l      60(a7),a7
[00047890] 4cdf 78f8                 movem.l    (a7)+,d3-d7/a3-a6
[00047894] 4e75                      rts

Af_readdir:
[00047896] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0004789a] 2648                      movea.l    a0,a3
[0004789c] 4eb9 0007 69b0            jsr        strlen
[000478a2] 2600                      move.l     d0,d3
[000478a4] 7014                      moveq.l    #20,d0
[000478a6] d083                      add.l      d3,d0
[000478a8] 4eb9 0004 7cc8            jsr        Ax_malloc
[000478ae] 2448                      movea.l    a0,a2
[000478b0] 200a                      move.l     a2,d0
[000478b2] 6606                      bne.s      Af_readdir_1
[000478b4] 91c8                      suba.l     a0,a0
[000478b6] 6000 00a0                 bra        Af_readdir_2
Af_readdir_1:
[000478ba] 224b                      movea.l    a3,a1
[000478bc] 204a                      movea.l    a2,a0
[000478be] 4eb9 0007 6950            jsr        strcpy
[000478c4] 705c                      moveq.l    #92,d0
[000478c6] 204a                      movea.l    a2,a0
[000478c8] 4eb9 0007 68e2            jsr        strrchr
[000478ce] 2008                      move.l     a0,d0
[000478d0] 6708                      beq.s      Af_readdir_3
[000478d2] 1228 0001                 move.b     1(a0),d1
[000478d6] 6602                      bne.s      Af_readdir_3
[000478d8] 4210                      clr.b      (a0)
Af_readdir_3:
[000478da] 204a                      movea.l    a2,a0
[000478dc] 4eb9 0007 69b0            jsr        strlen
[000478e2] 7202                      moveq.l    #2,d1
[000478e4] b280                      cmp.l      d0,d1
[000478e6] 6616                      bne.s      Af_readdir_4
[000478e8] 0c2a 003a 0001            cmpi.b     #$3A,1(a2)
[000478ee] 660e                      bne.s      Af_readdir_4
[000478f0] 43f9 000d 38b2            lea.l      $000D38B2,a1
[000478f6] 204a                      movea.l    a2,a0
[000478f8] 4eb9 0007 6886            jsr        strcat
Af_readdir_4:
[000478fe] 4eb9 0007 2902            jsr        Dgetdrv
[00047904] 3600                      move.w     d0,d3
[00047906] 204b                      movea.l    a3,a0
[00047908] 6100 f7ee                 bsr        Af_2drv
[0004790c] 4eb9 0007 2978            jsr        Dsetdrv
[00047912] 4240                      clr.w      d0
[00047914] 41f9 000d 38bc            lea.l      $000D38BC,a0
[0004791a] 4eb9 0007 2922            jsr        Dopendir
[00047920] 2800                      move.l     d0,d4
[00047922] 3003                      move.w     d3,d0
[00047924] 4eb9 0007 2978            jsr        Dsetdrv
[0004792a] 70e0                      moveq.l    #-32,d0
[0004792c] b084                      cmp.l      d4,d0
[0004792e] 660a                      bne.s      Af_readdir_5
[00047930] 204a                      movea.l    a2,a0
[00047932] 6100 fb70                 bsr        Af_readdirOld
[00047936] 2648                      movea.l    a0,a3
[00047938] 6014                      bra.s      Af_readdir_6
Af_readdir_5:
[0004793a] 4a84                      tst.l      d4
[0004793c] 6f08                      ble.s      Af_readdir_7
[0004793e] 2004                      move.l     d4,d0
[00047940] 4eb9 0007 28e2            jsr        Dclosedir
Af_readdir_7:
[00047946] 204a                      movea.l    a2,a0
[00047948] 6100 fce4                 bsr        Af_readdirNew
[0004794c] 2648                      movea.l    a0,a3
Af_readdir_6:
[0004794e] 204a                      movea.l    a2,a0
[00047950] 4eb9 0004 7e26            jsr        Ax_free
[00047956] 204b                      movea.l    a3,a0
Af_readdir_2:
[00047958] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0004795c] 4e75                      rts

Af_freedir:
[0004795e] 2f0a                      move.l     a2,-(a7)
[00047960] 2f0b                      move.l     a3,-(a7)
[00047962] 2448                      movea.l    a0,a2
[00047964] 601a                      bra.s      Af_freedir_1
Af_freedir_3:
[00047966] 264a                      movea.l    a2,a3
[00047968] 246a 0004                 movea.l    4(a2),a2
[0004796c] 2013                      move.l     (a3),d0
[0004796e] 6708                      beq.s      Af_freedir_2
[00047970] 2040                      movea.l    d0,a0
[00047972] 4eb9 0004 371c            jsr        Ast_delete
Af_freedir_2:
[00047978] 204b                      movea.l    a3,a0
[0004797a] 4eb9 0004 7e26            jsr        Ax_free
Af_freedir_1:
[00047980] 200a                      move.l     a2,d0
[00047982] 66e2                      bne.s      Af_freedir_3
[00047984] 265f                      movea.l    (a7)+,a3
[00047986] 245f                      movea.l    (a7)+,a2
[00047988] 4e75                      rts

Af_first:
[0004798a] 48e7 0038                 movem.l    a2-a4,-(a7)
[0004798e] 2648                      movea.l    a0,a3
[00047990] 2849                      movea.l    a1,a4
[00047992] 45f9 000d 38a0            lea.l      DateiListe,a2
[00047998] 2012                      move.l     (a2),d0
[0004799a] 670e                      beq.s      Af_first_1
[0004799c] 2040                      movea.l    d0,a0
[0004799e] 6100 ffbe                 bsr.w      Af_freedir
[000479a2] 7000                      moveq.l    #0,d0
[000479a4] 2540 0004                 move.l     d0,4(a2)
[000479a8] 2480                      move.l     d0,(a2)
Af_first_1:
[000479aa] 204b                      movea.l    a3,a0
[000479ac] 6100 fee8                 bsr        Af_readdir
[000479b0] 2488                      move.l     a0,(a2)
[000479b2] 2008                      move.l     a0,d0
[000479b4] 6604                      bne.s      Af_first_2
[000479b6] 91c8                      suba.l     a0,a0
[000479b8] 6008                      bra.s      Af_first_3
Af_first_2:
[000479ba] 204c                      movea.l    a4,a0
[000479bc] 4eb9 0004 79c8            jsr        Af_next
Af_first_3:
[000479c2] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000479c6] 4e75                      rts

Af_next:
[000479c8] 2f0a                      move.l     a2,-(a7)
[000479ca] 2f0b                      move.l     a3,-(a7)
[000479cc] 2648                      movea.l    a0,a3
[000479ce] 45f9 000d 38a4            lea.l      AktDatei,a2
[000479d4] 202a fffc                 move.l     -4(a2),d0
[000479d8] 673c                      beq.s      Af_next_1
[000479da] 2212                      move.l     (a2),d1
[000479dc] 6604                      bne.s      Af_next_2
[000479de] 2480                      move.l     d0,(a2)
[000479e0] 6006                      bra.s      Af_next_3
Af_next_2:
[000479e2] 2052                      movea.l    (a2),a0
[000479e4] 24a8 0004                 move.l     4(a0),(a2)
Af_next_3:
[000479e8] 2012                      move.l     (a2),d0
[000479ea] 6612                      bne.s      Af_next_4
[000479ec] 206a fffc                 movea.l    -4(a2),a0
[000479f0] 6100 ff6c                 bsr        Af_freedir
[000479f4] 7000                      moveq.l    #0,d0
[000479f6] 2480                      move.l     d0,(a2)
[000479f8] 2540 fffc                 move.l     d0,-4(a2)
[000479fc] 6018                      bra.s      Af_next_1
Af_next_4:
[000479fe] 200b                      move.l     a3,d0
[00047a00] 670e                      beq.s      Af_next_5
[00047a02] 2252                      movea.l    (a2),a1
[00047a04] 5049                      addq.w     #8,a1
[00047a06] 204b                      movea.l    a3,a0
[00047a08] 7034                      moveq.l    #52,d0
[00047a0a] 4eb9 0007 6f44            jsr        memcpy
Af_next_5:
[00047a10] 2052                      movea.l    (a2),a0
[00047a12] 2050                      movea.l    (a0),a0
[00047a14] 6002                      bra.s      Af_next_6
Af_next_1:
[00047a16] 91c8                      suba.l     a0,a0
Af_next_6:
[00047a18] 265f                      movea.l    (a7)+,a3
[00047a1a] 245f                      movea.l    (a7)+,a2
[00047a1c] 4e75                      rts

Af_quote:
[00047a1e] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00047a22] 2448                      movea.l    a0,a2
[00047a24] 2649                      movea.l    a1,a3
[00047a26] b3c8                      cmpa.l     a0,a1
[00047a28] 6706                      beq.s      Af_quote_1
[00047a2a] 4eb9 0007 6950            jsr        strcpy
Af_quote_1:
[00047a30] 204a                      movea.l    a2,a0
[00047a32] 4eb9 0004 383a            jsr        Ast_alltrim
[00047a38] 47f9 000d 38b0            lea.l      $000D38B0,a3
[00047a3e] 43eb 001a                 lea.l      26(a3),a1
[00047a42] 204a                      movea.l    a2,a0
[00047a44] 4eb9 0007 6a34            jsr        strpbrk
[00047a4a] 2008                      move.l     a0,d0
[00047a4c] 6754                      beq.s      Af_quote_2
[00047a4e] 4243                      clr.w      d3
[00047a50] 284a                      movea.l    a2,a4
[00047a52] 600c                      bra.s      Af_quote_3
Af_quote_5:
[00047a54] 1014                      move.b     (a4),d0
[00047a56] b02b 0020                 cmp.b      32(a3),d0
[00047a5a] 6602                      bne.s      Af_quote_4
[00047a5c] 5243                      addq.w     #1,d3
Af_quote_4:
[00047a5e] 524c                      addq.w     #1,a4
Af_quote_3:
[00047a60] 1014                      move.b     (a4),d0
[00047a62] 66f0                      bne.s      Af_quote_5
[00047a64] 204a                      movea.l    a2,a0
[00047a66] 4eb9 0007 69b0            jsr        strlen
[00047a6c] 49f2 0800                 lea.l      0(a2,d0.l),a4
[00047a70] 4bf4 3001                 lea.l      1(a4,d3.w),a5
[00047a74] 6012                      bra.s      Af_quote_6
Af_quote_8:
[00047a76] 1014                      move.b     (a4),d0
[00047a78] b02b 0020                 cmp.b      32(a3),d0
[00047a7c] 6604                      bne.s      Af_quote_7
[00047a7e] 1a80                      move.b     d0,(a5)
[00047a80] 534d                      subq.w     #1,a5
Af_quote_7:
[00047a82] 1a94                      move.b     (a4),(a5)
[00047a84] 534c                      subq.w     #1,a4
[00047a86] 534d                      subq.w     #1,a5
Af_quote_6:
[00047a88] b5cc                      cmpa.l     a4,a2
[00047a8a] 63ea                      bls.s      Af_quote_8
[00047a8c] 14ab 0020                 move.b     32(a3),(a2)
[00047a90] 204a                      movea.l    a2,a0
[00047a92] 4eb9 0007 69b0            jsr        strlen
[00047a98] 4bf2 0800                 lea.l      0(a2,d0.l),a5
[00047a9c] 1aeb 0020                 move.b     32(a3),(a5)+
[00047aa0] 4215                      clr.b      (a5)
Af_quote_2:
[00047aa2] 204a                      movea.l    a2,a0
[00047aa4] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00047aa8] 4e75                      rts

Af_unquote:
[00047aaa] 3f03                      move.w     d3,-(a7)
[00047aac] 2f0b                      move.l     a3,-(a7)
[00047aae] 2648                      movea.l    a0,a3
[00047ab0] b3c8                      cmpa.l     a0,a1
[00047ab2] 6706                      beq.s      Af_unquote_1
[00047ab4] 4eb9 0007 6950            jsr        strcpy
Af_unquote_1:
[00047aba] 204b                      movea.l    a3,a0
[00047abc] 4eb9 0004 383a            jsr        Ast_alltrim
[00047ac2] 1613                      move.b     (a3),d3
[00047ac4] 1003                      move.b     d3,d0
[00047ac6] 4880                      ext.w      d0
[00047ac8] 41f9 000d 38d0            lea.l      $000D38D0,a0
[00047ace] 4eb9 0007 68ce            jsr        strchr
[00047ad4] 2008                      move.l     a0,d0
[00047ad6] 6732                      beq.s      Af_unquote_2
[00047ad8] 204b                      movea.l    a3,a0
[00047ada] 4eb9 0007 69b0            jsr        strlen
[00047ae0] 5380                      subq.l     #1,d0
[00047ae2] b633 0800                 cmp.b      0(a3,d0.l),d3
[00047ae6] 6622                      bne.s      Af_unquote_2
[00047ae8] 224b                      movea.l    a3,a1
[00047aea] 41eb 0001                 lea.l      1(a3),a0
[00047aee] 6014                      bra.s      Af_unquote_3
Af_unquote_6:
[00047af0] b610                      cmp.b      (a0),d3
[00047af2] 660a                      bne.s      Af_unquote_4
[00047af4] 1010                      move.b     (a0),d0
[00047af6] b028 0001                 cmp.b      1(a0),d0
[00047afa] 660c                      bne.s      Af_unquote_5
[00047afc] 5248                      addq.w     #1,a0
Af_unquote_4:
[00047afe] 1290                      move.b     (a0),(a1)
[00047b00] 5248                      addq.w     #1,a0
[00047b02] 5249                      addq.w     #1,a1
Af_unquote_3:
[00047b04] 1010                      move.b     (a0),d0
[00047b06] 66e8                      bne.s      Af_unquote_6
Af_unquote_5:
[00047b08] 4211                      clr.b      (a1)
Af_unquote_2:
[00047b0a] 204b                      movea.l    a3,a0
[00047b0c] 265f                      movea.l    (a7)+,a3
[00047b0e] 361f                      move.w     (a7)+,d3
[00047b10] 4e75                      rts

Af_parseCmdLine:
[00047b12] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[00047b16] 4fef ff78                 lea.l      -136(a7),a7
[00047b1a] 2848                      movea.l    a0,a4
[00047b1c] 4eb9 0006 2a5e            jsr        Alu_create
[00047b22] 2448                      movea.l    a0,a2
[00047b24] 200a                      move.l     a2,d0
[00047b26] 670e                      beq.s      Af_parseCmdLine_1
[00047b28] 204c                      movea.l    a4,a0
[00047b2a] 4eb9 0004 36d6            jsr        Ast_create
[00047b30] 2e88                      move.l     a0,(a7)
[00047b32] 2008                      move.l     a0,d0
[00047b34] 6606                      bne.s      Af_parseCmdLine_2
Af_parseCmdLine_1:
[00047b36] 91c8                      suba.l     a0,a0
[00047b38] 6000 00b2                 bra        Af_parseCmdLine_3
Af_parseCmdLine_2:
[00047b3c] 2857                      movea.l    (a7),a4
[00047b3e] 4bef 0004                 lea.l      4(a7),a5
[00047b42] 6000 0090                 bra        Af_parseCmdLine_4
Af_parseCmdLine_12:
[00047b46] 204c                      movea.l    a4,a0
[00047b48] 4eb9 0004 383a            jsr        Ast_alltrim
[00047b4e] 1614                      move.b     (a4),d3
[00047b50] 1003                      move.b     d3,d0
[00047b52] 4880                      ext.w      d0
[00047b54] 41f9 000d 38d0            lea.l      $000D38D0,a0
[00047b5a] 4eb9 0007 68ce            jsr        strchr
[00047b60] 2008                      move.l     a0,d0
[00047b62] 6722                      beq.s      Af_parseCmdLine_5
[00047b64] 524c                      addq.w     #1,a4
[00047b66] 264d                      movea.l    a5,a3
[00047b68] 6014                      bra.s      Af_parseCmdLine_6
Af_parseCmdLine_9:
[00047b6a] b614                      cmp.b      (a4),d3
[00047b6c] 660a                      bne.s      Af_parseCmdLine_7
[00047b6e] 524c                      addq.w     #1,a4
[00047b70] 102c ffff                 move.b     -1(a4),d0
[00047b74] b014                      cmp.b      (a4),d0
[00047b76] 660a                      bne.s      Af_parseCmdLine_8
Af_parseCmdLine_7:
[00047b78] 1694                      move.b     (a4),(a3)
[00047b7a] 524c                      addq.w     #1,a4
[00047b7c] 524b                      addq.w     #1,a3
Af_parseCmdLine_6:
[00047b7e] 1014                      move.b     (a4),d0
[00047b80] 66e8                      bne.s      Af_parseCmdLine_9
Af_parseCmdLine_8:
[00047b82] 4213                      clr.b      (a3)
[00047b84] 6034                      bra.s      Af_parseCmdLine_10
Af_parseCmdLine_5:
[00047b86] 43f9 000d 38ca            lea.l      $000D38CA,a1
[00047b8c] 204c                      movea.l    a4,a0
[00047b8e] 4eb9 0007 6a34            jsr        strpbrk
[00047b94] 2648                      movea.l    a0,a3
[00047b96] 200b                      move.l     a3,d0
[00047b98] 6714                      beq.s      Af_parseCmdLine_11
[00047b9a] 1610                      move.b     (a0),d3
[00047b9c] 4210                      clr.b      (a0)
[00047b9e] 224c                      movea.l    a4,a1
[00047ba0] 204d                      movea.l    a5,a0
[00047ba2] 4eb9 0007 6950            jsr        strcpy
[00047ba8] 284b                      movea.l    a3,a4
[00047baa] 1883                      move.b     d3,(a4)
[00047bac] 600c                      bra.s      Af_parseCmdLine_10
Af_parseCmdLine_11:
[00047bae] 224c                      movea.l    a4,a1
[00047bb0] 204d                      movea.l    a5,a0
[00047bb2] 4eb9 0007 6950            jsr        strcpy
[00047bb8] 99cc                      suba.l     a4,a4
Af_parseCmdLine_10:
[00047bba] 204d                      movea.l    a5,a0
[00047bbc] 4eb9 0004 36d6            jsr        Ast_create
[00047bc2] 2f48 0084                 move.l     a0,132(a7)
[00047bc6] 2008                      move.l     a0,d0
[00047bc8] 670a                      beq.s      Af_parseCmdLine_4
[00047bca] 2240                      movea.l    d0,a1
[00047bcc] 2c6a 000c                 movea.l    12(a2),a6
[00047bd0] 204a                      movea.l    a2,a0
[00047bd2] 4e96                      jsr        (a6)
Af_parseCmdLine_4:
[00047bd4] 204c                      movea.l    a4,a0
[00047bd6] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00047bdc] 4a40                      tst.w      d0
[00047bde] 6700 ff66                 beq        Af_parseCmdLine_12
[00047be2] 2057                      movea.l    (a7),a0
[00047be4] 4eb9 0004 371c            jsr        Ast_delete
[00047bea] 204a                      movea.l    a2,a0
Af_parseCmdLine_3:
[00047bec] 4fef 0088                 lea.l      136(a7),a7
[00047bf0] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[00047bf4] 4e75                      rts

		.data

DateiListe:
[000d38a0]                           dc.b $00
[000d38a1]                           dc.b $00
[000d38a2]                           dc.b $00
[000d38a3]                           dc.b $00
AktDatei:
[000d38a4]                           dc.b $00
[000d38a5]                           dc.b $00
[000d38a6]                           dc.b $00
[000d38a7]                           dc.b $00
[000d38a8]                           dc.w $2e00
max_mode:
[000d38aa]                           dc.w $fffe
[000d38ac]                           dc.b 'A:\',0
[000d38b0]                           dc.b 'A:\',0
[000d38b4]                           dc.b '.cfg',0
[000d38b9]                           dc.b $2e
[000d38ba]                           dc.w $5c00
[000d38bc]                           dc.w $2e00
[000d38be]                           dc.b '*.*',0
[000d38c2]                           dc.b '\*.*',0
[000d38c7]                           dc.b $2e
[000d38c8]                           dc.w $2e00
[000d38ca]                           dc.b ' ',$09,$0a,$0d,$27,0
[000d38d0]                           dc.w $2722
[000d38d2]                           dc.b $00
		.even

	.bss

scrap: ds.b 256
