
add_image:
[000332fa] 48e7 003c                 movem.l    a2-a5,-(a7)
[000332fe] 2448                      movea.l    a0,a2
[00033300] 2849                      movea.l    a1,a4
[00033302] 006a 0001 0006            ori.w      #$0001,6(a2)
[00033308] 266a 0030                 movea.l    48(a2),a3
[0003330c] 3039 0007 8250            move.w     refimages,d0
[00033312] 6728                      beq.s      add_image_1
[00033314] 7206                      moveq.l    #6,d1
[00033316] 2279 0010 1f12            movea.l    ACSblk,a1
[0003331c] c269 0266                 and.w      614(a1),d1
[00033320] 5d41                      subq.w     #6,d1
[00033322] 6718                      beq.s      add_image_1
[00033324] 43ec 0016                 lea.l      22(a4),a1
[00033328] 204b                      movea.l    a3,a0
[0003332a] 4eb9 0003 1a5c            jsr        find_entry
[00033330] b9c8                      cmpa.l     a0,a4
[00033332] 6608                      bne.s      add_image_1
[00033334] 526c 0036                 addq.w     #1,54(a4)
[00033338] 204c                      movea.l    a4,a0
[0003333a] 6044                      bra.s      add_image_2
add_image_1:
[0003333c] 7004                      moveq.l    #4,d0
[0003333e] 204b                      movea.l    a3,a0
[00033340] 4eb9 0001 62aa            jsr        objextent
[00033346] 4a40                      tst.w      d0
[00033348] 6610                      bne.s      add_image_3
[0003334a] 224c                      movea.l    a4,a1
[0003334c] 204a                      movea.l    a2,a0
[0003334e] 4eb9 0003 3386            jsr        copy_image
[00033354] 2a48                      movea.l    a0,a5
[00033356] 200d                      move.l     a5,d0
[00033358] 6604                      bne.s      add_image_4
add_image_3:
[0003335a] 91c8                      suba.l     a0,a0
[0003335c] 6022                      bra.s      add_image_2
add_image_4:
[0003335e] 2f39 000c 20c8            move.l     $000C20C8,-(a7)
[00033364] 486c 0016                 pea.l      22(a4)
[00033368] 224d                      movea.l    a5,a1
[0003336a] 204a                      movea.l    a2,a0
[0003336c] 4eb9 0001 6448            jsr        objname
[00033372] 504f                      addq.w     #8,a7
[00033374] 224d                      movea.l    a5,a1
[00033376] 204b                      movea.l    a3,a0
[00033378] 4eb9 0003 1a94            jsr        add_entry
[0003337e] 204d                      movea.l    a5,a0
add_image_2:
[00033380] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00033384] 4e75                      rts

copy_image:
[00033386] 2f0a                      move.l     a2,-(a7)
[00033388] 2f0b                      move.l     a3,-(a7)
[0003338a] 2648                      movea.l    a0,a3
[0003338c] 2449                      movea.l    a1,a2
[0003338e] 202a 000e                 move.l     14(a2),d0
[00033392] 4eb9 0001 6230            jsr        objmalloc
[00033398] 2648                      movea.l    a0,a3
[0003339a] 200b                      move.l     a3,d0
[0003339c] 6604                      bne.s      copy_image_1
[0003339e] 91c8                      suba.l     a0,a0
[000333a0] 601a                      bra.s      copy_image_2
copy_image_1:
[000333a2] 276a 000e 000e            move.l     14(a2),14(a3)
[000333a8] 202a 000e                 move.l     14(a2),d0
[000333ac] 226a 0004                 movea.l    4(a2),a1
[000333b0] 206b 0004                 movea.l    4(a3),a0
[000333b4] 4eb9 0007 6f44            jsr        memcpy
[000333ba] 204b                      movea.l    a3,a0
copy_image_2:
[000333bc] 265f                      movea.l    (a7)+,a3
[000333be] 245f                      movea.l    (a7)+,a2
[000333c0] 4e75                      rts

dup_image:
[000333c2] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[000333c6] 2648                      movea.l    a0,a3
[000333c8] 2449                      movea.l    a1,a2
[000333ca] 49f9 000c 20f0            lea.l      free_image,a4
[000333d0] 700e                      moveq.l    #14,d0
[000333d2] 224a                      movea.l    a2,a1
[000333d4] 41ec fff2                 lea.l      -14(a4),a0
[000333d8] 4eb9 0007 6f44            jsr        memcpy
[000333de] 362a 0004                 move.w     4(a2),d3
[000333e2] c7ea 0006                 muls.w     6(a2),d3
[000333e6] 48c3                      ext.l      d3
[000333e8] 2003                      move.l     d3,d0
[000333ea] d080                      add.l      d0,d0
[000333ec] d0bc 0000 000e            add.l      #$0000000E,d0
[000333f2] 2940 000a                 move.l     d0,10(a4)
[000333f6] 2940 000e                 move.l     d0,14(a4)
[000333fa] 224c                      movea.l    a4,a1
[000333fc] 204b                      movea.l    a3,a0
[000333fe] 6100 fefa                 bsr        add_image
[00033402] 2648                      movea.l    a0,a3
[00033404] 200b                      move.l     a3,d0
[00033406] 6604                      bne.s      dup_image_1
[00033408] 91c8                      suba.l     a0,a0
[0003340a] 6028                      bra.s      dup_image_2
dup_image_1:
[0003340c] 286b 0004                 movea.l    4(a3),a4
[00033410] 2003                      move.l     d3,d0
[00033412] 2252                      movea.l    (a2),a1
[00033414] 41ec 000e                 lea.l      14(a4),a0
[00033418] 4eb9 0007 6f44            jsr        memcpy
[0003341e] 2003                      move.l     d3,d0
[00033420] 2252                      movea.l    (a2),a1
[00033422] 41f4 380e                 lea.l      14(a4,d3.l),a0
[00033426] 4eb9 0007 6f44            jsr        memcpy
[0003342c] 28bc 0000 000e            move.l     #$0000000E,(a4)
[00033432] 204b                      movea.l    a3,a0
dup_image_2:
[00033434] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00033438] 4e75                      rts

del_image:
[0003343a] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003343e] 2448                      movea.l    a0,a2
[00033440] 2649                      movea.l    a1,a3
[00033442] 006a 0001 0006            ori.w      #$0001,6(a2)
[00033448] 536b 0036                 subq.w     #1,54(a3)
[0003344c] 302b 0036                 move.w     54(a3),d0
[00033450] 6e2a                      bgt.s      del_image_1
[00033452] 286b 0012                 movea.l    18(a3),a4
[00033456] 220c                      move.l     a4,d1
[00033458] 670c                      beq.s      del_image_2
[0003345a] 2a6c 0004                 movea.l    4(a4),a5
[0003345e] 204c                      movea.l    a4,a0
[00033460] 7002                      moveq.l    #2,d0
[00033462] 93c9                      suba.l     a1,a1
[00033464] 4e95                      jsr        (a5)
del_image_2:
[00033466] 224b                      movea.l    a3,a1
[00033468] 206a 0030                 movea.l    48(a2),a0
[0003346c] 4eb9 0003 1b00            jsr        del_entry
[00033472] 224b                      movea.l    a3,a1
[00033474] 204a                      movea.l    a2,a0
[00033476] 4eb9 0001 61d4            jsr        objfree
del_image_1:
[0003347c] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00033480] 4e75                      rts

new_work:
[00033482] 303c 2721                 move.w     #$2721,d0
[00033486] 2279 000a 5954            movea.l    $000A5954,a1
[0003348c] 4eb9 0003 24b6            jsr        work_icon
[00033492] 4e75                      rts

		.data

bitblk_obj:
[000c1fd8]                           dc.b $00
[000c1fd9]                           dc.b $00
[000c1fda]                           dc.b $00
[000c1fdb]                           dc.b $0e
[000c1fdc]                           dc.b $00
[000c1fdd]                           dc.b $06
[000c1fde]                           dc.b $00
[000c1fdf]                           dc.b $18
[000c1fe0]                           dc.b $00
[000c1fe1]                           dc.b $00
[000c1fe2]                           dc.b $00
[000c1fe3]                           dc.b $00
[000c1fe4]                           dc.b $00
[000c1fe5]                           dc.b $01
imagedata:
[000c1fe6]                           dc.w $07ff
[000c1fe8]                           dc.w $ffff
[000c1fea]                           dc.w $ff80
[000c1fec]                           dc.w $0c00
[000c1fee]                           dc.b $00
[000c1fef]                           dc.b $00
[000c1ff0]                           dc.b $00
[000c1ff1]                           dc.b $c0
[000c1ff2]                           dc.w $183f
[000c1ff4]                           dc.w $f03f
[000c1ff6]                           dc.w $f060
[000c1ff8]                           dc.w $187f
[000c1ffa]                           dc.w $f860
[000c1ffc]                           dc.w $1860
[000c1ffe]                           dc.w $187f
[000c2000]                           dc.w $f860
[000c2002]                           dc.w $1860
[000c2004]                           dc.w $187f
[000c2006]                           dc.w $f860
[000c2008]                           dc.w $1860
[000c200a]                           dc.w $187f
[000c200c]                           dc.w $f860
[000c200e]                           dc.w $1860
[000c2010]                           dc.w $187f
[000c2012]                           dc.w $f860
[000c2014]                           dc.w $1860
[000c2016]                           dc.w $187f
[000c2018]                           dc.w $f860
[000c201a]                           dc.w $1860
[000c201c]                           dc.w $187f
[000c201e]                           dc.w $f860
[000c2020]                           dc.w $1860
[000c2022]                           dc.w $187f
[000c2024]                           dc.w $f860
[000c2026]                           dc.w $1860
[000c2028]                           dc.w $187f
[000c202a]                           dc.w $f860
[000c202c]                           dc.w $1860
[000c202e]                           dc.w $187f
[000c2030]                           dc.w $f860
[000c2032]                           dc.w $1860
[000c2034]                           dc.w $187f
[000c2036]                           dc.w $f860
[000c2038]                           dc.w $1860
[000c203a]                           dc.w $183f
[000c203c]                           dc.w $f03f
[000c203e]                           dc.w $f060
[000c2040]                           dc.w $0c00
[000c2042]                           dc.b $00
[000c2043]                           dc.b $00
[000c2044]                           dc.b $00
[000c2045]                           dc.b $c0
[000c2046]                           dc.w $07ff
[000c2048]                           dc.w $ffff
[000c204a]                           dc.w $ff80
[000c204c]                           dc.b $00
[000c204d]                           dc.b $00
[000c204e]                           dc.b $00
[000c204f]                           dc.b $00
[000c2050]                           dc.b $00
[000c2051]                           dc.b $00
[000c2052]                           dc.w $3f30
[000c2054]                           dc.w $c787
[000c2056]                           dc.w $8fe0
[000c2058]                           dc.w $0c39
[000c205a]                           dc.w $cccc
[000c205c]                           dc.w $cc00
[000c205e]                           dc.w $0c36
[000c2060]                           dc.w $cfcc
[000c2062]                           dc.w $0f80
[000c2064]                           dc.w $0c30
[000c2066]                           dc.w $cccd
[000c2068]                           dc.w $cc00
[000c206a]                           dc.w $3f30
[000c206c]                           dc.w $ccc7
[000c206e]                           dc.w $cfe0
[000c2070]                           dc.b $00
[000c2071]                           dc.b $00
[000c2072]                           dc.b $00
[000c2073]                           dc.b $00
[000c2074]                           dc.b $00
[000c2075]                           dc.b $00
protoimage:
[000c2076]                           dc.b $00
[000c2077]                           dc.b $00
[000c2078]                           dc.b $00
[000c2079]                           dc.b $00
[000c207a] 000c1fd8                  dc.l bitblk_obj
[000c207e]                           dc.b $00
[000c207f]                           dc.b $00
[000c2080]                           dc.b $00
[000c2081]                           dc.b $00
[000c2082]                           dc.b $00
[000c2083]                           dc.b $9e
[000c2084]                           dc.b $00
[000c2085]                           dc.b $00
[000c2086]                           dc.b $00
[000c2087]                           dc.b $9e
[000c2088]                           dc.b $00
[000c2089]                           dc.b $00
[000c208a]                           dc.b $00
[000c208b]                           dc.b $00
[000c208c]                           dc.b 'IMAGE_01',0
[000c2095]                           dc.b $00
[000c2096]                           dc.b $00
[000c2097]                           dc.b $00
[000c2098]                           dc.b $00
[000c2099]                           dc.b $00
[000c209a]                           dc.b $00
[000c209b]                           dc.b $00
[000c209c]                           dc.b $00
[000c209d]                           dc.b $00
[000c209e]                           dc.b $00
[000c209f]                           dc.b $00
[000c20a0]                           dc.b $00
[000c20a1]                           dc.b $00
[000c20a2]                           dc.b $00
[000c20a3]                           dc.b $00
[000c20a4]                           dc.b $00
[000c20a5]                           dc.b $00
[000c20a6]                           dc.b $00
[000c20a7]                           dc.b $00
[000c20a8]                           dc.b $00
[000c20a9]                           dc.b $00
[000c20aa]                           dc.b $00
[000c20ab]                           dc.b $00
[000c20ac]                           dc.b $00
[000c20ad]                           dc.b $01
[000c20ae]                           dc.b $00
[000c20af]                           dc.b $00
[000c20b0]                           dc.b $00
[000c20b1]                           dc.b $00
[000c20b2]                           dc.b $00
[000c20b3]                           dc.b $00
[000c20b4]                           dc.b $00
[000c20b5]                           dc.b $00
[000c20b6]                           dc.b $00
[000c20b7]                           dc.b $00
list_image:
[000c20b8]                           dc.b $00
[000c20b9]                           dc.b $00
[000c20ba]                           dc.b $00
[000c20bb]                           dc.b $00
[000c20bc]                           dc.b $00
[000c20bd]                           dc.b $00
[000c20be]                           dc.b $00
[000c20bf]                           dc.b $00
[000c20c0] 000a58fa                  dc.l WI_IMAGE
[000c20c4] 000c0c0b                  dc.l im_list
[000c20c8] 000c0c1a                  dc.l im_name
[000c20cc]                           dc.w $2721
[000c20ce] 000c2076                  dc.l protoimage
[000c20d2] 00033386                  dc.l copy_image
[000c20d6] 0003343a                  dc.l del_image
[000c20da] 00033482                  dc.l new_work
[000c20de]                           dc.b $00
[000c20df]                           dc.b $00
[000c20e0]                           dc.b $00
[000c20e1]                           dc.b $00
my_image:
[000c20e2]                           dc.b $00
[000c20e3]                           dc.b $00
[000c20e4]                           dc.b $00
[000c20e5]                           dc.b $00
[000c20e6]                           dc.b $00
[000c20e7]                           dc.b $00
[000c20e8]                           dc.b $00
[000c20e9]                           dc.b $00
[000c20ea]                           dc.b $00
[000c20eb]                           dc.b $00
[000c20ec]                           dc.b $00
[000c20ed]                           dc.b $00
[000c20ee]                           dc.b $00
[000c20ef]                           dc.b $00
free_image:
[000c20f0]                           dc.b $00
[000c20f1]                           dc.b $00
[000c20f2]                           dc.b $00
[000c20f3]                           dc.b $00
[000c20f4] 000c20e2                  dc.l my_image
[000c20f8]                           dc.b $00
[000c20f9]                           dc.b $00
[000c20fa]                           dc.b $00
[000c20fb]                           dc.b $00
[000c20fc]                           dc.b $00
[000c20fd]                           dc.b $00
[000c20fe]                           dc.b $00
[000c20ff]                           dc.b $00
[000c2100]                           dc.b $00
[000c2101]                           dc.b $00
[000c2102]                           dc.b $00
[000c2103]                           dc.b $00
[000c2104]                           dc.b $00
[000c2105]                           dc.b $00
[000c2106]                           dc.b 'IMAGE_01',0
[000c210f]                           dc.b $00
[000c2110]                           dc.b $00
[000c2111]                           dc.b $00
[000c2112]                           dc.b $00
[000c2113]                           dc.b $00
[000c2114]                           dc.b $00
[000c2115]                           dc.b $00
[000c2116]                           dc.b $00
[000c2117]                           dc.b $00
[000c2118]                           dc.b $00
[000c2119]                           dc.b $00
[000c211a]                           dc.b $00
[000c211b]                           dc.b $00
[000c211c]                           dc.b $00
[000c211d]                           dc.b $00
[000c211e]                           dc.b $00
[000c211f]                           dc.b $00
[000c2120]                           dc.b $00
[000c2121]                           dc.b $00
[000c2122]                           dc.b $00
[000c2123]                           dc.b $00
[000c2124]                           dc.b $00
[000c2125]                           dc.b $00
[000c2126]                           dc.b $00
[000c2127]                           dc.b $01
[000c2128]                           dc.b $00
[000c2129]                           dc.b $00
[000c212a]                           dc.b $00
[000c212b]                           dc.b $00
[000c212c]                           dc.b $00
[000c212d]                           dc.b $00
[000c212e]                           dc.b $00
[000c212f]                           dc.b $00
[000c2130]                           dc.b $00
[000c2131]                           dc.b $00
