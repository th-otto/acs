
acs_closewi:
[000164b2] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[000164b6] 2648                      movea.l    a0,a3
[000164b8] 3600                      move.w     d0,d3
[000164ba] 246b 0144                 movea.l    324(a3),a2
[000164be] 220a                      move.l     a2,d1
[000164c0] 670c                      beq.s      acs_closewi_1
[000164c2] 93c9                      suba.l     a1,a1
[000164c4] 286a 0004                 movea.l    4(a2),a4
[000164c8] 204a                      movea.l    a2,a0
[000164ca] 7002                      moveq.l    #2,d0
[000164cc] 4e94                      jsr        (a4)
acs_closewi_1:
[000164ce] 4a43                      tst.w      d3
[000164d0] 6714                      beq.s      acs_closewi_2
[000164d2] 246b 0148                 movea.l    328(a3),a2
[000164d6] 200a                      move.l     a2,d0
[000164d8] 670c                      beq.s      acs_closewi_2
[000164da] 93c9                      suba.l     a1,a1
[000164dc] 7002                      moveq.l    #2,d0
[000164de] 204a                      movea.l    a2,a0
[000164e0] 286a 0004                 movea.l    4(a2),a4
[000164e4] 4e94                      jsr        (a4)
acs_closewi_2:
[000164e6] 266b 0010                 movea.l    16(a3),a3
[000164ea] 6022                      bra.s      acs_closewi_3
acs_closewi_5:
[000164ec] 246b 0012                 movea.l    18(a3),a2
[000164f0] 200a                      move.l     a2,d0
[000164f2] 6718                      beq.s      acs_closewi_4
[000164f4] 93c9                      suba.l     a1,a1
[000164f6] 204a                      movea.l    a2,a0
[000164f8] 286a 0004                 movea.l    4(a2),a4
[000164fc] 7002                      moveq.l    #2,d0
[000164fe] 4e94                      jsr        (a4)
[00016500] 4eb9 0004 6d70            jsr        Aev_mess
[00016506] 4eb9 0004 6d70            jsr        Aev_mess
acs_closewi_4:
[0001650c] 2653                      movea.l    (a3),a3
acs_closewi_3:
[0001650e] 200b                      move.l     a3,d0
[00016510] 66da                      bne.s      acs_closewi_5
[00016512] 4eb9 0004 6d70            jsr        Aev_mess
[00016518] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0001651c] 4e75                      rts

assert_error:
[0001651e] 4a40                      tst.w      d0
[00016520] 670c                      beq.s      assert_error_1
[00016522] 2279 0010 1f12            movea.l    ACSblk,a1
[00016528] 2269 03d6                 movea.l    982(a1),a1
[0001652c] 4e91                      jsr        (a1)
assert_error_1:
[0001652e] 7001                      moveq.l    #1,d0
[00016530] 41f9 000d a7f0            lea.l      err_jmp,a0
[00016536] 4eb9 0007 516c            jsr        longjmp
[0001653c] 4e75                      rts

set_handle:
[0001653e] 41f9 000d a7f0            lea.l      err_jmp,a0
[00016544] 7200                      moveq.l    #0,d1
[00016546] 2141 0032                 move.l     d1,50(a0)
[0001654a] 2141 0036                 move.l     d1,54(a0)
[0001654e] 3140 0030                 move.w     d0,48(a0)
[00016552] 4e75                      rts

save_buf:
[00016554] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[00016558] 2648                      movea.l    a0,a3
[0001655a] 2600                      move.l     d0,d3
[0001655c] 45f9 000d a822            lea.l      bpos,a2
[00016562] 2012                      move.l     (a2),d0
[00016564] d083                      add.l      d3,d0
[00016566] b0bc 0002 0000            cmp.l      #$00020000,d0
[0001656c] 6d34                      blt.s      save_buf_1
[0001656e] 41ea 0808                 lea.l      2056(a2),a0
[00016572] 2212                      move.l     (a2),d1
[00016574] 302a fffe                 move.w     -2(a2),d0
[00016578] 4eb9 0007 2a8e            jsr        Fwrite
[0001657e] 2800                      move.l     d0,d4
[00016580] b092                      cmp.l      (a2),d0
[00016582] 6c1c                      bge.s      save_buf_2
[00016584] 91c8                      suba.l     a0,a0
[00016586] 2279 0010 1f12            movea.l    ACSblk,a1
[0001658c] 2269 03d6                 movea.l    982(a1),a1
[00016590] 700a                      moveq.l    #10,d0
[00016592] 4e91                      jsr        (a1)
[00016594] 7001                      moveq.l    #1,d0
[00016596] 41ea ffce                 lea.l      -50(a2),a0
[0001659a] 4eb9 0007 516c            jsr        longjmp
save_buf_2:
[000165a0] 4292                      clr.l      (a2)
save_buf_1:
[000165a2] b6bc 0002 0000            cmp.l      #$00020000,d3
[000165a8] 6f32                      ble.s      save_buf_3
[000165aa] 204b                      movea.l    a3,a0
[000165ac] 2203                      move.l     d3,d1
[000165ae] 302a fffe                 move.w     -2(a2),d0
[000165b2] 4eb9 0007 2a8e            jsr        Fwrite
[000165b8] 2800                      move.l     d0,d4
[000165ba] b680                      cmp.l      d0,d3
[000165bc] 6f32                      ble.s      save_buf_4
[000165be] 91c8                      suba.l     a0,a0
[000165c0] 2279 0010 1f12            movea.l    ACSblk,a1
[000165c6] 2269 03d6                 movea.l    982(a1),a1
[000165ca] 700a                      moveq.l    #10,d0
[000165cc] 4e91                      jsr        (a1)
[000165ce] 7001                      moveq.l    #1,d0
[000165d0] 41ea ffce                 lea.l      -50(a2),a0
[000165d4] 4eb9 0007 516c            jsr        longjmp
[000165da] 6014                      bra.s      save_buf_4
save_buf_3:
[000165dc] 2003                      move.l     d3,d0
[000165de] 224b                      movea.l    a3,a1
[000165e0] 2212                      move.l     (a2),d1
[000165e2] 41ea 0808                 lea.l      2056(a2),a0
[000165e6] d1c1                      adda.l     d1,a0
[000165e8] 4eb9 0007 6f44            jsr        memcpy
[000165ee] d792                      add.l      d3,(a2)
save_buf_4:
[000165f0] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[000165f4] 4e75                      rts

save_string:
[000165f6] 2f0a                      move.l     a2,-(a7)
[000165f8] 2448                      movea.l    a0,a2
[000165fa] 4eb9 0007 69b0            jsr        strlen
[00016600] 204a                      movea.l    a2,a0
[00016602] 6100 ff50                 bsr        save_buf
[00016606] 245f                      movea.l    (a7)+,a2
[00016608] 4e75                      rts

close_buf:
[0001660a] 2f0a                      move.l     a2,-(a7)
[0001660c] 45f9 000d a822            lea.l      bpos,a2
[00016612] 2012                      move.l     (a2),d0
[00016614] 6f30                      ble.s      close_buf_1
[00016616] 41ea 0808                 lea.l      2056(a2),a0
[0001661a] 2200                      move.l     d0,d1
[0001661c] 302a fffe                 move.w     -2(a2),d0
[00016620] 4eb9 0007 2a8e            jsr        Fwrite
[00016626] b092                      cmp.l      (a2),d0
[00016628] 6c1c                      bge.s      close_buf_1
[0001662a] 91c8                      suba.l     a0,a0
[0001662c] 700a                      moveq.l    #10,d0
[0001662e] 2279 0010 1f12            movea.l    ACSblk,a1
[00016634] 2269 03d6                 movea.l    982(a1),a1
[00016638] 4e91                      jsr        (a1)
[0001663a] 7001                      moveq.l    #1,d0
[0001663c] 41ea ffce                 lea.l      -50(a2),a0
[00016640] 4eb9 0007 516c            jsr        longjmp
close_buf_1:
[00016646] 245f                      movea.l    (a7)+,a2
[00016648] 4e75                      rts

read_buf:
[0001664a] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0001664e] 2648                      movea.l    a0,a3
[00016650] 2600                      move.l     d0,d3
[00016652] 45f9 000d a826            lea.l      bfill,a2
[00016658] 202a fffc                 move.l     -4(a2),d0
[0001665c] d083                      add.l      d3,d0
[0001665e] b092                      cmp.l      (a2),d0
[00016660] 6f00 0098                 ble        read_buf_1
[00016664] 2812                      move.l     (a2),d4
[00016666] 98aa fffc                 sub.l      -4(a2),d4
[0001666a] 4a84                      tst.l      d4
[0001666c] 6f14                      ble.s      read_buf_2
[0001666e] 222a fffc                 move.l     -4(a2),d1
[00016672] 43ea 0804                 lea.l      2052(a2),a1
[00016676] d3c1                      adda.l     d1,a1
[00016678] 204b                      movea.l    a3,a0
[0001667a] 2004                      move.l     d4,d0
[0001667c] 4eb9 0007 6f44            jsr        memcpy
read_buf_2:
[00016682] 42aa fffc                 clr.l      -4(a2)
[00016686] 9684                      sub.l      d4,d3
[00016688] d7c4                      adda.l     d4,a3
[0001668a] b6bc 0002 0000            cmp.l      #$00020000,d3
[00016690] 6d32                      blt.s      read_buf_3
[00016692] 204b                      movea.l    a3,a0
[00016694] 2203                      move.l     d3,d1
[00016696] 302a fffa                 move.w     -6(a2),d0
[0001669a] 4eb9 0007 2a02            jsr        Fread
[000166a0] 2480                      move.l     d0,(a2)
[000166a2] b680                      cmp.l      d0,d3
[000166a4] 676c                      beq.s      read_buf_4
[000166a6] 91c8                      suba.l     a0,a0
[000166a8] 2279 0010 1f12            movea.l    ACSblk,a1
[000166ae] 2269 03d6                 movea.l    982(a1),a1
[000166b2] 700b                      moveq.l    #11,d0
[000166b4] 4e91                      jsr        (a1)
[000166b6] 7001                      moveq.l    #1,d0
[000166b8] 41ea ffca                 lea.l      -54(a2),a0
[000166bc] 4eb9 0007 516c            jsr        longjmp
[000166c2] 604e                      bra.s      read_buf_4
read_buf_3:
[000166c4] 41ea 0804                 lea.l      2052(a2),a0
[000166c8] 223c 0002 0000            move.l     #$00020000,d1
[000166ce] 302a fffa                 move.w     -6(a2),d0
[000166d2] 4eb9 0007 2a02            jsr        Fread
[000166d8] 2480                      move.l     d0,(a2)
[000166da] b680                      cmp.l      d0,d3
[000166dc] 6f1c                      ble.s      read_buf_1
[000166de] 91c8                      suba.l     a0,a0
[000166e0] 2279 0010 1f12            movea.l    ACSblk,a1
[000166e6] 2269 03d6                 movea.l    982(a1),a1
[000166ea] 700b                      moveq.l    #11,d0
[000166ec] 4e91                      jsr        (a1)
[000166ee] 7001                      moveq.l    #1,d0
[000166f0] 41ea ffca                 lea.l      -54(a2),a0
[000166f4] 4eb9 0007 516c            jsr        longjmp
read_buf_1:
[000166fa] 2003                      move.l     d3,d0
[000166fc] 222a fffc                 move.l     -4(a2),d1
[00016700] 43ea 0804                 lea.l      2052(a2),a1
[00016704] d3c1                      adda.l     d1,a1
[00016706] 204b                      movea.l    a3,a0
[00016708] 4eb9 0007 6f44            jsr        memcpy
[0001670e] d7aa fffc                 add.l      d3,-4(a2)
read_buf_4:
[00016712] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[00016716] 4e75                      rts

save_acs:
[00016718] 2f0a                      move.l     a2,-(a7)
[0001671a] 2448                      movea.l    a0,a2
[0001671c] 42b9 000d a822            clr.l      bpos
[00016722] 6100 fe1a                 bsr        set_handle
[00016726] 4eb9 0007 5162            jsr        setjmp
[0001672c] 4a40                      tst.w      d0
[0001672e] 670a                      beq.s      save_acs_1
[00016730] 204a                      movea.l    a2,a0
[00016732] 4eb9 0001 54f6            jsr        unfix_all
[00016738] 600c                      bra.s      save_acs_2
save_acs_1:
[0001673a] 204a                      movea.l    a2,a0
[0001673c] 4eb9 0001 525e            jsr        fix_all
[00016742] 4a40                      tst.w      d0
[00016744] 6610                      bne.s      save_acs_3
save_acs_2:
[00016746] 3039 000d a820            move.w     handle,d0
[0001674c] 4eb9 0007 29ae            jsr        Fclose
[00016752] 70ff                      moveq.l    #-1,d0
[00016754] 603c                      bra.s      save_acs_4
save_acs_3:
[00016756] 204a                      movea.l    a2,a0
[00016758] 4eb9 0001 5724            jsr        wr_all
[0001675e] 6100 feaa                 bsr        close_buf
[00016762] 026a fffe 0006            andi.w     #$FFFE,6(a2)
[00016768] 204a                      movea.l    a2,a0
[0001676a] 4eb9 0001 54f6            jsr        unfix_all
[00016770] 3039 000d a820            move.w     handle,d0
[00016776] 4eb9 0007 29ae            jsr        Fclose
[0001677c] 206a 0008                 movea.l    8(a2),a0
[00016780] 4eb9 0005 84d8            jsr        Aev_OlgaUpdate
[00016786] 206a 0008                 movea.l    8(a2),a0
[0001678a] 4eb9 0005 6a66            jsr        Aev_DhstSaved
[00016790] 4240                      clr.w      d0
save_acs_4:
[00016792] 245f                      movea.l    (a7)+,a2
[00016794] 4e75                      rts

init_acs:
[00016796] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0001679a] 2448                      movea.l    a0,a2
[0001679c] 49f9 0009 8818            lea.l      ml_title,a4
[000167a2] 296a 0008 0020            move.l     8(a2),32(a4)
[000167a8] 203c 0000 0262            move.l     #$00000262,d0
[000167ae] 43ec 0018                 lea.l      24(a4),a1
[000167b2] 204a                      movea.l    a2,a0
[000167b4] 4eb9 0007 6f44            jsr        memcpy
[000167ba] 203c 0000 0080            move.l     #$00000080,d0
[000167c0] 204a                      movea.l    a2,a0
[000167c2] 4eb9 0001 6230            jsr        objmalloc
[000167c8] 2548 0014                 move.l     a0,20(a2)
[000167cc] 47f9 0009 8b16            lea.l      $00098B16,a3
[000167d2] 4853                      pea.l      (a3)
[000167d4] 4879 0009 b563            pea.l      wi_obj
[000167da] 226a 0014                 movea.l    20(a2),a1
[000167de] 204a                      movea.l    a2,a0
[000167e0] 4eb9 0001 6448            jsr        objname
[000167e6] 504f                      addq.w     #8,a7
[000167e8] 203c 0000 0080            move.l     #$00000080,d0
[000167ee] 204a                      movea.l    a2,a0
[000167f0] 4eb9 0001 6230            jsr        objmalloc
[000167f6] 2548 001c                 move.l     a0,28(a2)
[000167fa] 4853                      pea.l      (a3)
[000167fc] 4879 0009 b4d2            pea.l      me_obj
[00016802] 2248                      movea.l    a0,a1
[00016804] 204a                      movea.l    a2,a0
[00016806] 4eb9 0001 6448            jsr        objname
[0001680c] 504f                      addq.w     #8,a7
[0001680e] 203c 0000 0080            move.l     #$00000080,d0
[00016814] 204a                      movea.l    a2,a0
[00016816] 4eb9 0001 6230            jsr        objmalloc
[0001681c] 2548 0020                 move.l     a0,32(a2)
[00016820] 4853                      pea.l      (a3)
[00016822] 4879 0009 b525            pea.l      pu_obj
[00016828] 2248                      movea.l    a0,a1
[0001682a] 204a                      movea.l    a2,a0
[0001682c] 4eb9 0001 6448            jsr        objname
[00016832] 504f                      addq.w     #8,a7
[00016834] 203c 0000 0080            move.l     #$00000080,d0
[0001683a] 204a                      movea.l    a2,a0
[0001683c] 4eb9 0001 6230            jsr        objmalloc
[00016842] 2548 0018                 move.l     a0,24(a2)
[00016846] 4853                      pea.l      (a3)
[00016848] 4879 0009 b515            pea.l      ob_obj
[0001684e] 2248                      movea.l    a0,a1
[00016850] 204a                      movea.l    a2,a0
[00016852] 4eb9 0001 6448            jsr        objname
[00016858] 504f                      addq.w     #8,a7
[0001685a] 203c 0000 0080            move.l     #$00000080,d0
[00016860] 204a                      movea.l    a2,a0
[00016862] 4eb9 0001 6230            jsr        objmalloc
[00016868] 2548 0024                 move.l     a0,36(a2)
[0001686c] 4853                      pea.l      (a3)
[0001686e] 4879 0009 b4a8            pea.l      al_obj
[00016874] 2248                      movea.l    a0,a1
[00016876] 204a                      movea.l    a2,a0
[00016878] 4eb9 0001 6448            jsr        objname
[0001687e] 504f                      addq.w     #8,a7
[00016880] 203c 0000 0080            move.l     #$00000080,d0
[00016886] 204a                      movea.l    a2,a0
[00016888] 4eb9 0001 6230            jsr        objmalloc
[0001688e] 2548 0028                 move.l     a0,40(a2)
[00016892] 4853                      pea.l      (a3)
[00016894] 4879 0009 b549            pea.l      te_obj
[0001689a] 2248                      movea.l    a0,a1
[0001689c] 204a                      movea.l    a2,a0
[0001689e] 4eb9 0001 6448            jsr        objname
[000168a4] 504f                      addq.w     #8,a7
[000168a6] 203c 0000 0080            move.l     #$00000080,d0
[000168ac] 204a                      movea.l    a2,a0
[000168ae] 4eb9 0001 6230            jsr        objmalloc
[000168b4] 2548 002c                 move.l     a0,44(a2)
[000168b8] 4853                      pea.l      (a3)
[000168ba] 4879 0009 b4b3            pea.l      ic_obj
[000168c0] 2248                      movea.l    a0,a1
[000168c2] 204a                      movea.l    a2,a0
[000168c4] 4eb9 0001 6448            jsr        objname
[000168ca] 504f                      addq.w     #8,a7
[000168cc] 203c 0000 0080            move.l     #$00000080,d0
[000168d2] 204a                      movea.l    a2,a0
[000168d4] 4eb9 0001 6230            jsr        objmalloc
[000168da] 2548 0030                 move.l     a0,48(a2)
[000168de] 4853                      pea.l      (a3)
[000168e0] 4879 0009 b4c7            pea.l      im_obj
[000168e6] 2248                      movea.l    a0,a1
[000168e8] 204a                      movea.l    a2,a0
[000168ea] 4eb9 0001 6448            jsr        objname
[000168f0] 504f                      addq.w     #8,a7
[000168f2] 203c 0000 0080            move.l     #$00000080,d0
[000168f8] 204a                      movea.l    a2,a0
[000168fa] 4eb9 0001 6230            jsr        objmalloc
[00016900] 2548 0034                 move.l     a0,52(a2)
[00016904] 4853                      pea.l      (a3)
[00016906] 4879 0009 b53f            pea.l      st_obj
[0001690c] 2248                      movea.l    a0,a1
[0001690e] 204a                      movea.l    a2,a0
[00016910] 4eb9 0001 6448            jsr        objname
[00016916] 504f                      addq.w     #8,a7
[00016918] 203c 0000 0080            move.l     #$00000080,d0
[0001691e] 204a                      movea.l    a2,a0
[00016920] 4eb9 0001 6230            jsr        objmalloc
[00016926] 2548 0038                 move.l     a0,56(a2)
[0001692a] 4853                      pea.l      (a3)
[0001692c] 4879 0009 b556            pea.l      us_obj
[00016932] 2248                      movea.l    a0,a1
[00016934] 204a                      movea.l    a2,a0
[00016936] 4eb9 0001 6448            jsr        objname
[0001693c] 504f                      addq.w     #8,a7
[0001693e] 203c 0000 0080            move.l     #$00000080,d0
[00016944] 204a                      movea.l    a2,a0
[00016946] 4eb9 0001 6230            jsr        objmalloc
[0001694c] 2548 003c                 move.l     a0,60(a2)
[00016950] 4853                      pea.l      (a3)
[00016952] 4879 0009 b530            pea.l      rf_obj
[00016958] 2248                      movea.l    a0,a1
[0001695a] 204a                      movea.l    a2,a0
[0001695c] 4eb9 0001 6448            jsr        objname
[00016962] 504f                      addq.w     #8,a7
[00016964] 203c 0000 0080            move.l     #$00000080,d0
[0001696a] 204a                      movea.l    a2,a0
[0001696c] 4eb9 0001 6230            jsr        objmalloc
[00016972] 2548 0040                 move.l     a0,64(a2)
[00016976] 4853                      pea.l      (a3)
[00016978] 4879 0009 b4dc            pea.l      mf_obj
[0001697e] 2248                      movea.l    a0,a1
[00016980] 204a                      movea.l    a2,a0
[00016982] 4eb9 0001 6448            jsr        objname
[00016988] 504f                      addq.w     #8,a7
[0001698a] 203c 0000 0080            move.l     #$00000080,d0
[00016990] 204a                      movea.l    a2,a0
[00016992] 4eb9 0001 6230            jsr        objmalloc
[00016998] 2548 0044                 move.l     a0,68(a2)
[0001699c] 4853                      pea.l      (a3)
[0001699e] 4879 0009 b4bd            pea.l      if_obj
[000169a4] 2248                      movea.l    a0,a1
[000169a6] 204a                      movea.l    a2,a0
[000169a8] 4eb9 0001 6448            jsr        objname
[000169ae] 504f                      addq.w     #8,a7
[000169b0] 4243                      clr.w      d3
[000169b2] 6066                      bra.s      init_acs_1
init_acs_2:
[000169b4] 203c 0000 0080            move.l     #$00000080,d0
[000169ba] 204a                      movea.l    a2,a0
[000169bc] 4eb9 0001 6230            jsr        objmalloc
[000169c2] 3003                      move.w     d3,d0
[000169c4] 48c0                      ext.l      d0
[000169c6] e588                      lsl.l      #2,d0
[000169c8] 43f2 0800                 lea.l      0(a2,d0.l),a1
[000169cc] 2348 01f6                 move.l     a0,502(a1)
[000169d0] 4853                      pea.l      (a3)
[000169d2] 3203                      move.w     d3,d1
[000169d4] e549                      lsl.w      #2,d1
[000169d6] 2f34 1000                 move.l     0(a4,d1.w),-(a7)
[000169da] 2248                      movea.l    a0,a1
[000169dc] 204a                      movea.l    a2,a0
[000169de] 4eb9 0001 6448            jsr        objname
[000169e4] 504f                      addq.w     #8,a7
[000169e6] 203c 0000 0080            move.l     #$00000080,d0
[000169ec] 204a                      movea.l    a2,a0
[000169ee] 4eb9 0001 6230            jsr        objmalloc
[000169f4] 3003                      move.w     d3,d0
[000169f6] 48c0                      ext.l      d0
[000169f8] e588                      lsl.l      #2,d0
[000169fa] 43f2 0800                 lea.l      0(a2,d0.l),a1
[000169fe] 2348 0202                 move.l     a0,514(a1)
[00016a02] 4853                      pea.l      (a3)
[00016a04] 3203                      move.w     d3,d1
[00016a06] e549                      lsl.w      #2,d1
[00016a08] 2f34 100c                 move.l     12(a4,d1.w),-(a7)
[00016a0c] 2248                      movea.l    a0,a1
[00016a0e] 204a                      movea.l    a2,a0
[00016a10] 4eb9 0001 6448            jsr        objname
[00016a16] 504f                      addq.w     #8,a7
[00016a18] 5243                      addq.w     #1,d3
init_acs_1:
[00016a1a] b67c 0003                 cmp.w      #$0003,d3
[00016a1e] 6d94                      blt.s      init_acs_2
[00016a20] 7008                      moveq.l    #8,d0
[00016a22] 2279 0010 1f12            movea.l    ACSblk,a1
[00016a28] 5049                      addq.w     #8,a1
[00016a2a] 41ea 0168                 lea.l      360(a2),a0
[00016a2e] 4eb9 0007 6f44            jsr        memcpy
[00016a34] 026a fffe 0006            andi.w     #$FFFE,6(a2)
[00016a3a] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00016a3e] 4e75                      rts

init_ml_list:
[00016a40] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[00016a44] 4fef ffba                 lea.l      -70(a7),a7
[00016a48] 2a48                      movea.l    a0,a5
[00016a4a] 286f 0066                 movea.l    102(a7),a4
[00016a4e] 41f9 0009 8a92            lea.l      $00098A92,a0
[00016a54] 45ef 0004                 lea.l      4(a7),a2
[00016a58] 700f                      moveq.l    #15,d0
init_ml_list_1:
[00016a5a] 24d8                      move.l     (a0)+,(a2)+
[00016a5c] 51c8 fffc                 dbf        d0,init_ml_list_1
[00016a60] 34d8                      move.w     (a0)+,(a2)+
[00016a62] 2ea9 0004                 move.l     4(a1),(a7)
[00016a66] 2629 000e                 move.l     14(a1),d3
[00016a6a] e48b                      lsr.l      #2,d3
[00016a6c] 4244                      clr.w      d4
[00016a6e] 6012                      bra.s      init_ml_list_2
init_ml_list_3:
[00016a70] 3004                      move.w     d4,d0
[00016a72] 48c0                      ext.l      d0
[00016a74] e588                      lsl.l      #2,d0
[00016a76] 2057                      movea.l    (a7),a0
[00016a78] 2270 0800                 movea.l    0(a0,d0.l),a1
[00016a7c] 4229 0033                 clr.b      51(a1)
[00016a80] 5244                      addq.w     #1,d4
init_ml_list_2:
[00016a82] b644                      cmp.w      d4,d3
[00016a84] 6eea                      bgt.s      init_ml_list_3
[00016a86] 4245                      clr.w      d5
[00016a88] 6000 00e8                 bra        init_ml_list_4
init_ml_list_11:
[00016a8c] 3005                      move.w     d5,d0
[00016a8e] 48c0                      ext.l      d0
[00016a90] e588                      lsl.l      #2,d0
[00016a92] 2234 0800                 move.l     0(a4,d0.l),d1
[00016a96] 6600 00d8                 bne        init_ml_list_5
[00016a9a] 006d 0001 0006            ori.w      #$0001,6(a5)
[00016aa0] 204d                      movea.l    a5,a0
[00016aa2] 203c 0000 0080            move.l     #$00000080,d0
[00016aa8] 4eb9 0001 6230            jsr        objmalloc
[00016aae] 3005                      move.w     d5,d0
[00016ab0] 48c0                      ext.l      d0
[00016ab2] e588                      lsl.l      #2,d0
[00016ab4] 2988 0800                 move.l     a0,0(a4,d0.l)
[00016ab8] 2208                      move.l     a0,d1
[00016aba] 6608                      bne.s      init_ml_list_6
[00016abc] 7003                      moveq.l    #3,d0
[00016abe] 91c8                      suba.l     a0,a0
[00016ac0] 6100 fa5c                 bsr        assert_error
init_ml_list_6:
[00016ac4] 42a7                      clr.l      -(a7)
[00016ac6] 3005                      move.w     d5,d0
[00016ac8] 48c0                      ext.l      d0
[00016aca] e588                      lsl.l      #2,d0
[00016acc] 206f 006e                 movea.l    110(a7),a0
[00016ad0] 2f30 0800                 move.l     0(a0,d0.l),-(a7)
[00016ad4] 2274 0800                 movea.l    0(a4,d0.l),a1
[00016ad8] 204d                      movea.l    a5,a0
[00016ada] 4eb9 0001 6448            jsr        objname
[00016ae0] 504f                      addq.w     #8,a7
[00016ae2] 4244                      clr.w      d4
[00016ae4] 6000 0084                 bra        init_ml_list_7
init_ml_list_10:
[00016ae8] 3004                      move.w     d4,d0
[00016aea] 48c0                      ext.l      d0
[00016aec] e588                      lsl.l      #2,d0
[00016aee] 2057                      movea.l    (a7),a0
[00016af0] 2670 0800                 movea.l    0(a0,d0.l),a3
[00016af4] 2f6b 0004 0008            move.l     4(a3),8(a7)
[00016afa] 2f6b 000a 000e            move.l     10(a3),14(a7)
[00016b00] 2f6b 000e 0012            move.l     14(a3),18(a7)
[00016b06] 43ef 0004                 lea.l      4(a7),a1
[00016b0a] 204d                      movea.l    a5,a0
[00016b0c] 4eb9 0003 4af6            jsr        copy_str
[00016b12] 2448                      movea.l    a0,a2
[00016b14] 200a                      move.l     a2,d0
[00016b16] 6608                      bne.s      init_ml_list_8
[00016b18] 7003                      moveq.l    #3,d0
[00016b1a] 91c8                      suba.l     a0,a0
[00016b1c] 6100 fa00                 bsr        assert_error
init_ml_list_8:
[00016b20] 3f05                      move.w     d5,-(a7)
[00016b22] 486b 0016                 pea.l      22(a3)
[00016b26] 43f9 0009 8b17            lea.l      $00098B17,a1
[00016b2c] 41ea 0016                 lea.l      22(a2),a0
[00016b30] 4eb9 0007 5680            jsr        sprintf
[00016b36] 5c4f                      addq.w     #6,a7
[00016b38] 42a7                      clr.l      -(a7)
[00016b3a] 486a 0016                 pea.l      22(a2)
[00016b3e] 224a                      movea.l    a2,a1
[00016b40] 204d                      movea.l    a5,a0
[00016b42] 4eb9 0001 6448            jsr        objname
[00016b48] 504f                      addq.w     #8,a7
[00016b4a] 224a                      movea.l    a2,a1
[00016b4c] 3005                      move.w     d5,d0
[00016b4e] 48c0                      ext.l      d0
[00016b50] e588                      lsl.l      #2,d0
[00016b52] 2074 0800                 movea.l    0(a4,d0.l),a0
[00016b56] 4eb9 0003 1a94            jsr        add_entry
[00016b5c] 5240                      addq.w     #1,d0
[00016b5e] 6608                      bne.s      init_ml_list_9
[00016b60] 91c8                      suba.l     a0,a0
[00016b62] 7003                      moveq.l    #3,d0
[00016b64] 6100 f9b8                 bsr        assert_error
init_ml_list_9:
[00016b68] 5244                      addq.w     #1,d4
init_ml_list_7:
[00016b6a] b644                      cmp.w      d4,d3
[00016b6c] 6e00 ff7a                 bgt        init_ml_list_10
init_ml_list_5:
[00016b70] 5245                      addq.w     #1,d5
init_ml_list_4:
[00016b72] ba7c 0003                 cmp.w      #$0003,d5
[00016b76] 6d00 ff14                 blt        init_ml_list_11
[00016b7a] 4fef 0046                 lea.l      70(a7),a7
[00016b7e] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[00016b82] 4e75                      rts

del_mess:
[00016b84] 48e7 182c                 movem.l    d3-d4/a2/a4-a5,-(a7)
[00016b88] 4fef ffdc                 lea.l      -36(a7),a7
[00016b8c] 2848                      movea.l    a0,a4
[00016b8e] 4243                      clr.w      d3
[00016b90] 4eb9 0004 9902            jsr        Amo_busy
[00016b96] 4244                      clr.w      d4
[00016b98] 45f9 0009 8b16            lea.l      $00098B16,a2
[00016b9e] 6042                      bra.s      del_mess_1
del_mess_3:
[00016ba0] 3f04                      move.w     d4,-(a7)
[00016ba2] 43ea 000b                 lea.l      11(a2),a1
[00016ba6] 41ef 0002                 lea.l      2(a7),a0
[00016baa] 4eb9 0007 5680            jsr        sprintf
[00016bb0] 544f                      addq.w     #2,a7
[00016bb2] 43d7                      lea.l      (a7),a1
[00016bb4] 206c 0024                 movea.l    36(a4),a0
[00016bb8] 4eb9 0003 1a5c            jsr        find_entry
[00016bbe] 2a48                      movea.l    a0,a5
[00016bc0] 200d                      move.l     a5,d0
[00016bc2] 671c                      beq.s      del_mess_2
[00016bc4] 322d 0038                 move.w     56(a5),d1
[00016bc8] c27c 0100                 and.w      #$0100,d1
[00016bcc] 6712                      beq.s      del_mess_2
[00016bce] 026d feff 0038            andi.w     #$FEFF,56(a5)
[00016bd4] 224d                      movea.l    a5,a1
[00016bd6] 204c                      movea.l    a4,a0
[00016bd8] 4eb9 0003 268a            jsr        del_alert
[00016bde] 7601                      moveq.l    #1,d3
del_mess_2:
[00016be0] 5244                      addq.w     #1,d4
del_mess_1:
[00016be2] b87c 001e                 cmp.w      #$001E,d4
[00016be6] 6db8                      blt.s      del_mess_3
[00016be8] 6042                      bra.s      del_mess_4
del_mess_6:
[00016bea] 3f04                      move.w     d4,-(a7)
[00016bec] 43ea 000b                 lea.l      11(a2),a1
[00016bf0] 41ef 0002                 lea.l      2(a7),a0
[00016bf4] 4eb9 0007 5680            jsr        sprintf
[00016bfa] 544f                      addq.w     #2,a7
[00016bfc] 43d7                      lea.l      (a7),a1
[00016bfe] 206c 0034                 movea.l    52(a4),a0
[00016c02] 4eb9 0003 1a5c            jsr        find_entry
[00016c08] 2a48                      movea.l    a0,a5
[00016c0a] 200d                      move.l     a5,d0
[00016c0c] 671c                      beq.s      del_mess_5
[00016c0e] 322d 0038                 move.w     56(a5),d1
[00016c12] c27c 0100                 and.w      #$0100,d1
[00016c16] 6712                      beq.s      del_mess_5
[00016c18] 026d feff 0038            andi.w     #$FEFF,56(a5)
[00016c1e] 224d                      movea.l    a5,a1
[00016c20] 204c                      movea.l    a4,a0
[00016c22] 4eb9 0003 47e8            jsr        del_string
[00016c28] 7601                      moveq.l    #1,d3
del_mess_5:
[00016c2a] 5244                      addq.w     #1,d4
del_mess_4:
[00016c2c] b87c 0022                 cmp.w      #$0022,d4
[00016c30] 6db8                      blt.s      del_mess_6
[00016c32] 4eb9 0004 9940            jsr        Amo_unbusy
[00016c38] 4a43                      tst.w      d3
[00016c3a] 6706                      beq.s      del_mess_7
[00016c3c] 006c 0001 0006            ori.w      #$0001,6(a4)
del_mess_7:
[00016c42] 4fef 0024                 lea.l      36(a7),a7
[00016c46] 4cdf 3418                 movem.l    (a7)+,d3-d4/a2/a4-a5
[00016c4a] 4e75                      rts

init_mess:
[00016c4c] 48e7 183a                 movem.l    d3-d4/a2-a4/a6,-(a7)
[00016c50] 4fef ff9a                 lea.l      -102(a7),a7
[00016c54] 2648                      movea.l    a0,a3
[00016c56] 45ef 0024                 lea.l      36(a7),a2
[00016c5a] 41f9 0009 8ad4            lea.l      $00098AD4,a0
[00016c60] 224a                      movea.l    a2,a1
[00016c62] 700f                      moveq.l    #15,d0
init_mess_1:
[00016c64] 22d8                      move.l     (a0)+,(a1)+
[00016c66] 51c8 fffc                 dbf        d0,init_mess_1
[00016c6a] 32d8                      move.w     (a0)+,(a1)+
[00016c6c] 4243                      clr.w      d3
[00016c6e] 302b 0006                 move.w     6(a3),d0
[00016c72] c07c 8000                 and.w      #$8000,d0
[00016c76] 6600 016c                 bne        init_mess_2
[00016c7a] 4eb9 0004 9902            jsr        Amo_busy
[00016c80] 4244                      clr.w      d4
[00016c82] 4df9 0007 e8e6            lea.l      mlmess,a6
[00016c88] 6000 009e                 bra        init_mess_3
init_mess_5:
[00016c8c] 3f04                      move.w     d4,-(a7)
[00016c8e] 43f9 0009 8b21            lea.l      $00098B21,a1
[00016c94] 41ef 0002                 lea.l      2(a7),a0
[00016c98] 4eb9 0007 5680            jsr        sprintf
[00016c9e] 544f                      addq.w     #2,a7
[00016ca0] 43d7                      lea.l      (a7),a1
[00016ca2] 206b 0024                 movea.l    36(a3),a0
[00016ca6] 4eb9 0003 1a5c            jsr        find_entry
[00016cac] 2008                      move.l     a0,d0
[00016cae] 6676                      bne.s      init_mess_4
[00016cb0] 3004                      move.w     d4,d0
[00016cb2] 48c0                      ext.l      d0
[00016cb4] e588                      lsl.l      #2,d0
[00016cb6] 2576 0800 0004            move.l     0(a6,d0.l),4(a2)
[00016cbc] 2076 0800                 movea.l    0(a6,d0.l),a0
[00016cc0] 4eb9 0007 69b0            jsr        strlen
[00016cc6] 5280                      addq.l     #1,d0
[00016cc8] 2540 000a                 move.l     d0,10(a2)
[00016ccc] 2540 000e                 move.l     d0,14(a2)
[00016cd0] 224a                      movea.l    a2,a1
[00016cd2] 204b                      movea.l    a3,a0
[00016cd4] 4eb9 0003 26de            jsr        copy_alert
[00016cda] 2848                      movea.l    a0,a4
[00016cdc] 200c                      move.l     a4,d0
[00016cde] 6700 0104                 beq        init_mess_2
[00016ce2] 43d7                      lea.l      (a7),a1
[00016ce4] 41ec 0016                 lea.l      22(a4),a0
[00016ce8] 4eb9 0007 6950            jsr        strcpy
[00016cee] 42a7                      clr.l      -(a7)
[00016cf0] 486c 0016                 pea.l      22(a4)
[00016cf4] 224c                      movea.l    a4,a1
[00016cf6] 204b                      movea.l    a3,a0
[00016cf8] 4eb9 0001 6448            jsr        objname
[00016cfe] 504f                      addq.w     #8,a7
[00016d00] 006c 0100 0038            ori.w      #$0100,56(a4)
[00016d06] 224c                      movea.l    a4,a1
[00016d08] 206b 0024                 movea.l    36(a3),a0
[00016d0c] 4eb9 0003 1a94            jsr        add_entry
[00016d12] 5240                      addq.w     #1,d0
[00016d14] 6700 00ce                 beq        init_mess_2
[00016d18] 224c                      movea.l    a4,a1
[00016d1a] 7001                      moveq.l    #1,d0
[00016d1c] 204b                      movea.l    a3,a0
[00016d1e] 4eb9 0003 271c            jsr        serv_alert
[00016d24] 7601                      moveq.l    #1,d3
init_mess_4:
[00016d26] 5244                      addq.w     #1,d4
init_mess_3:
[00016d28] b87c 001e                 cmp.w      #$001E,d4
[00016d2c] 6d00 ff5e                 blt        init_mess_5
[00016d30] 6000 009a                 bra        init_mess_6
init_mess_8:
[00016d34] 3f04                      move.w     d4,-(a7)
[00016d36] 43f9 0009 8b21            lea.l      $00098B21,a1
[00016d3c] 41ef 0002                 lea.l      2(a7),a0
[00016d40] 4eb9 0007 5680            jsr        sprintf
[00016d46] 544f                      addq.w     #2,a7
[00016d48] 43d7                      lea.l      (a7),a1
[00016d4a] 206b 0034                 movea.l    52(a3),a0
[00016d4e] 4eb9 0003 1a5c            jsr        find_entry
[00016d54] 2008                      move.l     a0,d0
[00016d56] 6672                      bne.s      init_mess_7
[00016d58] 3004                      move.w     d4,d0
[00016d5a] 48c0                      ext.l      d0
[00016d5c] e588                      lsl.l      #2,d0
[00016d5e] 2576 0800 0004            move.l     0(a6,d0.l),4(a2)
[00016d64] 2076 0800                 movea.l    0(a6,d0.l),a0
[00016d68] 4eb9 0007 69b0            jsr        strlen
[00016d6e] 5280                      addq.l     #1,d0
[00016d70] 2540 000a                 move.l     d0,10(a2)
[00016d74] 2540 000e                 move.l     d0,14(a2)
[00016d78] 224a                      movea.l    a2,a1
[00016d7a] 204b                      movea.l    a3,a0
[00016d7c] 4eb9 0003 4af6            jsr        copy_str
[00016d82] 2848                      movea.l    a0,a4
[00016d84] 200c                      move.l     a4,d0
[00016d86] 675c                      beq.s      init_mess_2
[00016d88] 43d7                      lea.l      (a7),a1
[00016d8a] 41ec 0016                 lea.l      22(a4),a0
[00016d8e] 4eb9 0007 6950            jsr        strcpy
[00016d94] 42a7                      clr.l      -(a7)
[00016d96] 486c 0016                 pea.l      22(a4)
[00016d9a] 224c                      movea.l    a4,a1
[00016d9c] 204b                      movea.l    a3,a0
[00016d9e] 4eb9 0001 6448            jsr        objname
[00016da4] 504f                      addq.w     #8,a7
[00016da6] 006c 0100 0038            ori.w      #$0100,56(a4)
[00016dac] 224c                      movea.l    a4,a1
[00016dae] 206b 0034                 movea.l    52(a3),a0
[00016db2] 4eb9 0003 1a94            jsr        add_entry
[00016db8] 5240                      addq.w     #1,d0
[00016dba] 6728                      beq.s      init_mess_2
[00016dbc] 224c                      movea.l    a4,a1
[00016dbe] 7001                      moveq.l    #1,d0
[00016dc0] 204b                      movea.l    a3,a0
[00016dc2] 4eb9 0003 486e            jsr        serv_str
[00016dc8] 7601                      moveq.l    #1,d3
init_mess_7:
[00016dca] 5244                      addq.w     #1,d4
init_mess_6:
[00016dcc] b87c 0022                 cmp.w      #$0022,d4
[00016dd0] 6d00 ff62                 blt        init_mess_8
[00016dd4] 4eb9 0004 9940            jsr        Amo_unbusy
[00016dda] 4a43                      tst.w      d3
[00016ddc] 6706                      beq.s      init_mess_2
[00016dde] 006b 0001 0006            ori.w      #$0001,6(a3)
init_mess_2:
[00016de4] 4fef 0066                 lea.l      102(a7),a7
[00016de8] 4cdf 5c18                 movem.l    (a7)+,d3-d4/a2-a4/a6
[00016dec] 4e75                      rts

read_acs:
[00016dee] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00016df2] 4fef fff6                 lea.l      -10(a7),a7
[00016df6] 2448                      movea.l    a0,a2
[00016df8] 2849                      movea.l    a1,a4
[00016dfa] 47f9 0009 8830            lea.l      proto,a3
[00016e00] 274a 0008                 move.l     a2,8(a3)
[00016e04] 203c 0000 0262            move.l     #$00000262,d0
[00016e0a] 224b                      movea.l    a3,a1
[00016e0c] 204c                      movea.l    a4,a0
[00016e0e] 4eb9 0007 6f44            jsr        memcpy
[00016e14] 42ab 0008                 clr.l      8(a3)
[00016e18] 204a                      movea.l    a2,a0
[00016e1a] 4eb9 0004 73bc            jsr        Af_length
[00016e20] 4a80                      tst.l      d0
[00016e22] 660a                      bne.s      read_acs_1
[00016e24] 204c                      movea.l    a4,a0
[00016e26] 6100 f96e                 bsr        init_acs
[00016e2a] 6000 010c                 bra        read_acs_2
read_acs_1:
[00016e2e] 4240                      clr.w      d0
[00016e30] 204a                      movea.l    a2,a0
[00016e32] 4eb9 0007 29f0            jsr        Fopen
[00016e38] 4a80                      tst.l      d0
[00016e3a] 6b64                      bmi.s      read_acs_3
[00016e3c] 76ff                      moveq.l    #-1,d3
[00016e3e] c640                      and.w      d0,d3
[00016e40] 43f9 0009 8b2b            lea.l      $00098B2B,a1
[00016e46] 2f09                      move.l     a1,-(a7)
[00016e48] 41ef 0004                 lea.l      4(a7),a0
[00016e4c] 224a                      movea.l    a2,a1
[00016e4e] 4eb9 0004 7286            jsr        Af_2ext
[00016e54] 225f                      movea.l    (a7)+,a1
[00016e56] 4eb9 0004 38ac            jsr        Ast_icmp
[00016e5c] 4a40                      tst.w      d0
[00016e5e] 6622                      bne.s      read_acs_4
[00016e60] 3003                      move.w     d3,d0
[00016e62] 6100 f6da                 bsr        set_handle
[00016e66] 4eb9 0007 5162            jsr        setjmp
[00016e6c] 4a40                      tst.w      d0
[00016e6e] 6628                      bne.s      read_acs_5
[00016e70] 204c                      movea.l    a4,a0
[00016e72] 4eb9 0001 783a            jsr        read_rsc
[00016e78] 026c fffe 0006            andi.w     #$FFFE,6(a4)
[00016e7e] 6000 00b0                 bra        read_acs_6
read_acs_4:
[00016e82] 3003                      move.w     d3,d0
[00016e84] 6100 f6b8                 bsr        set_handle
[00016e88] 4eb9 0007 5162            jsr        setjmp
[00016e8e] 4a40                      tst.w      d0
[00016e90] 6714                      beq.s      read_acs_7
[00016e92] 4eb9 0001 6144            jsr        release_err
read_acs_5:
[00016e98] 3003                      move.w     d3,d0
[00016e9a] 4eb9 0007 29ae            jsr        Fclose
read_acs_3:
[00016ea0] 70ff                      moveq.l    #-1,d0
[00016ea2] 6000 0096                 bra        read_acs_8
read_acs_7:
[00016ea6] 204c                      movea.l    a4,a0
[00016ea8] 4eb9 0001 5784            jsr        rd_all
[00016eae] 204c                      movea.l    a4,a0
[00016eb0] 4eb9 0001 54f6            jsr        unfix_all
[00016eb6] 202c 0044                 move.l     68(a4),d0
[00016eba] 662a                      bne.s      read_acs_9
[00016ebc] 204c                      movea.l    a4,a0
[00016ebe] 203c 0000 0080            move.l     #$00000080,d0
[00016ec4] 4eb9 0001 6230            jsr        objmalloc
[00016eca] 2948 0044                 move.l     a0,68(a4)
[00016ece] 4879 0009 8b16            pea.l      $00098B16
[00016ed4] 4879 0009 b4bd            pea.l      if_obj
[00016eda] 2248                      movea.l    a0,a1
[00016edc] 204c                      movea.l    a4,a0
[00016ede] 4eb9 0001 6448            jsr        objname
[00016ee4] 504f                      addq.w     #8,a7
read_acs_9:
[00016ee6] 486b ffe8                 pea.l      -24(a3)
[00016eea] 486c 01f6                 pea.l      502(a4)
[00016eee] 226c 0034                 movea.l    52(a4),a1
[00016ef2] 204c                      movea.l    a4,a0
[00016ef4] 6100 fb4a                 bsr        init_ml_list
[00016ef8] 504f                      addq.w     #8,a7
[00016efa] 486b fff4                 pea.l      -12(a3)
[00016efe] 486c 0202                 pea.l      514(a4)
[00016f02] 226c 0024                 movea.l    36(a4),a1
[00016f06] 204c                      movea.l    a4,a0
[00016f08] 6100 fb36                 bsr        init_ml_list
[00016f0c] 504f                      addq.w     #8,a7
[00016f0e] 204c                      movea.l    a4,a0
[00016f10] 6100 fd3a                 bsr        init_mess
[00016f14] 0c6c 0191 0004            cmpi.w     #$0191,4(a4)
[00016f1a] 6c08                      bge.s      read_acs_10
[00016f1c] 006c 0001 0006            ori.w      #$0001,6(a4)
[00016f22] 6006                      bra.s      read_acs_11
read_acs_10:
[00016f24] 026c fffe 0006            andi.w     #$FFFE,6(a4)
read_acs_11:
[00016f2a] 397c 0191 0004            move.w     #$0191,4(a4)
read_acs_6:
[00016f30] 3003                      move.w     d3,d0
[00016f32] 4eb9 0007 29ae            jsr        Fclose
read_acs_2:
[00016f38] 4240                      clr.w      d0
read_acs_8:
[00016f3a] 4fef 000a                 lea.l      10(a7),a7
[00016f3e] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00016f42] 4e75                      rts

	.data

pc_welcome:
[000982c6]                           dc.b '/*********************************************************************/',$0d,$0a,'/*                                                                   */',$0d,$0a,'/* This file was created with ACS3.00 at %.24s    */',$0d,$0a,'/*                                                                   */',$0d,$0a,'/* The contents are based on file:                                   */',$0d,$0a,'/*    %-62s */',$0d,$0a,'/*                                                                   */',$0d,$0a,'/* (c) 1991-2003 by Stefan Bachert, Oliver Michalak, Martin Els„sser */',$0d,$0a,'/*********************************************************************/',$0d,$0a,0
pp_welcome:
[0009850c]                           dc.b '(*********************************************************************)',$0d,$0a,'(*                                                                   *)',$0d,$0a,'(* This file was created with ACS3.00 at %.24s    *)',$0d,$0a,'(*                                                                   *)',$0d,$0a,'(* The contents are based on file:                                   *)',$0d,$0a,'(*    %-62s *)',$0d,$0a,'(*                                                                   *)',$0d,$0a,'(* (c) 1991-2003 by Stefan Bachert, Oliver Michalak, Martin Els„sser *)',$0d,$0a,'(*********************************************************************)',$0d,$0a,0
str_welcome:
[00098752]                           dc.b '; This file was created with ACS3.00 at %.24s',$0d,$0a,'; from %s',$0d,$0a,'; Do not edit this file, since changes will be lost when generating',$0d,$0a,'; (c) 1991-2003 by Stefan Bachert, Oliver Michalak, Martin Els„sser',$0d,$0a,0
[00098817]                           dc.b $00
ml_title:
[00098818] 0009b4eb                  dc.l ml1_obj
[0009881c] 0009b4f9                  dc.l ml2_obj
[00098820] 0009b507                  dc.l ml3_obj
mlal_title:
[00098824] 0009b47b                  dc.l al1_obj
[00098828] 0009b48a                  dc.l al2_obj
[0009882c] 0009b499                  dc.l al3_obj
proto:
[00098830]                           dc.b '.ACS'
[00098834]                           dc.w $0191
[00098836]                           dc.w $b800
[00098838]                           dc.b $00
[00098839]                           dc.b $00
[0009883a]                           dc.b $00
[0009883b]                           dc.b $00
[0009883c]                           dc.b $00
[0009883d]                           dc.b $00
[0009883e]                           dc.b $00
[0009883f]                           dc.b $00
[00098840]                           dc.b $00
[00098841]                           dc.b $00
[00098842]                           dc.b $00
[00098843]                           dc.b $00
[00098844]                           dc.b $00
[00098845]                           dc.b $00
[00098846]                           dc.b $00
[00098847]                           dc.b $00
[00098848]                           dc.b $00
[00098849]                           dc.b $00
[0009884a]                           dc.b $00
[0009884b]                           dc.b $00
[0009884c]                           dc.b $00
[0009884d]                           dc.b $00
[0009884e]                           dc.b $00
[0009884f]                           dc.b $00
[00098850]                           dc.b $00
[00098851]                           dc.b $00
[00098852]                           dc.b $00
[00098853]                           dc.b $00
[00098854]                           dc.b $00
[00098855]                           dc.b $00
[00098856]                           dc.b $00
[00098857]                           dc.b $00
[00098858]                           dc.b $00
[00098859]                           dc.b $00
[0009885a]                           dc.b $00
[0009885b]                           dc.b $00
[0009885c]                           dc.b $00
[0009885d]                           dc.b $00
[0009885e]                           dc.b $00
[0009885f]                           dc.b $00
[00098860]                           dc.b $00
[00098861]                           dc.b $00
[00098862]                           dc.b $00
[00098863]                           dc.b $00
[00098864]                           dc.b $00
[00098865]                           dc.b $00
[00098866]                           dc.b $00
[00098867]                           dc.b $00
[00098868]                           dc.b $00
[00098869]                           dc.b $00
[0009886a]                           dc.b $00
[0009886b]                           dc.b $00
[0009886c]                           dc.b $00
[0009886d]                           dc.b $00
[0009886e]                           dc.b $00
[0009886f]                           dc.b $00
[00098870]                           dc.b $00
[00098871]                           dc.b $00
[00098872]                           dc.b $00
[00098873]                           dc.b $00
[00098874]                           dc.b $00
[00098875]                           dc.b $00
[00098876]                           dc.b $00
[00098877]                           dc.b $00
[00098878]                           dc.b $00
[00098879]                           dc.b $00
[0009887a]                           dc.b $00
[0009887b]                           dc.b $00
[0009887c]                           dc.b 'ACS3.00',0
[00098884]                           dc.w $012c
[00098886]                           dc.w $ff9d
[00098888]                           dc.w $ff9d
[0009888a]                           dc.b $00
[0009888b]                           dc.b 'Q  ACS ACCESSORY  ',0
[0009889e]                           dc.b $00
[0009889f]                           dc.b $00
[000988a0]                           dc.b $00
[000988a1]                           dc.b $00
[000988a2]                           dc.b $00
[000988a3]                           dc.b $00
[000988a4]                           dc.b $00
[000988a5]                           dc.b $00
[000988a6]                           dc.b $00
[000988a7]                           dc.b $00
[000988a8]                           dc.b $00
[000988a9]                           dc.b $00
[000988aa]                           dc.b $00
[000988ab]                           dc.b $00
[000988ac]                           dc.b $00
[000988ad]                           dc.b $00
[000988ae]                           dc.b $00
[000988af]                           dc.b $00
[000988b0]                           dc.b $00
[000988b1]                           dc.b $00
[000988b2]                           dc.b $00
[000988b3]                           dc.b $00
[000988b4]                           dc.b $00
[000988b5]                           dc.b $00
[000988b6]                           dc.b $00
[000988b7]                           dc.b $00
[000988b8]                           dc.b $00
[000988b9]                           dc.b $00
[000988ba]                           dc.b $00
[000988bb]                           dc.b $02
[000988bc]                           dc.b $00
[000988bd]                           dc.b $00
[000988be]                           dc.b $00
[000988bf]                           dc.b $00
[000988c0]                           dc.b $00
[000988c1]                           dc.b $03
[000988c2]                           dc.b $00
[000988c3]                           dc.b $00
[000988c4]                           dc.b $00
[000988c5]                           dc.b $00
[000988c6]                           dc.b $00
[000988c7]                           dc.b $04
[000988c8]                           dc.b $00
[000988c9]                           dc.b $00
[000988ca]                           dc.b $00
[000988cb]                           dc.b $00
[000988cc]                           dc.b $00
[000988cd]                           dc.b $01
[000988ce]                           dc.b $00
[000988cf]                           dc.b $00
[000988d0]                           dc.b $00
[000988d1]                           dc.b $00
[000988d2]                           dc.b $00
[000988d3]                           dc.b $05
[000988d4]                           dc.b $00
[000988d5]                           dc.b $00
[000988d6]                           dc.b $00
[000988d7]                           dc.b $00
[000988d8]                           dc.b $00
[000988d9]                           dc.b $06
[000988da]                           dc.b $00
[000988db]                           dc.b $00
[000988dc]                           dc.b $00
[000988dd]                           dc.b $00
[000988de]                           dc.b $00
[000988df]                           dc.b $07
[000988e0]                           dc.b $00
[000988e1]                           dc.b $00
[000988e2]                           dc.b $00
[000988e3]                           dc.b $00
[000988e4]                           dc.b $00
[000988e5]                           dc.b $00
[000988e6]                           dc.b $00
[000988e7]                           dc.b $00
[000988e8]                           dc.b $00
[000988e9]                           dc.b $00
[000988ea]                           dc.b $00
[000988eb]                           dc.b $00
[000988ec]                           dc.b $00
[000988ed]                           dc.b $00
[000988ee]                           dc.b $00
[000988ef]                           dc.b $00
[000988f0]                           dc.b $00
[000988f1]                           dc.b $00
[000988f2]                           dc.b $00
[000988f3]                           dc.b $00
[000988f4]                           dc.b $00
[000988f5]                           dc.b $00
[000988f6]                           dc.b $00
[000988f7]                           dc.b $00
[000988f8]                           dc.b $00
[000988f9]                           dc.b $00
[000988fa]                           dc.b $00
[000988fb]                           dc.b $00
[000988fc]                           dc.b $00
[000988fd]                           dc.b $00
[000988fe]                           dc.b $00
[000988ff]                           dc.b $00
[00098900]                           dc.b $00
[00098901]                           dc.b $00
[00098902]                           dc.b $00
[00098903]                           dc.b $00
[00098904]                           dc.b $00
[00098905]                           dc.b $00
[00098906]                           dc.b $00
[00098907]                           dc.b $00
[00098908]                           dc.b $00
[00098909]                           dc.b $00
[0009890a]                           dc.b $00
[0009890b]                           dc.b $00
[0009890c]                           dc.b $00
[0009890d]                           dc.b $00
[0009890e]                           dc.b $00
[0009890f]                           dc.b $00
[00098910]                           dc.b $00
[00098911]                           dc.b $00
[00098912]                           dc.b $00
[00098913]                           dc.b $00
[00098914]                           dc.b $00
[00098915]                           dc.b $00
[00098916]                           dc.b $00
[00098917]                           dc.b $00
[00098918]                           dc.b $00
[00098919]                           dc.b $00
[0009891a]                           dc.b $00
[0009891b]                           dc.b $00
[0009891c]                           dc.b $00
[0009891d]                           dc.b $00
[0009891e]                           dc.b $00
[0009891f]                           dc.b $00
[00098920]                           dc.b $00
[00098921]                           dc.b $00
[00098922]                           dc.b $00
[00098923]                           dc.b $00
[00098924]                           dc.b $00
[00098925]                           dc.b $00
[00098926]                           dc.b $00
[00098927]                           dc.b $00
[00098928]                           dc.b $00
[00098929]                           dc.b $00
[0009892a]                           dc.b $00
[0009892b]                           dc.b $00
[0009892c]                           dc.b $00
[0009892d]                           dc.b $00
[0009892e]                           dc.b $00
[0009892f]                           dc.b $00
[00098930]                           dc.b $00
[00098931]                           dc.b $00
[00098932]                           dc.b $00
[00098933]                           dc.b $00
[00098934]                           dc.b $00
[00098935]                           dc.b $00
[00098936]                           dc.b $00
[00098937]                           dc.b $00
[00098938]                           dc.b $00
[00098939]                           dc.b $00
[0009893a]                           dc.b $00
[0009893b]                           dc.b $00
[0009893c]                           dc.b $00
[0009893d]                           dc.b $00
[0009893e]                           dc.b $00
[0009893f]                           dc.b $00
[00098940]                           dc.b $00
[00098941]                           dc.b $00
[00098942]                           dc.b $00
[00098943]                           dc.b $00
[00098944]                           dc.b $00
[00098945]                           dc.b $00
[00098946]                           dc.b $00
[00098947]                           dc.b $00
[00098948]                           dc.b $00
[00098949]                           dc.b $00
[0009894a]                           dc.b $00
[0009894b]                           dc.b $00
[0009894c]                           dc.b $00
[0009894d]                           dc.b $00
[0009894e]                           dc.b $00
[0009894f]                           dc.b $00
[00098950]                           dc.b $00
[00098951]                           dc.b $00
[00098952]                           dc.b $00
[00098953]                           dc.b $00
[00098954]                           dc.b $00
[00098955]                           dc.b $00
[00098956]                           dc.b $00
[00098957]                           dc.b $00
[00098958]                           dc.b $00
[00098959]                           dc.b $00
[0009895a]                           dc.b $00
[0009895b]                           dc.b $00
[0009895c]                           dc.b $00
[0009895d]                           dc.b $00
[0009895e]                           dc.b $00
[0009895f]                           dc.b $00
[00098960]                           dc.b $00
[00098961]                           dc.b $00
[00098962]                           dc.b $00
[00098963]                           dc.b $00
[00098964]                           dc.b $00
[00098965]                           dc.b $00
[00098966]                           dc.b $00
[00098967]                           dc.b $00
[00098968]                           dc.b $00
[00098969]                           dc.b $00
[0009896a]                           dc.b $00
[0009896b]                           dc.b $00
[0009896c]                           dc.b $00
[0009896d]                           dc.b $00
[0009896e]                           dc.b $00
[0009896f]                           dc.b $00
[00098970]                           dc.b $00
[00098971]                           dc.b $00
[00098972]                           dc.b $00
[00098973]                           dc.b $00
[00098974]                           dc.b $00
[00098975]                           dc.b $00
[00098976]                           dc.b $00
[00098977]                           dc.b $00
[00098978]                           dc.b $00
[00098979]                           dc.b $00
[0009897a]                           dc.b $00
[0009897b]                           dc.b $00
[0009897c]                           dc.b $00
[0009897d]                           dc.b $00
[0009897e]                           dc.b $00
[0009897f]                           dc.b $00
[00098980]                           dc.b $00
[00098981]                           dc.b $00
[00098982]                           dc.b $00
[00098983]                           dc.b $00
[00098984]                           dc.b $00
[00098985]                           dc.b $00
[00098986]                           dc.b $00
[00098987]                           dc.b $00
[00098988]                           dc.b $00
[00098989]                           dc.b $00
[0009898a]                           dc.b $00
[0009898b]                           dc.b $00
[0009898c]                           dc.b $00
[0009898d]                           dc.b $00
[0009898e]                           dc.b $00
[0009898f]                           dc.b $00
[00098990]                           dc.b $00
[00098991]                           dc.b $00
[00098992]                           dc.b $00
[00098993]                           dc.b $00
[00098994]                           dc.b $00
[00098995]                           dc.b $00
[00098996]                           dc.b $00
[00098997]                           dc.b $00
[00098998]                           dc.b $00
[00098999]                           dc.b $00
[0009899a]                           dc.b $00
[0009899b]                           dc.b $00
[0009899c]                           dc.b $00
[0009899d]                           dc.b $00
[0009899e]                           dc.b $00
[0009899f]                           dc.b $00
[000989a0]                           dc.b $00
[000989a1]                           dc.b $00
[000989a2]                           dc.b $00
[000989a3]                           dc.b $00
[000989a4]                           dc.b $00
[000989a5]                           dc.b $00
[000989a6]                           dc.b $00
[000989a7]                           dc.b $00
[000989a8]                           dc.b $00
[000989a9]                           dc.b $00
[000989aa]                           dc.b $00
[000989ab]                           dc.b $00
[000989ac]                           dc.b $00
[000989ad]                           dc.b $00
[000989ae]                           dc.b $00
[000989af]                           dc.b $00
[000989b0]                           dc.b $00
[000989b1]                           dc.b $00
[000989b2]                           dc.b $00
[000989b3]                           dc.b $00
[000989b4]                           dc.b $00
[000989b5]                           dc.b $00
[000989b6]                           dc.b $00
[000989b7]                           dc.b $00
[000989b8]                           dc.b $00
[000989b9]                           dc.b $00
[000989ba]                           dc.b $00
[000989bb]                           dc.b $00
[000989bc]                           dc.b $00
[000989bd]                           dc.b $00
[000989be]                           dc.b $00
[000989bf]                           dc.b $00
[000989c0]                           dc.b $00
[000989c1]                           dc.b $00
[000989c2]                           dc.b $00
[000989c3]                           dc.b $00
[000989c4]                           dc.b $00
[000989c5]                           dc.b $00
[000989c6]                           dc.b $00
[000989c7]                           dc.b $00
[000989c8]                           dc.b $00
[000989c9]                           dc.b $00
[000989ca]                           dc.b $00
[000989cb]                           dc.b $00
[000989cc]                           dc.b $00
[000989cd]                           dc.b $00
[000989ce]                           dc.b $00
[000989cf]                           dc.b $00
[000989d0]                           dc.b $00
[000989d1]                           dc.b $00
[000989d2]                           dc.b $00
[000989d3]                           dc.b $00
[000989d4]                           dc.b $00
[000989d5]                           dc.b $00
[000989d6]                           dc.b $00
[000989d7]                           dc.b $00
[000989d8]                           dc.b $00
[000989d9]                           dc.b $00
[000989da]                           dc.b $00
[000989db]                           dc.b $00
[000989dc]                           dc.b $00
[000989dd]                           dc.b $00
[000989de]                           dc.b $00
[000989df]                           dc.b $00
[000989e0]                           dc.b $00
[000989e1]                           dc.b $00
[000989e2]                           dc.b $00
[000989e3]                           dc.b $00
[000989e4]                           dc.b $00
[000989e5]                           dc.b $00
[000989e6]                           dc.b $00
[000989e7]                           dc.b $00
[000989e8]                           dc.b $00
[000989e9]                           dc.b $00
[000989ea]                           dc.b $00
[000989eb]                           dc.b $00
[000989ec]                           dc.b $00
[000989ed]                           dc.b $00
[000989ee]                           dc.b $00
[000989ef]                           dc.b $00
[000989f0]                           dc.b $00
[000989f1]                           dc.b $00
[000989f2]                           dc.b $00
[000989f3]                           dc.b $00
[000989f4]                           dc.b $00
[000989f5]                           dc.b $00
[000989f6]                           dc.b $00
[000989f7]                           dc.b $00
[000989f8]                           dc.b $00
[000989f9]                           dc.b $00
[000989fa]                           dc.b $00
[000989fb]                           dc.b $00
[000989fc]                           dc.b $00
[000989fd]                           dc.b $00
[000989fe]                           dc.b $00
[000989ff]                           dc.b $00
[00098a00]                           dc.b $00
[00098a01]                           dc.b $00
[00098a02]                           dc.b $00
[00098a03]                           dc.b $00
[00098a04]                           dc.b $00
[00098a05]                           dc.b $00
[00098a06]                           dc.b $00
[00098a07]                           dc.b $00
[00098a08]                           dc.b $00
[00098a09]                           dc.b $00
[00098a0a]                           dc.b $00
[00098a0b]                           dc.b $00
[00098a0c]                           dc.b $00
[00098a0d]                           dc.b $00
[00098a0e]                           dc.b $00
[00098a0f]                           dc.b $00
[00098a10]                           dc.b $00
[00098a11]                           dc.b $00
[00098a12]                           dc.b $00
[00098a13]                           dc.b $00
[00098a14]                           dc.b $00
[00098a15]                           dc.b $00
[00098a16]                           dc.b $00
[00098a17]                           dc.b $00
[00098a18]                           dc.b $00
[00098a19]                           dc.b $00
[00098a1a]                           dc.b $00
[00098a1b]                           dc.b $00
[00098a1c]                           dc.b $00
[00098a1d]                           dc.b $00
[00098a1e]                           dc.b $00
[00098a1f]                           dc.b $00
[00098a20]                           dc.b $00
[00098a21]                           dc.b $00
[00098a22]                           dc.b $00
[00098a23]                           dc.b $00
[00098a24]                           dc.b $00
[00098a25]                           dc.b $00
[00098a26]                           dc.b $00
[00098a27]                           dc.b $00
[00098a28]                           dc.b $00
[00098a29]                           dc.b $00
[00098a2a]                           dc.b $00
[00098a2b]                           dc.b $00
[00098a2c]                           dc.b $00
[00098a2d]                           dc.b $00
[00098a2e]                           dc.b $00
[00098a2f]                           dc.b $00
[00098a30]                           dc.b $00
[00098a31]                           dc.b $00
[00098a32]                           dc.b $00
[00098a33]                           dc.b $00
[00098a34]                           dc.b $00
[00098a35]                           dc.b $00
[00098a36]                           dc.b $00
[00098a37]                           dc.b $00
[00098a38]                           dc.b $00
[00098a39]                           dc.b $00
[00098a3a]                           dc.b $00
[00098a3b]                           dc.b $00
[00098a3c]                           dc.b $00
[00098a3d]                           dc.b $00
[00098a3e]                           dc.b $00
[00098a3f]                           dc.b $00
[00098a40]                           dc.b $00
[00098a41]                           dc.b $00
[00098a42]                           dc.b $00
[00098a43]                           dc.b $00
[00098a44]                           dc.b $00
[00098a45]                           dc.b $00
[00098a46]                           dc.b $00
[00098a47]                           dc.b $00
[00098a48]                           dc.b $00
[00098a49]                           dc.b $00
[00098a4a]                           dc.b $00
[00098a4b]                           dc.b $00
[00098a4c]                           dc.b $00
[00098a4d]                           dc.b $00
[00098a4e]                           dc.b $00
[00098a4f]                           dc.b $00
[00098a50]                           dc.b $00
[00098a51]                           dc.b $00
[00098a52]                           dc.b $00
[00098a53]                           dc.b $00
[00098a54]                           dc.b $00
[00098a55]                           dc.b $20
[00098a56]                           dc.b $00
[00098a57]                           dc.b $00
[00098a58]                           dc.b $00
[00098a59]                           dc.b $00
[00098a5a]                           dc.b $00
[00098a5b]                           dc.b $00
[00098a5c]                           dc.b $00
[00098a5d]                           dc.b $00
[00098a5e]                           dc.b $00
[00098a5f]                           dc.b $00
[00098a60]                           dc.b $00
[00098a61]                           dc.b $00
[00098a62]                           dc.b $00
[00098a63]                           dc.b $00
[00098a64]                           dc.b $00
[00098a65]                           dc.b $00
[00098a66]                           dc.b $00
[00098a67]                           dc.b $00
[00098a68]                           dc.b $00
[00098a69]                           dc.b $00
[00098a6a]                           dc.b $00
[00098a6b]                           dc.b $00
[00098a6c]                           dc.b $00
[00098a6d]                           dc.b $00
[00098a6e]                           dc.b $00
[00098a6f]                           dc.b $00
[00098a70]                           dc.b $00
[00098a71]                           dc.b $00
[00098a72]                           dc.b $00
[00098a73]                           dc.b $00
[00098a74]                           dc.b $00
[00098a75]                           dc.b $00
[00098a76]                           dc.b $00
[00098a77]                           dc.b $00
[00098a78]                           dc.b $00
[00098a79]                           dc.b $00
[00098a7a]                           dc.b $00
[00098a7b]                           dc.b $00
[00098a7c]                           dc.b $00
[00098a7d]                           dc.b $00
[00098a7e]                           dc.b $00
[00098a7f]                           dc.b $00
[00098a80]                           dc.b $00
[00098a81]                           dc.b $00
[00098a82]                           dc.b $00
[00098a83]                           dc.b $0d
[00098a84]                           dc.b $00
[00098a85]                           dc.b $00
[00098a86]                           dc.b $00
[00098a87]                           dc.b $00
[00098a88]                           dc.b $00
[00098a89]                           dc.b $00
[00098a8a]                           dc.b $00
[00098a8b]                           dc.b $00
[00098a8c]                           dc.b $00
[00098a8d]                           dc.b $00
[00098a8e]                           dc.b $00
[00098a8f]                           dc.b $00
[00098a90]                           dc.b $00
[00098a91]                           dc.b $00
[00098a92]                           dc.b $00
[00098a93]                           dc.b $00
[00098a94]                           dc.b $00
[00098a95]                           dc.b $00
[00098a96]                           dc.b $00
[00098a97]                           dc.b $00
[00098a98]                           dc.b $00
[00098a99]                           dc.b $00
[00098a9a]                           dc.b $00
[00098a9b]                           dc.b $00
[00098a9c]                           dc.b $00
[00098a9d]                           dc.b $00
[00098a9e]                           dc.b $00
[00098a9f]                           dc.b $00
[00098aa0]                           dc.b $00
[00098aa1]                           dc.b $00
[00098aa2]                           dc.b $00
[00098aa3]                           dc.b $00
[00098aa4]                           dc.b $00
[00098aa5]                           dc.b $00
[00098aa6]                           dc.b $00
[00098aa7]                           dc.b $00
[00098aa8]                           dc.b '                               ',0
[00098ac8]                           dc.b $00
[00098ac9]                           dc.b $01
[00098aca]                           dc.b $00
[00098acb]                           dc.b $00
[00098acc]                           dc.b $00
[00098acd]                           dc.b $00
[00098ace]                           dc.b $00
[00098acf]                           dc.b $00
[00098ad0]                           dc.b $00
[00098ad1]                           dc.b $00
[00098ad2]                           dc.b $00
[00098ad3]                           dc.b $00
[00098ad4]                           dc.b $00
[00098ad5]                           dc.b $00
[00098ad6]                           dc.b $00
[00098ad7]                           dc.b $00
[00098ad8]                           dc.b $00
[00098ad9]                           dc.b $00
[00098ada]                           dc.b $00
[00098adb]                           dc.b $00
[00098adc]                           dc.b $00
[00098add]                           dc.b $00
[00098ade]                           dc.b $00
[00098adf]                           dc.b $00
[00098ae0]                           dc.b $00
[00098ae1]                           dc.b $00
[00098ae2]                           dc.b $00
[00098ae3]                           dc.b $00
[00098ae4]                           dc.b $00
[00098ae5]                           dc.b $00
[00098ae6]                           dc.b $00
[00098ae7]                           dc.b $00
[00098ae8]                           dc.b $00
[00098ae9]                           dc.b $00
[00098aea]                           dc.b $00
[00098aeb]                           dc.b $00
[00098aec]                           dc.b $00
[00098aed]                           dc.b $00
[00098aee]                           dc.b $00
[00098aef]                           dc.b $00
[00098af0]                           dc.b $00
[00098af1]                           dc.b $00
[00098af2]                           dc.b $00
[00098af3]                           dc.b $00
[00098af4]                           dc.b $00
[00098af5]                           dc.b $00
[00098af6]                           dc.b $00
[00098af7]                           dc.b $00
[00098af8]                           dc.b $00
[00098af9]                           dc.b $00
[00098afa]                           dc.b $00
[00098afb]                           dc.b $00
[00098afc]                           dc.b $00
[00098afd]                           dc.b $00
[00098afe]                           dc.b $00
[00098aff]                           dc.b $00
[00098b00]                           dc.b $00
[00098b01]                           dc.b $00
[00098b02]                           dc.b $00
[00098b03]                           dc.b $00
[00098b04]                           dc.b $00
[00098b05]                           dc.b $00
[00098b06]                           dc.b $00
[00098b07]                           dc.b $00
[00098b08]                           dc.b $00
[00098b09]                           dc.b $00
[00098b0a]                           dc.b $00
[00098b0b]                           dc.b $01
[00098b0c]                           dc.b $00
[00098b0d]                           dc.b $00
[00098b0e]                           dc.b $00
[00098b0f]                           dc.b $00
[00098b10]                           dc.b $00
[00098b11]                           dc.b $00
[00098b12]                           dc.b $00
[00098b13]                           dc.b $00
[00098b14]                           dc.b $00
[00098b15]                           dc.b $00
[00098b16]                           dc.b $00
[00098b17]                           dc.b '%.28s'
[00098b1c]                           dc.w $0125
[00098b1e]                           dc.w $6401
[00098b20]                           dc.b $00
[00098b21]                           dc.b 'ACS(%02d)',0
[00098b2b]                           dc.b 'RSC',0
[00098b2f]                           dc.b $00

	.bss

err_jmp: ds.b 48
handle: ds.w 1
bpos: ds.l 1
bfill: ds.l 1
