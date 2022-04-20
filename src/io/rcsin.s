
load_dfn:
[00016f44] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[00016f48] 2448                      movea.l    a0,a2
[00016f4a] 4240                      clr.w      d0
[00016f4c] 206a 0008                 movea.l    8(a2),a0
[00016f50] 4eb9 0007 29f0            jsr        Fopen
[00016f56] 2600                      move.l     d0,d3
[00016f58] 45f9 000f b42e            lea.l      dfn_size,a2
[00016f5e] 4a43                      tst.w      d3
[00016f60] 6b36                      bmi.s      load_dfn_1
[00016f62] 204a                      movea.l    a2,a0
[00016f64] 7202                      moveq.l    #2,d1
[00016f66] 3003                      move.w     d3,d0
[00016f68] 4eb9 0007 2a02            jsr        Fread
[00016f6e] 3012                      move.w     (a2),d0
[00016f70] e040                      asr.w      #8,d0
[00016f72] c07c 00ff                 and.w      #$00FF,d0
[00016f76] 3212                      move.w     (a2),d1
[00016f78] e149                      lsl.w      #8,d1
[00016f7a] 8041                      or.w       d1,d0
[00016f7c] 3480                      move.w     d0,(a2)
[00016f7e] 48c0                      ext.l      d0
[00016f80] 2800                      move.l     d0,d4
[00016f82] e78c                      lsl.l      #3,d4
[00016f84] 9880                      sub.l      d0,d4
[00016f86] d884                      add.l      d4,d4
[00016f88] 2004                      move.l     d4,d0
[00016f8a] 4eb9 0004 7cc8            jsr        Ax_malloc
[00016f90] 2548 fffc                 move.l     a0,-4(a2)
[00016f94] 2008                      move.l     a0,d0
[00016f96] 6604                      bne.s      load_dfn_2
load_dfn_1:
[00016f98] 4252                      clr.w      (a2)
[00016f9a] 6016                      bra.s      load_dfn_3
load_dfn_2:
[00016f9c] 206a fffc                 movea.l    -4(a2),a0
[00016fa0] 2204                      move.l     d4,d1
[00016fa2] 3003                      move.w     d3,d0
[00016fa4] 4eb9 0007 2a02            jsr        Fread
[00016faa] 3003                      move.w     d3,d0
[00016fac] 4eb9 0007 29ae            jsr        Fclose
load_dfn_3:
[00016fb2] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[00016fb6] 4e75                      rts

tree_label:
[00016fb8] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[00016fbc] 3800                      move.w     d0,d4
[00016fbe] 2648                      movea.l    a0,a3
[00016fc0] 2849                      movea.l    a1,a4
[00016fc2] 4243                      clr.w      d3
[00016fc4] 45f9 000f b42a            lea.l      dfna,a2
[00016fca] 605a                      bra.s      tree_label_1
tree_label_4:
[00016fcc] 3203                      move.w     d3,d1
[00016fce] 48c1                      ext.l      d1
[00016fd0] 2001                      move.l     d1,d0
[00016fd2] e788                      lsl.l      #3,d0
[00016fd4] 9081                      sub.l      d1,d0
[00016fd6] d080                      add.l      d0,d0
[00016fd8] 2052                      movea.l    (a2),a0
[00016fda] 1430 0800                 move.b     0(a0,d0.l),d2
[00016fde] 4882                      ext.w      d2
[00016fe0] b842                      cmp.w      d2,d4
[00016fe2] 6640                      bne.s      tree_label_2
[00016fe4] 1230 0803                 move.b     3(a0,d0.l),d1
[00016fe8] 663a                      bne.s      tree_label_2
[00016fea] 0c30 0001 0802            cmpi.b     #$01,2(a0,d0.l)
[00016ff0] 6d32                      blt.s      tree_label_2
[00016ff2] 0c30 0003 0802            cmpi.b     #$03,2(a0,d0.l)
[00016ff8] 6e2a                      bgt.s      tree_label_2
[00016ffa] 2248                      movea.l    a0,a1
[00016ffc] 43f1 0804                 lea.l      4(a1,d0.l),a1
[00017000] 204b                      movea.l    a3,a0
[00017002] 4eb9 0007 6950            jsr        strcpy
[00017008] 3203                      move.w     d3,d1
[0001700a] 48c1                      ext.l      d1
[0001700c] 2001                      move.l     d1,d0
[0001700e] e788                      lsl.l      #3,d0
[00017010] 9081                      sub.l      d1,d0
[00017012] d080                      add.l      d0,d0
[00017014] 2052                      movea.l    (a2),a0
[00017016] 0c30 0002 0802            cmpi.b     #$02,2(a0,d0.l)
[0001701c] 6610                      bne.s      tree_label_3
[0001701e] 38bc 0001                 move.w     #$0001,(a4)
[00017022] 600a                      bra.s      tree_label_3
tree_label_2:
[00017024] 5243                      addq.w     #1,d3
tree_label_1:
[00017026] b66a 0004                 cmp.w      4(a2),d3
[0001702a] 6da0                      blt.s      tree_label_4
[0001702c] 4213                      clr.b      (a3)
tree_label_3:
[0001702e] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[00017032] 4e75                      rts

index_label:
[00017034] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[00017038] 3a00                      move.w     d0,d5
[0001703a] 3801                      move.w     d1,d4
[0001703c] 2648                      movea.l    a0,a3
[0001703e] 4243                      clr.w      d3
[00017040] 45f9 000f b42a            lea.l      dfna,a2
[00017046] 6042                      bra.s      index_label_1
index_label_4:
[00017048] 3203                      move.w     d3,d1
[0001704a] 48c1                      ext.l      d1
[0001704c] 2001                      move.l     d1,d0
[0001704e] e788                      lsl.l      #3,d0
[00017050] 9081                      sub.l      d1,d0
[00017052] d080                      add.l      d0,d0
[00017054] 2052                      movea.l    (a2),a0
[00017056] 1430 0800                 move.b     0(a0,d0.l),d2
[0001705a] 4882                      ext.w      d2
[0001705c] b842                      cmp.w      d2,d4
[0001705e] 6628                      bne.s      index_label_2
[00017060] 1230 0802                 move.b     2(a0,d0.l),d1
[00017064] 6622                      bne.s      index_label_2
[00017066] 0c30 0001 0803            cmpi.b     #$01,3(a0,d0.l)
[0001706c] 661a                      bne.s      index_label_2
[0001706e] 1430 0801                 move.b     1(a0,d0.l),d2
[00017072] 4882                      ext.w      d2
[00017074] ba42                      cmp.w      d2,d5
[00017076] 6610                      bne.s      index_label_2
[00017078] 2248                      movea.l    a0,a1
[0001707a] 43f1 0804                 lea.l      4(a1,d0.l),a1
[0001707e] 204b                      movea.l    a3,a0
[00017080] 4eb9 0007 6950            jsr        strcpy
[00017086] 600a                      bra.s      index_label_3
index_label_2:
[00017088] 5243                      addq.w     #1,d3
index_label_1:
[0001708a] b66a 0004                 cmp.w      4(a2),d3
[0001708e] 6db8                      blt.s      index_label_4
[00017090] 4213                      clr.b      (a3)
index_label_3:
[00017092] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[00017096] 4e75                      rts

image_label:
[00017098] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0001709c] 3800                      move.w     d0,d4
[0001709e] 2648                      movea.l    a0,a3
[000170a0] 4243                      clr.w      d3
[000170a2] 45f9 000f b42a            lea.l      dfna,a2
[000170a8] 603a                      bra.s      image_label_1
image_label_4:
[000170aa] 3203                      move.w     d3,d1
[000170ac] 48c1                      ext.l      d1
[000170ae] 2001                      move.l     d1,d0
[000170b0] e788                      lsl.l      #3,d0
[000170b2] 9081                      sub.l      d1,d0
[000170b4] d080                      add.l      d0,d0
[000170b6] 2052                      movea.l    (a2),a0
[000170b8] 1430 0800                 move.b     0(a0,d0.l),d2
[000170bc] 4882                      ext.w      d2
[000170be] b842                      cmp.w      d2,d4
[000170c0] 6620                      bne.s      image_label_2
[000170c2] 0c30 0002 0802            cmpi.b     #$02,2(a0,d0.l)
[000170c8] 6618                      bne.s      image_label_2
[000170ca] 0c30 0001 0803            cmpi.b     #$01,3(a0,d0.l)
[000170d0] 6610                      bne.s      image_label_2
[000170d2] 2248                      movea.l    a0,a1
[000170d4] 43f1 0804                 lea.l      4(a1,d0.l),a1
[000170d8] 204b                      movea.l    a3,a0
[000170da] 4eb9 0007 6950            jsr        strcpy
[000170e0] 600a                      bra.s      image_label_3
image_label_2:
[000170e2] 5243                      addq.w     #1,d3
image_label_1:
[000170e4] b66a 0004                 cmp.w      4(a2),d3
[000170e8] 6dc0                      blt.s      image_label_4
[000170ea] 4213                      clr.b      (a3)
image_label_3:
[000170ec] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[000170f0] 4e75                      rts

string_label:
[000170f2] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[000170f6] 3800                      move.w     d0,d4
[000170f8] 2848                      movea.l    a0,a4
[000170fa] 2649                      movea.l    a1,a3
[000170fc] 4243                      clr.w      d3
[000170fe] 45f9 000f b42a            lea.l      dfna,a2
[00017104] 6066                      bra.s      string_label_1
string_label_6:
[00017106] 3203                      move.w     d3,d1
[00017108] 48c1                      ext.l      d1
[0001710a] 2001                      move.l     d1,d0
[0001710c] e788                      lsl.l      #3,d0
[0001710e] 9081                      sub.l      d1,d0
[00017110] d080                      add.l      d0,d0
[00017112] 2052                      movea.l    (a2),a0
[00017114] 1430 0800                 move.b     0(a0,d0.l),d2
[00017118] 4882                      ext.w      d2
[0001711a] b842                      cmp.w      d2,d4
[0001711c] 664c                      bne.s      string_label_2
[0001711e] 0c30 0001 0802            cmpi.b     #$01,2(a0,d0.l)
[00017124] 6608                      bne.s      string_label_3
[00017126] 0c30 0001 0803            cmpi.b     #$01,3(a0,d0.l)
[0001712c] 6720                      beq.s      string_label_4
string_label_3:
[0001712e] 3203                      move.w     d3,d1
[00017130] 48c1                      ext.l      d1
[00017132] 2001                      move.l     d1,d0
[00017134] e788                      lsl.l      #3,d0
[00017136] 9081                      sub.l      d1,d0
[00017138] d080                      add.l      d0,d0
[0001713a] 2052                      movea.l    (a2),a0
[0001713c] 0c30 0004 0802            cmpi.b     #$04,2(a0,d0.l)
[00017142] 6626                      bne.s      string_label_2
[00017144] 1430 0803                 move.b     3(a0,d0.l),d2
[00017148] 6620                      bne.s      string_label_2
[0001714a] 36bc 0001                 move.w     #$0001,(a3)
string_label_4:
[0001714e] 3203                      move.w     d3,d1
[00017150] 48c1                      ext.l      d1
[00017152] 2001                      move.l     d1,d0
[00017154] e788                      lsl.l      #3,d0
[00017156] 9081                      sub.l      d1,d0
[00017158] d080                      add.l      d0,d0
[0001715a] 2252                      movea.l    (a2),a1
[0001715c] 43f1 0804                 lea.l      4(a1,d0.l),a1
[00017160] 204c                      movea.l    a4,a0
[00017162] 4eb9 0007 6950            jsr        strcpy
[00017168] 600a                      bra.s      string_label_5
string_label_2:
[0001716a] 5243                      addq.w     #1,d3
string_label_1:
[0001716c] b66a 0004                 cmp.w      4(a2),d3
[00017170] 6d94                      blt.s      string_label_6
[00017172] 4214                      clr.b      (a4)
string_label_5:
[00017174] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[00017178] 4e75                      rts

strings:
[0001717a] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[0001717e] 4fef ffe6                 lea.l      -26(a7),a7
[00017182] 2a48                      movea.l    a0,a5
[00017184] 2f49 0016                 move.l     a1,22(a7)
[00017188] 2049                      movea.l    a1,a0
[0001718a] 3628 001e                 move.w     30(a0),d3
[0001718e] 7000                      moveq.l    #0,d0
[00017190] 3028 000a                 move.w     10(a0),d0
[00017194] 43f0 0800                 lea.l      0(a0,d0.l),a1
[00017198] 2f49 0012                 move.l     a1,18(a7)
[0001719c] 4244                      clr.w      d4
[0001719e] 45ef 0010                 lea.l      16(a7),a2
[000171a2] 6000 010a                 bra        strings_1
strings_10:
[000171a6] 3004                      move.w     d4,d0
[000171a8] 48c0                      ext.l      d0
[000171aa] e588                      lsl.l      #2,d0
[000171ac] 206f 0012                 movea.l    18(a7),a0
[000171b0] 2230 0800                 move.l     0(a0,d0.l),d1
[000171b4] 286f 0016                 movea.l    22(a7),a4
[000171b8] d9c1                      adda.l     d1,a4
[000171ba] 204c                      movea.l    a4,a0
[000171bc] 4eb9 0007 69b0            jsr        strlen
[000171c2] 2a00                      move.l     d0,d5
[000171c4] 5285                      addq.l     #1,d5
[000171c6] 2005                      move.l     d5,d0
[000171c8] 204d                      movea.l    a5,a0
[000171ca] 4eb9 0001 6230            jsr        objmalloc
[000171d0] 2648                      movea.l    a0,a3
[000171d2] 006b 0100 0038            ori.w      #$0100,56(a3)
[000171d8] 200b                      move.l     a3,d0
[000171da] 6700 00d8                 beq        strings_2
[000171de] 2745 000e                 move.l     d5,14(a3)
[000171e2] 224c                      movea.l    a4,a1
[000171e4] 206b 0004                 movea.l    4(a3),a0
[000171e8] 4eb9 0007 6950            jsr        strcpy
[000171ee] 006b 0100 0038            ori.w      #$0100,56(a3)
[000171f4] 4252                      clr.w      (a2)
[000171f6] 224a                      movea.l    a2,a1
[000171f8] 41d7                      lea.l      (a7),a0
[000171fa] 3004                      move.w     d4,d0
[000171fc] 6100 fef4                 bsr        string_label
[00017200] 1017                      move.b     (a7),d0
[00017202] 671a                      beq.s      strings_3
[00017204] 4879 0009 8b68            pea.l      $00098B68
[0001720a] 486f 0004                 pea.l      4(a7)
[0001720e] 224b                      movea.l    a3,a1
[00017210] 204d                      movea.l    a5,a0
[00017212] 4eb9 0001 6448            jsr        objname
[00017218] 504f                      addq.w     #8,a7
[0001721a] 6000 0072                 bra.w      strings_4
strings_3:
[0001721e] 0c14 005b                 cmpi.b     #$5B,(a4)
[00017222] 6634                      bne.s      strings_5
[00017224] 0c2c 0030 0001            cmpi.b     #$30,1(a4)
[0001722a] 6718                      beq.s      strings_6
[0001722c] 0c2c 0031 0001            cmpi.b     #$31,1(a4)
[00017232] 6710                      beq.s      strings_6
[00017234] 0c2c 0032 0001            cmpi.b     #$32,1(a4)
[0001723a] 6708                      beq.s      strings_6
[0001723c] 0c2c 0033 0001            cmpi.b     #$33,1(a4)
[00017242] 6614                      bne.s      strings_5
strings_6:
[00017244] 0c2c 005d 0002            cmpi.b     #$5D,2(a4)
[0001724a] 660c                      bne.s      strings_5
[0001724c] 0c2c 005b 0003            cmpi.b     #$5B,3(a4)
[00017252] 6604                      bne.s      strings_5
[00017254] 34bc 0001                 move.w     #$0001,(a2)
strings_5:
[00017258] 3012                      move.w     (a2),d0
[0001725a] 671a                      beq.s      strings_7
[0001725c] 4879 0009 8b75            pea.l      $00098B75
[00017262] 4879 0009 8b69            pea.l      $00098B69
[00017268] 224b                      movea.l    a3,a1
[0001726a] 204d                      movea.l    a5,a0
[0001726c] 4eb9 0001 6448            jsr        objname
[00017272] 504f                      addq.w     #8,a7
[00017274] 6018                      bra.s      strings_4
strings_7:
[00017276] 4879 0009 8b86            pea.l      $00098B86
[0001727c] 4879 0009 8b7e            pea.l      $00098B7E
[00017282] 224b                      movea.l    a3,a1
[00017284] 204d                      movea.l    a5,a0
[00017286] 4eb9 0001 6448            jsr        objname
[0001728c] 504f                      addq.w     #8,a7
strings_4:
[0001728e] 3012                      move.w     (a2),d0
[00017290] 670e                      beq.s      strings_8
[00017292] 224b                      movea.l    a3,a1
[00017294] 206d 0024                 movea.l    36(a5),a0
[00017298] 4eb9 0003 1a94            jsr        add_entry
[0001729e] 600c                      bra.s      strings_9
strings_8:
[000172a0] 224b                      movea.l    a3,a1
[000172a2] 206d 0034                 movea.l    52(a5),a0
[000172a6] 4eb9 0003 1a94            jsr        add_entry
strings_9:
[000172ac] 5244                      addq.w     #1,d4
strings_1:
[000172ae] b644                      cmp.w      d4,d3
[000172b0] 6e00 fef4                 bgt        strings_10
strings_2:
[000172b4] 4fef 001a                 lea.l      26(a7),a7
[000172b8] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[000172bc] 4e75                      rts

images:
[000172be] 48e7 182c                 movem.l    d3-d4/a2/a4-a5,-(a7)
[000172c2] 4fef ffec                 lea.l      -20(a7),a7
[000172c6] 2848                      movea.l    a0,a4
[000172c8] 2449                      movea.l    a1,a2
[000172ca] 2049                      movea.l    a1,a0
[000172cc] 3628 0020                 move.w     32(a0),d3
[000172d0] 7000                      moveq.l    #0,d0
[000172d2] 3028 0010                 move.w     16(a0),d0
[000172d6] 43f2 0800                 lea.l      0(a2,d0.l),a1
[000172da] 2f49 0010                 move.l     a1,16(a7)
[000172de] 4244                      clr.w      d4
[000172e0] 6050                      bra.s      images_1
images_3:
[000172e2] 3004                      move.w     d4,d0
[000172e4] 48c0                      ext.l      d0
[000172e6] e588                      lsl.l      #2,d0
[000172e8] 206f 0010                 movea.l    16(a7),a0
[000172ec] 2230 0800                 move.l     0(a0,d0.l),d1
[000172f0] 4bf2 1800                 lea.l      0(a2,d1.l),a5
[000172f4] 2415                      move.l     (a5),d2
[000172f6] 43f2 2800                 lea.l      0(a2,d2.l),a1
[000172fa] 2a89                      move.l     a1,(a5)
[000172fc] 204c                      movea.l    a4,a0
[000172fe] 224d                      movea.l    a5,a1
[00017300] 4eb9 0003 33c2            jsr        dup_image
[00017306] 2a48                      movea.l    a0,a5
[00017308] 006d 0100 0038            ori.w      #$0100,56(a5)
[0001730e] 41d7                      lea.l      (a7),a0
[00017310] 3004                      move.w     d4,d0
[00017312] 6100 fd84                 bsr        image_label
[00017316] 1017                      move.b     (a7),d0
[00017318] 6716                      beq.s      images_2
[0001731a] 4879 0009 8b68            pea.l      $00098B68
[00017320] 486f 0004                 pea.l      4(a7)
[00017324] 224d                      movea.l    a5,a1
[00017326] 204c                      movea.l    a4,a0
[00017328] 4eb9 0001 6448            jsr        objname
[0001732e] 504f                      addq.w     #8,a7
images_2:
[00017330] 5244                      addq.w     #1,d4
images_1:
[00017332] b644                      cmp.w      d4,d3
[00017334] 6eac                      bgt.s      images_3
[00017336] 4fef 0014                 lea.l      20(a7),a7
[0001733a] 4cdf 3418                 movem.l    (a7)+,d3-d4/a2/a4-a5
[0001733e] 4e75                      rts

fix_cicon:
[00017340] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[00017344] 514f                      subq.w     #8,a7
[00017346] 2f48 0004                 move.l     a0,4(a7)
[0001734a] 2e88                      move.l     a0,(a7)
fix_cicon_1:
[0001734c] 2057                      movea.l    (a7),a0
[0001734e] 5897                      addq.l     #4,(a7)
[00017350] 2010                      move.l     (a0),d0
[00017352] 67f8                      beq.s      fix_cicon_1
[00017354] 6000 00ac                 bra        fix_cicon_2
fix_cicon_9:
[00017358] 206f 0004                 movea.l    4(a7),a0
[0001735c] 58af 0004                 addq.l     #4,4(a7)
[00017360] 2097                      move.l     (a7),(a0)
[00017362] 2857                      movea.l    (a7),a4
[00017364] 760f                      moveq.l    #15,d3
[00017366] d66c 0016                 add.w      22(a4),d3
[0001736a] c67c fff0                 and.w      #$FFF0,d3
[0001736e] c7ec 0018                 muls.w     24(a4),d3
[00017372] e643                      asr.w      #3,d3
[00017374] 48c3                      ext.l      d3
[00017376] 4bec 0026                 lea.l      38(a4),a5
[0001737a] 294d 0004                 move.l     a5,4(a4)
[0001737e] dbc3                      adda.l     d3,a5
[00017380] 288d                      move.l     a5,(a4)
[00017382] dbc3                      adda.l     d3,a5
[00017384] 294d 0008                 move.l     a5,8(a4)
[00017388] 4bed 000c                 lea.l      12(a5),a5
[0001738c] 9dce                      suba.l     a6,a6
[0001738e] 244e                      movea.l    a6,a2
fix_cicon_6:
[00017390] 264d                      movea.l    a5,a3
[00017392] 0c53 0004                 cmpi.w     #$0004,(a3)
[00017396] 6602                      bne.s      fix_cicon_3
[00017398] 244b                      movea.l    a3,a2
fix_cicon_3:
[0001739a] 0c53 0008                 cmpi.w     #$0008,(a3)
[0001739e] 6602                      bne.s      fix_cicon_4
[000173a0] 2c4b                      movea.l    a3,a6
fix_cicon_4:
[000173a2] 4bed 0016                 lea.l      22(a5),a5
[000173a6] 274d 0002                 move.l     a5,2(a3)
[000173aa] 2003                      move.l     d3,d0
[000173ac] 3213                      move.w     (a3),d1
[000173ae] 48c1                      ext.l      d1
[000173b0] 4eb9 0007 76f0            jsr        _lmul
[000173b6] dbc0                      adda.l     d0,a5
[000173b8] 274d 0006                 move.l     a5,6(a3)
[000173bc] dbc3                      adda.l     d3,a5
[000173be] 202b 000a                 move.l     10(a3),d0
[000173c2] 6718                      beq.s      fix_cicon_5
[000173c4] 274d 000a                 move.l     a5,10(a3)
[000173c8] 2003                      move.l     d3,d0
[000173ca] 3213                      move.w     (a3),d1
[000173cc] 48c1                      ext.l      d1
[000173ce] 4eb9 0007 76f0            jsr        _lmul
[000173d4] dbc0                      adda.l     d0,a5
[000173d6] 274d 000e                 move.l     a5,14(a3)
[000173da] dbc3                      adda.l     d3,a5
fix_cicon_5:
[000173dc] 202b 0012                 move.l     18(a3),d0
[000173e0] 66ae                      bne.s      fix_cicon_6
[000173e2] 42ac 0022                 clr.l      34(a4)
[000173e6] 200a                      move.l     a2,d0
[000173e8] 670e                      beq.s      fix_cicon_7
[000173ea] 2940 0022                 move.l     d0,34(a4)
[000173ee] 220e                      move.l     a6,d1
[000173f0] 670e                      beq.s      fix_cicon_8
[000173f2] 2541 0012                 move.l     d1,18(a2)
[000173f6] 6008                      bra.s      fix_cicon_8
fix_cicon_7:
[000173f8] 200e                      move.l     a6,d0
[000173fa] 6704                      beq.s      fix_cicon_8
[000173fc] 2940 0022                 move.l     d0,34(a4)
fix_cicon_8:
[00017400] 2e8d                      move.l     a5,(a7)
fix_cicon_2:
[00017402] 206f 0004                 movea.l    4(a7),a0
[00017406] 2010                      move.l     (a0),d0
[00017408] 6700 ff4e                 beq        fix_cicon_9
[0001740c] 504f                      addq.w     #8,a7
[0001740e] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[00017412] 4e75                      rts

objects:
[00017414] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[00017418] 4fef ffb4                 lea.l      -76(a7),a7
[0001741c] 2f48 0048                 move.l     a0,72(a7)
[00017420] 2449                      movea.l    a1,a2
[00017422] 2f49 0004                 move.l     a1,4(a7)
[00017426] 7000                      moveq.l    #0,d0
[00017428] 3029 0022                 move.w     34(a1),d0
[0001742c] 41f2 0800                 lea.l      0(a2,d0.l),a0
[00017430] 2228 0004                 move.l     4(a0),d1
[00017434] 43f2 1800                 lea.l      0(a2,d1.l),a1
[00017438] 2e89                      move.l     a1,(a7)
[0001743a] 7404                      moveq.l    #4,d2
[0001743c] 206f 0004                 movea.l    4(a7),a0
[00017440] c450                      and.w      (a0),d2
[00017442] 6706                      beq.s      objects_1
[00017444] 2049                      movea.l    a1,a0
[00017446] 6100 fef8                 bsr        fix_cicon
objects_1:
[0001744a] 76ff                      moveq.l    #-1,d3
[0001744c] 206f 0004                 movea.l    4(a7),a0
[00017450] d668 0016                 add.w      22(a0),d3
[00017454] 7000                      moveq.l    #0,d0
[00017456] 3028 0012                 move.w     18(a0),d0
[0001745a] 43f2 0800                 lea.l      0(a2,d0.l),a1
[0001745e] 2f49 001a                 move.l     a1,26(a7)
[00017462] 4244                      clr.w      d4
[00017464] 6000 03c4                 bra        objects_2
objects_27:
[00017468] 3004                      move.w     d4,d0
[0001746a] 48c0                      ext.l      d0
[0001746c] e588                      lsl.l      #2,d0
[0001746e] 206f 001a                 movea.l    26(a7),a0
[00017472] 2230 0800                 move.l     0(a0,d0.l),d1
[00017476] 47f2 1800                 lea.l      0(a2,d1.l),a3
[0001747a] 226f 0004                 movea.l    4(a7),a1
[0001747e] 7e00                      moveq.l    #0,d7
[00017480] 3e29 0002                 move.w     2(a1),d7
[00017484] 7000                      moveq.l    #0,d0
[00017486] 3029 0014                 move.w     20(a1),d0
[0001748a] 2400                      move.l     d0,d2
[0001748c] d482                      add.l      d2,d2
[0001748e] d480                      add.l      d0,d2
[00017490] e78a                      lsl.l      #3,d2
[00017492] de82                      add.l      d2,d7
[00017494] 2a01                      move.l     d1,d5
[00017496] 4246                      clr.w      d6
[00017498] 601c                      bra.s      objects_3
objects_5:
[0001749a] 3006                      move.w     d6,d0
[0001749c] 48c0                      ext.l      d0
[0001749e] e588                      lsl.l      #2,d0
[000174a0] 206f 001a                 movea.l    26(a7),a0
[000174a4] bab0 0800                 cmp.l      0(a0,d0.l),d5
[000174a8] 6c0a                      bge.s      objects_4
[000174aa] beb0 0800                 cmp.l      0(a0,d0.l),d7
[000174ae] 6f04                      ble.s      objects_4
[000174b0] 2e30 0800                 move.l     0(a0,d0.l),d7
objects_4:
[000174b4] 5246                      addq.w     #1,d6
objects_3:
[000174b6] b646                      cmp.w      d6,d3
[000174b8] 6ce0                      bge.s      objects_5
[000174ba] 2007                      move.l     d7,d0
[000174bc] 9085                      sub.l      d5,d0
[000174be] 7218                      moveq.l    #24,d1
[000174c0] 4eb9 0007 769e            jsr        _uldiv
[000174c6] 2a00                      move.l     d0,d5
[000174c8] 2005                      move.l     d5,d0
[000174ca] e788                      lsl.l      #3,d0
[000174cc] 9085                      sub.l      d5,d0
[000174ce] e788                      lsl.l      #3,d0
[000174d0] 206f 0048                 movea.l    72(a7),a0
[000174d4] 4eb9 0001 6230            jsr        objmalloc
[000174da] 2f48 0044                 move.l     a0,68(a7)
[000174de] 2008                      move.l     a0,d0
[000174e0] 6700 034e                 beq        objects_6
[000174e4] 0068 0100 0038            ori.w      #$0100,56(a0)
[000174ea] 2240                      movea.l    d0,a1
[000174ec] 2368 000a 000e            move.l     10(a0),14(a1)
[000174f2] 3f7c 0002 0018            move.w     #$0002,24(a7)
[000174f8] 43ef 0018                 lea.l      24(a7),a1
[000174fc] 41ef 0008                 lea.l      8(a7),a0
[00017500] 3004                      move.w     d4,d0
[00017502] 6100 fab4                 bsr        tree_label
[00017506] 0c6f 0002 0018            cmpi.w     #$0002,24(a7)
[0001750c] 6646                      bne.s      objects_7
[0001750e] 0c2b 0019 0007            cmpi.b     #$19,7(a3)
[00017514] 663a                      bne.s      objects_8
[00017516] 302b 0004                 move.w     4(a3),d0
[0001751a] b06b 0018                 cmp.w      24(a3),d0
[0001751e] 6630                      bne.s      objects_8
[00017520] 0c2b 0014 001f            cmpi.b     #$14,31(a3)
[00017526] 6628                      bne.s      objects_8
[00017528] 0c6b 0002 001a            cmpi.w     #$0002,26(a3)
[0001752e] 6620                      bne.s      objects_8
[00017530] 0c6b 0002 001c            cmpi.w     #$0002,28(a3)
[00017536] 6618                      bne.s      objects_8
[00017538] 0c6b 0001 0030            cmpi.w     #$0001,48(a3)
[0001753e] 6610                      bne.s      objects_8
[00017540] 0c2b 0019 0037            cmpi.b     #$19,55(a3)
[00017546] 6608                      bne.s      objects_8
[00017548] 3f7c 0001 0018            move.w     #$0001,24(a7)
[0001754e] 6004                      bra.s      objects_7
objects_8:
[00017550] 426f 0018                 clr.w      24(a7)
objects_7:
[00017554] 102f 0008                 move.b     8(a7),d0
[00017558] 6642                      bne.s      objects_9
[0001755a] 322f 0018                 move.w     24(a7),d1
[0001755e] 671e                      beq.s      objects_10
[00017560] 4879 0009 8b68            pea.l      $00098B68
[00017566] 4879 0009 8b94            pea.l      $00098B94
[0001756c] 226f 004c                 movea.l    76(a7),a1
[00017570] 206f 0050                 movea.l    80(a7),a0
[00017574] 4eb9 0001 6448            jsr        objname
[0001757a] 504f                      addq.w     #8,a7
[0001757c] 6038                      bra.s      objects_11
objects_10:
[0001757e] 4879 0009 8b68            pea.l      $00098B68
[00017584] 4879 0009 8b9c            pea.l      $00098B9C
[0001758a] 226f 004c                 movea.l    76(a7),a1
[0001758e] 206f 0050                 movea.l    80(a7),a0
[00017592] 4eb9 0001 6448            jsr        objname
[00017598] 504f                      addq.w     #8,a7
[0001759a] 601a                      bra.s      objects_11
objects_9:
[0001759c] 4879 0009 8b68            pea.l      $00098B68
[000175a2] 486f 000c                 pea.l      12(a7)
[000175a6] 226f 004c                 movea.l    76(a7),a1
[000175aa] 206f 0050                 movea.l    80(a7),a0
[000175ae] 4eb9 0001 6448            jsr        objname
[000175b4] 504f                      addq.w     #8,a7
objects_11:
[000175b6] 302f 0018                 move.w     24(a7),d0
[000175ba] 6700 0080                 beq        objects_12
[000175be] 3e2b 0002                 move.w     2(a3),d7
[000175c2] 48c7                      ext.l      d7
[000175c4] 2407                      move.l     d7,d2
[000175c6] d482                      add.l      d2,d2
[000175c8] d487                      add.l      d7,d2
[000175ca] e78a                      lsl.l      #3,d2
[000175cc] 3033 2802                 move.w     2(a3,d2.l),d0
[000175d0] 48c0                      ext.l      d0
[000175d2] 2200                      move.l     d0,d1
[000175d4] d281                      add.l      d1,d1
[000175d6] d280                      add.l      d0,d1
[000175d8] e789                      lsl.l      #3,d1
[000175da] 3c33 1802                 move.w     2(a3,d1.l),d6
[000175de] 3406                      move.w     d6,d2
[000175e0] 48c2                      ext.l      d2
[000175e2] 2202                      move.l     d2,d1
[000175e4] d281                      add.l      d1,d1
[000175e6] d282                      add.l      d2,d1
[000175e8] e789                      lsl.l      #3,d1
[000175ea] 2e33 180c                 move.l     12(a3,d1.l),d7
[000175ee] 37bc 0006 1814            move.w     #$0006,20(a3,d1.l)
[000175f4] 0073 2000 180a            ori.w      #$2000,10(a3,d1.l)
[000175fa] 4232 7800                 clr.b      0(a2,d7.l)
[000175fe] 3e2b 0004                 move.w     4(a3),d7
[00017602] 48c7                      ext.l      d7
[00017604] 2007                      move.l     d7,d0
[00017606] d080                      add.l      d0,d0
[00017608] d087                      add.l      d7,d0
[0001760a] e788                      lsl.l      #3,d0
[0001760c] 3e33 0802                 move.w     2(a3,d0.l),d7
[00017610] 3207                      move.w     d7,d1
[00017612] 48c1                      ext.l      d1
[00017614] 2401                      move.l     d1,d2
[00017616] d482                      add.l      d2,d2
[00017618] d481                      add.l      d1,d2
[0001761a] e78a                      lsl.l      #3,d2
[0001761c] 3c33 2802                 move.w     2(a3,d2.l),d6
[00017620] 6016                      bra.s      objects_13
objects_14:
[00017622] 3206                      move.w     d6,d1
[00017624] 48c1                      ext.l      d1
[00017626] 2001                      move.l     d1,d0
[00017628] d080                      add.l      d0,d0
[0001762a] d081                      add.l      d1,d0
[0001762c] e788                      lsl.l      #3,d0
[0001762e] 0073 2000 080a            ori.w      #$2000,10(a3,d0.l)
[00017634] 3c33 0800                 move.w     0(a3,d0.l),d6
objects_13:
[00017638] bc47                      cmp.w      d7,d6
[0001763a] 66e6                      bne.s      objects_14
objects_12:
[0001763c] 206f 0044                 movea.l    68(a7),a0
[00017640] 2a68 0004                 movea.l    4(a0),a5
[00017644] 4240                      clr.w      d0
[00017646] 3740 0012                 move.w     d0,18(a3)
[0001764a] 3740 0010                 move.w     d0,16(a3)
[0001764e] 4246                      clr.w      d6
[00017650] 6000 01a0                 bra        objects_15
objects_24:
[00017654] 7038                      moveq.l    #56,d0
[00017656] 43f9 0009 8b30            lea.l      obsproto,a1
[0001765c] 204d                      movea.l    a5,a0
[0001765e] 4eb9 0007 6f44            jsr        memcpy
[00017664] 41ef 0008                 lea.l      8(a7),a0
[00017668] 3206                      move.w     d6,d1
[0001766a] 3004                      move.w     d4,d0
[0001766c] 6100 f9c6                 bsr        index_label
[00017670] 102f 0008                 move.b     8(a7),d0
[00017674] 672e                      beq.s      objects_16
[00017676] 206f 0048                 movea.l    72(a7),a0
[0001767a] 7000                      moveq.l    #0,d0
[0001767c] 4eb9 0001 6230            jsr        objmalloc
[00017682] 2848                      movea.l    a0,a4
[00017684] 200c                      move.l     a4,d0
[00017686] 6700 01a8                 beq        objects_6
[0001768a] 4879 0009 8b68            pea.l      $00098B68
[00017690] 486f 000c                 pea.l      12(a7)
[00017694] 224c                      movea.l    a4,a1
[00017696] 206f 0050                 movea.l    80(a7),a0
[0001769a] 4eb9 0001 6448            jsr        objname
[000176a0] 504f                      addq.w     #8,a7
[000176a2] 2a8c                      move.l     a4,(a5)
objects_16:
[000176a4] 7018                      moveq.l    #24,d0
[000176a6] 224b                      movea.l    a3,a1
[000176a8] 41ed 0008                 lea.l      8(a5),a0
[000176ac] 4eb9 0007 6f44            jsr        memcpy
[000176b2] 026d 00ff 000e            andi.w     #$00FF,14(a5)
[000176b8] 026d 00df 0010            andi.w     #$00DF,16(a5)
[000176be] 026d 203f 0012            andi.w     #$203F,18(a5)
[000176c4] 102b 0007                 move.b     7(a3),d0
[000176c8] 4880                      ext.w      d0
[000176ca] 907c 0015                 sub.w      #$0015,d0
[000176ce] b07c 000c                 cmp.w      #$000C,d0
[000176d2] 6200 0114                 bhi        objects_17
[000176d6] d040                      add.w      d0,d0
[000176d8] 303b 0006                 move.w     $000176E0(pc,d0.w),d0
[000176dc] 4efb 0002                 jmp        $000176E0(pc,d0.w)
J3:
[000176e0] 001a                      dc.w $001a   ; objects_18-J3
[000176e2] 001a                      dc.w $001a   ; objects_18-J3
[000176e4] 0056                      dc.w $0056   ; objects_19-J3
[000176e6] 007a                      dc.w $007a   ; objects_20-J3
[000176e8] 0108                      dc.w $0108   ; objects_17-J3
[000176ea] 0082                      dc.w $0082   ; objects_21-J3
[000176ec] 0108                      dc.w $0108   ; objects_17-J3
[000176ee] 0082                      dc.w $0082   ; objects_21-J3
[000176f0] 001a                      dc.w $001a   ; objects_18-J3
[000176f2] 001a                      dc.w $001a   ; objects_18-J3
[000176f4] 00bc                      dc.w $00bc   ; objects_22-J3
[000176f6] 0082                      dc.w $0082   ; objects_21-J3
[000176f8] 009a                      dc.w $009a   ; objects_23-J3
objects_18:
[000176fa] 202b 000c                 move.l     12(a3),d0
[000176fe] 49f2 0800                 lea.l      0(a2,d0.l),a4
[00017702] 2214                      move.l     (a4),d1
[00017704] 41f2 1800                 lea.l      0(a2,d1.l),a0
[00017708] 2888                      move.l     a0,(a4)
[0001770a] 202c 0004                 move.l     4(a4),d0
[0001770e] 43f2 0800                 lea.l      0(a2,d0.l),a1
[00017712] 2949 0004                 move.l     a1,4(a4)
[00017716] 202c 0008                 move.l     8(a4),d0
[0001771a] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0001771e] 2948 0008                 move.l     a0,8(a4)
[00017722] 224c                      movea.l    a4,a1
[00017724] 206f 0048                 movea.l    72(a7),a0
[00017728] 4eb9 0003 4dbe            jsr        dup_tedinfo
[0001772e] 2b48 0014                 move.l     a0,20(a5)
[00017732] 6000 00b4                 bra        objects_17
objects_19:
[00017736] 202b 000c                 move.l     12(a3),d0
[0001773a] 49f2 0800                 lea.l      0(a2,d0.l),a4
[0001773e] 2214                      move.l     (a4),d1
[00017740] 41f2 1800                 lea.l      0(a2,d1.l),a0
[00017744] 2888                      move.l     a0,(a4)
[00017746] 224c                      movea.l    a4,a1
[00017748] 206f 0048                 movea.l    72(a7),a0
[0001774c] 4eb9 0003 33c2            jsr        dup_image
[00017752] 2b48 0014                 move.l     a0,20(a5)
[00017756] 6000 0090                 bra        objects_17
objects_20:
[0001775a] 42ad 0014                 clr.l      20(a5)
[0001775e] 6000 0088                 bra        objects_17
objects_21:
[00017762] 202d 0014                 move.l     20(a5),d0
[00017766] 43f2 0800                 lea.l      0(a2,d0.l),a1
[0001776a] 206f 0048                 movea.l    72(a7),a0
[0001776e] 4eb9 0003 483c            jsr        dup_string
[00017774] 2b48 0014                 move.l     a0,20(a5)
[00017778] 606e                      bra.s      objects_17
objects_23:
[0001777a] 3b7c 001f 000e            move.w     #$001F,14(a5)
[00017780] 202b 000c                 move.l     12(a3),d0
[00017784] e588                      lsl.l      #2,d0
[00017786] 2057                      movea.l    (a7),a0
[00017788] 2270 0800                 movea.l    0(a0,d0.l),a1
[0001778c] 206f 0048                 movea.l    72(a7),a0
[00017790] 4eb9 0003 2fea            jsr        dup_icon
[00017796] 2b48 0014                 move.l     a0,20(a5)
[0001779a] 604c                      bra.s      objects_17
objects_22:
[0001779c] 202b 000c                 move.l     12(a3),d0
[000177a0] 49f2 0800                 lea.l      0(a2,d0.l),a4
[000177a4] 2214                      move.l     (a4),d1
[000177a6] 41f2 1800                 lea.l      0(a2,d1.l),a0
[000177aa] 2888                      move.l     a0,(a4)
[000177ac] 202c 0004                 move.l     4(a4),d0
[000177b0] 43f2 0800                 lea.l      0(a2,d0.l),a1
[000177b4] 2949 0004                 move.l     a1,4(a4)
[000177b8] 202c 0008                 move.l     8(a4),d0
[000177bc] 41f2 0800                 lea.l      0(a2,d0.l),a0
[000177c0] 2948 0008                 move.l     a0,8(a4)
[000177c4] 7022                      moveq.l    #34,d0
[000177c6] 224c                      movea.l    a4,a1
[000177c8] 41ef 001e                 lea.l      30(a7),a0
[000177cc] 4eb9 0007 6f44            jsr        memcpy
[000177d2] 42af 0040                 clr.l      64(a7)
[000177d6] 43ef 001e                 lea.l      30(a7),a1
[000177da] 206f 0048                 movea.l    72(a7),a0
[000177de] 4eb9 0003 2fea            jsr        dup_icon
[000177e4] 2b48 0014                 move.l     a0,20(a5)
objects_17:
[000177e8] 4bed 0038                 lea.l      56(a5),a5
[000177ec] 47eb 0018                 lea.l      24(a3),a3
[000177f0] 5246                      addq.w     #1,d6
objects_15:
[000177f2] 3006                      move.w     d6,d0
[000177f4] 48c0                      ext.l      d0
[000177f6] ba80                      cmp.l      d0,d5
[000177f8] 6e00 fe5a                 bgt        objects_24
[000177fc] 322f 0018                 move.w     24(a7),d1
[00017800] 6714                      beq.s      objects_25
[00017802] 226f 0044                 movea.l    68(a7),a1
[00017806] 206f 0048                 movea.l    72(a7),a0
[0001780a] 2068 001c                 movea.l    28(a0),a0
[0001780e] 4eb9 0003 1a94            jsr        add_entry
[00017814] 6012                      bra.s      objects_26
objects_25:
[00017816] 226f 0044                 movea.l    68(a7),a1
[0001781a] 206f 0048                 movea.l    72(a7),a0
[0001781e] 2068 0018                 movea.l    24(a0),a0
[00017822] 4eb9 0003 1a94            jsr        add_entry
objects_26:
[00017828] 5244                      addq.w     #1,d4
objects_2:
[0001782a] b644                      cmp.w      d4,d3
[0001782c] 6c00 fc3a                 bge        objects_27
objects_6:
[00017830] 4fef 004c                 lea.l      76(a7),a7
[00017834] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[00017838] 4e75                      rts

read_rsc:
[0001783a] 2f0a                      move.l     a2,-(a7)
[0001783c] 2f0b                      move.l     a3,-(a7)
[0001783e] 4fef ffdc                 lea.l      -36(a7),a7
[00017842] 2448                      movea.l    a0,a2
[00017844] 702e                      moveq.l    #46,d0
[00017846] 206a 0008                 movea.l    8(a2),a0
[0001784a] 4eb9 0007 68e2            jsr        strrchr
[00017850] 2648                      movea.l    a0,a3
[00017852] 43f9 0009 8ba6            lea.l      $00098BA6,a1
[00017858] 4eb9 0007 6950            jsr        strcpy
[0001785e] 204a                      movea.l    a2,a0
[00017860] 6100 f6e2                 bsr        load_dfn
[00017864] 43f9 0009 8bab            lea.l      $00098BAB,a1
[0001786a] 204b                      movea.l    a3,a0
[0001786c] 4eb9 0007 6950            jsr        strcpy
[00017872] 7024                      moveq.l    #36,d0
[00017874] 41d7                      lea.l      (a7),a0
[00017876] 4eb9 0001 664a            jsr        read_buf
[0001787c] 204a                      movea.l    a2,a0
[0001787e] 4eb9 0001 6796            jsr        init_acs
[00017884] 47f9 000d b02a            lea.l      iobuf,a3
[0001788a] 224b                      movea.l    a3,a1
[0001788c] 204a                      movea.l    a2,a0
[0001788e] 6100 fb84                 bsr        objects
[00017892] 224b                      movea.l    a3,a1
[00017894] 204a                      movea.l    a2,a0
[00017896] 6100 f8e2                 bsr        strings
[0001789a] 224b                      movea.l    a3,a1
[0001789c] 204a                      movea.l    a2,a0
[0001789e] 6100 fa1e                 bsr        images
[000178a2] 2079 000f b42a            movea.l    dfna,a0
[000178a8] 4eb9 0004 7e26            jsr        Ax_free
[000178ae] 4fef 0024                 lea.l      36(a7),a7
[000178b2] 265f                      movea.l    (a7)+,a3
[000178b4] 245f                      movea.l    (a7)+,a2
[000178b6] 4e75                      rts

	.data

obsproto:
[00098b30]                           dc.b $00
[00098b31]                           dc.b $00
[00098b32]                           dc.b $00
[00098b33]                           dc.b $00
[00098b34]                           dc.b $00
[00098b35]                           dc.b $00
[00098b36]                           dc.b $00
[00098b37]                           dc.b $00
[00098b38]                           dc.w $ffff
[00098b3a]                           dc.w $ffff
[00098b3c]                           dc.w $ffff
[00098b3e]                           dc.b $00
[00098b3f]                           dc.b $14
[00098b40]                           dc.b $00
[00098b41]                           dc.b $00
[00098b42]                           dc.b $00
[00098b43]                           dc.b $10
[00098b44]                           dc.b $00
[00098b45]                           dc.b $02
[00098b46]                           dc.w $1100
[00098b48]                           dc.b $00
[00098b49]                           dc.b $00
[00098b4a]                           dc.b $00
[00098b4b]                           dc.b $00
[00098b4c]                           dc.b $00
[00098b4d]                           dc.b $20
[00098b4e]                           dc.b $00
[00098b4f]                           dc.b $0c
[00098b50]                           dc.b $00
[00098b51]                           dc.b $00
[00098b52]                           dc.b $00
[00098b53]                           dc.b $00
[00098b54]                           dc.b $00
[00098b55]                           dc.b $00
[00098b56]                           dc.b $00
[00098b57]                           dc.b $00
[00098b58]                           dc.w $8000
[00098b5a]                           dc.b $00
[00098b5b]                           dc.b $00
[00098b5c]                           dc.b $00
[00098b5d]                           dc.b $00
[00098b5e]                           dc.b $00
[00098b5f]                           dc.b $00
[00098b60]                           dc.b $00
[00098b61]                           dc.b $00
[00098b62]                           dc.b $00
[00098b63]                           dc.b $00
[00098b64]                           dc.b $00
[00098b65]                           dc.b $00
[00098b66]                           dc.b $00
[00098b67]                           dc.b $00
[00098b68]                           dc.b $00
[00098b69]                           dc.b 'ALERTBOX_01',0
[00098b75]                           dc.b 'Alertbox',0
[00098b7e]                           dc.b 'TEXT_01',0
[00098b86]                           dc.b 'Freier String',0
[00098b94]                           dc.b 'MENU_01',0
[00098b9c]                           dc.b 'OBJECT_01',0
[00098ba6]                           dc.b '.DFN',0
[00098bab]                           dc.b '.ACS',0


	.bss
	.globl mapX
mapX: ds.w 1024
iobuf: ds.b 131072
	.globl iostring
iostring: ds.b 1024

dfna: ds.l 1
dfn_size: ds.w 1
