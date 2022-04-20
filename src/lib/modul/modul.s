
Ax_mterm:
[000630e2] 2f0a                      move.l     a2,-(a7)
[000630e4] 2f0b                      move.l     a3,-(a7)
[000630e6] 2648                      movea.l    a0,a3
[000630e8] 45f9 000d 6364            lea.l      oldbas,a2
[000630ee] 2012                      move.l     (a2),d0
[000630f0] 6730                      beq.s      Ax_mterm_1
[000630f2] 2079 0010 1f12            movea.l    ACSblk,a0
[000630f8] 3228 0236                 move.w     566(a0),d1
[000630fc] 6606                      bne.s      Ax_mterm_2
[000630fe] 3428 0238                 move.w     568(a0),d2
[00063102] 670a                      beq.s      Ax_mterm_3
Ax_mterm_2:
[00063104] 2052                      movea.l    (a2),a0
[00063106] 4eb9 0007 2acc            jsr        Mfree
[0006310c] 6014                      bra.s      Ax_mterm_1
Ax_mterm_3:
[0006310e] 4eb9 0004 1ab2            jsr        accgemdos
[00063114] 2052                      movea.l    (a2),a0
[00063116] 4eb9 0007 2acc            jsr        Mfree
[0006311c] 4eb9 0004 1aca            jsr        oldgemdos
Ax_mterm_1:
[00063122] 248b                      move.l     a3,(a2)
[00063124] 265f                      movea.l    (a7)+,a3
[00063126] 245f                      movea.l    (a7)+,a2
[00063128] 4e75                      rts

Ash_module:
[0006312a] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0006312e] 2648                      movea.l    a0,a3
[00063130] 45f9 0010 1f12            lea.l      ACSblk,a2
[00063136] 2052                      movea.l    (a2),a0
[00063138] 3028 0236                 move.w     566(a0),d0
[0006313c] 660a                      bne.s      Ash_module_1
[0006313e] 3228 0238                 move.w     568(a0),d1
[00063142] 6604                      bne.s      Ash_module_1
[00063144] 7601                      moveq.l    #1,d3
[00063146] 6002                      bra.s      Ash_module_2
Ash_module_1:
[00063148] 4243                      clr.w      d3
Ash_module_2:
[0006314a] 4a43                      tst.w      d3
[0006314c] 6706                      beq.s      Ash_module_3
[0006314e] 4eb9 0004 1ab2            jsr        accgemdos
Ash_module_3:
[00063154] 4bf9 000d 6368            lea.l      nix,a5
[0006315a] 4855                      pea.l      (a5)
[0006315c] 224d                      movea.l    a5,a1
[0006315e] 204b                      movea.l    a3,a0
[00063160] 7003                      moveq.l    #3,d0
[00063162] 4eb9 0007 2b16            jsr        Pexec
[00063168] 584f                      addq.w     #4,a7
[0006316a] 2a40                      movea.l    d0,a5
[0006316c] 49ed 0100                 lea.l      256(a5),a4
[00063170] 4a80                      tst.l      d0
[00063172] 6b00 00d4                 bmi        Ash_module_4
[00063176] b0bc 0000 ffff            cmp.l      #$0000FFFF,d0
[0006317c] 6700 00ca                 beq        Ash_module_4
[00063180] 222d 000c                 move.l     12(a5),d1
[00063184] d2ad 0014                 add.l      20(a5),d1
[00063188] d2ad 001c                 add.l      28(a5),d1
[0006318c] d2bc 0000 0400            add.l      #$00000400,d1
[00063192] 204d                      movea.l    a5,a0
[00063194] 4240                      clr.w      d0
[00063196] 4eb9 0007 2adc            jsr        Mshrink
[0006319c] 4a40                      tst.w      d0
[0006319e] 670c                      beq.s      Ash_module_5
[000631a0] 204b                      movea.l    a3,a0
[000631a2] 700f                      moveq.l    #15,d0
[000631a4] 2252                      movea.l    (a2),a1
[000631a6] 2269 03d6                 movea.l    982(a1),a1
[000631aa] 4e91                      jsr        (a1)
Ash_module_5:
[000631ac] 0c94 4143 5336            cmpi.l     #$41435336,(a4)
[000631b2] 6d0c                      blt.s      Ash_module_6
[000631b4] 0c94 4143 5337            cmpi.l     #$41435337,(a4)
[000631ba] 6e04                      bgt.s      Ash_module_6
[000631bc] 7801                      moveq.l    #1,d4
[000631be] 6024                      bra.s      Ash_module_7
Ash_module_6:
[000631c0] 0c94 4143 5330            cmpi.l     #$41435330,(a4)
[000631c6] 6d08                      blt.s      Ash_module_8
[000631c8] 0c94 4143 5338            cmpi.l     #$41435338,(a4)
[000631ce] 6f24                      ble.s      Ash_module_9
Ash_module_8:
[000631d0] 0c94 4267 4e41            cmpi.l     #$42674E41,(a4)
[000631d6] 661c                      bne.s      Ash_module_9
[000631d8] 0cac 4143 5339 0004       cmpi.l     #$41435339,4(a4)
[000631e0] 6612                      bne.s      Ash_module_9
[000631e2] 4244                      clr.w      d4
Ash_module_7:
[000631e4] 4a44                      tst.w      d4
[000631e6] 662c                      bne.s      Ash_module_10
[000631e8] 204c                      movea.l    a4,a0
[000631ea] 4eb9 0006 32b2            jsr        PushFuncLists
[000631f0] 4a40                      tst.w      d0
[000631f2] 6620                      bne.s      Ash_module_10
Ash_module_9:
[000631f4] 204d                      movea.l    a5,a0
[000631f6] 4eb9 0007 2acc            jsr        Mfree
[000631fc] 4a43                      tst.w      d3
[000631fe] 6706                      beq.s      Ash_module_11
[00063200] 4eb9 0004 1aca            jsr        oldgemdos
Ash_module_11:
[00063206] 204b                      movea.l    a3,a0
[00063208] 700e                      moveq.l    #14,d0
[0006320a] 2252                      movea.l    (a2),a1
[0006320c] 2269 03d6                 movea.l    982(a1),a1
[00063210] 4e91                      jsr        (a1)
[00063212] 604a                      bra.s      Ash_module_12
Ash_module_10:
[00063214] 4a43                      tst.w      d3
[00063216] 6706                      beq.s      Ash_module_13
[00063218] 4eb9 0004 1aca            jsr        oldgemdos
Ash_module_13:
[0006321e] 4a44                      tst.w      d4
[00063220] 6640                      bne.s      Ash_module_14
[00063222] 42a7                      clr.l      -(a7)
[00063224] 224d                      movea.l    a5,a1
[00063226] 91c8                      suba.l     a0,a0
[00063228] 7004                      moveq.l    #4,d0
[0006322a] 4eb9 0007 2b16            jsr        Pexec
[00063230] 584f                      addq.w     #4,a7
[00063232] 4a80                      tst.l      d0
[00063234] 672c                      beq.s      Ash_module_14
[00063236] 4a43                      tst.w      d3
[00063238] 6706                      beq.s      Ash_module_15
[0006323a] 4eb9 0004 1ab2            jsr        accgemdos
Ash_module_15:
[00063240] 204d                      movea.l    a5,a0
[00063242] 4eb9 0007 2acc            jsr        Mfree
Ash_module_4:
[00063248] 4a43                      tst.w      d3
[0006324a] 6706                      beq.s      Ash_module_16
[0006324c] 4eb9 0004 1aca            jsr        oldgemdos
Ash_module_16:
[00063252] 204b                      movea.l    a3,a0
[00063254] 700d                      moveq.l    #13,d0
[00063256] 2252                      movea.l    (a2),a1
[00063258] 2269 03d6                 movea.l    982(a1),a1
[0006325c] 4e91                      jsr        (a1)
Ash_module_12:
[0006325e] 70ff                      moveq.l    #-1,d0
[00063260] 604a                      bra.s      Ash_module_17
Ash_module_14:
[00063262] 4a44                      tst.w      d4
[00063264] 6734                      beq.s      Ash_module_18
[00063266] 0c94 4143 5336            cmpi.l     #$41435336,(a4)
[0006326c] 6d3c                      blt.s      Ash_module_19
[0006326e] 0c94 4143 5337            cmpi.l     #$41435337,(a4)
[00063274] 6e34                      bgt.s      Ash_module_19
[00063276] 2a6c 0004                 movea.l    4(a4),a5
[0006327a] 2952 0008                 move.l     (a2),8(a4)
[0006327e] 0c94 4143 5336            cmpi.l     #$41435336,(a4)
[00063284] 6608                      bne.s      Ash_module_20
[00063286] 41f9 000d 7718            lea.l      ACS230,a0
[0006328c] 6006                      bra.s      Ash_module_21
Ash_module_20:
[0006328e] 41f9 000d 73ec            lea.l      ACS233,a0
Ash_module_21:
[00063294] 2948 000c                 move.l     a0,12(a4)
[00063298] 6010                      bra.s      Ash_module_19
Ash_module_18:
[0006329a] 2a6c 0008                 movea.l    8(a4),a5
[0006329e] 2952 000c                 move.l     (a2),12(a4)
[000632a2] 2979 000d 99d6 0010       move.l     _globl,16(a4)
Ash_module_19:
[000632aa] 4e95                      jsr        (a5)
Ash_module_17:
[000632ac] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[000632b0] 4e75                      rts

PushFuncLists:
[000632b2] 48e7 0038                 movem.l    a2-a4,-(a7)
[000632b6] 43e8 0018                 lea.l      24(a0),a1
[000632ba] 45f9 000d 7320            lea.l      funcs,a2
[000632c0] 47f9 000d 73e8            lea.l      funcsAnz,a3
[000632c6] 2228 0014                 move.l     20(a0),d1
[000632ca] b293                      cmp.l      (a3),d1
[000632cc] 662c                      bne.s      PushFuncLists_1
[000632ce] 4240                      clr.w      d0
[000632d0] 6032                      bra.s      PushFuncLists_2
PushFuncLists_9:
[000632d2] 3229 0004                 move.w     4(a1),d1
[000632d6] 4291                      clr.l      (a1)
[000632d8] 4242                      clr.w      d2
[000632da] 2052                      movea.l    (a2),a0
[000632dc] 600c                      bra.s      PushFuncLists_3
PushFuncLists_6:
[000632de] b268 0004                 cmp.w      4(a0),d1
[000632e2] 6602                      bne.s      PushFuncLists_4
[000632e4] 2290                      move.l     (a0),(a1)
PushFuncLists_4:
[000632e6] 5242                      addq.w     #1,d2
[000632e8] 5c48                      addq.w     #6,a0
PushFuncLists_3:
[000632ea] 4a91                      tst.l      (a1)
[000632ec] 6608                      bne.s      PushFuncLists_5
[000632ee] 286a 0004                 movea.l    4(a2),a4
[000632f2] b454                      cmp.w      (a4),d2
[000632f4] 6de8                      blt.s      PushFuncLists_6
PushFuncLists_5:
[000632f6] 2211                      move.l     (a1),d1
[000632f8] 6604                      bne.s      PushFuncLists_7
PushFuncLists_1:
[000632fa] 4240                      clr.w      d0
[000632fc] 6010                      bra.s      PushFuncLists_8
PushFuncLists_7:
[000632fe] 5240                      addq.w     #1,d0
[00063300] 5c49                      addq.w     #6,a1
[00063302] 504a                      addq.w     #8,a2
PushFuncLists_2:
[00063304] 3200                      move.w     d0,d1
[00063306] 48c1                      ext.l      d1
[00063308] b293                      cmp.l      (a3),d1
[0006330a] 6dc6                      blt.s      PushFuncLists_9
[0006330c] 7001                      moveq.l    #1,d0
PushFuncLists_8:
[0006330e] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00063312] 4e75                      rts

		.data

xd632c:
[000d632c]                           dc.b $00
[000d632d]                           dc.b $00
[000d632e]                           dc.b $00
[000d632f]                           dc.b $00
[000d6330] 00047e26                  dc.l Ax_free
[000d6334] 00062f20                  dc.l x62f20
[000d6338] 00062f4c                  dc.l x62f4c
[000d633c] 00062f74                  dc.l x62f74
[000d6340] 00062f80                  dc.l x62f80
[000d6344] 00062ef2                  dc.l x62ef2
xd6348:
[000d6348]                           dc.b $00
[000d6349]                           dc.b $00
[000d634a]                           dc.b $00
[000d634b]                           dc.b $00
[000d634c] 00047e26                  dc.l Ax_free
[000d6350] 00063030                  dc.l x63030
[000d6354] 00063066                  dc.l x63066
[000d6358] 000630be                  dc.l x630be
[000d635c] 000630cc                  dc.l x630cc
[000d6360] 00063002                  dc.l x63002
oldbas:
[000d6364]                           dc.b $00
[000d6365]                           dc.b $00
[000d6366]                           dc.b $00
[000d6367]                           dc.b $00
nix:
[000d6368]                           dc.b $00
[000d6369]                           dc.b $00
[000d636a]                           dc.b $00
[000d636b]                           dc.b $00
func1Abp:
[000d636c] 0004d928                  dc.l Abp_create
[000d6370] 0004d996                  dc.l Abp_delete
[000d6374] 0004d9a2                  dc.l Abp_start
[000d6378] 0004da54                  dc.l Abp_end
[000d637c] 0004dae4                  dc.l Abp_mfdb2img
[000d6380] 0004dedc                  dc.l Abp_img2mfdb
funcAbp:
[000d6384] 000d636c                  dc.l func1Abp
[000d6388]                           dc.b $00
[000d6389]                           dc.b $00
funcAnzAbp:
[000d638a]                           dc.b $00
[000d638b]                           dc.b $01
func1Acfg:
[000d638c] 0004204e                  dc.l Acfg_create
[000d6390] 000420a0                  dc.l Acfg_delete
[000d6394] 0004225c                  dc.l Acfg_clear
[000d6398] 00042278                  dc.l Acfg_clearAllGroups
[000d639c] 0004233c                  dc.l Acfg_clearGroup
[000d63a0] 0004266e                  dc.l Acfg_load
[000d63a4] 00042960                  dc.l Acfg_save
[000d63a8] 00042fcc                  dc.l Acfg_grpName
[000d63ac] 00042ae8                  dc.l Acfg_getValue
[000d63b0] 00042bf4                  dc.l Acfg_setValue
[000d63b4] 00042d52                  dc.l Acfg_clearValue
[000d63b8] 00042f1c                  dc.l Acfg_getBool
[000d63bc] 00042f34                  dc.l Acfg_setBool
[000d63c0] 00042dec                  dc.l Acfg_getLong
[000d63c4] 00042e08                  dc.l Acfg_setLong
[000d63c8] 00042dda                  dc.l Acfg_getString
[000d63cc] 00042f4e                  dc.l Acfg_isChanged
[000d63d0] 00042f88                  dc.l Acfg_grpAnzahl
[000d63d4] 00043200                  dc.l x43200
[000d63d8] 0004323e                  dc.l Acfg_headAnzahl
[000d63dc] 00043244                  dc.l Acfg_setHeader
[000d63e0] 000432b4                  dc.l Acfg_getHeader
[000d63e4] 00042fd2                  dc.l Acfg_strAnzahl
[000d63e8] 00042fd8                  dc.l Acfg_isGroupPresent
[000d63ec] 0004300a                  dc.l Acfg_isStringPresent
[000d63f0] 0004309a                  dc.l Acfg_strIsComment
[000d63f4] 0004310e                  dc.l Acfg_clearHeader
[000d63f8] 00043198                  dc.l x43198
[000d63fc] 000432f4                  dc.l Acfg_isCfgfile
[000d6400] 00042110                  dc.l Acfg_createInfo
[000d6404] 00042144                  dc.l Acfg_deleteInfo
[000d6408] 00042238                  dc.l Acfg_setInfo
[000d640c] 0004224c                  dc.l Acfg_getInfo
[000d6410] 000421e2                  dc.l Acfg_copyInfo
[000d6414] 000420d6                  dc.l Acfg_flags
[000d6418] 0004302c                  dc.l Acfg_strName
[000d641c] 00043062                  dc.l Acfg_strValue
[000d6420] 00042e50                  dc.l Acfg_getChar
[000d6424] 00042e80                  dc.l Acfg_setChar
funcAcfg:
[000d6428] 000d638c                  dc.l func1Acfg
[000d642c]                           dc.b $00
[000d642d]                           dc.b $00
funcAnzAcfg:
[000d642e]                           dc.b $00
[000d642f]                           dc.b $01
func1Ach:
[000d6430] 00043736                  dc.l Ach_tolower
[000d6434] 0004372c                  dc.l Ach_toupper
[000d6438] 00043a74                  dc.l Ach_isWhite
funcAch:
[000d643c] 000d6430                  dc.l func1Ach
[000d6440]                           dc.b $00
[000d6441]                           dc.b $00
funcAnzAch:
[000d6442]                           dc.b $00
[000d6443]                           dc.b $01
func1Adr:
[000d6444] 00044cd6                  dc.l Adr_box
[000d6448] 0004557a                  dc.l Adr_drag
[000d644c] 0004484c                  dc.l Adr_next
[000d6450] 0004487c                  dc.l Adr_add
[000d6454] 0004492a                  dc.l Adr_del
[000d6458] 00044a26                  dc.l Adr_unselect
[000d645c] 00044840                  dc.l Adr_start
funcAdr:
[000d6460] 000d6444                  dc.l func1Adr
[000d6464]                           dc.b $00
[000d6465]                           dc.b $00
funcAnzAdr:
[000d6466]                           dc.b $00
[000d6467]                           dc.b $01
func1Aev:
[000d6468] 0004640a                  dc.l Aev_quit
[000d646c] 0004ad60                  dc.l Aev_release
[000d6470] 00046d70                  dc.l Aev_mess
[000d6474] 000463f4                  dc.l Aev_unhidepointer
[000d6478] 000568ea                  dc.l Aev_DhstAdd
[000d647c] 00056a66                  dc.l Aev_DhstSaved
[000d6480] 00055058                  dc.l Aev_WmRedraw
funcAev:
[000d6484] 000d6468                  dc.l func1Aev
[000d6488]                           dc.b $00
[000d6489]                           dc.b $00
funcAnzAev:
[000d648a]                           dc.b $00
[000d648b]                           dc.b $01
func1Af:
[000d648c] 00047066                  dc.l Af_cfgfile
[000d6490] 0005ff74                  dc.l Af_select
[000d6494] 000470f8                  dc.l Af_2drv
[000d6498] 0004712c                  dc.l Af_2path
[000d649c] 000471de                  dc.l Af_2name
[000d64a0] 00047246                  dc.l Af_2fullname
[000d64a4] 00047286                  dc.l Af_2ext
[000d64a8] 000472d6                  dc.l Af_buildname
[000d64ac] 000473bc                  dc.l Af_length
[000d64b0] 000601ea                  dc.l Af_first_fsel
[000d64b4] 0006036a                  dc.l Af_next_fsel
[000d64b8] 0004798a                  dc.l Af_first
[000d64bc] 000479c8                  dc.l Af_next
[000d64c0] 00047896                  dc.l Af_readdir
[000d64c4] 0004795e                  dc.l Af_freedir
[000d64c8] 000608a6                  dc.l Af_fileselect
[000d64cc] 00047a1e                  dc.l Af_quote
[000d64d0] 00047aaa                  dc.l Af_unquote
funcAf:
[000d64d4] 000d648c                  dc.l func1Af
[000d64d8]                           dc.b $00
[000d64d9]                           dc.b $00
funcAnzAf:
[000d64da]                           dc.b $00
[000d64db]                           dc.b $01
func1Aic:
[000d64dc] 00049e38                  dc.l Aic_create
[000d64e0] 0004a094                  dc.l Aic_delete
funcAic:
[000d64e4] 000d64dc                  dc.l func1Aic
[000d64e8]                           dc.b $00
[000d64e9]                           dc.b $00
funcAnzAic:
[000d64ea]                           dc.b $00
[000d64eb]                           dc.b $01
func1Aim:
[000d64ec] 0004a110                  dc.l Aim_create
[000d64f0] 0004a13c                  dc.l Aim_delete
funcAim:
[000d64f4] 000d64ec                  dc.l func1Aim
[000d64f8]                           dc.b $00
[000d64f9]                           dc.b $00
funcAnzAim:
[000d64fa]                           dc.b $00
[000d64fb]                           dc.b $01
func1Alu:
[000d64fc] 00062a5e                  dc.l Alu_create
[000d6500] 00062aa6                  dc.l Alu_delete
[000d6504] 00062eaa                  dc.l x62eaa
[000d6508] 00062ed6                  dc.l x62ed6
[000d650c] 00062f90                  dc.l x62f90
[000d6510] 00062fde                  dc.l x62fde
funcAlu:
[000d6514] 000d64fc                  dc.l func1Alu
[000d6518]                           dc.b $00
[000d6519]                           dc.b $00
funcAnzAlu:
[000d651a]                           dc.b $00
[000d651b]                           dc.b $01
func1Ame:
[000d651c] 0004975e                  dc.l Ame_namefix
[000d6520] 0004948a                  dc.l Ame_popup
funcAme:
[000d6524] 000d651c                  dc.l func1Ame
[000d6528]                           dc.b $00
[000d6529]                           dc.b $00
funcAnzAme:
[000d652a]                           dc.b $00
[000d652b]                           dc.b $01
func1Amo:
[000d652c] 00049898                  dc.l Amo_new
[000d6530] 00049902                  dc.l Amo_busy
[000d6534] 00049940                  dc.l Amo_unbusy
[000d6538] 00049970                  dc.l Amo_hide
[000d653c] 00049994                  dc.l Amo_show
funcAmo:
[000d6540] 000d652c                  dc.l func1Amo
[000d6544]                           dc.b $00
[000d6545]                           dc.b $00
funcAnzAmo:
[000d6546]                           dc.b $00
[000d6547]                           dc.b $01
func1Aob:
[000d6548] 00049a5c                  dc.l Aob_create
[000d654c] 00049b7c                  dc.l Aob_delete
[000d6550] 0004a25e                  dc.l Aob_fix
[000d6554] 0004a3be                  dc.l Aob_offset
[000d6558] 0004a548                  dc.l Aob_save
[000d655c] 0004a64c                  dc.l Aob_restore
[000d6560] 0004ab5e                  dc.l Aob_watch
[000d6564] 0004aeca                  dc.l Aob_findflag
[000d6568] 0004a904                  dc.l Aob_alias
[000d656c] 0004af6c                  dc.l Aob_up
[000d6570] 0004a34e                  dc.l Aob_icon
[000d6574] 0004afe0                  dc.l Aob_puttext
[000d6578] 0004b154                  dc.l Aob_gettext
[000d657c] 0005ef64                  dc.l Aob_within
[000d6580] 0004afac                  dc.l Aob_printf
[000d6584] 0004b0b2                  dc.l Aob_scanf
[000d6588] 0004d65e                  dc.l Aob_flags
[000d658c] 0004d6e2                  dc.l Aob_state
[000d6590] 0004d76a                  dc.l Aob_service
[000d6594] 0004d844                  dc.l Aob_visible
[000d6598] 00049c40                  dc.l Aob_count
funcAob:
[000d659c] 000d6548                  dc.l func1Aob
[000d65a0]                           dc.b $00
[000d65a1]                           dc.b $00
funcAnzAob:
[000d65a2]                           dc.b $00
[000d65a3]                           dc.b $01
func1Ascrp:
[000d65a4] 0005faca                  dc.l Ascrp_clear
[000d65a8] 0005fbba                  dc.l Ascrp_get
[000d65ac] 0005fd30                  dc.l Ascrp_put
funcAscrp:
[000d65b0] 000d65a4                  dc.l func1Ascrp
[000d65b4]                           dc.b $00
[000d65b5]                           dc.b $00
funcAnzAscrp:
[000d65b6]                           dc.b $00
[000d65b7]                           dc.b $01
func1Ash:
[000d65b8] 0004e614                  dc.l Ash_prog
[000d65bc] 000526c2                  dc.l Ash_error
[000d65c0] 00072bf4                  dc.l Ash_getcookie
[000d65c4] 00052908                  dc.l Ash_getenv
[000d65c8] 00054250                  dc.l Ash_nextdd
[000d65cc] 00054186                  dc.l Ash_sendall
[000d65d0] 0006373a                  dc.l Ash_CallEdDI
[000d65d4] 000636d4                  dc.l Ash_NVDICookie
[000d65d8] 00063708                  dc.l Ash_NVDIVersion
[000d65dc] 00063720                  dc.l Ash_NVDIDatum
[000d65e0] 00052950                  dc.l Ash_thermometer
[000d65e4] 00060404                  dc.l Ash_fileselect
[000d65e8] 00061eae                  dc.l Ash_font
[000d65ec] 00061390                  dc.l Ash_print
[000d65f0] 00072c9c                  dc.l Ash_gettimer
[000d65f4] 00061360                  dc.l Ash_printSetIcon
[000d65f8] 00061e7e                  dc.l Ash_fontSetIcon
[000d65fc] 000603d4                  dc.l Ash_fileSetIcon
[000d6600] 00072cf0                  dc.l Ash_getOSHeader
[000d6604] 00072cfe                  dc.l Ash_getMagiC
[000d6608] 00072d2a                  dc.l Ash_getNAES
[000d660c] 00072d56                  dc.l Ash_getMagiCVersion
[000d6610] 00072d74                  dc.l Ash_getMagiCAESVars
funcAsh:
[000d6614] 000d65b8                  dc.l func1Ash
[000d6618]                           dc.b $00
[000d6619]                           dc.b $00
funcAnzAsh:
[000d661a]                           dc.b $00
[000d661b]                           dc.b $01
func1Ast:
[000d661c] 000436d6                  dc.l Ast_create
[000d6620] 0004371c                  dc.l Ast_delete
[000d6624] 00043772                  dc.l Ast_tolower
[000d6628] 00043740                  dc.l Ast_toupper
[000d662c] 000437a4                  dc.l Ast_ltrim
[000d6630] 000437e8                  dc.l Ast_rtrim
[000d6634] 0004383a                  dc.l Ast_alltrim
[000d6638] 00043856                  dc.l Ast_cmp
[000d663c] 000438ac                  dc.l Ast_icmp
[000d6640] 00043a92                  dc.l Ast_isEmpty
[000d6644] 00043ac8                  dc.l Ast_add
[000d6648] 00043b5e                  dc.l Ast_adl
[000d664c] 00043b96                  dc.l Ast_adr
[000d6650] 00043bde                  dc.l Ast_adc
[000d6654] 00043c24                  dc.l Ast_filter
[000d6658] 00043c98                  dc.l Ast_count
[000d665c] 00043d6e                  dc.l Ast_fcmp
[000d6660] 00043918                  dc.l Ast_ncmp
[000d6664] 00043980                  dc.l Ast_incmp
[000d6668] 000439fe                  dc.l Ast_istr
funcAst:
[000d666c] 000d661c                  dc.l func1Ast
[000d6670]                           dc.b $00
[000d6671]                           dc.b $00
funcAnzAst:
[000d6672]                           dc.b $00
[000d6673]                           dc.b $01
func1Ate:
[000d6674] 0004a146                  dc.l Ate_create
[000d6678] 0004a1be                  dc.l Ate_delete
funcAte:
[000d667c] 000d6674                  dc.l func1Ate
[000d6680]                           dc.b $00
[000d6681]                           dc.b $00
funcAnzAte:
[000d6682]                           dc.b $00
[000d6683]                           dc.b $01
func1Auo:
[000d6684] 0005bae4                  dc.l Auo_ftext
[000d6688] 00059318                  dc.l Auo_string
[000d668c] 0005c2fa                  dc.l Auo_cycle
[000d6690] 0005cf28                  dc.l Auo_picture
[000d6694] 0005e010                  dc.l Auo_boxed
funcAuo:
[000d6698] 000d6684                  dc.l func1Auo
[000d669c]                           dc.b $00
[000d669d]                           dc.b $00
funcAnzAuo:
[000d669e]                           dc.b $00
[000d669f]                           dc.b $01
func1Aus:
[000d66a0] 0004a1f0                  dc.l Aus_create
[000d66a4] 0004a238                  dc.l Aus_delete
[000d66a8] 0005dc3a                  dc.l Aus_boxed
[000d66ac] 0005c8b6                  dc.l Aus_cycle
funcAus:
[000d66b0] 000d66a0                  dc.l func1Aus
[000d66b4]                           dc.b $00
[000d66b5]                           dc.b $00
funcAnzAus:
[000d66b6]                           dc.b $00
[000d66b7]                           dc.b $01
func1Awi:
[000d66b8] 0004e5ea                  dc.l Awi_wid
[000d66bc] 0004e608                  dc.l Awi_root
[000d66c0] 0004ef2a                  dc.l Awi_list
[000d66c4] 0004ef62                  dc.l Awi_sendall
[000d66c8] 0004f068                  dc.l Awi_down
[000d66cc] 0004f006                  dc.l Awi_up
[000d66d0] 0004f0ca                  dc.l Awi_show
[000d66d4] 0004e610                  dc.l Awi_init
[000d66d8] 0004f41a                  dc.l Awi_create
[000d66dc] 0004f69e                  dc.l Awi_open
[000d66e0] 0005013e                  dc.l Awi_closed
[000d66e4] 00050330                  dc.l Awi_delete
[000d66e8] 00050454                  dc.l Awi_topped
[000d66ec] 00050496                  dc.l Awi_fulled
[000d66f0] 000506ca                  dc.l Awi_sized
[000d66f4] 000507bc                  dc.l Awi_moved
[000d66f8] 0004b286                  dc.l Awi_diaend
[000d66fc] 0004b33c                  dc.l Awi_diastart
[000d6700] 0005ef2c                  dc.l Awi_keys
[000d6704] 0004c19e                  dc.l Awi_obview
[000d6708] 00051276                  dc.l Awi_service
[000d670c] 0004d468                  dc.l Awi_scroll
[000d6710] 0004b600                  dc.l Awi_obchange
[000d6714] 0004b846                  dc.l Awi_obredraw
[000d6718] 0004b8cc                  dc.l Awi_redraw
[000d671c] 0004bcc8                  dc.l Awi_arrowed
[000d6720] 0004beea                  dc.l Awi_hslid
[000d6724] 0004bf56                  dc.l Awi_vslid
[000d6728] 00050f9c                  dc.l Awi_iconify
[000d672c] 0005117c                  dc.l Awi_uniconify
[000d6730] 00052328                  dc.l Awi_gemscript
[000d6734] 0004fbf8                  dc.l Awi_modal
[000d6738] 00051292                  dc.l Awi_dialog
[000d673c] 000517fe                  dc.l Awi_alert
[000d6740] 0004f0ee                  dc.l Awi_selfcreate
[000d6744] 0005ef42                  dc.l Awi_nokey
[000d6748] 00051e1c                  dc.l Awi_update
[000d674c] 0004b5cc                  dc.l Awi_uoself
[000d6750] 00051612                  dc.l Awi_doform
[000d6754] 0004d7f0                  dc.l Awi_observice
[000d6758] 0004e46a                  dc.l Awi_ontop
[000d675c] 0004f340                  dc.l Awi_layout
[000d6760] 0004d884                  dc.l Awi_obvisible
funcAwi:
[000d6764] 000d66b8                  dc.l func1Awi
[000d6768]                           dc.b $00
[000d6769]                           dc.b $00
funcAnzAwi:
[000d676a]                           dc.b $00
[000d676b]                           dc.b $01
func1A:
[000d676c] 0005f8ee                  dc.l A_dialog
[000d6770] 000593fc                  dc.l A_checkbox
[000d6774] 000593ea                  dc.l A_radiobutton
[000d6778] 00059f9c                  dc.l A_innerframe
[000d677c] 0005b032                  dc.l A_pattern
[000d6780] 0005b212                  dc.l A_arrows
[000d6784] 0005b5a0                  dc.l A_select
[000d6788] 0005b6f4                  dc.l A_ftext
[000d678c] 0005ad8e                  dc.l A_title
[000d6790] 0005a4e2                  dc.l A_3Dbutton
[000d6794] 0005bd1e                  dc.l A_cycle
[000d6798] 0005ca2a                  dc.l A_picture
[000d679c] 0005f8f6                  dc.l A_dialog2
[000d67a0] 0005e9d2                  dc.l A_boxed
funcA:
[000d67a4] 000d676c                  dc.l func1A
[000d67a8]                           dc.b $00
[000d67a9]                           dc.b $00
funcAnzA:
[000d67aa]                           dc.b $00
[000d67ab]                           dc.b $01
func1Sonst:
[000d67ac] 00047cc8                  dc.l Ax_malloc
[000d67b0] 00047e26                  dc.l Ax_free
[000d67b4] 00047d6c                  dc.l Ax_ifree
[000d67b8] 00047f44                  dc.l Ax_glmalloc
[000d67bc] 00047fa6                  dc.l Ax_glfree
[000d67c0] 000630e2                  dc.l Ax_mterm
[000d67c4] 0005ef8c                  dc.l alert_str
[000d67c8] 0005f94a                  dc.l intersect
[000d67cc] 0005f9ce                  dc.l xywh2array
[000d67d0] 0005f9ec                  dc.l array2xywh
[000d67d4] 00044242                  dc.l dotted_xline
[000d67d8] 000442e2                  dc.l dotted_yline
[000d67dc] 00041b4e                  dc.l nkc_tos2
[000d67e0] 00041cc2                  dc.l nkc_n2to
[000d67e4] 00041e70                  dc.l nkc_gem2n
[000d67e8] 00041ec2                  dc.l nkc_n2gem
[000d67ec] 00041e3e                  dc.l nkc_gemks2n
[000d67f0] 00041e84                  dc.l nkc_n2gemks
[000d67f4] 00041ede                  dc.l nkc_n2kstate
[000d67f8] 00041ef0                  dc.l nkc_kstate
[000d67fc] 00041f24                  dc.l nkc_cmp
[000d6800] 00041e2e                  dc.l nkc_tolower
[000d6804] 00041e1e                  dc.l nkc_toupper
[000d6808] 0007067e                  dc.l appl_getinfo
[000d680c] 0004831a                  dc.l Ax_setRecycleSize
[000d6810] 000483cc                  dc.l Ax_getRecycleStat
[000d6814] 00048140                  dc.l Ax_recycle
[000d6818] 000419b4                  dc.l Avdi_getRGB
[000d681c] 00047ff8                  dc.l Ax_memCheck
funcSonst:
[000d6820] 000d67ac                  dc.l func1Sonst
[000d6824]                           dc.b $00
[000d6825]                           dc.b $00
funcAnzSonst:
[000d6826]                           dc.b $00
[000d6827]                           dc.b $01
func1Vdi:
[000d6828] 00063686                  dc.l vdi
[000d682c] 00063670                  dc.l vdi_
[000d6830] 000637ec                  dc.l v_opnwk
[000d6834] 00063bb0                  dc.l v_clswk
[000d6838] 00063bfa                  dc.l v_opnvwk
[000d683c] 00063c4e                  dc.l v_clsvwk
[000d6840] 00063c98                  dc.l v_clrwk
[000d6844] 00063ce2                  dc.l v_updwk
[000d6848] 00063d2c                  dc.l v_opnbm
[000d684c] 00063e70                  dc.l v_clsbm
[000d6850] 00063eba                  dc.l vst_load_fonts
[000d6854] 00063f0e                  dc.l vst_unload_fonts
[000d6858] 00063f60                  dc.l vs_clip
[000d685c] 00064010                  dc.l v_pline
[000d6860] 0006418a                  dc.l v_pmarker
[000d6864] 000641e0                  dc.l v_gtext
[000d6868] 000642be                  dc.l v_fillarea
[000d686c] 00064438                  dc.l v_cellarray
[000d6870] 000644b2                  dc.l v_contourfill
[000d6874] 0006455e                  dc.l v_bar
[000d6878] 000645aa                  dc.l v_arc
[000d687c] 00064626                  dc.l v_pieslice
[000d6880] 000646a2                  dc.l v_circle
[000d6884] 00064714                  dc.l v_ellipse
[000d6888] 0006477c                  dc.l v_ellarc
[000d688c] 000647ee                  dc.l v_ellpie
[000d6890] 000648f8                  dc.l v_justified
[000d6894] 00064512                  dc.l vr_recfl
[000d6898] 000648ac                  dc.l v_rfbox
[000d689c] 00064860                  dc.l v_rbox
[000d68a0] 00063698                  dc.l vq_gdos
[000d68a4] 00064da0                  dc.l vswr_mode
[000d68a8] 00064df4                  dc.l vsl_type
[000d68ac] 00064e48                  dc.l vsl_udsty
[000d68b0] 00064e9a                  dc.l vsl_width
[000d68b4] 00064ef0                  dc.l vsl_color
[000d68b8] 00064f44                  dc.l vsl_ends
[000d68bc] 00064fa0                  dc.l vsm_type
[000d68c0] 00064ff4                  dc.l vsm_height
[000d68c4] 0006504c                  dc.l vsm_color
[000d68c8] 000650a0                  dc.l vst_height
[000d68cc] 00065132                  dc.l vst_point
[000d68d0] 000651c2                  dc.l vst_rotation
[000d68d4] 00065216                  dc.l vst_font
[000d68d8] 0006526a                  dc.l vst_color
[000d68dc] 000652be                  dc.l vst_effects
[000d68e0] 00065312                  dc.l vst_alignment
[000d68e4] 00065390                  dc.l vsf_interior
[000d68e8] 000653e4                  dc.l vsf_style
[000d68ec] 00065438                  dc.l vsf_color
[000d68f0] 0006548c                  dc.l vsf_perimeter
[000d68f4] 0006553e                  dc.l vsf_udpat
[000d68f8] 00065598                  dc.l vsf_updat
[000d68fc] 00064d2e                  dc.l vs_color
[000d6900] 000666a8                  dc.l vr_trnfm
[000d6904] 000665ce                  dc.l vro_cpyfm
[000d6908] 00066632                  dc.l vrt_cpyfm
[000d690c] 00066706                  dc.l v_get_pixel
[000d6910] 00066846                  dc.l vsin_mode
[000d6914] 000668a4                  dc.l vrq_locator
[000d6918] 0006692c                  dc.l vsm_locator
[000d691c] 000669d0                  dc.l vrq_valuator
[000d6920] 00066a44                  dc.l vsm_valuator
[000d6924] 00066ad4                  dc.l vrq_choice
[000d6928] 00066b36                  dc.l vsm_choice
[000d692c] 00066b94                  dc.l vrq_string
[000d6930] 00066c9c                  dc.l vsm_string
[000d6934] 00066daa                  dc.l vex_timv
[000d6938] 00066e0e                  dc.l v_show_c
[000d693c] 00066e60                  dc.l v_hide_c
[000d6940] 00066eaa                  dc.l vq_mouse
[000d6944] 00066f12                  dc.l vex_butv
[000d6948] 00066f78                  dc.l vex_motv
[000d694c] 00066fde                  dc.l vex_curv
[000d6950] 00067044                  dc.l vq_key_s
[000d6954] 00067090                  dc.l vq_extnd
[000d6958] 000671b4                  dc.l vql_attributes
[000d695c] 00067246                  dc.l vqm_attributes
[000d6960] 00067294                  dc.l vqf_attributes
[000d6964] 000672e0                  dc.l vqt_attributes
[000d6968] 0006732e                  dc.l vqt_extent
[000d696c] 000673e2                  dc.l vqt_width
[000d6970] 00067464                  dc.l vqt_name
[000d6974] 000676ba                  dc.l vqin_mode
[000d6978] 0006770e                  dc.l vqt_fontinfo
[000d697c] 000670e6                  dc.l vq_scrninfo
[000d6980] 00067136                  dc.l vq_color
[000d6984] 0006762e                  dc.l vq_cellarray
[000d6988] 0006857e                  dc.l vq_chcells
[000d698c] 000685ea                  dc.l v_exit_cur
[000d6990] 00068634                  dc.l v_enter_cur
[000d6994] 0006867e                  dc.l v_curup
[000d6998] 000686c8                  dc.l v_curdown
[000d699c] 00068712                  dc.l v_curright
[000d69a0] 0006875c                  dc.l v_curleft
[000d69a4] 000687a6                  dc.l v_curhome
[000d69a8] 000687f0                  dc.l v_eeos
[000d69ac] 0006883a                  dc.l v_eeol
[000d69b0] 00068884                  dc.l v_curaddress
[000d69b4] 000688fe                  dc.l v_curtext
[000d69b8] 000689b0                  dc.l v_rvon
[000d69bc] 000689fa                  dc.l v_rvoff
[000d69c0] 00068a44                  dc.l vq_curaddress
[000d69c4] 00068ab0                  dc.l vq_tabstatus
[000d69c8] 00068afc                  dc.l v_hardcopy
[000d69cc] 00068b46                  dc.l v_dspcur
[000d69d0] 00068ba2                  dc.l v_rmcur
[000d69d4] 00068bec                  dc.l v_form_adv
[000d69d8] 00068c82                  dc.l v_clear_disp_list
[000d69dc] 00068dc4                  dc.l vq_scan
[000d69e0] 00068e5a                  dc.l v_alpha_text
[000d69e4] 000691f2                  dc.l vs_palette
[000d69e8] 00069246                  dc.l v_sound
[000d69ec] 000692a2                  dc.l vs_mute
[000d69f0] 000693c2                  dc.l vt_resolution
[000d69f4] 00069440                  dc.l vt_axis
[000d69f8] 000694be                  dc.l vt_origin
[000d69fc] 0006951a                  dc.l vq_tdimensions
[000d6a00] 00069586                  dc.l vt_alignment
[000d6a04] 000695e2                  dc.l vsp_film
[000d6a08] 0006963e                  dc.l vqp_filmname
[000d6a0c] 000696e0                  dc.l vsc_expose
[000d6a10] 00069732                  dc.l v_meta_extents
[000d6a14] 0006979a                  dc.l v_write_meta
[000d6a18] 000697fc                  dc.l vm_pagesize
[000d6a1c] 0006985c                  dc.l vm_coords
[000d6a20] 000698ca                  dc.l vm_filename
[000d6a24] 00069972                  dc.l v_offset
[000d6a28] 000699c4                  dc.l v_fontinit
[000d6a2c] 00069a16                  dc.l v_escape2000
[000d6a30] 00068c36                  dc.l v_output_window
[000d6a34] 00068ccc                  dc.l v_bit_image
[000d6a38] 000636c0                  dc.l fix31ToPixel
[000d6a3c] 0006384e                  dc.l v_opnprn
[000d6a40] 00063abc                  dc.l v_opnmeta
[000d6a44] 00068250                  dc.l vq_devinfo
[000d6a48] 0006843c                  dc.l vq_ext_devinfo
[000d6a4c] 000692f6                  dc.l vs_calibrate
[000d6a50] 00069354                  dc.l vq_calibrate
[000d6a54] 00064066                  dc.l v_bez
[000d6a58] 000649e6                  dc.l v_bez_on
[000d6a5c] 00064a34                  dc.l v_bez_off
[000d6a60] 00064a7e                  dc.l v_bez_qual
[000d6a64] 00064314                  dc.l v_bez_fill
[000d6a68] 000674fa                  dc.l vqt_ext_name
[000d6a6c] 000678c8                  dc.l vqt_char_index
[000d6a70] 0006792c                  dc.l vqt_isCharAvailable
[000d6a74] 00067b4a                  dc.l vqt_xfntinfo
[000d6a78] 00065dd0                  dc.l vst_name
[000d6a7c] 00067bd6                  dc.l vqt_name_and_id
[000d6a80] 00067caa                  dc.l vqt_fontheader
[000d6a84] 00067d36                  dc.l vqt_trackkern
[000d6a88] 00067da2                  dc.l vqt_pairkern
[000d6a8c] 00065f32                  dc.l vst_charmap
[000d6a90] 00065f84                  dc.l vst_kern
[000d6a94] 00066086                  dc.l vst_kern_offset
[000d6a98] 00067e20                  dc.l v_getbitmap_info
[000d6a9c] 00067eda                  dc.l vqt_f_extent
[000d6aa0] 00067f8e                  dc.l vqt_real_extent
[000d6aa4] 00064aec                  dc.l v_ftext
[000d6aa8] 00064bc8                  dc.l v_ftext_offset
[000d6aac] 00068058                  dc.l v_getoutline
[000d6ab0] 00066166                  dc.l vst_arbpt32
[000d6ab4] 000681de                  dc.l vqt_advance32
[000d6ab8] 000664ea                  dc.l vst_setsize32
[000d6abc] 0006657a                  dc.l vst_skew
[000d6ac0] 00068f12                  dc.l v_orient
[000d6ac4] 00068f70                  dc.l v_trays
[000d6ac8] 00068ffa                  dc.l vq_tray_names
[000d6acc] 00069094                  dc.l v_page_size
[000d6ad0] 000690f4                  dc.l vq_page_name
[000d6ad4] 000655b6                  dc.l vst_fg_color
[000d6ad8] 00065634                  dc.l vsf_fg_color
[000d6adc] 000656b2                  dc.l vsl_fg_color
[000d6ae0] 00065730                  dc.l vsm_fg_color
[000d6ae4] 000657ae                  dc.l vsr_fg_color
[000d6ae8] 0006582c                  dc.l vst_bg_color
[000d6aec] 000658aa                  dc.l vsf_bg_color
[000d6af0] 00065928                  dc.l vsl_bg_color
[000d6af4] 000659a6                  dc.l vsm_bg_color
[000d6af8] 00065a24                  dc.l vsr_bg_color
[000d6afc] 00069bee                  dc.l vqt_fg_color
[000d6b00] 00069c6a                  dc.l vqf_fg_color
[000d6b04] 00069ce6                  dc.l vql_fg_color
[000d6b08] 00069d62                  dc.l vqm_fg_color
[000d6b0c] 00069dde                  dc.l vqr_fg_color
[000d6b10] 00069e5a                  dc.l vqt_bg_color
[000d6b14] 00069ed6                  dc.l vqf_bg_color
[000d6b18] 00069f52                  dc.l vql_bg_color
[000d6b1c] 00069fce                  dc.l vqm_bg_color
[000d6b20] 0006a04a                  dc.l vqr_bg_color
[000d6b24] 0006a0c6                  dc.l v_color2value
[000d6b28] 0006a144                  dc.l v_value2color
[000d6b2c] 0006a1c8                  dc.l v_color2nearest
[000d6b30] 0006a276                  dc.l vq_px_format
[000d6b34] 00065aa2                  dc.l vs_ctab
[000d6b38] 00065b04                  dc.l vs_ctab_entry
[000d6b3c] 00065b8c                  dc.l vs_dflt_ctab
[000d6b40] 0006a2d4                  dc.l vq_ctab
[000d6b44] 0006a334                  dc.l vq_ctab_entry
[000d6b48] 0006a3b8                  dc.l vq_ctab_id
[000d6b4c] 0006a404                  dc.l v_ctab_idx2vdi
[000d6b50] 0006a458                  dc.l v_ctab_vdi2idx
[000d6b54] 0006a4ac                  dc.l v_ctab_idx2value
[000d6b58] 0006a502                  dc.l v_get_ctab_id
[000d6b5c] 0006a550                  dc.l vq_dflt_ctab
[000d6b60] 0006a662                  dc.l v_create_itab
[000d6b64] 0006a6c6                  dc.l v_delete_itab
[000d6b68] 00066784                  dc.l vr_transfer_bits
[000d6b6c] 00065bd8                  dc.l vs_hilite_color
[000d6b70] 00065c56                  dc.l vs_min_color
[000d6b74] 00065cd4                  dc.l vs_max_color
[000d6b78] 00065d52                  dc.l vs_weight_color
[000d6b7c] 0006795a                  dc.l vq_hilite_color
[000d6b80] 000679d6                  dc.l vq_min_color
[000d6b84] 00067a52                  dc.l vq_max_color
[000d6b88] 00067ace                  dc.l vq_weight_color
[000d6b8c] 00069a68                  dc.l vs_document_info
[000d6b90] 00069194                  dc.l vq_prn_scaling
[000d6b94] 00063dfa                  dc.l v_open_bm
[000d6b98] 00063d8c                  dc.l v_resize_bm
[000d6b9c] 000680d4                  dc.l v_get_outline
[000d6ba0] 00066002                  dc.l vst_track_offset
[000d6ba4] 000661f8                  dc.l vst_arbpt
[000d6ba8] 00068152                  dc.l vqt_advance
[000d6bac] 0006645a                  dc.l vst_setsize
[000d6bb0] 000636b0                  dc.l vq_vgdos
[000d6bb4] 00065ea4                  dc.l vst_width
[000d6bb8] 000660b8                  dc.l vst_scratch
[000d6bbc] 0006610a                  dc.l vst_error
[000d6bc0] 0006628a                  dc.l v_savecache
[000d6bc4] 00066342                  dc.l v_loadcache
[000d6bc8] 0006640e                  dc.l v_flushcache
[000d6bcc] 0006851c                  dc.l vqt_cachesize
[000d6bd0] 000684c2                  dc.l vqt_get_table
[000d6bd4] 000688e0                  dc.l vs_curaddress
[000d6bd8] 000654e0                  dc.l vsf_perimeter3
[000d6bdc] 000677dc                  dc.l vqt_justified
[000d6be0] 00063906                  dc.l v_opnprnwrk
[000d6be4] 00063a10                  dc.l v_opnmatrixprn
[000d6be8] 00063fb4                  dc.l v_set_app_buff
[000d6bec] 0006838c                  dc.l vqt_devinfo
[000d6bf0] 0006a5b0                  dc.l v_create_ctab
[000d6bf4] 0006a60e                  dc.l v_delete_ctab
[000d6bf8] 00069b86                  dc.l v_setrgb
funcVdi:
[000d6bfc] 000d6828                  dc.l func1Vdi
[000d6c00]                           dc.b $00
[000d6c01]                           dc.b $00
funcAnzVdi:
[000d6c02]                           dc.b $00
[000d6c03]                           dc.b $01
func1Aes:
[000d6c04] 0006a71c                  dc.l aes
[000d6c08] 0007057c                  dc.l appl_init
[000d6c0c] 0007058a                  dc.l appl_read
[000d6c10] 000705b0                  dc.l appl_write
[000d6c14] 000705d6                  dc.l appl_find
[000d6c18] 0007063e                  dc.l appl_search
[000d6c1c] 000705ec                  dc.l appl_tplay
[000d6c20] 00070612                  dc.l appl_trecord
[000d6c24] 00070630                  dc.l appl_yield
[000d6c28] 00070670                  dc.l appl_exit
[000d6c2c] 0007067e                  dc.l appl_getinfo
[000d6c30] 000706b6                  dc.l appl_control
[000d6c34] 000706dc                  dc.l evnt_keybd
[000d6c38] 000706ea                  dc.l evnt_button
[000d6c3c] 00070732                  dc.l evnt_mouse
[000d6c40] 00070782                  dc.l evnt_mesag
[000d6c44] 00070798                  dc.l evnt_timer
[000d6c48] 00070854                  dc.l evnt_event
[000d6c4c] 000707c0                  dc.l evnt_multi
[000d6c50] 0007088c                  dc.l evnt_dclick
[000d6c54] 000708aa                  dc.l menu_bar
[000d6c58] 000708c8                  dc.l menu_icheck
[000d6c5c] 000708ee                  dc.l menu_ienable
[000d6c60] 00070914                  dc.l menu_tnormal
[000d6c64] 0007093a                  dc.l menu_text
[000d6c68] 00070968                  dc.l menu_register
[000d6c6c] 00070986                  dc.l menu_unregister
[000d6c70] 0007099c                  dc.l menu_click
[000d6c74] 000709ba                  dc.l menu_attach
[000d6c78] 000709f0                  dc.l menu_istart
[000d6c7c] 00070a22                  dc.l menu_popup
[000d6c80] 00070a58                  dc.l menu_settings
[000d6c84] 00070a76                  dc.l objc_add
[000d6c88] 00070a9c                  dc.l objc_delete
[000d6c8c] 00070aba                  dc.l objc_draw
[000d6c90] 00070afc                  dc.l objc_find
[000d6c94] 00070b36                  dc.l objc_offset
[000d6c98] 00070b68                  dc.l objc_order
[000d6c9c] 00070b8e                  dc.l objc_edit
[000d6ca0] 00070c0e                  dc.l objc_change
[000d6ca4] 00070c5a                  dc.l objc_sysvar
[000d6ca8] 00070c9c                  dc.l form_do
[000d6cac] 00070cba                  dc.l form_dial
[000d6cb0] 00070cfe                  dc.l form_alert
[000d6cb4] 00070d1c                  dc.l form_error
[000d6cb8] 00070d32                  dc.l form_center
[000d6cbc] 00070d62                  dc.l form_keybd
[000d6cc0] 00070da4                  dc.l form_button
[000d6cc4] 00070ebe                  dc.l graf_rubbox
[000d6cc8] 00070f00                  dc.l graf_rubberbox
[000d6ccc] 00070f84                  dc.l graf_dragbox
[000d6cd0] 00070fd8                  dc.l graf_mbox
[000d6cd4] 0007100e                  dc.l graf_movebox
[000d6cd8] 00071040                  dc.l graf_growbox
[000d6cdc] 00071080                  dc.l graf_shrinkbox
[000d6ce0] 000710c0                  dc.l graf_watchbox
[000d6ce4] 0007112c                  dc.l graf_slidebox
[000d6ce8] 0007115e                  dc.l graf_handle
[000d6cec] 000711ba                  dc.l graf_mouse
[000d6cf0] 000711d8                  dc.l graf_mkstate
[000d6cf4] 00071204                  dc.l graf_multirubber
[000d6cf8] 0007124c                  dc.l scrp_read
[000d6cfc] 00071262                  dc.l scrp_write
[000d6d00] 00071286                  dc.l fsel_input
[000d6d04] 000712ac                  dc.l fsel_exinput
[000d6d08] 000712d8                  dc.l fsel_boxinput
[000d6d0c] 00071308                  dc.l fslx_open
[000d6d10] 00071368                  dc.l fslx_close
[000d6d14] 0007137e                  dc.l fslx_getnxtfile
[000d6d18] 000713a0                  dc.l fslx_evnt
[000d6d1c] 000713dc                  dc.l fslx_do
[000d6d20] 0007143c                  dc.l fslx_set_flags
[000d6d24] 0007145a                  dc.l wind_create
[000d6d28] 0007148c                  dc.l wind_open
[000d6d2c] 000714be                  dc.l wind_close
[000d6d30] 000714d4                  dc.l wind_delete
[000d6d34] 000714ea                  dc.l wind_get
[000d6d38] 00071628                  dc.l wind_getQSB
[000d6d3c] 00071656                  dc.l wind_set
[000d6d40] 00071736                  dc.l wind_find
[000d6d44] 00071754                  dc.l wind_update
[000d6d48] 0007176a                  dc.l wind_calc
[000d6d4c] 000717be                  dc.l wind_new
[000d6d50] 000717ea                  dc.l rsrc_load
[000d6d54] 00071800                  dc.l rsrc_free
[000d6d58] 0007180e                  dc.l rsrc_gaddr
[000d6d5c] 00071834                  dc.l rsrc_saddr
[000d6d60] 0007185a                  dc.l rsrc_obfix
[000d6d64] 00071878                  dc.l rsrc_rcfix
[000d6d68] 0007188e                  dc.l shel_read
[000d6d6c] 000718b0                  dc.l shel_write
[000d6d70] 000718ee                  dc.l shel_get
[000d6d74] 0007190c                  dc.l shel_put
[000d6d78] 0007192a                  dc.l shel_find
[000d6d7c] 00071940                  dc.l shel_envrn
[000d6d80] 00071962                  dc.l shel_help
[000d6d84] 00071990                  dc.l fnts_add
[000d6d88] 000719b2                  dc.l fnts_close
[000d6d8c] 000719d8                  dc.l fnts_create
[000d6d90] 00071a1a                  dc.l fnts_delete
[000d6d94] 00071a38                  dc.l fnts_do
[000d6d98] 00071a88                  dc.l fnts_evnt
[000d6d9c] 00071ac0                  dc.l fnts_get_info
[000d6da0] 00071af2                  dc.l fnts_get_name
[000d6da4] 00071b2a                  dc.l fnts_get_no_styles
[000d6da8] 00071b48                  dc.l fnts_get_style
[000d6dac] 00071b72                  dc.l fnts_open
[000d6db0] 00071bb6                  dc.l fnts_remove
[000d6db4] 00071bcc                  dc.l fnts_update
[000d6db8] 00071c06                  dc.l lbox_ascroll_to
[000d6dbc] 00071c38                  dc.l lbox_scroll_to
[000d6dc0] 00071c6a                  dc.l lbox_bscroll_to
[000d6dc4] 00071c9c                  dc.l lbox_cnt_items
[000d6dc8] 00071cb2                  dc.l lbox_create
[000d6dcc] 00071d1e                  dc.l lbox_delete
[000d6dd0] 00071d34                  dc.l lbox_do
[000d6dd4] 00071d52                  dc.l lbox_free_items
[000d6dd8] 00071d68                  dc.l lbox_free_list
[000d6ddc] 00071d7e                  dc.l lbox_get_afirst
[000d6de0] 00071d94                  dc.l lbox_get_first
[000d6de4] 00071daa                  dc.l lbox_get_avis
[000d6de8] 00071dc0                  dc.l lbox_get_visible
[000d6dec] 00071dd6                  dc.l lbox_get_bentries
[000d6df0] 00071dec                  dc.l lbox_get_bfirst
[000d6df4] 00071e02                  dc.l lbox_get_idx
[000d6df8] 00071e24                  dc.l lbox_get_item
[000d6dfc] 00071e42                  dc.l lbox_get_items
[000d6e00] 00071e58                  dc.l lbox_get_slct_idx
[000d6e04] 00071e6e                  dc.l lbox_get_slct_item
[000d6e08] 00071e84                  dc.l lbox_get_tree
[000d6e0c] 00071e9a                  dc.l lbox_get_udata
[000d6e10] 00071eb0                  dc.l lbox_set_asldr
[000d6e14] 00071ede                  dc.l lbox_set_slider
[000d6e18] 00071f0c                  dc.l lbox_set_bentries
[000d6e1c] 00071f2a                  dc.l lbox_set_bsldr
[000d6e20] 00071f58                  dc.l lbox_set_items
[000d6e24] 00071f7a                  dc.l lbox_update
[000d6e28] 00071f9c                  dc.l pdlg_add_printers
[000d6e2c] 00071fbe                  dc.l pdlg_add_sub_dialogs
[000d6e30] 00071fe0                  dc.l pdlg_close
[000d6e34] 00072006                  dc.l pdlg_create
[000d6e38] 0007201c                  dc.l pdlg_delete
[000d6e3c] 00072032                  dc.l pdlg_dflt_settings
[000d6e40] 00072054                  dc.l pdlg_do
[000d6e44] 00072086                  dc.l pdlg_evnt
[000d6e48] 000720b2                  dc.l pdlg_free_settings
[000d6e4c] 000720c8                  dc.l pdlg_get_setsize
[000d6e50] 000720d6                  dc.l pdlg_new_settings
[000d6e54] 000720ec                  dc.l pdlg_open
[000d6e58] 0007212e                  dc.l pdlg_remove_printers
[000d6e5c] 00072144                  dc.l pdlg_remove_sub_dialog
[000d6e60] 0007215a                  dc.l pdlg_update
[000d6e64] 0007217c                  dc.l pdlg_use_settings
[000d6e68] 0007219e                  dc.l pdlg_validate_settings
[000d6e6c] 00072416                  dc.l edit_create
[000d6e70] 000726b2                  dc.l edit_set_buf
[000d6e74] 00072424                  dc.l edit_open
[000d6e78] 00072442                  dc.l edit_close
[000d6e7c] 00072460                  dc.l edit_delete
[000d6e80] 00072476                  dc.l edit_cursor
[000d6e84] 000724a8                  dc.l edit_evnt
[000d6e88] 000724e2                  dc.l edit_get_buf
[000d6e8c] 0007251a                  dc.l edit_get_format
[000d6e90] 0007254c                  dc.l edit_get_colour
[000d6e94] 0007257e                  dc.l edit_get_color
[000d6e98] 000725b0                  dc.l edit_get_font
[000d6e9c] 000725ec                  dc.l edit_get_cursor
[000d6ea0] 0007261a                  dc.l edit_get_dirty
[000d6ea4] 00072638                  dc.l edit_get_sel
[000d6ea8] 0007266a                  dc.l edit_get_scrollinfo
[000d6eac] 000726e8                  dc.l edit_set_format
[000d6eb0] 0007271a                  dc.l edit_set_colour
[000d6eb4] 0007271a                  dc.l edit_set_colour
[000d6eb8] 0007274c                  dc.l edit_set_font
[000d6ebc] 0007278a                  dc.l edit_set_cursor
[000d6ec0] 000727b8                  dc.l edit_resized
[000d6ec4] 000727ea                  dc.l edit_set_dirty
[000d6ec8] 00072810                  dc.l edit_scroll
[000d6ecc] 00070876                  dc.l EvntMulti
[000d6ed0] 00070dda                  dc.l form_wbutton
[000d6ed4] 00070e18                  dc.l form_xdial
[000d6ed8] 00070e68                  dc.l form_xdo
[000d6edc] 00070ea0                  dc.l form_xerr
[000d6ee0] 0006a736                  dc.l _crystal
[000d6ee4] 000710f2                  dc.l graf_wwatchbox
[000d6ee8] 0007118a                  dc.l graf_xhandle
[000d6eec] 000721c0                  dc.l wdlg_create
[000d6ef0] 00072200                  dc.l wdlg_open
[000d6ef4] 00072248                  dc.l wdlg_close
[000d6ef8] 0007226e                  dc.l wdlg_delete
[000d6efc] 00072284                  dc.l wdlg_get_tree
[000d6f00] 000722aa                  dc.l wdlg_get_edit
[000d6f04] 000722cc                  dc.l wdlg_get_udata
[000d6f08] 000722e2                  dc.l wdlg_get_handle
[000d6f0c] 000722f8                  dc.l wdlg_set_edit
[000d6f10] 00072316                  dc.l wdlg_set_tree
[000d6f14] 00072338                  dc.l wdlg_set_size
[000d6f18] 0007235a                  dc.l wdlg_set_iconify
[000d6f1c] 00072392                  dc.l wdlg_set_uniconify
[000d6f20] 000723be                  dc.l wdlg_evnt
[000d6f24] 000723e0                  dc.l wdlg_redraw
[000d6f28] 000717cc                  dc.l wind_draw
[000d6f2c] 00071278                  dc.l scrp_clear
[000d6f30] 00070bcc                  dc.l objc_xedit
[000d6f34] 00070f42                  dc.l graf_rubbbox
funcAes:
[000d6f38] 000d6c04                  dc.l func1Aes
[000d6f3c]                           dc.b $00
[000d6f3d]                           dc.b $00
funcAnzAes:
[000d6f3e]                           dc.b $00
[000d6f3f]                           dc.b $01
func1MtAes:
[000d6f40] 0006a74c                  dc.l mt_appl_init
[000d6f44] 0006a7aa                  dc.l mt_appl_read
[000d6f48] 0006a818                  dc.l mt_appl_write
[000d6f4c] 0006a886                  dc.l mt_appl_find
[000d6f50] 0006aa02                  dc.l mt_appl_search
[000d6f54] 0006a8e0                  dc.l mt_appl_tplay
[000d6f58] 0006a94e                  dc.l mt_appl_trecord
[000d6f5c] 0006a9b2                  dc.l mt_appl_yield
[000d6f60] 0006aa82                  dc.l mt_appl_exit
[000d6f64] 0006aad2                  dc.l mt_appl_getinfo
[000d6f68] 0006ac8c                  dc.l mt_appl_control
[000d6f6c] 0006acfa                  dc.l mt_evnt_keybd
[000d6f70] 0006ad4a                  dc.l mt_evnt_button
[000d6f74] 0006adf4                  dc.l mt_evnt_mouse
[000d6f78] 0006aeaa                  dc.l mt_evnt_mesag
[000d6f7c] 0006af04                  dc.l mt_evnt_timer
[000d6f80] 0006b1e4                  dc.l mt_evnt_event
[000d6f84] 0006af70                  dc.l mt_evnt_multi
[000d6f88] 0006b2fe                  dc.l mt_evnt_dclick
[000d6f8c] 0006b362                  dc.l mt_menu_bar
[000d6f90] 0006b3c6                  dc.l mt_menu_icheck
[000d6f94] 0006b434                  dc.l mt_menu_ienable
[000d6f98] 0006b4a2                  dc.l mt_menu_tnormal
[000d6f9c] 0006b51a                  dc.l mt_menu_text
[000d6fa0] 0006b584                  dc.l mt_menu_register
[000d6fa4] 0006b5e8                  dc.l mt_menu_unregister
[000d6fa8] 0006b642                  dc.l mt_menu_click
[000d6fac] 0006b6a6                  dc.l mt_menu_attach
[000d6fb0] 0006b71a                  dc.l mt_menu_istart
[000d6fb4] 0006b792                  dc.l mt_menu_popup
[000d6fb8] 0006b806                  dc.l mt_menu_settings
[000d6fbc] 0006b86a                  dc.l mt_objc_add
[000d6fc0] 0006b8d8                  dc.l mt_objc_delete
[000d6fc4] 0006b93c                  dc.l mt_objc_draw
[000d6fc8] 0006b9c6                  dc.l mt_objc_find
[000d6fcc] 0006ba44                  dc.l mt_objc_offset
[000d6fd0] 0006bac4                  dc.l mt_objc_order
[000d6fd4] 0006bb32                  dc.l mt_objc_edit
[000d6fd8] 0006bc5c                  dc.l mt_objc_change
[000d6fdc] 0006bcec                  dc.l mt_objc_sysvar
[000d6fe0] 0006bd80                  dc.l mt_form_do
[000d6fe4] 0006bde4                  dc.l mt_form_dial
[000d6fe8] 0006be76                  dc.l mt_form_alert
[000d6fec] 0006beda                  dc.l mt_form_error
[000d6ff0] 0006bf48                  dc.l mt_form_center
[000d6ff4] 0006bfda                  dc.l mt_form_keybd
[000d6ff8] 0006c06e                  dc.l mt_form_button
[000d6ffc] 0006c2ee                  dc.l mt_graf_rubbox
[000d7000] 0006c382                  dc.l mt_graf_rubberbox
[000d7004] 0006c3fe                  dc.l mt_graf_dragbox
[000d7008] 0006c4aa                  dc.l mt_graf_mbox
[000d700c] 0006c52a                  dc.l mt_graf_movebox
[000d7010] 0006c564                  dc.l mt_graf_growbox
[000d7014] 0006c5f0                  dc.l mt_graf_shrinkbox
[000d7018] 0006c67c                  dc.l mt_graf_watchbox
[000d701c] 0006c776                  dc.l mt_graf_slidebox
[000d7020] 0006c7ee                  dc.l mt_graf_handle
[000d7024] 0006c914                  dc.l mt_graf_mouse
[000d7028] 0006c978                  dc.l mt_graf_mkstate
[000d702c] 0006ca04                  dc.l mt_graf_multirubber
[000d7030] 0006ca9e                  dc.l mt_scrp_read
[000d7034] 0006caf8                  dc.l mt_scrp_write
[000d7038] 0006cba2                  dc.l mt_fsel_input
[000d703c] 0006cc10                  dc.l mt_fsel_exinput
[000d7040] 0006ccbe                  dc.l mt_fsel_boxinput
[000d7044] 0006cd6c                  dc.l mt_fslx_open
[000d7048] 0006ce22                  dc.l mt_fslx_close
[000d704c] 0006ce7c                  dc.l mt_fslx_getnxtfile
[000d7050] 0006cedc                  dc.l mt_fslx_evnt
[000d7054] 0006cf80                  dc.l mt_fslx_do
[000d7058] 0006d056                  dc.l mt_fslx_set_flags
[000d705c] 0006d0c6                  dc.l mt_wind_create
[000d7060] 0006d140                  dc.l mt_wind_open
[000d7064] 0006d1ba                  dc.l mt_wind_close
[000d7068] 0006d214                  dc.l mt_wind_delete
[000d706c] 0006d26e                  dc.l mt_wind_get
[000d7070] 0006d3ae                  dc.l mt_wind_getQSB
[000d7074] 0006d460                  dc.l mt_wind_set
[000d7078] 0006d54c                  dc.l mt_wind_find
[000d707c] 0006d5b0                  dc.l mt_wind_update
[000d7080] 0006d60a                  dc.l mt_wind_calc
[000d7084] 0006d6c6                  dc.l mt_wind_new
[000d7088] 0006d77a                  dc.l mt_rsrc_load
[000d708c] 0006d7d4                  dc.l mt_rsrc_free
[000d7090] 0006d824                  dc.l mt_rsrc_gaddr
[000d7094] 0006d89a                  dc.l mt_rsrc_saddr
[000d7098] 0006d908                  dc.l mt_rsrc_obfix
[000d709c] 0006d96c                  dc.l mt_rsrc_rcfix
[000d70a0] 0006d9c6                  dc.l mt_shel_read
[000d70a4] 0006da26                  dc.l mt_shel_write
[000d70a8] 0006daa4                  dc.l mt_shel_get
[000d70ac] 0006db08                  dc.l mt_shel_put
[000d70b0] 0006db6c                  dc.l mt_shel_find
[000d70b4] 0006dbc6                  dc.l mt_shel_envrn
[000d70b8] 0006dc52                  dc.l mt_shel_help
[000d70bc] 0006dcbc                  dc.l mt_fnts_add
[000d70c0] 0006dd20                  dc.l mt_fnts_close
[000d70c4] 0006dda2                  dc.l mt_fnts_create
[000d70c8] 0006de26                  dc.l mt_fnts_delete
[000d70cc] 0006de8a                  dc.l mt_fnts_do
[000d70d0] 0006df40                  dc.l mt_fnts_evnt
[000d70d4] 0006dfe6                  dc.l mt_fnts_get_info
[000d70d8] 0006e06c                  dc.l mt_fnts_get_name
[000d70dc] 0006e0e8                  dc.l mt_fnts_get_no_styles
[000d70e0] 0006e150                  dc.l mt_fnts_get_style
[000d70e4] 0006e1c4                  dc.l mt_fnts_open
[000d70e8] 0006e24e                  dc.l mt_fnts_remove
[000d70ec] 0006e2aa                  dc.l mt_fnts_update
[000d70f0] 0006e32e                  dc.l mt_lbox_ascroll_to
[000d70f4] 0006e3a0                  dc.l mt_lbox_scroll_to
[000d70f8] 0006e3ce                  dc.l mt_lbox_bscroll_to
[000d70fc] 0006e440                  dc.l mt_lbox_cnt_items
[000d7100] 0006e49e                  dc.l mt_lbox_create
[000d7104] 0006e55e                  dc.l mt_lbox_delete
[000d7108] 0006e5b8                  dc.l mt_lbox_do
[000d710c] 0006e61c                  dc.l mt_lbox_free_items
[000d7110] 0006e678                  dc.l mt_lbox_free_list
[000d7114] 0006e6d4                  dc.l mt_lbox_get_afirst
[000d7118] 0006e734                  dc.l mt_lbox_get_first
[000d711c] 0006e74a                  dc.l mt_lbox_get_avis
[000d7120] 0006e7aa                  dc.l mt_lbox_get_visible
[000d7124] 0006e7c0                  dc.l mt_lbox_get_bentries
[000d7128] 0006e820                  dc.l mt_lbox_get_bfirst
[000d712c] 0006e880                  dc.l mt_lbox_get_idx
[000d7130] 0006e8e6                  dc.l mt_lbox_get_item
[000d7134] 0006e950                  dc.l mt_lbox_get_items
[000d7138] 0006e9b0                  dc.l mt_lbox_get_slct_idx
[000d713c] 0006ea10                  dc.l mt_lbox_get_slct_item
[000d7140] 0006ea70                  dc.l mt_lbox_get_tree
[000d7144] 0006ead0                  dc.l mt_lbox_get_udata
[000d7148] 0006eb30                  dc.l mt_lbox_set_asldr
[000d714c] 0006eb9a                  dc.l mt_lbox_set_slider
[000d7150] 0006ebc4                  dc.l mt_lbox_set_bentries
[000d7154] 0006ec2a                  dc.l mt_lbox_set_bsldr
[000d7158] 0006ec96                  dc.l mt_lbox_set_items
[000d715c] 0006ecf8                  dc.l mt_lbox_update
[000d7160] 0006ed54                  dc.l mt_pdlg_add_printers
[000d7164] 0006edb8                  dc.l mt_pdlg_add_sub_dialog
[000d7168] 0006ee1e                  dc.l mt_pdlg_close
[000d716c] 0006ee9e                  dc.l mt_pdlg_create
[000d7170] 0006eef8                  dc.l mt_pdlg_delete
[000d7174] 0006ef52                  dc.l mt_pdlg_dflt_settings
[000d7178] 0006efb8                  dc.l mt_pdlg_do
[000d717c] 0006f028                  dc.l mt_pdlg_evnt
[000d7180] 0006f09c                  dc.l mt_pdlg_free_settings
[000d7184] 0006f0fc                  dc.l mt_pdlg_get_setsize
[000d7188] 0006f150                  dc.l mt_pdlg_new_settings
[000d718c] 0006f1b0                  dc.l mt_pdlg_open
[000d7190] 0006f234                  dc.l mt_pdlg_remove_printer
[000d7194] 0006f294                  dc.l mt_pdlg_remove_sub_dia
[000d7198] 0006f2f4                  dc.l mt_pdlg_update
[000d719c] 0006f35e                  dc.l mt_pdlg_use_settings
[000d71a0] 0006f3c4                  dc.l mt_pdlg_validate_setti
[000d71a4] 0006faa0                  dc.l mt_edit_create
[000d71a8] 000701a8                  dc.l mt_edit_set_buf
[000d71ac] 0006faf0                  dc.l mt_edit_open
[000d71b0] 0006fb54                  dc.l mt_edit_close
[000d71b4] 0006fbb4                  dc.l mt_edit_delete
[000d71b8] 0006fc0a                  dc.l mt_edit_cursor
[000d71bc] 0006fc82                  dc.l mt_edit_evnt
[000d71c0] 0006fd08                  dc.l mt_edit_get_buf
[000d71c4] 0006fd9c                  dc.l mt_edit_get_format
[000d71c8] 0006fe22                  dc.l mt_edit_get_colour
[000d71cc] 0006fea8                  dc.l mt_edit_get_color
[000d71d0] 0006fed6                  dc.l mt_edit_get_font
[000d71d4] 0006ff7c                  dc.l mt_edit_get_cursor
[000d71d8] 0006fff4                  dc.l mt_edit_get_dirty
[000d71dc] 0007005e                  dc.l mt_edit_get_sel
[000d71e0] 000700e0                  dc.l mt_edit_get_scrollinfo
[000d71e4] 0007021c                  dc.l mt_edit_set_format
[000d71e8] 00070296                  dc.l mt_edit_set_colour
[000d71ec] 00070296                  dc.l mt_edit_set_colour
[000d71f0] 00070310                  dc.l mt_edit_set_font
[000d71f4] 00070396                  dc.l mt_edit_set_cursor
[000d71f8] 00070402                  dc.l mt_edit_resized
[000d71fc] 00070488                  dc.l mt_edit_set_dirty
[000d7200] 000704f8                  dc.l mt_edit_scroll
[000d7204] 0006b28c                  dc.l mt_EvntMulti
[000d7208] 0006c0ea                  dc.l mt_form_wbutton
[000d720c] 0006c170                  dc.l mt_form_xdial
[000d7210] 0006c20c                  dc.l mt_form_xdo
[000d7214] 0006c28a                  dc.l mt_form_xerr
[000d7218] 0006c6f8                  dc.l mt_graf_wwatchbox
[000d721c] 0006c87a                  dc.l mt_graf_xhandle
[000d7220] 0006f42a                  dc.l mt_wdlg_create
[000d7224] 0006f4aa                  dc.l mt_wdlg_open
[000d7228] 0006f534                  dc.l mt_wdlg_close
[000d722c] 0006f5b6                  dc.l mt_wdlg_delete
[000d7230] 0006f610                  dc.l mt_wdlg_get_tree
[000d7234] 0006f67a                  dc.l mt_wdlg_get_edit
[000d7238] 0006f6ee                  dc.l mt_wdlg_get_udata
[000d723c] 0006f74e                  dc.l mt_wdlg_get_handle
[000d7240] 0006f7ae                  dc.l mt_wdlg_set_edit
[000d7244] 0006f816                  dc.l mt_wdlg_set_tree
[000d7248] 0006f87c                  dc.l mt_wdlg_set_size
[000d724c] 0006f8e2                  dc.l mt_wdlg_set_iconify
[000d7250] 0006f95e                  dc.l mt_wdlg_set_uniconify
[000d7254] 0006f9d0                  dc.l mt_wdlg_evnt
[000d7258] 0006fa30                  dc.l mt_wdlg_redraw
[000d725c] 0006d716                  dc.l mt_wind_draw
[000d7260] 0006cb52                  dc.l mt_scrp_clear
[000d7264] 0006bbc4                  dc.l mt_objc_xedit
[000d7268] 0006c3c0                  dc.l mt_graf_rubbbox
funcMtAes:
[000d726c] 000d6f40                  dc.l func1MtAes
[000d7270]                           dc.b $00
[000d7271]                           dc.b $00
funcAnzMtAes:
[000d7272]                           dc.b $00
[000d7273]                           dc.b $01
func1Keytab:
[000d7274] 0005304a                  dc.l Akt_getKeyTab
[000d7278] 000531c6                  dc.l Akt_getRelease
[000d727c] 000532e0                  dc.l Akt_getEuro
[000d7280] 0005309c                  dc.l Akt_getExpMaxNr
[000d7284] 000530d8                  dc.l Akt_getImpMaxNr
[000d7288] 000530f2                  dc.l Akt_getExpNameFromNr
[000d728c] 0005312e                  dc.l Akt_getImpNameFromNr
[000d7290] 0005316a                  dc.l Akt_getExpShortNameFro
[000d7294] 00053198                  dc.l Akt_getImpShortNameFro
[000d7298] 000531e8                  dc.l Akt_getExpNrFromId
[000d729c] 0005320c                  dc.l Akt_getImpNrFromId
[000d72a0] 00053230                  dc.l Akt_getExpIdFromNr
[000d72a4] 0005325c                  dc.l Akt_getImpIdFromNr
[000d72a8] 00053288                  dc.l Akt_getExpNrFromName
[000d72ac] 000532b4                  dc.l Akt_getImpNrFromName
[000d72b0] 000533fe                  dc.l Akt_CharAtari2X
[000d72b4] 00053426                  dc.l Akt_CharX2Atari
[000d72b8] 0005344e                  dc.l Akt_BlockAtari2X
[000d72bc] 000534b6                  dc.l Akt_BlockX2Atari
[000d72c0] 0005351e                  dc.l Akt_StringAtari2X
[000d72c4] 00053544                  dc.l Akt_StringX2Atari
[000d72c8] 0005356a                  dc.l Akt_CharX2Unicode
[000d72cc] 0005359c                  dc.l Akt_CharUnicode2X
[000d72d0] 000535ce                  dc.l Akt_BlockX2Unicode
[000d72d4] 0005361a                  dc.l Akt_BlockUnicode2X
[000d72d8] 00053658                  dc.l Akt_StringX2Unicode
[000d72dc] 00053832                  dc.l Akt_popExpName
[000d72e0] 000538d8                  dc.l Akt_popImpName
[000d72e4] 0005397e                  dc.l Akt_chooseExpNr
[000d72e8] 000539ee                  dc.l Akt_chooseImpNr
[000d72ec] 0005307a                  dc.l Akt_getExpMinNr
[000d72f0] 000530b6                  dc.l Akt_getImpMinNr
[000d72f4] 0005367e                  dc.l Akt_BlockXUtf2Unicode
[000d72f8] 000536c0                  dc.l Akt_BlockUnicode2XUtf
[000d72fc] 000537a0                  dc.l Akt_StringXUtf2Unicode
[000d7300] 00053700                  dc.l Akt_BlockXUtf2U2XUtf
[000d7304] 00053750                  dc.l Akt_BlockXUtf2XUtf
[000d7308] 000537ce                  dc.l Akt_StringXUtf2U2XUtf
[000d730c] 00053800                  dc.l Akt_StringXUtf2XUtf
[000d7310] 00053320                  dc.l $00053320 ; no symbol found
[000d7314] 0005336e                  dc.l $0005336e ; no symbol found
funcKeytab:
[000d7318] 000d7274                  dc.l func1Keytab
[000d731c]                           dc.b $00
[000d731d]                           dc.b $00
funcAnzKeytab:
[000d731e]                           dc.b $00
[000d731f]                           dc.b $01
funcs:
[000d7320] 000d6384                  dc.l funcAbp
[000d7324] 000d638a                  dc.l funcAnzAbp
[000d7328] 000d6428                  dc.l funcAcfg
[000d732c] 000d642e                  dc.l funcAnzAcfg
[000d7330] 000d643c                  dc.l funcAch
[000d7334] 000d6442                  dc.l funcAnzAch
[000d7338] 000d6460                  dc.l funcAdr
[000d733c] 000d6466                  dc.l funcAnzAdr
[000d7340] 000d6484                  dc.l funcAev
[000d7344] 000d648a                  dc.l funcAnzAev
[000d7348] 000d64d4                  dc.l funcAf
[000d734c] 000d64da                  dc.l funcAnzAf
[000d7350] 000d64e4                  dc.l funcAic
[000d7354] 000d64ea                  dc.l funcAnzAic
[000d7358] 000d64f4                  dc.l funcAim
[000d735c] 000d64fa                  dc.l funcAnzAim
[000d7360] 000d6514                  dc.l funcAlu
[000d7364] 000d651a                  dc.l funcAnzAlu
[000d7368] 000d6524                  dc.l funcAme
[000d736c] 000d652a                  dc.l funcAnzAme
[000d7370] 000d6540                  dc.l funcAmo
[000d7374] 000d6546                  dc.l funcAnzAmo
[000d7378] 000d659c                  dc.l funcAob
[000d737c] 000d65a2                  dc.l funcAnzAob
[000d7380] 000d65b0                  dc.l funcAscrp
[000d7384] 000d65b6                  dc.l funcAnzAscrp
[000d7388] 000d6614                  dc.l funcAsh
[000d738c] 000d661a                  dc.l funcAnzAsh
[000d7390] 000d666c                  dc.l funcAst
[000d7394] 000d6672                  dc.l funcAnzAst
[000d7398] 000d667c                  dc.l funcAte
[000d739c] 000d6682                  dc.l funcAnzAte
[000d73a0] 000d6698                  dc.l funcAuo
[000d73a4] 000d669e                  dc.l funcAnzAuo
[000d73a8] 000d66b0                  dc.l funcAus
[000d73ac] 000d66b6                  dc.l funcAnzAus
[000d73b0] 000d6764                  dc.l funcAwi
[000d73b4] 000d676a                  dc.l funcAnzAwi
[000d73b8] 000d67a4                  dc.l funcA
[000d73bc] 000d67aa                  dc.l funcAnzA
[000d73c0] 000d6820                  dc.l funcSonst
[000d73c4] 000d6826                  dc.l funcAnzSonst
[000d73c8] 000d6bfc                  dc.l funcVdi
[000d73cc] 000d6c02                  dc.l funcAnzVdi
[000d73d0] 000d6f38                  dc.l funcAes
[000d73d4] 000d6f3e                  dc.l funcAnzAes
[000d73d8] 000d7318                  dc.l funcKeytab
[000d73dc] 000d731e                  dc.l funcAnzKeytab
[000d73e0] 000d726c                  dc.l funcMtAes
[000d73e4] 000d7272                  dc.l funcAnzMtAes
funcsAnz:
[000d73e8]                           dc.b $00
[000d73e9]                           dc.b $00
[000d73ea]                           dc.b $00
[000d73eb]                           dc.b $19
ACS233:
[000d73ec] 0004e5ea                  dc.l Awi_wid
[000d73f0] 0004e608                  dc.l Awi_root
[000d73f4] 0004ef2a                  dc.l Awi_list
[000d73f8] 0004ef62                  dc.l Awi_sendall
[000d73fc] 0004f068                  dc.l Awi_down
[000d7400] 0004f006                  dc.l Awi_up
[000d7404] 0004f0ca                  dc.l Awi_show
[000d7408] 0004e610                  dc.l Awi_init
[000d740c] 00063474                  dc.l Awi_create23x
[000d7410] 0004f69e                  dc.l Awi_open
[000d7414] 0005013e                  dc.l Awi_closed
[000d7418] 00050330                  dc.l Awi_delete
[000d741c] 00050454                  dc.l Awi_topped
[000d7420] 00050496                  dc.l Awi_fulled
[000d7424] 000506ca                  dc.l Awi_sized
[000d7428] 000507bc                  dc.l Awi_moved
[000d742c] 0004b286                  dc.l Awi_diaend
[000d7430] 0004b33c                  dc.l Awi_diastart
[000d7434] 0005ef2c                  dc.l Awi_keys
[000d7438] 0004c19e                  dc.l Awi_obview
[000d743c] 00051276                  dc.l Awi_service
[000d7440] 0004d468                  dc.l Awi_scroll
[000d7444] 0004b600                  dc.l Awi_obchange
[000d7448] 0004b846                  dc.l Awi_obredraw
[000d744c] 0004b8cc                  dc.l Awi_redraw
[000d7450] 00063652                  dc.l Awi_arrowed23x
[000d7454] 0004beea                  dc.l Awi_hslid
[000d7458] 0004bf56                  dc.l Awi_vslid
[000d745c] 00047066                  dc.l Af_cfgfile
[000d7460] 0004640a                  dc.l Aev_quit
[000d7464] 00046d70                  dc.l Aev_mess
[000d7468] 000463f4                  dc.l Aev_unhidepointer
[000d746c] 00049898                  dc.l Amo_new
[000d7470] 00049902                  dc.l Amo_busy
[000d7474] 00049940                  dc.l Amo_unbusy
[000d7478] 00049970                  dc.l Amo_hide
[000d747c] 00049994                  dc.l Amo_show
[000d7480] 00063356                  dc.l Aob_create23x
[000d7484] 00049b7c                  dc.l Aob_delete
[000d7488] 0004a25e                  dc.l Aob_fix
[000d748c] 0004a3be                  dc.l Aob_offset
[000d7490] 0004a548                  dc.l Aob_save
[000d7494] 0004a64c                  dc.l Aob_restore
[000d7498] 0004ab5e                  dc.l Aob_watch
[000d749c] 0004aeca                  dc.l Aob_findflag
[000d74a0] 0004af6c                  dc.l Aob_up
[000d74a4] 0004975e                  dc.l Ame_namefix
[000d74a8] 0004948a                  dc.l Ame_popup
[000d74ac] 0004d928                  dc.l Abp_create
[000d74b0] 0004d996                  dc.l Abp_delete
[000d74b4] 0004d9a2                  dc.l Abp_start
[000d74b8] 0004da54                  dc.l Abp_end
[000d74bc] 00044cd6                  dc.l Adr_box
[000d74c0] 0004557a                  dc.l Adr_drag
[000d74c4] 0004484c                  dc.l Adr_next
[000d74c8] 0004487c                  dc.l Adr_add
[000d74cc] 0004492a                  dc.l Adr_del
[000d74d0] 00044a26                  dc.l Adr_unselect
[000d74d4] 000436d6                  dc.l Ast_create
[000d74d8] 0004371c                  dc.l Ast_delete
[000d74dc] 00049e38                  dc.l Aic_create
[000d74e0] 0004a094                  dc.l Aic_delete
[000d74e4] 0004a110                  dc.l Aim_create
[000d74e8] 0004a13c                  dc.l Aim_delete
[000d74ec] 00063316                  dc.l Aus_create23x
[000d74f0] 0004a238                  dc.l Aus_delete
[000d74f4] 0004a146                  dc.l Ate_create
[000d74f8] 0004a1be                  dc.l Ate_delete
[000d74fc] 00047cc8                  dc.l Ax_malloc
[000d7500] 00047e26                  dc.l Ax_free
[000d7504] 00047d6c                  dc.l Ax_ifree
[000d7508] 000630e2                  dc.l Ax_mterm
[000d750c] 0005ef42                  dc.l Awi_nokey
[000d7510] 0004a904                  dc.l Aob_alias
[000d7514] 0005f8ee                  dc.l A_dialog
[000d7518] 0005ef8c                  dc.l alert_str
[000d751c] 0005f94a                  dc.l intersect
[000d7520] 000593fc                  dc.l A_checkbox
[000d7524] 000593ea                  dc.l A_radiobutton
[000d7528] 00059f9c                  dc.l A_innerframe
[000d752c] 0005b032                  dc.l A_pattern
[000d7530] 0005b212                  dc.l A_arrows
[000d7534] 00044840                  dc.l Adr_start
[000d7538] 0005b5a0                  dc.l A_select
[000d753c] 0004e614                  dc.l Ash_prog
[000d7540] 0005ff74                  dc.l Af_select
[000d7544] 0005b6f4                  dc.l A_ftext
[000d7548] 0005ad8e                  dc.l A_title
[000d754c] 0005a4e2                  dc.l A_3Dbutton
[000d7550] 0005bd1e                  dc.l A_cycle
[000d7554] 0005ca2a                  dc.l A_picture
[000d7558] 0005bae4                  dc.l Auo_ftext
[000d755c] 00059318                  dc.l Auo_string
[000d7560] 0005c2fa                  dc.l Auo_cycle
[000d7564] 0005c8b6                  dc.l Aus_cycle
[000d7568] 0005cf28                  dc.l Auo_picture
[000d756c] 0005f8f6                  dc.l A_dialog2
[000d7570] 0004a34e                  dc.l Aob_icon
[000d7574] 0004fbf8                  dc.l Awi_modal
[000d7578] 00051292                  dc.l Awi_dialog
[000d757c] 000517fe                  dc.l Awi_alert
[000d7580] 0004f0ee                  dc.l Awi_selfcreate
[000d7584] 0004ad60                  dc.l Aev_release
[000d7588] 0004afe0                  dc.l Aob_puttext
[000d758c] 0004b154                  dc.l Aob_gettext
[000d7590] 0005ef64                  dc.l Aob_within
[000d7594] 0005f9ce                  dc.l xywh2array
[000d7598] 0005f9ec                  dc.l array2xywh
[000d759c] 00044242                  dc.l dotted_xline
[000d75a0] 000442e2                  dc.l dotted_yline
[000d75a4] 000526c2                  dc.l Ash_error
[000d75a8] 00072bf4                  dc.l Ash_getcookie
[000d75ac] 00041b4e                  dc.l nkc_tos2
[000d75b0] 00041e70                  dc.l nkc_gem2n
[000d75b4] 00041cc2                  dc.l nkc_n2to
[000d75b8] 00041ec2                  dc.l nkc_n2gem
[000d75bc] 00041ef0                  dc.l nkc_kstate
[000d75c0] 00041f24                  dc.l nkc_cmp
[000d75c4] 0004dae4                  dc.l Abp_mfdb2img
[000d75c8] 0004dedc                  dc.l Abp_img2mfdb
[000d75cc] 0004afac                  dc.l Aob_printf
[000d75d0] 0004b0b2                  dc.l Aob_scanf
[000d75d4] 000470f8                  dc.l Af_2drv
[000d75d8] 0004712c                  dc.l Af_2path
[000d75dc] 000471de                  dc.l Af_2name
[000d75e0] 00047246                  dc.l Af_2fullname
[000d75e4] 00047286                  dc.l Af_2ext
[000d75e8] 000472d6                  dc.l Af_buildname
[000d75ec] 000473bc                  dc.l Af_length
[000d75f0] 0005faca                  dc.l Ascrp_clear
[000d75f4] 0005fbba                  dc.l Ascrp_get
[000d75f8] 0005fd30                  dc.l Ascrp_put
[000d75fc] 00052908                  dc.l Ash_getenv
[000d7600] 00054250                  dc.l Ash_nextdd
[000d7604] 00054186                  dc.l Ash_sendall
[000d7608] 000601ea                  dc.l Af_first_fsel
[000d760c] 0006036a                  dc.l Af_next_fsel
[000d7610] 00041e2e                  dc.l nkc_tolower
[000d7614] 00041e1e                  dc.l nkc_toupper
[000d7618] 00051e1c                  dc.l Awi_update
[000d761c] 0005e9d2                  dc.l A_boxed
[000d7620] 0005e010                  dc.l Auo_boxed
[000d7624] 0005dc3a                  dc.l Aus_boxed
[000d7628] 0004b5cc                  dc.l Awi_uoself
[000d762c] 0004798a                  dc.l Af_first
[000d7630] 000479c8                  dc.l Af_next
[000d7634] 00047896                  dc.l Af_readdir
[000d7638] 0004795e                  dc.l Af_freedir
[000d763c] 00062a5e                  dc.l Alu_create
[000d7640] 00062aa6                  dc.l Alu_delete
[000d7644] 0004204e                  dc.l Acfg_create
[000d7648] 000420a0                  dc.l Acfg_delete
[000d764c] 0004225c                  dc.l Acfg_clear
[000d7650] 0004233c                  dc.l Acfg_clearGroup
[000d7654] 0004266e                  dc.l Acfg_load
[000d7658] 00042960                  dc.l Acfg_save
[000d765c] 00042fcc                  dc.l Acfg_grpName
[000d7660] 00042ae8                  dc.l Acfg_getValue
[000d7664] 00042bf4                  dc.l Acfg_setValue
[000d7668] 00042d52                  dc.l Acfg_clearValue
[000d766c] 00043200                  dc.l x43200
[000d7670] 0004323e                  dc.l Acfg_headAnzahl
[000d7674] 00043244                  dc.l Acfg_setHeader
[000d7678] 000432b4                  dc.l Acfg_getHeader
[000d767c] 00042fd2                  dc.l Acfg_strAnzahl
[000d7680] 00042fd8                  dc.l Acfg_isGroupPresent
[000d7684] 0004300a                  dc.l Acfg_isStringPresent
[000d7688] 0004309a                  dc.l Acfg_strIsComment
[000d768c] 000432f4                  dc.l Acfg_isCfgfile
[000d7690] 00042110                  dc.l Acfg_createInfo
[000d7694] 00042144                  dc.l Acfg_deleteInfo
[000d7698] 00042238                  dc.l Acfg_setInfo
[000d769c] 0004224c                  dc.l Acfg_getInfo
[000d76a0] 000421e2                  dc.l Acfg_copyInfo
[000d76a4] 00043736                  dc.l Ach_tolower
[000d76a8] 0004372c                  dc.l Ach_toupper
[000d76ac] 00043a74                  dc.l Ach_isWhite
[000d76b0] 00043772                  dc.l Ast_tolower
[000d76b4] 00043740                  dc.l Ast_toupper
[000d76b8] 000437a4                  dc.l Ast_ltrim
[000d76bc] 000437e8                  dc.l Ast_rtrim
[000d76c0] 0004383a                  dc.l Ast_alltrim
[000d76c4] 00043856                  dc.l Ast_cmp
[000d76c8] 000438ac                  dc.l Ast_icmp
[000d76cc] 00043a92                  dc.l Ast_isEmpty
[000d76d0] 00043ac8                  dc.l Ast_add
[000d76d4] 00043b5e                  dc.l Ast_adl
[000d76d8] 00043b96                  dc.l Ast_adr
[000d76dc] 00043bde                  dc.l Ast_adc
[000d76e0] 00043c24                  dc.l Ast_filter
[000d76e4] 00043c98                  dc.l Ast_count
[000d76e8] 00043d6e                  dc.l Ast_fcmp
[000d76ec] 00051612                  dc.l Awi_doform
[000d76f0] 00063314                  dc.l noop
[000d76f4] 00063314                  dc.l noop
[000d76f8] 00063314                  dc.l noop
[000d76fc] 00063314                  dc.l noop
[000d7700] 00063314                  dc.l noop
[000d7704] 00063314                  dc.l noop
[000d7708] 00063314                  dc.l noop
[000d770c] 00063314                  dc.l noop
[000d7710] 00063314                  dc.l noop
[000d7714] 00063314                  dc.l noop
ACS230:
[000d7718] 0004e5ea                  dc.l Awi_wid
[000d771c] 0004e608                  dc.l Awi_root
[000d7720] 0004ef2a                  dc.l Awi_list
[000d7724] 0004ef62                  dc.l Awi_sendall
[000d7728] 0004f068                  dc.l Awi_down
[000d772c] 0004f006                  dc.l Awi_up
[000d7730] 0004f0ca                  dc.l Awi_show
[000d7734] 0004e610                  dc.l Awi_init
[000d7738] 00063474                  dc.l Awi_create23x
[000d773c] 0004f69e                  dc.l Awi_open
[000d7740] 0005013e                  dc.l Awi_closed
[000d7744] 00050330                  dc.l Awi_delete
[000d7748] 00050454                  dc.l Awi_topped
[000d774c] 00050496                  dc.l Awi_fulled
[000d7750] 000506ca                  dc.l Awi_sized
[000d7754] 000507bc                  dc.l Awi_moved
[000d7758] 0004b286                  dc.l Awi_diaend
[000d775c] 0004b33c                  dc.l Awi_diastart
[000d7760] 0005ef2c                  dc.l Awi_keys
[000d7764] 0004c19e                  dc.l Awi_obview
[000d7768] 00051276                  dc.l Awi_service
[000d776c] 0004d468                  dc.l Awi_scroll
[000d7770] 0004b600                  dc.l Awi_obchange
[000d7774] 0004b846                  dc.l Awi_obredraw
[000d7778] 0004b8cc                  dc.l Awi_redraw
[000d777c] 00063652                  dc.l Awi_arrowed23x
[000d7780] 0004beea                  dc.l Awi_hslid
[000d7784] 0004bf56                  dc.l Awi_vslid
[000d7788] 00047066                  dc.l Af_cfgfile
[000d778c] 0004640a                  dc.l Aev_quit
[000d7790] 00046d70                  dc.l Aev_mess
[000d7794] 000463f4                  dc.l Aev_unhidepointer
[000d7798] 00049898                  dc.l Amo_new
[000d779c] 00049902                  dc.l Amo_busy
[000d77a0] 00049940                  dc.l Amo_unbusy
[000d77a4] 00049970                  dc.l Amo_hide
[000d77a8] 00049994                  dc.l Amo_show
[000d77ac] 00063356                  dc.l Aob_create23x
[000d77b0] 00049b7c                  dc.l Aob_delete
[000d77b4] 0004a25e                  dc.l Aob_fix
[000d77b8] 0004a3be                  dc.l Aob_offset
[000d77bc] 0004a548                  dc.l Aob_save
[000d77c0] 0004a64c                  dc.l Aob_restore
[000d77c4] 0004ab5e                  dc.l Aob_watch
[000d77c8] 0004aeca                  dc.l Aob_findflag
[000d77cc] 0004af6c                  dc.l Aob_up
[000d77d0] 0004975e                  dc.l Ame_namefix
[000d77d4] 0004948a                  dc.l Ame_popup
[000d77d8] 0004d928                  dc.l Abp_create
[000d77dc] 0004d996                  dc.l Abp_delete
[000d77e0] 0004d9a2                  dc.l Abp_start
[000d77e4] 0004da54                  dc.l Abp_end
[000d77e8] 00044cd6                  dc.l Adr_box
[000d77ec] 0004557a                  dc.l Adr_drag
[000d77f0] 0004484c                  dc.l Adr_next
[000d77f4] 0004487c                  dc.l Adr_add
[000d77f8] 0004492a                  dc.l Adr_del
[000d77fc] 00044a26                  dc.l Adr_unselect
[000d7800] 000436d6                  dc.l Ast_create
[000d7804] 0004371c                  dc.l Ast_delete
[000d7808] 00049e38                  dc.l Aic_create
[000d780c] 0004a094                  dc.l Aic_delete
[000d7810] 0004a110                  dc.l Aim_create
[000d7814] 0004a13c                  dc.l Aim_delete
[000d7818] 00063316                  dc.l Aus_create23x
[000d781c] 0004a238                  dc.l Aus_delete
[000d7820] 0004a146                  dc.l Ate_create
[000d7824] 0004a1be                  dc.l Ate_delete
[000d7828] 00047cc8                  dc.l Ax_malloc
[000d782c] 00047e26                  dc.l Ax_free
[000d7830] 00047d6c                  dc.l Ax_ifree
[000d7834] 000630e2                  dc.l Ax_mterm
[000d7838] 0005ef42                  dc.l Awi_nokey
[000d783c] 0004a904                  dc.l Aob_alias
[000d7840] 0005f8ee                  dc.l A_dialog
[000d7844] 0005ef8c                  dc.l alert_str
[000d7848] 0005f94a                  dc.l intersect
[000d784c] 000593fc                  dc.l A_checkbox
[000d7850] 000593ea                  dc.l A_radiobutton
[000d7854] 00059f9c                  dc.l A_innerframe
[000d7858] 0005b032                  dc.l A_pattern
[000d785c] 0005b212                  dc.l A_arrows
[000d7860] 00044840                  dc.l Adr_start
[000d7864] 0005b5a0                  dc.l A_select
[000d7868] 0004e614                  dc.l Ash_prog
[000d786c] 0005ff74                  dc.l Af_select
[000d7870] 0005b6f4                  dc.l A_ftext
[000d7874] 0005ad8e                  dc.l A_title
[000d7878] 0005a4e2                  dc.l A_3Dbutton
[000d787c] 0005bd1e                  dc.l A_cycle
[000d7880] 0005ca2a                  dc.l A_picture
[000d7884] 0005bae4                  dc.l Auo_ftext
[000d7888] 00059318                  dc.l Auo_string
[000d788c] 0005c2fa                  dc.l Auo_cycle
[000d7890] 0005c8b6                  dc.l Aus_cycle
[000d7894] 0005cf28                  dc.l Auo_picture
[000d7898] 0005f8f6                  dc.l A_dialog2
[000d789c] 0004a34e                  dc.l Aob_icon
[000d78a0] 0004fbf8                  dc.l Awi_modal
[000d78a4] 00051292                  dc.l Awi_dialog
[000d78a8] 000517fe                  dc.l Awi_alert
[000d78ac] 0004f0ee                  dc.l Awi_selfcreate
[000d78b0] 0004ad60                  dc.l Aev_release
[000d78b4] 0004afe0                  dc.l Aob_puttext
[000d78b8] 0004b154                  dc.l Aob_gettext
[000d78bc] 0005ef64                  dc.l Aob_within
[000d78c0] 0005f9ce                  dc.l xywh2array
[000d78c4] 0005f9ec                  dc.l array2xywh
[000d78c8] 00044242                  dc.l dotted_xline
[000d78cc] 000442e2                  dc.l dotted_yline
[000d78d0] 000526c2                  dc.l Ash_error
[000d78d4] 00072bf4                  dc.l Ash_getcookie
[000d78d8] 00041b4e                  dc.l nkc_tos2
[000d78dc] 00041e70                  dc.l nkc_gem2n
[000d78e0] 00041cc2                  dc.l nkc_n2to
[000d78e4] 00041ec2                  dc.l nkc_n2gem
[000d78e8] 00041ef0                  dc.l nkc_kstate
[000d78ec] 00041f24                  dc.l nkc_cmp
[000d78f0] 0004dae4                  dc.l Abp_mfdb2img
[000d78f4] 0004dedc                  dc.l Abp_img2mfdb
[000d78f8] 0004afac                  dc.l Aob_printf
[000d78fc] 0004b0b2                  dc.l Aob_scanf
[000d7900] 000470f8                  dc.l Af_2drv
[000d7904] 0004712c                  dc.l Af_2path
[000d7908] 000471de                  dc.l Af_2name
[000d790c] 00047246                  dc.l Af_2fullname
[000d7910] 00047286                  dc.l Af_2ext
[000d7914] 000472d6                  dc.l Af_buildname
[000d7918] 000473bc                  dc.l Af_length
[000d791c] 0005faca                  dc.l Ascrp_clear
[000d7920] 0005fbba                  dc.l Ascrp_get
[000d7924] 0005fd30                  dc.l Ascrp_put
[000d7928] 00052908                  dc.l Ash_getenv
[000d792c] 00054250                  dc.l Ash_nextdd
[000d7930] 00054186                  dc.l Ash_sendall
[000d7934] 000601ea                  dc.l Af_first_fsel
[000d7938] 0006036a                  dc.l Af_next_fsel
[000d793c] 00041e2e                  dc.l nkc_tolower
[000d7940] 00041e1e                  dc.l nkc_toupper
[000d7944] 00051e1c                  dc.l Awi_update
[000d7948] 0005e9d2                  dc.l A_boxed
[000d794c] 0005e010                  dc.l Auo_boxed
[000d7950] 0005dc3a                  dc.l Aus_boxed
[000d7954] 0004b5cc                  dc.l Awi_uoself
[000d7958] 0006365c                  dc.l Af_first230
[000d795c] 00063666                  dc.l Af_next230
[000d7960] 00047896                  dc.l Af_readdir
[000d7964] 0004795e                  dc.l Af_freedir
[000d7968] 00062a5e                  dc.l Alu_create
[000d796c] 00062aa6                  dc.l Alu_delete
[000d7970] 0004204e                  dc.l Acfg_create
[000d7974] 000420a0                  dc.l Acfg_delete
[000d7978] 0004225c                  dc.l Acfg_clear
[000d797c] 0004233c                  dc.l Acfg_clearGroup
[000d7980] 0004266e                  dc.l Acfg_load
[000d7984] 00042960                  dc.l Acfg_save
[000d7988] 00042fcc                  dc.l Acfg_grpName
[000d798c] 00042ae8                  dc.l Acfg_getValue
[000d7990] 00042bf4                  dc.l Acfg_setValue
[000d7994] 00042d52                  dc.l Acfg_clearValue
[000d7998] 00043200                  dc.l x43200
[000d799c] 0004323e                  dc.l Acfg_headAnzahl
[000d79a0] 00043244                  dc.l Acfg_setHeader
[000d79a4] 000432b4                  dc.l Acfg_getHeader
[000d79a8] 00042fd2                  dc.l Acfg_strAnzahl
[000d79ac] 00042fd8                  dc.l Acfg_isGroupPresent
[000d79b0] 0004300a                  dc.l Acfg_isStringPresent
[000d79b4] 0004309a                  dc.l Acfg_strIsComment
[000d79b8] 000432f4                  dc.l Acfg_isCfgfile
[000d79bc] 00042110                  dc.l Acfg_createInfo
[000d79c0] 00042144                  dc.l Acfg_deleteInfo
[000d79c4] 00042238                  dc.l Acfg_setInfo
[000d79c8] 0004224c                  dc.l Acfg_getInfo
[000d79cc] 000421e2                  dc.l Acfg_copyInfo
[000d79d0] 00043736                  dc.l Ach_tolower
[000d79d4] 0004372c                  dc.l Ach_toupper
[000d79d8] 00043a74                  dc.l Ach_isWhite
[000d79dc] 00043772                  dc.l Ast_tolower
[000d79e0] 00043740                  dc.l Ast_toupper
[000d79e4] 000437a4                  dc.l Ast_ltrim
[000d79e8] 000437e8                  dc.l Ast_rtrim
[000d79ec] 0004383a                  dc.l Ast_alltrim
[000d79f0] 00043856                  dc.l Ast_cmp
[000d79f4] 000438ac                  dc.l Ast_icmp
[000d79f8] 00043a92                  dc.l Ast_isEmpty
[000d79fc] 00043ac8                  dc.l Ast_add
[000d7a00] 00043b5e                  dc.l Ast_adl
[000d7a04] 00043b96                  dc.l Ast_adr
[000d7a08] 00043bde                  dc.l Ast_adc
[000d7a0c] 00043c24                  dc.l Ast_filter
[000d7a10] 00043c98                  dc.l Ast_count
[000d7a14] 00043d6e                  dc.l Ast_fcmp
[000d7a18] 00051612                  dc.l Awi_doform
[000d7a1c] 00063314                  dc.l noop
[000d7a20] 00063314                  dc.l noop
[000d7a24] 00063314                  dc.l noop
[000d7a28] 00063314                  dc.l noop
[000d7a2c] 00063314                  dc.l noop
[000d7a30] 00063314                  dc.l noop
[000d7a34] 00063314                  dc.l noop
[000d7a38] 00063314                  dc.l noop
[000d7a3c] 00063314                  dc.l noop
[000d7a40] 00063314                  dc.l noop
