
ACSinitialize:
[00040cc6] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00040cca] 594f                      subq.w     #4,a7
[00040ccc] 45f9 0010 1f12            lea.l      ACSblk,a2
[00040cd2] 4eb9 0004 7bf6            jsr        INmemory
[00040cd8] 5240                      addq.w     #1,d0
[00040cda] 6700 011c                 beq        ACSinitialize_1
[00040cde] 43d7                      lea.l      (a7),a1
[00040ce0] 41ef 0002                 lea.l      2(a7),a0
[00040ce4] 4eb9 0004 0ee0            jsr        InitAES
[00040cea] 4a40                      tst.w      d0
[00040cec] 6600 010a                 bne        ACSinitialize_1
[00040cf0] 91c8                      suba.l     a0,a0
[00040cf2] 4241                      clr.w      d1
[00040cf4] 7004                      moveq.l    #4,d0
[00040cf6] 4eb9 0004 1b22            jsr        nkc_init
[00040cfc] 43d7                      lea.l      (a7),a1
[00040cfe] 41ef 0002                 lea.l      2(a7),a0
[00040d02] 4eb9 0004 0fa8            jsr        InitVDI
[00040d08] 4a40                      tst.w      d0
[00040d0a] 6600 00ec                 bne        ACSinitialize_1
[00040d0e] 4eb9 0004 122e            jsr        InitMagiC
[00040d14] 4a40                      tst.w      d0
[00040d16] 6600 00e0                 bne        ACSinitialize_1
[00040d1a] 4eb9 0004 12a4            jsr        InitNAES
[00040d20] 4a40                      tst.w      d0
[00040d22] 6600 00d4                 bne        ACSinitialize_1
[00040d26] 2052                      movea.l    (a2),a0
[00040d28] 3179 000d 9eb4 0236       move.w     _app,566(a0)
[00040d30] 2052                      movea.l    (a2),a0
[00040d32] 2268 0280                 movea.l    640(a0),a1
[00040d36] 0c69 0001 0002            cmpi.w     #$0001,2(a1)
[00040d3c] 6704                      beq.s      ACSinitialize_2
[00040d3e] 7001                      moveq.l    #1,d0
[00040d40] 6002                      bra.s      ACSinitialize_3
ACSinitialize_2:
[00040d42] 4240                      clr.w      d0
ACSinitialize_3:
[00040d44] 2052                      movea.l    (a2),a0
[00040d46] 3140 0238                 move.w     d0,568(a0)
[00040d4a] 2052                      movea.l    (a2),a0
[00040d4c] 317c ffff 03da            move.w     #$FFFF,986(a0)
[00040d52] 4eb9 0004 9870            jsr        INmouse
[00040d58] 5240                      addq.w     #1,d0
[00040d5a] 6700 009c                 beq        ACSinitialize_1
[00040d5e] 4eb9 0004 9902            jsr        Amo_busy
[00040d64] 4eb9 0005 8ab4            jsr        INuserobj
[00040d6a] 5240                      addq.w     #1,d0
[00040d6c] 6700 008a                 beq        ACSinitialize_1
[00040d70] 4eb9 0004 1738            jsr        InitScrap
[00040d76] 4a40                      tst.w      d0
[00040d78] 6600 007e                 bne.w      ACSinitialize_1
[00040d7c] 41f9 000d 2d48            lea.l      $000D2D48,a0
[00040d82] 4eb9 0005 2908            jsr        Ash_getenv
[00040d88] 2648                      movea.l    a0,a3
[00040d8a] 200b                      move.l     a3,d0
[00040d8c] 6704                      beq.s      ACSinitialize_4
[00040d8e] 1010                      move.b     (a0),d0
[00040d90] 6616                      bne.s      ACSinitialize_5
ACSinitialize_4:
[00040d92] 41f9 000d 2d4b            lea.l      $000D2D4B,a0
[00040d98] 4eb9 0005 2908            jsr        Ash_getenv
[00040d9e] 2648                      movea.l    a0,a3
[00040da0] 200b                      move.l     a3,d0
[00040da2] 6712                      beq.s      ACSinitialize_6
[00040da4] 1010                      move.b     (a0),d0
[00040da6] 670e                      beq.s      ACSinitialize_6
ACSinitialize_5:
[00040da8] 224b                      movea.l    a3,a1
[00040daa] 2052                      movea.l    (a2),a0
[00040dac] 41e8 03e6                 lea.l      998(a0),a0
[00040db0] 4eb9 0007 6950            jsr        strcpy
ACSinitialize_6:
[00040db6] 7001                      moveq.l    #1,d0
[00040db8] 4eb9 0007 2b06            jsr        Pdomain
[00040dbe] 4eb9 0004 12cc            jsr        InitPaths
[00040dc4] 4a40                      tst.w      d0
[00040dc6] 6630                      bne.s      ACSinitialize_1
[00040dc8] 2052                      movea.l    (a2),a0
[00040dca] 2068 02b0                 movea.l    688(a0),a0
[00040dce] 4e90                      jsr        (a0)
[00040dd0] 4a40                      tst.w      d0
[00040dd2] 6624                      bne.s      ACSinitialize_1
[00040dd4] 4eb9 0004 0e94            jsr        InitCfg
[00040dda] 4eb9 0005 3a5e            jsr        INMsgService
[00040de0] 4a40                      tst.w      d0
[00040de2] 6614                      bne.s      ACSinitialize_1
[00040de4] 4eb9 0004 1604            jsr        InitProtocol
[00040dea] 4a40                      tst.w      d0
[00040dec] 660a                      bne.s      ACSinitialize_1
[00040dee] 4eb9 0004 e246            jsr        INwindow
[00040df4] 5240                      addq.w     #1,d0
[00040df6] 6604                      bne.s      ACSinitialize_7
ACSinitialize_1:
[00040df8] 70ff                      moveq.l    #-1,d0
[00040dfa] 602c                      bra.s      ACSinitialize_8
ACSinitialize_7:
[00040dfc] 4eb9 0004 e608            jsr        Awi_root
[00040e02] 2252                      movea.l    (a2),a1
[00040e04] 2348 0258                 move.l     a0,600(a1)
[00040e08] 2079 0009 bfde            movea.l    $0009BFDE,a0
[00040e0e] 4e90                      jsr        (a0)
[00040e10] 3600                      move.w     d0,d3
[00040e12] 4eb9 0004 98d8            jsr        Amo_point
[00040e18] 4eb9 0004 9940            jsr        Amo_unbusy
[00040e1e] 4240                      clr.w      d0
[00040e20] 4eb9 0005 1e1c            jsr        Awi_update
[00040e26] 3003                      move.w     d3,d0
ACSinitialize_8:
[00040e28] 584f                      addq.w     #4,a7
[00040e2a] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00040e2e] 4e75                      rts

ACSterminate:
[00040e30] 3039 000d 2cfc            move.w     aes_open,d0
[00040e36] 6752                      beq.s      ACSterminate_1
[00040e38] 4eb9 0004 e3c6            jsr        TRwindow
[00040e3e] 4eb9 0005 8f2c            jsr        TRuserobj
[00040e44] 4eb9 0004 9890            jsr        TRmouse
[00040e4a] 4240                      clr.w      d0
[00040e4c] 4eb9 0005 1e1c            jsr        Awi_update
[00040e52] 4eb9 0004 1852            jsr        TermProtocol
[00040e58] 4eb9 0005 3aac            jsr        TRMsgService
[00040e5e] 4eb9 0004 204a            jsr        nkc_exit
[00040e64] 4eb9 0004 18e2            jsr        TermVDI
[00040e6a] 4eb9 0004 192a            jsr        TermAES
[00040e70] 2079 0010 1f12            movea.l    ACSblk,a0
[00040e76] 2028 04ea                 move.l     1258(a0),d0
[00040e7a] 6708                      beq.s      ACSterminate_2
[00040e7c] 2040                      movea.l    d0,a0
[00040e7e] 4eb9 0004 20a0            jsr        Acfg_delete
ACSterminate_2:
[00040e84] 4eb9 0004 7c5c            jsr        TRmemory
ACSterminate_1:
[00040e8a] 4e75                      rts

_acs_boot:
[00040e8c] 3038 0446                 move.w     ($00000446).w,d0
[00040e90] 48c0                      ext.l      d0
[00040e92] 4e75                      rts

InitCfg:
[00040e94] 2f0a                      move.l     a2,-(a7)
[00040e96] 45f9 0009 bf94            lea.l      ACSconfig,a2
[00040e9c] 2052                      movea.l    (a2),a0
[00040e9e] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00040ea4] 4a40                      tst.w      d0
[00040ea6] 6712                      beq.s      InitCfg_1
[00040ea8] 2079 0010 1f12            movea.l    ACSblk,a0
[00040eae] 41e8 0220                 lea.l      544(a0),a0
[00040eb2] 4eb9 0004 7066            jsr        Af_cfgfile
[00040eb8] 2488                      move.l     a0,(a2)
InitCfg_1:
[00040eba] 2079 0010 1f12            movea.l    ACSblk,a0
[00040ec0] 2028 04ea                 move.l     1258(a0),d0
[00040ec4] 6614                      bne.s      InitCfg_2
[00040ec6] 204a                      movea.l    a2,a0
[00040ec8] 7001                      moveq.l    #1,d0
[00040eca] 4eb9 0004 204e            jsr        Acfg_create
[00040ed0] 2279 0010 1f12            movea.l    ACSblk,a1
[00040ed6] 2348 04ea                 move.l     a0,1258(a1)
InitCfg_2:
[00040eda] 4240                      clr.w      d0
[00040edc] 245f                      movea.l    (a7)+,a2
[00040ede] 4e75                      rts

InitAES:
[00040ee0] 48e7 0038                 movem.l    a2-a4,-(a7)
[00040ee4] 2848                      movea.l    a0,a4
[00040ee6] 2649                      movea.l    a1,a3
[00040ee8] 3039 000d 2cfa            move.w     AesInit,d0
[00040eee] 5279 000d 2cfa            addq.w     #1,AesInit
[00040ef4] 4a40                      tst.w      d0
[00040ef6] 6600 00a8                 bne        InitAES_1
[00040efa] 45f9 0010 1f12            lea.l      ACSblk,a2
[00040f00] 2079 000d 99d6            movea.l    _globl,a0
[00040f06] 4eb9 0006 a74c            jsr        mt_appl_init
[00040f0c] 2052                      movea.l    (a2),a0
[00040f0e] 3080                      move.w     d0,(a0)
[00040f10] 4a40                      tst.w      d0
[00040f12] 6a06                      bpl.s      InitAES_2
[00040f14] 70ff                      moveq.l    #-1,d0
[00040f16] 6000 008a                 bra        InitAES_3
InitAES_2:
[00040f1a] 2f39 000d 99d6            move.l     _globl,-(a7)
[00040f20] 2052                      movea.l    (a2),a0
[00040f22] 4868 0006                 pea.l      6(a0)
[00040f26] 4868 0004                 pea.l      4(a0)
[00040f2a] 224b                      movea.l    a3,a1
[00040f2c] 204c                      movea.l    a4,a0
[00040f2e] 4eb9 0006 c7ee            jsr        mt_graf_handle
[00040f34] 4fef 000c                 lea.l      12(a7),a7
[00040f38] 2052                      movea.l    (a2),a0
[00040f3a] 3140 0002                 move.w     d0,2(a0)
[00040f3e] 2052                      movea.l    (a2),a0
[00040f40] 3140 0010                 move.w     d0,16(a0)
[00040f44] 2052                      movea.l    (a2),a0
[00040f46] 4868 000e                 pea.l      14(a0)
[00040f4a] 4868 000c                 pea.l      12(a0)
[00040f4e] 4868 000a                 pea.l      10(a0)
[00040f52] 4868 0008                 pea.l      8(a0)
[00040f56] 7204                      moveq.l    #4,d1
[00040f58] 4240                      clr.w      d0
[00040f5a] 4eb9 0007 14ea            jsr        wind_get
[00040f60] 4fef 0010                 lea.l      16(a7),a7
[00040f64] 2052                      movea.l    (a2),a0
[00040f66] 2268 0280                 movea.l    640(a0),a1
[00040f6a] 0c51 0400                 cmpi.w     #$0400,(a1)
[00040f6e] 6c10                      bge.s      InitAES_4
[00040f70] 0c79 0300 0010 2620       cmpi.w     #$0300,_ACSv_magix
[00040f78] 6c06                      bge.s      InitAES_4
[00040f7a] 2028 0502                 move.l     1282(a0),d0
[00040f7e] 6718                      beq.s      InitAES_5
InitAES_4:
[00040f80] 2f39 000d 99d6            move.l     _globl,-(a7)
[00040f86] 93c9                      suba.l     a1,a1
[00040f88] 91c8                      suba.l     a0,a0
[00040f8a] 4242                      clr.w      d2
[00040f8c] 7201                      moveq.l    #1,d1
[00040f8e] 7009                      moveq.l    #9,d0
[00040f90] 4eb9 0006 da26            jsr        mt_shel_write
[00040f96] 584f                      addq.w     #4,a7
InitAES_5:
[00040f98] 33fc 0001 000d 2cfc       move.w     #$0001,aes_open
InitAES_1:
[00040fa0] 4240                      clr.w      d0
InitAES_3:
[00040fa2] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00040fa6] 4e75                      rts

InitVDI:
[00040fa8] 48e7 103a                 movem.l    d3/a2-a4/a6,-(a7)
[00040fac] 4fef ff88                 lea.l      -120(a7),a7
[00040fb0] 2c48                      movea.l    a0,a6
[00040fb2] 2f49 0074                 move.l     a1,116(a7)
[00040fb6] 4243                      clr.w      d3
[00040fb8] 49f9 000d 2d30            lea.l      dum_ob,a4
[00040fbe] 302c ffc8                 move.w     -56(a4),d0
[00040fc2] 526c ffc8                 addq.w     #1,-56(a4)
[00040fc6] 4a40                      tst.w      d0
[00040fc8] 6600 0258                 bne        InitVDI_1
[00040fcc] 45f9 0010 1f12            lea.l      ACSblk,a2
[00040fd2] 2052                      movea.l    (a2),a0
[00040fd4] 2252                      movea.l    (a2),a1
[00040fd6] 3368 0002 0010            move.w     2(a0),16(a1)
[00040fdc] 47ef 0002                 lea.l      2(a7),a3
[00040fe0] 4853                      pea.l      (a3)
[00040fe2] 2252                      movea.l    (a2),a1
[00040fe4] 43e9 0010                 lea.l      16(a1),a1
[00040fe8] 41ec ffce                 lea.l      -50(a4),a0
[00040fec] 4eb9 0006 3bfa            jsr        v_opnvwk
[00040ff2] 584f                      addq.w     #4,a7
[00040ff4] 7001                      moveq.l    #1,d0
[00040ff6] 4eb9 0005 1e1c            jsr        Awi_update
[00040ffc] 2052                      movea.l    (a2),a0
[00040ffe] 316b 0014 0284            move.w     20(a3),644(a0)
[00041004] 2052                      movea.l    (a2),a0
[00041006] 316b 001a 001a            move.w     26(a3),26(a0)
[0004100c] 204b                      movea.l    a3,a0
[0004100e] 7201                      moveq.l    #1,d1
[00041010] 2252                      movea.l    (a2),a1
[00041012] 3029 0010                 move.w     16(a1),d0
[00041016] 4eb9 0006 7090            jsr        vq_extnd
[0004101c] 2052                      movea.l    (a2),a0
[0004101e] 316b 0008 001c            move.w     8(a3),28(a0)
[00041024] 2052                      movea.l    (a2),a0
[00041026] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[0004102c] 6c06                      bge.s      InitVDI_2
[0004102e] 317c 0041 02b4            move.w     #$0041,692(a0)
InitVDI_2:
[00041034] 2052                      movea.l    (a2),a0
[00041036] 2268 0280                 movea.l    640(a0),a1
[0004103a] 0c51 0400                 cmpi.w     #$0400,(a1)
[0004103e] 6d54                      blt.s      InitVDI_3
[00041040] 2f39 000d 99d6            move.l     _globl,-(a7)
[00041046] 486f 0004                 pea.l      4(a7)
[0004104a] 486f 0008                 pea.l      8(a7)
[0004104e] 2248                      movea.l    a0,a1
[00041050] 43e9 0290                 lea.l      656(a1),a1
[00041054] 41e8 0292                 lea.l      658(a0),a0
[00041058] 4240                      clr.w      d0
[0004105a] 4eb9 0006 aad2            jsr        mt_appl_getinfo
[00041060] 4fef 000c                 lea.l      12(a7),a7
[00041064] 4a40                      tst.w      d0
[00041066] 672c                      beq.s      InitVDI_3
[00041068] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004106e] 486f 0004                 pea.l      4(a7)
[00041072] 486f 0008                 pea.l      8(a7)
[00041076] 2252                      movea.l    (a2),a1
[00041078] 43e9 0294                 lea.l      660(a1),a1
[0004107c] 2052                      movea.l    (a2),a0
[0004107e] 41e8 0296                 lea.l      662(a0),a0
[00041082] 7001                      moveq.l    #1,d0
[00041084] 4eb9 0006 aad2            jsr        mt_appl_getinfo
[0004108a] 4fef 000c                 lea.l      12(a7),a7
[0004108e] 4a40                      tst.w      d0
[00041090] 6600 008a                 bne        InitVDI_4
InitVDI_3:
[00041094] 3956 0014                 move.w     (a6),20(a4)
[00041098] 206f 0074                 movea.l    116(a7),a0
[0004109c] 3950 0016                 move.w     (a0),22(a4)
[000410a0] 397c 0003 fff0            move.w     #$0003,-16(a4)
[000410a6] 4267                      clr.w      -(a7)
[000410a8] 4267                      clr.w      -(a7)
[000410aa] 4267                      clr.w      -(a7)
[000410ac] 2279 000d 99d6            movea.l    _globl,a1
[000410b2] 4242                      clr.w      d2
[000410b4] 7201                      moveq.l    #1,d1
[000410b6] 4240                      clr.w      d0
[000410b8] 204c                      movea.l    a4,a0
[000410ba] 4eb9 0006 b93c            jsr        mt_objc_draw
[000410c0] 5c4f                      addq.w     #6,a7
[000410c2] 204b                      movea.l    a3,a0
[000410c4] 2252                      movea.l    (a2),a1
[000410c6] 3029 0002                 move.w     2(a1),d0
[000410ca] 4eb9 0006 72e0            jsr        vqt_attributes
[000410d0] 2052                      movea.l    (a2),a0
[000410d2] 3153 0290                 move.w     (a3),656(a0)
[000410d6] 2052                      movea.l    (a2),a0
[000410d8] 316b 000e 0292            move.w     14(a3),658(a0)
[000410de] 397c 0005 fff0            move.w     #$0005,-16(a4)
[000410e4] 4267                      clr.w      -(a7)
[000410e6] 4267                      clr.w      -(a7)
[000410e8] 4267                      clr.w      -(a7)
[000410ea] 2279 000d 99d6            movea.l    _globl,a1
[000410f0] 4242                      clr.w      d2
[000410f2] 7201                      moveq.l    #1,d1
[000410f4] 4240                      clr.w      d0
[000410f6] 204c                      movea.l    a4,a0
[000410f8] 4eb9 0006 b93c            jsr        mt_objc_draw
[000410fe] 5c4f                      addq.w     #6,a7
[00041100] 204b                      movea.l    a3,a0
[00041102] 2252                      movea.l    (a2),a1
[00041104] 3029 0002                 move.w     2(a1),d0
[00041108] 4eb9 0006 72e0            jsr        vqt_attributes
[0004110e] 2052                      movea.l    (a2),a0
[00041110] 3153 0294                 move.w     (a3),660(a0)
[00041114] 2052                      movea.l    (a2),a0
[00041116] 316b 000e 0296            move.w     14(a3),662(a0)
InitVDI_4:
[0004111c] 4243                      clr.w      d3
[0004111e] 7020                      moveq.l    #32,d0
[00041120] 2052                      movea.l    (a2),a0
[00041122] 2268 023c                 movea.l    572(a0),a1
[00041126] c069 000e                 and.w      14(a1),d0
[0004112a] 6720                      beq.s      InitVDI_5
[0004112c] 4eb9 0006 3698            jsr        vq_gdos
[00041132] 4a40                      tst.w      d0
[00041134] 6716                      beq.s      InitVDI_5
[00041136] 4241                      clr.w      d1
[00041138] 2052                      movea.l    (a2),a0
[0004113a] 3028 0010                 move.w     16(a0),d0
[0004113e] 4eb9 0006 3eba            jsr        vst_load_fonts
[00041144] 2052                      movea.l    (a2),a0
[00041146] d168 0284                 add.w      d0,644(a0)
[0004114a] 7601                      moveq.l    #1,d3
InitVDI_5:
[0004114c] 4a43                      tst.w      d3
[0004114e] 663a                      bne.s      InitVDI_6
[00041150] 2052                      movea.l    (a2),a0
[00041152] 3028 0294                 move.w     660(a0),d0
[00041156] 3f00                      move.w     d0,-(a7)
[00041158] 3200                      move.w     d0,d1
[0004115a] 3028 0010                 move.w     16(a0),d0
[0004115e] 4eb9 0006 5216            jsr        vst_font
[00041164] 321f                      move.w     (a7)+,d1
[00041166] b240                      cmp.w      d0,d1
[00041168] 6720                      beq.s      InitVDI_6
[0004116a] 4eb9 0006 3698            jsr        vq_gdos
[00041170] 4a40                      tst.w      d0
[00041172] 6716                      beq.s      InitVDI_6
[00041174] 4241                      clr.w      d1
[00041176] 2052                      movea.l    (a2),a0
[00041178] 3028 0010                 move.w     16(a0),d0
[0004117c] 4eb9 0006 3eba            jsr        vst_load_fonts
[00041182] 2052                      movea.l    (a2),a0
[00041184] d168 0284                 add.w      d0,644(a0)
[00041188] 7601                      moveq.l    #1,d3
InitVDI_6:
[0004118a] 4a43                      tst.w      d3
[0004118c] 663a                      bne.s      InitVDI_7
[0004118e] 2052                      movea.l    (a2),a0
[00041190] 3028 0290                 move.w     656(a0),d0
[00041194] 3f00                      move.w     d0,-(a7)
[00041196] 3200                      move.w     d0,d1
[00041198] 3028 0010                 move.w     16(a0),d0
[0004119c] 4eb9 0006 5216            jsr        vst_font
[000411a2] 321f                      move.w     (a7)+,d1
[000411a4] b240                      cmp.w      d0,d1
[000411a6] 6720                      beq.s      InitVDI_7
[000411a8] 4eb9 0006 3698            jsr        vq_gdos
[000411ae] 4a40                      tst.w      d0
[000411b0] 6716                      beq.s      InitVDI_7
[000411b2] 4241                      clr.w      d1
[000411b4] 2052                      movea.l    (a2),a0
[000411b6] 3028 0010                 move.w     16(a0),d0
[000411ba] 4eb9 0006 3eba            jsr        vst_load_fonts
[000411c0] 2052                      movea.l    (a2),a0
[000411c2] d168 0284                 add.w      d0,644(a0)
[000411c6] 7601                      moveq.l    #1,d3
InitVDI_7:
[000411c8] 2052                      movea.l    (a2),a0
[000411ca] 3228 0290                 move.w     656(a0),d1
[000411ce] 3028 0010                 move.w     16(a0),d0
[000411d2] 4eb9 0006 5216            jsr        vst_font
[000411d8] 2052                      movea.l    (a2),a0
[000411da] 4868 0014                 pea.l      20(a0)
[000411de] 4868 0012                 pea.l      18(a0)
[000411e2] 2248                      movea.l    a0,a1
[000411e4] 43e9 0018                 lea.l      24(a1),a1
[000411e8] 41e8 0016                 lea.l      22(a0),a0
[000411ec] 2652                      movea.l    (a2),a3
[000411ee] 322b 0292                 move.w     658(a3),d1
[000411f2] 302b 0010                 move.w     16(a3),d0
[000411f6] 4eb9 0006 50a0            jsr        vst_height
[000411fc] 504f                      addq.w     #8,a7
[000411fe] 2052                      movea.l    (a2),a0
[00041200] 2268 023c                 movea.l    572(a0),a1
[00041204] 3029 000a                 move.w     10(a1),d0
[00041208] c1e8 0012                 muls.w     18(a0),d0
[0004120c] 3340 000a                 move.w     d0,10(a1)
[00041210] 2052                      movea.l    (a2),a0
[00041212] 2268 023c                 movea.l    572(a0),a1
[00041216] 3229 000c                 move.w     12(a1),d1
[0004121a] c3e8 0014                 muls.w     20(a0),d1
[0004121e] 3341 000c                 move.w     d1,12(a1)
InitVDI_1:
[00041222] 4240                      clr.w      d0
[00041224] 4fef 0078                 lea.l      120(a7),a7
[00041228] 4cdf 5c08                 movem.l    (a7)+,d3/a2-a4/a6
[0004122c] 4e75                      rts

InitMagiC:
[0004122e] 2f0a                      move.l     a2,-(a7)
[00041230] 45f9 0010 1f12            lea.l      ACSblk,a2
[00041236] 2052                      movea.l    (a2),a0
[00041238] 41e8 04fe                 lea.l      1278(a0),a0
[0004123c] 203c 4d61 6758            move.l     #$4D616758,d0
[00041242] 4eb9 0007 2bf4            jsr        Ash_getcookie
[00041248] 4a40                      tst.w      d0
[0004124a] 6714                      beq.s      InitMagiC_1
[0004124c] 2052                      movea.l    (a2),a0
[0004124e] 2268 04fe                 movea.l    1278(a0),a1
[00041252] 2069 0008                 movea.l    8(a1),a0
[00041256] 33e8 0030 0010 2620       move.w     48(a0),_ACSv_magix
[0004125e] 600e                      bra.s      InitMagiC_2
InitMagiC_1:
[00041260] 33fc ffff 0010 2620       move.w     #$FFFF,_ACSv_magix
[00041268] 2052                      movea.l    (a2),a0
[0004126a] 42a8 04fe                 clr.l      1278(a0)
InitMagiC_2:
[0004126e] 0c79 0300 0010 2620       cmpi.w     #$0300,_ACSv_magix
[00041276] 6d0e                      blt.s      InitMagiC_3
[00041278] 2052                      movea.l    (a2),a0
[0004127a] 2268 023c                 movea.l    572(a0),a1
[0004127e] 0069 0800 000e            ori.w      #$0800,14(a1)
[00041284] 600c                      bra.s      InitMagiC_4
InitMagiC_3:
[00041286] 2052                      movea.l    (a2),a0
[00041288] 2268 023c                 movea.l    572(a0),a1
[0004128c] 0269 f7ff 000e            andi.w     #$F7FF,14(a1)
InitMagiC_4:
[00041292] 2052                      movea.l    (a2),a0
[00041294] 2268 023c                 movea.l    572(a0),a1
[00041298] 0069 0040 000e            ori.w      #$0040,14(a1)
[0004129e] 4240                      clr.w      d0
[000412a0] 245f                      movea.l    (a7)+,a2
[000412a2] 4e75                      rts

InitNAES:
[000412a4] 2079 0010 1f12            movea.l    ACSblk,a0
[000412aa] 41e8 0502                 lea.l      1282(a0),a0
[000412ae] 203c 6e41 4553            move.l     #$6E414553,d0
[000412b4] 4eb9 0007 2bf4            jsr        Ash_getcookie
[000412ba] 4a40                      tst.w      d0
[000412bc] 660a                      bne.s      InitNAES_1
[000412be] 2079 0010 1f12            movea.l    ACSblk,a0
[000412c4] 42a8 0502                 clr.l      1282(a0)
InitNAES_1:
[000412c8] 4240                      clr.w      d0
[000412ca] 4e75                      rts

InitPaths:
[000412cc] 48e7 003e                 movem.l    a2-a6,-(a7)
[000412d0] 594f                      subq.w     #4,a7
[000412d2] 45f9 0010 1f12            lea.l      ACSblk,a2
[000412d8] 47f9 000d 99d6            lea.l      _globl,a3
[000412de] 4bf9 000d 2d48            lea.l      $000D2D48,a5
[000412e4] 2052                      movea.l    (a2),a0
[000412e6] 3028 0236                 move.w     566(a0),d0
[000412ea] 6700 012e                 beq        InitPaths_1
[000412ee] 2f13                      move.l     (a3),-(a7)
[000412f0] 2248                      movea.l    a0,a1
[000412f2] 43e9 011e                 lea.l      286(a1),a1
[000412f6] 41e8 001e                 lea.l      30(a0),a0
[000412fa] 4eb9 0006 d9c6            jsr        mt_shel_read
[00041300] 584f                      addq.w     #4,a7
[00041302] 4a40                      tst.w      d0
[00041304] 6700 0206                 beq        InitPaths_2
[00041308] 2052                      movea.l    (a2),a0
[0004130a] 1028 011e                 move.b     286(a0),d0
[0004130e] 671c                      beq.s      InitPaths_3
[00041310] 4880                      ext.w      d0
[00041312] d0c0                      adda.w     d0,a0
[00041314] 4228 011f                 clr.b      287(a0)
[00041318] 2252                      movea.l    (a2),a1
[0004131a] 43e9 011f                 lea.l      287(a1),a1
[0004131e] 2052                      movea.l    (a2),a0
[00041320] 41e8 011e                 lea.l      286(a0),a0
[00041324] 4eb9 0007 6950            jsr        strcpy
[0004132a] 6024                      bra.s      InitPaths_4
InitPaths_3:
[0004132c] 2052                      movea.l    (a2),a0
[0004132e] 0c68 0001 0286            cmpi.w     #$0001,646(a0)
[00041334] 6f1a                      ble.s      InitPaths_4
[00041336] 2268 0288                 movea.l    648(a0),a1
[0004133a] 2069 0004                 movea.l    4(a1),a0
[0004133e] 1010                      move.b     (a0),d0
[00041340] 670e                      beq.s      InitPaths_4
[00041342] 2248                      movea.l    a0,a1
[00041344] 2052                      movea.l    (a2),a0
[00041346] 41e8 011e                 lea.l      286(a0),a0
[0004134a] 4eb9 0007 6950            jsr        strcpy
InitPaths_4:
[00041350] 702f                      moveq.l    #47,d0
[00041352] 2052                      movea.l    (a2),a0
[00041354] 41e8 011e                 lea.l      286(a0),a0
[00041358] 4eb9 0007 68e2            jsr        strrchr
[0004135e] 2848                      movea.l    a0,a4
[00041360] 200c                      move.l     a4,d0
[00041362] 6714                      beq.s      InitPaths_5
[00041364] 43ec 0001                 lea.l      1(a4),a1
[00041368] 2052                      movea.l    (a2),a0
[0004136a] 41e8 019e                 lea.l      414(a0),a0
[0004136e] 4eb9 0007 6950            jsr        strcpy
[00041374] 4214                      clr.b      (a4)
[00041376] 6006                      bra.s      InitPaths_6
InitPaths_5:
[00041378] 2052                      movea.l    (a2),a0
[0004137a] 4228 019e                 clr.b      414(a0)
InitPaths_6:
[0004137e] 2252                      movea.l    (a2),a1
[00041380] 43e9 001e                 lea.l      30(a1),a1
[00041384] 2052                      movea.l    (a2),a0
[00041386] 41e8 009e                 lea.l      158(a0),a0
[0004138a] 4eb9 0007 6950            jsr        strcpy
[00041390] 705c                      moveq.l    #92,d0
[00041392] 2052                      movea.l    (a2),a0
[00041394] 41e8 009e                 lea.l      158(a0),a0
[00041398] 4eb9 0007 68e2            jsr        strrchr
[0004139e] 2848                      movea.l    a0,a4
[000413a0] 200c                      move.l     a4,d0
[000413a2] 664c                      bne.s      InitPaths_7
[000413a4] 2252                      movea.l    (a2),a1
[000413a6] 1229 009e                 move.b     158(a1),d1
[000413aa] 6720                      beq.s      InitPaths_8
[000413ac] 0c29 003a 009f            cmpi.b     #$3A,159(a1)
[000413b2] 6618                      bne.s      InitPaths_8
[000413b4] 43e9 00a0                 lea.l      160(a1),a1
[000413b8] 2052                      movea.l    (a2),a0
[000413ba] 41e8 0220                 lea.l      544(a0),a0
[000413be] 4eb9 0007 6950            jsr        strcpy
[000413c4] 2052                      movea.l    (a2),a0
[000413c6] 4228 00a0                 clr.b      160(a0)
[000413ca] 6036                      bra.s      InitPaths_9
InitPaths_8:
[000413cc] 2252                      movea.l    (a2),a1
[000413ce] 43e9 009e                 lea.l      158(a1),a1
[000413d2] 2052                      movea.l    (a2),a0
[000413d4] 41e8 0220                 lea.l      544(a0),a0
[000413d8] 4eb9 0007 6950            jsr        strcpy
[000413de] 43ed 0009                 lea.l      9(a5),a1
[000413e2] 2052                      movea.l    (a2),a0
[000413e4] 41e8 009e                 lea.l      158(a0),a0
[000413e8] 4eb9 0007 6950            jsr        strcpy
[000413ee] 6012                      bra.s      InitPaths_9
InitPaths_7:
[000413f0] 524c                      addq.w     #1,a4
[000413f2] 224c                      movea.l    a4,a1
[000413f4] 2052                      movea.l    (a2),a0
[000413f6] 41e8 0220                 lea.l      544(a0),a0
[000413fa] 4eb9 0007 6950            jsr        strcpy
[00041400] 4214                      clr.b      (a4)
InitPaths_9:
[00041402] 702e                      moveq.l    #46,d0
[00041404] 2052                      movea.l    (a2),a0
[00041406] 41e8 021e                 lea.l      542(a0),a0
[0004140a] 4eb9 0007 68e2            jsr        strrchr
[00041410] 2848                      movea.l    a0,a4
[00041412] 200c                      move.l     a4,d0
[00041414] 6724                      beq.s      InitPaths_10
[00041416] 4210                      clr.b      (a0)
[00041418] 6020                      bra.s      InitPaths_10
InitPaths_1:
[0004141a] 4200                      clr.b      d0
[0004141c] 2052                      movea.l    (a2),a0
[0004141e] 1140 021e                 move.b     d0,542(a0)
[00041422] 2052                      movea.l    (a2),a0
[00041424] 1140 019e                 move.b     d0,414(a0)
[00041428] 2052                      movea.l    (a2),a0
[0004142a] 1140 001e                 move.b     d0,30(a0)
[0004142e] 2052                      movea.l    (a2),a0
[00041430] 1140 009e                 move.b     d0,158(a0)
[00041434] 2052                      movea.l    (a2),a0
[00041436] 1140 011e                 move.b     d0,286(a0)
InitPaths_10:
[0004143a] 2052                      movea.l    (a2),a0
[0004143c] 2268 023c                 movea.l    572(a0),a1
[00041440] 1029 0010                 move.b     16(a1),d0
[00041444] 6612                      bne.s      InitPaths_11
[00041446] 43ed 000b                 lea.l      11(a5),a1
[0004144a] 2068 023c                 movea.l    572(a0),a0
[0004144e] 41e8 0010                 lea.l      16(a0),a0
[00041452] 4eb9 0007 6950            jsr        strcpy
InitPaths_11:
[00041458] 2052                      movea.l    (a2),a0
[0004145a] 2268 0280                 movea.l    640(a0),a1
[0004145e] 0c51 0400                 cmpi.w     #$0400,(a1)
[00041462] 6c12                      bge.s      InitPaths_12
[00041464] 0c79 0300 0010 2620       cmpi.w     #$0300,_ACSv_magix
[0004146c] 6c08                      bge.s      InitPaths_12
[0004146e] 3028 0236                 move.w     566(a0),d0
[00041472] 6600 009e                 bne        InitPaths_13
InitPaths_12:
[00041476] 2253                      movea.l    (a3),a1
[00041478] 2052                      movea.l    (a2),a0
[0004147a] 2068 023c                 movea.l    572(a0),a0
[0004147e] 41e8 0010                 lea.l      16(a0),a0
[00041482] 2c52                      movea.l    (a2),a6
[00041484] 3016                      move.w     (a6),d0
[00041486] 4eb9 0006 b584            jsr        mt_menu_register
[0004148c] 2052                      movea.l    (a2),a0
[0004148e] 3140 03da                 move.w     d0,986(a0)
[00041492] 4def 0002                 lea.l      2(a7),a6
[00041496] 2f13                      move.l     (a3),-(a7)
[00041498] 486f 0004                 pea.l      4(a7)
[0004149c] 4856                      pea.l      (a6)
[0004149e] 224e                      movea.l    a6,a1
[000414a0] 204e                      movea.l    a6,a0
[000414a2] 4eb9 0006 c978            jsr        mt_graf_mkstate
[000414a8] 4fef 000c                 lea.l      12(a7),a7
[000414ac] 2052                      movea.l    (a2),a0
[000414ae] 3028 0236                 move.w     566(a0),d0
[000414b2] 665e                      bne.s      InitPaths_13
[000414b4] 3217                      move.w     (a7),d1
[000414b6] 675a                      beq.s      InitPaths_13
[000414b8] 2068 023c                 movea.l    572(a0),a0
[000414bc] 41e8 0010                 lea.l      16(a0),a0
[000414c0] 4eb9 0007 69b0            jsr        strlen
[000414c6] 720f                      moveq.l    #15,d1
[000414c8] b280                      cmp.l      d0,d1
[000414ca] 6404                      bcc.s      InitPaths_14
[000414cc] 2001                      move.l     d1,d0
[000414ce] 6010                      bra.s      InitPaths_15
InitPaths_14:
[000414d0] 2052                      movea.l    (a2),a0
[000414d2] 2068 023c                 movea.l    572(a0),a0
[000414d6] 41e8 0010                 lea.l      16(a0),a0
[000414da] 4eb9 0007 69b0            jsr        strlen
InitPaths_15:
[000414e0] 2052                      movea.l    (a2),a0
[000414e2] 2268 023c                 movea.l    572(a0),a1
[000414e6] 43e9 0010                 lea.l      16(a1),a1
[000414ea] 41f9 000c 96bc            lea.l      $000C96BC,a0
[000414f0] 4eb9 0007 6a1a            jsr        strncpy
[000414f6] 2253                      movea.l    (a3),a1
[000414f8] 41f9 000c 969e            lea.l      _A_ERR_ACC,a0
[000414fe] 7001                      moveq.l    #1,d0
[00041500] 4eb9 0006 be76            jsr        mt_form_alert
[00041506] 3c80                      move.w     d0,(a6)
[00041508] 5340                      subq.w     #1,d0
[0004150a] 6706                      beq.s      InitPaths_13
InitPaths_2:
[0004150c] 70ff                      moveq.l    #-1,d0
[0004150e] 6000 00ec                 bra        InitPaths_16
InitPaths_13:
[00041512] 2052                      movea.l    (a2),a0
[00041514] 4228 02d6                 clr.b      726(a0)
[00041518] 41ed 0015                 lea.l      21(a5),a0
[0004151c] 4eb9 0005 2908            jsr        Ash_getenv
[00041522] 2848                      movea.l    a0,a4
[00041524] 200c                      move.l     a4,d0
[00041526] 6620                      bne.s      InitPaths_17
[00041528] 41ed 001a                 lea.l      26(a5),a0
[0004152c] 4eb9 0005 2908            jsr        Ash_getenv
[00041532] 2848                      movea.l    a0,a4
[00041534] 200c                      move.l     a4,d0
[00041536] 6610                      bne.s      InitPaths_17
[00041538] 41ed 0021                 lea.l      33(a5),a0
[0004153c] 4eb9 0005 2908            jsr        Ash_getenv
[00041542] 2848                      movea.l    a0,a4
[00041544] 200c                      move.l     a4,d0
[00041546] 6768                      beq.s      InitPaths_18
InitPaths_17:
[00041548] 224c                      movea.l    a4,a1
[0004154a] 2052                      movea.l    (a2),a0
[0004154c] 41e8 02d6                 lea.l      726(a0),a0
[00041550] 4eb9 0007 6950            jsr        strcpy
[00041556] 705c                      moveq.l    #92,d0
[00041558] 2052                      movea.l    (a2),a0
[0004155a] 41e8 02d6                 lea.l      726(a0),a0
[0004155e] 4eb9 0007 68e2            jsr        strrchr
[00041564] 2848                      movea.l    a0,a4
[00041566] 200c                      move.l     a4,d0
[00041568] 6708                      beq.s      InitPaths_19
[0004156a] 122c 0001                 move.b     1(a4),d1
[0004156e] 6602                      bne.s      InitPaths_19
[00041570] 4210                      clr.b      (a0)
InitPaths_19:
[00041572] 2052                      movea.l    (a2),a0
[00041574] 1028 02d6                 move.b     726(a0),d0
[00041578] 4880                      ext.w      d0
[0004157a] 4eb9 0007 7268            jsr        toupper
[00041580] b07c 0043                 cmp.w      #$0043,d0
[00041584] 6d12                      blt.s      InitPaths_20
[00041586] 2052                      movea.l    (a2),a0
[00041588] 41e8 02d6                 lea.l      726(a0),a0
[0004158c] 4eb9 0004 73bc            jsr        Af_length
[00041592] 72ff                      moveq.l    #-1,d1
[00041594] b280                      cmp.l      d0,d1
[00041596] 6708                      beq.s      InitPaths_21
InitPaths_20:
[00041598] 2052                      movea.l    (a2),a0
[0004159a] 4228 02d6                 clr.b      726(a0)
[0004159e] 6010                      bra.s      InitPaths_18
InitPaths_21:
[000415a0] 43ed 0009                 lea.l      9(a5),a1
[000415a4] 2052                      movea.l    (a2),a0
[000415a6] 41e8 02d6                 lea.l      726(a0),a0
[000415aa] 4eb9 0007 6886            jsr        strcat
InitPaths_18:
[000415b0] 2052                      movea.l    (a2),a0
[000415b2] 1028 02d6                 move.b     726(a0),d0
[000415b6] 6610                      bne.s      InitPaths_22
[000415b8] 2248                      movea.l    a0,a1
[000415ba] 43e9 009e                 lea.l      158(a1),a1
[000415be] 41e8 02d6                 lea.l      726(a0),a0
[000415c2] 4eb9 0007 6950            jsr        strcpy
InitPaths_22:
[000415c8] 2052                      movea.l    (a2),a0
[000415ca] 1028 02d6                 move.b     726(a0),d0
[000415ce] 662a                      bne.s      InitPaths_23
[000415d0] 43ed 0025                 lea.l      37(a5),a1
[000415d4] 41e8 02d6                 lea.l      726(a0),a0
[000415d8] 4eb9 0007 6950            jsr        strcpy
[000415de] 4eb9 0007 2902            jsr        Dgetdrv
[000415e4] 4eb9 0007 2978            jsr        Dsetdrv
[000415ea] c0bc 0000 0004            and.l      #$00000004,d0
[000415f0] 6708                      beq.s      InitPaths_23
[000415f2] 2052                      movea.l    (a2),a0
[000415f4] 117c 0043 02d6            move.b     #$43,726(a0)
InitPaths_23:
[000415fa] 4240                      clr.w      d0
InitPaths_16:
[000415fc] 584f                      addq.w     #4,a7
[000415fe] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[00041602] 4e75                      rts

InitProtocol:
[00041604] 2f0a                      move.l     a2,-(a7)
[00041606] 2f0b                      move.l     a3,-(a7)
[00041608] 3039 000d 2cf6            move.w     ProtInit,d0
[0004160e] 5279 000d 2cf6            addq.w     #1,ProtInit
[00041614] 4a40                      tst.w      d0
[00041616] 6600 0118                 bne        InitProtocol_1
[0004161a] 45f9 000d 2c54            lea.l      ListOfApps,a2
[00041620] 4eb9 0006 2a5e            jsr        Alu_create
[00041626] 2488                      move.l     a0,(a2)
[00041628] 2008                      move.l     a0,d0
[0004162a] 6700 0104                 beq        InitProtocol_1
[0004162e] 217c 0005 40fa 0004       move.l     #Aev_DDRemove,4(a0)
[00041636] 4eb9 0006 2a5e            jsr        Alu_create
[0004163c] 23c8 000d 2c50            move.l     a0,SentMsg
[00041642] 2008                      move.l     a0,d0
[00041644] 660c                      bne.s      InitProtocol_2
[00041646] 2052                      movea.l    (a2),a0
[00041648] 4eb9 0006 2aa6            jsr        Alu_delete
[0004164e] 6000 00e0                 bra        InitProtocol_1
InitProtocol_2:
[00041652] 45f9 0010 1f12            lea.l      ACSblk,a2
[00041658] 2652                      movea.l    (a2),a3
[0004165a] 47eb 0220                 lea.l      544(a3),a3
[0004165e] 2052                      movea.l    (a2),a0
[00041660] 3028 0236                 move.w     566(a0),d0
[00041664] 6704                      beq.s      InitProtocol_3
[00041666] 1213                      move.b     (a3),d1
[00041668] 660a                      bne.s      InitProtocol_4
InitProtocol_3:
[0004166a] 2052                      movea.l    (a2),a0
[0004166c] 2668 023c                 movea.l    572(a0),a3
[00041670] 47eb 0012                 lea.l      18(a3),a3
InitProtocol_4:
[00041674] 700a                      moveq.l    #10,d0
[00041676] 4eb9 0004 7f44            jsr        Ax_glmalloc
[0004167c] 2252                      movea.l    (a2),a1
[0004167e] 2348 03dc                 move.l     a0,988(a1)
[00041682] 2008                      move.l     a0,d0
[00041684] 673a                      beq.s      InitProtocol_5
[00041686] 43f9 000d 2d71            lea.l      $000D2D71,a1
[0004168c] 4eb9 0007 6950            jsr        strcpy
[00041692] 204b                      movea.l    a3,a0
[00041694] 4eb9 0007 69b0            jsr        strlen
[0004169a] 7208                      moveq.l    #8,d1
[0004169c] b280                      cmp.l      d0,d1
[0004169e] 630a                      bls.s      InitProtocol_6
[000416a0] 204b                      movea.l    a3,a0
[000416a2] 4eb9 0007 69b0            jsr        strlen
[000416a8] 6002                      bra.s      InitProtocol_7
InitProtocol_6:
[000416aa] 7008                      moveq.l    #8,d0
InitProtocol_7:
[000416ac] 224b                      movea.l    a3,a1
[000416ae] 2052                      movea.l    (a2),a0
[000416b0] 2068 03dc                 movea.l    988(a0),a0
[000416b4] 4eb9 0007 6a1a            jsr        strncpy
[000416ba] 4eb9 0004 3740            jsr        Ast_toupper
InitProtocol_5:
[000416c0] 7033                      moveq.l    #51,d0
[000416c2] 4eb9 0004 7f44            jsr        Ax_glmalloc
[000416c8] 2252                      movea.l    (a2),a1
[000416ca] 2348 04e6                 move.l     a0,1254(a1)
[000416ce] 2008                      move.l     a0,d0
[000416d0] 670c                      beq.s      InitProtocol_8
[000416d2] 2252                      movea.l    (a2),a1
[000416d4] 2269 03dc                 movea.l    988(a1),a1
[000416d8] 4eb9 0007 6950            jsr        strcpy
InitProtocol_8:
[000416de] 2052                      movea.l    (a2),a0
[000416e0] 2028 04e6                 move.l     1254(a0),d0
[000416e4] 670c                      beq.s      InitProtocol_9
[000416e6] 4eb9 0005 5130            jsr        Aev_InitXAcc
[000416ec] 4eb9 0005 6d64            jsr        Aev_InitGEMScript
InitProtocol_9:
[000416f2] 2052                      movea.l    (a2),a0
[000416f4] 2028 03dc                 move.l     988(a0),d0
[000416f8] 6736                      beq.s      InitProtocol_1
[000416fa] 4eb9 0005 5cfc            jsr        Aev_InitVA
[00041700] 4eb9 0005 6354            jsr        Aev_InitDD
[00041706] 4eb9 0005 6ab6            jsr        Aev_InitBubble
[0004170c] 4eb9 0005 7c04            jsr        Aev_InitOlga
[00041712] 4eb9 0005 8676            jsr        Aev_InitSTGuide
[00041718] 4eb9 0005 8838            jsr        Aev_InitSE
[0004171e] 4eb9 0005 8848            jsr        Aev_InitPCHelp
[00041724] 4eb9 0005 8840            jsr        Aev_InitSSP
[0004172a] 4eb9 0005 675a            jsr        Aev_InitDHST
InitProtocol_1:
[00041730] 4240                      clr.w      d0
[00041732] 265f                      movea.l    (a7)+,a3
[00041734] 245f                      movea.l    (a7)+,a2
[00041736] 4e75                      rts

InitScrap:
[00041738] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0004173c] 45f9 0010 1f12            lea.l      ACSblk,a2
[00041742] 2279 000d 99d6            movea.l    _globl,a1
[00041748] 2052                      movea.l    (a2),a0
[0004174a] 41e8 0356                 lea.l      854(a0),a0
[0004174e] 4eb9 0006 ca9e            jsr        mt_scrp_read
[00041754] 47f9 000d 2d48            lea.l      $000D2D48,a3
[0004175a] 2052                      movea.l    (a2),a0
[0004175c] 1028 0356                 move.b     854(a0),d0
[00041760] 6664                      bne.s      InitScrap_1
[00041762] 41eb 0033                 lea.l      51(a3),a0
[00041766] 4eb9 0005 2908            jsr        Ash_getenv
[0004176c] 2848                      movea.l    a0,a4
[0004176e] 200c                      move.l     a4,d0
[00041770] 6620                      bne.s      InitScrap_2
[00041772] 41eb 003d                 lea.l      61(a3),a0
[00041776] 4eb9 0005 2908            jsr        Ash_getenv
[0004177c] 2848                      movea.l    a0,a4
[0004177e] 200c                      move.l     a4,d0
[00041780] 6610                      bne.s      InitScrap_2
[00041782] 41eb 0045                 lea.l      69(a3),a0
[00041786] 4eb9 0005 2908            jsr        Ash_getenv
[0004178c] 2848                      movea.l    a0,a4
[0004178e] 200c                      move.l     a4,d0
[00041790] 6710                      beq.s      InitScrap_3
InitScrap_2:
[00041792] 224c                      movea.l    a4,a1
[00041794] 2052                      movea.l    (a2),a0
[00041796] 41e8 0356                 lea.l      854(a0),a0
[0004179a] 4eb9 0007 6950            jsr        strcpy
[000417a0] 6024                      bra.s      InitScrap_1
InitScrap_3:
[000417a2] 43eb 004e                 lea.l      78(a3),a1
[000417a6] 2052                      movea.l    (a2),a0
[000417a8] 41e8 0356                 lea.l      854(a0),a0
[000417ac] 4eb9 0007 6950            jsr        strcpy
[000417b2] 41fa f6d8                 lea.l      _acs_boot(pc),a0
[000417b6] 4eb9 0007 28a6            jsr        Supexec
[000417bc] d03c 0041                 add.b      #$41,d0
[000417c0] 2052                      movea.l    (a2),a0
[000417c2] 1140 0356                 move.b     d0,854(a0)
InitScrap_1:
[000417c6] 2052                      movea.l    (a2),a0
[000417c8] 1028 0356                 move.b     854(a0),d0
[000417cc] 4880                      ext.w      d0
[000417ce] 4eb9 0007 7268            jsr        toupper
[000417d4] b07c 0043                 cmp.w      #$0043,d0
[000417d8] 6d60                      blt.s      InitScrap_4
[000417da] 2052                      movea.l    (a2),a0
[000417dc] 41e8 0356                 lea.l      854(a0),a0
[000417e0] 4eb9 0007 69b0            jsr        strlen
[000417e6] 2600                      move.l     d0,d3
[000417e8] 4a83                      tst.l      d3
[000417ea] 6f4e                      ble.s      InitScrap_4
[000417ec] 5383                      subq.l     #1,d3
[000417ee] 2052                      movea.l    (a2),a0
[000417f0] d1c3                      adda.l     d3,a0
[000417f2] 0c28 005c 0356            cmpi.b     #$5C,854(a0)
[000417f8] 6604                      bne.s      InitScrap_5
[000417fa] 4228 0356                 clr.b      854(a0)
InitScrap_5:
[000417fe] 2052                      movea.l    (a2),a0
[00041800] 41e8 0356                 lea.l      854(a0),a0
[00041804] 4eb9 0007 28f2            jsr        Dcreate
[0004180a] 2600                      move.l     d0,d3
[0004180c] 43eb 0009                 lea.l      9(a3),a1
[00041810] 2052                      movea.l    (a2),a0
[00041812] 41e8 0356                 lea.l      854(a0),a0
[00041816] 4eb9 0007 6886            jsr        strcat
[0004181c] 4a83                      tst.l      d3
[0004181e] 6a06                      bpl.s      InitScrap_6
[00041820] 70dc                      moveq.l    #-36,d0
[00041822] b083                      cmp.l      d3,d0
[00041824] 6624                      bne.s      InitScrap_7
InitScrap_6:
[00041826] 2279 000d 99d6            movea.l    _globl,a1
[0004182c] 2052                      movea.l    (a2),a0
[0004182e] 41e8 0356                 lea.l      854(a0),a0
[00041832] 4eb9 0006 caf8            jsr        mt_scrp_write
[00041838] 6010                      bra.s      InitScrap_7
InitScrap_4:
[0004183a] 2279 000d 99d6            movea.l    _globl,a1
[00041840] 41eb 0002                 lea.l      2(a3),a0
[00041844] 4eb9 0006 caf8            jsr        mt_scrp_write
InitScrap_7:
[0004184a] 4240                      clr.w      d0
[0004184c] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00041850] 4e75                      rts

TermProtocol:
[00041852] 2f0a                      move.l     a2,-(a7)
[00041854] 5379 000d 2cf6            subq.w     #1,ProtInit
[0004185a] 6600 0082                 bne        TermProtocol_1
[0004185e] 2079 000d 2c54            movea.l    ListOfApps,a0
[00041864] 4eb9 0006 2aa6            jsr        Alu_delete
[0004186a] 2079 000d 2c50            movea.l    SentMsg,a0
[00041870] 4eb9 0006 2aa6            jsr        Alu_delete
[00041876] 4eb9 0005 675e            jsr        Aev_ExitDHST
[0004187c] 4eb9 0005 8844            jsr        Aev_ExitSSP
[00041882] 4eb9 0005 884c            jsr        Aev_ExitPCHelp
[00041888] 4eb9 0005 883c            jsr        Aev_ExitSE
[0004188e] 4eb9 0005 867a            jsr        Aev_ExitSTGuide
[00041894] 4eb9 0005 7c76            jsr        Aev_ExitOlga
[0004189a] 4eb9 0005 6dd6            jsr        Aev_ExitGEMScript
[000418a0] 4eb9 0005 6adc            jsr        Aev_ExitBubble
[000418a6] 4eb9 0005 6358            jsr        Aev_ExitDD
[000418ac] 4eb9 0005 5dd0            jsr        Aev_ExitVA
[000418b2] 4eb9 0005 51c2            jsr        Aev_ExitXAcc
[000418b8] 45f9 0010 1f12            lea.l      ACSblk,a2
[000418be] 2052                      movea.l    (a2),a0
[000418c0] 2028 04e6                 move.l     1254(a0),d0
[000418c4] 6708                      beq.s      TermProtocol_2
[000418c6] 2040                      movea.l    d0,a0
[000418c8] 4eb9 0004 7fa6            jsr        Ax_glfree
TermProtocol_2:
[000418ce] 2052                      movea.l    (a2),a0
[000418d0] 2028 03dc                 move.l     988(a0),d0
[000418d4] 6708                      beq.s      TermProtocol_1
[000418d6] 2040                      movea.l    d0,a0
[000418d8] 4eb9 0004 7fa6            jsr        Ax_glfree
TermProtocol_1:
[000418de] 245f                      movea.l    (a7)+,a2
[000418e0] 4e75                      rts

TermVDI:
[000418e2] 5379 000d 2cf8            subq.w     #1,VdiInit
[000418e8] 663e                      bne.s      TermVDI_1
[000418ea] 7020                      moveq.l    #32,d0
[000418ec] 2079 0010 1f12            movea.l    ACSblk,a0
[000418f2] 2268 023c                 movea.l    572(a0),a1
[000418f6] c069 000e                 and.w      14(a1),d0
[000418fa] 671c                      beq.s      TermVDI_2
[000418fc] 4eb9 0006 3698            jsr        vq_gdos
[00041902] 4a40                      tst.w      d0
[00041904] 6712                      beq.s      TermVDI_2
[00041906] 4241                      clr.w      d1
[00041908] 2079 0010 1f12            movea.l    ACSblk,a0
[0004190e] 3028 0010                 move.w     16(a0),d0
[00041912] 4eb9 0006 3f0e            jsr        vst_unload_fonts
TermVDI_2:
[00041918] 2079 0010 1f12            movea.l    ACSblk,a0
[0004191e] 3028 0010                 move.w     16(a0),d0
[00041922] 4eb9 0006 3c4e            jsr        v_clsvwk
TermVDI_1:
[00041928] 4e75                      rts

TermAES:
[0004192a] 2f0a                      move.l     a2,-(a7)
[0004192c] 2f0b                      move.l     a3,-(a7)
[0004192e] 4fef ffde                 lea.l      -34(a7),a7
[00041932] 5379 000d 2cfa            subq.w     #1,AesInit
[00041938] 6670                      bne.s      TermAES_1
[0004193a] 45f9 000d 99d6            lea.l      _globl,a2
[00041940] 2079 0010 1f12            movea.l    ACSblk,a0
[00041946] 3028 0236                 move.w     566(a0),d0
[0004194a] 670a                      beq.s      TermAES_2
[0004194c] 2052                      movea.l    (a2),a0
[0004194e] 4eb9 0006 aa82            jsr        mt_appl_exit
[00041954] 6054                      bra.s      TermAES_1
TermAES_2:
[00041956] 2079 0010 1f12            movea.l    ACSblk,a0
[0004195c] 2268 023c                 movea.l    572(a0),a1
[00041960] 137c 0005 0010            move.b     #$05,16(a1)
TermAES_3:
[00041966] 47ef 0020                 lea.l      32(a7),a3
[0004196a] 2f12                      move.l     (a2),-(a7)
[0004196c] 4853                      pea.l      (a3)
[0004196e] 4853                      pea.l      (a3)
[00041970] 4853                      pea.l      (a3)
[00041972] 4853                      pea.l      (a3)
[00041974] 4853                      pea.l      (a3)
[00041976] 2f3c 7fff 7fff            move.l     #$7FFF7FFF,-(a7)
[0004197c] 4267                      clr.w      -(a7)
[0004197e] 4267                      clr.w      -(a7)
[00041980] 4267                      clr.w      -(a7)
[00041982] 4267                      clr.w      -(a7)
[00041984] 4267                      clr.w      -(a7)
[00041986] 4267                      clr.w      -(a7)
[00041988] 4267                      clr.w      -(a7)
[0004198a] 4267                      clr.w      -(a7)
[0004198c] 4267                      clr.w      -(a7)
[0004198e] 4267                      clr.w      -(a7)
[00041990] 4267                      clr.w      -(a7)
[00041992] 224b                      movea.l    a3,a1
[00041994] 41ef 0032                 lea.l      50(a7),a0
[00041998] 4242                      clr.w      d2
[0004199a] 4241                      clr.w      d1
[0004199c] 7030                      moveq.l    #48,d0
[0004199e] 4eb9 0006 af70            jsr        mt_evnt_multi
[000419a4] 4fef 0032                 lea.l      50(a7),a7
[000419a8] 60bc                      bra.s      TermAES_3
TermAES_1:
[000419aa] 4fef 0022                 lea.l      34(a7),a7
[000419ae] 265f                      movea.l    (a7)+,a3
[000419b0] 245f                      movea.l    (a7)+,a2
[000419b2] 4e75                      rts

		.data

ProtInit:
[000d2cf6]                           dc.b $00
[000d2cf7]                           dc.b $00
VdiInit:
[000d2cf8]                           dc.b $00
[000d2cf9]                           dc.b $00
AesInit:
[000d2cfa]                           dc.b $00
[000d2cfb]                           dc.b $00
aes_open:
[000d2cfc]                           dc.b $00
[000d2cfd]                           dc.b $00
work_in:
[000d2cfe]                           dc.b $00
[000d2cff]                           dc.b $01
[000d2d00]                           dc.b $00
[000d2d01]                           dc.b $01
[000d2d02]                           dc.b $00
[000d2d03]                           dc.b $01
[000d2d04]                           dc.b $00
[000d2d05]                           dc.b $01
[000d2d06]                           dc.b $00
[000d2d07]                           dc.b $01
[000d2d08]                           dc.b $00
[000d2d09]                           dc.b $01
[000d2d0a]                           dc.b $00
[000d2d0b]                           dc.b $01
[000d2d0c]                           dc.b $00
[000d2d0d]                           dc.b $01
[000d2d0e]                           dc.b $00
[000d2d0f]                           dc.b $01
[000d2d10]                           dc.b $00
[000d2d11]                           dc.b $01
[000d2d12]                           dc.b $00
[000d2d13]                           dc.b $02
dum_ted:
[000d2d14] 000d2d4f                  dc.l $000d2d4f ; no symbol found
[000d2d18] 000d2d4a                  dc.l $000d2d4a ; no symbol found
[000d2d1c] 000d2d4a                  dc.l $000d2d4a ; no symbol found
[000d2d20]                           dc.b $00
[000d2d21]                           dc.b $03
[000d2d22]                           dc.b $00
[000d2d23]                           dc.b $00
[000d2d24]                           dc.b $00
[000d2d25]                           dc.b $00
[000d2d26]                           dc.b $00
[000d2d27]                           dc.b $00
[000d2d28]                           dc.b $00
[000d2d29]                           dc.b $00
[000d2d2a]                           dc.b $00
[000d2d2b]                           dc.b $00
[000d2d2c]                           dc.b $00
[000d2d2d]                           dc.b $02
[000d2d2e]                           dc.b $00
[000d2d2f]                           dc.b $01
dum_ob:
[000d2d30]                           dc.b $00
[000d2d31]                           dc.b $00
[000d2d32]                           dc.w $ffff
[000d2d34]                           dc.w $ffff
[000d2d36]                           dc.b $00
[000d2d37]                           dc.b $15
[000d2d38]                           dc.b $00
[000d2d39]                           dc.b $20
[000d2d3a]                           dc.b $00
[000d2d3b]                           dc.b $00
[000d2d3c] 000d2d14                  dc.l dum_ted
[000d2d40]                           dc.b $00
[000d2d41]                           dc.b $00
[000d2d42]                           dc.b $00
[000d2d43]                           dc.b $00
[000d2d44]                           dc.b $00
[000d2d45]                           dc.b $00
[000d2d46]                           dc.b $00
[000d2d47]                           dc.b $00
[000d2d48]                           dc.w $4653
[000d2d4a]                           dc.b $00
[000d2d4b]                           dc.b 'IFS',0
[000d2d4f]                           dc.b $20
[000d2d50]                           dc.b $00
[000d2d51]                           dc.b $5c
[000d2d52]                           dc.b $00
[000d2d53]                           dc.b '  ACS-Acc',0
[000d2d5d]                           dc.b 'HOME',0
[000d2d62]                           dc.b 'TMPDIR',0
[000d2d69]                           dc.b 'TMP',0
[000d2d6d]                           dc.b 'A:\',0
[000d2d71]                           dc.b '        ',0
[000d2d7a]                           dc.b $00
[000d2d7b]                           dc.b 'CLIPBOARD',0
[000d2d85]                           dc.b 'CLIPBRD',0
[000d2d8d]                           dc.b 'SCRAPDIR',0
[000d2d96]                           dc.b 'X:\clipbrd',0
[000d2da1]                           dc.b $00
		.even
