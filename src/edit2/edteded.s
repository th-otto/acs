
editte_ok:
[000218bc] 2079 0010 1f12            movea.l    ACSblk,a0
[000218c2] 2068 0258                 movea.l    600(a0),a0
[000218c6] 4eb9 0002 19fc            jsr        term
[000218cc] 4e75                      rts

tedi_make:
[000218ce] 48e7 0038                 movem.l    a2-a4,-(a7)
[000218d2] 594f                      subq.w     #4,a7
[000218d4] 2448                      movea.l    a0,a2
[000218d6] 266a 0004                 movea.l    4(a2),a3
[000218da] 286b 0012                 movea.l    18(a3),a4
[000218de] 200c                      move.l     a4,d0
[000218e0] 670a                      beq.s      tedi_make_1
[000218e2] 204c                      movea.l    a4,a0
[000218e4] 4eb9 0004 f0ca            jsr        Awi_show
[000218ea] 6074                      bra.s      tedi_make_2
tedi_make_1:
[000218ec] 7008                      moveq.l    #8,d0
[000218ee] 4eb9 0004 7cc8            jsr        Ax_malloc
[000218f4] 2e88                      move.l     a0,(a7)
[000218f6] 2008                      move.l     a0,d0
[000218f8] 6762                      beq.s      tedi_make_3
[000218fa] 2092                      move.l     (a2),(a0)
[000218fc] 216a 0004 0004            move.l     4(a2),4(a0)
[00021902] 43eb 0016                 lea.l      22(a3),a1
[00021906] 23c9 000a 7582            move.l     a1,$000A7582
[0002190c] 2079 000a 758e            movea.l    $000A758E,a0
[00021912] 2149 0008                 move.l     a1,8(a0)
[00021916] 41f9 000a 7534            lea.l      WI_TEDI,a0
[0002191c] 4eb9 0004 f41a            jsr        Awi_create
[00021922] 2848                      movea.l    a0,a4
[00021924] 200c                      move.l     a4,d0
[00021926] 6734                      beq.s      tedi_make_3
[00021928] 2252                      movea.l    (a2),a1
[0002192a] 4869 0168                 pea.l      360(a1)
[0002192e] 43eb 003a                 lea.l      58(a3),a1
[00021932] 4eb9 0001 47a8            jsr        wi_pos
[00021938] 584f                      addq.w     #4,a7
[0002193a] 2897                      move.l     (a7),(a4)
[0002193c] 274c 0012                 move.l     a4,18(a3)
[00021940] 204c                      movea.l    a4,a0
[00021942] 4eb9 0002 19b0            jsr        set_tedi
[00021948] 204c                      movea.l    a4,a0
[0002194a] 226c 000c                 movea.l    12(a4),a1
[0002194e] 4e91                      jsr        (a1)
[00021950] 4a40                      tst.w      d0
[00021952] 670c                      beq.s      tedi_make_2
[00021954] 204c                      movea.l    a4,a0
[00021956] 4eb9 0002 19fc            jsr        term
tedi_make_3:
[0002195c] 91c8                      suba.l     a0,a0
[0002195e] 6002                      bra.s      tedi_make_4
tedi_make_2:
[00021960] 204c                      movea.l    a4,a0
tedi_make_4:
[00021962] 584f                      addq.w     #4,a7
[00021964] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00021968] 4e75                      rts

tedi_service:
[0002196a] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002196e] 2448                      movea.l    a0,a2
[00021970] 3600                      move.w     d0,d3
[00021972] 2849                      movea.l    a1,a4
[00021974] 2650                      movea.l    (a0),a3
[00021976] 5540                      subq.w     #2,d0
[00021978] 6708                      beq.s      tedi_service_1
[0002197a] 907c 270e                 sub.w      #$270E,d0
[0002197e] 670c                      beq.s      tedi_service_2
[00021980] 6018                      bra.s      tedi_service_3
tedi_service_1:
[00021982] 204a                      movea.l    a2,a0
[00021984] 4eb9 0002 19fc            jsr        term
[0002198a] 601c                      bra.s      tedi_service_4
tedi_service_2:
[0002198c] 226b 0004                 movea.l    4(a3),a1
[00021990] 204a                      movea.l    a2,a0
[00021992] 4eb9 0001 45a2            jsr        new_name
[00021998] 600e                      bra.s      tedi_service_4
tedi_service_3:
[0002199a] 224c                      movea.l    a4,a1
[0002199c] 3003                      move.w     d3,d0
[0002199e] 204a                      movea.l    a2,a0
[000219a0] 4eb9 0005 1276            jsr        Awi_service
[000219a6] 6002                      bra.s      tedi_service_5
tedi_service_4:
[000219a8] 7001                      moveq.l    #1,d0
tedi_service_5:
[000219aa] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[000219ae] 4e75                      rts

set_tedi:
[000219b0] 2f0a                      move.l     a2,-(a7)
[000219b2] 2f0b                      move.l     a3,-(a7)
[000219b4] 2250                      movea.l    (a0),a1
[000219b6] 2468 0014                 movea.l    20(a0),a2
[000219ba] 2069 0004                 movea.l    4(a1),a0
[000219be] 2668 0004                 movea.l    4(a0),a3
[000219c2] 2253                      movea.l    (a3),a1
[000219c4] 2269 0004                 movea.l    4(a1),a1
[000219c8] 7003                      moveq.l    #3,d0
[000219ca] 204a                      movea.l    a2,a0
[000219cc] 4eb9 0004 afe0            jsr        Aob_puttext
[000219d2] 206b 0004                 movea.l    4(a3),a0
[000219d6] 2268 0004                 movea.l    4(a0),a1
[000219da] 7005                      moveq.l    #5,d0
[000219dc] 204a                      movea.l    a2,a0
[000219de] 4eb9 0004 afe0            jsr        Aob_puttext
[000219e4] 206b 0008                 movea.l    8(a3),a0
[000219e8] 2268 0004                 movea.l    4(a0),a1
[000219ec] 7007                      moveq.l    #7,d0
[000219ee] 204a                      movea.l    a2,a0
[000219f0] 4eb9 0004 afe0            jsr        Aob_puttext
[000219f6] 265f                      movea.l    (a7)+,a3
[000219f8] 245f                      movea.l    (a7)+,a2
[000219fa] 4e75                      rts

term:
[000219fc] 2f0a                      move.l     a2,-(a7)
[000219fe] 2f0b                      move.l     a3,-(a7)
[00021a00] 2448                      movea.l    a0,a2
[00021a02] 006a 0100 0056            ori.w      #$0100,86(a2)
[00021a08] 2650                      movea.l    (a0),a3
[00021a0a] 226b 0004                 movea.l    4(a3),a1
[00021a0e] 42a9 0012                 clr.l      18(a1)
[00021a12] 302a 0056                 move.w     86(a2),d0
[00021a16] c07c 0800                 and.w      #$0800,d0
[00021a1a] 6716                      beq.s      term_1
[00021a1c] 43ea 002c                 lea.l      44(a2),a1
[00021a20] 206b 0004                 movea.l    4(a3),a0
[00021a24] 41e8 003a                 lea.l      58(a0),a0
[00021a28] 7008                      moveq.l    #8,d0
[00021a2a] 4eb9 0007 6f44            jsr        memcpy
[00021a30] 6014                      bra.s      term_2
term_1:
[00021a32] 7008                      moveq.l    #8,d0
[00021a34] 43ea 0024                 lea.l      36(a2),a1
[00021a38] 206b 0004                 movea.l    4(a3),a0
[00021a3c] 41e8 003a                 lea.l      58(a0),a0
[00021a40] 4eb9 0007 6f44            jsr        memcpy
term_2:
[00021a46] 204b                      movea.l    a3,a0
[00021a48] 4eb9 0004 7e26            jsr        Ax_free
[00021a4e] 204a                      movea.l    a2,a0
[00021a50] 4eb9 0005 013e            jsr        Awi_closed
[00021a56] 204a                      movea.l    a2,a0
[00021a58] 4eb9 0005 0330            jsr        Awi_delete
[00021a5e] 265f                      movea.l    (a7)+,a3
[00021a60] 245f                      movea.l    (a7)+,a2
[00021a62] 4e75                      rts

	.data

TEXT_002:
[000a6e5e]                           dc.b $00
TEXT_003:
[000a6e5f]                           dc.b $4f
[000a6e60]                           dc.w $4b00
TEXT_01:
[000a6e62]                           dc.b 'Text:',0
TEXT_02:
[000a6e68]                           dc.b 'Tmp:',0
TEXT_025:
[000a6e6d]                           dc.b '12345678901234567890123456789012345678901234567890123456',0
TEXT_03:
[000a6ea6]                           dc.b 'Val:',0
TEXT_04:
[000a6eab]                           dc.b ' Tedinfo-Editor ',0
TEXT_13:
[000a6ebc]                           dc.b 'TEDINFO',0
DATAS_01:
[000a6ec4]                           dc.b $00
[000a6ec5]                           dc.b $00
[000a6ec6]                           dc.b $00
[000a6ec7]                           dc.b $00
[000a6ec8]                           dc.w $02c0
[000a6eca]                           dc.b $00
[000a6ecb]                           dc.b $00
[000a6ecc]                           dc.b $00
[000a6ecd]                           dc.b $00
[000a6ece]                           dc.b $00
[000a6ecf]                           dc.b $00
[000a6ed0]                           dc.b $00
[000a6ed1]                           dc.b $00
[000a6ed2]                           dc.b $00
[000a6ed3]                           dc.b $00
[000a6ed4]                           dc.b $00
[000a6ed5]                           dc.b $00
[000a6ed6]                           dc.b $00
[000a6ed7]                           dc.b $00
[000a6ed8]                           dc.b $00
[000a6ed9]                           dc.b $00
[000a6eda]                           dc.b $00
[000a6edb]                           dc.b $00
[000a6edc]                           dc.b $00
[000a6edd]                           dc.b $00
[000a6ede]                           dc.b $00
[000a6edf]                           dc.b $00
[000a6ee0]                           dc.b $00
[000a6ee1]                           dc.b $00
[000a6ee2]                           dc.b $00
[000a6ee3]                           dc.b $00
[000a6ee4]                           dc.b $00
[000a6ee5]                           dc.b $00
[000a6ee6]                           dc.b $00
[000a6ee7]                           dc.b $00
[000a6ee8]                           dc.b $00
[000a6ee9]                           dc.b $00
[000a6eea]                           dc.b $00
[000a6eeb]                           dc.b $00
[000a6eec]                           dc.b $00
[000a6eed]                           dc.b $00
[000a6eee]                           dc.b $00
[000a6eef]                           dc.b $00
[000a6ef0]                           dc.b $00
[000a6ef1]                           dc.b $00
[000a6ef2]                           dc.b $00
[000a6ef3]                           dc.b $00
[000a6ef4]                           dc.b $00
[000a6ef5]                           dc.b $00
[000a6ef6]                           dc.b $00
[000a6ef7]                           dc.b $00
[000a6ef8]                           dc.b $00
[000a6ef9]                           dc.b $00
[000a6efa]                           dc.b $00
[000a6efb]                           dc.b $00
[000a6efc]                           dc.b $00
[000a6efd]                           dc.b $00
[000a6efe]                           dc.b $00
[000a6eff]                           dc.b $00
[000a6f00]                           dc.b $00
[000a6f01]                           dc.b $00
[000a6f02]                           dc.b $00
[000a6f03]                           dc.b $00
[000a6f04]                           dc.b $00
[000a6f05]                           dc.b $00
[000a6f06]                           dc.b $00
[000a6f07]                           dc.b $00
[000a6f08]                           dc.b $00
[000a6f09]                           dc.b $00
[000a6f0a]                           dc.b $00
[000a6f0b]                           dc.b $00
[000a6f0c]                           dc.b $00
[000a6f0d]                           dc.b $00
[000a6f0e]                           dc.w $07ff
[000a6f10]                           dc.w $fffc
[000a6f12]                           dc.b $00
[000a6f13]                           dc.b $00
[000a6f14]                           dc.w $0400
[000a6f16]                           dc.b $00
[000a6f17]                           dc.b $0c
[000a6f18]                           dc.b $00
[000a6f19]                           dc.b $00
[000a6f1a]                           dc.w $0400
[000a6f1c]                           dc.w $010c
[000a6f1e]                           dc.w $1ee5
[000a6f20]                           dc.w $f402
[000a6f22]                           dc.w $010c
[000a6f24]                           dc.w $1094
[000a6f26]                           dc.w $4402
[000a6f28]                           dc.w $010c
[000a6f2a]                           dc.w $1094
[000a6f2c]                           dc.w $5402
[000a6f2e]                           dc.w $010c
[000a6f30]                           dc.w $1c94
[000a6f32]                           dc.w $5473
[000a6f34]                           dc.w $8d0c
[000a6f36]                           dc.w $1094
[000a6f38]                           dc.w $4492
[000a6f3a]                           dc.w $510c
[000a6f3c]                           dc.w $1094
[000a6f3e]                           dc.w $5492
[000a6f40]                           dc.w $510c
[000a6f42]                           dc.w $1ee4
[000a6f44]                           dc.w $546b
[000a6f46]                           dc.w $8dec
[000a6f48]                           dc.b $00
[000a6f49]                           dc.b $00
[000a6f4a]                           dc.w $0400
[000a6f4c]                           dc.w $010c
[000a6f4e]                           dc.b $00
[000a6f4f]                           dc.b $00
[000a6f50]                           dc.w $07ff
[000a6f52]                           dc.w $fefc
[000a6f54]                           dc.b $00
[000a6f55]                           dc.b $00
[000a6f56]                           dc.w $07ff
[000a6f58]                           dc.w $fffc
[000a6f5a]                           dc.b $00
[000a6f5b]                           dc.b $00
[000a6f5c]                           dc.b $00
[000a6f5d]                           dc.b $00
[000a6f5e]                           dc.b $00
[000a6f5f]                           dc.b $00
[000a6f60]                           dc.b $00
[000a6f61]                           dc.b $00
[000a6f62]                           dc.b $00
[000a6f63]                           dc.b $00
[000a6f64]                           dc.b $00
[000a6f65]                           dc.b $00
[000a6f66]                           dc.b $00
[000a6f67]                           dc.b $00
[000a6f68]                           dc.b $00
[000a6f69]                           dc.b $00
[000a6f6a]                           dc.b $00
[000a6f6b]                           dc.b $00
[000a6f6c]                           dc.b $00
[000a6f6d]                           dc.b $00
[000a6f6e]                           dc.b $00
[000a6f6f]                           dc.b $00
[000a6f70]                           dc.b $00
[000a6f71]                           dc.b $00
[000a6f72]                           dc.b $00
[000a6f73]                           dc.b $00
[000a6f74]                           dc.b $00
[000a6f75]                           dc.b $00
[000a6f76]                           dc.b $00
[000a6f77]                           dc.b $00
[000a6f78]                           dc.b $00
[000a6f79]                           dc.b $00
[000a6f7a]                           dc.b $00
[000a6f7b]                           dc.b $00
[000a6f7c]                           dc.b $00
[000a6f7d]                           dc.b $00
[000a6f7e]                           dc.b $00
[000a6f7f]                           dc.b $00
[000a6f80]                           dc.b $00
[000a6f81]                           dc.b $00
[000a6f82]                           dc.b $00
[000a6f83]                           dc.b $00
[000a6f84]                           dc.b $00
[000a6f85]                           dc.b $00
[000a6f86]                           dc.b $00
[000a6f87]                           dc.b $00
[000a6f88]                           dc.b $00
[000a6f89]                           dc.b $00
[000a6f8a]                           dc.b $00
[000a6f8b]                           dc.b $00
[000a6f8c]                           dc.b $00
[000a6f8d]                           dc.b $00
[000a6f8e]                           dc.b $00
[000a6f8f]                           dc.b $00
[000a6f90]                           dc.b $00
[000a6f91]                           dc.b $00
[000a6f92]                           dc.b $00
[000a6f93]                           dc.b $00
[000a6f94]                           dc.b $00
[000a6f95]                           dc.b $00
[000a6f96]                           dc.b $00
[000a6f97]                           dc.b $00
[000a6f98]                           dc.b $00
[000a6f99]                           dc.b $00
[000a6f9a]                           dc.b $00
[000a6f9b]                           dc.b $00
[000a6f9c]                           dc.b $00
[000a6f9d]                           dc.b $00
[000a6f9e]                           dc.b $00
[000a6f9f]                           dc.b $00
[000a6fa0]                           dc.b $00
[000a6fa1]                           dc.b $00
[000a6fa2]                           dc.b $00
[000a6fa3]                           dc.b $00
[000a6fa4]                           dc.b $00
[000a6fa5]                           dc.b $00
[000a6fa6]                           dc.b $00
[000a6fa7]                           dc.b $00
[000a6fa8]                           dc.b $00
[000a6fa9]                           dc.b $00
[000a6faa]                           dc.b $00
[000a6fab]                           dc.b $00
[000a6fac]                           dc.b $00
[000a6fad]                           dc.b $00
[000a6fae]                           dc.b $00
[000a6faf]                           dc.b $00
[000a6fb0]                           dc.b $00
[000a6fb1]                           dc.b $00
[000a6fb2]                           dc.b $00
[000a6fb3]                           dc.b $00
[000a6fb4]                           dc.b $00
[000a6fb5]                           dc.b $00
[000a6fb6]                           dc.b $00
[000a6fb7]                           dc.b $00
[000a6fb8]                           dc.b $00
[000a6fb9]                           dc.b $00
[000a6fba]                           dc.b $00
[000a6fbb]                           dc.b $00
[000a6fbc]                           dc.w $07ff
[000a6fbe]                           dc.w $fffc
[000a6fc0]                           dc.b $00
[000a6fc1]                           dc.b $00
[000a6fc2]                           dc.w $0400
[000a6fc4]                           dc.b $00
[000a6fc5]                           dc.b $0c
[000a6fc6]                           dc.b $00
[000a6fc7]                           dc.b $00
[000a6fc8]                           dc.w $0400
[000a6fca]                           dc.w $010c
[000a6fcc]                           dc.w $1ee5
[000a6fce]                           dc.w $f402
[000a6fd0]                           dc.w $010c
[000a6fd2]                           dc.w $1094
[000a6fd4]                           dc.w $4402
[000a6fd6]                           dc.w $010c
[000a6fd8]                           dc.w $1094
[000a6fda]                           dc.w $5402
[000a6fdc]                           dc.w $010c
[000a6fde]                           dc.w $1c94
[000a6fe0]                           dc.w $5473
[000a6fe2]                           dc.w $8d0c
[000a6fe4]                           dc.w $1094
[000a6fe6]                           dc.w $4492
[000a6fe8]                           dc.w $510c
[000a6fea]                           dc.w $1094
[000a6fec]                           dc.w $5492
[000a6fee]                           dc.w $510c
[000a6ff0]                           dc.w $1ee4
[000a6ff2]                           dc.w $546b
[000a6ff4]                           dc.w $8dec
[000a6ff6]                           dc.b $00
[000a6ff7]                           dc.b $00
[000a6ff8]                           dc.w $0400
[000a6ffa]                           dc.w $010c
[000a6ffc]                           dc.b $00
[000a6ffd]                           dc.b $00
[000a6ffe]                           dc.w $07ff
[000a7000]                           dc.w $fefc
[000a7002]                           dc.b $00
[000a7003]                           dc.b $00
[000a7004]                           dc.w $07ff
[000a7006]                           dc.w $fffc
[000a7008]                           dc.b $00
[000a7009]                           dc.b $00
[000a700a]                           dc.b $00
[000a700b]                           dc.b $00
[000a700c]                           dc.b $00
[000a700d]                           dc.b $00
[000a700e]                           dc.b $00
[000a700f]                           dc.b $00
[000a7010]                           dc.b $00
[000a7011]                           dc.b $00
[000a7012]                           dc.b $00
[000a7013]                           dc.b $00
[000a7014]                           dc.b $00
[000a7015]                           dc.b $00
[000a7016]                           dc.b $00
[000a7017]                           dc.b $00
[000a7018]                           dc.b $00
[000a7019]                           dc.b $00
[000a701a]                           dc.b $00
[000a701b]                           dc.b $00
[000a701c]                           dc.b $00
[000a701d]                           dc.b $00
[000a701e]                           dc.b $00
[000a701f]                           dc.b $00
[000a7020]                           dc.b $00
[000a7021]                           dc.b $00
[000a7022]                           dc.b $00
[000a7023]                           dc.b $00
[000a7024]                           dc.b $00
[000a7025]                           dc.b $00
[000a7026]                           dc.b $00
[000a7027]                           dc.b $00
[000a7028]                           dc.b $00
[000a7029]                           dc.b $00
[000a702a]                           dc.b $00
[000a702b]                           dc.b $00
[000a702c]                           dc.b $00
[000a702d]                           dc.b $00
[000a702e]                           dc.b $00
[000a702f]                           dc.b $00
[000a7030]                           dc.b $00
[000a7031]                           dc.b $00
[000a7032]                           dc.b $00
[000a7033]                           dc.b $00
[000a7034]                           dc.b $00
[000a7035]                           dc.b $00
[000a7036]                           dc.b $00
[000a7037]                           dc.b $00
[000a7038]                           dc.b $00
[000a7039]                           dc.b $00
[000a703a]                           dc.b $00
[000a703b]                           dc.b $00
[000a703c]                           dc.b $00
[000a703d]                           dc.b $00
[000a703e]                           dc.b $00
[000a703f]                           dc.b $00
[000a7040]                           dc.b $00
[000a7041]                           dc.b $00
[000a7042]                           dc.b $00
[000a7043]                           dc.b $00
[000a7044]                           dc.b $00
[000a7045]                           dc.b $00
[000a7046]                           dc.b $00
[000a7047]                           dc.b $00
[000a7048]                           dc.b $00
[000a7049]                           dc.b $00
[000a704a]                           dc.b $00
[000a704b]                           dc.b $00
[000a704c]                           dc.b $00
[000a704d]                           dc.b $00
[000a704e]                           dc.b $00
[000a704f]                           dc.b $00
[000a7050]                           dc.b $00
[000a7051]                           dc.b $00
[000a7052]                           dc.b $00
[000a7053]                           dc.b $00
[000a7054]                           dc.b $00
[000a7055]                           dc.b $00
[000a7056]                           dc.b $00
[000a7057]                           dc.b $00
[000a7058]                           dc.b $00
[000a7059]                           dc.b $00
[000a705a]                           dc.b $00
[000a705b]                           dc.b $00
[000a705c]                           dc.b $00
[000a705d]                           dc.b $00
[000a705e]                           dc.b $00
[000a705f]                           dc.b $00
[000a7060]                           dc.b $00
[000a7061]                           dc.b $00
[000a7062]                           dc.b $00
[000a7063]                           dc.b $00
[000a7064]                           dc.b $00
[000a7065]                           dc.b $00
[000a7066]                           dc.b $00
[000a7067]                           dc.b $00
[000a7068]                           dc.b $00
[000a7069]                           dc.b $00
[000a706a]                           dc.w $07ff
[000a706c]                           dc.w $fffc
[000a706e]                           dc.b $00
[000a706f]                           dc.b $00
[000a7070]                           dc.w $0400
[000a7072]                           dc.b $00
[000a7073]                           dc.b $0c
[000a7074]                           dc.b $00
[000a7075]                           dc.b $00
[000a7076]                           dc.w $0400
[000a7078]                           dc.w $010c
[000a707a]                           dc.w $1ee5
[000a707c]                           dc.w $f402
[000a707e]                           dc.w $010c
[000a7080]                           dc.w $1094
[000a7082]                           dc.w $4402
[000a7084]                           dc.w $010c
[000a7086]                           dc.w $1094
[000a7088]                           dc.w $5402
[000a708a]                           dc.w $010c
[000a708c]                           dc.w $1c94
[000a708e]                           dc.w $5473
[000a7090]                           dc.w $8d0c
[000a7092]                           dc.w $1094
[000a7094]                           dc.w $4492
[000a7096]                           dc.w $510c
[000a7098]                           dc.w $1094
[000a709a]                           dc.w $5492
[000a709c]                           dc.w $510c
[000a709e]                           dc.w $1ee4
[000a70a0]                           dc.w $546b
[000a70a2]                           dc.w $8dec
[000a70a4]                           dc.b $00
[000a70a5]                           dc.b $00
[000a70a6]                           dc.w $0400
[000a70a8]                           dc.w $010c
[000a70aa]                           dc.b $00
[000a70ab]                           dc.b $00
[000a70ac]                           dc.w $07ff
[000a70ae]                           dc.w $fefc
[000a70b0]                           dc.b $00
[000a70b1]                           dc.b $00
[000a70b2]                           dc.w $07ff
[000a70b4]                           dc.w $fffc
[000a70b6]                           dc.b $00
[000a70b7]                           dc.b $00
[000a70b8]                           dc.b $00
[000a70b9]                           dc.b $00
[000a70ba]                           dc.b $00
[000a70bb]                           dc.b $00
[000a70bc]                           dc.b $00
[000a70bd]                           dc.b $00
[000a70be]                           dc.b $00
[000a70bf]                           dc.b $00
[000a70c0]                           dc.b $00
[000a70c1]                           dc.b $00
[000a70c2]                           dc.b $00
[000a70c3]                           dc.b $00
[000a70c4]                           dc.b $00
[000a70c5]                           dc.b $00
[000a70c6]                           dc.b $00
[000a70c7]                           dc.b $00
[000a70c8]                           dc.b $00
[000a70c9]                           dc.b $00
[000a70ca]                           dc.b $00
[000a70cb]                           dc.b $00
[000a70cc]                           dc.b $00
[000a70cd]                           dc.b $00
[000a70ce]                           dc.b $00
[000a70cf]                           dc.b $00
[000a70d0]                           dc.b $00
[000a70d1]                           dc.b $00
[000a70d2]                           dc.b $00
[000a70d3]                           dc.b $00
[000a70d4]                           dc.b $00
[000a70d5]                           dc.b $00
[000a70d6]                           dc.b $00
[000a70d7]                           dc.b $00
[000a70d8]                           dc.b $00
[000a70d9]                           dc.b $00
[000a70da]                           dc.b $00
[000a70db]                           dc.b $00
[000a70dc]                           dc.b $00
[000a70dd]                           dc.b $00
[000a70de]                           dc.b $00
[000a70df]                           dc.b $00
[000a70e0]                           dc.b $00
[000a70e1]                           dc.b $00
[000a70e2]                           dc.b $00
[000a70e3]                           dc.b $00
[000a70e4]                           dc.b $00
[000a70e5]                           dc.b $00
[000a70e6]                           dc.b $00
[000a70e7]                           dc.b $00
[000a70e8]                           dc.b $00
[000a70e9]                           dc.b $00
[000a70ea]                           dc.b $00
[000a70eb]                           dc.b $00
[000a70ec]                           dc.b $00
[000a70ed]                           dc.b $00
[000a70ee]                           dc.b $00
[000a70ef]                           dc.b $00
[000a70f0]                           dc.b $00
[000a70f1]                           dc.b $00
[000a70f2]                           dc.b $00
[000a70f3]                           dc.b $00
[000a70f4]                           dc.b $00
[000a70f5]                           dc.b $00
[000a70f6]                           dc.b $00
[000a70f7]                           dc.b $00
[000a70f8]                           dc.b $00
[000a70f9]                           dc.b $00
[000a70fa]                           dc.b $00
[000a70fb]                           dc.b $00
[000a70fc]                           dc.b $00
[000a70fd]                           dc.b $00
[000a70fe]                           dc.b $00
[000a70ff]                           dc.b $00
[000a7100]                           dc.b $00
[000a7101]                           dc.b $00
[000a7102]                           dc.b $00
[000a7103]                           dc.b $00
[000a7104]                           dc.b $00
[000a7105]                           dc.b $00
[000a7106]                           dc.b $00
[000a7107]                           dc.b $00
[000a7108]                           dc.b $00
[000a7109]                           dc.b $00
[000a710a]                           dc.b $00
[000a710b]                           dc.b $00
[000a710c]                           dc.b $00
[000a710d]                           dc.b $00
[000a710e]                           dc.b $00
[000a710f]                           dc.b $00
[000a7110]                           dc.b $00
[000a7111]                           dc.b $00
[000a7112]                           dc.b $00
[000a7113]                           dc.b $00
[000a7114]                           dc.b $00
[000a7115]                           dc.b $00
[000a7116]                           dc.b $00
[000a7117]                           dc.b $00
[000a7118]                           dc.w $07ff
[000a711a]                           dc.w $fffc
[000a711c]                           dc.b $00
[000a711d]                           dc.b $00
[000a711e]                           dc.w $07ff
[000a7120]                           dc.w $fef4
[000a7122]                           dc.b $00
[000a7123]                           dc.b $00
[000a7124]                           dc.w $0600
[000a7126]                           dc.w $0104
[000a7128]                           dc.w $1ee5
[000a712a]                           dc.w $f602
[000a712c]                           dc.w $0104
[000a712e]                           dc.w $1094
[000a7130]                           dc.w $4602
[000a7132]                           dc.w $0104
[000a7134]                           dc.w $1094
[000a7136]                           dc.w $5602
[000a7138]                           dc.w $0104
[000a713a]                           dc.w $1c94
[000a713c]                           dc.w $5673
[000a713e]                           dc.w $8d04
[000a7140]                           dc.w $1094
[000a7142]                           dc.w $4692
[000a7144]                           dc.w $5104
[000a7146]                           dc.w $1094
[000a7148]                           dc.w $5692
[000a714a]                           dc.w $5104
[000a714c]                           dc.w $1ee4
[000a714e]                           dc.w $566b
[000a7150]                           dc.w $8de4
[000a7152]                           dc.b $00
[000a7153]                           dc.b $00
[000a7154]                           dc.w $0600
[000a7156]                           dc.w $0104
[000a7158]                           dc.b $00
[000a7159]                           dc.b $00
[000a715a]                           dc.w $0400
[000a715c]                           dc.b $00
[000a715d]                           dc.b $04
[000a715e]                           dc.b $00
[000a715f]                           dc.b $00
[000a7160]                           dc.w $07ff
[000a7162]                           dc.w $fffc
[000a7164]                           dc.b $00
[000a7165]                           dc.b $00
[000a7166]                           dc.b $00
[000a7167]                           dc.b $00
[000a7168]                           dc.b $00
[000a7169]                           dc.b $00
[000a716a]                           dc.b $00
[000a716b]                           dc.b $00
[000a716c]                           dc.b $00
[000a716d]                           dc.b $00
[000a716e]                           dc.b $00
[000a716f]                           dc.b $00
[000a7170]                           dc.b $00
[000a7171]                           dc.b $00
[000a7172]                           dc.b $00
[000a7173]                           dc.b $00
[000a7174]                           dc.b $00
[000a7175]                           dc.b $00
[000a7176]                           dc.b $00
[000a7177]                           dc.b $00
[000a7178]                           dc.b $00
[000a7179]                           dc.b $00
[000a717a]                           dc.b $00
[000a717b]                           dc.b $00
[000a717c]                           dc.b $00
[000a717d]                           dc.b $00
[000a717e]                           dc.b $00
[000a717f]                           dc.b $00
[000a7180]                           dc.b $00
[000a7181]                           dc.b $00
DATAS_02:
[000a7182]                           dc.b $00
[000a7183]                           dc.b $00
[000a7184]                           dc.b $00
[000a7185]                           dc.b $00
[000a7186]                           dc.b $00
[000a7187]                           dc.b $00
[000a7188]                           dc.b $00
[000a7189]                           dc.b $00
[000a718a]                           dc.b $00
[000a718b]                           dc.b $00
[000a718c]                           dc.b $00
[000a718d]                           dc.b $00
[000a718e]                           dc.b $00
[000a718f]                           dc.b $00
[000a7190]                           dc.b $00
[000a7191]                           dc.b $00
[000a7192]                           dc.b $00
[000a7193]                           dc.b $00
[000a7194]                           dc.b $00
[000a7195]                           dc.b $00
[000a7196]                           dc.b $00
[000a7197]                           dc.b $00
[000a7198]                           dc.b $00
[000a7199]                           dc.b $00
[000a719a]                           dc.b $00
[000a719b]                           dc.b $00
[000a719c]                           dc.b $00
[000a719d]                           dc.b $00
[000a719e]                           dc.b $00
[000a719f]                           dc.b $00
[000a71a0]                           dc.b $00
[000a71a1]                           dc.b $00
[000a71a2]                           dc.b $00
[000a71a3]                           dc.b $00
[000a71a4]                           dc.b $00
[000a71a5]                           dc.b $00
[000a71a6]                           dc.b $00
[000a71a7]                           dc.b $00
[000a71a8]                           dc.b $00
[000a71a9]                           dc.b $00
[000a71aa]                           dc.b $00
[000a71ab]                           dc.b $00
[000a71ac]                           dc.b $00
[000a71ad]                           dc.b $00
[000a71ae]                           dc.b $00
[000a71af]                           dc.b $00
[000a71b0]                           dc.b $00
[000a71b1]                           dc.b $00
[000a71b2]                           dc.b $00
[000a71b3]                           dc.b $00
[000a71b4]                           dc.b $00
[000a71b5]                           dc.b $00
[000a71b6]                           dc.b $00
[000a71b7]                           dc.b $00
[000a71b8]                           dc.b $00
[000a71b9]                           dc.b $00
[000a71ba]                           dc.b $00
[000a71bb]                           dc.b $00
[000a71bc]                           dc.b $00
[000a71bd]                           dc.b $00
[000a71be]                           dc.b $00
[000a71bf]                           dc.b $00
[000a71c0]                           dc.b $00
[000a71c1]                           dc.b $00
[000a71c2]                           dc.b $00
[000a71c3]                           dc.b $00
[000a71c4]                           dc.b $00
[000a71c5]                           dc.b $00
[000a71c6]                           dc.w $07ff
[000a71c8]                           dc.w $fffc
[000a71ca]                           dc.b $00
[000a71cb]                           dc.b $00
[000a71cc]                           dc.w $07ff
[000a71ce]                           dc.w $fffc
[000a71d0]                           dc.b $00
[000a71d1]                           dc.b $00
[000a71d2]                           dc.w $07ff
[000a71d4]                           dc.w $fffc
[000a71d6]                           dc.w $1ee5
[000a71d8]                           dc.w $f7ff
[000a71da]                           dc.w $fffc
[000a71dc]                           dc.w $1094
[000a71de]                           dc.w $47ff
[000a71e0]                           dc.w $fffc
[000a71e2]                           dc.w $1094
[000a71e4]                           dc.w $57ff
[000a71e6]                           dc.w $fffc
[000a71e8]                           dc.w $1c94
[000a71ea]                           dc.w $57ff
[000a71ec]                           dc.w $fffc
[000a71ee]                           dc.w $1094
[000a71f0]                           dc.w $47ff
[000a71f2]                           dc.w $fffc
[000a71f4]                           dc.w $1094
[000a71f6]                           dc.w $57ff
[000a71f8]                           dc.w $fffc
[000a71fa]                           dc.w $1ee4
[000a71fc]                           dc.w $57ff
[000a71fe]                           dc.w $fffc
[000a7200]                           dc.b $00
[000a7201]                           dc.b $00
[000a7202]                           dc.w $07ff
[000a7204]                           dc.w $fffc
[000a7206]                           dc.b $00
[000a7207]                           dc.b $00
[000a7208]                           dc.w $07ff
[000a720a]                           dc.w $fffc
[000a720c]                           dc.b $00
[000a720d]                           dc.b $00
[000a720e]                           dc.w $07ff
[000a7210]                           dc.w $fffc
[000a7212]                           dc.b $00
[000a7213]                           dc.b $00
[000a7214]                           dc.b $00
[000a7215]                           dc.b $00
[000a7216]                           dc.b $00
[000a7217]                           dc.b $00
[000a7218]                           dc.b $00
[000a7219]                           dc.b $00
[000a721a]                           dc.b $00
[000a721b]                           dc.b $00
[000a721c]                           dc.b $00
[000a721d]                           dc.b $00
[000a721e]                           dc.b $00
[000a721f]                           dc.b $00
[000a7220]                           dc.b $00
[000a7221]                           dc.b $00
[000a7222]                           dc.b $00
[000a7223]                           dc.b $00
[000a7224]                           dc.b $00
[000a7225]                           dc.b $00
[000a7226]                           dc.b $00
[000a7227]                           dc.b $00
[000a7228]                           dc.b $00
[000a7229]                           dc.b $00
[000a722a]                           dc.b $00
[000a722b]                           dc.b $00
[000a722c]                           dc.b $00
[000a722d]                           dc.b $00
[000a722e]                           dc.b $00
[000a722f]                           dc.b $00
TEDI_001:
[000a7230] 000a6e6d                  dc.l TEXT_025
[000a7234] 000a6e5e                  dc.l TEXT_002
[000a7238] 000a6e5e                  dc.l TEXT_002
[000a723c]                           dc.b $00
[000a723d]                           dc.b $03
[000a723e]                           dc.b $00
[000a723f]                           dc.b $06
[000a7240]                           dc.b $00
[000a7241]                           dc.b $00
[000a7242]                           dc.w $1180
[000a7244]                           dc.b $00
[000a7245]                           dc.b $00
[000a7246]                           dc.b $00
[000a7247]                           dc.b $00
[000a7248]                           dc.b $00
[000a7249]                           dc.b $39
[000a724a]                           dc.b $00
[000a724b]                           dc.b $01
A_3DBUTTON02:
[000a724c] 0005a4e2                  dc.l A_3Dbutton
[000a7250]                           dc.w $21f1
[000a7252]                           dc.w $01f8
[000a7254] 00059318                  dc.l Auo_string
[000a7258]                           dc.b $00
[000a7259]                           dc.b $00
[000a725a]                           dc.b $00
[000a725b]                           dc.b $00
[000a725c]                           dc.b $00
[000a725d]                           dc.b $00
[000a725e]                           dc.b $00
[000a725f]                           dc.b $00
[000a7260]                           dc.b $00
[000a7261]                           dc.b $00
[000a7262]                           dc.b $00
[000a7263]                           dc.b $00
[000a7264]                           dc.b $00
[000a7265]                           dc.b $00
[000a7266]                           dc.b $00
[000a7267]                           dc.b $00
[000a7268]                           dc.b $00
[000a7269]                           dc.b $00
[000a726a]                           dc.b $00
[000a726b]                           dc.b $00
A_3DBUTTON04:
[000a726c] 0005a4e2                  dc.l A_3Dbutton
[000a7270]                           dc.w $29c1
[000a7272]                           dc.w $0178
[000a7274] 00059318                  dc.l Auo_string
[000a7278] 000a6e5f                  dc.l TEXT_003
[000a727c]                           dc.b $00
[000a727d]                           dc.b $00
[000a727e]                           dc.b $00
[000a727f]                           dc.b $00
[000a7280]                           dc.b $00
[000a7281]                           dc.b $00
[000a7282]                           dc.b $00
[000a7283]                           dc.b $00
[000a7284]                           dc.b $00
[000a7285]                           dc.b $00
[000a7286]                           dc.b $00
[000a7287]                           dc.b $00
[000a7288]                           dc.b $00
[000a7289]                           dc.b $00
[000a728a]                           dc.b $00
[000a728b]                           dc.b $00
A_INNERFRAME02:
[000a728c] 00059f9c                  dc.l A_innerframe
[000a7290]                           dc.w $1000
[000a7292]                           dc.w $8f19
[000a7294] 00059318                  dc.l Auo_string
[000a7298]                           dc.b $00
[000a7299]                           dc.b $00
[000a729a]                           dc.b $00
[000a729b]                           dc.b $00
[000a729c]                           dc.b $00
[000a729d]                           dc.b $00
[000a729e]                           dc.b $00
[000a729f]                           dc.b $00
[000a72a0]                           dc.b $00
[000a72a1]                           dc.b $00
[000a72a2]                           dc.b $00
[000a72a3]                           dc.b $00
[000a72a4]                           dc.b $00
[000a72a5]                           dc.b $00
[000a72a6]                           dc.b $00
[000a72a7]                           dc.b $00
[000a72a8]                           dc.b $00
[000a72a9]                           dc.b $00
[000a72aa]                           dc.b $00
[000a72ab]                           dc.b $00
_C4_IC_TEDI:
[000a72ac]                           dc.b $00
[000a72ad]                           dc.b $04
[000a72ae] 000a6eca                  dc.l $000a6eca ; no symbol found
[000a72b2] 000a7182                  dc.l DATAS_02
[000a72b6]                           dc.b $00
[000a72b7]                           dc.b $00
[000a72b8]                           dc.b $00
[000a72b9]                           dc.b $00
[000a72ba]                           dc.b $00
[000a72bb]                           dc.b $00
[000a72bc]                           dc.b $00
[000a72bd]                           dc.b $00
[000a72be]                           dc.b $00
[000a72bf]                           dc.b $00
[000a72c0]                           dc.b $00
[000a72c1]                           dc.b $00
_MSK_IC_TEDI:
[000a72c2]                           dc.b $00
[000a72c3]                           dc.b $00
[000a72c4]                           dc.b $00
[000a72c5]                           dc.b $00
[000a72c6]                           dc.b $00
[000a72c7]                           dc.b $00
[000a72c8]                           dc.b $00
[000a72c9]                           dc.b $00
[000a72ca]                           dc.b $00
[000a72cb]                           dc.b $00
[000a72cc]                           dc.b $00
[000a72cd]                           dc.b $00
[000a72ce]                           dc.b $00
[000a72cf]                           dc.b $00
[000a72d0]                           dc.b $00
[000a72d1]                           dc.b $00
[000a72d2]                           dc.b $00
[000a72d3]                           dc.b $00
[000a72d4]                           dc.b $00
[000a72d5]                           dc.b $00
[000a72d6]                           dc.b $00
[000a72d7]                           dc.b $00
[000a72d8]                           dc.b $00
[000a72d9]                           dc.b $00
[000a72da]                           dc.b $00
[000a72db]                           dc.b $00
[000a72dc]                           dc.b $00
[000a72dd]                           dc.b $00
[000a72de]                           dc.b $00
[000a72df]                           dc.b $00
[000a72e0]                           dc.b $00
[000a72e1]                           dc.b $00
[000a72e2]                           dc.b $00
[000a72e3]                           dc.b $00
[000a72e4]                           dc.b $00
[000a72e5]                           dc.b $00
[000a72e6]                           dc.b $00
[000a72e7]                           dc.b $00
[000a72e8]                           dc.b $00
[000a72e9]                           dc.b $00
[000a72ea]                           dc.b $00
[000a72eb]                           dc.b $00
[000a72ec]                           dc.b $00
[000a72ed]                           dc.b $00
[000a72ee]                           dc.b $00
[000a72ef]                           dc.b $00
[000a72f0]                           dc.b $00
[000a72f1]                           dc.b $00
[000a72f2]                           dc.b $00
[000a72f3]                           dc.b $00
[000a72f4]                           dc.b $00
[000a72f5]                           dc.b $00
[000a72f6]                           dc.b $00
[000a72f7]                           dc.b $00
[000a72f8]                           dc.b $00
[000a72f9]                           dc.b $00
[000a72fa]                           dc.b $00
[000a72fb]                           dc.b $00
[000a72fc]                           dc.b $00
[000a72fd]                           dc.b $00
[000a72fe]                           dc.b $00
[000a72ff]                           dc.b $00
[000a7300]                           dc.b $00
[000a7301]                           dc.b $00
[000a7302]                           dc.b $00
[000a7303]                           dc.b $00
[000a7304]                           dc.b $00
[000a7305]                           dc.b $00
[000a7306]                           dc.b $00
[000a7307]                           dc.b $00
[000a7308]                           dc.b $00
[000a7309]                           dc.b $00
[000a730a]                           dc.b $00
[000a730b]                           dc.b $00
[000a730c]                           dc.w $03ff
[000a730e]                           dc.w $fff8
[000a7310]                           dc.b $00
[000a7311]                           dc.b $00
[000a7312]                           dc.w $03ff
[000a7314]                           dc.w $fff8
[000a7316]                           dc.w $1ee5
[000a7318]                           dc.w $f3ff
[000a731a]                           dc.w $fff8
[000a731c]                           dc.w $1094
[000a731e]                           dc.w $43ff
[000a7320]                           dc.w $fff8
[000a7322]                           dc.w $1094
[000a7324]                           dc.w $4bff
[000a7326]                           dc.w $fff8
[000a7328]                           dc.w $1c94
[000a732a]                           dc.w $4bff
[000a732c]                           dc.w $fff8
[000a732e]                           dc.w $1094
[000a7330]                           dc.w $43ff
[000a7332]                           dc.w $fff8
[000a7334]                           dc.w $1094
[000a7336]                           dc.w $4bff
[000a7338]                           dc.w $fff8
[000a733a]                           dc.w $1ee4
[000a733c]                           dc.w $4bff
[000a733e]                           dc.w $fff8
[000a7340]                           dc.b $00
[000a7341]                           dc.b $00
[000a7342]                           dc.w $03ff
[000a7344]                           dc.w $fff8
[000a7346]                           dc.b $00
[000a7347]                           dc.b $00
[000a7348]                           dc.w $03ff
[000a734a]                           dc.w $fff8
[000a734c]                           dc.b $00
[000a734d]                           dc.b $00
[000a734e]                           dc.b $00
[000a734f]                           dc.b $00
[000a7350]                           dc.b $00
[000a7351]                           dc.b $00
[000a7352]                           dc.b $00
[000a7353]                           dc.b $00
[000a7354]                           dc.b $00
[000a7355]                           dc.b $00
[000a7356]                           dc.b $00
[000a7357]                           dc.b $00
[000a7358]                           dc.b $00
[000a7359]                           dc.b $00
[000a735a]                           dc.b $00
[000a735b]                           dc.b $00
[000a735c]                           dc.b $00
[000a735d]                           dc.b $00
[000a735e]                           dc.b $00
[000a735f]                           dc.b $00
[000a7360]                           dc.b $00
[000a7361]                           dc.b $00
[000a7362]                           dc.b $00
[000a7363]                           dc.b $00
[000a7364]                           dc.b $00
[000a7365]                           dc.b $00
[000a7366]                           dc.b $00
[000a7367]                           dc.b $00
[000a7368]                           dc.b $00
[000a7369]                           dc.b $00
[000a736a]                           dc.b $00
[000a736b]                           dc.b $00
[000a736c]                           dc.b $00
[000a736d]                           dc.b $00
[000a736e]                           dc.b $00
[000a736f]                           dc.b $00
_DAT_IC_TEDI:
[000a7370]                           dc.b $00
[000a7371]                           dc.b $00
[000a7372]                           dc.b $00
[000a7373]                           dc.b $00
[000a7374]                           dc.b $00
[000a7375]                           dc.b $00
[000a7376]                           dc.b $00
[000a7377]                           dc.b $00
[000a7378]                           dc.b $00
[000a7379]                           dc.b $00
[000a737a]                           dc.b $00
[000a737b]                           dc.b $00
[000a737c]                           dc.b $00
[000a737d]                           dc.b $00
[000a737e]                           dc.b $00
[000a737f]                           dc.b $00
[000a7380]                           dc.b $00
[000a7381]                           dc.b $00
[000a7382]                           dc.b $00
[000a7383]                           dc.b $00
[000a7384]                           dc.b $00
[000a7385]                           dc.b $00
[000a7386]                           dc.b $00
[000a7387]                           dc.b $00
[000a7388]                           dc.b $00
[000a7389]                           dc.b $00
[000a738a]                           dc.b $00
[000a738b]                           dc.b $00
[000a738c]                           dc.b $00
[000a738d]                           dc.b $00
[000a738e]                           dc.b $00
[000a738f]                           dc.b $00
[000a7390]                           dc.b $00
[000a7391]                           dc.b $00
[000a7392]                           dc.b $00
[000a7393]                           dc.b $00
[000a7394]                           dc.b $00
[000a7395]                           dc.b $00
[000a7396]                           dc.b $00
[000a7397]                           dc.b $00
[000a7398]                           dc.b $00
[000a7399]                           dc.b $00
[000a739a]                           dc.b $00
[000a739b]                           dc.b $00
[000a739c]                           dc.b $00
[000a739d]                           dc.b $00
[000a739e]                           dc.b $00
[000a739f]                           dc.b $00
[000a73a0]                           dc.b $00
[000a73a1]                           dc.b $00
[000a73a2]                           dc.b $00
[000a73a3]                           dc.b $00
[000a73a4]                           dc.b $00
[000a73a5]                           dc.b $00
[000a73a6]                           dc.b $00
[000a73a7]                           dc.b $00
[000a73a8]                           dc.b $00
[000a73a9]                           dc.b $00
[000a73aa]                           dc.b $00
[000a73ab]                           dc.b $00
[000a73ac]                           dc.b $00
[000a73ad]                           dc.b $00
[000a73ae]                           dc.b $00
[000a73af]                           dc.b $00
[000a73b0]                           dc.b $00
[000a73b1]                           dc.b $00
[000a73b2]                           dc.b $00
[000a73b3]                           dc.b $00
[000a73b4]                           dc.b $00
[000a73b5]                           dc.b $00
[000a73b6]                           dc.b $00
[000a73b7]                           dc.b $00
[000a73b8]                           dc.b $00
[000a73b9]                           dc.b $00
[000a73ba]                           dc.w $03ff
[000a73bc]                           dc.w $fef8
[000a73be]                           dc.b $00
[000a73bf]                           dc.b $00
[000a73c0]                           dc.w $0200
[000a73c2]                           dc.w $0108
[000a73c4]                           dc.w $1ee5
[000a73c6]                           dc.w $f202
[000a73c8]                           dc.w $0108
[000a73ca]                           dc.w $1094
[000a73cc]                           dc.w $4202
[000a73ce]                           dc.w $0108
[000a73d0]                           dc.w $1094
[000a73d2]                           dc.w $4a02
[000a73d4]                           dc.w $0108
[000a73d6]                           dc.w $1c94
[000a73d8]                           dc.w $4a73
[000a73da]                           dc.w $8d08
[000a73dc]                           dc.w $1094
[000a73de]                           dc.w $4292
[000a73e0]                           dc.w $5108
[000a73e2]                           dc.w $1094
[000a73e4]                           dc.w $4a92
[000a73e6]                           dc.w $5108
[000a73e8]                           dc.w $1ee4
[000a73ea]                           dc.w $4a6b
[000a73ec]                           dc.w $8de8
[000a73ee]                           dc.b $00
[000a73ef]                           dc.b $00
[000a73f0]                           dc.w $0200
[000a73f2]                           dc.w $0108
[000a73f4]                           dc.b $00
[000a73f5]                           dc.b $00
[000a73f6]                           dc.w $03ff
[000a73f8]                           dc.w $fef8
[000a73fa]                           dc.b $00
[000a73fb]                           dc.b $00
[000a73fc]                           dc.b $00
[000a73fd]                           dc.b $00
[000a73fe]                           dc.b $00
[000a73ff]                           dc.b $00
[000a7400]                           dc.b $00
[000a7401]                           dc.b $00
[000a7402]                           dc.b $00
[000a7403]                           dc.b $00
[000a7404]                           dc.b $00
[000a7405]                           dc.b $00
[000a7406]                           dc.b $00
[000a7407]                           dc.b $00
[000a7408]                           dc.b $00
[000a7409]                           dc.b $00
[000a740a]                           dc.b $00
[000a740b]                           dc.b $00
[000a740c]                           dc.b $00
[000a740d]                           dc.b $00
[000a740e]                           dc.b $00
[000a740f]                           dc.b $00
[000a7410]                           dc.b $00
[000a7411]                           dc.b $00
[000a7412]                           dc.b $00
[000a7413]                           dc.b $00
[000a7414]                           dc.b $00
[000a7415]                           dc.b $00
[000a7416]                           dc.b $00
[000a7417]                           dc.b $00
[000a7418]                           dc.b $00
[000a7419]                           dc.b $00
[000a741a]                           dc.b $00
[000a741b]                           dc.b $00
[000a741c]                           dc.b $00
[000a741d]                           dc.b $00
IC_TEDI:
[000a741e] 000a72c2                  dc.l _MSK_IC_TEDI
[000a7422] 000a7370                  dc.l _DAT_IC_TEDI
[000a7426] 000a6ebc                  dc.l TEXT_13
[000a742a]                           dc.w $1000
[000a742c]                           dc.b $00
[000a742d]                           dc.b $00
[000a742e]                           dc.b $00
[000a742f]                           dc.b $00
[000a7430]                           dc.b $00
[000a7431]                           dc.b $0c
[000a7432]                           dc.b $00
[000a7433]                           dc.b $00
[000a7434]                           dc.b $00
[000a7435]                           dc.b $30
[000a7436]                           dc.b $00
[000a7437]                           dc.b $1d
[000a7438]                           dc.b $00
[000a7439]                           dc.b $00
[000a743a]                           dc.b $00
[000a743b]                           dc.b $20
[000a743c]                           dc.b $00
[000a743d]                           dc.b $48
[000a743e]                           dc.b $00
[000a743f]                           dc.b $08
[000a7440] 000a72ac                  dc.l _C4_IC_TEDI
EDIT_TEDI:
[000a7444]                           dc.w $ffff
[000a7446]                           dc.b $00
[000a7447]                           dc.b $01
[000a7448]                           dc.b $00
[000a7449]                           dc.b $08
[000a744a]                           dc.b $00
[000a744b]                           dc.b $18
[000a744c]                           dc.b $00
[000a744d]                           dc.b $40
[000a744e]                           dc.b $00
[000a744f]                           dc.b $10
[000a7450] 000a724c                  dc.l A_3DBUTTON02
[000a7454]                           dc.b $00
[000a7455]                           dc.b $00
[000a7456]                           dc.b $00
[000a7457]                           dc.b $00
[000a7458]                           dc.b $00
[000a7459]                           dc.b $42
[000a745a]                           dc.b $00
[000a745b]                           dc.b $08
_01_EDIT_TEDI:
[000a745c]                           dc.b $00
[000a745d]                           dc.b $08
[000a745e]                           dc.b $00
[000a745f]                           dc.b $02
[000a7460]                           dc.b $00
[000a7461]                           dc.b $07
[000a7462]                           dc.b $00
[000a7463]                           dc.b $18
[000a7464]                           dc.b $00
[000a7465]                           dc.b $40
[000a7466]                           dc.b $00
[000a7467]                           dc.b $00
[000a7468] 000a728c                  dc.l A_INNERFRAME02
[000a746c]                           dc.b $00
[000a746d]                           dc.b $01
[000a746e]                           dc.b $00
[000a746f]                           dc.b $00
[000a7470]                           dc.b $00
[000a7471]                           dc.b $40
[000a7472]                           dc.b $00
[000a7473]                           dc.b $05
_02_EDIT_TEDI:
[000a7474]                           dc.b $00
[000a7475]                           dc.b $03
[000a7476]                           dc.w $ffff
[000a7478]                           dc.w $ffff
[000a747a]                           dc.b $00
[000a747b]                           dc.b $1c
[000a747c]                           dc.b $00
[000a747d]                           dc.b $00
[000a747e]                           dc.b $00
[000a747f]                           dc.b $00
[000a7480] 000a6e62                  dc.l TEXT_01
[000a7484]                           dc.b $00
[000a7485]                           dc.b $01
[000a7486]                           dc.b $00
[000a7487]                           dc.b $01
[000a7488]                           dc.b $00
[000a7489]                           dc.b $05
[000a748a]                           dc.b $00
[000a748b]                           dc.b $01
_03_EDIT_TEDI:
[000a748c]                           dc.b $00
[000a748d]                           dc.b $04
[000a748e]                           dc.w $ffff
[000a7490]                           dc.w $ffff
[000a7492]                           dc.b $00
[000a7493]                           dc.b $16
[000a7494]                           dc.b $00
[000a7495]                           dc.b $00
[000a7496]                           dc.b $00
[000a7497]                           dc.b $00
[000a7498] 000a7230                  dc.l TEDI_001
[000a749c]                           dc.b $00
[000a749d]                           dc.b $07
[000a749e]                           dc.b $00
[000a749f]                           dc.b $01
[000a74a0]                           dc.b $00
[000a74a1]                           dc.b $38
[000a74a2]                           dc.b $00
[000a74a3]                           dc.b $01
_04_EDIT_TEDI:
[000a74a4]                           dc.b $00
[000a74a5]                           dc.b $05
[000a74a6]                           dc.w $ffff
[000a74a8]                           dc.w $ffff
[000a74aa]                           dc.b $00
[000a74ab]                           dc.b $1c
[000a74ac]                           dc.b $00
[000a74ad]                           dc.b $00
[000a74ae]                           dc.b $00
[000a74af]                           dc.b $00
[000a74b0] 000a6e68                  dc.l TEXT_02
[000a74b4]                           dc.b $00
[000a74b5]                           dc.b $01
[000a74b6]                           dc.b $00
[000a74b7]                           dc.b $02
[000a74b8]                           dc.b $00
[000a74b9]                           dc.b $04
[000a74ba]                           dc.b $00
[000a74bb]                           dc.b $01
_05_EDIT_TEDI:
[000a74bc]                           dc.b $00
[000a74bd]                           dc.b $06
[000a74be]                           dc.w $ffff
[000a74c0]                           dc.w $ffff
[000a74c2]                           dc.b $00
[000a74c3]                           dc.b $16
[000a74c4]                           dc.b $00
[000a74c5]                           dc.b $00
[000a74c6]                           dc.b $00
[000a74c7]                           dc.b $00
[000a74c8] 000a7230                  dc.l TEDI_001
[000a74cc]                           dc.b $00
[000a74cd]                           dc.b $07
[000a74ce]                           dc.b $00
[000a74cf]                           dc.b $02
[000a74d0]                           dc.b $00
[000a74d1]                           dc.b $38
[000a74d2]                           dc.b $00
[000a74d3]                           dc.b $01
_06_EDIT_TEDI:
[000a74d4]                           dc.b $00
[000a74d5]                           dc.b $07
[000a74d6]                           dc.w $ffff
[000a74d8]                           dc.w $ffff
[000a74da]                           dc.b $00
[000a74db]                           dc.b $1c
[000a74dc]                           dc.b $00
[000a74dd]                           dc.b $00
[000a74de]                           dc.b $00
[000a74df]                           dc.b $00
[000a74e0] 000a6ea6                  dc.l TEXT_03
[000a74e4]                           dc.b $00
[000a74e5]                           dc.b $01
[000a74e6]                           dc.b $00
[000a74e7]                           dc.b $03
[000a74e8]                           dc.b $00
[000a74e9]                           dc.b $04
[000a74ea]                           dc.b $00
[000a74eb]                           dc.b $01
_07_EDIT_TEDI:
[000a74ec]                           dc.b $00
[000a74ed]                           dc.b $01
[000a74ee]                           dc.w $ffff
[000a74f0]                           dc.w $ffff
[000a74f2]                           dc.b $00
[000a74f3]                           dc.b $16
[000a74f4]                           dc.b $00
[000a74f5]                           dc.b $00
[000a74f6]                           dc.b $00
[000a74f7]                           dc.b $00
[000a74f8] 000a7230                  dc.l TEDI_001
[000a74fc]                           dc.b $00
[000a74fd]                           dc.b $07
[000a74fe]                           dc.b $00
[000a74ff]                           dc.b $03
[000a7500]                           dc.b $00
[000a7501]                           dc.b $38
[000a7502]                           dc.b $00
[000a7503]                           dc.b $01
_08_EDIT_TEDI:
[000a7504]                           dc.b $00
[000a7505]                           dc.b $00
[000a7506]                           dc.w $ffff
[000a7508]                           dc.w $ffff
[000a750a]                           dc.b $00
[000a750b]                           dc.b $18
[000a750c]                           dc.w $4007
[000a750e]                           dc.b $00
[000a750f]                           dc.b $00
[000a7510] 000a726c                  dc.l A_3DBUTTON04
[000a7514]                           dc.b $00
[000a7515]                           dc.b $1b
[000a7516]                           dc.b $00
[000a7517]                           dc.b $05
[000a7518]                           dc.b $00
[000a7519]                           dc.b $0c
[000a751a]                           dc.b $00
[000a751b]                           dc.b $02
_08aEDIT_TEDI:
[000a751c] 000218bc                  dc.l editte_ok
[000a7520]                           dc.b $00
[000a7521]                           dc.b $00
[000a7522]                           dc.b $00
[000a7523]                           dc.b $00
[000a7524]                           dc.w $8020
[000a7526]                           dc.w $884f
[000a7528]                           dc.b $00
[000a7529]                           dc.b $00
[000a752a]                           dc.b $00
[000a752b]                           dc.b $00
[000a752c]                           dc.b $00
[000a752d]                           dc.b $00
[000a752e]                           dc.b $00
[000a752f]                           dc.b $00
[000a7530]                           dc.b $00
[000a7531]                           dc.b $00
[000a7532]                           dc.b $00
[000a7533]                           dc.b $00
WI_TEDI:
[000a7534]                           dc.b $00
[000a7535]                           dc.b $00
[000a7536]                           dc.b $00
[000a7537]                           dc.b $00
[000a7538] 0002196a                  dc.l tedi_service
[000a753c] 000218ce                  dc.l tedi_make
[000a7540] 0004f69e                  dc.l Awi_open
[000a7544] 0004e610                  dc.l Awi_init
[000a7548] 000a7444                  dc.l EDIT_TEDI
[000a754c]                           dc.b $00
[000a754d]                           dc.b $00
[000a754e]                           dc.b $00
[000a754f]                           dc.b $00
[000a7550]                           dc.b $00
[000a7551]                           dc.b $00
[000a7552]                           dc.b $00
[000a7553]                           dc.b $00
[000a7554]                           dc.w $ffff
[000a7556]                           dc.w $601f
[000a7558]                           dc.b $00
[000a7559]                           dc.b $00
[000a755a]                           dc.b $00
[000a755b]                           dc.b $00
[000a755c]                           dc.b $00
[000a755d]                           dc.b $a0
[000a755e]                           dc.b $00
[000a755f]                           dc.b $32
[000a7560]                           dc.b $00
[000a7561]                           dc.b $00
[000a7562]                           dc.b $00
[000a7563]                           dc.b $00
[000a7564]                           dc.b $00
[000a7565]                           dc.b $00
[000a7566]                           dc.b $00
[000a7567]                           dc.b $00
[000a7568]                           dc.b $00
[000a7569]                           dc.b $00
[000a756a]                           dc.b $00
[000a756b]                           dc.b $00
[000a756c]                           dc.b $00
[000a756d]                           dc.b $00
[000a756e]                           dc.b $00
[000a756f]                           dc.b $00
[000a7570]                           dc.w $ffff
[000a7572]                           dc.w $ffff
[000a7574]                           dc.w $ffff
[000a7576]                           dc.w $ffff
[000a7578]                           dc.b $00
[000a7579]                           dc.b $00
[000a757a]                           dc.b $00
[000a757b]                           dc.b $00
[000a757c]                           dc.w $fcf8
[000a757e] 000a6eab                  dc.l TEXT_04
[000a7582] 000a6e5e                  dc.l TEXT_002
[000a7586]                           dc.w $2710
[000a7588]                           dc.w $0103
[000a758a]                           dc.b $00
[000a758b]                           dc.b $00
[000a758c]                           dc.w $ffff
[000a758e] 000a741e                  dc.l IC_TEDI
[000a7592]                           dc.b $00
[000a7593]                           dc.b $00
[000a7594]                           dc.b $00
[000a7595]                           dc.b $00
[000a7596] 0005ef2c                  dc.l Awi_keys
[000a759a] 0004b600                  dc.l Awi_obchange
[000a759e] 0004b8cc                  dc.l Awi_redraw
[000a75a2] 00050454                  dc.l Awi_topped
[000a75a6] 0005013e                  dc.l Awi_closed
[000a75aa] 00050496                  dc.l Awi_fulled
[000a75ae] 0004bcc8                  dc.l Awi_arrowed
[000a75b2] 0004beea                  dc.l Awi_hslid
[000a75b6] 0004bf56                  dc.l Awi_vslid
[000a75ba] 000506ca                  dc.l Awi_sized
[000a75be] 000507bc                  dc.l Awi_moved
[000a75c2] 00050f9c                  dc.l Awi_iconify
[000a75c6] 0005117c                  dc.l Awi_uniconify
[000a75ca] 00052328                  dc.l Awi_gemscript
[000a75ce]                           dc.b $00
[000a75cf]                           dc.b $00
[000a75d0]                           dc.b $00
[000a75d1]                           dc.b $00
[000a75d2]                           dc.b $00
[000a75d3]                           dc.b $00
[000a75d4]                           dc.b $00
[000a75d5]                           dc.b $00
