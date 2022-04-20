
edic_backcol:
[0001c706] 3f03                      move.w     d3,-(a7)
[0001c708] 2f0a                      move.l     a2,-(a7)
[0001c70a] 2079 0010 1f12            movea.l    ACSblk,a0
[0001c710] 2268 025c                 movea.l    604(a0),a1
[0001c714] 2469 018c                 movea.l    396(a1),a2
[0001c718] 45ea 000c                 lea.l      12(a2),a2
[0001c71c] 700c                      moveq.l    #12,d0
[0001c71e] 3f00                      move.w     d0,-(a7)
[0001c720] 740d                      moveq.l    #13,d2
[0001c722] 720a                      moveq.l    #10,d1
[0001c724] 3012                      move.w     (a2),d0
[0001c726] e040                      asr.w      #8,d0
[0001c728] c07c 000f                 and.w      #$000F,d0
[0001c72c] 4eb9 0002 f280            jsr        oe_colsel
[0001c732] 544f                      addq.w     #2,a7
[0001c734] 3600                      move.w     d0,d3
[0001c736] 6b2a                      bmi.s      edic_backcol_1
[0001c738] 3212                      move.w     (a2),d1
[0001c73a] c27c f0ff                 and.w      #$F0FF,d1
[0001c73e] e148                      lsl.w      #8,d0
[0001c740] 8240                      or.w       d0,d1
[0001c742] 3481                      move.w     d1,(a2)
[0001c744] 2079 0010 1f12            movea.l    ACSblk,a0
[0001c74a] 2068 0258                 movea.l    600(a0),a0
[0001c74e] 2279 0010 1f12            movea.l    ACSblk,a1
[0001c754] 2469 0258                 movea.l    600(a1),a2
[0001c758] 226a 0066                 movea.l    102(a2),a1
[0001c75c] 700e                      moveq.l    #14,d0
[0001c75e] 72ff                      moveq.l    #-1,d1
[0001c760] 4e91                      jsr        (a1)
edic_backcol_1:
[0001c762] 245f                      movea.l    (a7)+,a2
[0001c764] 361f                      move.w     (a7)+,d3
[0001c766] 4e75                      rts

edic_frontcol:
[0001c768] 2f03                      move.l     d3,-(a7)
[0001c76a] 2f0a                      move.l     a2,-(a7)
[0001c76c] 2079 0010 1f12            movea.l    ACSblk,a0
[0001c772] 2268 025c                 movea.l    604(a0),a1
[0001c776] 2469 018c                 movea.l    396(a1),a2
[0001c77a] 45ea 000c                 lea.l      12(a2),a2
[0001c77e] 7006                      moveq.l    #6,d0
[0001c780] 3f00                      move.w     d0,-(a7)
[0001c782] 7407                      moveq.l    #7,d2
[0001c784] 7204                      moveq.l    #4,d1
[0001c786] 3012                      move.w     (a2),d0
[0001c788] 760c                      moveq.l    #12,d3
[0001c78a] e660                      asr.w      d3,d0
[0001c78c] c07c 000f                 and.w      #$000F,d0
[0001c790] 4eb9 0002 f280            jsr        oe_colsel
[0001c796] 544f                      addq.w     #2,a7
[0001c798] 3600                      move.w     d0,d3
[0001c79a] 6b2c                      bmi.s      edic_frontcol_1
[0001c79c] 3212                      move.w     (a2),d1
[0001c79e] c27c 0fff                 and.w      #$0FFF,d1
[0001c7a2] 740c                      moveq.l    #12,d2
[0001c7a4] e568                      lsl.w      d2,d0
[0001c7a6] 8240                      or.w       d0,d1
[0001c7a8] 3481                      move.w     d1,(a2)
[0001c7aa] 2079 0010 1f12            movea.l    ACSblk,a0
[0001c7b0] 2068 0258                 movea.l    600(a0),a0
[0001c7b4] 2279 0010 1f12            movea.l    ACSblk,a1
[0001c7ba] 2469 0258                 movea.l    600(a1),a2
[0001c7be] 226a 0066                 movea.l    102(a2),a1
[0001c7c2] 700e                      moveq.l    #14,d0
[0001c7c4] 72ff                      moveq.l    #-1,d1
[0001c7c6] 4e91                      jsr        (a1)
edic_frontcol_1:
[0001c7c8] 245f                      movea.l    (a7)+,a2
[0001c7ca] 261f                      move.l     (a7)+,d3
[0001c7cc] 4e75                      rts

getFgColor:
[0001c7ce] 5d4f                      subq.w     #6,a7
[0001c7d0] 41d7                      lea.l      (a7),a0
[0001c7d2] 4242                      clr.w      d2
[0001c7d4] 3200                      move.w     d0,d1
[0001c7d6] 2279 0010 1f12            movea.l    ACSblk,a1
[0001c7dc] 3029 0010                 move.w     16(a1),d0
[0001c7e0] 4eb9 0006 7136            jsr        vq_color
[0001c7e6] 0c57 01f4                 cmpi.w     #$01F4,(a7)
[0001c7ea] 6c14                      bge.s      getFgColor_1
[0001c7ec] 0c6f 0190 0002            cmpi.w     #$0190,2(a7)
[0001c7f2] 6c0c                      bge.s      getFgColor_1
[0001c7f4] 0c6f 0258 0004            cmpi.w     #$0258,4(a7)
[0001c7fa] 6c04                      bge.s      getFgColor_1
[0001c7fc] 4240                      clr.w      d0
[0001c7fe] 6002                      bra.s      getFgColor_2
getFgColor_1:
[0001c800] 7001                      moveq.l    #1,d0
getFgColor_2:
[0001c802] 5c4f                      addq.w     #6,a7
[0001c804] 4e75                      rts

ito_cicon:
[0001c806] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0001c80a] 2648                      movea.l    a0,a3
[0001c80c] 2849                      movea.l    a1,a4
[0001c80e] 246f 0018                 movea.l    24(a7),a2
[0001c812] 3600                      move.w     d0,d3
[0001c814] 2079 0010 1f12            movea.l    ACSblk,a0
[0001c81a] b068 001c                 cmp.w      28(a0),d0
[0001c81e] 660e                      bne.s      ito_cicon_1
[0001c820] 2f0a                      move.l     a2,-(a7)
[0001c822] 204b                      movea.l    a3,a0
[0001c824] 4eb9 0001 4a3e            jsr        to_cicon
[0001c82a] 584f                      addq.w     #4,a7
[0001c82c] 6048                      bra.s      ito_cicon_2
ito_cicon_1:
[0001c82e] 780f                      moveq.l    #15,d4
[0001c830] d86a 0016                 add.w      22(a2),d4
[0001c834] c87c fff0                 and.w      #$FFF0,d4
[0001c838] c9ea 0018                 muls.w     24(a2),d4
[0001c83c] e644                      asr.w      #3,d4
[0001c83e] 48c4                      ext.l      d4
[0001c840] 2004                      move.l     d4,d0
[0001c842] 3203                      move.w     d3,d1
[0001c844] 48c1                      ext.l      d1
[0001c846] 4eb9 0007 76f0            jsr        _lmul
[0001c84c] 2800                      move.l     d0,d4
[0001c84e] 7006                      moveq.l    #6,d0
[0001c850] d084                      add.l      d4,d0
[0001c852] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001c858] 2848                      movea.l    a0,a4
[0001c85a] 200c                      move.l     a4,d0
[0001c85c] 6604                      bne.s      ito_cicon_3
[0001c85e] 91c8                      suba.l     a0,a0
[0001c860] 6014                      bra.s      ito_cicon_2
ito_cicon_3:
[0001c862] 2004                      move.l     d4,d0
[0001c864] 43eb 0006                 lea.l      6(a3),a1
[0001c868] 41ec 0006                 lea.l      6(a4),a0
[0001c86c] 4eb9 0007 6f44            jsr        memcpy
[0001c872] 41ec 0006                 lea.l      6(a4),a0
ito_cicon_2:
[0001c876] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[0001c87a] 4e75                      rts

mfdb_dm:
[0001c87c] 48e7 003c                 movem.l    a2-a5,-(a7)
[0001c880] 286f 0014                 movea.l    20(a7),a4
[0001c884] 246f 0018                 movea.l    24(a7),a2
[0001c888] 266a 000c                 movea.l    12(a2),a3
[0001c88c] 2a79 0010 1f12            movea.l    ACSblk,a5
[0001c892] 2a6d 023c                 movea.l    572(a5),a5
[0001c896] 302d 000e                 move.w     14(a5),d0
[0001c89a] c07c 0800                 and.w      #$0800,d0
[0001c89e] 670c                      beq.s      mfdb_dm_1
[0001c8a0] 7201                      moveq.l    #1,d1
[0001c8a2] 3341 000a                 move.w     d1,10(a1)
[0001c8a6] 3141 000a                 move.w     d1,10(a0)
[0001c8aa] 600a                      bra.s      mfdb_dm_2
mfdb_dm_1:
[0001c8ac] 4240                      clr.w      d0
[0001c8ae] 3340 000a                 move.w     d0,10(a1)
[0001c8b2] 3140 000a                 move.w     d0,10(a0)
mfdb_dm_2:
[0001c8b6] 302b 0016                 move.w     22(a3),d0
[0001c8ba] 3340 0004                 move.w     d0,4(a1)
[0001c8be] 3140 0004                 move.w     d0,4(a0)
[0001c8c2] 322b 0018                 move.w     24(a3),d1
[0001c8c6] 3341 0006                 move.w     d1,6(a1)
[0001c8ca] 3141 0006                 move.w     d1,6(a0)
[0001c8ce] 3029 0004                 move.w     4(a1),d0
[0001c8d2] e840                      asr.w      #4,d0
[0001c8d4] 3340 0008                 move.w     d0,8(a1)
[0001c8d8] 3140 0008                 move.w     d0,8(a0)
[0001c8dc] 4241                      clr.w      d1
[0001c8de] 3341 0012                 move.w     d1,18(a1)
[0001c8e2] 3341 0010                 move.w     d1,16(a1)
[0001c8e6] 3341 000e                 move.w     d1,14(a1)
[0001c8ea] 3141 0012                 move.w     d1,18(a0)
[0001c8ee] 3141 0010                 move.w     d1,16(a0)
[0001c8f2] 3141 000e                 move.w     d1,14(a0)
[0001c8f6] 337c 0001 000c            move.w     #$0001,12(a1)
[0001c8fc] 20ac 0010                 move.l     16(a4),(a0)
[0001c900] 22ac 0014                 move.l     20(a4),(a1)
[0001c904] 317c 0001 000c            move.w     #$0001,12(a0)
[0001c90a] 302c 0018                 move.w     24(a4),d0
[0001c90e] 2679 0010 1f12            movea.l    ACSblk,a3
[0001c914] b06b 001c                 cmp.w      28(a3),d0
[0001c918] 6626                      bne.s      mfdb_dm_3
[0001c91a] 316b 001c 000c            move.w     28(a3),12(a0)
[0001c920] 202c 0022                 move.l     34(a4),d0
[0001c924] 6712                      beq.s      mfdb_dm_4
[0001c926] 7201                      moveq.l    #1,d1
[0001c928] c26a 000a                 and.w      10(a2),d1
[0001c92c] 670a                      beq.s      mfdb_dm_4
[0001c92e] 22ac 0026                 move.l     38(a4),(a1)
[0001c932] 20ac 0022                 move.l     34(a4),(a0)
[0001c936] 6008                      bra.s      mfdb_dm_3
mfdb_dm_4:
[0001c938] 22ac 001e                 move.l     30(a4),(a1)
[0001c93c] 20ac 001a                 move.l     26(a4),(a0)
mfdb_dm_3:
[0001c940] 302c 002e                 move.w     46(a4),d0
[0001c944] 2679 0010 1f12            movea.l    ACSblk,a3
[0001c94a] b06b 001c                 cmp.w      28(a3),d0
[0001c94e] 6626                      bne.s      mfdb_dm_5
[0001c950] 316b 001c 000c            move.w     28(a3),12(a0)
[0001c956] 202c 0038                 move.l     56(a4),d0
[0001c95a] 6712                      beq.s      mfdb_dm_6
[0001c95c] 7201                      moveq.l    #1,d1
[0001c95e] c26a 000a                 and.w      10(a2),d1
[0001c962] 670a                      beq.s      mfdb_dm_6
[0001c964] 22ac 003c                 move.l     60(a4),(a1)
[0001c968] 20ac 0038                 move.l     56(a4),(a0)
[0001c96c] 6008                      bra.s      mfdb_dm_5
mfdb_dm_6:
[0001c96e] 22ac 0034                 move.l     52(a4),(a1)
[0001c972] 20ac 0030                 move.l     48(a4),(a0)
mfdb_dm_5:
[0001c976] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0001c97a] 4e75                      rts

from_cicon:
[0001c97c] 48e7 1c36                 movem.l    d3-d5/a2-a3/a5-a6,-(a7)
[0001c980] 4fef ffd8                 lea.l      -40(a7),a7
[0001c984] 2a48                      movea.l    a0,a5
[0001c986] 2449                      movea.l    a1,a2
[0001c988] 3800                      move.w     d0,d4
[0001c98a] 760f                      moveq.l    #15,d3
[0001c98c] d66a 0016                 add.w      22(a2),d3
[0001c990] c67c fff0                 and.w      #$FFF0,d3
[0001c994] 3a03                      move.w     d3,d5
[0001c996] cbea 0018                 muls.w     24(a2),d5
[0001c99a] e645                      asr.w      #3,d5
[0001c99c] 48c5                      ext.l      d5
[0001c99e] 2005                      move.l     d5,d0
[0001c9a0] 3204                      move.w     d4,d1
[0001c9a2] 48c1                      ext.l      d1
[0001c9a4] 4eb9 0007 76f0            jsr        _lmul
[0001c9aa] 2a00                      move.l     d0,d5
[0001c9ac] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001c9b2] 2648                      movea.l    a0,a3
[0001c9b4] 200b                      move.l     a3,d0
[0001c9b6] 6606                      bne.s      from_cicon_1
[0001c9b8] 91c8                      suba.l     a0,a0
[0001c9ba] 6000 009e                 bra        from_cicon_2
from_cicon_1:
[0001c9be] 2079 0010 1f12            movea.l    ACSblk,a0
[0001c9c4] b868 001c                 cmp.w      28(a0),d4
[0001c9c8] 660e                      bne.s      from_cicon_3
[0001c9ca] 2268 023c                 movea.l    572(a0),a1
[0001c9ce] 3029 000e                 move.w     14(a1),d0
[0001c9d2] c07c 0800                 and.w      #$0800,d0
[0001c9d6] 670e                      beq.s      from_cicon_4
from_cicon_3:
[0001c9d8] 2005                      move.l     d5,d0
[0001c9da] 224d                      movea.l    a5,a1
[0001c9dc] 204b                      movea.l    a3,a0
[0001c9de] 4eb9 0007 6f44            jsr        memcpy
[0001c9e4] 6072                      bra.s      from_cicon_5
from_cicon_4:
[0001c9e6] 4def 0014                 lea.l      20(a7),a6
[0001c9ea] 3d7c 0001 000a            move.w     #$0001,10(a6)
[0001c9f0] 426f 000a                 clr.w      10(a7)
[0001c9f4] 3f43 0004                 move.w     d3,4(a7)
[0001c9f8] 3d43 0004                 move.w     d3,4(a6)
[0001c9fc] 302a 0018                 move.w     24(a2),d0
[0001ca00] 3f40 0006                 move.w     d0,6(a7)
[0001ca04] 3d40 0006                 move.w     d0,6(a6)
[0001ca08] 3203                      move.w     d3,d1
[0001ca0a] e841                      asr.w      #4,d1
[0001ca0c] 3f41 0008                 move.w     d1,8(a7)
[0001ca10] 3d41 0008                 move.w     d1,8(a6)
[0001ca14] 2079 0010 1f12            movea.l    ACSblk,a0
[0001ca1a] 3028 001c                 move.w     28(a0),d0
[0001ca1e] 3f40 000c                 move.w     d0,12(a7)
[0001ca22] 3d40 000c                 move.w     d0,12(a6)
[0001ca26] 4241                      clr.w      d1
[0001ca28] 3f41 0012                 move.w     d1,18(a7)
[0001ca2c] 3f41 0010                 move.w     d1,16(a7)
[0001ca30] 3f41 000e                 move.w     d1,14(a7)
[0001ca34] 3d41 0012                 move.w     d1,18(a6)
[0001ca38] 3d41 0010                 move.w     d1,16(a6)
[0001ca3c] 3d41 000e                 move.w     d1,14(a6)
[0001ca40] 2e8d                      move.l     a5,(a7)
[0001ca42] 2c8b                      move.l     a3,(a6)
[0001ca44] 224e                      movea.l    a6,a1
[0001ca46] 41d7                      lea.l      (a7),a0
[0001ca48] 2479 0010 1f12            movea.l    ACSblk,a2
[0001ca4e] 302a 0010                 move.w     16(a2),d0
[0001ca52] 4eb9 0006 66a8            jsr        vr_trnfm
from_cicon_5:
[0001ca58] 204b                      movea.l    a3,a0
from_cicon_2:
[0001ca5a] 4fef 0028                 lea.l      40(a7),a7
[0001ca5e] 4cdf 6c38                 movem.l    (a7)+,d3-d5/a2-a3/a5-a6
[0001ca62] 4e75                      rts

edic_link:
[0001ca64] 2f0a                      move.l     a2,-(a7)
[0001ca66] 2f0b                      move.l     a3,-(a7)
[0001ca68] 2450                      movea.l    (a0),a2
[0001ca6a] 206a 0008                 movea.l    8(a2),a0
[0001ca6e] 2068 018c                 movea.l    396(a0),a0
[0001ca72] 20aa 0014                 move.l     20(a2),(a0)
[0001ca76] 216a 0010 0004            move.l     16(a2),4(a0)
[0001ca7c] 93c9                      suba.l     a1,a1
[0001ca7e] 2679 0010 1f12            movea.l    ACSblk,a3
[0001ca84] 302b 001c                 move.w     28(a3),d0
[0001ca88] b06a 002e                 cmp.w      46(a2),d0
[0001ca8c] 661e                      bne.s      edic_link_1
[0001ca8e] 43ea 002e                 lea.l      46(a2),a1
[0001ca92] 236a 0030 0002            move.l     48(a2),2(a1)
[0001ca98] 236a 0034 0006            move.l     52(a2),6(a1)
[0001ca9e] 236a 0038 000a            move.l     56(a2),10(a1)
[0001caa4] 236a 003c 000e            move.l     60(a2),14(a1)
[0001caaa] 602c                      bra.s      edic_link_2
edic_link_1:
[0001caac] 2679 0010 1f12            movea.l    ACSblk,a3
[0001cab2] 302b 001c                 move.w     28(a3),d0
[0001cab6] b06a 0018                 cmp.w      24(a2),d0
[0001caba] 661c                      bne.s      edic_link_2
[0001cabc] 43ea 0018                 lea.l      24(a2),a1
[0001cac0] 236a 001a 0002            move.l     26(a2),2(a1)
[0001cac6] 236a 001e 0006            move.l     30(a2),6(a1)
[0001cacc] 236a 0022 000a            move.l     34(a2),10(a1)
[0001cad2] 236a 0026 000e            move.l     38(a2),14(a1)
edic_link_2:
[0001cad8] 2149 0022                 move.l     a1,34(a0)
[0001cadc] 206a 0008                 movea.l    8(a2),a0
[0001cae0] 41e8 0180                 lea.l      384(a0),a0
[0001cae4] 4eb9 0004 a34e            jsr        Aob_icon
[0001caea] 265f                      movea.l    (a7)+,a3
[0001caec] 245f                      movea.l    (a7)+,a2
[0001caee] 4e75                      rts

edic_thin:
[0001caf0] 2079 0010 1f12            movea.l    ACSblk,a0
[0001caf6] 2068 025c                 movea.l    604(a0),a0
[0001cafa] 41e8 0030                 lea.l      48(a0),a0
[0001cafe] 7008                      moveq.l    #8,d0
[0001cb00] 3140 0016                 move.w     d0,22(a0)
[0001cb04] 3140 0014                 move.w     d0,20(a0)
[0001cb08] 72ff                      moveq.l    #-1,d1
[0001cb0a] 2079 0010 1f12            movea.l    ACSblk,a0
[0001cb10] 2068 0258                 movea.l    600(a0),a0
[0001cb14] 2279 0010 1f12            movea.l    ACSblk,a1
[0001cb1a] 2269 0258                 movea.l    600(a1),a1
[0001cb1e] 2269 0066                 movea.l    102(a1),a1
[0001cb22] 7001                      moveq.l    #1,d0
[0001cb24] 4e91                      jsr        (a1)
[0001cb26] 4e75                      rts

edic_thick:
[0001cb28] 2079 0010 1f12            movea.l    ACSblk,a0
[0001cb2e] 2068 025c                 movea.l    604(a0),a0
[0001cb32] 41e8 0030                 lea.l      48(a0),a0
[0001cb36] 7018                      moveq.l    #24,d0
[0001cb38] 3140 0016                 move.w     d0,22(a0)
[0001cb3c] 3140 0014                 move.w     d0,20(a0)
[0001cb40] 72ff                      moveq.l    #-1,d1
[0001cb42] 2079 0010 1f12            movea.l    ACSblk,a0
[0001cb48] 2068 0258                 movea.l    600(a0),a0
[0001cb4c] 2279 0010 1f12            movea.l    ACSblk,a1
[0001cb52] 2269 0258                 movea.l    600(a1),a1
[0001cb56] 2269 0066                 movea.l    102(a1),a1
[0001cb5a] 7001                      moveq.l    #1,d0
[0001cb5c] 4e91                      jsr        (a1)
[0001cb5e] 4e75                      rts

edic_black0:
[0001cb60] 2f0a                      move.l     a2,-(a7)
[0001cb62] 2f0b                      move.l     a3,-(a7)
[0001cb64] 45f9 0010 1f12            lea.l      ACSblk,a2
[0001cb6a] 2052                      movea.l    (a2),a0
[0001cb6c] 2068 025c                 movea.l    604(a0),a0
[0001cb70] 2252                      movea.l    (a2),a1
[0001cb72] 2269 0258                 movea.l    600(a1),a1
[0001cb76] 2651                      movea.l    (a1),a3
[0001cb78] 317c 0008 02b4            move.w     #$0008,692(a0)
[0001cb7e] 302b 0044                 move.w     68(a3),d0
[0001cb82] 2252                      movea.l    (a2),a1
[0001cb84] 2269 023c                 movea.l    572(a1),a1
[0001cb88] 2269 006a                 movea.l    106(a1),a1
[0001cb8c] 3340 0008                 move.w     d0,8(a1)
[0001cb90] 48c0                      ext.l      d0
[0001cb92] 2268 003c                 movea.l    60(a0),a1
[0001cb96] 2340 0004                 move.l     d0,4(a1)
[0001cb9a] 302b 0044                 move.w     68(a3),d0
[0001cb9e] 6100 fc2e                 bsr        getFgColor
[0001cba2] 2052                      movea.l    (a2),a0
[0001cba4] 2268 023c                 movea.l    572(a0),a1
[0001cba8] 2069 006a                 movea.l    106(a1),a0
[0001cbac] 3140 0006                 move.w     d0,6(a0)
[0001cbb0] 72ff                      moveq.l    #-1,d1
[0001cbb2] 2052                      movea.l    (a2),a0
[0001cbb4] 2068 0258                 movea.l    600(a0),a0
[0001cbb8] 2252                      movea.l    (a2),a1
[0001cbba] 2669 0258                 movea.l    600(a1),a3
[0001cbbe] 226b 0066                 movea.l    102(a3),a1
[0001cbc2] 7001                      moveq.l    #1,d0
[0001cbc4] 4e91                      jsr        (a1)
[0001cbc6] 265f                      movea.l    (a7)+,a3
[0001cbc8] 245f                      movea.l    (a7)+,a2
[0001cbca] 4e75                      rts

edic_black:
[0001cbcc] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0001cbd0] 45f9 0010 1f12            lea.l      ACSblk,a2
[0001cbd6] 2052                      movea.l    (a2),a0
[0001cbd8] 2268 0258                 movea.l    600(a0),a1
[0001cbdc] 2651                      movea.l    (a1),a3
[0001cbde] 302b 0018                 move.w     24(a3),d0
[0001cbe2] b068 001c                 cmp.w      28(a0),d0
[0001cbe6] 6618                      bne.s      edic_black_1
[0001cbe8] 72ff                      moveq.l    #-1,d1
[0001cbea] 43f9 000a 24ca            lea.l      COLOR,a1
[0001cbf0] 2068 0258                 movea.l    600(a0),a0
[0001cbf4] 70ff                      moveq.l    #-1,d0
[0001cbf6] 4eb9 0004 948a            jsr        Ame_popup
[0001cbfc] 3600                      move.w     d0,d3
[0001cbfe] 6026                      bra.s      edic_black_2
edic_black_1:
[0001cc00] 302b 002e                 move.w     46(a3),d0
[0001cc04] 2052                      movea.l    (a2),a0
[0001cc06] b068 001c                 cmp.w      28(a0),d0
[0001cc0a] 6618                      bne.s      edic_black_3
[0001cc0c] 72ff                      moveq.l    #-1,d1
[0001cc0e] 43f9 000a 2662            lea.l      COLOR256,a1
[0001cc14] 2068 0258                 movea.l    600(a0),a0
[0001cc18] 70ff                      moveq.l    #-1,d0
[0001cc1a] 4eb9 0004 948a            jsr        Ame_popup
[0001cc20] 3600                      move.w     d0,d3
[0001cc22] 6002                      bra.s      edic_black_2
edic_black_3:
[0001cc24] 7602                      moveq.l    #2,d3
edic_black_2:
[0001cc26] 4a43                      tst.w      d3
[0001cc28] 6f16                      ble.s      edic_black_4
[0001cc2a] 5343                      subq.w     #1,d3
[0001cc2c] 3743 0044                 move.w     d3,68(a3)
[0001cc30] 4a43                      tst.w      d3
[0001cc32] 6f06                      ble.s      edic_black_5
[0001cc34] 6100 ff2a                 bsr        edic_black0
[0001cc38] 6006                      bra.s      edic_black_4
edic_black_5:
[0001cc3a] 4eb9 0001 cc46            jsr        edic_white
edic_black_4:
[0001cc40] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0001cc44] 4e75                      rts

edic_white:
[0001cc46] 2f0a                      move.l     a2,-(a7)
[0001cc48] 45f9 0010 1f12            lea.l      ACSblk,a2
[0001cc4e] 2052                      movea.l    (a2),a0
[0001cc50] 2068 025c                 movea.l    604(a0),a0
[0001cc54] 2252                      movea.l    (a2),a1
[0001cc56] 2269 0258                 movea.l    600(a1),a1
[0001cc5a] 2251                      movea.l    (a1),a1
[0001cc5c] 4269 0044                 clr.w      68(a1)
[0001cc60] 317c 0009 02b4            move.w     #$0009,692(a0)
[0001cc66] 2268 003c                 movea.l    60(a0),a1
[0001cc6a] 42a9 0004                 clr.l      4(a1)
[0001cc6e] 72ff                      moveq.l    #-1,d1
[0001cc70] 7001                      moveq.l    #1,d0
[0001cc72] 2052                      movea.l    (a2),a0
[0001cc74] 2068 0258                 movea.l    600(a0),a0
[0001cc78] 2252                      movea.l    (a2),a1
[0001cc7a] 2269 0258                 movea.l    600(a1),a1
[0001cc7e] 2269 0066                 movea.l    102(a1),a1
[0001cc82] 4e91                      jsr        (a1)
[0001cc84] 245f                      movea.l    (a7)+,a2
[0001cc86] 4e75                      rts

edic_invisible:
[0001cc88] 2f0a                      move.l     a2,-(a7)
[0001cc8a] 45f9 0010 1f12            lea.l      ACSblk,a2
[0001cc90] 2052                      movea.l    (a2),a0
[0001cc92] 2068 025c                 movea.l    604(a0),a0
[0001cc96] 2252                      movea.l    (a2),a1
[0001cc98] 2269 0258                 movea.l    600(a1),a1
[0001cc9c] 2251                      movea.l    (a1),a1
[0001cc9e] 337c ffff 0044            move.w     #$FFFF,68(a1)
[0001cca4] 317c 000a 02b4            move.w     #$000A,692(a0)
[0001ccaa] 2268 003c                 movea.l    60(a0),a1
[0001ccae] 237c ffff ffff 0004       move.l     #$FFFFFFFF,4(a1)
[0001ccb6] 72ff                      moveq.l    #-1,d1
[0001ccb8] 7001                      moveq.l    #1,d0
[0001ccba] 2052                      movea.l    (a2),a0
[0001ccbc] 2068 0258                 movea.l    600(a0),a0
[0001ccc0] 2252                      movea.l    (a2),a1
[0001ccc2] 2269 0258                 movea.l    600(a1),a1
[0001ccc6] 2269 0066                 movea.l    102(a1),a1
[0001ccca] 4e91                      jsr        (a1)
[0001cccc] 245f                      movea.l    (a7)+,a2
[0001ccce] 4e75                      rts

edic_nextpattern:
[0001ccd0] 2079 0010 1f12            movea.l    ACSblk,a0
[0001ccd6] 2268 025c                 movea.l    604(a0),a1
[0001ccda] 2069 015c                 movea.l    348(a1),a0
[0001ccde] 5848                      addq.w     #4,a0
[0001cce0] 3028 0002                 move.w     2(a0),d0
[0001cce4] d07c 0010                 add.w      #$0010,d0
[0001cce8] c07c 0070                 and.w      #$0070,d0
[0001ccec] 0268 ff8f 0002            andi.w     #$FF8F,2(a0)
[0001ccf2] 8168 0002                 or.w       d0,2(a0)
[0001ccf6] 72ff                      moveq.l    #-1,d1
[0001ccf8] 700e                      moveq.l    #14,d0
[0001ccfa] 2079 0010 1f12            movea.l    ACSblk,a0
[0001cd00] 2068 0258                 movea.l    600(a0),a0
[0001cd04] 2279 0010 1f12            movea.l    ACSblk,a1
[0001cd0a] 2269 0258                 movea.l    600(a1),a1
[0001cd0e] 2269 0066                 movea.l    102(a1),a1
[0001cd12] 4e91                      jsr        (a1)
[0001cd14] 4e75                      rts

snap:
[0001cd16] 72ff                      moveq.l    #-1,d1
[0001cd18] d279 0007 824c            add.w      imagesnap,d1
[0001cd1e] e241                      asr.w      #1,d1
[0001cd20] d240                      add.w      d0,d1
[0001cd22] 3439 0007 824c            move.w     imagesnap,d2
[0001cd28] 4442                      neg.w      d2
[0001cd2a] c242                      and.w      d2,d1
[0001cd2c] 3001                      move.w     d1,d0
[0001cd2e] 4e75                      rts

do_plane:
[0001cd30] 48e7 1c3e                 movem.l    d3-d5/a2-a6,-(a7)
[0001cd34] 2a48                      movea.l    a0,a5
[0001cd36] 2649                      movea.l    a1,a3
[0001cd38] 3600                      move.w     d0,d3
[0001cd3a] 2801                      move.l     d1,d4
[0001cd3c] 5340                      subq.w     #1,d0
[0001cd3e] 6614                      bne.s      do_plane_1
[0001cd40] 3003                      move.w     d3,d0
[0001cd42] 48c0                      ext.l      d0
[0001cd44] 4eb9 0007 76f0            jsr        _lmul
[0001cd4a] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001cd50] 2448                      movea.l    a0,a2
[0001cd52] 601c                      bra.s      do_plane_2
do_plane_1:
[0001cd54] 3003                      move.w     d3,d0
[0001cd56] 48c0                      ext.l      d0
[0001cd58] 2204                      move.l     d4,d1
[0001cd5a] 4eb9 0007 76f0            jsr        _lmul
[0001cd60] 5c80                      addq.l     #6,d0
[0001cd62] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001cd68] 2448                      movea.l    a0,a2
[0001cd6a] 200a                      move.l     a2,d0
[0001cd6c] 6702                      beq.s      do_plane_2
[0001cd6e] 5c4a                      addq.w     #6,a2
do_plane_2:
[0001cd70] 200a                      move.l     a2,d0
[0001cd72] 6700 0198                 beq        do_plane_3
[0001cd76] 2680                      move.l     d0,(a3)
[0001cd78] 206f 0028                 movea.l    40(a7),a0
[0001cd7c] 2a90                      move.l     (a0),(a5)
[0001cd7e] 3003                      move.w     d3,d0
[0001cd80] 48c0                      ext.l      d0
[0001cd82] 2204                      move.l     d4,d1
[0001cd84] 4eb9 0007 76f0            jsr        _lmul
[0001cd8a] 2200                      move.l     d0,d1
[0001cd8c] 204a                      movea.l    a2,a0
[0001cd8e] 4240                      clr.w      d0
[0001cd90] 4eb9 0007 712e            jsr        memset
[0001cd96] 2079 0010 1f12            movea.l    ACSblk,a0
[0001cd9c] b668 001c                 cmp.w      28(a0),d3
[0001cda0] 6600 010c                 bne        do_plane_4
[0001cda4] 3028 001c                 move.w     28(a0),d0
[0001cda8] 3b40 000c                 move.w     d0,12(a5)
[0001cdac] 3740 000c                 move.w     d0,12(a3)
[0001cdb0] 2079 0010 1f12            movea.l    ACSblk,a0
[0001cdb6] 2268 023c                 movea.l    572(a0),a1
[0001cdba] 3229 000e                 move.w     14(a1),d1
[0001cdbe] c27c 0800                 and.w      #$0800,d1
[0001cdc2] 6700 00cc                 beq        do_plane_5
[0001cdc6] 322d 0006                 move.w     6(a5),d1
[0001cdca] 302d 0004                 move.w     4(a5),d0
[0001cdce] 4eb9 0004 d928            jsr        Abp_create
[0001cdd4] 2848                      movea.l    a0,a4
[0001cdd6] 200c                      move.l     a4,d0
[0001cdd8] 6714                      beq.s      do_plane_6
[0001cdda] 322b 0006                 move.w     6(a3),d1
[0001cdde] 302b 0004                 move.w     4(a3),d0
[0001cde2] 4eb9 0004 d928            jsr        Abp_create
[0001cde8] 2c48                      movea.l    a0,a6
[0001cdea] 200e                      move.l     a6,d0
[0001cdec] 662c                      bne.s      do_plane_7
do_plane_6:
[0001cdee] 200c                      move.l     a4,d0
[0001cdf0] 6708                      beq.s      do_plane_8
[0001cdf2] 204c                      movea.l    a4,a0
[0001cdf4] 4eb9 0004 d996            jsr        Abp_delete
do_plane_8:
[0001cdfa] b67c 0001                 cmp.w      #$0001,d3
[0001cdfe] 660c                      bne.s      do_plane_9
[0001ce00] 2053                      movea.l    (a3),a0
[0001ce02] 4eb9 0004 7e26            jsr        Ax_free
[0001ce08] 6000 0102                 bra        do_plane_3
do_plane_9:
[0001ce0c] 2053                      movea.l    (a3),a0
[0001ce0e] 5d48                      subq.w     #6,a0
[0001ce10] 4eb9 0004 7e26            jsr        Ax_free
[0001ce16] 6000 00f4                 bra        do_plane_3
do_plane_7:
[0001ce1a] 7001                      moveq.l    #1,d0
[0001ce1c] 3740 000a                 move.w     d0,10(a3)
[0001ce20] 3b40 000a                 move.w     d0,10(a5)
[0001ce24] 4241                      clr.w      d1
[0001ce26] 3d41 000a                 move.w     d1,10(a6)
[0001ce2a] 3941 000a                 move.w     d1,10(a4)
[0001ce2e] 224c                      movea.l    a4,a1
[0001ce30] 204d                      movea.l    a5,a0
[0001ce32] 2f09                      move.l     a1,-(a7)
[0001ce34] 2279 0010 1f12            movea.l    ACSblk,a1
[0001ce3a] 3029 0010                 move.w     16(a1),d0
[0001ce3e] 225f                      movea.l    (a7)+,a1
[0001ce40] 4eb9 0006 66a8            jsr        vr_trnfm
[0001ce46] 2f0e                      move.l     a6,-(a7)
[0001ce48] 224c                      movea.l    a4,a1
[0001ce4a] 206f 0028                 movea.l    40(a7),a0
[0001ce4e] 7203                      moveq.l    #3,d1
[0001ce50] 2f09                      move.l     a1,-(a7)
[0001ce52] 2279 0010 1f12            movea.l    ACSblk,a1
[0001ce58] 3029 0010                 move.w     16(a1),d0
[0001ce5c] 225f                      movea.l    (a7)+,a1
[0001ce5e] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001ce64] 584f                      addq.w     #4,a7
[0001ce66] 224b                      movea.l    a3,a1
[0001ce68] 204e                      movea.l    a6,a0
[0001ce6a] 2f09                      move.l     a1,-(a7)
[0001ce6c] 2279 0010 1f12            movea.l    ACSblk,a1
[0001ce72] 3029 0010                 move.w     16(a1),d0
[0001ce76] 225f                      movea.l    (a7)+,a1
[0001ce78] 4eb9 0006 66a8            jsr        vr_trnfm
[0001ce7e] 204e                      movea.l    a6,a0
[0001ce80] 4eb9 0004 d996            jsr        Abp_delete
[0001ce86] 204c                      movea.l    a4,a0
[0001ce88] 4eb9 0004 d996            jsr        Abp_delete
[0001ce8e] 6054                      bra.s      do_plane_10
do_plane_5:
[0001ce90] 2f0b                      move.l     a3,-(a7)
[0001ce92] 224d                      movea.l    a5,a1
[0001ce94] 206f 0028                 movea.l    40(a7),a0
[0001ce98] 7203                      moveq.l    #3,d1
[0001ce9a] 2879 0010 1f12            movea.l    ACSblk,a4
[0001cea0] 302c 0010                 move.w     16(a4),d0
[0001cea4] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001ceaa] 584f                      addq.w     #4,a7
[0001ceac] 6036                      bra.s      do_plane_10
do_plane_4:
[0001ceae] 7001                      moveq.l    #1,d0
[0001ceb0] 3b40 000c                 move.w     d0,12(a5)
[0001ceb4] 3740 000c                 move.w     d0,12(a3)
[0001ceb8] 7aff                      moveq.l    #-1,d5
[0001ceba] da43                      add.w      d3,d5
[0001cebc] 6022                      bra.s      do_plane_11
do_plane_12:
[0001cebe] 2f0b                      move.l     a3,-(a7)
[0001cec0] 224d                      movea.l    a5,a1
[0001cec2] 206f 0028                 movea.l    40(a7),a0
[0001cec6] 7203                      moveq.l    #3,d1
[0001cec8] 2879 0010 1f12            movea.l    ACSblk,a4
[0001cece] 302c 0010                 move.w     16(a4),d0
[0001ced2] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001ced8] 584f                      addq.w     #4,a7
[0001ceda] d993                      add.l      d4,(a3)
[0001cedc] d995                      add.l      d4,(a5)
[0001cede] 5345                      subq.w     #1,d5
do_plane_11:
[0001cee0] 4a45                      tst.w      d5
[0001cee2] 6ada                      bpl.s      do_plane_12
do_plane_10:
[0001cee4] b67c 0001                 cmp.w      #$0001,d3
[0001cee8] 660e                      bne.s      do_plane_13
[0001ceea] 206f 0028                 movea.l    40(a7),a0
[0001ceee] 2050                      movea.l    (a0),a0
[0001cef0] 4eb9 0004 7d6c            jsr        Ax_ifree
[0001cef6] 600e                      bra.s      do_plane_14
do_plane_13:
[0001cef8] 206f 0028                 movea.l    40(a7),a0
[0001cefc] 2050                      movea.l    (a0),a0
[0001cefe] 5d48                      subq.w     #6,a0
[0001cf00] 4eb9 0004 7d6c            jsr        Ax_ifree
do_plane_14:
[0001cf06] 206f 0028                 movea.l    40(a7),a0
[0001cf0a] 208a                      move.l     a2,(a0)
do_plane_3:
[0001cf0c] 4cdf 7c38                 movem.l    (a7)+,d3-d5/a2-a6
[0001cf10] 4e75                      rts

edic_resize:
[0001cf12] 48e7 1c1e                 movem.l    d3-d5/a3-a6,-(a7)
[0001cf16] 4fef ffc4                 lea.l      -60(a7),a7
[0001cf1a] 2f48 0038                 move.l     a0,56(a7)
[0001cf1e] 3600                      move.w     d0,d3
[0001cf20] 3801                      move.w     d1,d4
[0001cf22] 2650                      movea.l    (a0),a3
[0001cf24] 226b 0008                 movea.l    8(a3),a1
[0001cf28] 2869 018c                 movea.l    396(a1),a4
[0001cf2c] 740f                      moveq.l    #15,d2
[0001cf2e] d440                      add.w      d0,d2
[0001cf30] c47c fff0                 and.w      #$FFF0,d2
[0001cf34] 3602                      move.w     d2,d3
[0001cf36] 4bef 0010                 lea.l      16(a7),a5
[0001cf3a] 426d 000a                 clr.w      10(a5)
[0001cf3e] 3b43 0004                 move.w     d3,4(a5)
[0001cf42] 3b44 0006                 move.w     d4,6(a5)
[0001cf46] 3003                      move.w     d3,d0
[0001cf48] e840                      asr.w      #4,d0
[0001cf4a] 3b40 0008                 move.w     d0,8(a5)
[0001cf4e] 4def 0024                 lea.l      36(a7),a6
[0001cf52] 3d7c 0001 000a            move.w     #$0001,10(a6)
[0001cf58] 3d6c 0018 0006            move.w     24(a4),6(a6)
[0001cf5e] 3d6c 0016 0004            move.w     22(a4),4(a6)
[0001cf64] 302e 0004                 move.w     4(a6),d0
[0001cf68] e840                      asr.w      #4,d0
[0001cf6a] 3d40 0008                 move.w     d0,8(a6)
[0001cf6e] 4241                      clr.w      d1
[0001cf70] 3d41 0012                 move.w     d1,18(a6)
[0001cf74] 3d41 0010                 move.w     d1,16(a6)
[0001cf78] 3d41 000e                 move.w     d1,14(a6)
[0001cf7c] 3b41 0012                 move.w     d1,18(a5)
[0001cf80] 3b41 0010                 move.w     d1,16(a5)
[0001cf84] 3b41 000e                 move.w     d1,14(a5)
[0001cf88] 4240                      clr.w      d0
[0001cf8a] 3f40 000a                 move.w     d0,10(a7)
[0001cf8e] 3f40 0008                 move.w     d0,8(a7)
[0001cf92] 3f40 0002                 move.w     d0,2(a7)
[0001cf96] 3e80                      move.w     d0,(a7)
[0001cf98] 74ff                      moveq.l    #-1,d2
[0001cf9a] d46c 0016                 add.w      22(a4),d2
[0001cf9e] 3f42 000c                 move.w     d2,12(a7)
[0001cfa2] 3f42 0004                 move.w     d2,4(a7)
[0001cfa6] 70ff                      moveq.l    #-1,d0
[0001cfa8] d06c 0018                 add.w      24(a4),d0
[0001cfac] 3f40 000e                 move.w     d0,14(a7)
[0001cfb0] 3f40 0006                 move.w     d0,6(a7)
[0001cfb4] b66c 0016                 cmp.w      22(a4),d3
[0001cfb8] 6c0c                      bge.s      edic_resize_1
[0001cfba] 74ff                      moveq.l    #-1,d2
[0001cfbc] d443                      add.w      d3,d2
[0001cfbe] 3f42 000c                 move.w     d2,12(a7)
[0001cfc2] 3f42 0004                 move.w     d2,4(a7)
edic_resize_1:
[0001cfc6] b86c 0018                 cmp.w      24(a4),d4
[0001cfca] 6c0c                      bge.s      edic_resize_2
[0001cfcc] 70ff                      moveq.l    #-1,d0
[0001cfce] d044                      add.w      d4,d0
[0001cfd0] 3f40 000e                 move.w     d0,14(a7)
[0001cfd4] 3f40 0006                 move.w     d0,6(a7)
edic_resize_2:
[0001cfd8] 3003                      move.w     d3,d0
[0001cfda] 48c0                      ext.l      d0
[0001cfdc] 3204                      move.w     d4,d1
[0001cfde] 48c1                      ext.l      d1
[0001cfe0] 4eb9 0007 76f0            jsr        _lmul
[0001cfe6] 2a00                      move.l     d0,d5
[0001cfe8] e685                      asr.l      #3,d5
[0001cfea] 486b 0010                 pea.l      16(a3)
[0001cfee] 486f 0004                 pea.l      4(a7)
[0001cff2] 2205                      move.l     d5,d1
[0001cff4] 7001                      moveq.l    #1,d0
[0001cff6] 224d                      movea.l    a5,a1
[0001cff8] 204e                      movea.l    a6,a0
[0001cffa] 6100 fd34                 bsr        do_plane
[0001cffe] 504f                      addq.w     #8,a7
[0001d000] 486b 0014                 pea.l      20(a3)
[0001d004] 486f 0004                 pea.l      4(a7)
[0001d008] 2205                      move.l     d5,d1
[0001d00a] 7001                      moveq.l    #1,d0
[0001d00c] 224d                      movea.l    a5,a1
[0001d00e] 204e                      movea.l    a6,a0
[0001d010] 6100 fd1e                 bsr        do_plane
[0001d014] 504f                      addq.w     #8,a7
[0001d016] 302b 0018                 move.w     24(a3),d0
[0001d01a] 6f5e                      ble.s      edic_resize_3
[0001d01c] 486b 001a                 pea.l      26(a3)
[0001d020] 486f 0004                 pea.l      4(a7)
[0001d024] 2205                      move.l     d5,d1
[0001d026] 224d                      movea.l    a5,a1
[0001d028] 204e                      movea.l    a6,a0
[0001d02a] 7004                      moveq.l    #4,d0
[0001d02c] 6100 fd02                 bsr        do_plane
[0001d030] 504f                      addq.w     #8,a7
[0001d032] 486b 001e                 pea.l      30(a3)
[0001d036] 486f 0004                 pea.l      4(a7)
[0001d03a] 2205                      move.l     d5,d1
[0001d03c] 7001                      moveq.l    #1,d0
[0001d03e] 224d                      movea.l    a5,a1
[0001d040] 204e                      movea.l    a6,a0
[0001d042] 6100 fcec                 bsr        do_plane
[0001d046] 504f                      addq.w     #8,a7
[0001d048] 202b 0022                 move.l     34(a3),d0
[0001d04c] 672c                      beq.s      edic_resize_3
[0001d04e] 486b 0022                 pea.l      34(a3)
[0001d052] 486f 0004                 pea.l      4(a7)
[0001d056] 2205                      move.l     d5,d1
[0001d058] 224d                      movea.l    a5,a1
[0001d05a] 204e                      movea.l    a6,a0
[0001d05c] 7004                      moveq.l    #4,d0
[0001d05e] 6100 fcd0                 bsr        do_plane
[0001d062] 504f                      addq.w     #8,a7
[0001d064] 486b 0026                 pea.l      38(a3)
[0001d068] 486f 0004                 pea.l      4(a7)
[0001d06c] 2205                      move.l     d5,d1
[0001d06e] 7001                      moveq.l    #1,d0
[0001d070] 224d                      movea.l    a5,a1
[0001d072] 204e                      movea.l    a6,a0
[0001d074] 6100 fcba                 bsr        do_plane
[0001d078] 504f                      addq.w     #8,a7
edic_resize_3:
[0001d07a] 302b 002e                 move.w     46(a3),d0
[0001d07e] 6f5e                      ble.s      edic_resize_4
[0001d080] 486b 0030                 pea.l      48(a3)
[0001d084] 486f 0004                 pea.l      4(a7)
[0001d088] 2205                      move.l     d5,d1
[0001d08a] 224d                      movea.l    a5,a1
[0001d08c] 204e                      movea.l    a6,a0
[0001d08e] 7008                      moveq.l    #8,d0
[0001d090] 6100 fc9e                 bsr        do_plane
[0001d094] 504f                      addq.w     #8,a7
[0001d096] 486b 0034                 pea.l      52(a3)
[0001d09a] 486f 0004                 pea.l      4(a7)
[0001d09e] 2205                      move.l     d5,d1
[0001d0a0] 7001                      moveq.l    #1,d0
[0001d0a2] 224d                      movea.l    a5,a1
[0001d0a4] 204e                      movea.l    a6,a0
[0001d0a6] 6100 fc88                 bsr        do_plane
[0001d0aa] 504f                      addq.w     #8,a7
[0001d0ac] 202b 0038                 move.l     56(a3),d0
[0001d0b0] 672c                      beq.s      edic_resize_4
[0001d0b2] 486b 0038                 pea.l      56(a3)
[0001d0b6] 486f 0004                 pea.l      4(a7)
[0001d0ba] 2205                      move.l     d5,d1
[0001d0bc] 224d                      movea.l    a5,a1
[0001d0be] 204e                      movea.l    a6,a0
[0001d0c0] 7008                      moveq.l    #8,d0
[0001d0c2] 6100 fc6c                 bsr        do_plane
[0001d0c6] 504f                      addq.w     #8,a7
[0001d0c8] 486b 003c                 pea.l      60(a3)
[0001d0cc] 486f 0004                 pea.l      4(a7)
[0001d0d0] 2205                      move.l     d5,d1
[0001d0d2] 7001                      moveq.l    #1,d0
[0001d0d4] 224d                      movea.l    a5,a1
[0001d0d6] 204e                      movea.l    a6,a0
[0001d0d8] 6100 fc56                 bsr        do_plane
[0001d0dc] 504f                      addq.w     #8,a7
edic_resize_4:
[0001d0de] 3003                      move.w     d3,d0
[0001d0e0] 6100 fc34                 bsr        snap
[0001d0e4] 3940 0016                 move.w     d0,22(a4)
[0001d0e8] 206b 0008                 movea.l    8(a3),a0
[0001d0ec] 3140 01c4                 move.w     d0,452(a0)
[0001d0f0] 3004                      move.w     d4,d0
[0001d0f2] 6100 fc22                 bsr        snap
[0001d0f6] 3940 0018                 move.w     d0,24(a4)
[0001d0fa] 206b 0008                 movea.l    8(a3),a0
[0001d0fe] 3140 01c6                 move.w     d0,454(a0)
[0001d102] 206f 0038                 movea.l    56(a7),a0
[0001d106] 6100 f95c                 bsr        edic_link
[0001d10a] 4fef 003c                 lea.l      60(a7),a7
[0001d10e] 4cdf 7838                 movem.l    (a7)+,d3-d5/a3-a6
[0001d112] 4e75                      rts

edic_check:
[0001d114] 2f0a                      move.l     a2,-(a7)
[0001d116] 2448                      movea.l    a0,a2
[0001d118] 0c6a 00c0 0016            cmpi.w     #$00C0,22(a2)
[0001d11e] 6f06                      ble.s      edic_check_1
[0001d120] 357c 00c0 0016            move.w     #$00C0,22(a2)
edic_check_1:
[0001d126] 0c6a 00c0 0018            cmpi.w     #$00C0,24(a2)
[0001d12c] 6f06                      ble.s      edic_check_2
[0001d12e] 357c 00c0 0018            move.w     #$00C0,24(a2)
edic_check_2:
[0001d134] 700f                      moveq.l    #15,d0
[0001d136] d06a 0016                 add.w      22(a2),d0
[0001d13a] c07c fff0                 and.w      #$FFF0,d0
[0001d13e] 3540 0016                 move.w     d0,22(a2)
[0001d142] 302a 0018                 move.w     24(a2),d0
[0001d146] 6100 fbce                 bsr        snap
[0001d14a] 3540 0018                 move.w     d0,24(a2)
[0001d14e] 0c6a 00c0 001e            cmpi.w     #$00C0,30(a2)
[0001d154] 6f06                      ble.s      edic_check_3
[0001d156] 357c 00c0 001e            move.w     #$00C0,30(a2)
edic_check_3:
[0001d15c] 0c6a 00c0 0020            cmpi.w     #$00C0,32(a2)
[0001d162] 6f06                      ble.s      edic_check_4
[0001d164] 357c 00c0 0020            move.w     #$00C0,32(a2)
edic_check_4:
[0001d16a] 302a 001e                 move.w     30(a2),d0
[0001d16e] 6100 fba6                 bsr        snap
[0001d172] 3540 001e                 move.w     d0,30(a2)
[0001d176] 302a 0020                 move.w     32(a2),d0
[0001d17a] 6100 fb9a                 bsr        snap
[0001d17e] 3540 0020                 move.w     d0,32(a2)
[0001d182] 7006                      moveq.l    #6,d0
[0001d184] d06a 000e                 add.w      14(a2),d0
[0001d188] 906a 0016                 sub.w      22(a2),d0
[0001d18c] 4a40                      tst.w      d0
[0001d18e] 6f04                      ble.s      edic_check_5
[0001d190] 916a 000e                 sub.w      d0,14(a2)
edic_check_5:
[0001d194] 7006                      moveq.l    #6,d0
[0001d196] d06a 0010                 add.w      16(a2),d0
[0001d19a] 906a 0018                 sub.w      24(a2),d0
[0001d19e] 4a40                      tst.w      d0
[0001d1a0] 6f04                      ble.s      edic_check_6
[0001d1a2] 916a 0010                 sub.w      d0,16(a2)
edic_check_6:
[0001d1a6] 302a 0012                 move.w     18(a2),d0
[0001d1aa] d06a 0016                 add.w      22(a2),d0
[0001d1ae] d07c ff40                 add.w      #$FF40,d0
[0001d1b2] 4a40                      tst.w      d0
[0001d1b4] 6f04                      ble.s      edic_check_7
[0001d1b6] 916a 0012                 sub.w      d0,18(a2)
edic_check_7:
[0001d1ba] 302a 0014                 move.w     20(a2),d0
[0001d1be] d06a 0018                 add.w      24(a2),d0
[0001d1c2] d07c ff40                 add.w      #$FF40,d0
[0001d1c6] 4a40                      tst.w      d0
[0001d1c8] 6f04                      ble.s      edic_check_8
[0001d1ca] 916a 0014                 sub.w      d0,20(a2)
edic_check_8:
[0001d1ce] 302a 001a                 move.w     26(a2),d0
[0001d1d2] d06a 001e                 add.w      30(a2),d0
[0001d1d6] d07c ff40                 add.w      #$FF40,d0
[0001d1da] 4a40                      tst.w      d0
[0001d1dc] 6f04                      ble.s      edic_check_9
[0001d1de] 916a 001a                 sub.w      d0,26(a2)
edic_check_9:
[0001d1e2] 302a 001c                 move.w     28(a2),d0
[0001d1e6] d06a 0020                 add.w      32(a2),d0
[0001d1ea] d07c ff40                 add.w      #$FF40,d0
[0001d1ee] 4a40                      tst.w      d0
[0001d1f0] 6f04                      ble.s      edic_check_10
[0001d1f2] 916a 001c                 sub.w      d0,28(a2)
edic_check_10:
[0001d1f6] 302a 000e                 move.w     14(a2),d0
[0001d1fa] 6100 fb1a                 bsr        snap
[0001d1fe] 3540 000e                 move.w     d0,14(a2)
[0001d202] 302a 0010                 move.w     16(a2),d0
[0001d206] 6100 fb0e                 bsr        snap
[0001d20a] 3540 0010                 move.w     d0,16(a2)
[0001d20e] 302a 0012                 move.w     18(a2),d0
[0001d212] 6100 fb02                 bsr        snap
[0001d216] 3540 0012                 move.w     d0,18(a2)
[0001d21a] 302a 0014                 move.w     20(a2),d0
[0001d21e] 6100 faf6                 bsr        snap
[0001d222] 3540 0014                 move.w     d0,20(a2)
[0001d226] 302a 001a                 move.w     26(a2),d0
[0001d22a] 6100 faea                 bsr        snap
[0001d22e] 3540 001a                 move.w     d0,26(a2)
[0001d232] 302a 001c                 move.w     28(a2),d0
[0001d236] 6100 fade                 bsr        snap
[0001d23a] 3540 001c                 move.w     d0,28(a2)
[0001d23e] 245f                      movea.l    (a7)+,a2
[0001d240] 4e75                      rts

edic_deskicon:
[0001d242] 48e7 0038                 movem.l    a2-a4,-(a7)
[0001d246] 45f9 0010 1f12            lea.l      ACSblk,a2
[0001d24c] 2052                      movea.l    (a2),a0
[0001d24e] 2268 0258                 movea.l    600(a0),a1
[0001d252] 2051                      movea.l    (a1),a0
[0001d254] 2268 0014                 movea.l    20(a0),a1
[0001d258] 2669 018c                 movea.l    396(a1),a3
[0001d25c] 2052                      movea.l    (a2),a0
[0001d25e] 2868 025c                 movea.l    604(a0),a4
[0001d262] 4eb9 0004 b286            jsr        Awi_diaend
[0001d268] 7048                      moveq.l    #72,d0
[0001d26a] 906b 0016                 sub.w      22(a3),d0
[0001d26e] e240                      asr.w      #1,d0
[0001d270] 3f00                      move.w     d0,-(a7)
[0001d272] 43f9 000a 49fe            lea.l      $000A49FE,a1
[0001d278] 204c                      movea.l    a4,a0
[0001d27a] 7011                      moveq.l    #17,d0
[0001d27c] 4eb9 0004 afac            jsr        Aob_printf
[0001d282] 544f                      addq.w     #2,a7
[0001d284] 72ff                      moveq.l    #-1,d1
[0001d286] 7011                      moveq.l    #17,d0
[0001d288] 2052                      movea.l    (a2),a0
[0001d28a] 2068 0258                 movea.l    600(a0),a0
[0001d28e] 2252                      movea.l    (a2),a1
[0001d290] 2669 0258                 movea.l    600(a1),a3
[0001d294] 226b 0066                 movea.l    102(a3),a1
[0001d298] 4e91                      jsr        (a1)
[0001d29a] 43f9 000a 4a01            lea.l      $000A4A01,a1
[0001d2a0] 7015                      moveq.l    #21,d0
[0001d2a2] 204c                      movea.l    a4,a0
[0001d2a4] 4eb9 0004 afac            jsr        Aob_printf
[0001d2aa] 72ff                      moveq.l    #-1,d1
[0001d2ac] 7015                      moveq.l    #21,d0
[0001d2ae] 2052                      movea.l    (a2),a0
[0001d2b0] 2068 0258                 movea.l    600(a0),a0
[0001d2b4] 2252                      movea.l    (a2),a1
[0001d2b6] 2669 0258                 movea.l    600(a1),a3
[0001d2ba] 226b 0066                 movea.l    102(a3),a1
[0001d2be] 4e91                      jsr        (a1)
[0001d2c0] 43f9 000a 4a03            lea.l      $000A4A03,a1
[0001d2c6] 7016                      moveq.l    #22,d0
[0001d2c8] 204c                      movea.l    a4,a0
[0001d2ca] 4eb9 0004 afac            jsr        Aob_printf
[0001d2d0] 72ff                      moveq.l    #-1,d1
[0001d2d2] 7016                      moveq.l    #22,d0
[0001d2d4] 2052                      movea.l    (a2),a0
[0001d2d6] 2068 0258                 movea.l    600(a0),a0
[0001d2da] 2252                      movea.l    (a2),a1
[0001d2dc] 2669 0258                 movea.l    600(a1),a3
[0001d2e0] 226b 0066                 movea.l    102(a3),a1
[0001d2e4] 4e91                      jsr        (a1)
[0001d2e6] 43f9 000a 4a06            lea.l      $000A4A06,a1
[0001d2ec] 7017                      moveq.l    #23,d0
[0001d2ee] 204c                      movea.l    a4,a0
[0001d2f0] 4eb9 0004 afac            jsr        Aob_printf
[0001d2f6] 72ff                      moveq.l    #-1,d1
[0001d2f8] 7017                      moveq.l    #23,d0
[0001d2fa] 2052                      movea.l    (a2),a0
[0001d2fc] 2068 0258                 movea.l    600(a0),a0
[0001d300] 2252                      movea.l    (a2),a1
[0001d302] 2669 0258                 movea.l    600(a1),a3
[0001d306] 226b 0066                 movea.l    102(a3),a1
[0001d30a] 4e91                      jsr        (a1)
[0001d30c] 43f9 000a 4a09            lea.l      $000A4A09,a1
[0001d312] 7018                      moveq.l    #24,d0
[0001d314] 204c                      movea.l    a4,a0
[0001d316] 4eb9 0004 afac            jsr        Aob_printf
[0001d31c] 72ff                      moveq.l    #-1,d1
[0001d31e] 7018                      moveq.l    #24,d0
[0001d320] 2052                      movea.l    (a2),a0
[0001d322] 2068 0258                 movea.l    600(a0),a0
[0001d326] 2252                      movea.l    (a2),a1
[0001d328] 2669 0258                 movea.l    600(a1),a3
[0001d32c] 226b 0066                 movea.l    102(a3),a1
[0001d330] 4e91                      jsr        (a1)
[0001d332] 4eb9 0004 b33c            jsr        Awi_diastart
[0001d338] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0001d33c] 4e75                      rts

edic_direct:
[0001d33e] 48e7 1e3c                 movem.l    d3-d6/a2-a5,-(a7)
[0001d342] 41f9 000a 4924            lea.l      WI_POS,a0
[0001d348] 2279 000a 492c            movea.l    $000A492C,a1
[0001d34e] 4e91                      jsr        (a1)
[0001d350] 2448                      movea.l    a0,a2
[0001d352] 200a                      move.l     a2,d0
[0001d354] 6700 0214                 beq        edic_direct_1
[0001d358] 47f9 0010 1f12            lea.l      ACSblk,a3
[0001d35e] 2053                      movea.l    (a3),a0
[0001d360] 24a8 0258                 move.l     600(a0),(a2)
[0001d364] 2053                      movea.l    (a3),a0
[0001d366] 2268 025c                 movea.l    604(a0),a1
[0001d36a] 2869 018c                 movea.l    396(a1),a4
[0001d36e] 4bf9 000a 49fe            lea.l      $000A49FE,a5
[0001d374] 3f2c 000e                 move.w     14(a4),-(a7)
[0001d378] 224d                      movea.l    a5,a1
[0001d37a] 700c                      moveq.l    #12,d0
[0001d37c] 206a 0014                 movea.l    20(a2),a0
[0001d380] 4eb9 0004 afac            jsr        Aob_printf
[0001d386] 544f                      addq.w     #2,a7
[0001d388] 3f2c 0010                 move.w     16(a4),-(a7)
[0001d38c] 224d                      movea.l    a5,a1
[0001d38e] 700e                      moveq.l    #14,d0
[0001d390] 206a 0014                 movea.l    20(a2),a0
[0001d394] 4eb9 0004 afac            jsr        Aob_printf
[0001d39a] 544f                      addq.w     #2,a7
[0001d39c] 3f2c 0012                 move.w     18(a4),-(a7)
[0001d3a0] 224d                      movea.l    a5,a1
[0001d3a2] 7011                      moveq.l    #17,d0
[0001d3a4] 206a 0014                 movea.l    20(a2),a0
[0001d3a8] 4eb9 0004 afac            jsr        Aob_printf
[0001d3ae] 544f                      addq.w     #2,a7
[0001d3b0] 3f2c 0014                 move.w     20(a4),-(a7)
[0001d3b4] 224d                      movea.l    a5,a1
[0001d3b6] 7012                      moveq.l    #18,d0
[0001d3b8] 206a 0014                 movea.l    20(a2),a0
[0001d3bc] 4eb9 0004 afac            jsr        Aob_printf
[0001d3c2] 544f                      addq.w     #2,a7
[0001d3c4] 3f2c 0016                 move.w     22(a4),-(a7)
[0001d3c8] 224d                      movea.l    a5,a1
[0001d3ca] 7013                      moveq.l    #19,d0
[0001d3cc] 206a 0014                 movea.l    20(a2),a0
[0001d3d0] 4eb9 0004 afac            jsr        Aob_printf
[0001d3d6] 544f                      addq.w     #2,a7
[0001d3d8] 3f2c 0018                 move.w     24(a4),-(a7)
[0001d3dc] 224d                      movea.l    a5,a1
[0001d3de] 7014                      moveq.l    #20,d0
[0001d3e0] 206a 0014                 movea.l    20(a2),a0
[0001d3e4] 4eb9 0004 afac            jsr        Aob_printf
[0001d3ea] 544f                      addq.w     #2,a7
[0001d3ec] 3f2c 001a                 move.w     26(a4),-(a7)
[0001d3f0] 224d                      movea.l    a5,a1
[0001d3f2] 7015                      moveq.l    #21,d0
[0001d3f4] 206a 0014                 movea.l    20(a2),a0
[0001d3f8] 4eb9 0004 afac            jsr        Aob_printf
[0001d3fe] 544f                      addq.w     #2,a7
[0001d400] 3f2c 001c                 move.w     28(a4),-(a7)
[0001d404] 224d                      movea.l    a5,a1
[0001d406] 7016                      moveq.l    #22,d0
[0001d408] 206a 0014                 movea.l    20(a2),a0
[0001d40c] 4eb9 0004 afac            jsr        Aob_printf
[0001d412] 544f                      addq.w     #2,a7
[0001d414] 3f2c 001e                 move.w     30(a4),-(a7)
[0001d418] 224d                      movea.l    a5,a1
[0001d41a] 7017                      moveq.l    #23,d0
[0001d41c] 206a 0014                 movea.l    20(a2),a0
[0001d420] 4eb9 0004 afac            jsr        Aob_printf
[0001d426] 544f                      addq.w     #2,a7
[0001d428] 3f2c 0020                 move.w     32(a4),-(a7)
[0001d42c] 224d                      movea.l    a5,a1
[0001d42e] 7018                      moveq.l    #24,d0
[0001d430] 206a 0014                 movea.l    20(a2),a0
[0001d434] 4eb9 0004 afac            jsr        Aob_printf
[0001d43a] 544f                      addq.w     #2,a7
[0001d43c] 204a                      movea.l    a2,a0
[0001d43e] 4eb9 0005 1292            jsr        Awi_dialog
[0001d444] b07c 001d                 cmp.w      #$001D,d0
[0001d448] 6600 0118                 bne        edic_direct_2
[0001d44c] 362c 0016                 move.w     22(a4),d3
[0001d450] 382c 0018                 move.w     24(a4),d4
[0001d454] 486c 000e                 pea.l      14(a4)
[0001d458] 224d                      movea.l    a5,a1
[0001d45a] 700c                      moveq.l    #12,d0
[0001d45c] 206a 0014                 movea.l    20(a2),a0
[0001d460] 4eb9 0004 b0b2            jsr        Aob_scanf
[0001d466] 584f                      addq.w     #4,a7
[0001d468] 486c 0010                 pea.l      16(a4)
[0001d46c] 224d                      movea.l    a5,a1
[0001d46e] 700e                      moveq.l    #14,d0
[0001d470] 206a 0014                 movea.l    20(a2),a0
[0001d474] 4eb9 0004 b0b2            jsr        Aob_scanf
[0001d47a] 584f                      addq.w     #4,a7
[0001d47c] 486c 0012                 pea.l      18(a4)
[0001d480] 224d                      movea.l    a5,a1
[0001d482] 7011                      moveq.l    #17,d0
[0001d484] 206a 0014                 movea.l    20(a2),a0
[0001d488] 4eb9 0004 b0b2            jsr        Aob_scanf
[0001d48e] 584f                      addq.w     #4,a7
[0001d490] 486c 0014                 pea.l      20(a4)
[0001d494] 224d                      movea.l    a5,a1
[0001d496] 7012                      moveq.l    #18,d0
[0001d498] 206a 0014                 movea.l    20(a2),a0
[0001d49c] 4eb9 0004 b0b2            jsr        Aob_scanf
[0001d4a2] 584f                      addq.w     #4,a7
[0001d4a4] 486c 0016                 pea.l      22(a4)
[0001d4a8] 224d                      movea.l    a5,a1
[0001d4aa] 7013                      moveq.l    #19,d0
[0001d4ac] 206a 0014                 movea.l    20(a2),a0
[0001d4b0] 4eb9 0004 b0b2            jsr        Aob_scanf
[0001d4b6] 584f                      addq.w     #4,a7
[0001d4b8] 486c 0018                 pea.l      24(a4)
[0001d4bc] 224d                      movea.l    a5,a1
[0001d4be] 7014                      moveq.l    #20,d0
[0001d4c0] 206a 0014                 movea.l    20(a2),a0
[0001d4c4] 4eb9 0004 b0b2            jsr        Aob_scanf
[0001d4ca] 584f                      addq.w     #4,a7
[0001d4cc] 486c 001a                 pea.l      26(a4)
[0001d4d0] 224d                      movea.l    a5,a1
[0001d4d2] 7015                      moveq.l    #21,d0
[0001d4d4] 206a 0014                 movea.l    20(a2),a0
[0001d4d8] 4eb9 0004 b0b2            jsr        Aob_scanf
[0001d4de] 584f                      addq.w     #4,a7
[0001d4e0] 486c 001c                 pea.l      28(a4)
[0001d4e4] 224d                      movea.l    a5,a1
[0001d4e6] 7016                      moveq.l    #22,d0
[0001d4e8] 206a 0014                 movea.l    20(a2),a0
[0001d4ec] 4eb9 0004 b0b2            jsr        Aob_scanf
[0001d4f2] 584f                      addq.w     #4,a7
[0001d4f4] 486c 001e                 pea.l      30(a4)
[0001d4f8] 224d                      movea.l    a5,a1
[0001d4fa] 7017                      moveq.l    #23,d0
[0001d4fc] 206a 0014                 movea.l    20(a2),a0
[0001d500] 4eb9 0004 b0b2            jsr        Aob_scanf
[0001d506] 584f                      addq.w     #4,a7
[0001d508] 486c 0020                 pea.l      32(a4)
[0001d50c] 224d                      movea.l    a5,a1
[0001d50e] 7018                      moveq.l    #24,d0
[0001d510] 206a 0014                 movea.l    20(a2),a0
[0001d514] 4eb9 0004 b0b2            jsr        Aob_scanf
[0001d51a] 584f                      addq.w     #4,a7
[0001d51c] 204c                      movea.l    a4,a0
[0001d51e] 6100 fbf4                 bsr        edic_check
[0001d522] 3a2c 0016                 move.w     22(a4),d5
[0001d526] 3c2c 0018                 move.w     24(a4),d6
[0001d52a] 3943 0016                 move.w     d3,22(a4)
[0001d52e] 3944 0018                 move.w     d4,24(a4)
[0001d532] 3206                      move.w     d6,d1
[0001d534] 3005                      move.w     d5,d0
[0001d536] 2053                      movea.l    (a3),a0
[0001d538] 2068 0258                 movea.l    600(a0),a0
[0001d53c] 6100 f9d4                 bsr        edic_resize
[0001d540] 2053                      movea.l    (a3),a0
[0001d542] 2268 025c                 movea.l    604(a0),a1
[0001d546] 0069 0080 01b8            ori.w      #$0080,440(a1)
[0001d54c] 72ff                      moveq.l    #-1,d1
[0001d54e] 700e                      moveq.l    #14,d0
[0001d550] 2053                      movea.l    (a3),a0
[0001d552] 2068 0258                 movea.l    600(a0),a0
[0001d556] 2253                      movea.l    (a3),a1
[0001d558] 2869 0258                 movea.l    600(a1),a4
[0001d55c] 226c 0066                 movea.l    102(a4),a1
[0001d560] 4e91                      jsr        (a1)
edic_direct_2:
[0001d562] 204a                      movea.l    a2,a0
[0001d564] 4eb9 0005 0330            jsr        Awi_delete
edic_direct_1:
[0001d56a] 4cdf 3c78                 movem.l    (a7)+,d3-d6/a2-a5
[0001d56e] 4e75                      rts

edic_select:
[0001d570] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d576] 2268 025c                 movea.l    604(a0),a1
[0001d57a] 0a69 0001 018a            eori.w     #$0001,394(a1)
[0001d580] 72ff                      moveq.l    #-1,d1
[0001d582] 700e                      moveq.l    #14,d0
[0001d584] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d58a] 2068 0258                 movea.l    600(a0),a0
[0001d58e] 2279 0010 1f12            movea.l    ACSblk,a1
[0001d594] 2269 0258                 movea.l    600(a1),a1
[0001d598] 2269 0066                 movea.l    102(a1),a1
[0001d59c] 4e91                      jsr        (a1)
[0001d59e] 4e75                      rts

edit_shift:
[0001d5a0] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0001d5a4] 4fef ffb0                 lea.l      -80(a7),a7
[0001d5a8] 3600                      move.w     d0,d3
[0001d5aa] 2650                      movea.l    (a0),a3
[0001d5ac] 206b 0008                 movea.l    8(a3),a0
[0001d5b0] 41e8 0180                 lea.l      384(a0),a0
[0001d5b4] 2f48 004c                 move.l     a0,76(a7)
[0001d5b8] 2f68 000c 0048            move.l     12(a0),72(a7)
[0001d5be] 2f08                      move.l     a0,-(a7)
[0001d5c0] 2f0b                      move.l     a3,-(a7)
[0001d5c2] 43ef 0028                 lea.l      40(a7),a1
[0001d5c6] 41ef 003c                 lea.l      60(a7),a0
[0001d5ca] 6100 f2b0                 bsr        mfdb_dm
[0001d5ce] 504f                      addq.w     #8,a7
[0001d5d0] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d5d6] 2268 023c                 movea.l    572(a0),a1
[0001d5da] 3029 000e                 move.w     14(a1),d0
[0001d5de] c07c 0800                 and.w      #$0800,d0
[0001d5e2] 6716                      beq.s      edit_shift_1
[0001d5e4] 322f 003a                 move.w     58(a7),d1
[0001d5e8] 302f 0038                 move.w     56(a7),d0
[0001d5ec] 4eb9 0004 d928            jsr        Abp_create
[0001d5f2] 2648                      movea.l    a0,a3
[0001d5f4] 200b                      move.l     a3,d0
[0001d5f6] 6700 01f0                 beq        edit_shift_2
edit_shift_1:
[0001d5fa] 45ef 0010                 lea.l      16(a7),a2
[0001d5fe] 4240                      clr.w      d0
[0001d600] 3f40 000a                 move.w     d0,10(a7)
[0001d604] 3f40 0008                 move.w     d0,8(a7)
[0001d608] 3f40 0002                 move.w     d0,2(a7)
[0001d60c] 3e80                      move.w     d0,(a7)
[0001d60e] 3540 000a                 move.w     d0,10(a2)
[0001d612] 3540 0008                 move.w     d0,8(a2)
[0001d616] 3540 0002                 move.w     d0,2(a2)
[0001d61a] 3480                      move.w     d0,(a2)
[0001d61c] 72ff                      moveq.l    #-1,d1
[0001d61e] 206f 0048                 movea.l    72(a7),a0
[0001d622] d268 0016                 add.w      22(a0),d1
[0001d626] 3f41 000c                 move.w     d1,12(a7)
[0001d62a] 3f41 0004                 move.w     d1,4(a7)
[0001d62e] 3541 000c                 move.w     d1,12(a2)
[0001d632] 3541 0004                 move.w     d1,4(a2)
[0001d636] 70ff                      moveq.l    #-1,d0
[0001d638] d068 0018                 add.w      24(a0),d0
[0001d63c] 3f40 000e                 move.w     d0,14(a7)
[0001d640] 3f40 0006                 move.w     d0,6(a7)
[0001d644] 3540 000e                 move.w     d0,14(a2)
[0001d648] 3540 0006                 move.w     d0,6(a2)
[0001d64c] 3203                      move.w     d3,d1
[0001d64e] 4a41                      tst.w      d1
[0001d650] 670e                      beq.s      edit_shift_3
[0001d652] 5341                      subq.w     #1,d1
[0001d654] 671c                      beq.s      edit_shift_4
[0001d656] 5341                      subq.w     #1,d1
[0001d658] 672c                      beq.s      edit_shift_5
[0001d65a] 5341                      subq.w     #1,d1
[0001d65c] 673e                      beq.s      edit_shift_6
[0001d65e] 6050                      bra.s      edit_shift_7
edit_shift_3:
[0001d660] 5252                      addq.w     #1,(a2)
[0001d662] 536a 000c                 subq.w     #1,12(a2)
[0001d666] 302f 0004                 move.w     4(a7),d0
[0001d66a] 3f40 0008                 move.w     d0,8(a7)
[0001d66e] 3e80                      move.w     d0,(a7)
[0001d670] 603e                      bra.s      edit_shift_7
edit_shift_4:
[0001d672] 536a 0004                 subq.w     #1,4(a2)
[0001d676] 526a 0008                 addq.w     #1,8(a2)
[0001d67a] 3017                      move.w     (a7),d0
[0001d67c] 3f40 000c                 move.w     d0,12(a7)
[0001d680] 3f40 0004                 move.w     d0,4(a7)
[0001d684] 602a                      bra.s      edit_shift_7
edit_shift_5:
[0001d686] 526a 0002                 addq.w     #1,2(a2)
[0001d68a] 536a 000e                 subq.w     #1,14(a2)
[0001d68e] 302f 0006                 move.w     6(a7),d0
[0001d692] 3f40 000a                 move.w     d0,10(a7)
[0001d696] 3f40 0002                 move.w     d0,2(a7)
[0001d69a] 6014                      bra.s      edit_shift_7
edit_shift_6:
[0001d69c] 536a 0006                 subq.w     #1,6(a2)
[0001d6a0] 526a 000a                 addq.w     #1,10(a2)
[0001d6a4] 302f 0002                 move.w     2(a7),d0
[0001d6a8] 3f40 000e                 move.w     d0,14(a7)
[0001d6ac] 3f40 0006                 move.w     d0,6(a7)
edit_shift_7:
[0001d6b0] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d6b6] 2268 023c                 movea.l    572(a0),a1
[0001d6ba] 3029 000e                 move.w     14(a1),d0
[0001d6be] c07c 0800                 and.w      #$0800,d0
[0001d6c2] 676e                      beq.s      edit_shift_8
[0001d6c4] 3228 001c                 move.w     28(a0),d1
[0001d6c8] b26f 0040                 cmp.w      64(a7),d1
[0001d6cc] 6664                      bne.s      edit_shift_8
[0001d6ce] 41ef 0034                 lea.l      52(a7),a0
[0001d6d2] 2279 0010 1f12            movea.l    ACSblk,a1
[0001d6d8] 3029 0010                 move.w     16(a1),d0
[0001d6dc] 224b                      movea.l    a3,a1
[0001d6de] 4eb9 0006 66a8            jsr        vr_trnfm
[0001d6e4] 2f0b                      move.l     a3,-(a7)
[0001d6e6] 224b                      movea.l    a3,a1
[0001d6e8] 204a                      movea.l    a2,a0
[0001d6ea] 7203                      moveq.l    #3,d1
[0001d6ec] 2879 0010 1f12            movea.l    ACSblk,a4
[0001d6f2] 302c 0010                 move.w     16(a4),d0
[0001d6f6] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001d6fc] 584f                      addq.w     #4,a7
[0001d6fe] 2f0b                      move.l     a3,-(a7)
[0001d700] 224b                      movea.l    a3,a1
[0001d702] 41ef 0004                 lea.l      4(a7),a0
[0001d706] 4241                      clr.w      d1
[0001d708] 2879 0010 1f12            movea.l    ACSblk,a4
[0001d70e] 302c 0010                 move.w     16(a4),d0
[0001d712] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001d718] 584f                      addq.w     #4,a7
[0001d71a] 43ef 0034                 lea.l      52(a7),a1
[0001d71e] 204b                      movea.l    a3,a0
[0001d720] 2879 0010 1f12            movea.l    ACSblk,a4
[0001d726] 302c 0010                 move.w     16(a4),d0
[0001d72a] 4eb9 0006 66a8            jsr        vr_trnfm
[0001d730] 603e                      bra.s      edit_shift_9
edit_shift_8:
[0001d732] 486f 0034                 pea.l      52(a7)
[0001d736] 43ef 0038                 lea.l      56(a7),a1
[0001d73a] 204a                      movea.l    a2,a0
[0001d73c] 7203                      moveq.l    #3,d1
[0001d73e] 2879 0010 1f12            movea.l    ACSblk,a4
[0001d744] 302c 0010                 move.w     16(a4),d0
[0001d748] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001d74e] 584f                      addq.w     #4,a7
[0001d750] 486f 0034                 pea.l      52(a7)
[0001d754] 43ef 0038                 lea.l      56(a7),a1
[0001d758] 41ef 0004                 lea.l      4(a7),a0
[0001d75c] 4241                      clr.w      d1
[0001d75e] 2879 0010 1f12            movea.l    ACSblk,a4
[0001d764] 302c 0010                 move.w     16(a4),d0
[0001d768] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001d76e] 584f                      addq.w     #4,a7
edit_shift_9:
[0001d770] 486f 0020                 pea.l      32(a7)
[0001d774] 43ef 0024                 lea.l      36(a7),a1
[0001d778] 204a                      movea.l    a2,a0
[0001d77a] 7203                      moveq.l    #3,d1
[0001d77c] 2879 0010 1f12            movea.l    ACSblk,a4
[0001d782] 302c 0010                 move.w     16(a4),d0
[0001d786] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001d78c] 584f                      addq.w     #4,a7
[0001d78e] 486f 0020                 pea.l      32(a7)
[0001d792] 43ef 0024                 lea.l      36(a7),a1
[0001d796] 41ef 0004                 lea.l      4(a7),a0
[0001d79a] 4241                      clr.w      d1
[0001d79c] 2479 0010 1f12            movea.l    ACSblk,a2
[0001d7a2] 302a 0010                 move.w     16(a2),d0
[0001d7a6] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001d7ac] 584f                      addq.w     #4,a7
[0001d7ae] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d7b4] 2268 023c                 movea.l    572(a0),a1
[0001d7b8] 3029 000e                 move.w     14(a1),d0
[0001d7bc] c07c 0800                 and.w      #$0800,d0
[0001d7c0] 6708                      beq.s      edit_shift_10
[0001d7c2] 204b                      movea.l    a3,a0
[0001d7c4] 4eb9 0004 d996            jsr        Abp_delete
edit_shift_10:
[0001d7ca] 72ff                      moveq.l    #-1,d1
[0001d7cc] 701b                      moveq.l    #27,d0
[0001d7ce] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d7d4] 2068 0258                 movea.l    600(a0),a0
[0001d7d8] 2279 0010 1f12            movea.l    ACSblk,a1
[0001d7de] 2469 0258                 movea.l    600(a1),a2
[0001d7e2] 226a 0066                 movea.l    102(a2),a1
[0001d7e6] 4e91                      jsr        (a1)
edit_shift_2:
[0001d7e8] 4fef 0050                 lea.l      80(a7),a7
[0001d7ec] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0001d7f0] 4e75                      rts

edic_up:
[0001d7f2] 7002                      moveq.l    #2,d0
[0001d7f4] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d7fa] 2068 0258                 movea.l    600(a0),a0
[0001d7fe] 6100 fda0                 bsr        edit_shift
[0001d802] 4e75                      rts

edic_down:
[0001d804] 7003                      moveq.l    #3,d0
[0001d806] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d80c] 2068 0258                 movea.l    600(a0),a0
[0001d810] 6100 fd8e                 bsr        edit_shift
[0001d814] 4e75                      rts

edic_right:
[0001d816] 7001                      moveq.l    #1,d0
[0001d818] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d81e] 2068 0258                 movea.l    600(a0),a0
[0001d822] 6100 fd7c                 bsr        edit_shift
[0001d826] 4e75                      rts

edic_left:
[0001d828] 4240                      clr.w      d0
[0001d82a] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d830] 2068 0258                 movea.l    600(a0),a0
[0001d834] 6100 fd6a                 bsr        edit_shift
[0001d838] 4e75                      rts

control:
[0001d83a] 343c 0080                 move.w     #$0080,d2
[0001d83e] c468 01b8                 and.w      440(a0),d2
[0001d842] 6626                      bne.s      control_1
[0001d844] 3428 01c0                 move.w     448(a0),d2
[0001d848] b451                      cmp.w      (a1),d2
[0001d84a] 661e                      bne.s      control_1
[0001d84c] 3428 01c2                 move.w     450(a0),d2
[0001d850] b469 0002                 cmp.w      2(a1),d2
[0001d854] 6614                      bne.s      control_1
[0001d856] 3428 01c4                 move.w     452(a0),d2
[0001d85a] b469 0004                 cmp.w      4(a1),d2
[0001d85e] 660a                      bne.s      control_1
[0001d860] 3428 01c6                 move.w     454(a0),d2
[0001d864] b469 0006                 cmp.w      6(a1),d2
[0001d868] 6720                      beq.s      control_2
control_1:
[0001d86a] 0268 ff7f 01b8            andi.w     #$FF7F,440(a0)
[0001d870] 3151 01c0                 move.w     (a1),448(a0)
[0001d874] 3169 0002 01c2            move.w     2(a1),450(a0)
[0001d87a] 3169 0004 01c4            move.w     4(a1),452(a0)
[0001d880] 3169 0006 01c6            move.w     6(a1),454(a0)
[0001d886] 4240                      clr.w      d0
[0001d888] 4e75                      rts
control_2:
[0001d88a] 3411                      move.w     (a1),d2
[0001d88c] d469 0004                 add.w      4(a1),d2
[0001d890] 5342                      subq.w     #1,d2
[0001d892] 9440                      sub.w      d0,d2
[0001d894] 3002                      move.w     d2,d0
[0001d896] 3429 0002                 move.w     2(a1),d2
[0001d89a] d469 0006                 add.w      6(a1),d2
[0001d89e] 5342                      subq.w     #1,d2
[0001d8a0] 9441                      sub.w      d1,d2
[0001d8a2] 3202                      move.w     d2,d1
[0001d8a4] b07c 0008                 cmp.w      #$0008,d0
[0001d8a8] 6f0a                      ble.s      control_3
[0001d8aa] 3429 0004                 move.w     4(a1),d2
[0001d8ae] e642                      asr.w      #3,d2
[0001d8b0] b042                      cmp.w      d2,d0
[0001d8b2] 6e10                      bgt.s      control_4
control_3:
[0001d8b4] b27c 0008                 cmp.w      #$0008,d1
[0001d8b8] 6f0e                      ble.s      control_5
[0001d8ba] 3029 0006                 move.w     6(a1),d0
[0001d8be] e640                      asr.w      #3,d0
[0001d8c0] b240                      cmp.w      d0,d1
[0001d8c2] 6f04                      ble.s      control_5
control_4:
[0001d8c4] 7001                      moveq.l    #1,d0
[0001d8c6] 4e75                      rts
control_5:
[0001d8c8] 7002                      moveq.l    #2,d0
[0001d8ca] 4e75                      rts

edic_control:
[0001d8cc] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[0001d8d0] 4fef ffc8                 lea.l      -56(a7),a7
[0001d8d4] 41f9 000a 49e0            lea.l      $000A49E0,a0
[0001d8da] 43ef 0020                 lea.l      32(a7),a1
[0001d8de] 700f                      moveq.l    #15,d0
edic_control_1:
[0001d8e0] 12d8                      move.b     (a0)+,(a1)+
[0001d8e2] 51c8 fffc                 dbf        d0,edic_control_1
[0001d8e6] 47f9 0010 1f12            lea.l      ACSblk,a3
[0001d8ec] 2053                      movea.l    (a3),a0
[0001d8ee] 2468 0258                 movea.l    600(a0),a2
[0001d8f2] 286a 0014                 movea.l    20(a2),a4
[0001d8f6] 3e28 0260                 move.w     608(a0),d7
[0001d8fa] 3207                      move.w     d7,d1
[0001d8fc] 48c1                      ext.l      d1
[0001d8fe] 2001                      move.l     d1,d0
[0001d900] d080                      add.l      d0,d0
[0001d902] d081                      add.l      d1,d0
[0001d904] e788                      lsl.l      #3,d0
[0001d906] 3434 080a                 move.w     10(a4,d0.l),d2
[0001d90a] c47c 4000                 and.w      #$4000,d2
[0001d90e] 670a                      beq.s      edic_control_2
[0001d910] 4eb9 0001 ef4c            jsr        edic_edit
[0001d916] 6000 05de                 bra        edic_control_3
edic_control_2:
[0001d91a] 2053                      movea.l    (a3),a0
[0001d91c] 3c28 0262                 move.w     610(a0),d6
[0001d920] 3a28 0264                 move.w     612(a0),d5
[0001d924] 2f39 000d 99d6            move.l     _globl,-(a7)
[0001d92a] 486f 0034                 pea.l      52(a7)
[0001d92e] 43ef 003a                 lea.l      58(a7),a1
[0001d932] 3007                      move.w     d7,d0
[0001d934] 204c                      movea.l    a4,a0
[0001d936] 4eb9 0006 ba44            jsr        mt_objc_offset
[0001d93c] 504f                      addq.w     #8,a7
[0001d93e] 302a 0034                 move.w     52(a2),d0
[0001d942] d16f 0032                 add.w      d0,50(a7)
[0001d946] 322a 0036                 move.w     54(a2),d1
[0001d94a] d36f 0030                 add.w      d1,48(a7)
[0001d94e] 3007                      move.w     d7,d0
[0001d950] 48c0                      ext.l      d0
[0001d952] 2400                      move.l     d0,d2
[0001d954] d482                      add.l      d2,d2
[0001d956] d480                      add.l      d0,d2
[0001d958] e78a                      lsl.l      #3,d2
[0001d95a] 3634 2814                 move.w     20(a4,d2.l),d3
[0001d95e] 3834 2816                 move.w     22(a4,d2.l),d4
[0001d962] 9c6f 0032                 sub.w      50(a7),d6
[0001d966] 9a6f 0030                 sub.w      48(a7),d5
[0001d96a] 2474 280c                 movea.l    12(a4,d2.l),a2
[0001d96e] 4bef 0018                 lea.l      24(a7),a5
[0001d972] 302a 000e                 move.w     14(a2),d0
[0001d976] d06a 0012                 add.w      18(a2),d0
[0001d97a] 3a80                      move.w     d0,(a5)
[0001d97c] 322a 0010                 move.w     16(a2),d1
[0001d980] d26a 0014                 add.w      20(a2),d1
[0001d984] 3b41 0002                 move.w     d1,2(a5)
[0001d988] 7406                      moveq.l    #6,d2
[0001d98a] 3b42 0006                 move.w     d2,6(a5)
[0001d98e] 3b42 0004                 move.w     d2,4(a5)
[0001d992] 204d                      movea.l    a5,a0
[0001d994] 3006                      move.w     d6,d0
[0001d996] 3205                      move.w     d5,d1
[0001d998] 4eb9 0005 ef64            jsr        Aob_within
[0001d99e] 4a40                      tst.w      d0
[0001d9a0] 6774                      beq.s      edic_control_4
[0001d9a2] 2f39 000d 99d6            move.l     _globl,-(a7)
[0001d9a8] 3f2a 0018                 move.w     24(a2),-(a7)
[0001d9ac] 3f2a 0016                 move.w     22(a2),-(a7)
[0001d9b0] 302f 0038                 move.w     56(a7),d0
[0001d9b4] d06a 0014                 add.w      20(a2),d0
[0001d9b8] 3f00                      move.w     d0,-(a7)
[0001d9ba] 322f 003c                 move.w     60(a7),d1
[0001d9be] d26a 0012                 add.w      18(a2),d1
[0001d9c2] 3f01                      move.w     d1,-(a7)
[0001d9c4] 342f 003c                 move.w     60(a7),d2
[0001d9c8] d46d 0002                 add.w      2(a5),d2
[0001d9cc] 3f02                      move.w     d2,-(a7)
[0001d9ce] 43ef 0042                 lea.l      66(a7),a1
[0001d9d2] 41ef 0044                 lea.l      68(a7),a0
[0001d9d6] 342f 0040                 move.w     64(a7),d2
[0001d9da] d455                      add.w      (a5),d2
[0001d9dc] 7006                      moveq.l    #6,d0
[0001d9de] 3200                      move.w     d0,d1
[0001d9e0] 4eb9 0006 c3fe            jsr        mt_graf_dragbox
[0001d9e6] 4fef 000e                 lea.l      14(a7),a7
[0001d9ea] 302f 0036                 move.w     54(a7),d0
[0001d9ee] 906f 0032                 sub.w      50(a7),d0
[0001d9f2] 906a 0012                 sub.w      18(a2),d0
[0001d9f6] 6100 f31e                 bsr        snap
[0001d9fa] 3540 000e                 move.w     d0,14(a2)
[0001d9fe] 302f 0034                 move.w     52(a7),d0
[0001da02] 906f 0030                 sub.w      48(a7),d0
[0001da06] 906a 0014                 sub.w      20(a2),d0
[0001da0a] 6100 f30a                 bsr        snap
[0001da0e] 3540 0010                 move.w     d0,16(a2)
[0001da12] 6000 04cc                 bra        edic_control_5
edic_control_4:
[0001da16] 3aaa 001a                 move.w     26(a2),(a5)
[0001da1a] 3b6a 001c 0002            move.w     28(a2),2(a5)
[0001da20] 3b6a 001e 0004            move.w     30(a2),4(a5)
[0001da26] 3b6a 0020 0006            move.w     32(a2),6(a5)
[0001da2c] 3205                      move.w     d5,d1
[0001da2e] 3006                      move.w     d6,d0
[0001da30] 204d                      movea.l    a5,a0
[0001da32] 4eb9 0005 ef64            jsr        Aob_within
[0001da38] 4a40                      tst.w      d0
[0001da3a] 6700 00e2                 beq        edic_control_6
[0001da3e] 3205                      move.w     d5,d1
[0001da40] 3006                      move.w     d6,d0
[0001da42] 224d                      movea.l    a5,a1
[0001da44] 204c                      movea.l    a4,a0
[0001da46] 6100 fdf2                 bsr        control
[0001da4a] 5340                      subq.w     #1,d0
[0001da4c] 6766                      beq.s      edic_control_7
[0001da4e] 5340                      subq.w     #1,d0
[0001da50] 6704                      beq.s      edic_control_8
[0001da52] 6000 048c                 bra        edic_control_5
edic_control_8:
[0001da56] 3004                      move.w     d4,d0
[0001da58] 906a 001c                 sub.w      28(a2),d0
[0001da5c] 3f00                      move.w     d0,-(a7)
[0001da5e] 3203                      move.w     d3,d1
[0001da60] 926a 001a                 sub.w      26(a2),d1
[0001da64] 3f01                      move.w     d1,-(a7)
[0001da66] 7408                      moveq.l    #8,d2
[0001da68] 3f02                      move.w     d2,-(a7)
[0001da6a] 43ef 003a                 lea.l      58(a7),a1
[0001da6e] 41ef 003c                 lea.l      60(a7),a0
[0001da72] 322f 0036                 move.w     54(a7),d1
[0001da76] d26a 001c                 add.w      28(a2),d1
[0001da7a] 302f 0038                 move.w     56(a7),d0
[0001da7e] d06a 001a                 add.w      26(a2),d0
[0001da82] 4eb9 0001 3ffa            jsr        A_rubberbox
[0001da88] 5c4f                      addq.w     #6,a7
[0001da8a] 4a40                      tst.w      d0
[0001da8c] 6700 0452                 beq        edic_control_5
[0001da90] 302f 0036                 move.w     54(a7),d0
[0001da94] 6100 f280                 bsr        snap
[0001da98] 3540 001e                 move.w     d0,30(a2)
[0001da9c] 3940 01c4                 move.w     d0,452(a4)
[0001daa0] 302f 0034                 move.w     52(a7),d0
[0001daa4] 6100 f270                 bsr        snap
[0001daa8] 3540 0020                 move.w     d0,32(a2)
[0001daac] 3940 01c6                 move.w     d0,454(a4)
[0001dab0] 6000 042e                 bra        edic_control_5
edic_control_7:
[0001dab4] 2f39 000d 99d6            move.l     _globl,-(a7)
[0001daba] 3f04                      move.w     d4,-(a7)
[0001dabc] 3f03                      move.w     d3,-(a7)
[0001dabe] 3f2f 0038                 move.w     56(a7),-(a7)
[0001dac2] 3f2f 003c                 move.w     60(a7),-(a7)
[0001dac6] 302f 003c                 move.w     60(a7),d0
[0001daca] d06a 001c                 add.w      28(a2),d0
[0001dace] 3f00                      move.w     d0,-(a7)
[0001dad0] 43ef 0042                 lea.l      66(a7),a1
[0001dad4] 41ef 0044                 lea.l      68(a7),a0
[0001dad8] 342f 0040                 move.w     64(a7),d2
[0001dadc] d46a 001a                 add.w      26(a2),d2
[0001dae0] 322a 0020                 move.w     32(a2),d1
[0001dae4] 302a 001e                 move.w     30(a2),d0
[0001dae8] 4eb9 0006 c3fe            jsr        mt_graf_dragbox
[0001daee] 4fef 000e                 lea.l      14(a7),a7
[0001daf2] 302f 0036                 move.w     54(a7),d0
[0001daf6] 906f 0032                 sub.w      50(a7),d0
[0001dafa] 6100 f21a                 bsr        snap
[0001dafe] 3540 001a                 move.w     d0,26(a2)
[0001db02] 3940 01c0                 move.w     d0,448(a4)
[0001db06] 302f 0034                 move.w     52(a7),d0
[0001db0a] 906f 0030                 sub.w      48(a7),d0
[0001db0e] 6100 f206                 bsr        snap
[0001db12] 3540 001c                 move.w     d0,28(a2)
[0001db16] 3940 01c2                 move.w     d0,450(a4)
[0001db1a] 6000 03c4                 bra        edic_control_5
edic_control_6:
[0001db1e] 3aaa 0012                 move.w     18(a2),(a5)
[0001db22] 3b6a 0014 0002            move.w     20(a2),2(a5)
[0001db28] 3b6a 0016 0004            move.w     22(a2),4(a5)
[0001db2e] 3b6a 0018 0006            move.w     24(a2),6(a5)
[0001db34] 3205                      move.w     d5,d1
[0001db36] 3006                      move.w     d6,d0
[0001db38] 204d                      movea.l    a5,a0
[0001db3a] 4eb9 0005 ef64            jsr        Aob_within
[0001db40] 4a40                      tst.w      d0
[0001db42] 6700 038c                 beq        edic_control_9
[0001db46] 3205                      move.w     d5,d1
[0001db48] 3006                      move.w     d6,d0
[0001db4a] 224d                      movea.l    a5,a1
[0001db4c] 204c                      movea.l    a4,a0
[0001db4e] 6100 fcea                 bsr        control
[0001db52] 5340                      subq.w     #1,d0
[0001db54] 6700 007c                 beq.w      edic_control_10
[0001db58] 5340                      subq.w     #1,d0
[0001db5a] 6704                      beq.s      edic_control_11
[0001db5c] 6000 0382                 bra        edic_control_5
edic_control_11:
[0001db60] 3003                      move.w     d3,d0
[0001db62] 906a 0012                 sub.w      18(a2),d0
[0001db66] d07c ff40                 add.w      #$FF40,d0
[0001db6a] 4a40                      tst.w      d0
[0001db6c] 6f02                      ble.s      edic_control_12
[0001db6e] 9640                      sub.w      d0,d3
edic_control_12:
[0001db70] 3004                      move.w     d4,d0
[0001db72] 906a 0014                 sub.w      20(a2),d0
[0001db76] d07c ff40                 add.w      #$FF40,d0
[0001db7a] 4a40                      tst.w      d0
[0001db7c] 6f02                      ble.s      edic_control_13
[0001db7e] 9840                      sub.w      d0,d4
edic_control_13:
[0001db80] 3004                      move.w     d4,d0
[0001db82] 906a 0014                 sub.w      20(a2),d0
[0001db86] 3f00                      move.w     d0,-(a7)
[0001db88] 3203                      move.w     d3,d1
[0001db8a] 926a 0012                 sub.w      18(a2),d1
[0001db8e] 3f01                      move.w     d1,-(a7)
[0001db90] 7408                      moveq.l    #8,d2
[0001db92] 3f02                      move.w     d2,-(a7)
[0001db94] 43ef 003a                 lea.l      58(a7),a1
[0001db98] 41ef 003c                 lea.l      60(a7),a0
[0001db9c] 322f 0036                 move.w     54(a7),d1
[0001dba0] d26a 0014                 add.w      20(a2),d1
[0001dba4] 302f 0038                 move.w     56(a7),d0
[0001dba8] d06a 0012                 add.w      18(a2),d0
[0001dbac] 7410                      moveq.l    #16,d2
[0001dbae] 4eb9 0001 3ffa            jsr        A_rubberbox
[0001dbb4] 5c4f                      addq.w     #6,a7
[0001dbb6] 4a40                      tst.w      d0
[0001dbb8] 6700 0326                 beq        edic_control_5
[0001dbbc] 322f 0034                 move.w     52(a7),d1
[0001dbc0] 302f 0036                 move.w     54(a7),d0
[0001dbc4] 2053                      movea.l    (a3),a0
[0001dbc6] 2068 0258                 movea.l    600(a0),a0
[0001dbca] 6100 f346                 bsr        edic_resize
[0001dbce] 6000 0310                 bra        edic_control_5
edic_control_10:
[0001dbd2] 2053                      movea.l    (a3),a0
[0001dbd4] 0c68 0002 02ca            cmpi.w     #$0002,714(a0)
[0001dbda] 6600 028c                 bne        edic_control_14
[0001dbde] 2268 0258                 movea.l    600(a0),a1
[0001dbe2] 2a51                      movea.l    (a1),a5
[0001dbe4] 206d 0008                 movea.l    8(a5),a0
[0001dbe8] 2468 018c                 movea.l    396(a0),a2
[0001dbec] 3a2a 0016                 move.w     22(a2),d5
[0001dbf0] 3c2a 0018                 move.w     24(a2),d6
[0001dbf4] 3206                      move.w     d6,d1
[0001dbf6] 3005                      move.w     d5,d0
[0001dbf8] 4eb9 0004 d928            jsr        Abp_create
[0001dbfe] 2f48 0014                 move.l     a0,20(a7)
[0001dc02] 2008                      move.l     a0,d0
[0001dc04] 6700 02f0                 beq        edic_control_3
[0001dc08] 2253                      movea.l    (a3),a1
[0001dc0a] 2069 023c                 movea.l    572(a1),a0
[0001dc0e] 3228 000e                 move.w     14(a0),d1
[0001dc12] c27c 0800                 and.w      #$0800,d1
[0001dc16] 664a                      bne.s      edic_control_15
[0001dc18] 2ead 0010                 move.l     16(a5),(a7)
[0001dc1c] 3f45 0004                 move.w     d5,4(a7)
[0001dc20] 740f                      moveq.l    #15,d2
[0001dc22] d445                      add.w      d5,d2
[0001dc24] c47c fff0                 and.w      #$FFF0,d2
[0001dc28] e842                      asr.w      #4,d2
[0001dc2a] 3f42 0008                 move.w     d2,8(a7)
[0001dc2e] 3f46 0006                 move.w     d6,6(a7)
[0001dc32] 3f7c 0001 000c            move.w     #$0001,12(a7)
[0001dc38] 4247                      clr.w      d7
[0001dc3a] 3f47 0012                 move.w     d7,18(a7)
[0001dc3e] 3f47 0010                 move.w     d7,16(a7)
[0001dc42] 3f47 000e                 move.w     d7,14(a7)
[0001dc46] 3f47 000a                 move.w     d7,10(a7)
[0001dc4a] 70ff                      moveq.l    #-1,d0
[0001dc4c] d045                      add.w      d5,d0
[0001dc4e] 3f40 002c                 move.w     d0,44(a7)
[0001dc52] 3f40 0024                 move.w     d0,36(a7)
[0001dc56] 72ff                      moveq.l    #-1,d1
[0001dc58] d246                      add.w      d6,d1
[0001dc5a] 3f41 002e                 move.w     d1,46(a7)
[0001dc5e] 3f41 0026                 move.w     d1,38(a7)
edic_control_15:
[0001dc62] 7e0f                      moveq.l    #15,d7
[0001dc64] de45                      add.w      d5,d7
[0001dc66] ce7c fff0                 and.w      #$FFF0,d7
[0001dc6a] cfc6                      muls.w     d6,d7
[0001dc6c] 48c7                      ext.l      d7
[0001dc6e] e687                      asr.l      #3,d7
[0001dc70] 2053                      movea.l    (a3),a0
[0001dc72] 3028 001c                 move.w     28(a0),d0
[0001dc76] 5340                      subq.w     #1,d0
[0001dc78] 6700 00de                 beq        edic_control_16
[0001dc7c] 5740                      subq.w     #3,d0
[0001dc7e] 6700 0084                 beq        edic_control_17
[0001dc82] 5940                      subq.w     #4,d0
[0001dc84] 6704                      beq.s      edic_control_18
[0001dc86] 6000 00e4                 bra        edic_control_19
edic_control_18:
[0001dc8a] 0c6d 0008 002e            cmpi.w     #$0008,46(a5)
[0001dc90] 6640                      bne.s      edic_control_20
[0001dc92] e98f                      lsl.l      #4,d7
[0001dc94] 7001                      moveq.l    #1,d0
[0001dc96] 2053                      movea.l    (a3),a0
[0001dc98] 2268 025c                 movea.l    604(a0),a1
[0001dc9c] c069 018a                 and.w      394(a1),d0
[0001dca0] 671a                      beq.s      edic_control_21
[0001dca2] 222d 0038                 move.l     56(a5),d1
[0001dca6] 6714                      beq.s      edic_control_21
[0001dca8] 2241                      movea.l    d1,a1
[0001dcaa] 206f 0014                 movea.l    20(a7),a0
[0001dcae] 2050                      movea.l    (a0),a0
[0001dcb0] 2007                      move.l     d7,d0
[0001dcb2] 4eb9 0007 6f44            jsr        memcpy
[0001dcb8] 6000 00c0                 bra        edic_control_22
edic_control_21:
[0001dcbc] 2007                      move.l     d7,d0
[0001dcbe] 226d 0030                 movea.l    48(a5),a1
[0001dcc2] 206f 0014                 movea.l    20(a7),a0
[0001dcc6] 2050                      movea.l    (a0),a0
[0001dcc8] 4eb9 0007 6f44            jsr        memcpy
[0001dcce] 6000 00aa                 bra        edic_control_22
edic_control_20:
[0001dcd2] 2053                      movea.l    (a3),a0
[0001dcd4] 2268 023c                 movea.l    572(a0),a1
[0001dcd8] 3029 000e                 move.w     14(a1),d0
[0001dcdc] c07c 0800                 and.w      #$0800,d0
[0001dce0] 6600 0076                 bne.w      edic_control_16
edic_control_25:
[0001dce4] 2f2f 0014                 move.l     20(a7),-(a7)
[0001dce8] 43ef 0004                 lea.l      4(a7),a1
[0001dcec] 41ef 0024                 lea.l      36(a7),a0
[0001dcf0] 7203                      moveq.l    #3,d1
[0001dcf2] 2c53                      movea.l    (a3),a6
[0001dcf4] 302e 0010                 move.w     16(a6),d0
[0001dcf8] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001dcfe] 584f                      addq.w     #4,a7
[0001dd00] 6000 0078                 bra.w      edic_control_22
edic_control_17:
[0001dd04] 0c6d 0004 0018            cmpi.w     #$0004,24(a5)
[0001dd0a] 663c                      bne.s      edic_control_23
[0001dd0c] e58f                      lsl.l      #2,d7
[0001dd0e] 7001                      moveq.l    #1,d0
[0001dd10] 2053                      movea.l    (a3),a0
[0001dd12] 2268 025c                 movea.l    604(a0),a1
[0001dd16] c069 018a                 and.w      394(a1),d0
[0001dd1a] 6718                      beq.s      edic_control_24
[0001dd1c] 222d 0022                 move.l     34(a5),d1
[0001dd20] 6712                      beq.s      edic_control_24
[0001dd22] 2241                      movea.l    d1,a1
[0001dd24] 2c6f 0014                 movea.l    20(a7),a6
[0001dd28] 2056                      movea.l    (a6),a0
[0001dd2a] 2007                      move.l     d7,d0
[0001dd2c] 4eb9 0007 6f44            jsr        memcpy
[0001dd32] 6046                      bra.s      edic_control_22
edic_control_24:
[0001dd34] 2007                      move.l     d7,d0
[0001dd36] 226d 001a                 movea.l    26(a5),a1
[0001dd3a] 206f 0014                 movea.l    20(a7),a0
[0001dd3e] 2050                      movea.l    (a0),a0
[0001dd40] 4eb9 0007 6f44            jsr        memcpy
[0001dd46] 6032                      bra.s      edic_control_22
edic_control_23:
[0001dd48] 2053                      movea.l    (a3),a0
[0001dd4a] 2268 023c                 movea.l    572(a0),a1
[0001dd4e] 3029 000e                 move.w     14(a1),d0
[0001dd52] c07c 0800                 and.w      #$0800,d0
[0001dd56] 678c                      beq.s      edic_control_25
edic_control_16:
[0001dd58] 2007                      move.l     d7,d0
[0001dd5a] 226d 0010                 movea.l    16(a5),a1
[0001dd5e] 206f 0014                 movea.l    20(a7),a0
[0001dd62] 2050                      movea.l    (a0),a0
[0001dd64] 4eb9 0007 6f44            jsr        memcpy
[0001dd6a] 600e                      bra.s      edic_control_22
edic_control_19:
[0001dd6c] 206f 0014                 movea.l    20(a7),a0
[0001dd70] 4eb9 0004 d996            jsr        Abp_delete
[0001dd76] 6000 017e                 bra        edic_control_3
edic_control_22:
[0001dd7a] 2053                      movea.l    (a3),a0
[0001dd7c] 2268 023c                 movea.l    572(a0),a1
[0001dd80] 3029 000e                 move.w     14(a1),d0
[0001dd84] c07c 0800                 and.w      #$0800,d0
[0001dd88] 6618                      bne.s      edic_control_26
[0001dd8a] 2a6f 0014                 movea.l    20(a7),a5
[0001dd8e] 426d 000a                 clr.w      10(a5)
[0001dd92] 224d                      movea.l    a5,a1
[0001dd94] 204d                      movea.l    a5,a0
[0001dd96] 2c53                      movea.l    (a3),a6
[0001dd98] 302e 0010                 move.w     16(a6),d0
[0001dd9c] 4eb9 0006 66a8            jsr        vr_trnfm
edic_control_26:
[0001dda2] 206f 0014                 movea.l    20(a7),a0
[0001dda6] 317c 0001 000a            move.w     #$0001,10(a0)
[0001ddac] 2253                      movea.l    (a3),a1
[0001ddae] 2a69 025c                 movea.l    604(a1),a5
[0001ddb2] 026d ff7f 01d0            andi.w     #$FF7F,464(a5)
[0001ddb8] 2253                      movea.l    (a3),a1
[0001ddba] 2a69 025c                 movea.l    604(a1),a5
[0001ddbe] 302d 0190                 move.w     400(a5),d0
[0001ddc2] d06a 0012                 add.w      18(a2),d0
[0001ddc6] 3b40 01d8                 move.w     d0,472(a5)
[0001ddca] 2253                      movea.l    (a3),a1
[0001ddcc] 2a69 025c                 movea.l    604(a1),a5
[0001ddd0] 322d 0192                 move.w     402(a5),d1
[0001ddd4] d26a 0014                 add.w      20(a2),d1
[0001ddd8] 3b41 01da                 move.w     d1,474(a5)
[0001dddc] 2253                      movea.l    (a3),a1
[0001ddde] 2a69 025c                 movea.l    604(a1),a5
[0001dde2] 3b45 01dc                 move.w     d5,476(a5)
[0001dde6] 2253                      movea.l    (a3),a1
[0001dde8] 2a69 025c                 movea.l    604(a1),a5
[0001ddec] 3b46 01de                 move.w     d6,478(a5)
[0001ddf0] 2253                      movea.l    (a3),a1
[0001ddf2] 2a69 025c                 movea.l    604(a1),a5
[0001ddf6] 2b48 01ec                 move.l     a0,492(a5)
[0001ddfa] 7013                      moveq.l    #19,d0
[0001ddfc] 2253                      movea.l    (a3),a1
[0001ddfe] 2069 0258                 movea.l    600(a1),a0
[0001de02] 4eb9 0004 487c            jsr        Adr_add
[0001de08] 2053                      movea.l    (a3),a0
[0001de0a] 3228 0264                 move.w     612(a0),d1
[0001de0e] 3028 0262                 move.w     610(a0),d0
[0001de12] 4eb9 0004 557a            jsr        Adr_drag
[0001de18] 7013                      moveq.l    #19,d0
[0001de1a] 2053                      movea.l    (a3),a0
[0001de1c] 2068 0258                 movea.l    600(a0),a0
[0001de20] 4eb9 0004 492a            jsr        Adr_del
[0001de26] 206f 0014                 movea.l    20(a7),a0
[0001de2a] 4eb9 0004 d996            jsr        Abp_delete
[0001de30] 2053                      movea.l    (a3),a0
[0001de32] 2268 025c                 movea.l    604(a0),a1
[0001de36] 0069 0080 01d0            ori.w      #$0080,464(a1)
[0001de3c] 4240                      clr.w      d0
[0001de3e] 2053                      movea.l    (a3),a0
[0001de40] 2268 025c                 movea.l    604(a0),a1
[0001de44] 3340 01de                 move.w     d0,478(a1)
[0001de48] 2053                      movea.l    (a3),a0
[0001de4a] 2268 025c                 movea.l    604(a0),a1
[0001de4e] 3340 01dc                 move.w     d0,476(a1)
[0001de52] 2053                      movea.l    (a3),a0
[0001de54] 2268 025c                 movea.l    604(a0),a1
[0001de58] 3340 01da                 move.w     d0,474(a1)
[0001de5c] 2053                      movea.l    (a3),a0
[0001de5e] 2268 025c                 movea.l    604(a0),a1
[0001de62] 3340 01d8                 move.w     d0,472(a1)
[0001de66] 6078                      bra.s      edic_control_5
edic_control_14:
[0001de68] 2f39 000d 99d6            move.l     _globl,-(a7)
[0001de6e] 3f04                      move.w     d4,-(a7)
[0001de70] 3f03                      move.w     d3,-(a7)
[0001de72] 3f2f 0038                 move.w     56(a7),-(a7)
[0001de76] 3f2f 003c                 move.w     60(a7),-(a7)
[0001de7a] 302f 003c                 move.w     60(a7),d0
[0001de7e] d06a 0014                 add.w      20(a2),d0
[0001de82] 3f00                      move.w     d0,-(a7)
[0001de84] 43ef 0042                 lea.l      66(a7),a1
[0001de88] 41ef 0044                 lea.l      68(a7),a0
[0001de8c] 342f 0040                 move.w     64(a7),d2
[0001de90] d46a 0012                 add.w      18(a2),d2
[0001de94] 322a 0018                 move.w     24(a2),d1
[0001de98] 302a 0016                 move.w     22(a2),d0
[0001de9c] 4eb9 0006 c3fe            jsr        mt_graf_dragbox
[0001dea2] 4fef 000e                 lea.l      14(a7),a7
[0001dea6] 302f 0036                 move.w     54(a7),d0
[0001deaa] 906f 0032                 sub.w      50(a7),d0
[0001deae] 6100 ee66                 bsr        snap
[0001deb2] 3540 0012                 move.w     d0,18(a2)
[0001deb6] 3940 01c0                 move.w     d0,448(a4)
[0001deba] 302f 0034                 move.w     52(a7),d0
[0001debe] 906f 0030                 sub.w      48(a7),d0
[0001dec2] 6100 ee52                 bsr        snap
[0001dec6] 3540 0014                 move.w     d0,20(a2)
[0001deca] 3940 01c2                 move.w     d0,450(a4)
[0001dece] 6010                      bra.s      edic_control_5
edic_control_9:
[0001ded0] 303c 0080                 move.w     #$0080,d0
[0001ded4] c06c 01b8                 and.w      440(a4),d0
[0001ded8] 661c                      bne.s      edic_control_3
[0001deda] 006c 0080 01b8            ori.w      #$0080,440(a4)
edic_control_5:
[0001dee0] 72ff                      moveq.l    #-1,d1
[0001dee2] 700e                      moveq.l    #14,d0
[0001dee4] 2053                      movea.l    (a3),a0
[0001dee6] 2068 0258                 movea.l    600(a0),a0
[0001deea] 2253                      movea.l    (a3),a1
[0001deec] 2469 0258                 movea.l    600(a1),a2
[0001def0] 226a 0066                 movea.l    102(a2),a1
[0001def4] 4e91                      jsr        (a1)
edic_control_3:
[0001def6] 4fef 0038                 lea.l      56(a7),a7
[0001defa] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[0001defe] 4e75                      rts

edic_nextcol:
[0001df00] 2f0a                      move.l     a2,-(a7)
[0001df02] 2450                      movea.l    (a0),a2
[0001df04] 7002                      moveq.l    #2,d0
[0001df06] 322a 0018                 move.w     24(a2),d1
[0001df0a] 2079 0010 1f12            movea.l    ACSblk,a0
[0001df10] b268 001c                 cmp.w      28(a0),d1
[0001df14] 6602                      bne.s      edic_nextcol_1
[0001df16] 7010                      moveq.l    #16,d0
edic_nextcol_1:
[0001df18] 322a 002e                 move.w     46(a2),d1
[0001df1c] 2079 0010 1f12            movea.l    ACSblk,a0
[0001df22] b268 001c                 cmp.w      28(a0),d1
[0001df26] 6604                      bne.s      edic_nextcol_2
[0001df28] 303c 0100                 move.w     #$0100,d0
edic_nextcol_2:
[0001df2c] 206a 000c                 movea.l    12(a2),a0
[0001df30] 3228 02b4                 move.w     692(a0),d1
[0001df34] 5141                      subq.w     #8,d1
[0001df36] 670a                      beq.s      edic_nextcol_3
[0001df38] 5341                      subq.w     #1,d1
[0001df3a] 673c                      beq.s      edic_nextcol_4
[0001df3c] 5341                      subq.w     #1,d1
[0001df3e] 6732                      beq.s      edic_nextcol_5
[0001df40] 603e                      bra.s      edic_nextcol_6
edic_nextcol_3:
[0001df42] 526a 0044                 addq.w     #1,68(a2)
[0001df46] b06a 0044                 cmp.w      68(a2),d0
[0001df4a] 6f1a                      ble.s      edic_nextcol_7
[0001df4c] 2079 0010 1f12            movea.l    ACSblk,a0
[0001df52] 2068 023c                 movea.l    572(a0),a0
[0001df56] 41e8 003e                 lea.l      62(a0),a0
[0001df5a] 4eb9 0004 9898            jsr        Amo_new
edic_nextcol_8:
[0001df60] 6100 ebfe                 bsr        edic_black0
[0001df64] 601a                      bra.s      edic_nextcol_6
edic_nextcol_7:
[0001df66] 357c ffff 0044            move.w     #$FFFF,68(a2)
[0001df6c] 6100 ed1a                 bsr        edic_invisible
[0001df70] 600e                      bra.s      edic_nextcol_6
edic_nextcol_5:
[0001df72] 6100 ecd2                 bsr        edic_white
[0001df76] 6008                      bra.s      edic_nextcol_6
edic_nextcol_4:
[0001df78] 357c 0001 0044            move.w     #$0001,68(a2)
[0001df7e] 60e0                      bra.s      edic_nextcol_8
edic_nextcol_6:
[0001df80] 245f                      movea.l    (a7)+,a2
[0001df82] 4e75                      rts

edic_set:
[0001df84] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0001df88] 4fef ff9c                 lea.l      -100(a7),a7
[0001df8c] 4bf9 000a 49cc            lea.l      brush,a5
[0001df92] 41ed 0024                 lea.l      36(a5),a0
[0001df96] 43ef 0014                 lea.l      20(a7),a1
[0001df9a] 12d8                      move.b     (a0)+,(a1)+
[0001df9c] 12d8                      move.b     (a0)+,(a1)+
[0001df9e] 12d8                      move.b     (a0)+,(a1)+
[0001dfa0] 12d8                      move.b     (a0)+,(a1)+
[0001dfa2] 41ed 0028                 lea.l      40(a5),a0
[0001dfa6] 43ef 0010                 lea.l      16(a7),a1
[0001dfaa] 12d8                      move.b     (a0)+,(a1)+
[0001dfac] 12d8                      move.b     (a0)+,(a1)+
[0001dfae] 12d8                      move.b     (a0)+,(a1)+
[0001dfb0] 12d8                      move.b     (a0)+,(a1)+
[0001dfb2] 49f9 0010 1f12            lea.l      ACSblk,a4
[0001dfb8] 2054                      movea.l    (a4),a0
[0001dfba] 2f68 0258 004c            move.l     600(a0),76(a7)
[0001dfc0] 226f 004c                 movea.l    76(a7),a1
[0001dfc4] 2f51 0060                 move.l     (a1),96(a7)
[0001dfc8] 2f69 0014 0044            move.l     20(a1),68(a7)
[0001dfce] 3628 0260                 move.w     608(a0),d3
[0001dfd2] 3203                      move.w     d3,d1
[0001dfd4] 48c1                      ext.l      d1
[0001dfd6] 2001                      move.l     d1,d0
[0001dfd8] d080                      add.l      d0,d0
[0001dfda] d081                      add.l      d1,d0
[0001dfdc] e788                      lsl.l      #3,d0
[0001dfde] 226f 0044                 movea.l    68(a7),a1
[0001dfe2] 3431 080a                 move.w     10(a1,d0.l),d2
[0001dfe6] c47c 4000                 and.w      #$4000,d2
[0001dfea] 670c                      beq.s      edic_set_1
[0001dfec] 206f 004c                 movea.l    76(a7),a0
[0001dff0] 6100 ff0e                 bsr        edic_nextcol
[0001dff4] 6000 03c2                 bra        edic_set_2
edic_set_1:
[0001dff8] 206f 0060                 movea.l    96(a7),a0
[0001dffc] 2268 0008                 movea.l    8(a0),a1
[0001e000] 2669 018c                 movea.l    396(a1),a3
[0001e004] 4869 0180                 pea.l      384(a1)
[0001e008] 2f08                      move.l     a0,-(a7)
[0001e00a] 43ef 0024                 lea.l      36(a7),a1
[0001e00e] 41ef 0038                 lea.l      56(a7),a0
[0001e012] 6100 e868                 bsr        mfdb_dm
[0001e016] 504f                      addq.w     #8,a7
[0001e018] 2054                      movea.l    (a4),a0
[0001e01a] 2268 023c                 movea.l    572(a0),a1
[0001e01e] 3029 000e                 move.w     14(a1),d0
[0001e022] c07c 0800                 and.w      #$0800,d0
[0001e026] 6716                      beq.s      edic_set_3
[0001e028] 322f 0036                 move.w     54(a7),d1
[0001e02c] 302f 0034                 move.w     52(a7),d0
[0001e030] 4eb9 0004 d928            jsr        Abp_create
[0001e036] 2f48 0018                 move.l     a0,24(a7)
[0001e03a] 6700 037c                 beq        edic_set_2
edic_set_3:
[0001e03e] 206f 0060                 movea.l    96(a7),a0
[0001e042] 3f68 0044 0014            move.w     68(a0),20(a7)
[0001e048] 2254                      movea.l    (a4),a1
[0001e04a] 3f69 0262 005e            move.w     610(a1),94(a7)
[0001e050] 3f69 0264 005c            move.w     612(a1),92(a7)
[0001e056] 2f39 000d 99d6            move.l     _globl,-(a7)
[0001e05c] 486f 005c                 pea.l      92(a7)
[0001e060] 43ef 0062                 lea.l      98(a7),a1
[0001e064] 3003                      move.w     d3,d0
[0001e066] 206f 004c                 movea.l    76(a7),a0
[0001e06a] 4eb9 0006 ba44            jsr        mt_objc_offset
[0001e070] 504f                      addq.w     #8,a7
[0001e072] 76ff                      moveq.l    #-1,d3
[0001e074] 3803                      move.w     d3,d4
edic_set_22:
[0001e076] 302f 005e                 move.w     94(a7),d0
[0001e07a] 206f 004c                 movea.l    76(a7),a0
[0001e07e] 9068 0034                 sub.w      52(a0),d0
[0001e082] 906f 005a                 sub.w      90(a7),d0
[0001e086] 48c0                      ext.l      d0
[0001e088] 81fc 0008                 divs.w     #$0008,d0
[0001e08c] 3f40 005e                 move.w     d0,94(a7)
[0001e090] 322f 005c                 move.w     92(a7),d1
[0001e094] 9268 0036                 sub.w      54(a0),d1
[0001e098] 926f 0058                 sub.w      88(a7),d1
[0001e09c] 48c1                      ext.l      d1
[0001e09e] 83fc 0008                 divs.w     #$0008,d1
[0001e0a2] 3f41 005c                 move.w     d1,92(a7)
[0001e0a6] b840                      cmp.w      d0,d4
[0001e0a8] 6606                      bne.s      edic_set_4
[0001e0aa] b641                      cmp.w      d1,d3
[0001e0ac] 6700 02be                 beq        edic_set_5
edic_set_4:
[0001e0b0] 302f 005e                 move.w     94(a7),d0
[0001e0b4] e748                      lsl.w      #3,d0
[0001e0b6] 206f 004c                 movea.l    76(a7),a0
[0001e0ba] d068 0034                 add.w      52(a0),d0
[0001e0be] d06f 005a                 add.w      90(a7),d0
[0001e0c2] 3f40 0050                 move.w     d0,80(a7)
[0001e0c6] 322f 005c                 move.w     92(a7),d1
[0001e0ca] e749                      lsl.w      #3,d1
[0001e0cc] d268 0036                 add.w      54(a0),d1
[0001e0d0] d26f 0058                 add.w      88(a7),d1
[0001e0d4] 3f41 0052                 move.w     d1,82(a7)
[0001e0d8] 7408                      moveq.l    #8,d2
[0001e0da] 3f42 0056                 move.w     d2,86(a7)
[0001e0de] 3f42 0054                 move.w     d2,84(a7)
[0001e0e2] 226f 0060                 movea.l    96(a7),a1
[0001e0e6] 2069 000c                 movea.l    12(a1),a0
[0001e0ea] 0c68 0008 0044            cmpi.w     #$0008,68(a0)
[0001e0f0] 6612                      bne.s      edic_set_6
[0001e0f2] 7001                      moveq.l    #1,d0
[0001e0f4] 3f40 0006                 move.w     d0,6(a7)
[0001e0f8] 3f40 0004                 move.w     d0,4(a7)
[0001e0fc] 3f40 0002                 move.w     d0,2(a7)
[0001e100] 3e80                      move.w     d0,(a7)
[0001e102] 6026                      bra.s      edic_set_7
edic_set_6:
[0001e104] 4240                      clr.w      d0
[0001e106] 3f40 0002                 move.w     d0,2(a7)
[0001e10a] 3e80                      move.w     d0,(a7)
[0001e10c] 7202                      moveq.l    #2,d1
[0001e10e] 3f41 0006                 move.w     d1,6(a7)
[0001e112] 3f41 0004                 move.w     d1,4(a7)
[0001e116] 516f 0050                 subq.w     #8,80(a7)
[0001e11a] 516f 0052                 subq.w     #8,82(a7)
[0001e11e] 066f 0010 0054            addi.w     #$0010,84(a7)
[0001e124] 066f 0010 0056            addi.w     #$0010,86(a7)
edic_set_7:
[0001e12a] 302f 005e                 move.w     94(a7),d0
[0001e12e] 6b00 026e                 bmi        edic_set_8
[0001e132] 322f 005c                 move.w     92(a7),d1
[0001e136] 6b00 0266                 bmi        edic_set_8
[0001e13a] b06b 0016                 cmp.w      22(a3),d0
[0001e13e] 6c00 025e                 bge        edic_set_8
[0001e142] b26b 0018                 cmp.w      24(a3),d1
[0001e146] 6c00 0256                 bge        edic_set_8
[0001e14a] d057                      add.w      (a7),d0
[0001e14c] 5340                      subq.w     #1,d0
[0001e14e] 3f40 0008                 move.w     d0,8(a7)
[0001e152] d26f 0002                 add.w      2(a7),d1
[0001e156] 5341                      subq.w     #1,d1
[0001e158] 3f41 000a                 move.w     d1,10(a7)
[0001e15c] 302f 005e                 move.w     94(a7),d0
[0001e160] d06f 0004                 add.w      4(a7),d0
[0001e164] 5340                      subq.w     #1,d0
[0001e166] 3f40 000c                 move.w     d0,12(a7)
[0001e16a] 322f 005c                 move.w     92(a7),d1
[0001e16e] d26f 0006                 add.w      6(a7),d1
[0001e172] 5341                      subq.w     #1,d1
[0001e174] 3f41 000e                 move.w     d1,14(a7)
[0001e178] 302f 0008                 move.w     8(a7),d0
[0001e17c] 6a06                      bpl.s      edic_set_9
[0001e17e] 9157                      sub.w      d0,(a7)
[0001e180] 426f 0008                 clr.w      8(a7)
edic_set_9:
[0001e184] 302f 000a                 move.w     10(a7),d0
[0001e188] 6a08                      bpl.s      edic_set_10
[0001e18a] 916f 0002                 sub.w      d0,2(a7)
[0001e18e] 426f 000a                 clr.w      10(a7)
edic_set_10:
[0001e192] 302f 000c                 move.w     12(a7),d0
[0001e196] b06b 0016                 cmp.w      22(a3),d0
[0001e19a] 6d14                      blt.s      edic_set_11
[0001e19c] 906b 0016                 sub.w      22(a3),d0
[0001e1a0] 5240                      addq.w     #1,d0
[0001e1a2] 916f 0004                 sub.w      d0,4(a7)
[0001e1a6] 70ff                      moveq.l    #-1,d0
[0001e1a8] d06b 0016                 add.w      22(a3),d0
[0001e1ac] 3f40 000c                 move.w     d0,12(a7)
edic_set_11:
[0001e1b0] 302f 000e                 move.w     14(a7),d0
[0001e1b4] b06b 0018                 cmp.w      24(a3),d0
[0001e1b8] 6d14                      blt.s      edic_set_12
[0001e1ba] 906b 0018                 sub.w      24(a3),d0
[0001e1be] 5240                      addq.w     #1,d0
[0001e1c0] 916f 0006                 sub.w      d0,6(a7)
[0001e1c4] 70ff                      moveq.l    #-1,d0
[0001e1c6] d06b 0018                 add.w      24(a3),d0
[0001e1ca] 3f40 000e                 move.w     d0,14(a7)
edic_set_12:
[0001e1ce] 2054                      movea.l    (a4),a0
[0001e1d0] 2268 023c                 movea.l    572(a0),a1
[0001e1d4] 3029 000e                 move.w     14(a1),d0
[0001e1d8] c07c 0800                 and.w      #$0800,d0
[0001e1dc] 6700 00dc                 beq        edic_set_13
[0001e1e0] 3228 001c                 move.w     28(a0),d1
[0001e1e4] b26f 003c                 cmp.w      60(a7),d1
[0001e1e8] 6600 00d0                 bne        edic_set_13
[0001e1ec] 41ef 0030                 lea.l      48(a7),a0
[0001e1f0] 2254                      movea.l    (a4),a1
[0001e1f2] 3029 0010                 move.w     16(a1),d0
[0001e1f6] 226f 0018                 movea.l    24(a7),a1
[0001e1fa] 4eb9 0006 66a8            jsr        vr_trnfm
[0001e200] 206f 0060                 movea.l    96(a7),a0
[0001e204] 3028 0044                 move.w     68(a0),d0
[0001e208] 6b3a                      bmi.s      edic_set_14
[0001e20a] 486f 0014                 pea.l      20(a7)
[0001e20e] 2f2f 001c                 move.l     28(a7),-(a7)
[0001e212] 224d                      movea.l    a5,a1
[0001e214] 41ef 0008                 lea.l      8(a7),a0
[0001e218] 7201                      moveq.l    #1,d1
[0001e21a] 2454                      movea.l    (a4),a2
[0001e21c] 302a 0010                 move.w     16(a2),d0
[0001e220] 4eb9 0006 6632            jsr        vrt_cpyfm
[0001e226] 504f                      addq.w     #8,a7
[0001e228] 486f 001c                 pea.l      28(a7)
[0001e22c] 224d                      movea.l    a5,a1
[0001e22e] 41ef 0004                 lea.l      4(a7),a0
[0001e232] 720f                      moveq.l    #15,d1
[0001e234] 2454                      movea.l    (a4),a2
[0001e236] 302a 0010                 move.w     16(a2),d0
[0001e23a] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001e240] 584f                      addq.w     #4,a7
[0001e242] 605e                      bra.s      edic_set_15
edic_set_14:
[0001e244] 206f 0018                 movea.l    24(a7),a0
[0001e248] 0c68 0001 000c            cmpi.w     #$0001,12(a0)
[0001e24e] 661a                      bne.s      edic_set_16
[0001e250] 2f08                      move.l     a0,-(a7)
[0001e252] 224d                      movea.l    a5,a1
[0001e254] 41ef 0004                 lea.l      4(a7),a0
[0001e258] 4241                      clr.w      d1
[0001e25a] 2454                      movea.l    (a4),a2
[0001e25c] 302a 0010                 move.w     16(a2),d0
[0001e260] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001e266] 584f                      addq.w     #4,a7
[0001e268] 601e                      bra.s      edic_set_17
edic_set_16:
[0001e26a] 486f 0010                 pea.l      16(a7)
[0001e26e] 2f2f 001c                 move.l     28(a7),-(a7)
[0001e272] 224d                      movea.l    a5,a1
[0001e274] 41ef 0008                 lea.l      8(a7),a0
[0001e278] 7201                      moveq.l    #1,d1
[0001e27a] 2454                      movea.l    (a4),a2
[0001e27c] 302a 0010                 move.w     16(a2),d0
[0001e280] 4eb9 0006 6632            jsr        vrt_cpyfm
[0001e286] 504f                      addq.w     #8,a7
edic_set_17:
[0001e288] 486f 001c                 pea.l      28(a7)
[0001e28c] 224d                      movea.l    a5,a1
[0001e28e] 41ef 0004                 lea.l      4(a7),a0
[0001e292] 4241                      clr.w      d1
[0001e294] 2454                      movea.l    (a4),a2
[0001e296] 302a 0010                 move.w     16(a2),d0
[0001e29a] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001e2a0] 584f                      addq.w     #4,a7
edic_set_15:
[0001e2a2] 43ef 0030                 lea.l      48(a7),a1
[0001e2a6] 206f 0018                 movea.l    24(a7),a0
[0001e2aa] 2454                      movea.l    (a4),a2
[0001e2ac] 302a 0010                 move.w     16(a2),d0
[0001e2b0] 4eb9 0006 66a8            jsr        vr_trnfm
[0001e2b6] 6000 00a2                 bra        edic_set_18
edic_set_13:
[0001e2ba] 206f 0060                 movea.l    96(a7),a0
[0001e2be] 3028 0044                 move.w     68(a0),d0
[0001e2c2] 6b3a                      bmi.s      edic_set_19
[0001e2c4] 486f 0014                 pea.l      20(a7)
[0001e2c8] 486f 0034                 pea.l      52(a7)
[0001e2cc] 224d                      movea.l    a5,a1
[0001e2ce] 41ef 0008                 lea.l      8(a7),a0
[0001e2d2] 7201                      moveq.l    #1,d1
[0001e2d4] 2454                      movea.l    (a4),a2
[0001e2d6] 302a 0010                 move.w     16(a2),d0
[0001e2da] 4eb9 0006 6632            jsr        vrt_cpyfm
[0001e2e0] 504f                      addq.w     #8,a7
[0001e2e2] 486f 001c                 pea.l      28(a7)
[0001e2e6] 224d                      movea.l    a5,a1
[0001e2e8] 41ef 0004                 lea.l      4(a7),a0
[0001e2ec] 720f                      moveq.l    #15,d1
[0001e2ee] 2454                      movea.l    (a4),a2
[0001e2f0] 302a 0010                 move.w     16(a2),d0
[0001e2f4] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001e2fa] 584f                      addq.w     #4,a7
[0001e2fc] 605c                      bra.s      edic_set_18
edic_set_19:
[0001e2fe] 0c6f 0001 003c            cmpi.w     #$0001,60(a7)
[0001e304] 661c                      bne.s      edic_set_20
[0001e306] 486f 0030                 pea.l      48(a7)
[0001e30a] 224d                      movea.l    a5,a1
[0001e30c] 41ef 0004                 lea.l      4(a7),a0
[0001e310] 4241                      clr.w      d1
[0001e312] 2454                      movea.l    (a4),a2
[0001e314] 302a 0010                 move.w     16(a2),d0
[0001e318] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001e31e] 584f                      addq.w     #4,a7
[0001e320] 601e                      bra.s      edic_set_21
edic_set_20:
[0001e322] 486f 0010                 pea.l      16(a7)
[0001e326] 486f 0034                 pea.l      52(a7)
[0001e32a] 224d                      movea.l    a5,a1
[0001e32c] 41ef 0008                 lea.l      8(a7),a0
[0001e330] 7201                      moveq.l    #1,d1
[0001e332] 2454                      movea.l    (a4),a2
[0001e334] 302a 0010                 move.w     16(a2),d0
[0001e338] 4eb9 0006 6632            jsr        vrt_cpyfm
[0001e33e] 504f                      addq.w     #8,a7
edic_set_21:
[0001e340] 486f 001c                 pea.l      28(a7)
[0001e344] 224d                      movea.l    a5,a1
[0001e346] 41ef 0004                 lea.l      4(a7),a0
[0001e34a] 4241                      clr.w      d1
[0001e34c] 2454                      movea.l    (a4),a2
[0001e34e] 302a 0010                 move.w     16(a2),d0
[0001e352] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001e358] 584f                      addq.w     #4,a7
edic_set_18:
[0001e35a] 43ef 0050                 lea.l      80(a7),a1
[0001e35e] 206f 004c                 movea.l    76(a7),a0
[0001e362] 246f 004c                 movea.l    76(a7),a2
[0001e366] 246a 006a                 movea.l    106(a2),a2
[0001e36a] 4e92                      jsr        (a2)
edic_set_5:
[0001e36c] 382f 005e                 move.w     94(a7),d4
[0001e370] 362f 005c                 move.w     92(a7),d3
[0001e374] 2f39 000d 99d6            move.l     _globl,-(a7)
[0001e37a] 486f 004c                 pea.l      76(a7)
[0001e37e] 486f 0052                 pea.l      82(a7)
[0001e382] 43ef 0068                 lea.l      104(a7),a1
[0001e386] 41ef 006a                 lea.l      106(a7),a0
[0001e38a] 4eb9 0006 c978            jsr        mt_graf_mkstate
[0001e390] 4fef 000c                 lea.l      12(a7),a7
[0001e394] 7001                      moveq.l    #1,d0
[0001e396] c06f 004a                 and.w      74(a7),d0
[0001e39a] 6600 fcda                 bne        edic_set_22
edic_set_8:
[0001e39e] 2054                      movea.l    (a4),a0
[0001e3a0] 2268 023c                 movea.l    572(a0),a1
[0001e3a4] 3029 000e                 move.w     14(a1),d0
[0001e3a8] c07c 0800                 and.w      #$0800,d0
[0001e3ac] 670a                      beq.s      edic_set_2
[0001e3ae] 206f 0018                 movea.l    24(a7),a0
[0001e3b2] 4eb9 0004 d996            jsr        Abp_delete
edic_set_2:
[0001e3b8] 4fef 0064                 lea.l      100(a7),a7
[0001e3bc] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0001e3c0] 4e75                      rts

edic_abort:
[0001e3c2] 2079 0010 1f12            movea.l    ACSblk,a0
[0001e3c8] 2068 0258                 movea.l    600(a0),a0
[0001e3cc] 4eb9 0001 f716            jsr        term
[0001e3d2] 4e75                      rts

edic_ok:
[0001e3d4] 2079 0010 1f12            movea.l    ACSblk,a0
[0001e3da] 2068 0258                 movea.l    600(a0),a0
[0001e3de] 4eb9 0001 f1f8            jsr        acc_icon
[0001e3e4] 2079 0010 1f12            movea.l    ACSblk,a0
[0001e3ea] 2068 0258                 movea.l    600(a0),a0
[0001e3ee] 4eb9 0001 f716            jsr        term
[0001e3f4] 4e75                      rts

edic_newplane:
[0001e3f6] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[0001e3fa] 514f                      subq.w     #8,a7
[0001e3fc] 2079 0010 1f12            movea.l    ACSblk,a0
[0001e402] 2f68 0258 0004            move.l     600(a0),4(a7)
[0001e408] 226f 0004                 movea.l    4(a7),a1
[0001e40c] 2651                      movea.l    (a1),a3
[0001e40e] 206b 0008                 movea.l    8(a3),a0
[0001e412] 41e8 0180                 lea.l      384(a0),a0
[0001e416] 2268 000c                 movea.l    12(a0),a1
[0001e41a] 7601                      moveq.l    #1,d3
[0001e41c] c668 000a                 and.w      10(a0),d3
[0001e420] 700f                      moveq.l    #15,d0
[0001e422] d069 0016                 add.w      22(a1),d0
[0001e426] c07c fff0                 and.w      #$FFF0,d0
[0001e42a] 3800                      move.w     d0,d4
[0001e42c] e644                      asr.w      #3,d4
[0001e42e] c9e9 0018                 muls.w     24(a1),d4
[0001e432] 48c4                      ext.l      d4
[0001e434] 2004                      move.l     d4,d0
[0001e436] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001e43c] 2e88                      move.l     a0,(a7)
[0001e43e] 2008                      move.l     a0,d0
[0001e440] 6700 0166                 beq        edic_newplane_1
[0001e444] 2204                      move.l     d4,d1
[0001e446] 303c 00ff                 move.w     #$00FF,d0
[0001e44a] 4eb9 0007 712e            jsr        memset
[0001e450] 2079 0010 1f12            movea.l    ACSblk,a0
[0001e456] 3028 001c                 move.w     28(a0),d0
[0001e45a] 5940                      subq.w     #4,d0
[0001e45c] 670a                      beq.s      edic_newplane_2
[0001e45e] 5940                      subq.w     #4,d0
[0001e460] 6700 008a                 beq        edic_newplane_3
[0001e464] 6000 0106                 bra        edic_newplane_4
edic_newplane_2:
[0001e468] 2a04                      move.l     d4,d5
[0001e46a] e58d                      lsl.l      #2,d5
[0001e46c] 5c85                      addq.l     #6,d5
[0001e46e] 2005                      move.l     d5,d0
[0001e470] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001e476] 2448                      movea.l    a0,a2
[0001e478] 200a                      move.l     a2,d0
[0001e47a] 6700 0112                 beq        edic_newplane_5
[0001e47e] 2205                      move.l     d5,d1
[0001e480] 4240                      clr.w      d0
[0001e482] 4eb9 0007 712e            jsr        memset
[0001e488] 377c 0004 0018            move.w     #$0004,24(a3)
[0001e48e] 4a43                      tst.w      d3
[0001e490] 6730                      beq.s      edic_newplane_6
[0001e492] 202b 001a                 move.l     26(a3),d0
[0001e496] 672a                      beq.s      edic_newplane_6
[0001e498] 222b 0022                 move.l     34(a3),d1
[0001e49c] 670a                      beq.s      edic_newplane_7
[0001e49e] 2041                      movea.l    d1,a0
[0001e4a0] 5d48                      subq.w     #6,a0
[0001e4a2] 4eb9 0004 7e26            jsr        Ax_free
edic_newplane_7:
[0001e4a8] 206b 0026                 movea.l    38(a3),a0
[0001e4ac] 4eb9 0004 7e26            jsr        Ax_free
[0001e4b2] 41ea 0006                 lea.l      6(a2),a0
[0001e4b6] 2748 0022                 move.l     a0,34(a3)
[0001e4ba] 2757 0026                 move.l     (a7),38(a3)
[0001e4be] 6000 00ce                 bra        edic_newplane_5
edic_newplane_6:
[0001e4c2] 202b 001a                 move.l     26(a3),d0
[0001e4c6] 670a                      beq.s      edic_newplane_8
[0001e4c8] 2040                      movea.l    d0,a0
[0001e4ca] 5d48                      subq.w     #6,a0
[0001e4cc] 4eb9 0004 7e26            jsr        Ax_free
edic_newplane_8:
[0001e4d2] 206b 001e                 movea.l    30(a3),a0
[0001e4d6] 4eb9 0004 7e26            jsr        Ax_free
[0001e4dc] 41ea 0006                 lea.l      6(a2),a0
[0001e4e0] 2748 001a                 move.l     a0,26(a3)
[0001e4e4] 2757 001e                 move.l     (a7),30(a3)
[0001e4e8] 6000 00a4                 bra        edic_newplane_5
edic_newplane_3:
[0001e4ec] 2a04                      move.l     d4,d5
[0001e4ee] e78d                      lsl.l      #3,d5
[0001e4f0] 5c85                      addq.l     #6,d5
[0001e4f2] 2005                      move.l     d5,d0
[0001e4f4] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001e4fa] 2448                      movea.l    a0,a2
[0001e4fc] 200a                      move.l     a2,d0
[0001e4fe] 6700 008e                 beq        edic_newplane_5
[0001e502] 2205                      move.l     d5,d1
[0001e504] 4240                      clr.w      d0
[0001e506] 4eb9 0007 712e            jsr        memset
[0001e50c] 377c 0008 002e            move.w     #$0008,46(a3)
[0001e512] 4a43                      tst.w      d3
[0001e514] 672e                      beq.s      edic_newplane_9
[0001e516] 202b 0030                 move.l     48(a3),d0
[0001e51a] 6728                      beq.s      edic_newplane_9
[0001e51c] 222b 0038                 move.l     56(a3),d1
[0001e520] 670a                      beq.s      edic_newplane_10
[0001e522] 2041                      movea.l    d1,a0
[0001e524] 5d48                      subq.w     #6,a0
[0001e526] 4eb9 0004 7e26            jsr        Ax_free
edic_newplane_10:
[0001e52c] 206b 003c                 movea.l    60(a3),a0
[0001e530] 4eb9 0004 7e26            jsr        Ax_free
[0001e536] 41ea 0006                 lea.l      6(a2),a0
[0001e53a] 2748 0038                 move.l     a0,56(a3)
[0001e53e] 2757 003c                 move.l     (a7),60(a3)
[0001e542] 604a                      bra.s      edic_newplane_5
edic_newplane_9:
[0001e544] 202b 0030                 move.l     48(a3),d0
[0001e548] 670a                      beq.s      edic_newplane_11
[0001e54a] 2040                      movea.l    d0,a0
[0001e54c] 5d48                      subq.w     #6,a0
[0001e54e] 4eb9 0004 7e26            jsr        Ax_free
edic_newplane_11:
[0001e554] 206b 0034                 movea.l    52(a3),a0
[0001e558] 4eb9 0004 7e26            jsr        Ax_free
[0001e55e] 41ea 0006                 lea.l      6(a2),a0
[0001e562] 2748 0030                 move.l     a0,48(a3)
[0001e566] 2757 0034                 move.l     (a7),52(a3)
[0001e56a] 6022                      bra.s      edic_newplane_5
edic_newplane_4:
[0001e56c] 2a04                      move.l     d4,d5
[0001e56e] 2005                      move.l     d5,d0
[0001e570] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001e576] 2448                      movea.l    a0,a2
[0001e578] 200a                      move.l     a2,d0
[0001e57a] 6712                      beq.s      edic_newplane_5
[0001e57c] 2205                      move.l     d5,d1
[0001e57e] 4240                      clr.w      d0
[0001e580] 4eb9 0007 712e            jsr        memset
[0001e586] 274a 0010                 move.l     a2,16(a3)
[0001e58a] 2757 0014                 move.l     (a7),20(a3)
edic_newplane_5:
[0001e58e] 206f 0004                 movea.l    4(a7),a0
[0001e592] 6100 e4d0                 bsr        edic_link
[0001e596] 72ff                      moveq.l    #-1,d1
[0001e598] 700e                      moveq.l    #14,d0
[0001e59a] 206f 0004                 movea.l    4(a7),a0
[0001e59e] 226f 0004                 movea.l    4(a7),a1
[0001e5a2] 2269 0066                 movea.l    102(a1),a1
[0001e5a6] 4e91                      jsr        (a1)
edic_newplane_1:
[0001e5a8] 504f                      addq.w     #8,a7
[0001e5aa] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[0001e5ae] 4e75                      rts

edic_acc:
[0001e5b0] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[0001e5b4] 4fef ffd0                 lea.l      -48(a7),a7
[0001e5b8] 2079 0010 1f12            movea.l    ACSblk,a0
[0001e5be] 2268 0240                 movea.l    576(a0),a1
[0001e5c2] 2f49 0028                 move.l     a1,40(a7)
[0001e5c6] 2068 0258                 movea.l    600(a0),a0
[0001e5ca] 2f48 002c                 move.l     a0,44(a7)
[0001e5ce] b1c9                      cmpa.l     a1,a0
[0001e5d0] 6700 03da                 beq        edic_acc_1
[0001e5d4] 206f 002c                 movea.l    44(a7),a0
[0001e5d8] 2f68 0014 0008            move.l     20(a0),8(a7)
[0001e5de] 4eb9 0004 4840            jsr        Adr_start
[0001e5e4] 4eb9 0004 484c            jsr        Adr_next
[0001e5ea] 3600                      move.w     d0,d3
[0001e5ec] 6b00 03be                 bmi        edic_acc_1
[0001e5f0] 48c0                      ext.l      d0
[0001e5f2] 2200                      move.l     d0,d1
[0001e5f4] d281                      add.l      d1,d1
[0001e5f6] d280                      add.l      d0,d1
[0001e5f8] e789                      lsl.l      #3,d1
[0001e5fa] 206f 0028                 movea.l    40(a7),a0
[0001e5fe] 2268 0014                 movea.l    20(a0),a1
[0001e602] 41f1 1818                 lea.l      24(a1,d1.l),a0
[0001e606] 2f48 0024                 move.l     a0,36(a7)
[0001e60a] 0c68 000a 0016            cmpi.w     #$000A,22(a0)
[0001e610] 6600 039a                 bne        edic_acc_1
[0001e614] 226f 002c                 movea.l    44(a7),a1
[0001e618] 2451                      movea.l    (a1),a2
[0001e61a] 206a 0008                 movea.l    8(a2),a0
[0001e61e] 41e8 0180                 lea.l      384(a0),a0
[0001e622] 2f48 0004                 move.l     a0,4(a7)
[0001e626] 2f68 000c 000c            move.l     12(a0),12(a7)
[0001e62c] 7801                      moveq.l    #1,d4
[0001e62e] c868 000a                 and.w      10(a0),d4
[0001e632] 226f 0024                 movea.l    36(a7),a1
[0001e636] 2a69 000c                 movea.l    12(a1),a5
[0001e63a] 0c6d 0001 000a            cmpi.w     #$0001,10(a5)
[0001e640] 6712                      beq.s      edic_acc_2
[0001e642] 41f9 000a 1382            lea.l      A_NOSTD,a0
[0001e648] 7001                      moveq.l    #1,d0
[0001e64a] 4eb9 0005 17fe            jsr        Awi_alert
[0001e650] 6000 035a                 bra        edic_acc_1
edic_acc_2:
[0001e654] 3a2d 0004                 move.w     4(a5),d5
[0001e658] 700f                      moveq.l    #15,d0
[0001e65a] d06d 0004                 add.w      4(a5),d0
[0001e65e] c07c fff0                 and.w      #$FFF0,d0
[0001e662] 3b40 0004                 move.w     d0,4(a5)
[0001e666] 7e0f                      moveq.l    #15,d7
[0001e668] 206f 000c                 movea.l    12(a7),a0
[0001e66c] de68 0016                 add.w      22(a0),d7
[0001e670] ce7c fff0                 and.w      #$FFF0,d7
[0001e674] 3c07                      move.w     d7,d6
[0001e676] e646                      asr.w      #3,d6
[0001e678] cde8 0018                 muls.w     24(a0),d6
[0001e67c] 48c6                      ext.l      d6
[0001e67e] 2006                      move.l     d6,d0
[0001e680] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001e686] 2f48 0010                 move.l     a0,16(a7)
[0001e68a] 6700 0320                 beq        edic_acc_1
[0001e68e] 2206                      move.l     d6,d1
[0001e690] 303c 00ff                 move.w     #$00FF,d0
[0001e694] 4eb9 0007 712e            jsr        memset
[0001e69a] 322d 0006                 move.w     6(a5),d1
[0001e69e] 302d 0004                 move.w     4(a5),d0
[0001e6a2] 4eb9 0004 d928            jsr        Abp_create
[0001e6a8] 2e88                      move.l     a0,(a7)
[0001e6aa] 660e                      bne.s      edic_acc_3
[0001e6ac] 206f 0010                 movea.l    16(a7),a0
[0001e6b0] 4eb9 0004 7e26            jsr        Ax_free
[0001e6b6] 6000 02f4                 bra        edic_acc_1
edic_acc_3:
[0001e6ba] 49ef 0014                 lea.l      20(a7),a4
[0001e6be] 4240                      clr.w      d0
[0001e6c0] 3940 000a                 move.w     d0,10(a4)
[0001e6c4] 3940 0008                 move.w     d0,8(a4)
[0001e6c8] 3940 0002                 move.w     d0,2(a4)
[0001e6cc] 3880                      move.w     d0,(a4)
[0001e6ce] 72ff                      moveq.l    #-1,d1
[0001e6d0] d26d 0004                 add.w      4(a5),d1
[0001e6d4] 3941 000c                 move.w     d1,12(a4)
[0001e6d8] 3941 0004                 move.w     d1,4(a4)
[0001e6dc] 70ff                      moveq.l    #-1,d0
[0001e6de] d06d 0006                 add.w      6(a5),d0
[0001e6e2] 3940 000e                 move.w     d0,14(a4)
[0001e6e6] 3940 0006                 move.w     d0,6(a4)
[0001e6ea] 2257                      movea.l    (a7),a1
[0001e6ec] 204d                      movea.l    a5,a0
[0001e6ee] 2679 0010 1f12            movea.l    ACSblk,a3
[0001e6f4] 302b 0010                 move.w     16(a3),d0
[0001e6f8] 4eb9 0006 66a8            jsr        vr_trnfm
[0001e6fe] 206f 000c                 movea.l    12(a7),a0
[0001e702] 3228 0018                 move.w     24(a0),d1
[0001e706] 3007                      move.w     d7,d0
[0001e708] 4eb9 0004 d928            jsr        Abp_create
[0001e70e] 2648                      movea.l    a0,a3
[0001e710] 200b                      move.l     a3,d0
[0001e712] 6616                      bne.s      edic_acc_4
[0001e714] 206f 0010                 movea.l    16(a7),a0
[0001e718] 4eb9 0004 7e26            jsr        Ax_free
[0001e71e] 2057                      movea.l    (a7),a0
[0001e720] 4eb9 0004 d996            jsr        Abp_delete
[0001e726] 6000 0284                 bra        edic_acc_1
edic_acc_4:
[0001e72a] 70ff                      moveq.l    #-1,d0
[0001e72c] d047                      add.w      d7,d0
[0001e72e] 3940 000c                 move.w     d0,12(a4)
[0001e732] 3940 0004                 move.w     d0,4(a4)
[0001e736] 72ff                      moveq.l    #-1,d1
[0001e738] 206f 000c                 movea.l    12(a7),a0
[0001e73c] d268 0018                 add.w      24(a0),d1
[0001e740] 3941 000e                 move.w     d1,14(a4)
[0001e744] 3941 0006                 move.w     d1,6(a4)
[0001e748] 2f0b                      move.l     a3,-(a7)
[0001e74a] 224b                      movea.l    a3,a1
[0001e74c] 204c                      movea.l    a4,a0
[0001e74e] 2c79 0010 1f12            movea.l    ACSblk,a6
[0001e754] 302e 0010                 move.w     16(a6),d0
[0001e758] 4241                      clr.w      d1
[0001e75a] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001e760] 584f                      addq.w     #4,a7
[0001e762] be45                      cmp.w      d5,d7
[0001e764] 6f0c                      ble.s      edic_acc_5
[0001e766] 70ff                      moveq.l    #-1,d0
[0001e768] d045                      add.w      d5,d0
[0001e76a] 3940 000c                 move.w     d0,12(a4)
[0001e76e] 3940 0004                 move.w     d0,4(a4)
edic_acc_5:
[0001e772] 302d 0006                 move.w     6(a5),d0
[0001e776] 206f 000c                 movea.l    12(a7),a0
[0001e77a] b068 0018                 cmp.w      24(a0),d0
[0001e77e] 6c0c                      bge.s      edic_acc_6
[0001e780] 72ff                      moveq.l    #-1,d1
[0001e782] d240                      add.w      d0,d1
[0001e784] 3941 000e                 move.w     d1,14(a4)
[0001e788] 3941 0006                 move.w     d1,6(a4)
edic_acc_6:
[0001e78c] 2f0b                      move.l     a3,-(a7)
[0001e78e] 226f 0004                 movea.l    4(a7),a1
[0001e792] 204c                      movea.l    a4,a0
[0001e794] 7203                      moveq.l    #3,d1
[0001e796] 2a79 0010 1f12            movea.l    ACSblk,a5
[0001e79c] 302d 0010                 move.w     16(a5),d0
[0001e7a0] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001e7a6] 584f                      addq.w     #4,a7
[0001e7a8] 2057                      movea.l    (a7),a0
[0001e7aa] 4eb9 0004 d996            jsr        Abp_delete
[0001e7b0] 2079 0010 1f12            movea.l    ACSblk,a0
[0001e7b6] 2268 023c                 movea.l    572(a0),a1
[0001e7ba] 3029 000e                 move.w     14(a1),d0
[0001e7be] c07c 0800                 and.w      #$0800,d0
[0001e7c2] 6760                      beq.s      edic_acc_7
[0001e7c4] 72ff                      moveq.l    #-1,d1
[0001e7c6] d247                      add.w      d7,d1
[0001e7c8] 3941 000c                 move.w     d1,12(a4)
[0001e7cc] 3941 0004                 move.w     d1,4(a4)
[0001e7d0] 74ff                      moveq.l    #-1,d2
[0001e7d2] 2a6f 000c                 movea.l    12(a7),a5
[0001e7d6] d46d 0018                 add.w      24(a5),d2
[0001e7da] 3942 000e                 move.w     d2,14(a4)
[0001e7de] 3942 0006                 move.w     d2,6(a4)
[0001e7e2] 322d 0018                 move.w     24(a5),d1
[0001e7e6] 3007                      move.w     d7,d0
[0001e7e8] 4eb9 0004 d928            jsr        Abp_create
[0001e7ee] 2e88                      move.l     a0,(a7)
[0001e7f0] 660c                      bne.s      edic_acc_8
[0001e7f2] 204b                      movea.l    a3,a0
[0001e7f4] 4eb9 0004 d996            jsr        Abp_delete
[0001e7fa] 6000 01b0                 bra        edic_acc_1
edic_acc_8:
[0001e7fe] 2057                      movea.l    (a7),a0
[0001e800] 317c 0001 000a            move.w     #$0001,10(a0)
[0001e806] 2248                      movea.l    a0,a1
[0001e808] 2879 0010 1f12            movea.l    ACSblk,a4
[0001e80e] 302c 0010                 move.w     16(a4),d0
[0001e812] 204b                      movea.l    a3,a0
[0001e814] 4eb9 0006 66a8            jsr        vr_trnfm
[0001e81a] 204b                      movea.l    a3,a0
[0001e81c] 4eb9 0004 d996            jsr        Abp_delete
[0001e822] 2657                      movea.l    (a7),a3
edic_acc_7:
[0001e824] 2079 0010 1f12            movea.l    ACSblk,a0
[0001e82a] 3028 001c                 move.w     28(a0),d0
[0001e82e] 5940                      subq.w     #4,d0
[0001e830] 670a                      beq.s      edic_acc_9
[0001e832] 5940                      subq.w     #4,d0
[0001e834] 6700 0092                 beq        edic_acc_10
[0001e838] 6000 0116                 bra        edic_acc_11
edic_acc_9:
[0001e83c] 2e06                      move.l     d6,d7
[0001e83e] e58f                      lsl.l      #2,d7
[0001e840] 5c87                      addq.l     #6,d7
[0001e842] 2007                      move.l     d7,d0
[0001e844] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001e84a] 2848                      movea.l    a0,a4
[0001e84c] 200c                      move.l     a4,d0
[0001e84e] 6700 0124                 beq        edic_acc_12
[0001e852] 2007                      move.l     d7,d0
[0001e854] 2253                      movea.l    (a3),a1
[0001e856] 41ec 0006                 lea.l      6(a4),a0
[0001e85a] 4eb9 0007 6f44            jsr        memcpy
[0001e860] 357c 0004 0018            move.w     #$0004,24(a2)
[0001e866] 4a44                      tst.w      d4
[0001e868] 6732                      beq.s      edic_acc_13
[0001e86a] 202a 001a                 move.l     26(a2),d0
[0001e86e] 672c                      beq.s      edic_acc_13
[0001e870] 222a 0022                 move.l     34(a2),d1
[0001e874] 670a                      beq.s      edic_acc_14
[0001e876] 2041                      movea.l    d1,a0
[0001e878] 5d48                      subq.w     #6,a0
[0001e87a] 4eb9 0004 7e26            jsr        Ax_free
edic_acc_14:
[0001e880] 206a 0026                 movea.l    38(a2),a0
[0001e884] 4eb9 0004 7e26            jsr        Ax_free
[0001e88a] 41ec 0006                 lea.l      6(a4),a0
[0001e88e] 2548 0022                 move.l     a0,34(a2)
[0001e892] 256f 0010 0026            move.l     16(a7),38(a2)
[0001e898] 6000 00da                 bra        edic_acc_12
edic_acc_13:
[0001e89c] 202a 001a                 move.l     26(a2),d0
[0001e8a0] 670a                      beq.s      edic_acc_15
[0001e8a2] 2040                      movea.l    d0,a0
[0001e8a4] 5d48                      subq.w     #6,a0
[0001e8a6] 4eb9 0004 7e26            jsr        Ax_free
edic_acc_15:
[0001e8ac] 206a 001e                 movea.l    30(a2),a0
[0001e8b0] 4eb9 0004 7e26            jsr        Ax_free
[0001e8b6] 41ec 0006                 lea.l      6(a4),a0
[0001e8ba] 2548 001a                 move.l     a0,26(a2)
[0001e8be] 256f 0010 001e            move.l     16(a7),30(a2)
[0001e8c4] 6000 00ae                 bra        edic_acc_12
edic_acc_10:
[0001e8c8] 2e06                      move.l     d6,d7
[0001e8ca] e78f                      lsl.l      #3,d7
[0001e8cc] 5c87                      addq.l     #6,d7
[0001e8ce] 2007                      move.l     d7,d0
[0001e8d0] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001e8d6] 2848                      movea.l    a0,a4
[0001e8d8] 200c                      move.l     a4,d0
[0001e8da] 6700 0098                 beq        edic_acc_12
[0001e8de] 2253                      movea.l    (a3),a1
[0001e8e0] 41ec 0006                 lea.l      6(a4),a0
[0001e8e4] 2007                      move.l     d7,d0
[0001e8e6] 4eb9 0007 6f44            jsr        memcpy
[0001e8ec] 357c 0008 002e            move.w     #$0008,46(a2)
[0001e8f2] 4a44                      tst.w      d4
[0001e8f4] 6730                      beq.s      edic_acc_16
[0001e8f6] 202a 0030                 move.l     48(a2),d0
[0001e8fa] 672a                      beq.s      edic_acc_16
[0001e8fc] 222a 0038                 move.l     56(a2),d1
[0001e900] 670a                      beq.s      edic_acc_17
[0001e902] 2041                      movea.l    d1,a0
[0001e904] 5d48                      subq.w     #6,a0
[0001e906] 4eb9 0004 7e26            jsr        Ax_free
edic_acc_17:
[0001e90c] 206a 003c                 movea.l    60(a2),a0
[0001e910] 4eb9 0004 7e26            jsr        Ax_free
[0001e916] 41ec 0006                 lea.l      6(a4),a0
[0001e91a] 2548 0038                 move.l     a0,56(a2)
[0001e91e] 256f 0010 003c            move.l     16(a7),60(a2)
[0001e924] 604e                      bra.s      edic_acc_12
edic_acc_16:
[0001e926] 202a 0030                 move.l     48(a2),d0
[0001e92a] 670a                      beq.s      edic_acc_18
[0001e92c] 2040                      movea.l    d0,a0
[0001e92e] 5d48                      subq.w     #6,a0
[0001e930] 4eb9 0004 7e26            jsr        Ax_free
edic_acc_18:
[0001e936] 206a 0034                 movea.l    52(a2),a0
[0001e93a] 4eb9 0004 7e26            jsr        Ax_free
[0001e940] 41ec 0006                 lea.l      6(a4),a0
[0001e944] 2548 0030                 move.l     a0,48(a2)
[0001e948] 256f 0010 0034            move.l     16(a7),52(a2)
[0001e94e] 6024                      bra.s      edic_acc_12
edic_acc_11:
[0001e950] 2e06                      move.l     d6,d7
[0001e952] 2007                      move.l     d7,d0
[0001e954] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001e95a] 2848                      movea.l    a0,a4
[0001e95c] 200c                      move.l     a4,d0
[0001e95e] 6714                      beq.s      edic_acc_12
[0001e960] 2253                      movea.l    (a3),a1
[0001e962] 2007                      move.l     d7,d0
[0001e964] 4eb9 0007 6f44            jsr        memcpy
[0001e96a] 254c 0010                 move.l     a4,16(a2)
[0001e96e] 256f 0010 0014            move.l     16(a7),20(a2)
edic_acc_12:
[0001e974] 206f 002c                 movea.l    44(a7),a0
[0001e978] 6100 e0ea                 bsr        edic_link
[0001e97c] 204b                      movea.l    a3,a0
[0001e97e] 4eb9 0004 d996            jsr        Abp_delete
[0001e984] 206f 0008                 movea.l    8(a7),a0
[0001e988] 0068 0080 01b8            ori.w      #$0080,440(a0)
[0001e98e] 72ff                      moveq.l    #-1,d1
[0001e990] 700e                      moveq.l    #14,d0
[0001e992] 226f 002c                 movea.l    44(a7),a1
[0001e996] 2269 0066                 movea.l    102(a1),a1
[0001e99a] 206f 002c                 movea.l    44(a7),a0
[0001e99e] 4e91                      jsr        (a1)
[0001e9a0] 3003                      move.w     d3,d0
[0001e9a2] 206f 0028                 movea.l    40(a7),a0
[0001e9a6] 4eb9 0004 492a            jsr        Adr_del
edic_acc_1:
[0001e9ac] 4fef 0030                 lea.l      48(a7),a7
[0001e9b0] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[0001e9b4] 4e75                      rts

edic_delplane:
[0001e9b6] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0001e9ba] 2079 0010 1f12            movea.l    ACSblk,a0
[0001e9c0] 2468 0258                 movea.l    600(a0),a2
[0001e9c4] 2652                      movea.l    (a2),a3
[0001e9c6] 206b 0008                 movea.l    8(a3),a0
[0001e9ca] 41e8 0180                 lea.l      384(a0),a0
[0001e9ce] 7601                      moveq.l    #1,d3
[0001e9d0] c668 000a                 and.w      10(a0),d3
[0001e9d4] 302b 0018                 move.w     24(a3),d0
[0001e9d8] 2279 0010 1f12            movea.l    ACSblk,a1
[0001e9de] b069 001c                 cmp.w      28(a1),d0
[0001e9e2] 664c                      bne.s      edic_delplane_1
[0001e9e4] 4a43                      tst.w      d3
[0001e9e6] 6626                      bne.s      edic_delplane_2
[0001e9e8] 222b 001a                 move.l     26(a3),d1
[0001e9ec] 670a                      beq.s      edic_delplane_3
[0001e9ee] 2041                      movea.l    d1,a0
[0001e9f0] 5d48                      subq.w     #6,a0
[0001e9f2] 4eb9 0004 7e26            jsr        Ax_free
edic_delplane_3:
[0001e9f8] 206b 001e                 movea.l    30(a3),a0
[0001e9fc] 4eb9 0004 7e26            jsr        Ax_free
[0001ea02] 42ab 001a                 clr.l      26(a3)
[0001ea06] 42ab 001e                 clr.l      30(a3)
[0001ea0a] 426b 0018                 clr.w      24(a3)
edic_delplane_2:
[0001ea0e] 202b 0022                 move.l     34(a3),d0
[0001ea12] 670a                      beq.s      edic_delplane_4
[0001ea14] 2040                      movea.l    d0,a0
[0001ea16] 5d48                      subq.w     #6,a0
[0001ea18] 4eb9 0004 7e26            jsr        Ax_free
edic_delplane_4:
[0001ea1e] 206b 0026                 movea.l    38(a3),a0
[0001ea22] 4eb9 0004 7e26            jsr        Ax_free
[0001ea28] 42ab 0022                 clr.l      34(a3)
[0001ea2c] 42ab 0026                 clr.l      38(a3)
edic_delplane_1:
[0001ea30] 302b 002e                 move.w     46(a3),d0
[0001ea34] 2079 0010 1f12            movea.l    ACSblk,a0
[0001ea3a] b068 001c                 cmp.w      28(a0),d0
[0001ea3e] 664c                      bne.s      edic_delplane_5
[0001ea40] 4a43                      tst.w      d3
[0001ea42] 6626                      bne.s      edic_delplane_6
[0001ea44] 222b 0030                 move.l     48(a3),d1
[0001ea48] 670a                      beq.s      edic_delplane_7
[0001ea4a] 2041                      movea.l    d1,a0
[0001ea4c] 5d48                      subq.w     #6,a0
[0001ea4e] 4eb9 0004 7e26            jsr        Ax_free
edic_delplane_7:
[0001ea54] 206b 0034                 movea.l    52(a3),a0
[0001ea58] 4eb9 0004 7e26            jsr        Ax_free
[0001ea5e] 42ab 0030                 clr.l      48(a3)
[0001ea62] 42ab 0034                 clr.l      52(a3)
[0001ea66] 426b 002e                 clr.w      46(a3)
edic_delplane_6:
[0001ea6a] 202b 0038                 move.l     56(a3),d0
[0001ea6e] 670a                      beq.s      edic_delplane_8
[0001ea70] 2040                      movea.l    d0,a0
[0001ea72] 5d48                      subq.w     #6,a0
[0001ea74] 4eb9 0004 7e26            jsr        Ax_free
edic_delplane_8:
[0001ea7a] 206b 003c                 movea.l    60(a3),a0
[0001ea7e] 4eb9 0004 7e26            jsr        Ax_free
[0001ea84] 42ab 0038                 clr.l      56(a3)
[0001ea88] 42ab 003c                 clr.l      60(a3)
edic_delplane_5:
[0001ea8c] 204a                      movea.l    a2,a0
[0001ea8e] 6100 dfd4                 bsr        edic_link
[0001ea92] 72ff                      moveq.l    #-1,d1
[0001ea94] 700e                      moveq.l    #14,d0
[0001ea96] 204a                      movea.l    a2,a0
[0001ea98] 226a 0066                 movea.l    102(a2),a1
[0001ea9c] 4e91                      jsr        (a1)
[0001ea9e] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0001eaa2] 4e75                      rts

zooming:
[0001eaa4] 48e7 1e20                 movem.l    d3-d6/a2,-(a7)
[0001eaa8] 2450                      movea.l    (a0),a2
[0001eaaa] 2251                      movea.l    (a1),a1
[0001eaac] 72ff                      moveq.l    #-1,d1
[0001eaae] d268 000c                 add.w      12(a0),d1
[0001eab2] 6068                      bra.s      zooming_1
zooming_8:
[0001eab4] 341a                      move.w     (a2)+,d2
[0001eab6] 3600                      move.w     d0,d3
[0001eab8] 2049                      movea.l    a1,a0
[0001eaba] 780f                      moveq.l    #15,d4
[0001eabc] 6054                      bra.s      zooming_2
zooming_7:
[0001eabe] 4a43                      tst.w      d3
[0001eac0] 6b20                      bmi.s      zooming_3
[0001eac2] 7c54                      moveq.l    #84,d6
[0001eac4] 1146 0060                 move.b     d6,96(a0)
[0001eac8] 1146 0040                 move.b     d6,64(a0)
[0001eacc] 1146 0020                 move.b     d6,32(a0)
[0001ead0] 1086                      move.b     d6,(a0)
[0001ead2] 7caa                      moveq.l    #-86,d6
[0001ead4] 1146 0050                 move.b     d6,80(a0)
[0001ead8] 1146 0030                 move.b     d6,48(a0)
[0001eadc] 1146 0010                 move.b     d6,16(a0)
[0001eae0] 6024                      bra.s      zooming_4
zooming_3:
[0001eae2] 4a42                      tst.w      d2
[0001eae4] 6b04                      bmi.s      zooming_5
[0001eae6] 4205                      clr.b      d5
[0001eae8] 6002                      bra.s      zooming_6
zooming_5:
[0001eaea] 7afe                      moveq.l    #-2,d5
zooming_6:
[0001eaec] 1145 0060                 move.b     d5,96(a0)
[0001eaf0] 1145 0050                 move.b     d5,80(a0)
[0001eaf4] 1145 0040                 move.b     d5,64(a0)
[0001eaf8] 1145 0030                 move.b     d5,48(a0)
[0001eafc] 1145 0020                 move.b     d5,32(a0)
[0001eb00] 1145 0010                 move.b     d5,16(a0)
[0001eb04] 1085                      move.b     d5,(a0)
zooming_4:
[0001eb06] 4228 0070                 clr.b      112(a0)
[0001eb0a] 5248                      addq.w     #1,a0
[0001eb0c] d442                      add.w      d2,d2
[0001eb0e] d643                      add.w      d3,d3
[0001eb10] 5344                      subq.w     #1,d4
zooming_2:
[0001eb12] 4a44                      tst.w      d4
[0001eb14] 6aa8                      bpl.s      zooming_7
[0001eb16] 43e9 0080                 lea.l      128(a1),a1
[0001eb1a] 5341                      subq.w     #1,d1
zooming_1:
[0001eb1c] 4a41                      tst.w      d1
[0001eb1e] 6a94                      bpl.s      zooming_8
[0001eb20] 4cdf 0478                 movem.l    (a7)+,d3-d6/a2
[0001eb24] 4e75                      rts

edic_bitmap:
[0001eb26] 48e7 3f3e                 movem.l    d2-d7/a2-a6,-(a7)
[0001eb2a] 4fef ff56                 lea.l      -170(a7),a7
[0001eb2e] 41f9 000a 49f8            lea.l      $000A49F8,a0
[0001eb34] 43d7                      lea.l      (a7),a1
[0001eb36] 12d8                      move.b     (a0)+,(a1)+
[0001eb38] 12d8                      move.b     (a0)+,(a1)+
[0001eb3a] 12d8                      move.b     (a0)+,(a1)+
[0001eb3c] 12d8                      move.b     (a0)+,(a1)+
[0001eb3e] 206f 00da                 movea.l    218(a7),a0
[0001eb42] 3f68 0016 0014            move.w     22(a0),20(a7)
[0001eb48] 3f68 0018 0016            move.w     24(a0),22(a7)
[0001eb4e] 4bf9 0010 1f12            lea.l      ACSblk,a5
[0001eb54] 302f 0014                 move.w     20(a7),d0
[0001eb58] 6606                      bne.s      edic_bitmap_1
[0001eb5a] 322f 0016                 move.w     22(a7),d1
[0001eb5e] 6736                      beq.s      edic_bitmap_2
edic_bitmap_1:
[0001eb60] 206f 00da                 movea.l    218(a7),a0
[0001eb64] 3f68 0012 0010            move.w     18(a0),16(a7)
[0001eb6a] 3f68 0014 0012            move.w     20(a0),18(a7)
[0001eb70] 70ff                      moveq.l    #-1,d0
[0001eb72] d06f 0010                 add.w      16(a7),d0
[0001eb76] d16f 0014                 add.w      d0,20(a7)
[0001eb7a] 70ff                      moveq.l    #-1,d0
[0001eb7c] d06f 0012                 add.w      18(a7),d0
[0001eb80] d16f 0016                 add.w      d0,22(a7)
[0001eb84] 41ef 0010                 lea.l      16(a7),a0
[0001eb88] 7201                      moveq.l    #1,d1
[0001eb8a] 2255                      movea.l    (a5),a1
[0001eb8c] 3029 0010                 move.w     16(a1),d0
[0001eb90] 4eb9 0006 3f60            jsr        vs_clip
edic_bitmap_2:
[0001eb96] 206f 00da                 movea.l    218(a7),a0
[0001eb9a] 2068 001a                 movea.l    26(a0),a0
[0001eb9e] 2050                      movea.l    (a0),a0
[0001eba0] 2268 0008                 movea.l    8(a0),a1
[0001eba4] 43e9 0180                 lea.l      384(a1),a1
[0001eba8] 2f49 0038                 move.l     a1,56(a7)
[0001ebac] 2f69 000c 00a6            move.l     12(a1),166(a7)
[0001ebb2] 226f 00a6                 movea.l    166(a7),a1
[0001ebb6] 3629 0016                 move.w     22(a1),d3
[0001ebba] e843                      asr.w      #4,d3
[0001ebbc] 45ef 0056                 lea.l      86(a7),a2
[0001ebc0] 24bc 000f c440            move.l     #zoomplane,(a2)
[0001ebc6] 426a 000a                 clr.w      10(a2)
[0001ebca] 2f7c 000f dc40 0042       move.l     #zoom2plane,66(a7)
[0001ebd2] 3f7c 0001 004c            move.w     #$0001,76(a7)
[0001ebd8] 303c 0080                 move.w     #$0080,d0
[0001ebdc] 3f40 0046                 move.w     d0,70(a7)
[0001ebe0] 3540 0004                 move.w     d0,4(a2)
[0001ebe4] 7208                      moveq.l    #8,d1
[0001ebe6] 3f41 0048                 move.w     d1,72(a7)
[0001ebea] 3541 0006                 move.w     d1,6(a2)
[0001ebee] 3f41 004a                 move.w     d1,74(a7)
[0001ebf2] 3541 0008                 move.w     d1,8(a2)
[0001ebf6] 4240                      clr.w      d0
[0001ebf8] 3540 0012                 move.w     d0,18(a2)
[0001ebfc] 3540 0010                 move.w     d0,16(a2)
[0001ec00] 3540 000e                 move.w     d0,14(a2)
[0001ec04] 3f40 0054                 move.w     d0,84(a7)
[0001ec08] 3f40 0052                 move.w     d0,82(a7)
[0001ec0c] 3f40 0050                 move.w     d0,80(a7)
[0001ec10] 2f7c 000f c410 007e       move.l     #toplane,126(a7)
[0001ec18] 426f 0088                 clr.w      136(a7)
[0001ec1c] 43f9 000f c3e0            lea.l      to2plane,a1
[0001ec22] 2f49 006a                 move.l     a1,106(a7)
[0001ec26] 2f49 0004                 move.l     a1,4(a7)
[0001ec2a] 3f7c 0001 0074            move.w     #$0001,116(a7)
[0001ec30] 7210                      moveq.l    #16,d1
[0001ec32] 3f41 006e                 move.w     d1,110(a7)
[0001ec36] 3f41 0082                 move.w     d1,130(a7)
[0001ec3a] 7401                      moveq.l    #1,d2
[0001ec3c] 3f42 0070                 move.w     d2,112(a7)
[0001ec40] 3f42 0084                 move.w     d2,132(a7)
[0001ec44] 3f42 0072                 move.w     d2,114(a7)
[0001ec48] 3f42 0086                 move.w     d2,134(a7)
[0001ec4c] 4241                      clr.w      d1
[0001ec4e] 3f41 0090                 move.w     d1,144(a7)
[0001ec52] 3f41 008e                 move.w     d1,142(a7)
[0001ec56] 3f41 008c                 move.w     d1,140(a7)
[0001ec5a] 3f41 007c                 move.w     d1,124(a7)
[0001ec5e] 3f41 007a                 move.w     d1,122(a7)
[0001ec62] 3f41 0078                 move.w     d1,120(a7)
[0001ec66] 2f68 0014 003e            move.l     20(a0),62(a7)
[0001ec6c] 7401                      moveq.l    #1,d2
[0001ec6e] 3f42 009e                 move.w     d2,158(a7)
[0001ec72] 3f42 0076                 move.w     d2,118(a7)
[0001ec76] 3f42 008a                 move.w     d2,138(a7)
[0001ec7a] 3f42 004e                 move.w     d2,78(a7)
[0001ec7e] 3542 000c                 move.w     d2,12(a2)
[0001ec82] 2f68 0010 0092            move.l     16(a0),146(a7)
[0001ec88] 2255                      movea.l    (a5),a1
[0001ec8a] 3029 001c                 move.w     28(a1),d0
[0001ec8e] b068 0018                 cmp.w      24(a0),d0
[0001ec92] 663e                      bne.s      edic_bitmap_3
[0001ec94] 3f40 009e                 move.w     d0,158(a7)
[0001ec98] 3f40 0076                 move.w     d0,118(a7)
[0001ec9c] 3f40 008a                 move.w     d0,138(a7)
[0001eca0] 3f40 004e                 move.w     d0,78(a7)
[0001eca4] 3540 000c                 move.w     d0,12(a2)
[0001eca8] 2228 0022                 move.l     34(a0),d1
[0001ecac] 6718                      beq.s      edic_bitmap_4
[0001ecae] 7401                      moveq.l    #1,d2
[0001ecb0] 226f 0038                 movea.l    56(a7),a1
[0001ecb4] c469 000a                 and.w      10(a1),d2
[0001ecb8] 670c                      beq.s      edic_bitmap_4
[0001ecba] 2f68 0026 003e            move.l     38(a0),62(a7)
[0001ecc0] 2f41 0092                 move.l     d1,146(a7)
[0001ecc4] 600c                      bra.s      edic_bitmap_3
edic_bitmap_4:
[0001ecc6] 2f68 001e 003e            move.l     30(a0),62(a7)
[0001eccc] 2f68 001a 0092            move.l     26(a0),146(a7)
edic_bitmap_3:
[0001ecd2] 2255                      movea.l    (a5),a1
[0001ecd4] 3029 001c                 move.w     28(a1),d0
[0001ecd8] b068 002e                 cmp.w      46(a0),d0
[0001ecdc] 663e                      bne.s      edic_bitmap_5
[0001ecde] 3f40 009e                 move.w     d0,158(a7)
[0001ece2] 3f40 0076                 move.w     d0,118(a7)
[0001ece6] 3f40 008a                 move.w     d0,138(a7)
[0001ecea] 3f40 004e                 move.w     d0,78(a7)
[0001ecee] 3540 000c                 move.w     d0,12(a2)
[0001ecf2] 2228 0038                 move.l     56(a0),d1
[0001ecf6] 6718                      beq.s      edic_bitmap_6
[0001ecf8] 7401                      moveq.l    #1,d2
[0001ecfa] 226f 0038                 movea.l    56(a7),a1
[0001ecfe] c469 000a                 and.w      10(a1),d2
[0001ed02] 670c                      beq.s      edic_bitmap_6
[0001ed04] 2f68 003c 003e            move.l     60(a0),62(a7)
[0001ed0a] 2f41 0092                 move.l     d1,146(a7)
[0001ed0e] 600c                      bra.s      edic_bitmap_5
edic_bitmap_6:
[0001ed10] 2f68 0034 003e            move.l     52(a0),62(a7)
[0001ed16] 2f68 0030 0092            move.l     48(a0),146(a7)
edic_bitmap_5:
[0001ed1c] 2f6f 0092 0008            move.l     146(a7),8(a7)
[0001ed22] 426f 009c                 clr.w      156(a7)
[0001ed26] 206f 00a6                 movea.l    166(a7),a0
[0001ed2a] 3f68 0016 0096            move.w     22(a0),150(a7)
[0001ed30] 3f43 009a                 move.w     d3,154(a7)
[0001ed34] 3f68 0018 0098            move.w     24(a0),152(a7)
[0001ed3a] 4240                      clr.w      d0
[0001ed3c] 3f40 00a4                 move.w     d0,164(a7)
[0001ed40] 3f40 00a2                 move.w     d0,162(a7)
[0001ed44] 3f40 00a0                 move.w     d0,160(a7)
[0001ed48] 322f 009a                 move.w     154(a7),d1
[0001ed4c] c3ef 0098                 muls.w     152(a7),d1
[0001ed50] 48c1                      ext.l      d1
[0001ed52] 2f41 000c                 move.l     d1,12(a7)
[0001ed56] 49ef 0028                 lea.l      40(a7),a4
[0001ed5a] 4240                      clr.w      d0
[0001ed5c] 3940 000e                 move.w     d0,14(a4)
[0001ed60] 3940 000a                 move.w     d0,10(a4)
[0001ed64] 3940 0008                 move.w     d0,8(a4)
[0001ed68] 3940 0002                 move.w     d0,2(a4)
[0001ed6c] 397c 000f 000c            move.w     #$000F,12(a4)
[0001ed72] 47ef 0018                 lea.l      24(a7),a3
[0001ed76] 4240                      clr.w      d0
[0001ed78] 3740 0002                 move.w     d0,2(a3)
[0001ed7c] 3680                      move.w     d0,(a3)
[0001ed7e] 377c 007f 0004            move.w     #$007F,4(a3)
[0001ed84] 377c 0007 0006            move.w     #$0007,6(a3)
[0001ed8a] 206f 00da                 movea.l    218(a7),a0
[0001ed8e] 3f68 000c 003c            move.w     12(a0),60(a7)
[0001ed94] 4246                      clr.w      d6
[0001ed96] 6000 0184                 bra        edic_bitmap_7
edic_bitmap_17:
[0001ed9a] 396c 0002 0006            move.w     2(a4),6(a4)
[0001eda0] 7007                      moveq.l    #7,d0
[0001eda2] d06f 003c                 add.w      60(a7),d0
[0001eda6] b06f 0012                 cmp.w      18(a7),d0
[0001edaa] 6d00 0166                 blt        edic_bitmap_8
[0001edae] 322f 003c                 move.w     60(a7),d1
[0001edb2] b26f 0016                 cmp.w      22(a7),d1
[0001edb6] 6e00 015a                 bgt        edic_bitmap_8
[0001edba] 206f 00da                 movea.l    218(a7),a0
[0001edbe] 3e28 000a                 move.w     10(a0),d7
[0001edc2] 4254                      clr.w      (a4)
[0001edc4] 4244                      clr.w      d4
[0001edc6] 6000 0144                 bra        edic_bitmap_9
edic_bitmap_16:
[0001edca] 303c 0080                 move.w     #$0080,d0
[0001edce] d047                      add.w      d7,d0
[0001edd0] b06f 0010                 cmp.w      16(a7),d0
[0001edd4] 6d00 012c                 blt        edic_bitmap_10
[0001edd8] be6f 0014                 cmp.w      20(a7),d7
[0001eddc] 6e00 0124                 bgt        edic_bitmap_10
[0001ede0] 3214                      move.w     (a4),d1
[0001ede2] d26c 000c                 add.w      12(a4),d1
[0001ede6] 3941 0004                 move.w     d1,4(a4)
[0001edea] 2055                      movea.l    (a5),a0
[0001edec] 2268 023c                 movea.l    572(a0),a1
[0001edf0] 3429 000e                 move.w     14(a1),d2
[0001edf4] c47c 0800                 and.w      #$0800,d2
[0001edf8] 6748                      beq.s      edic_bitmap_11
[0001edfa] 3028 001c                 move.w     28(a0),d0
[0001edfe] b06f 0076                 cmp.w      118(a7),d0
[0001ee02] 663e                      bne.s      edic_bitmap_11
[0001ee04] 7a00                      moveq.l    #0,d5
[0001ee06] 602e                      bra.s      edic_bitmap_12
edic_bitmap_13:
[0001ee08] 3006                      move.w     d6,d0
[0001ee0a] c1c3                      muls.w     d3,d0
[0001ee0c] d044                      add.w      d4,d0
[0001ee0e] 48c0                      ext.l      d0
[0001ee10] 2f00                      move.l     d0,-(a7)
[0001ee12] 2005                      move.l     d5,d0
[0001ee14] 222f 0010                 move.l     16(a7),d1
[0001ee18] 4eb9 0007 76f0            jsr        _lmul
[0001ee1e] d09f                      add.l      (a7)+,d0
[0001ee20] d080                      add.l      d0,d0
[0001ee22] 206f 0008                 movea.l    8(a7),a0
[0001ee26] 2205                      move.l     d5,d1
[0001ee28] d281                      add.l      d1,d1
[0001ee2a] 226f 0004                 movea.l    4(a7),a1
[0001ee2e] 33b0 0800 1800            move.w     0(a0,d0.l),0(a1,d1.l)
[0001ee34] 5285                      addq.l     #1,d5
edic_bitmap_12:
[0001ee36] 302f 009e                 move.w     158(a7),d0
[0001ee3a] 48c0                      ext.l      d0
[0001ee3c] ba80                      cmp.l      d0,d5
[0001ee3e] 6dc8                      blt.s      edic_bitmap_13
[0001ee40] 602e                      bra.s      edic_bitmap_14
edic_bitmap_11:
[0001ee42] 486f 007e                 pea.l      126(a7)
[0001ee46] 43ef 0096                 lea.l      150(a7),a1
[0001ee4a] 204c                      movea.l    a4,a0
[0001ee4c] 7203                      moveq.l    #3,d1
[0001ee4e] 2c55                      movea.l    (a5),a6
[0001ee50] 302e 0010                 move.w     16(a6),d0
[0001ee54] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001ee5a] 584f                      addq.w     #4,a7
[0001ee5c] 43ef 006a                 lea.l      106(a7),a1
[0001ee60] 41ef 007e                 lea.l      126(a7),a0
[0001ee64] 2c55                      movea.l    (a5),a6
[0001ee66] 302e 0010                 move.w     16(a6),d0
[0001ee6a] 4eb9 0006 66a8            jsr        vr_trnfm
edic_bitmap_14:
[0001ee70] 3206                      move.w     d6,d1
[0001ee72] c3c3                      muls.w     d3,d1
[0001ee74] d244                      add.w      d4,d1
[0001ee76] 48c1                      ext.l      d1
[0001ee78] d281                      add.l      d1,d1
[0001ee7a] 206f 003e                 movea.l    62(a7),a0
[0001ee7e] 3030 1800                 move.w     0(a0,d1.l),d0
[0001ee82] 43ef 0042                 lea.l      66(a7),a1
[0001ee86] 41ef 006a                 lea.l      106(a7),a0
[0001ee8a] 6100 fc18                 bsr        zooming
[0001ee8e] 224a                      movea.l    a2,a1
[0001ee90] 41ef 0042                 lea.l      66(a7),a0
[0001ee94] 2c55                      movea.l    (a5),a6
[0001ee96] 302e 0010                 move.w     16(a6),d0
[0001ee9a] 4eb9 0006 66a8            jsr        vr_trnfm
[0001eea0] 3747 0008                 move.w     d7,8(a3)
[0001eea4] 376f 003c 000a            move.w     60(a7),10(a3)
[0001eeaa] 3007                      move.w     d7,d0
[0001eeac] d06b 0004                 add.w      4(a3),d0
[0001eeb0] 3740 000c                 move.w     d0,12(a3)
[0001eeb4] 322f 003c                 move.w     60(a7),d1
[0001eeb8] d26b 0006                 add.w      6(a3),d1
[0001eebc] 3741 000e                 move.w     d1,14(a3)
[0001eec0] 2055                      movea.l    (a5),a0
[0001eec2] 3028 001c                 move.w     28(a0),d0
[0001eec6] b06a 000c                 cmp.w      12(a2),d0
[0001eeca] 671c                      beq.s      edic_bitmap_15
[0001eecc] 4857                      pea.l      (a7)
[0001eece] 4868 026a                 pea.l      618(a0)
[0001eed2] 224a                      movea.l    a2,a1
[0001eed4] 204b                      movea.l    a3,a0
[0001eed6] 2c55                      movea.l    (a5),a6
[0001eed8] 302e 0010                 move.w     16(a6),d0
[0001eedc] 7201                      moveq.l    #1,d1
[0001eede] 4eb9 0006 6632            jsr        vrt_cpyfm
[0001eee4] 504f                      addq.w     #8,a7
[0001eee6] 601a                      bra.s      edic_bitmap_10
edic_bitmap_15:
[0001eee8] 2055                      movea.l    (a5),a0
[0001eeea] 4868 026a                 pea.l      618(a0)
[0001eeee] 224a                      movea.l    a2,a1
[0001eef0] 204b                      movea.l    a3,a0
[0001eef2] 7203                      moveq.l    #3,d1
[0001eef4] 2c55                      movea.l    (a5),a6
[0001eef6] 302e 0010                 move.w     16(a6),d0
[0001eefa] 4eb9 0006 65ce            jsr        vro_cpyfm
[0001ef00] 584f                      addq.w     #4,a7
edic_bitmap_10:
[0001ef02] de7c 0080                 add.w      #$0080,d7
[0001ef06] 0654 0010                 addi.w     #$0010,(a4)
[0001ef0a] 5244                      addq.w     #1,d4
edic_bitmap_9:
[0001ef0c] b644                      cmp.w      d4,d3
[0001ef0e] 6e00 feba                 bgt        edic_bitmap_16
edic_bitmap_8:
[0001ef12] 506f 003c                 addq.w     #8,60(a7)
[0001ef16] 526c 0002                 addq.w     #1,2(a4)
[0001ef1a] 5246                      addq.w     #1,d6
edic_bitmap_7:
[0001ef1c] 206f 00a6                 movea.l    166(a7),a0
[0001ef20] bc68 0018                 cmp.w      24(a0),d6
[0001ef24] 6d00 fe74                 blt        edic_bitmap_17
[0001ef28] 41ef 0010                 lea.l      16(a7),a0
[0001ef2c] 4241                      clr.w      d1
[0001ef2e] 2255                      movea.l    (a5),a1
[0001ef30] 3029 0010                 move.w     16(a1),d0
[0001ef34] 4eb9 0006 3f60            jsr        vs_clip
[0001ef3a] 206f 00da                 movea.l    218(a7),a0
[0001ef3e] 3028 0008                 move.w     8(a0),d0
[0001ef42] 4fef 00aa                 lea.l      170(a7),a7
[0001ef46] 4cdf 7cfc                 movem.l    (a7)+,d2-d7/a2-a6
[0001ef4a] 4e75                      rts

edic_edit:
[0001ef4c] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[0001ef50] 594f                      subq.w     #4,a7
[0001ef52] 45f9 0010 1f12            lea.l      ACSblk,a2
[0001ef58] 2052                      movea.l    (a2),a0
[0001ef5a] 2668 0258                 movea.l    600(a0),a3
[0001ef5e] 3228 0260                 move.w     608(a0),d1
[0001ef62] 48c1                      ext.l      d1
[0001ef64] 2001                      move.l     d1,d0
[0001ef66] d080                      add.l      d0,d0
[0001ef68] d081                      add.l      d1,d0
[0001ef6a] e788                      lsl.l      #3,d0
[0001ef6c] 2268 025c                 movea.l    604(a0),a1
[0001ef70] 0271 fffe 080a            andi.w     #$FFFE,10(a1,d0.l)
[0001ef76] 2853                      movea.l    (a3),a4
[0001ef78] 4eb9 0004 b286            jsr        Awi_diaend
[0001ef7e] 377c ffff 001c            move.w     #$FFFF,28(a3)
[0001ef84] 2a6c 000c                 movea.l    12(a4),a5
[0001ef88] 274d 0014                 move.l     a5,20(a3)
[0001ef8c] 2c6c 0008                 movea.l    8(a4),a6
[0001ef90] 2eae 018c                 move.l     396(a6),(a7)
[0001ef94] 2057                      movea.l    (a7),a0
[0001ef96] 3628 0016                 move.w     22(a0),d3
[0001ef9a] e74b                      lsl.w      #3,d3
[0001ef9c] 3828 0018                 move.w     24(a0),d4
[0001efa0] e74c                      lsl.w      #3,d4
[0001efa2] 226d 0294                 movea.l    660(a5),a1
[0001efa6] 234b 0004                 move.l     a3,4(a1)
[0001efaa] 3b43 029c                 move.w     d3,668(a5)
[0001efae] 3b43 0284                 move.w     d3,644(a5)
[0001efb2] 3b44 029e                 move.w     d4,670(a5)
[0001efb6] 3b44 0286                 move.w     d4,646(a5)
[0001efba] 3b7c 0008 02b4            move.w     #$0008,692(a5)
[0001efc0] 7001                      moveq.l    #1,d0
[0001efc2] 3940 0044                 move.w     d0,68(a4)
[0001efc6] 2252                      movea.l    (a2),a1
[0001efc8] 2069 023c                 movea.l    572(a1),a0
[0001efcc] 2268 006a                 movea.l    106(a0),a1
[0001efd0] 3340 0008                 move.w     d0,8(a1)
[0001efd4] 7001                      moveq.l    #1,d0
[0001efd6] 6100 d7f6                 bsr        getFgColor
[0001efda] 2052                      movea.l    (a2),a0
[0001efdc] 2268 023c                 movea.l    572(a0),a1
[0001efe0] 2869 006a                 movea.l    106(a1),a4
[0001efe4] 3940 0006                 move.w     d0,6(a4)
[0001efe8] 2052                      movea.l    (a2),a0
[0001efea] 3228 0012                 move.w     18(a0),d1
[0001efee] d241                      add.w      d1,d1
[0001eff0] d26d 0280                 add.w      640(a5),d1
[0001eff4] d641                      add.w      d1,d3
[0001eff6] 3428 0014                 move.w     20(a0),d2
[0001effa] d442                      add.w      d2,d2
[0001effc] d46d 0282                 add.w      642(a5),d2
[0001f000] d842                      add.w      d2,d4
[0001f002] b66e 0014                 cmp.w      20(a6),d3
[0001f006] 6c08                      bge.s      edic_edit_1
[0001f008] 3b6e 0014 0014            move.w     20(a6),20(a5)
[0001f00e] 6004                      bra.s      edic_edit_2
edic_edit_1:
[0001f010] 3b43 0014                 move.w     d3,20(a5)
edic_edit_2:
[0001f014] b86e 0016                 cmp.w      22(a6),d4
[0001f018] 6c08                      bge.s      edic_edit_3
[0001f01a] 3b6e 0016 0016            move.w     22(a6),22(a5)
[0001f020] 6004                      bra.s      edic_edit_4
edic_edit_3:
[0001f022] 3b44 0016                 move.w     d4,22(a5)
edic_edit_4:
[0001f026] 7008                      moveq.l    #8,d0
[0001f028] 3b40 0046                 move.w     d0,70(a5)
[0001f02c] 3b40 0044                 move.w     d0,68(a5)
[0001f030] 277c 0005 ef42 0062       move.l     #Awi_nokey,98(a3)
[0001f038] 2052                      movea.l    (a2),a0
[0001f03a] 3028 000c                 move.w     12(a0),d0
[0001f03e] 3228 0004                 move.w     4(a0),d1
[0001f042] d241                      add.w      d1,d1
[0001f044] 226b 0014                 movea.l    20(a3),a1
[0001f048] d269 0014                 add.w      20(a1),d1
[0001f04c] b041                      cmp.w      d1,d0
[0001f04e] 6c02                      bge.s      edic_edit_5
[0001f050] 6010                      bra.s      edic_edit_6
edic_edit_5:
[0001f052] 2052                      movea.l    (a2),a0
[0001f054] 3028 0004                 move.w     4(a0),d0
[0001f058] d040                      add.w      d0,d0
[0001f05a] 226b 0014                 movea.l    20(a3),a1
[0001f05e] d069 0014                 add.w      20(a1),d0
edic_edit_6:
[0001f062] 3740 0028                 move.w     d0,40(a3)
[0001f066] 2052                      movea.l    (a2),a0
[0001f068] 3228 000e                 move.w     14(a0),d1
[0001f06c] 3428 0006                 move.w     6(a0),d2
[0001f070] e54a                      lsl.w      #2,d2
[0001f072] 226b 0014                 movea.l    20(a3),a1
[0001f076] d469 0016                 add.w      22(a1),d2
[0001f07a] b242                      cmp.w      d2,d1
[0001f07c] 6c02                      bge.s      edic_edit_7
[0001f07e] 6010                      bra.s      edic_edit_8
edic_edit_7:
[0001f080] 2052                      movea.l    (a2),a0
[0001f082] 3228 0006                 move.w     6(a0),d1
[0001f086] e549                      lsl.w      #2,d1
[0001f088] 226b 0014                 movea.l    20(a3),a1
[0001f08c] d269 0016                 add.w      22(a1),d1
edic_edit_8:
[0001f090] 3741 002a                 move.w     d1,42(a3)
[0001f094] 302b 0022                 move.w     34(a3),d0
[0001f098] c07c 0100                 and.w      #$0100,d0
[0001f09c] 670a                      beq.s      edic_edit_9
[0001f09e] 342b 0022                 move.w     34(a3),d2
[0001f0a2] c47c 0800                 and.w      #$0800,d2
[0001f0a6] 6624                      bne.s      edic_edit_10
edic_edit_9:
[0001f0a8] 006b 0100 0056            ori.w      #$0100,86(a3)
[0001f0ae] 204b                      movea.l    a3,a0
[0001f0b0] 4eb9 0005 013e            jsr        Awi_closed
[0001f0b6] 006b 0fe0 0022            ori.w      #$0FE0,34(a3)
[0001f0bc] 204b                      movea.l    a3,a0
[0001f0be] 4eb9 0004 f69e            jsr        Awi_open
[0001f0c4] 026b feff 0056            andi.w     #$FEFF,86(a3)
[0001f0ca] 6008                      bra.s      edic_edit_11
edic_edit_10:
[0001f0cc] 204b                      movea.l    a3,a0
[0001f0ce] 4eb9 0001 44f2            jsr        view_grow
edic_edit_11:
[0001f0d4] 584f                      addq.w     #4,a7
[0001f0d6] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[0001f0da] 4e75                      rts

edic_struct:
[0001f0dc] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0001f0e0] 514f                      subq.w     #8,a7
[0001f0e2] 4243                      clr.w      d3
[0001f0e4] 45f9 0010 1f12            lea.l      ACSblk,a2
[0001f0ea] 2052                      movea.l    (a2),a0
[0001f0ec] 3228 0260                 move.w     608(a0),d1
[0001f0f0] 48c1                      ext.l      d1
[0001f0f2] 2001                      move.l     d1,d0
[0001f0f4] d080                      add.l      d0,d0
[0001f0f6] d081                      add.l      d1,d0
[0001f0f8] e788                      lsl.l      #3,d0
[0001f0fa] 2268 025c                 movea.l    604(a0),a1
[0001f0fe] 0271 fffe 080a            andi.w     #$FFFE,10(a1,d0.l)
[0001f104] 2052                      movea.l    (a2),a0
[0001f106] 2668 0258                 movea.l    600(a0),a3
[0001f10a] 2853                      movea.l    (a3),a4
[0001f10c] 4eb9 0004 b286            jsr        Awi_diaend
[0001f112] 377c 001a 001c            move.w     #$001A,28(a3)
[0001f118] 277c 0001 f342 0062       move.l     #ic_keys,98(a3)
[0001f120] 276c 0008 0014            move.l     8(a4),20(a3)
[0001f126] 2052                      movea.l    (a2),a0
[0001f128] 3028 0004                 move.w     4(a0),d0
[0001f12c] d040                      add.w      d0,d0
[0001f12e] 226b 0014                 movea.l    20(a3),a1
[0001f132] d069 0014                 add.w      20(a1),d0
[0001f136] 3740 0028                 move.w     d0,40(a3)
[0001f13a] 2052                      movea.l    (a2),a0
[0001f13c] 3228 0006                 move.w     6(a0),d1
[0001f140] e549                      lsl.w      #2,d1
[0001f142] 226b 0014                 movea.l    20(a3),a1
[0001f146] d269 0016                 add.w      22(a1),d1
[0001f14a] 3741 002a                 move.w     d1,42(a3)
[0001f14e] 2f39 000d 99d6            move.l     _globl,-(a7)
[0001f154] 486f 000a                 pea.l      10(a7)
[0001f158] 486f 000c                 pea.l      12(a7)
[0001f15c] 206b 0014                 movea.l    20(a3),a0
[0001f160] 3f28 0016                 move.w     22(a0),-(a7)
[0001f164] 3f28 0014                 move.w     20(a0),-(a7)
[0001f168] 3f28 0012                 move.w     18(a0),-(a7)
[0001f16c] 43ef 0014                 lea.l      20(a7),a1
[0001f170] 41ef 0012                 lea.l      18(a7),a0
[0001f174] 286b 0014                 movea.l    20(a3),a4
[0001f178] 342c 0010                 move.w     16(a4),d2
[0001f17c] 322b 0022                 move.w     34(a3),d1
[0001f180] c27c f01f                 and.w      #$F01F,d1
[0001f184] 4240                      clr.w      d0
[0001f186] 4eb9 0006 d60a            jsr        mt_wind_calc
[0001f18c] 4fef 0012                 lea.l      18(a7),a7
[0001f190] 362b 0022                 move.w     34(a3),d3
[0001f194] 2052                      movea.l    (a2),a0
[0001f196] 302f 0004                 move.w     4(a7),d0
[0001f19a] b068 000c                 cmp.w      12(a0),d0
[0001f19e] 6c04                      bge.s      edic_struct_1
[0001f1a0] c67c f1ff                 and.w      #$F1FF,d3
edic_struct_1:
[0001f1a4] 2052                      movea.l    (a2),a0
[0001f1a6] 302f 0006                 move.w     6(a7),d0
[0001f1aa] b068 000e                 cmp.w      14(a0),d0
[0001f1ae] 6c04                      bge.s      edic_struct_2
[0001f1b0] c67c fe3f                 and.w      #$FE3F,d3
edic_struct_2:
[0001f1b4] 3003                      move.w     d3,d0
[0001f1b6] c07c 0900                 and.w      #$0900,d0
[0001f1ba] 6604                      bne.s      edic_struct_3
[0001f1bc] c67c ffdf                 and.w      #$FFDF,d3
edic_struct_3:
[0001f1c0] b66b 0022                 cmp.w      34(a3),d3
[0001f1c4] 6722                      beq.s      edic_struct_4
[0001f1c6] 3743 0022                 move.w     d3,34(a3)
[0001f1ca] 006b 0100 0056            ori.w      #$0100,86(a3)
[0001f1d0] 204b                      movea.l    a3,a0
[0001f1d2] 4eb9 0005 013e            jsr        Awi_closed
[0001f1d8] 204b                      movea.l    a3,a0
[0001f1da] 4eb9 0004 f69e            jsr        Awi_open
[0001f1e0] 026b feff 0056            andi.w     #$FEFF,86(a3)
[0001f1e6] 6008                      bra.s      edic_struct_5
edic_struct_4:
[0001f1e8] 204b                      movea.l    a3,a0
[0001f1ea] 4eb9 0001 454a            jsr        view_shrink
edic_struct_5:
[0001f1f0] 504f                      addq.w     #8,a7
[0001f1f2] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0001f1f6] 4e75                      rts

acc_icon:
[0001f1f8] 48e7 0038                 movem.l    a2-a4,-(a7)
[0001f1fc] 4fef ffa6                 lea.l      -90(a7),a7
[0001f200] 2450                      movea.l    (a0),a2
[0001f202] 2f52 0052                 move.l     (a2),82(a7)
[0001f206] 206a 0008                 movea.l    8(a2),a0
[0001f20a] 2868 018c                 movea.l    396(a0),a4
[0001f20e] 7022                      moveq.l    #34,d0
[0001f210] 224c                      movea.l    a4,a1
[0001f212] 41d7                      lea.l      (a7),a0
[0001f214] 4eb9 0007 6f44            jsr        memcpy
[0001f21a] 7216                      moveq.l    #22,d1
[0001f21c] 4240                      clr.w      d0
[0001f21e] 41ef 0026                 lea.l      38(a7),a0
[0001f222] 4eb9 0007 712e            jsr        memset
[0001f228] 7216                      moveq.l    #22,d1
[0001f22a] 4240                      clr.w      d0
[0001f22c] 41ef 003c                 lea.l      60(a7),a0
[0001f230] 4eb9 0007 712e            jsr        memset
[0001f236] 97cb                      suba.l     a3,a3
[0001f238] 202a 0030                 move.l     48(a2),d0
[0001f23c] 673c                      beq.s      acc_icon_1
[0001f23e] 2f4b 004e                 move.l     a3,78(a7)
[0001f242] 3f7c 0008 003c            move.w     #$0008,60(a7)
[0001f248] 224c                      movea.l    a4,a1
[0001f24a] 2040                      movea.l    d0,a0
[0001f24c] 7008                      moveq.l    #8,d0
[0001f24e] 6100 d72c                 bsr        from_cicon
[0001f252] 2f48 003e                 move.l     a0,62(a7)
[0001f256] 2f6a 0034 0042            move.l     52(a2),66(a7)
[0001f25c] 202a 0038                 move.l     56(a2),d0
[0001f260] 6714                      beq.s      acc_icon_2
[0001f262] 224c                      movea.l    a4,a1
[0001f264] 2040                      movea.l    d0,a0
[0001f266] 7008                      moveq.l    #8,d0
[0001f268] 6100 d712                 bsr        from_cicon
[0001f26c] 2f48 0046                 move.l     a0,70(a7)
[0001f270] 2f6a 003c 004a            move.l     60(a2),74(a7)
acc_icon_2:
[0001f276] 47ef 003c                 lea.l      60(a7),a3
acc_icon_1:
[0001f27a] 202a 001a                 move.l     26(a2),d0
[0001f27e] 673c                      beq.s      acc_icon_3
[0001f280] 2f4b 0038                 move.l     a3,56(a7)
[0001f284] 3f7c 0004 0026            move.w     #$0004,38(a7)
[0001f28a] 224c                      movea.l    a4,a1
[0001f28c] 2040                      movea.l    d0,a0
[0001f28e] 7004                      moveq.l    #4,d0
[0001f290] 6100 d6ea                 bsr        from_cicon
[0001f294] 2f48 0028                 move.l     a0,40(a7)
[0001f298] 2f6a 001e 002c            move.l     30(a2),44(a7)
[0001f29e] 202a 0022                 move.l     34(a2),d0
[0001f2a2] 6714                      beq.s      acc_icon_4
[0001f2a4] 224c                      movea.l    a4,a1
[0001f2a6] 2040                      movea.l    d0,a0
[0001f2a8] 7004                      moveq.l    #4,d0
[0001f2aa] 6100 d6d0                 bsr        from_cicon
[0001f2ae] 2f48 0030                 move.l     a0,48(a7)
[0001f2b2] 2f6a 0026 0034            move.l     38(a2),52(a7)
acc_icon_4:
[0001f2b8] 47ef 0026                 lea.l      38(a7),a3
acc_icon_3:
[0001f2bc] 2f4b 0022                 move.l     a3,34(a7)
[0001f2c0] 43d7                      lea.l      (a7),a1
[0001f2c2] 206f 0052                 movea.l    82(a7),a0
[0001f2c6] 4eb9 0003 2fea            jsr        dup_icon
[0001f2cc] 2648                      movea.l    a0,a3
[0001f2ce] 200b                      move.l     a3,d0
[0001f2d0] 673e                      beq.s      acc_icon_5
[0001f2d2] 206a 0004                 movea.l    4(a2),a0
[0001f2d6] 2f68 0004 0056            move.l     4(a0),86(a7)
[0001f2dc] 216b 0004 0004            move.l     4(a3),4(a0)
[0001f2e2] 276f 0056 0004            move.l     86(a7),4(a3)
[0001f2e8] 202b 000e                 move.l     14(a3),d0
[0001f2ec] 2768 000e 000e            move.l     14(a0),14(a3)
[0001f2f2] 2140 000e                 move.l     d0,14(a0)
[0001f2f6] 202b 000a                 move.l     10(a3),d0
[0001f2fa] 2768 000a 000a            move.l     10(a0),10(a3)
[0001f300] 2140 000a                 move.l     d0,10(a0)
[0001f304] 224b                      movea.l    a3,a1
[0001f306] 206f 0052                 movea.l    82(a7),a0
[0001f30a] 4eb9 0003 3220            jsr        del_icon
acc_icon_5:
[0001f310] 206f 0028                 movea.l    40(a7),a0
[0001f314] 4eb9 0004 7d6c            jsr        Ax_ifree
[0001f31a] 206f 0030                 movea.l    48(a7),a0
[0001f31e] 4eb9 0004 7d6c            jsr        Ax_ifree
[0001f324] 206f 003e                 movea.l    62(a7),a0
[0001f328] 4eb9 0004 7d6c            jsr        Ax_ifree
[0001f32e] 206f 0046                 movea.l    70(a7),a0
[0001f332] 4eb9 0004 7d6c            jsr        Ax_ifree
[0001f338] 4fef 005a                 lea.l      90(a7),a7
[0001f33c] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0001f340] 4e75                      rts

ic_keys:
[0001f342] 48e7 0038                 movem.l    a2-a4,-(a7)
[0001f346] 594f                      subq.w     #4,a7
[0001f348] 2448                      movea.l    a0,a2
[0001f34a] 4eb9 0005 ef2c            jsr        Awi_keys
[0001f350] 2052                      movea.l    (a2),a0
[0001f352] 2268 0008                 movea.l    8(a0),a1
[0001f356] 2669 018c                 movea.l    396(a1),a3
[0001f35a] 49eb 000c                 lea.l      12(a3),a4
[0001f35e] 43d7                      lea.l      (a7),a1
[0001f360] 7003                      moveq.l    #3,d0
[0001f362] 206a 0014                 movea.l    20(a2),a0
[0001f366] 41e8 0288                 lea.l      648(a0),a0
[0001f36a] 4eb9 0005 e010            jsr        Auo_boxed
[0001f370] 2057                      movea.l    (a7),a0
[0001f372] 1950 0001                 move.b     (a0),1(a4)
[0001f376] 226b 0008                 movea.l    8(a3),a1
[0001f37a] 701a                      moveq.l    #26,d0
[0001f37c] 206a 0014                 movea.l    20(a2),a0
[0001f380] 4eb9 0004 b154            jsr        Aob_gettext
[0001f386] 72ff                      moveq.l    #-1,d1
[0001f388] 7010                      moveq.l    #16,d0
[0001f38a] 204a                      movea.l    a2,a0
[0001f38c] 226a 0066                 movea.l    102(a2),a1
[0001f390] 4e91                      jsr        (a1)
[0001f392] 70ff                      moveq.l    #-1,d0
[0001f394] 584f                      addq.w     #4,a7
[0001f396] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0001f39a] 4e75                      rts

ic_make:
[0001f39c] 48e7 0038                 movem.l    a2-a4,-(a7)
[0001f3a0] 594f                      subq.w     #4,a7
[0001f3a2] 2e88                      move.l     a0,(a7)
[0001f3a4] 2668 0004                 movea.l    4(a0),a3
[0001f3a8] 286b 0012                 movea.l    18(a3),a4
[0001f3ac] 200c                      move.l     a4,d0
[0001f3ae] 670c                      beq.s      ic_make_1
[0001f3b0] 204c                      movea.l    a4,a0
[0001f3b2] 4eb9 0004 f0ca            jsr        Awi_show
[0001f3b8] 6000 00ce                 bra        ic_make_2
ic_make_1:
[0001f3bc] 7048                      moveq.l    #72,d0
[0001f3be] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001f3c4] 2448                      movea.l    a0,a2
[0001f3c6] 200a                      move.l     a2,d0
[0001f3c8] 6700 00ba                 beq        ic_make_3
[0001f3cc] 2257                      movea.l    (a7),a1
[0001f3ce] 2091                      move.l     (a1),(a0)
[0001f3d0] 2569 0004 0004            move.l     4(a1),4(a2)
[0001f3d6] 41eb 0016                 lea.l      22(a3),a0
[0001f3da] 23c8 000a 48d0            move.l     a0,$000A48D0
[0001f3e0] 2279 000a 48dc            movea.l    $000A48DC,a1
[0001f3e6] 2348 0008                 move.l     a0,8(a1)
[0001f3ea] 41f9 000a 4882            lea.l      WI_ICON,a0
[0001f3f0] 4eb9 0004 f41a            jsr        Awi_create
[0001f3f6] 2848                      movea.l    a0,a4
[0001f3f8] 200c                      move.l     a4,d0
[0001f3fa] 6754                      beq.s      ic_make_4
[0001f3fc] 2257                      movea.l    (a7),a1
[0001f3fe] 2051                      movea.l    (a1),a0
[0001f400] 4868 0168                 pea.l      360(a0)
[0001f404] 43eb 003a                 lea.l      58(a3),a1
[0001f408] 204c                      movea.l    a4,a0
[0001f40a] 4eb9 0001 47a8            jsr        wi_pos
[0001f410] 584f                      addq.w     #4,a7
[0001f412] 4240                      clr.w      d0
[0001f414] 206c 0014                 movea.l    20(a4),a0
[0001f418] 3140 01de                 move.w     d0,478(a0)
[0001f41c] 206c 0014                 movea.l    20(a4),a0
[0001f420] 3140 01dc                 move.w     d0,476(a0)
[0001f424] 206c 0014                 movea.l    20(a4),a0
[0001f428] 0068 0080 01d0            ori.w      #$0080,464(a0)
[0001f42e] 288a                      move.l     a2,(a4)
[0001f430] 256c 0014 0008            move.l     20(a4),8(a2)
[0001f436] 41f9 000a 42b2            lea.l      EDIT_ICON2,a0
[0001f43c] 4eb9 0004 9a5c            jsr        Aob_create
[0001f442] 2548 000c                 move.l     a0,12(a2)
[0001f446] 6612                      bne.s      ic_make_5
[0001f448] 204c                      movea.l    a4,a0
[0001f44a] 4eb9 0004 7e26            jsr        Ax_free
ic_make_4:
[0001f450] 204a                      movea.l    a2,a0
[0001f452] 4eb9 0004 7e26            jsr        Ax_free
[0001f458] 602a                      bra.s      ic_make_3
ic_make_5:
[0001f45a] 206a 000c                 movea.l    12(a2),a0
[0001f45e] 4eb9 0004 a25e            jsr        Aob_fix
[0001f464] 274c 0012                 move.l     a4,18(a3)
[0001f468] 204c                      movea.l    a4,a0
[0001f46a] 4eb9 0001 f50a            jsr        set_icon
[0001f470] 204c                      movea.l    a4,a0
[0001f472] 226c 000c                 movea.l    12(a4),a1
[0001f476] 4e91                      jsr        (a1)
[0001f478] 4a40                      tst.w      d0
[0001f47a] 670c                      beq.s      ic_make_2
[0001f47c] 204c                      movea.l    a4,a0
[0001f47e] 4eb9 0001 f716            jsr        term
ic_make_3:
[0001f484] 91c8                      suba.l     a0,a0
[0001f486] 6002                      bra.s      ic_make_6
ic_make_2:
[0001f488] 204c                      movea.l    a4,a0
ic_make_6:
[0001f48a] 584f                      addq.w     #4,a7
[0001f48c] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0001f490] 4e75                      rts

ic_service:
[0001f492] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0001f496] 2448                      movea.l    a0,a2
[0001f498] 3600                      move.w     d0,d3
[0001f49a] 2849                      movea.l    a1,a4
[0001f49c] 2650                      movea.l    (a0),a3
[0001f49e] 5540                      subq.w     #2,d0
[0001f4a0] 6708                      beq.s      ic_service_1
[0001f4a2] 907c 270e                 sub.w      #$270E,d0
[0001f4a6] 6712                      beq.s      ic_service_2
[0001f4a8] 601e                      bra.s      ic_service_3
ic_service_1:
[0001f4aa] 204a                      movea.l    a2,a0
[0001f4ac] 6100 fd4a                 bsr        acc_icon
[0001f4b0] 204a                      movea.l    a2,a0
[0001f4b2] 4eb9 0001 f716            jsr        term
[0001f4b8] 601c                      bra.s      ic_service_4
ic_service_2:
[0001f4ba] 226b 0004                 movea.l    4(a3),a1
[0001f4be] 204a                      movea.l    a2,a0
[0001f4c0] 4eb9 0001 45a2            jsr        new_name
[0001f4c6] 600e                      bra.s      ic_service_4
ic_service_3:
[0001f4c8] 224c                      movea.l    a4,a1
[0001f4ca] 3003                      move.w     d3,d0
[0001f4cc] 204a                      movea.l    a2,a0
[0001f4ce] 4eb9 0005 1276            jsr        Awi_service
[0001f4d4] 6002                      bra.s      ic_service_5
ic_service_4:
[0001f4d6] 7001                      moveq.l    #1,d0
ic_service_5:
[0001f4d8] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0001f4dc] 4e75                      rts

unfix_alloc:
[0001f4de] 2f0a                      move.l     a2,-(a7)
[0001f4e0] 2f0b                      move.l     a3,-(a7)
[0001f4e2] 2448                      movea.l    a0,a2
[0001f4e4] 2650                      movea.l    (a0),a3
[0001f4e6] 200b                      move.l     a3,d0
[0001f4e8] 671a                      beq.s      unfix_alloc_1
[0001f4ea] 202b 000e                 move.l     14(a3),d0
[0001f4ee] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001f4f4] 2488                      move.l     a0,(a2)
[0001f4f6] 202b 000e                 move.l     14(a3),d0
[0001f4fa] 226b 0004                 movea.l    4(a3),a1
[0001f4fe] 4eb9 0007 6f44            jsr        memcpy
unfix_alloc_1:
[0001f504] 265f                      movea.l    (a7)+,a3
[0001f506] 245f                      movea.l    (a7)+,a2
[0001f508] 4e75                      rts

set_icon:
[0001f50a] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[0001f50e] 4fef fff6                 lea.l      -10(a7),a7
[0001f512] 2448                      movea.l    a0,a2
[0001f514] 43f9 000a 49fc            lea.l      $000A49FC,a1
[0001f51a] 41ef 0004                 lea.l      4(a7),a0
[0001f51e] 10d9                      move.b     (a1)+,(a0)+
[0001f520] 10d9                      move.b     (a1)+,(a0)+
[0001f522] 2652                      movea.l    (a2),a3
[0001f524] 2eab 0008                 move.l     8(a3),(a7)
[0001f528] 2057                      movea.l    (a7),a0
[0001f52a] 2a68 018c                 movea.l    396(a0),a5
[0001f52e] 2f6d 0008 0006            move.l     8(a5),6(a7)
[0001f534] 226b 0004                 movea.l    4(a3),a1
[0001f538] 2c69 0004                 movea.l    4(a1),a6
[0001f53c] 7022                      moveq.l    #34,d0
[0001f53e] 204d                      movea.l    a5,a0
[0001f540] 224e                      movea.l    a6,a1
[0001f542] 4eb9 0007 6f44            jsr        memcpy
[0001f548] 2b6f 0006 0008            move.l     6(a7),8(a5)
[0001f54e] 7016                      moveq.l    #22,d0
[0001f550] 43ee 0026                 lea.l      38(a6),a1
[0001f554] 41eb 0018                 lea.l      24(a3),a0
[0001f558] 4eb9 0007 6f44            jsr        memcpy
[0001f55e] 7016                      moveq.l    #22,d0
[0001f560] 43ee 003c                 lea.l      60(a6),a1
[0001f564] 41eb 002e                 lea.l      46(a3),a0
[0001f568] 4eb9 0007 6f44            jsr        memcpy
[0001f56e] 760f                      moveq.l    #15,d3
[0001f570] d66d 0016                 add.w      22(a5),d3
[0001f574] c67c fff0                 and.w      #$FFF0,d3
[0001f578] c7ed 0018                 muls.w     24(a5),d3
[0001f57c] e643                      asr.w      #3,d3
[0001f57e] 48c3                      ext.l      d3
[0001f580] 302b 0018                 move.w     24(a3),d0
[0001f584] 6f4a                      ble.s      set_icon_1
[0001f586] 41eb 001e                 lea.l      30(a3),a0
[0001f58a] 6100 ff52                 bsr        unfix_alloc
[0001f58e] 286b 001a                 movea.l    26(a3),a4
[0001f592] 2f0d                      move.l     a5,-(a7)
[0001f594] 7004                      moveq.l    #4,d0
[0001f596] 226b 001e                 movea.l    30(a3),a1
[0001f59a] 206c 0004                 movea.l    4(a4),a0
[0001f59e] 6100 d266                 bsr        ito_cicon
[0001f5a2] 584f                      addq.w     #4,a7
[0001f5a4] 2748 001a                 move.l     a0,26(a3)
[0001f5a8] 202b 0022                 move.l     34(a3),d0
[0001f5ac] 6722                      beq.s      set_icon_1
[0001f5ae] 41eb 0026                 lea.l      38(a3),a0
[0001f5b2] 6100 ff2a                 bsr        unfix_alloc
[0001f5b6] 286b 0022                 movea.l    34(a3),a4
[0001f5ba] 2f0d                      move.l     a5,-(a7)
[0001f5bc] 7004                      moveq.l    #4,d0
[0001f5be] 226b 0026                 movea.l    38(a3),a1
[0001f5c2] 206c 0004                 movea.l    4(a4),a0
[0001f5c6] 6100 d23e                 bsr        ito_cicon
[0001f5ca] 584f                      addq.w     #4,a7
[0001f5cc] 2748 0022                 move.l     a0,34(a3)
set_icon_1:
[0001f5d0] 302b 002e                 move.w     46(a3),d0
[0001f5d4] 6f4a                      ble.s      set_icon_2
[0001f5d6] 41eb 0034                 lea.l      52(a3),a0
[0001f5da] 6100 ff02                 bsr        unfix_alloc
[0001f5de] 286b 0030                 movea.l    48(a3),a4
[0001f5e2] 2f0d                      move.l     a5,-(a7)
[0001f5e4] 7008                      moveq.l    #8,d0
[0001f5e6] 226b 0034                 movea.l    52(a3),a1
[0001f5ea] 206c 0004                 movea.l    4(a4),a0
[0001f5ee] 6100 d216                 bsr        ito_cicon
[0001f5f2] 584f                      addq.w     #4,a7
[0001f5f4] 2748 0030                 move.l     a0,48(a3)
[0001f5f8] 202b 0038                 move.l     56(a3),d0
[0001f5fc] 6722                      beq.s      set_icon_2
[0001f5fe] 41eb 003c                 lea.l      60(a3),a0
[0001f602] 6100 feda                 bsr        unfix_alloc
[0001f606] 286b 0038                 movea.l    56(a3),a4
[0001f60a] 2f0d                      move.l     a5,-(a7)
[0001f60c] 7008                      moveq.l    #8,d0
[0001f60e] 226b 003c                 movea.l    60(a3),a1
[0001f612] 206c 0004                 movea.l    4(a4),a0
[0001f616] 6100 d1ee                 bsr        ito_cicon
[0001f61a] 584f                      addq.w     #4,a7
[0001f61c] 2748 0038                 move.l     a0,56(a3)
set_icon_2:
[0001f620] 2003                      move.l     d3,d0
[0001f622] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001f628] 2748 0014                 move.l     a0,20(a3)
[0001f62c] 670e                      beq.s      set_icon_3
[0001f62e] 2003                      move.l     d3,d0
[0001f630] 2216                      move.l     (a6),d1
[0001f632] 43f6 1800                 lea.l      0(a6,d1.l),a1
[0001f636] 4eb9 0007 6f44            jsr        memcpy
set_icon_3:
[0001f63c] 2003                      move.l     d3,d0
[0001f63e] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001f644] 2748 0010                 move.l     a0,16(a3)
[0001f648] 6710                      beq.s      set_icon_4
[0001f64a] 2003                      move.l     d3,d0
[0001f64c] 222e 0004                 move.l     4(a6),d1
[0001f650] 43f6 1800                 lea.l      0(a6,d1.l),a1
[0001f654] 4eb9 0007 6f44            jsr        memcpy
set_icon_4:
[0001f65a] 204a                      movea.l    a2,a0
[0001f65c] 6100 d406                 bsr        edic_link
[0001f660] 286e 0008                 movea.l    8(a6),a4
[0001f664] 226c 0004                 movea.l    4(a4),a1
[0001f668] 7004                      moveq.l    #4,d0
[0001f66a] 2057                      movea.l    (a7),a0
[0001f66c] 41e8 0270                 lea.l      624(a0),a0
[0001f670] 4eb9 0005 e010            jsr        Auo_boxed
[0001f676] 226c 0004                 movea.l    4(a4),a1
[0001f67a] 206f 0006                 movea.l    6(a7),a0
[0001f67e] 4eb9 0007 6950            jsr        strcpy
[0001f684] 1f6d 000d 0004            move.b     13(a5),4(a7)
[0001f68a] 43ef 0004                 lea.l      4(a7),a1
[0001f68e] 7004                      moveq.l    #4,d0
[0001f690] 2057                      movea.l    (a7),a0
[0001f692] 41e8 0288                 lea.l      648(a0),a0
[0001f696] 4eb9 0005 e010            jsr        Auo_boxed
[0001f69c] 362d 000c                 move.w     12(a5),d3
[0001f6a0] 700c                      moveq.l    #12,d0
[0001f6a2] e063                      asr.w      d0,d3
[0001f6a4] c67c 000f                 and.w      #$000F,d3
[0001f6a8] 49f9 000b e270            lea.l      colour_text,a4
[0001f6ae] 3003                      move.w     d3,d0
[0001f6b0] 48c0                      ext.l      d0
[0001f6b2] e588                      lsl.l      #2,d0
[0001f6b4] 2274 0800                 movea.l    0(a4,d0.l),a1
[0001f6b8] 206a 0014                 movea.l    20(a2),a0
[0001f6bc] 7007                      moveq.l    #7,d0
[0001f6be] 4eb9 0004 afe0            jsr        Aob_puttext
[0001f6c4] 206a 0014                 movea.l    20(a2),a0
[0001f6c8] 3003                      move.w     d3,d0
[0001f6ca] 0268 fff0 009e            andi.w     #$FFF0,158(a0)
[0001f6d0] c07c 000f                 and.w      #$000F,d0
[0001f6d4] 8168 009e                 or.w       d0,158(a0)
[0001f6d8] 362d 000c                 move.w     12(a5),d3
[0001f6dc] e043                      asr.w      #8,d3
[0001f6de] c67c 000f                 and.w      #$000F,d3
[0001f6e2] 3003                      move.w     d3,d0
[0001f6e4] 48c0                      ext.l      d0
[0001f6e6] e588                      lsl.l      #2,d0
[0001f6e8] 2274 0800                 movea.l    0(a4,d0.l),a1
[0001f6ec] 206a 0014                 movea.l    20(a2),a0
[0001f6f0] 700d                      moveq.l    #13,d0
[0001f6f2] 4eb9 0004 afe0            jsr        Aob_puttext
[0001f6f8] 206a 0014                 movea.l    20(a2),a0
[0001f6fc] 3003                      move.w     d3,d0
[0001f6fe] 0268 fff0 012e            andi.w     #$FFF0,302(a0)
[0001f704] c07c 000f                 and.w      #$000F,d0
[0001f708] 8168 012e                 or.w       d0,302(a0)
[0001f70c] 4fef 000a                 lea.l      10(a7),a7
[0001f710] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[0001f714] 4e75                      rts

term:
[0001f716] 2f0a                      move.l     a2,-(a7)
[0001f718] 2f0b                      move.l     a3,-(a7)
[0001f71a] 2448                      movea.l    a0,a2
[0001f71c] 006a 0100 0056            ori.w      #$0100,86(a2)
[0001f722] 2650                      movea.l    (a0),a3
[0001f724] 226b 0008                 movea.l    8(a3),a1
[0001f728] 2069 018c                 movea.l    396(a1),a0
[0001f72c] 42a8 0022                 clr.l      34(a0)
[0001f730] 206b 0004                 movea.l    4(a3),a0
[0001f734] 42a8 0012                 clr.l      18(a0)
[0001f738] 206a 0014                 movea.l    20(a2),a0
[0001f73c] b1eb 0008                 cmpa.l     8(a3),a0
[0001f740] 660c                      bne.s      term_1
[0001f742] 206b 000c                 movea.l    12(a3),a0
[0001f746] 4eb9 0004 9b7c            jsr        Aob_delete
[0001f74c] 600a                      bra.s      term_2
term_1:
[0001f74e] 206b 0008                 movea.l    8(a3),a0
[0001f752] 4eb9 0004 9b7c            jsr        Aob_delete
term_2:
[0001f758] 302a 0056                 move.w     86(a2),d0
[0001f75c] c07c 0800                 and.w      #$0800,d0
[0001f760] 6716                      beq.s      term_3
[0001f762] 43ea 002c                 lea.l      44(a2),a1
[0001f766] 206b 0004                 movea.l    4(a3),a0
[0001f76a] 41e8 003a                 lea.l      58(a0),a0
[0001f76e] 7008                      moveq.l    #8,d0
[0001f770] 4eb9 0007 6f44            jsr        memcpy
[0001f776] 6014                      bra.s      term_4
term_3:
[0001f778] 7008                      moveq.l    #8,d0
[0001f77a] 43ea 0024                 lea.l      36(a2),a1
[0001f77e] 206b 0004                 movea.l    4(a3),a0
[0001f782] 41e8 003a                 lea.l      58(a0),a0
[0001f786] 4eb9 0007 6f44            jsr        memcpy
term_4:
[0001f78c] 206b 0010                 movea.l    16(a3),a0
[0001f790] 4eb9 0004 7e26            jsr        Ax_free
[0001f796] 206b 0014                 movea.l    20(a3),a0
[0001f79a] 4eb9 0004 7e26            jsr        Ax_free
[0001f7a0] 202b 001a                 move.l     26(a3),d0
[0001f7a4] 670a                      beq.s      term_5
[0001f7a6] 2040                      movea.l    d0,a0
[0001f7a8] 5d48                      subq.w     #6,a0
[0001f7aa] 4eb9 0004 7e26            jsr        Ax_free
term_5:
[0001f7b0] 206b 001e                 movea.l    30(a3),a0
[0001f7b4] 4eb9 0004 7e26            jsr        Ax_free
[0001f7ba] 202b 0022                 move.l     34(a3),d0
[0001f7be] 670a                      beq.s      term_6
[0001f7c0] 2040                      movea.l    d0,a0
[0001f7c2] 5d48                      subq.w     #6,a0
[0001f7c4] 4eb9 0004 7e26            jsr        Ax_free
term_6:
[0001f7ca] 206b 0026                 movea.l    38(a3),a0
[0001f7ce] 4eb9 0004 7e26            jsr        Ax_free
[0001f7d4] 202b 0030                 move.l     48(a3),d0
[0001f7d8] 670a                      beq.s      term_7
[0001f7da] 2040                      movea.l    d0,a0
[0001f7dc] 5d48                      subq.w     #6,a0
[0001f7de] 4eb9 0004 7e26            jsr        Ax_free
term_7:
[0001f7e4] 206b 0034                 movea.l    52(a3),a0
[0001f7e8] 4eb9 0004 7e26            jsr        Ax_free
[0001f7ee] 202b 0038                 move.l     56(a3),d0
[0001f7f2] 670a                      beq.s      term_8
[0001f7f4] 2040                      movea.l    d0,a0
[0001f7f6] 5d48                      subq.w     #6,a0
[0001f7f8] 4eb9 0004 7e26            jsr        Ax_free
term_8:
[0001f7fe] 206b 003c                 movea.l    60(a3),a0
[0001f802] 4eb9 0004 7e26            jsr        Ax_free
[0001f808] 204b                      movea.l    a3,a0
[0001f80a] 4eb9 0004 7e26            jsr        Ax_free
[0001f810] 204a                      movea.l    a2,a0
[0001f812] 4eb9 0005 0330            jsr        Awi_delete
[0001f818] 265f                      movea.l    (a7)+,a3
[0001f81a] 245f                      movea.l    (a7)+,a2
[0001f81c] 4e75                      rts

piccolor:
[0001f81e] 48e7 3028                 movem.l    d2-d3/a2/a4,-(a7)
[0001f822] 4fef ffec                 lea.l      -20(a7),a7
[0001f826] 246f 0028                 movea.l    40(a7),a2
[0001f82a] 202a 001a                 move.l     26(a2),d0
[0001f82e] 6608                      bne.s      piccolor_1
[0001f830] 76ff                      moveq.l    #-1,d3
[0001f832] d66a 0004                 add.w      4(a2),d3
[0001f836] 6004                      bra.s      piccolor_2
piccolor_1:
[0001f838] 362a 001c                 move.w     28(a2),d3
piccolor_2:
[0001f83c] 3f6a 0016 0004            move.w     22(a2),4(a7)
[0001f842] 3f6a 0018 0006            move.w     24(a2),6(a7)
[0001f848] 3eaa 0012                 move.w     18(a2),(a7)
[0001f84c] 3f6a 0014 0002            move.w     20(a2),2(a7)
[0001f852] 70ff                      moveq.l    #-1,d0
[0001f854] d057                      add.w      (a7),d0
[0001f856] d16f 0004                 add.w      d0,4(a7)
[0001f85a] 70ff                      moveq.l    #-1,d0
[0001f85c] d06f 0002                 add.w      2(a7),d0
[0001f860] d16f 0006                 add.w      d0,6(a7)
[0001f864] 49f9 0010 1f12            lea.l      ACSblk,a4
[0001f86a] 41d7                      lea.l      (a7),a0
[0001f86c] 7201                      moveq.l    #1,d1
[0001f86e] 2254                      movea.l    (a4),a1
[0001f870] 3029 0010                 move.w     16(a1),d0
[0001f874] 4eb9 0006 3f60            jsr        vs_clip
[0001f87a] 7001                      moveq.l    #1,d0
[0001f87c] d06a 000a                 add.w      10(a2),d0
[0001f880] 3e80                      move.w     d0,(a7)
[0001f882] 7201                      moveq.l    #1,d1
[0001f884] d26a 000c                 add.w      12(a2),d1
[0001f888] 3f41 0002                 move.w     d1,2(a7)
[0001f88c] 342a 000a                 move.w     10(a2),d2
[0001f890] d46a 000e                 add.w      14(a2),d2
[0001f894] 5542                      subq.w     #2,d2
[0001f896] 3f42 0004                 move.w     d2,4(a7)
[0001f89a] 302a 000c                 move.w     12(a2),d0
[0001f89e] d06a 0010                 add.w      16(a2),d0
[0001f8a2] 5540                      subq.w     #2,d0
[0001f8a4] 3f40 0006                 move.w     d0,6(a7)
[0001f8a8] 2054                      movea.l    (a4),a0
[0001f8aa] 3028 0010                 move.w     16(a0),d0
[0001f8ae] 7201                      moveq.l    #1,d1
[0001f8b0] 4eb9 0006 4da0            jsr        vswr_mode
[0001f8b6] 7201                      moveq.l    #1,d1
[0001f8b8] 2054                      movea.l    (a4),a0
[0001f8ba] 3028 0010                 move.w     16(a0),d0
[0001f8be] 4eb9 0006 5390            jsr        vsf_interior
[0001f8c4] 7201                      moveq.l    #1,d1
[0001f8c6] 2054                      movea.l    (a4),a0
[0001f8c8] 3028 0010                 move.w     16(a0),d0
[0001f8cc] 4eb9 0006 548c            jsr        vsf_perimeter
[0001f8d2] 3203                      move.w     d3,d1
[0001f8d4] 2054                      movea.l    (a4),a0
[0001f8d6] 3028 0010                 move.w     16(a0),d0
[0001f8da] 4eb9 0006 5438            jsr        vsf_color
[0001f8e0] 41d7                      lea.l      (a7),a0
[0001f8e2] 2254                      movea.l    (a4),a1
[0001f8e4] 3029 0010                 move.w     16(a1),d0
[0001f8e8] 4eb9 0006 455e            jsr        v_bar
[0001f8ee] 7001                      moveq.l    #1,d0
[0001f8f0] c06a 0008                 and.w      8(a2),d0
[0001f8f4] 6710                      beq.s      piccolor_3
[0001f8f6] 7201                      moveq.l    #1,d1
[0001f8f8] 2054                      movea.l    (a4),a0
[0001f8fa] 3028 0010                 move.w     16(a0),d0
[0001f8fe] 4eb9 0006 4ef0            jsr        vsl_color
[0001f904] 600e                      bra.s      piccolor_4
piccolor_3:
[0001f906] 4241                      clr.w      d1
[0001f908] 2054                      movea.l    (a4),a0
[0001f90a] 3028 0010                 move.w     16(a0),d0
[0001f90e] 4eb9 0006 4ef0            jsr        vsl_color
piccolor_4:
[0001f914] 5357                      subq.w     #1,(a7)
[0001f916] 536f 0002                 subq.w     #1,2(a7)
[0001f91a] 526f 0004                 addq.w     #1,4(a7)
[0001f91e] 526f 0006                 addq.w     #1,6(a7)
[0001f922] 3f57 0010                 move.w     (a7),16(a7)
[0001f926] 3f6f 0002 0012            move.w     2(a7),18(a7)
[0001f92c] 3f57 000c                 move.w     (a7),12(a7)
[0001f930] 3f6f 0006 000e            move.w     6(a7),14(a7)
[0001f936] 3f6f 0004 0008            move.w     4(a7),8(a7)
[0001f93c] 3f6f 0006 000a            move.w     6(a7),10(a7)
[0001f942] 3f6f 0002 0006            move.w     2(a7),6(a7)
[0001f948] 7201                      moveq.l    #1,d1
[0001f94a] 2054                      movea.l    (a4),a0
[0001f94c] 3028 0010                 move.w     16(a0),d0
[0001f950] 4eb9 0006 4e9a            jsr        vsl_width
[0001f956] 4242                      clr.w      d2
[0001f958] 4241                      clr.w      d1
[0001f95a] 2054                      movea.l    (a4),a0
[0001f95c] 3028 0010                 move.w     16(a0),d0
[0001f960] 4eb9 0006 4f44            jsr        vsl_ends
[0001f966] 41d7                      lea.l      (a7),a0
[0001f968] 7205                      moveq.l    #5,d1
[0001f96a] 2254                      movea.l    (a4),a1
[0001f96c] 3029 0010                 move.w     16(a1),d0
[0001f970] 4eb9 0006 4010            jsr        v_pline
[0001f976] 41d7                      lea.l      (a7),a0
[0001f978] 4241                      clr.w      d1
[0001f97a] 2254                      movea.l    (a4),a1
[0001f97c] 3029 0010                 move.w     16(a1),d0
[0001f980] 4eb9 0006 3f60            jsr        vs_clip
[0001f986] 302a 0008                 move.w     8(a2),d0
[0001f98a] 4fef 0014                 lea.l      20(a7),a7
[0001f98e] 4cdf 140c                 movem.l    (a7)+,d2-d3/a2/a4
[0001f992] 4e75                      rts

IcnCol:
[0001f994] 48e7 3028                 movem.l    d2-d3/a2/a4,-(a7)
[0001f998] 4fef ffec                 lea.l      -20(a7),a7
[0001f99c] 246f 0028                 movea.l    40(a7),a2
[0001f9a0] 362a 001c                 move.w     28(a2),d3
[0001f9a4] 3eaa 0012                 move.w     18(a2),(a7)
[0001f9a8] 3f6a 0014 0002            move.w     20(a2),2(a7)
[0001f9ae] 302a 0016                 move.w     22(a2),d0
[0001f9b2] d057                      add.w      (a7),d0
[0001f9b4] 5340                      subq.w     #1,d0
[0001f9b6] 3f40 0004                 move.w     d0,4(a7)
[0001f9ba] 322a 0018                 move.w     24(a2),d1
[0001f9be] d26f 0002                 add.w      2(a7),d1
[0001f9c2] 5341                      subq.w     #1,d1
[0001f9c4] 3f41 0006                 move.w     d1,6(a7)
[0001f9c8] 49f9 0010 1f12            lea.l      ACSblk,a4
[0001f9ce] 41d7                      lea.l      (a7),a0
[0001f9d0] 7201                      moveq.l    #1,d1
[0001f9d2] 2254                      movea.l    (a4),a1
[0001f9d4] 3029 0010                 move.w     16(a1),d0
[0001f9d8] 4eb9 0006 3f60            jsr        vs_clip
[0001f9de] 3eaa 000a                 move.w     10(a2),(a7)
[0001f9e2] 3f6a 000c 0002            move.w     12(a2),2(a7)
[0001f9e8] 302a 000a                 move.w     10(a2),d0
[0001f9ec] d06a 000e                 add.w      14(a2),d0
[0001f9f0] 5340                      subq.w     #1,d0
[0001f9f2] 3f40 0004                 move.w     d0,4(a7)
[0001f9f6] 322a 000c                 move.w     12(a2),d1
[0001f9fa] d26a 0010                 add.w      16(a2),d1
[0001f9fe] 5341                      subq.w     #1,d1
[0001fa00] 3f41 0006                 move.w     d1,6(a7)
[0001fa04] 2054                      movea.l    (a4),a0
[0001fa06] 3028 0010                 move.w     16(a0),d0
[0001fa0a] 7201                      moveq.l    #1,d1
[0001fa0c] 4eb9 0006 4da0            jsr        vswr_mode
[0001fa12] 4a43                      tst.w      d3
[0001fa14] 6b1e                      bmi.s      IcnCol_1
[0001fa16] 7201                      moveq.l    #1,d1
[0001fa18] 2054                      movea.l    (a4),a0
[0001fa1a] 3028 0010                 move.w     16(a0),d0
[0001fa1e] 4eb9 0006 5390            jsr        vsf_interior
[0001fa24] 3203                      move.w     d3,d1
[0001fa26] 2054                      movea.l    (a4),a0
[0001fa28] 3028 0010                 move.w     16(a0),d0
[0001fa2c] 4eb9 0006 5438            jsr        vsf_color
[0001fa32] 602a                      bra.s      IcnCol_2
IcnCol_1:
[0001fa34] 7202                      moveq.l    #2,d1
[0001fa36] 2054                      movea.l    (a4),a0
[0001fa38] 3028 0010                 move.w     16(a0),d0
[0001fa3c] 4eb9 0006 5390            jsr        vsf_interior
[0001fa42] 7204                      moveq.l    #4,d1
[0001fa44] 2054                      movea.l    (a4),a0
[0001fa46] 3028 0010                 move.w     16(a0),d0
[0001fa4a] 4eb9 0006 53e4            jsr        vsf_style
[0001fa50] 7201                      moveq.l    #1,d1
[0001fa52] 2054                      movea.l    (a4),a0
[0001fa54] 3028 0010                 move.w     16(a0),d0
[0001fa58] 4eb9 0006 5438            jsr        vsf_color
IcnCol_2:
[0001fa5e] 7201                      moveq.l    #1,d1
[0001fa60] 2054                      movea.l    (a4),a0
[0001fa62] 3028 0010                 move.w     16(a0),d0
[0001fa66] 4eb9 0006 548c            jsr        vsf_perimeter
[0001fa6c] 41d7                      lea.l      (a7),a0
[0001fa6e] 2254                      movea.l    (a4),a1
[0001fa70] 3029 0010                 move.w     16(a1),d0
[0001fa74] 4eb9 0006 455e            jsr        v_bar
[0001fa7a] 41d7                      lea.l      (a7),a0
[0001fa7c] 4241                      clr.w      d1
[0001fa7e] 2254                      movea.l    (a4),a1
[0001fa80] 3029 0010                 move.w     16(a1),d0
[0001fa84] 4eb9 0006 3f60            jsr        vs_clip
[0001fa8a] 4240                      clr.w      d0
[0001fa8c] 4fef 0014                 lea.l      20(a7),a7
[0001fa90] 4cdf 140c                 movem.l    (a7)+,d2-d3/a2/a4
[0001fa94] 4e75                      rts

	.data

BUBBLE_01:
[000a0722]                           dc.b 'Die énderungen werden Åbernommen.',0
BUBBLE_02:
[000a0744]                           dc.b 'Die énderungen werden verworfen.',0
BUBBLE_03:
[000a0765]                           dc.b 'Hier kann die Alertbox getestet werden.',0
TEXT_001:
[000a078d]                           dc.b 'Abbruch',0
TEXT_002:
[000a0795]                           dc.b $00
TEXT_003:
[000a0796]                           dc.w $4f4b
[000a0798]                           dc.b $00
TEXT_004:
[000a0799]                           dc.b 'Probe',0
TEXT_01:
[000a079f]                           dc.b ' Alertbox-Editor ',0
TEXT_08:
[000a07b1]                           dc.b 'ALERT-BOX',0
[000a07bb]                           dc.b $00
DATAS_05:
[000a07bc]                           dc.b $00
[000a07bd]                           dc.b $00
[000a07be]                           dc.b $00
[000a07bf]                           dc.b $00
[000a07c0]                           dc.w $02f0
[000a07c2]                           dc.b $00
[000a07c3]                           dc.b $00
[000a07c4]                           dc.b $00
[000a07c5]                           dc.b $00
[000a07c6]                           dc.b $00
[000a07c7]                           dc.b $00
[000a07c8]                           dc.w $7fff
[000a07ca]                           dc.w $ffff
[000a07cc]                           dc.w $fffe
[000a07ce]                           dc.w $4000
[000a07d0]                           dc.b $00
[000a07d1]                           dc.b $00
[000a07d2]                           dc.b $00
[000a07d3]                           dc.b $02
[000a07d4]                           dc.w $5fff
[000a07d6]                           dc.w $ffff
[000a07d8]                           dc.w $fffa
[000a07da]                           dc.w $5fff
[000a07dc]                           dc.w $ffff
[000a07de]                           dc.w $fffa
[000a07e0]                           dc.w $5fff
[000a07e2]                           dc.w $ffff
[000a07e4]                           dc.w $fffa
[000a07e6]                           dc.w $5fff
[000a07e8]                           dc.w $ffff
[000a07ea]                           dc.w $fffa
[000a07ec]                           dc.w $5fff
[000a07ee]                           dc.w $ffff
[000a07f0]                           dc.w $fffa
[000a07f2]                           dc.w $5fff
[000a07f4]                           dc.w $ffff
[000a07f6]                           dc.w $fffa
[000a07f8]                           dc.w $5fff
[000a07fa]                           dc.w $ffff
[000a07fc]                           dc.w $fffa
[000a07fe]                           dc.w $5fff
[000a0800]                           dc.w $ffff
[000a0802]                           dc.w $fffa
[000a0804]                           dc.w $5fff
[000a0806]                           dc.w $ffff
[000a0808]                           dc.w $fffa
[000a080a]                           dc.w $5fff
[000a080c]                           dc.w $ffff
[000a080e]                           dc.w $fffa
[000a0810]                           dc.w $5fff
[000a0812]                           dc.w $ffff
[000a0814]                           dc.w $fffa
[000a0816]                           dc.w $5fff
[000a0818]                           dc.w $ffff
[000a081a]                           dc.w $fffa
[000a081c]                           dc.w $5fff
[000a081e]                           dc.w $ffff
[000a0820]                           dc.w $fffa
[000a0822]                           dc.w $5fff
[000a0824]                           dc.w $ffff
[000a0826]                           dc.w $fffa
[000a0828]                           dc.w $5fff
[000a082a]                           dc.w $ffff
[000a082c]                           dc.w $fffa
[000a082e]                           dc.w $5fff
[000a0830]                           dc.w $ffff
[000a0832]                           dc.w $fffa
[000a0834]                           dc.w $5fff
[000a0836]                           dc.w $ffff
[000a0838]                           dc.w $fffa
[000a083a]                           dc.w $5fc0
[000a083c]                           dc.w $01e0
[000a083e]                           dc.b $00
[000a083f]                           dc.b $fa
[000a0840]                           dc.w $5fdf
[000a0842]                           dc.w $fdef
[000a0844]                           dc.w $fefa
[000a0846]                           dc.w $5fdf
[000a0848]                           dc.w $fdef
[000a084a]                           dc.w $fefa
[000a084c]                           dc.w $5fdf
[000a084e]                           dc.w $fdef
[000a0850]                           dc.w $fefa
[000a0852]                           dc.w $5fc0
[000a0854]                           dc.w $01e0
[000a0856]                           dc.b $00
[000a0857]                           dc.b $fa
[000a0858]                           dc.w $5fff
[000a085a]                           dc.w $ffff
[000a085c]                           dc.w $fffa
[000a085e]                           dc.w $5fff
[000a0860]                           dc.w $ffff
[000a0862]                           dc.w $fffa
[000a0864]                           dc.w $5fff
[000a0866]                           dc.w $ffff
[000a0868]                           dc.w $fffa
[000a086a]                           dc.w $4000
[000a086c]                           dc.b $00
[000a086d]                           dc.b $00
[000a086e]                           dc.b $00
[000a086f]                           dc.b $02
[000a0870]                           dc.w $7fff
[000a0872]                           dc.w $ffff
[000a0874]                           dc.w $fffe
[000a0876]                           dc.b $00
[000a0877]                           dc.b $00
[000a0878]                           dc.b $00
[000a0879]                           dc.b $00
[000a087a]                           dc.b $00
[000a087b]                           dc.b $00
[000a087c]                           dc.b $00
[000a087d]                           dc.b $00
[000a087e]                           dc.b $00
[000a087f]                           dc.b $00
[000a0880]                           dc.b $00
[000a0881]                           dc.b $00
[000a0882]                           dc.w $7fff
[000a0884]                           dc.w $ffff
[000a0886]                           dc.w $fffe
[000a0888]                           dc.w $4000
[000a088a]                           dc.b $00
[000a088b]                           dc.b $00
[000a088c]                           dc.b $00
[000a088d]                           dc.b $02
[000a088e]                           dc.w $5fff
[000a0890]                           dc.w $ffff
[000a0892]                           dc.w $fffa
[000a0894]                           dc.w $5fff
[000a0896]                           dc.w $ffff
[000a0898]                           dc.w $fffa
[000a089a]                           dc.w $5fff
[000a089c]                           dc.w $ffff
[000a089e]                           dc.w $fffa
[000a08a0]                           dc.w $5f3f
[000a08a2]                           dc.w $ffff
[000a08a4]                           dc.w $fffa
[000a08a6]                           dc.w $5e1f
[000a08a8]                           dc.w $ffff
[000a08aa]                           dc.w $fffa
[000a08ac]                           dc.w $5e1f
[000a08ae]                           dc.w $ffff
[000a08b0]                           dc.w $fffa
[000a08b2]                           dc.w $5e1f
[000a08b4]                           dc.w $ffff
[000a08b6]                           dc.w $fffa
[000a08b8]                           dc.w $5e1f
[000a08ba]                           dc.w $ffff
[000a08bc]                           dc.w $fffa
[000a08be]                           dc.w $5e1f
[000a08c0]                           dc.w $ffff
[000a08c2]                           dc.w $fffa
[000a08c4]                           dc.w $5f3f
[000a08c6]                           dc.w $ffff
[000a08c8]                           dc.w $fffa
[000a08ca]                           dc.w $5fff
[000a08cc]                           dc.w $ffff
[000a08ce]                           dc.w $fffa
[000a08d0]                           dc.w $5f3f
[000a08d2]                           dc.w $ffff
[000a08d4]                           dc.w $fffa
[000a08d6]                           dc.w $5e1f
[000a08d8]                           dc.w $ffff
[000a08da]                           dc.w $fffa
[000a08dc]                           dc.w $5e1f
[000a08de]                           dc.w $ffff
[000a08e0]                           dc.w $fffa
[000a08e2]                           dc.w $5f3f
[000a08e4]                           dc.w $ffff
[000a08e6]                           dc.w $fffa
[000a08e8]                           dc.w $5fff
[000a08ea]                           dc.w $ffff
[000a08ec]                           dc.w $fffa
[000a08ee]                           dc.w $5fff
[000a08f0]                           dc.w $ffff
[000a08f2]                           dc.w $fffa
[000a08f4]                           dc.w $5fc0
[000a08f6]                           dc.w $01e0
[000a08f8]                           dc.b $00
[000a08f9]                           dc.b $fa
[000a08fa]                           dc.w $5fdf
[000a08fc]                           dc.w $fdef
[000a08fe]                           dc.w $fefa
[000a0900]                           dc.w $5fdf
[000a0902]                           dc.w $fdef
[000a0904]                           dc.w $fefa
[000a0906]                           dc.w $5fdf
[000a0908]                           dc.w $fdef
[000a090a]                           dc.w $fefa
[000a090c]                           dc.w $5fc0
[000a090e]                           dc.w $01e0
[000a0910]                           dc.b $00
[000a0911]                           dc.b $fa
[000a0912]                           dc.w $5fff
[000a0914]                           dc.w $ffff
[000a0916]                           dc.w $fffa
[000a0918]                           dc.w $5fff
[000a091a]                           dc.w $ffff
[000a091c]                           dc.w $fffa
[000a091e]                           dc.w $5fff
[000a0920]                           dc.w $ffff
[000a0922]                           dc.w $fffa
[000a0924]                           dc.w $4000
[000a0926]                           dc.b $00
[000a0927]                           dc.b $00
[000a0928]                           dc.b $00
[000a0929]                           dc.b $02
[000a092a]                           dc.w $7fff
[000a092c]                           dc.w $ffff
[000a092e]                           dc.w $fffe
[000a0930]                           dc.b $00
[000a0931]                           dc.b $00
[000a0932]                           dc.b $00
[000a0933]                           dc.b $00
[000a0934]                           dc.b $00
[000a0935]                           dc.b $00
[000a0936]                           dc.b $00
[000a0937]                           dc.b $00
[000a0938]                           dc.b $00
[000a0939]                           dc.b $00
[000a093a]                           dc.b $00
[000a093b]                           dc.b $00
[000a093c]                           dc.w $7fff
[000a093e]                           dc.w $ffff
[000a0940]                           dc.w $fffe
[000a0942]                           dc.w $4000
[000a0944]                           dc.b $00
[000a0945]                           dc.b $00
[000a0946]                           dc.b $00
[000a0947]                           dc.b $02
[000a0948]                           dc.w $5fff
[000a094a]                           dc.w $ffff
[000a094c]                           dc.w $fffa
[000a094e]                           dc.w $5fff
[000a0950]                           dc.w $ffff
[000a0952]                           dc.w $fffa
[000a0954]                           dc.w $5fff
[000a0956]                           dc.w $ffff
[000a0958]                           dc.w $fffa
[000a095a]                           dc.w $5f3f
[000a095c]                           dc.w $ffff
[000a095e]                           dc.w $fffa
[000a0960]                           dc.w $5e1f
[000a0962]                           dc.w $ffff
[000a0964]                           dc.w $fffa
[000a0966]                           dc.w $5e1f
[000a0968]                           dc.w $ffff
[000a096a]                           dc.w $fffa
[000a096c]                           dc.w $5e1f
[000a096e]                           dc.w $ffff
[000a0970]                           dc.w $fffa
[000a0972]                           dc.w $5e1f
[000a0974]                           dc.w $ffff
[000a0976]                           dc.w $fffa
[000a0978]                           dc.w $5e1f
[000a097a]                           dc.w $ffff
[000a097c]                           dc.w $fffa
[000a097e]                           dc.w $5f3f
[000a0980]                           dc.w $ffff
[000a0982]                           dc.w $fffa
[000a0984]                           dc.w $5fff
[000a0986]                           dc.w $ffff
[000a0988]                           dc.w $fffa
[000a098a]                           dc.w $5f3f
[000a098c]                           dc.w $ffff
[000a098e]                           dc.w $fffa
[000a0990]                           dc.w $5e1f
[000a0992]                           dc.w $ffff
[000a0994]                           dc.w $fffa
[000a0996]                           dc.w $5e1f
[000a0998]                           dc.w $ffff
[000a099a]                           dc.w $fffa
[000a099c]                           dc.w $5f3f
[000a099e]                           dc.w $ffff
[000a09a0]                           dc.w $fffa
[000a09a2]                           dc.w $5fff
[000a09a4]                           dc.w $ffff
[000a09a6]                           dc.w $fffa
[000a09a8]                           dc.w $5fff
[000a09aa]                           dc.w $ffff
[000a09ac]                           dc.w $fffa
[000a09ae]                           dc.w $5fc0
[000a09b0]                           dc.w $01e0
[000a09b2]                           dc.b $00
[000a09b3]                           dc.b $fa
[000a09b4]                           dc.w $5fdf
[000a09b6]                           dc.w $fdef
[000a09b8]                           dc.w $fefa
[000a09ba]                           dc.w $5fdf
[000a09bc]                           dc.w $fdef
[000a09be]                           dc.w $fefa
[000a09c0]                           dc.w $5fdf
[000a09c2]                           dc.w $fdef
[000a09c4]                           dc.w $fefa
[000a09c6]                           dc.w $5fc0
[000a09c8]                           dc.w $01e0
[000a09ca]                           dc.b $00
[000a09cb]                           dc.b $fa
[000a09cc]                           dc.w $5fff
[000a09ce]                           dc.w $ffff
[000a09d0]                           dc.w $fffa
[000a09d2]                           dc.w $5fff
[000a09d4]                           dc.w $ffff
[000a09d6]                           dc.w $fffa
[000a09d8]                           dc.w $5fff
[000a09da]                           dc.w $ffff
[000a09dc]                           dc.w $fffa
[000a09de]                           dc.w $4000
[000a09e0]                           dc.b $00
[000a09e1]                           dc.b $00
[000a09e2]                           dc.b $00
[000a09e3]                           dc.b $02
[000a09e4]                           dc.w $7fff
[000a09e6]                           dc.w $ffff
[000a09e8]                           dc.w $fffe
[000a09ea]                           dc.b $00
[000a09eb]                           dc.b $00
[000a09ec]                           dc.b $00
[000a09ed]                           dc.b $00
[000a09ee]                           dc.b $00
[000a09ef]                           dc.b $00
[000a09f0]                           dc.b $00
[000a09f1]                           dc.b $00
[000a09f2]                           dc.b $00
[000a09f3]                           dc.b $00
[000a09f4]                           dc.b $00
[000a09f5]                           dc.b $00
[000a09f6]                           dc.w $7fff
[000a09f8]                           dc.w $ffff
[000a09fa]                           dc.w $fffe
[000a09fc]                           dc.w $4000
[000a09fe]                           dc.b $00
[000a09ff]                           dc.b $00
[000a0a00]                           dc.b $00
[000a0a01]                           dc.b $06
[000a0a02]                           dc.w $4000
[000a0a04]                           dc.b $00
[000a0a05]                           dc.b $00
[000a0a06]                           dc.b $00
[000a0a07]                           dc.b $06
[000a0a08]                           dc.w $4000
[000a0a0a]                           dc.b $00
[000a0a0b]                           dc.b $00
[000a0a0c]                           dc.b $00
[000a0a0d]                           dc.b $06
[000a0a0e]                           dc.w $4000
[000a0a10]                           dc.b $00
[000a0a11]                           dc.b $00
[000a0a12]                           dc.b $00
[000a0a13]                           dc.b $06
[000a0a14]                           dc.w $4000
[000a0a16]                           dc.b $00
[000a0a17]                           dc.b $00
[000a0a18]                           dc.b $00
[000a0a19]                           dc.b $06
[000a0a1a]                           dc.w $4000
[000a0a1c]                           dc.w $f3cf
[000a0a1e]                           dc.w $cfc6
[000a0a20]                           dc.w $4000
[000a0a22]                           dc.b $00
[000a0a23]                           dc.b $00
[000a0a24]                           dc.b $00
[000a0a25]                           dc.b $06
[000a0a26]                           dc.w $4000
[000a0a28]                           dc.b $00
[000a0a29]                           dc.b $00
[000a0a2a]                           dc.b $00
[000a0a2b]                           dc.b $06
[000a0a2c]                           dc.w $4000
[000a0a2e]                           dc.w $fcfc
[000a0a30]                           dc.w $e706
[000a0a32]                           dc.w $4000
[000a0a34]                           dc.b $00
[000a0a35]                           dc.b $00
[000a0a36]                           dc.b $00
[000a0a37]                           dc.b $06
[000a0a38]                           dc.w $4000
[000a0a3a]                           dc.b $00
[000a0a3b]                           dc.b $00
[000a0a3c]                           dc.b $00
[000a0a3d]                           dc.b $06
[000a0a3e]                           dc.w $4000
[000a0a40]                           dc.w $f3f3
[000a0a42]                           dc.w $f386
[000a0a44]                           dc.w $4000
[000a0a46]                           dc.b $00
[000a0a47]                           dc.b $00
[000a0a48]                           dc.b $00
[000a0a49]                           dc.b $06
[000a0a4a]                           dc.w $4000
[000a0a4c]                           dc.b $00
[000a0a4d]                           dc.b $00
[000a0a4e]                           dc.b $00
[000a0a4f]                           dc.b $06
[000a0a50]                           dc.w $4000
[000a0a52]                           dc.w $fcfc
[000a0a54]                           dc.w $f006
[000a0a56]                           dc.w $4000
[000a0a58]                           dc.b $00
[000a0a59]                           dc.b $00
[000a0a5a]                           dc.b $00
[000a0a5b]                           dc.b $06
[000a0a5c]                           dc.w $4000
[000a0a5e]                           dc.b $00
[000a0a5f]                           dc.b $00
[000a0a60]                           dc.b $00
[000a0a61]                           dc.b $06
[000a0a62]                           dc.w $4000
[000a0a64]                           dc.b $00
[000a0a65]                           dc.b $00
[000a0a66]                           dc.b $00
[000a0a67]                           dc.b $06
[000a0a68]                           dc.w $4000
[000a0a6a]                           dc.w $0200
[000a0a6c]                           dc.w $0106
[000a0a6e]                           dc.w $4000
[000a0a70]                           dc.w $0200
[000a0a72]                           dc.w $0106
[000a0a74]                           dc.w $4007
[000a0a76]                           dc.w $f203
[000a0a78]                           dc.w $f906
[000a0a7a]                           dc.w $4000
[000a0a7c]                           dc.w $0200
[000a0a7e]                           dc.w $0106
[000a0a80]                           dc.w $403f
[000a0a82]                           dc.w $fe1f
[000a0a84]                           dc.w $ff06
[000a0a86]                           dc.w $4000
[000a0a88]                           dc.b $00
[000a0a89]                           dc.b $00
[000a0a8a]                           dc.b $00
[000a0a8b]                           dc.b $06
[000a0a8c]                           dc.w $4000
[000a0a8e]                           dc.b $00
[000a0a8f]                           dc.b $00
[000a0a90]                           dc.b $00
[000a0a91]                           dc.b $06
[000a0a92]                           dc.w $4000
[000a0a94]                           dc.b $00
[000a0a95]                           dc.b $00
[000a0a96]                           dc.b $00
[000a0a97]                           dc.b $06
[000a0a98]                           dc.w $7fff
[000a0a9a]                           dc.w $ffff
[000a0a9c]                           dc.w $fffe
[000a0a9e]                           dc.w $7fff
[000a0aa0]                           dc.w $ffff
[000a0aa2]                           dc.w $fffe
[000a0aa4]                           dc.b $00
[000a0aa5]                           dc.b $00
[000a0aa6]                           dc.b $00
[000a0aa7]                           dc.b $00
[000a0aa8]                           dc.b $00
[000a0aa9]                           dc.b $00
DATAS_06:
[000a0aaa]                           dc.b $00
[000a0aab]                           dc.b $00
[000a0aac]                           dc.b $00
[000a0aad]                           dc.b $00
[000a0aae]                           dc.b $00
[000a0aaf]                           dc.b $00
[000a0ab0]                           dc.w $7fff
[000a0ab2]                           dc.w $ffff
[000a0ab4]                           dc.w $fffe
[000a0ab6]                           dc.w $7fff
[000a0ab8]                           dc.w $ffff
[000a0aba]                           dc.w $fffe
[000a0abc]                           dc.w $7fff
[000a0abe]                           dc.w $ffff
[000a0ac0]                           dc.w $fffe
[000a0ac2]                           dc.w $7fff
[000a0ac4]                           dc.w $ffff
[000a0ac6]                           dc.w $fffe
[000a0ac8]                           dc.w $7fff
[000a0aca]                           dc.w $ffff
[000a0acc]                           dc.w $fffe
[000a0ace]                           dc.w $7fff
[000a0ad0]                           dc.w $ffff
[000a0ad2]                           dc.w $fffe
[000a0ad4]                           dc.w $7fff
[000a0ad6]                           dc.w $ffff
[000a0ad8]                           dc.w $fffe
[000a0ada]                           dc.w $7fff
[000a0adc]                           dc.w $ffff
[000a0ade]                           dc.w $fffe
[000a0ae0]                           dc.w $7fff
[000a0ae2]                           dc.w $ffff
[000a0ae4]                           dc.w $fffe
[000a0ae6]                           dc.w $7fff
[000a0ae8]                           dc.w $ffff
[000a0aea]                           dc.w $fffe
[000a0aec]                           dc.w $7fff
[000a0aee]                           dc.w $ffff
[000a0af0]                           dc.w $fffe
[000a0af2]                           dc.w $7fff
[000a0af4]                           dc.w $ffff
[000a0af6]                           dc.w $fffe
[000a0af8]                           dc.w $7fff
[000a0afa]                           dc.w $ffff
[000a0afc]                           dc.w $fffe
[000a0afe]                           dc.w $7fff
[000a0b00]                           dc.w $ffff
[000a0b02]                           dc.w $fffe
[000a0b04]                           dc.w $7fff
[000a0b06]                           dc.w $ffff
[000a0b08]                           dc.w $fffe
[000a0b0a]                           dc.w $7fff
[000a0b0c]                           dc.w $ffff
[000a0b0e]                           dc.w $fffe
[000a0b10]                           dc.w $7fff
[000a0b12]                           dc.w $ffff
[000a0b14]                           dc.w $fffe
[000a0b16]                           dc.w $7fff
[000a0b18]                           dc.w $ffff
[000a0b1a]                           dc.w $fffe
[000a0b1c]                           dc.w $7fff
[000a0b1e]                           dc.w $ffff
[000a0b20]                           dc.w $fffe
[000a0b22]                           dc.w $7fff
[000a0b24]                           dc.w $ffff
[000a0b26]                           dc.w $fffe
[000a0b28]                           dc.w $7fff
[000a0b2a]                           dc.w $ffff
[000a0b2c]                           dc.w $fffe
[000a0b2e]                           dc.w $7fff
[000a0b30]                           dc.w $ffff
[000a0b32]                           dc.w $fffe
[000a0b34]                           dc.w $7fff
[000a0b36]                           dc.w $ffff
[000a0b38]                           dc.w $fffe
[000a0b3a]                           dc.w $7fff
[000a0b3c]                           dc.w $ffff
[000a0b3e]                           dc.w $fffe
[000a0b40]                           dc.w $7fff
[000a0b42]                           dc.w $ffff
[000a0b44]                           dc.w $fffe
[000a0b46]                           dc.w $7fff
[000a0b48]                           dc.w $ffff
[000a0b4a]                           dc.w $fffe
[000a0b4c]                           dc.w $7fff
[000a0b4e]                           dc.w $ffff
[000a0b50]                           dc.w $fffe
[000a0b52]                           dc.w $7fff
[000a0b54]                           dc.w $ffff
[000a0b56]                           dc.w $fffe
[000a0b58]                           dc.w $7fff
[000a0b5a]                           dc.w $ffff
[000a0b5c]                           dc.w $fffe
[000a0b5e]                           dc.b $00
[000a0b5f]                           dc.b $00
[000a0b60]                           dc.b $00
[000a0b61]                           dc.b $00
[000a0b62]                           dc.b $00
[000a0b63]                           dc.b $00
A_3DBUTTON01:
[000a0b64] 0005a4e2                  dc.l A_3Dbutton
[000a0b68]                           dc.w $29c1
[000a0b6a]                           dc.w $0178
[000a0b6c] 00059318                  dc.l Auo_string
[000a0b70] 000a0799                  dc.l TEXT_004
[000a0b74]                           dc.b $00
[000a0b75]                           dc.b $00
[000a0b76]                           dc.b $00
[000a0b77]                           dc.b $00
[000a0b78]                           dc.b $00
[000a0b79]                           dc.b $00
[000a0b7a]                           dc.b $00
[000a0b7b]                           dc.b $00
[000a0b7c] 000a0765                  dc.l BUBBLE_03
[000a0b80]                           dc.b $00
[000a0b81]                           dc.b $00
[000a0b82]                           dc.b $00
[000a0b83]                           dc.b $00
A_3DBUTTON02:
[000a0b84] 0005a4e2                  dc.l A_3Dbutton
[000a0b88]                           dc.w $29f1
[000a0b8a]                           dc.w $0178
[000a0b8c] 00059318                  dc.l Auo_string
[000a0b90]                           dc.b $00
[000a0b91]                           dc.b $00
[000a0b92]                           dc.b $00
[000a0b93]                           dc.b $00
[000a0b94]                           dc.b $00
[000a0b95]                           dc.b $00
[000a0b96]                           dc.b $00
[000a0b97]                           dc.b $00
[000a0b98]                           dc.b $00
[000a0b99]                           dc.b $00
[000a0b9a]                           dc.b $00
[000a0b9b]                           dc.b $00
[000a0b9c]                           dc.b $00
[000a0b9d]                           dc.b $00
[000a0b9e]                           dc.b $00
[000a0b9f]                           dc.b $00
[000a0ba0]                           dc.b $00
[000a0ba1]                           dc.b $00
[000a0ba2]                           dc.b $00
[000a0ba3]                           dc.b $00
A_3DBUTTON04:
[000a0ba4] 0005a4e2                  dc.l A_3Dbutton
[000a0ba8]                           dc.w $29c1
[000a0baa]                           dc.w $0178
[000a0bac] 00059318                  dc.l Auo_string
[000a0bb0] 000a0796                  dc.l TEXT_003
[000a0bb4]                           dc.b $00
[000a0bb5]                           dc.b $00
[000a0bb6]                           dc.b $00
[000a0bb7]                           dc.b $00
[000a0bb8]                           dc.b $00
[000a0bb9]                           dc.b $00
[000a0bba]                           dc.b $00
[000a0bbb]                           dc.b $00
[000a0bbc] 000a0722                  dc.l BUBBLE_01
[000a0bc0]                           dc.b $00
[000a0bc1]                           dc.b $00
[000a0bc2]                           dc.b $00
[000a0bc3]                           dc.b $00
A_3DBUTTON05:
[000a0bc4] 0005a4e2                  dc.l A_3Dbutton
[000a0bc8]                           dc.w $29c1
[000a0bca]                           dc.w $0178
[000a0bcc] 00059318                  dc.l Auo_string
[000a0bd0] 000a078d                  dc.l TEXT_001
[000a0bd4]                           dc.b $00
[000a0bd5]                           dc.b $00
[000a0bd6]                           dc.b $00
[000a0bd7]                           dc.b $00
[000a0bd8]                           dc.b $00
[000a0bd9]                           dc.b $00
[000a0bda]                           dc.b $00
[000a0bdb]                           dc.b $00
[000a0bdc] 000a0744                  dc.l BUBBLE_02
[000a0be0]                           dc.b $00
[000a0be1]                           dc.b $00
[000a0be2]                           dc.b $00
[000a0be3]                           dc.b $00
A_BOXED01:
[000a0be4] 0005e9d2                  dc.l A_boxed
[000a0be8]                           dc.w $9038
[000a0bea]                           dc.w $1e12
[000a0bec] 0005e010                  dc.l Auo_boxed
[000a0bf0]                           dc.b $00
[000a0bf1]                           dc.b $00
[000a0bf2]                           dc.b $00
[000a0bf3]                           dc.b $00
[000a0bf4]                           dc.b $00
[000a0bf5]                           dc.b $00
[000a0bf6]                           dc.b $00
[000a0bf7]                           dc.b $00
[000a0bf8]                           dc.b $00
[000a0bf9]                           dc.b $00
[000a0bfa]                           dc.b $00
[000a0bfb]                           dc.b $00
[000a0bfc]                           dc.b $00
[000a0bfd]                           dc.b $00
[000a0bfe]                           dc.b $00
[000a0bff]                           dc.b $00
[000a0c00]                           dc.b $00
[000a0c01]                           dc.b $00
[000a0c02]                           dc.b $00
[000a0c03]                           dc.b $00
A_BOXED03:
[000a0c04] 0005e9d2                  dc.l A_boxed
[000a0c08]                           dc.w $1138
[000a0c0a]                           dc.w $0a12
[000a0c0c] 0005e010                  dc.l Auo_boxed
[000a0c10]                           dc.b $00
[000a0c11]                           dc.b $00
[000a0c12]                           dc.b $00
[000a0c13]                           dc.b $00
[000a0c14]                           dc.b $00
[000a0c15]                           dc.b $00
[000a0c16]                           dc.b $00
[000a0c17]                           dc.b $00
[000a0c18]                           dc.b $00
[000a0c19]                           dc.b $00
[000a0c1a]                           dc.b $00
[000a0c1b]                           dc.b $00
[000a0c1c]                           dc.b $00
[000a0c1d]                           dc.b $00
[000a0c1e]                           dc.b $00
[000a0c1f]                           dc.b $00
[000a0c20]                           dc.b $00
[000a0c21]                           dc.b $00
[000a0c22]                           dc.b $00
[000a0c23]                           dc.b $00
_C4_IC_ALERT:
[000a0c24]                           dc.b $00
[000a0c25]                           dc.b $04
[000a0c26] 000a07c2                  dc.l $000a07c2 ; no symbol found
[000a0c2a] 000a0aaa                  dc.l DATAS_06
[000a0c2e]                           dc.b $00
[000a0c2f]                           dc.b $00
[000a0c30]                           dc.b $00
[000a0c31]                           dc.b $00
[000a0c32]                           dc.b $00
[000a0c33]                           dc.b $00
[000a0c34]                           dc.b $00
[000a0c35]                           dc.b $00
[000a0c36]                           dc.b $00
[000a0c37]                           dc.b $00
[000a0c38]                           dc.b $00
[000a0c39]                           dc.b $00
_MSK_IC_ALERT:
[000a0c3a]                           dc.b $00
[000a0c3b]                           dc.b $00
[000a0c3c]                           dc.b $00
[000a0c3d]                           dc.b $00
[000a0c3e]                           dc.b $00
[000a0c3f]                           dc.b $00
[000a0c40]                           dc.w $7fff
[000a0c42]                           dc.w $ffff
[000a0c44]                           dc.w $fffe
[000a0c46]                           dc.w $7fff
[000a0c48]                           dc.w $ffff
[000a0c4a]                           dc.w $fffe
[000a0c4c]                           dc.w $7fff
[000a0c4e]                           dc.w $ffff
[000a0c50]                           dc.w $fffe
[000a0c52]                           dc.w $7fff
[000a0c54]                           dc.w $ffff
[000a0c56]                           dc.w $fffe
[000a0c58]                           dc.w $7fff
[000a0c5a]                           dc.w $ffff
[000a0c5c]                           dc.w $fffe
[000a0c5e]                           dc.w $7fff
[000a0c60]                           dc.w $ffff
[000a0c62]                           dc.w $fffe
[000a0c64]                           dc.w $7fff
[000a0c66]                           dc.w $ffff
[000a0c68]                           dc.w $fffe
[000a0c6a]                           dc.w $7fff
[000a0c6c]                           dc.w $ffff
[000a0c6e]                           dc.w $fffe
[000a0c70]                           dc.w $7fff
[000a0c72]                           dc.w $ffff
[000a0c74]                           dc.w $fffe
[000a0c76]                           dc.w $7fff
[000a0c78]                           dc.w $ffff
[000a0c7a]                           dc.w $fffe
[000a0c7c]                           dc.w $7fff
[000a0c7e]                           dc.w $ffff
[000a0c80]                           dc.w $fffe
[000a0c82]                           dc.w $7fff
[000a0c84]                           dc.w $ffff
[000a0c86]                           dc.w $fffe
[000a0c88]                           dc.w $7fff
[000a0c8a]                           dc.w $ffff
[000a0c8c]                           dc.w $fffe
[000a0c8e]                           dc.w $7fff
[000a0c90]                           dc.w $ffff
[000a0c92]                           dc.w $fffe
[000a0c94]                           dc.w $7fff
[000a0c96]                           dc.w $ffff
[000a0c98]                           dc.w $fffe
[000a0c9a]                           dc.w $7fff
[000a0c9c]                           dc.w $ffff
[000a0c9e]                           dc.w $fffe
[000a0ca0]                           dc.w $7fff
[000a0ca2]                           dc.w $ffff
[000a0ca4]                           dc.w $fffe
[000a0ca6]                           dc.w $7fff
[000a0ca8]                           dc.w $ffff
[000a0caa]                           dc.w $fffe
[000a0cac]                           dc.w $7fff
[000a0cae]                           dc.w $ffff
[000a0cb0]                           dc.w $fffe
[000a0cb2]                           dc.w $7fff
[000a0cb4]                           dc.w $ffff
[000a0cb6]                           dc.w $fffe
[000a0cb8]                           dc.w $7fff
[000a0cba]                           dc.w $ffff
[000a0cbc]                           dc.w $fffe
[000a0cbe]                           dc.w $7fff
[000a0cc0]                           dc.w $ffff
[000a0cc2]                           dc.w $fffe
[000a0cc4]                           dc.w $7fff
[000a0cc6]                           dc.w $ffff
[000a0cc8]                           dc.w $fffe
[000a0cca]                           dc.w $7fff
[000a0ccc]                           dc.w $ffff
[000a0cce]                           dc.w $fffe
[000a0cd0]                           dc.w $7fff
[000a0cd2]                           dc.w $ffff
[000a0cd4]                           dc.w $fffe
[000a0cd6]                           dc.w $7fff
[000a0cd8]                           dc.w $ffff
[000a0cda]                           dc.w $fffe
[000a0cdc]                           dc.w $7fff
[000a0cde]                           dc.w $ffff
[000a0ce0]                           dc.w $fffe
[000a0ce2]                           dc.w $7fff
[000a0ce4]                           dc.w $ffff
[000a0ce6]                           dc.w $fffe
[000a0ce8]                           dc.w $7fff
[000a0cea]                           dc.w $ffff
[000a0cec]                           dc.w $fffe
[000a0cee]                           dc.b $00
[000a0cef]                           dc.b $00
[000a0cf0]                           dc.b $00
[000a0cf1]                           dc.b $00
[000a0cf2]                           dc.b $00
[000a0cf3]                           dc.b $00
_DAT_IC_ALERT:
[000a0cf4]                           dc.b $00
[000a0cf5]                           dc.b $00
[000a0cf6]                           dc.b $00
[000a0cf7]                           dc.b $00
[000a0cf8]                           dc.b $00
[000a0cf9]                           dc.b $00
[000a0cfa]                           dc.w $7fff
[000a0cfc]                           dc.w $ffff
[000a0cfe]                           dc.w $fffe
[000a0d00]                           dc.w $4000
[000a0d02]                           dc.b $00
[000a0d03]                           dc.b $00
[000a0d04]                           dc.b $00
[000a0d05]                           dc.b $02
[000a0d06]                           dc.w $5fff
[000a0d08]                           dc.w $ffff
[000a0d0a]                           dc.w $fffa
[000a0d0c]                           dc.w $5fff
[000a0d0e]                           dc.w $ffff
[000a0d10]                           dc.w $fffa
[000a0d12]                           dc.w $5800
[000a0d14]                           dc.b $00
[000a0d15]                           dc.b $00
[000a0d16]                           dc.b $00
[000a0d17]                           dc.b $1a
[000a0d18]                           dc.w $58c0
[000a0d1a]                           dc.b $00
[000a0d1b]                           dc.b $00
[000a0d1c]                           dc.b $00
[000a0d1d]                           dc.b $1a
[000a0d1e]                           dc.w $59e0
[000a0d20]                           dc.w $f3cf
[000a0d22]                           dc.w $cfda
[000a0d24]                           dc.w $59e0
[000a0d26]                           dc.b $00
[000a0d27]                           dc.b $00
[000a0d28]                           dc.b $00
[000a0d29]                           dc.b $1a
[000a0d2a]                           dc.w $59e0
[000a0d2c]                           dc.b $00
[000a0d2d]                           dc.b $00
[000a0d2e]                           dc.b $00
[000a0d2f]                           dc.b $1a
[000a0d30]                           dc.w $59e0
[000a0d32]                           dc.w $fcfc
[000a0d34]                           dc.w $e71a
[000a0d36]                           dc.w $59e0
[000a0d38]                           dc.b $00
[000a0d39]                           dc.b $00
[000a0d3a]                           dc.b $00
[000a0d3b]                           dc.b $1a
[000a0d3c]                           dc.w $58c0
[000a0d3e]                           dc.b $00
[000a0d3f]                           dc.b $00
[000a0d40]                           dc.b $00
[000a0d41]                           dc.b $1a
[000a0d42]                           dc.w $5800
[000a0d44]                           dc.w $f3f3
[000a0d46]                           dc.w $f39a
[000a0d48]                           dc.w $58c0
[000a0d4a]                           dc.b $00
[000a0d4b]                           dc.b $00
[000a0d4c]                           dc.b $00
[000a0d4d]                           dc.b $1a
[000a0d4e]                           dc.w $59e0
[000a0d50]                           dc.b $00
[000a0d51]                           dc.b $00
[000a0d52]                           dc.b $00
[000a0d53]                           dc.b $1a
[000a0d54]                           dc.w $59e0
[000a0d56]                           dc.w $fcfc
[000a0d58]                           dc.w $f01a
[000a0d5a]                           dc.w $58c0
[000a0d5c]                           dc.b $00
[000a0d5d]                           dc.b $00
[000a0d5e]                           dc.b $00
[000a0d5f]                           dc.b $1a
[000a0d60]                           dc.w $5800
[000a0d62]                           dc.b $00
[000a0d63]                           dc.b $00
[000a0d64]                           dc.b $00
[000a0d65]                           dc.b $1a
[000a0d66]                           dc.w $5800
[000a0d68]                           dc.b $00
[000a0d69]                           dc.b $00
[000a0d6a]                           dc.b $00
[000a0d6b]                           dc.b $1a
[000a0d6c]                           dc.w $583f
[000a0d6e]                           dc.w $fe1f
[000a0d70]                           dc.w $ff1a
[000a0d72]                           dc.w $5820
[000a0d74]                           dc.w $0210
[000a0d76]                           dc.w $011a
[000a0d78]                           dc.w $5827
[000a0d7a]                           dc.w $f213
[000a0d7c]                           dc.w $f91a
[000a0d7e]                           dc.w $5820
[000a0d80]                           dc.w $0210
[000a0d82]                           dc.w $011a
[000a0d84]                           dc.w $583f
[000a0d86]                           dc.w $fe1f
[000a0d88]                           dc.w $ff1a
[000a0d8a]                           dc.w $5800
[000a0d8c]                           dc.b $00
[000a0d8d]                           dc.b $00
[000a0d8e]                           dc.b $00
[000a0d8f]                           dc.b $1a
[000a0d90]                           dc.w $5fff
[000a0d92]                           dc.w $ffff
[000a0d94]                           dc.w $fffa
[000a0d96]                           dc.w $5fff
[000a0d98]                           dc.w $ffff
[000a0d9a]                           dc.w $fffa
[000a0d9c]                           dc.w $4000
[000a0d9e]                           dc.b $00
[000a0d9f]                           dc.b $00
[000a0da0]                           dc.b $00
[000a0da1]                           dc.b $02
[000a0da2]                           dc.w $7fff
[000a0da4]                           dc.w $ffff
[000a0da6]                           dc.w $fffe
[000a0da8]                           dc.b $00
[000a0da9]                           dc.b $00
[000a0daa]                           dc.b $00
[000a0dab]                           dc.b $00
[000a0dac]                           dc.b $00
[000a0dad]                           dc.b $00
IC_ALERT:
[000a0dae] 000a0c3a                  dc.l _MSK_IC_ALERT
[000a0db2] 000a0cf4                  dc.l _DAT_IC_ALERT
[000a0db6] 000a07b1                  dc.l TEXT_08
[000a0dba]                           dc.w $1000
[000a0dbc]                           dc.b $00
[000a0dbd]                           dc.b $00
[000a0dbe]                           dc.b $00
[000a0dbf]                           dc.b $00
[000a0dc0]                           dc.b $00
[000a0dc1]                           dc.b $0c
[000a0dc2]                           dc.b $00
[000a0dc3]                           dc.b $00
[000a0dc4]                           dc.b $00
[000a0dc5]                           dc.b $30
[000a0dc6]                           dc.b $00
[000a0dc7]                           dc.b $1f
[000a0dc8]                           dc.b $00
[000a0dc9]                           dc.b $00
[000a0dca]                           dc.b $00
[000a0dcb]                           dc.b $20
[000a0dcc]                           dc.b $00
[000a0dcd]                           dc.b $48
[000a0dce]                           dc.b $00
[000a0dcf]                           dc.b $08
[000a0dd0] 000a0c24                  dc.l _C4_IC_ALERT
_IMG_IM_EXCLAM:
[000a0dd4]                           dc.b $00
[000a0dd5]                           dc.b $03
[000a0dd6]                           dc.w $c000
[000a0dd8]                           dc.b $00
[000a0dd9]                           dc.b $06
[000a0dda]                           dc.w $6000
[000a0ddc]                           dc.b $00
[000a0ddd]                           dc.b $0d
[000a0dde]                           dc.w $b000
[000a0de0]                           dc.b $00
[000a0de1]                           dc.b $1b
[000a0de2]                           dc.w $d800
[000a0de4]                           dc.b $00
[000a0de5]                           dc.b $37
[000a0de6]                           dc.w $ec00
[000a0de8]                           dc.b $00
[000a0de9]                           dc.b $6f
[000a0dea]                           dc.w $f600
[000a0dec]                           dc.b $00
[000a0ded]                           dc.b $df
[000a0dee]                           dc.w $fb00
[000a0df0]                           dc.w $01bc
[000a0df2]                           dc.w $3d80
[000a0df4]                           dc.w $037c
[000a0df6]                           dc.w $3ec0
[000a0df8]                           dc.w $06fc
[000a0dfa]                           dc.w $3f60
[000a0dfc]                           dc.w $0dfc
[000a0dfe]                           dc.w $3fb0
[000a0e00]                           dc.w $1bfc
[000a0e02]                           dc.w $3fd8
[000a0e04]                           dc.w $37fc
[000a0e06]                           dc.w $3fec
[000a0e08]                           dc.w $6ffc
[000a0e0a]                           dc.w $3ff6
[000a0e0c]                           dc.w $dffc
[000a0e0e]                           dc.w $3ffb
[000a0e10]                           dc.w $bffc
[000a0e12]                           dc.w $3ffd
[000a0e14]                           dc.w $bffc
[000a0e16]                           dc.w $3ffd
[000a0e18]                           dc.w $dffc
[000a0e1a]                           dc.w $3ffb
[000a0e1c]                           dc.w $6ffc
[000a0e1e]                           dc.w $3ff6
[000a0e20]                           dc.w $37fc
[000a0e22]                           dc.w $3fec
[000a0e24]                           dc.w $1bff
[000a0e26]                           dc.w $ffd8
[000a0e28]                           dc.w $0dff
[000a0e2a]                           dc.w $ffb0
[000a0e2c]                           dc.w $06fc
[000a0e2e]                           dc.w $3f60
[000a0e30]                           dc.w $037c
[000a0e32]                           dc.w $3ec0
[000a0e34]                           dc.w $01bc
[000a0e36]                           dc.w $3d80
[000a0e38]                           dc.b $00
[000a0e39]                           dc.b $dc
[000a0e3a]                           dc.w $3b00
[000a0e3c]                           dc.b $00
[000a0e3d]                           dc.b $6f
[000a0e3e]                           dc.w $f600
[000a0e40]                           dc.b $00
[000a0e41]                           dc.b $37
[000a0e42]                           dc.w $ec00
[000a0e44]                           dc.b $00
[000a0e45]                           dc.b $1b
[000a0e46]                           dc.w $d800
[000a0e48]                           dc.b $00
[000a0e49]                           dc.b $0d
[000a0e4a]                           dc.w $b000
[000a0e4c]                           dc.b $00
[000a0e4d]                           dc.b $06
[000a0e4e]                           dc.w $6000
[000a0e50]                           dc.b $00
[000a0e51]                           dc.b $03
[000a0e52]                           dc.w $c000
IM_EXCLAM:
[000a0e54] 000a0dd4                  dc.l _IMG_IM_EXCLAM
[000a0e58]                           dc.b $00
[000a0e59]                           dc.b $04
[000a0e5a]                           dc.b $00
[000a0e5b]                           dc.b $20
[000a0e5c]                           dc.b $00
[000a0e5d]                           dc.b $00
[000a0e5e]                           dc.b $00
[000a0e5f]                           dc.b $00
[000a0e60]                           dc.b $00
[000a0e61]                           dc.b $01
_IMG_IM_NONE:
[000a0e62]                           dc.w $9249
[000a0e64]                           dc.w $2492
[000a0e66]                           dc.b $00
[000a0e67]                           dc.b $00
[000a0e68]                           dc.b $00
[000a0e69]                           dc.b $00
[000a0e6a]                           dc.b $00
[000a0e6b]                           dc.b $00
[000a0e6c]                           dc.b $00
[000a0e6d]                           dc.b $00
[000a0e6e]                           dc.w $8000
[000a0e70]                           dc.b $00
[000a0e71]                           dc.b $02
[000a0e72]                           dc.b $00
[000a0e73]                           dc.b $00
[000a0e74]                           dc.b $00
[000a0e75]                           dc.b $00
[000a0e76]                           dc.b $00
[000a0e77]                           dc.b $00
[000a0e78]                           dc.b $00
[000a0e79]                           dc.b $00
[000a0e7a]                           dc.w $8000
[000a0e7c]                           dc.b $00
[000a0e7d]                           dc.b $02
[000a0e7e]                           dc.b $00
[000a0e7f]                           dc.b $00
[000a0e80]                           dc.b $00
[000a0e81]                           dc.b $00
[000a0e82]                           dc.b $00
[000a0e83]                           dc.b $00
[000a0e84]                           dc.b $00
[000a0e85]                           dc.b $00
[000a0e86]                           dc.w $8000
[000a0e88]                           dc.b $00
[000a0e89]                           dc.b $02
[000a0e8a]                           dc.b $00
[000a0e8b]                           dc.b $00
[000a0e8c]                           dc.b $00
[000a0e8d]                           dc.b $00
[000a0e8e]                           dc.b $00
[000a0e8f]                           dc.b $00
[000a0e90]                           dc.b $00
[000a0e91]                           dc.b $00
[000a0e92]                           dc.w $8000
[000a0e94]                           dc.b $00
[000a0e95]                           dc.b $02
[000a0e96]                           dc.b $00
[000a0e97]                           dc.b $00
[000a0e98]                           dc.b $00
[000a0e99]                           dc.b $00
[000a0e9a]                           dc.b $00
[000a0e9b]                           dc.b $00
[000a0e9c]                           dc.b $00
[000a0e9d]                           dc.b $00
[000a0e9e]                           dc.w $8000
[000a0ea0]                           dc.b $00
[000a0ea1]                           dc.b $02
[000a0ea2]                           dc.b $00
[000a0ea3]                           dc.b $00
[000a0ea4]                           dc.b $00
[000a0ea5]                           dc.b $00
[000a0ea6]                           dc.b $00
[000a0ea7]                           dc.b $00
[000a0ea8]                           dc.b $00
[000a0ea9]                           dc.b $00
[000a0eaa]                           dc.w $8000
[000a0eac]                           dc.b $00
[000a0ead]                           dc.b $02
[000a0eae]                           dc.b $00
[000a0eaf]                           dc.b $00
[000a0eb0]                           dc.b $00
[000a0eb1]                           dc.b $00
[000a0eb2]                           dc.b $00
[000a0eb3]                           dc.b $00
[000a0eb4]                           dc.b $00
[000a0eb5]                           dc.b $00
[000a0eb6]                           dc.w $8000
[000a0eb8]                           dc.b $00
[000a0eb9]                           dc.b $02
[000a0eba]                           dc.b $00
[000a0ebb]                           dc.b $00
[000a0ebc]                           dc.b $00
[000a0ebd]                           dc.b $00
[000a0ebe]                           dc.b $00
[000a0ebf]                           dc.b $00
[000a0ec0]                           dc.b $00
[000a0ec1]                           dc.b $00
[000a0ec2]                           dc.w $8000
[000a0ec4]                           dc.b $00
[000a0ec5]                           dc.b $02
[000a0ec6]                           dc.b $00
[000a0ec7]                           dc.b $00
[000a0ec8]                           dc.b $00
[000a0ec9]                           dc.b $00
[000a0eca]                           dc.b $00
[000a0ecb]                           dc.b $00
[000a0ecc]                           dc.b $00
[000a0ecd]                           dc.b $00
[000a0ece]                           dc.w $8000
[000a0ed0]                           dc.b $00
[000a0ed1]                           dc.b $02
[000a0ed2]                           dc.b $00
[000a0ed3]                           dc.b $00
[000a0ed4]                           dc.b $00
[000a0ed5]                           dc.b $00
[000a0ed6]                           dc.b $00
[000a0ed7]                           dc.b $00
[000a0ed8]                           dc.b $00
[000a0ed9]                           dc.b $00
[000a0eda]                           dc.w $9249
[000a0edc]                           dc.w $2492
[000a0ede]                           dc.b $00
[000a0edf]                           dc.b $00
[000a0ee0]                           dc.b $00
[000a0ee1]                           dc.b $00
IM_NONE:
[000a0ee2] 000a0e62                  dc.l _IMG_IM_NONE
[000a0ee6]                           dc.b $00
[000a0ee7]                           dc.b $04
[000a0ee8]                           dc.b $00
[000a0ee9]                           dc.b $20
[000a0eea]                           dc.b $00
[000a0eeb]                           dc.b $00
[000a0eec]                           dc.b $00
[000a0eed]                           dc.b $00
[000a0eee]                           dc.b $00
[000a0eef]                           dc.b $01
_IMG_IM_QUEST:
[000a0ef0]                           dc.w $3fff
[000a0ef2]                           dc.w $fffc
[000a0ef4]                           dc.w $c000
[000a0ef6]                           dc.b $00
[000a0ef7]                           dc.b $03
[000a0ef8]                           dc.w $9fff
[000a0efa]                           dc.w $fff9
[000a0efc]                           dc.w $bfff
[000a0efe]                           dc.w $fffd
[000a0f00]                           dc.w $dff8
[000a0f02]                           dc.w $3ffb
[000a0f04]                           dc.w $5fe0
[000a0f06]                           dc.w $0ffa
[000a0f08]                           dc.w $6fc0
[000a0f0a]                           dc.w $07f6
[000a0f0c]                           dc.w $2f83
[000a0f0e]                           dc.w $83f4
[000a0f10]                           dc.w $3787
[000a0f12]                           dc.w $c3ec
[000a0f14]                           dc.w $1787
[000a0f16]                           dc.w $c3e8
[000a0f18]                           dc.w $1bff
[000a0f1a]                           dc.w $83d8
[000a0f1c]                           dc.w $0bff
[000a0f1e]                           dc.w $07d0
[000a0f20]                           dc.w $0dfe
[000a0f22]                           dc.w $0fb0
[000a0f24]                           dc.w $05fc
[000a0f26]                           dc.w $1fa0
[000a0f28]                           dc.w $06fc
[000a0f2a]                           dc.w $3f60
[000a0f2c]                           dc.w $02fc
[000a0f2e]                           dc.w $3f40
[000a0f30]                           dc.w $037c
[000a0f32]                           dc.w $3ec0
[000a0f34]                           dc.w $017c
[000a0f36]                           dc.w $3e80
[000a0f38]                           dc.w $01bf
[000a0f3a]                           dc.w $fd80
[000a0f3c]                           dc.b $00
[000a0f3d]                           dc.b $bf
[000a0f3e]                           dc.w $fd00
[000a0f40]                           dc.b $00
[000a0f41]                           dc.b $dc
[000a0f42]                           dc.w $3b00
[000a0f44]                           dc.b $00
[000a0f45]                           dc.b $5c
[000a0f46]                           dc.w $3a00
[000a0f48]                           dc.b $00
[000a0f49]                           dc.b $6c
[000a0f4a]                           dc.w $3600
[000a0f4c]                           dc.b $00
[000a0f4d]                           dc.b $2f
[000a0f4e]                           dc.w $f400
[000a0f50]                           dc.b $00
[000a0f51]                           dc.b $37
[000a0f52]                           dc.w $ec00
[000a0f54]                           dc.b $00
[000a0f55]                           dc.b $17
[000a0f56]                           dc.w $e800
[000a0f58]                           dc.b $00
[000a0f59]                           dc.b $1b
[000a0f5a]                           dc.w $d800
[000a0f5c]                           dc.b $00
[000a0f5d]                           dc.b $0b
[000a0f5e]                           dc.w $d000
[000a0f60]                           dc.b $00
[000a0f61]                           dc.b $0d
[000a0f62]                           dc.w $b000
[000a0f64]                           dc.b $00
[000a0f65]                           dc.b $05
[000a0f66]                           dc.w $a000
[000a0f68]                           dc.b $00
[000a0f69]                           dc.b $06
[000a0f6a]                           dc.w $6000
[000a0f6c]                           dc.b $00
[000a0f6d]                           dc.b $03
[000a0f6e]                           dc.w $c000
IM_QUEST:
[000a0f70] 000a0ef0                  dc.l _IMG_IM_QUEST
[000a0f74]                           dc.b $00
[000a0f75]                           dc.b $04
[000a0f76]                           dc.b $00
[000a0f77]                           dc.b $20
[000a0f78]                           dc.b $00
[000a0f79]                           dc.b $00
[000a0f7a]                           dc.b $00
[000a0f7b]                           dc.b $00
[000a0f7c]                           dc.b $00
[000a0f7d]                           dc.b $01
_IMG_IM_STOP:
[000a0f7e]                           dc.b $00
[000a0f7f]                           dc.b $7f
[000a0f80]                           dc.w $fe00
[000a0f82]                           dc.b $00
[000a0f83]                           dc.b $c0
[000a0f84]                           dc.w $0300
[000a0f86]                           dc.w $01bf
[000a0f88]                           dc.w $fd80
[000a0f8a]                           dc.w $037f
[000a0f8c]                           dc.w $fec0
[000a0f8e]                           dc.w $06ff
[000a0f90]                           dc.w $ff60
[000a0f92]                           dc.w $0dff
[000a0f94]                           dc.w $ffb0
[000a0f96]                           dc.w $1bff
[000a0f98]                           dc.w $ffd8
[000a0f9a]                           dc.w $37ff
[000a0f9c]                           dc.w $ffec
[000a0f9e]                           dc.w $6fff
[000a0fa0]                           dc.w $fff6
[000a0fa2]                           dc.w $dfff
[000a0fa4]                           dc.w $fffb
[000a0fa6]                           dc.w $b181
[000a0fa8]                           dc.w $860d
[000a0faa]                           dc.w $a081
[000a0fac]                           dc.w $0205
[000a0fae]                           dc.w $a4e7
[000a0fb0]                           dc.w $3265
[000a0fb2]                           dc.w $a7e7
[000a0fb4]                           dc.w $3265
[000a0fb6]                           dc.w $a3e7
[000a0fb8]                           dc.w $3265
[000a0fba]                           dc.w $b1e7
[000a0fbc]                           dc.w $3205
[000a0fbe]                           dc.w $b8e7
[000a0fc0]                           dc.w $320d
[000a0fc2]                           dc.w $bce7
[000a0fc4]                           dc.w $327d
[000a0fc6]                           dc.w $a4e7
[000a0fc8]                           dc.w $327d
[000a0fca]                           dc.w $a0e7
[000a0fcc]                           dc.w $027d
[000a0fce]                           dc.w $b1e7
[000a0fd0]                           dc.w $867d
[000a0fd2]                           dc.w $bfff
[000a0fd4]                           dc.w $fffd
[000a0fd6]                           dc.w $dfff
[000a0fd8]                           dc.w $fffb
[000a0fda]                           dc.w $6fff
[000a0fdc]                           dc.w $fff6
[000a0fde]                           dc.w $37ff
[000a0fe0]                           dc.w $ffec
[000a0fe2]                           dc.w $1bff
[000a0fe4]                           dc.w $ffd8
[000a0fe6]                           dc.w $0dff
[000a0fe8]                           dc.w $ffb0
[000a0fea]                           dc.w $06ff
[000a0fec]                           dc.w $ff60
[000a0fee]                           dc.w $037f
[000a0ff0]                           dc.w $fec0
[000a0ff2]                           dc.w $01bf
[000a0ff4]                           dc.w $fd80
[000a0ff6]                           dc.b $00
[000a0ff7]                           dc.b $c0
[000a0ff8]                           dc.w $0300
[000a0ffa]                           dc.b $00
[000a0ffb]                           dc.b $7f
[000a0ffc]                           dc.w $fe00
IM_STOP:
[000a0ffe] 000a0f7e                  dc.l _IMG_IM_STOP
[000a1002]                           dc.b $00
[000a1003]                           dc.b $04
[000a1004]                           dc.b $00
[000a1005]                           dc.b $20
[000a1006]                           dc.b $00
[000a1007]                           dc.b $00
[000a1008]                           dc.b $00
[000a1009]                           dc.b $00
[000a100a]                           dc.b $00
[000a100b]                           dc.b $01
_IMG_IM_TIME:
[000a100c]                           dc.b $00
[000a100d]                           dc.b $00
[000a100e]                           dc.b $00
[000a100f]                           dc.b $00
[000a1010]                           dc.b $00
[000a1011]                           dc.b $0f
[000a1012]                           dc.w $e000
[000a1014]                           dc.b $00
[000a1015]                           dc.b $70
[000a1016]                           dc.w $1c00
[000a1018]                           dc.b $00
[000a1019]                           dc.b $80
[000a101a]                           dc.w $0200
[000a101c]                           dc.w $0301
[000a101e]                           dc.w $e180
[000a1020]                           dc.w $0601
[000a1022]                           dc.w $f8c0
[000a1024]                           dc.w $0c01
[000a1026]                           dc.w $fc60
[000a1028]                           dc.w $0801
[000a102a]                           dc.w $fe20
[000a102c]                           dc.w $1181
[000a102e]                           dc.w $ff10
[000a1030]                           dc.w $23c1
[000a1032]                           dc.w $ff88
[000a1034]                           dc.w $27e1
[000a1036]                           dc.w $ffc8
[000a1038]                           dc.w $27f1
[000a103a]                           dc.w $ffc8
[000a103c]                           dc.w $4ff9
[000a103e]                           dc.w $ffe4
[000a1040]                           dc.w $4ffd
[000a1042]                           dc.w $ffe4
[000a1044]                           dc.w $4fff
[000a1046]                           dc.w $ffe4
[000a1048]                           dc.w $4fff
[000a104a]                           dc.w $ffe4
[000a104c]                           dc.w $4fff
[000a104e]                           dc.w $ffe4
[000a1050]                           dc.w $4fff
[000a1052]                           dc.w $ffe4
[000a1054]                           dc.w $4fff
[000a1056]                           dc.w $ffe4
[000a1058]                           dc.w $27ff
[000a105a]                           dc.w $ffc8
[000a105c]                           dc.w $27ff
[000a105e]                           dc.w $ffc8
[000a1060]                           dc.w $23ff
[000a1062]                           dc.w $ff88
[000a1064]                           dc.w $11ff
[000a1066]                           dc.w $ff10
[000a1068]                           dc.w $08ff
[000a106a]                           dc.w $fe20
[000a106c]                           dc.w $0c7f
[000a106e]                           dc.w $fc60
[000a1070]                           dc.w $063f
[000a1072]                           dc.w $f8c0
[000a1074]                           dc.w $030f
[000a1076]                           dc.w $e180
[000a1078]                           dc.b $00
[000a1079]                           dc.b $80
[000a107a]                           dc.w $0200
[000a107c]                           dc.b $00
[000a107d]                           dc.b $70
[000a107e]                           dc.w $1c00
[000a1080]                           dc.b $00
[000a1081]                           dc.b $0f
[000a1082]                           dc.w $e000
[000a1084]                           dc.b $00
[000a1085]                           dc.b $00
[000a1086]                           dc.b $00
[000a1087]                           dc.b $00
IM_TIME:
[000a1088] 000a100c                  dc.l _IMG_IM_TIME
[000a108c]                           dc.b $00
[000a108d]                           dc.b $04
[000a108e]                           dc.b $00
[000a108f]                           dc.b $1f
[000a1090]                           dc.b $00
[000a1091]                           dc.b $00
[000a1092]                           dc.b $00
[000a1093]                           dc.b $00
[000a1094]                           dc.b $00
[000a1095]                           dc.b $01
NEW_IMAGE:
[000a1096]                           dc.w $ffff
[000a1098]                           dc.b $00
[000a1099]                           dc.b $01
[000a109a]                           dc.b $00
[000a109b]                           dc.b $05
[000a109c]                           dc.b $00
[000a109d]                           dc.b $14
[000a109e]                           dc.b $00
[000a109f]                           dc.b $00
[000a10a0]                           dc.b $00
[000a10a1]                           dc.b $20
[000a10a2]                           dc.b $00
[000a10a3]                           dc.b $ff
[000a10a4]                           dc.w $1100
[000a10a6]                           dc.b $00
[000a10a7]                           dc.b $00
[000a10a8]                           dc.b $00
[000a10a9]                           dc.b $00
[000a10aa]                           dc.b $00
[000a10ab]                           dc.b $14
[000a10ac]                           dc.b $00
[000a10ad]                           dc.b $02
_01_NEW_IMAGE:
[000a10ae]                           dc.b $00
[000a10af]                           dc.b $02
[000a10b0]                           dc.w $ffff
[000a10b2]                           dc.w $ffff
[000a10b4]                           dc.b $00
[000a10b5]                           dc.b $17
[000a10b6]                           dc.b $00
[000a10b7]                           dc.b $01
[000a10b8]                           dc.b $00
[000a10b9]                           dc.b $00
[000a10ba] 000a0ee2                  dc.l IM_NONE
[000a10be]                           dc.b $00
[000a10bf]                           dc.b $00
[000a10c0]                           dc.b $00
[000a10c1]                           dc.b $00
[000a10c2]                           dc.b $00
[000a10c3]                           dc.b $04
[000a10c4]                           dc.b $00
[000a10c5]                           dc.b $02
_02_NEW_IMAGE:
[000a10c6]                           dc.b $00
[000a10c7]                           dc.b $03
[000a10c8]                           dc.w $ffff
[000a10ca]                           dc.w $ffff
[000a10cc]                           dc.b $00
[000a10cd]                           dc.b $17
[000a10ce]                           dc.b $00
[000a10cf]                           dc.b $01
[000a10d0]                           dc.w $2000
[000a10d2] 000a0e54                  dc.l IM_EXCLAM
[000a10d6]                           dc.b $00
[000a10d7]                           dc.b $04
[000a10d8]                           dc.b $00
[000a10d9]                           dc.b $00
[000a10da]                           dc.b $00
[000a10db]                           dc.b $04
[000a10dc]                           dc.b $00
[000a10dd]                           dc.b $02
_03_NEW_IMAGE:
[000a10de]                           dc.b $00
[000a10df]                           dc.b $04
[000a10e0]                           dc.w $ffff
[000a10e2]                           dc.w $ffff
[000a10e4]                           dc.b $00
[000a10e5]                           dc.b $17
[000a10e6]                           dc.b $00
[000a10e7]                           dc.b $01
[000a10e8]                           dc.w $2000
[000a10ea] 000a0f70                  dc.l IM_QUEST
[000a10ee]                           dc.b $00
[000a10ef]                           dc.b $08
[000a10f0]                           dc.b $00
[000a10f1]                           dc.b $00
[000a10f2]                           dc.b $00
[000a10f3]                           dc.b $04
[000a10f4]                           dc.b $00
[000a10f5]                           dc.b $02
_04_NEW_IMAGE:
[000a10f6]                           dc.b $00
[000a10f7]                           dc.b $05
[000a10f8]                           dc.w $ffff
[000a10fa]                           dc.w $ffff
[000a10fc]                           dc.b $00
[000a10fd]                           dc.b $17
[000a10fe]                           dc.b $00
[000a10ff]                           dc.b $01
[000a1100]                           dc.w $2000
[000a1102] 000a0ffe                  dc.l IM_STOP
[000a1106]                           dc.b $00
[000a1107]                           dc.b $0c
[000a1108]                           dc.b $00
[000a1109]                           dc.b $00
[000a110a]                           dc.b $00
[000a110b]                           dc.b $04
[000a110c]                           dc.b $00
[000a110d]                           dc.b $02
_05_NEW_IMAGE:
[000a110e]                           dc.b $00
[000a110f]                           dc.b $00
[000a1110]                           dc.w $ffff
[000a1112]                           dc.w $ffff
[000a1114]                           dc.b $00
[000a1115]                           dc.b $17
[000a1116]                           dc.b $00
[000a1117]                           dc.b $21
[000a1118]                           dc.w $2000
[000a111a] 000a1088                  dc.l IM_TIME
[000a111e]                           dc.b $00
[000a111f]                           dc.b $10
[000a1120]                           dc.b $00
[000a1121]                           dc.b $00
[000a1122]                           dc.b $00
[000a1123]                           dc.b $04
[000a1124]                           dc.b $00
[000a1125]                           dc.b $02
EDIT_ALERT:
[000a1126]                           dc.w $ffff
[000a1128]                           dc.b $00
[000a1129]                           dc.b $01
[000a112a]                           dc.b $00
[000a112b]                           dc.b $10
[000a112c]                           dc.b $00
[000a112d]                           dc.b $18
[000a112e]                           dc.b $00
[000a112f]                           dc.b $40
[000a1130]                           dc.b $00
[000a1131]                           dc.b $10
[000a1132] 000a0b84                  dc.l A_3DBUTTON02
[000a1136]                           dc.b $00
[000a1137]                           dc.b $00
[000a1138]                           dc.b $00
[000a1139]                           dc.b $00
[000a113a]                           dc.b $00
[000a113b]                           dc.b $2e
[000a113c]                           dc.b $00
[000a113d]                           dc.b $0e
_01_EDIT_ALERT:
[000a113e]                           dc.b $00
[000a113f]                           dc.b $0c
[000a1140]                           dc.b $00
[000a1141]                           dc.b $02
[000a1142]                           dc.b $00
[000a1143]                           dc.b $0b
[000a1144]                           dc.b $00
[000a1145]                           dc.b $14
[000a1146]                           dc.b $00
[000a1147]                           dc.b $00
[000a1148]                           dc.b $00
[000a1149]                           dc.b $10
[000a114a]                           dc.b $00
[000a114b]                           dc.b $02
[000a114c]                           dc.w $1101
[000a114e]                           dc.b $00
[000a114f]                           dc.b $02
[000a1150]                           dc.b $00
[000a1151]                           dc.b $01
[000a1152]                           dc.b $00
[000a1153]                           dc.b $2a
[000a1154]                           dc.b $00
[000a1155]                           dc.b $09
_02_EDIT_ALERT:
[000a1156]                           dc.b $00
[000a1157]                           dc.b $04
[000a1158]                           dc.w $ffff
[000a115a]                           dc.w $ffff
[000a115c]                           dc.b $00
[000a115d]                           dc.b $17
[000a115e]                           dc.b $00
[000a115f]                           dc.b $40
[000a1160]                           dc.w $2000
[000a1162] 000a0f70                  dc.l IM_QUEST
[000a1166]                           dc.b $00
[000a1167]                           dc.b $02
[000a1168]                           dc.b $00
[000a1169]                           dc.b $01
[000a116a]                           dc.b $00
[000a116b]                           dc.b $04
[000a116c]                           dc.b $00
[000a116d]                           dc.b $02
_02aEDIT_ALERT:
[000a116e] 0001c112                  dc.l edal_newim
[000a1172]                           dc.b $00
[000a1173]                           dc.b $00
[000a1174]                           dc.b $00
[000a1175]                           dc.b $00
[000a1176]                           dc.w $8000
[000a1178]                           dc.b $00
[000a1179]                           dc.b $00
[000a117a]                           dc.b $00
[000a117b]                           dc.b $00
[000a117c]                           dc.b $00
[000a117d]                           dc.b $00
[000a117e]                           dc.b $00
[000a117f]                           dc.b $00
[000a1180]                           dc.b $00
[000a1181]                           dc.b $00
[000a1182]                           dc.b $00
[000a1183]                           dc.b $00
[000a1184]                           dc.b $00
[000a1185]                           dc.b $00
_04_EDIT_ALERT:
[000a1186]                           dc.b $00
[000a1187]                           dc.b $05
[000a1188]                           dc.w $ffff
[000a118a]                           dc.w $ffff
[000a118c]                           dc.b $00
[000a118d]                           dc.b $18
[000a118e]                           dc.b $00
[000a118f]                           dc.b $08
[000a1190]                           dc.b $00
[000a1191]                           dc.b $00
[000a1192] 000a0be4                  dc.l A_BOXED01
[000a1196]                           dc.b $00
[000a1197]                           dc.b $09
[000a1198]                           dc.b $00
[000a1199]                           dc.b $01
[000a119a]                           dc.b $00
[000a119b]                           dc.b $1e
[000a119c]                           dc.b $00
[000a119d]                           dc.b $01
_05_EDIT_ALERT:
[000a119e]                           dc.b $00
[000a119f]                           dc.b $06
[000a11a0]                           dc.w $ffff
[000a11a2]                           dc.w $ffff
[000a11a4]                           dc.b $00
[000a11a5]                           dc.b $18
[000a11a6]                           dc.b $00
[000a11a7]                           dc.b $08
[000a11a8]                           dc.b $00
[000a11a9]                           dc.b $00
[000a11aa] 000a0be4                  dc.l A_BOXED01
[000a11ae]                           dc.b $00
[000a11af]                           dc.b $09
[000a11b0]                           dc.b $00
[000a11b1]                           dc.b $02
[000a11b2]                           dc.b $00
[000a11b3]                           dc.b $1e
[000a11b4]                           dc.b $00
[000a11b5]                           dc.b $01
_06_EDIT_ALERT:
[000a11b6]                           dc.b $00
[000a11b7]                           dc.b $07
[000a11b8]                           dc.w $ffff
[000a11ba]                           dc.w $ffff
[000a11bc]                           dc.b $00
[000a11bd]                           dc.b $18
[000a11be]                           dc.b $00
[000a11bf]                           dc.b $08
[000a11c0]                           dc.b $00
[000a11c1]                           dc.b $00
[000a11c2] 000a0be4                  dc.l A_BOXED01
[000a11c6]                           dc.b $00
[000a11c7]                           dc.b $09
[000a11c8]                           dc.b $00
[000a11c9]                           dc.b $03
[000a11ca]                           dc.b $00
[000a11cb]                           dc.b $1e
[000a11cc]                           dc.b $00
[000a11cd]                           dc.b $01
_07_EDIT_ALERT:
[000a11ce]                           dc.b $00
[000a11cf]                           dc.b $08
[000a11d0]                           dc.w $ffff
[000a11d2]                           dc.w $ffff
[000a11d4]                           dc.b $00
[000a11d5]                           dc.b $18
[000a11d6]                           dc.b $00
[000a11d7]                           dc.b $08
[000a11d8]                           dc.b $00
[000a11d9]                           dc.b $00
[000a11da] 000a0be4                  dc.l A_BOXED01
[000a11de]                           dc.b $00
[000a11df]                           dc.b $09
[000a11e0]                           dc.b $00
[000a11e1]                           dc.b $04
[000a11e2]                           dc.b $00
[000a11e3]                           dc.b $1e
[000a11e4]                           dc.b $00
[000a11e5]                           dc.b $01
_08_EDIT_ALERT:
[000a11e6]                           dc.b $00
[000a11e7]                           dc.b $09
[000a11e8]                           dc.w $ffff
[000a11ea]                           dc.w $ffff
[000a11ec]                           dc.b $00
[000a11ed]                           dc.b $18
[000a11ee]                           dc.b $00
[000a11ef]                           dc.b $08
[000a11f0]                           dc.b $00
[000a11f1]                           dc.b $00
[000a11f2] 000a0be4                  dc.l A_BOXED01
[000a11f6]                           dc.b $00
[000a11f7]                           dc.b $09
[000a11f8]                           dc.b $00
[000a11f9]                           dc.b $05
[000a11fa]                           dc.b $00
[000a11fb]                           dc.b $1e
[000a11fc]                           dc.b $00
[000a11fd]                           dc.b $01
_09_EDIT_ALERT:
[000a11fe]                           dc.b $00
[000a11ff]                           dc.b $0a
[000a1200]                           dc.w $ffff
[000a1202]                           dc.w $ffff
[000a1204]                           dc.b $00
[000a1205]                           dc.b $18
[000a1206]                           dc.b $00
[000a1207]                           dc.b $08
[000a1208]                           dc.b $00
[000a1209]                           dc.b $10
[000a120a] 000a0c04                  dc.l A_BOXED03
[000a120e]                           dc.b $00
[000a120f]                           dc.b $03
[000a1210]                           dc.b $00
[000a1211]                           dc.b $07
[000a1212]                           dc.b $00
[000a1213]                           dc.b $0a
[000a1214]                           dc.b $00
[000a1215]                           dc.b $01
_10_EDIT_ALERT:
[000a1216]                           dc.b $00
[000a1217]                           dc.b $0b
[000a1218]                           dc.w $ffff
[000a121a]                           dc.w $ffff
[000a121c]                           dc.b $00
[000a121d]                           dc.b $18
[000a121e]                           dc.b $00
[000a121f]                           dc.b $08
[000a1220]                           dc.b $00
[000a1221]                           dc.b $10
[000a1222] 000a0c04                  dc.l A_BOXED03
[000a1226]                           dc.b $00
[000a1227]                           dc.b $10
[000a1228]                           dc.b $00
[000a1229]                           dc.b $07
[000a122a]                           dc.b $00
[000a122b]                           dc.b $0a
[000a122c]                           dc.b $00
[000a122d]                           dc.b $01
_11_EDIT_ALERT:
[000a122e]                           dc.b $00
[000a122f]                           dc.b $01
[000a1230]                           dc.w $ffff
[000a1232]                           dc.w $ffff
[000a1234]                           dc.b $00
[000a1235]                           dc.b $18
[000a1236]                           dc.b $00
[000a1237]                           dc.b $08
[000a1238]                           dc.b $00
[000a1239]                           dc.b $10
[000a123a] 000a0c04                  dc.l A_BOXED03
[000a123e]                           dc.b $00
[000a123f]                           dc.b $1d
[000a1240]                           dc.b $00
[000a1241]                           dc.b $07
[000a1242]                           dc.b $00
[000a1243]                           dc.b $0a
[000a1244]                           dc.b $00
[000a1245]                           dc.b $01
_12_EDIT_ALERT:
[000a1246]                           dc.b $00
[000a1247]                           dc.b $0e
[000a1248]                           dc.w $ffff
[000a124a]                           dc.w $ffff
[000a124c]                           dc.b $00
[000a124d]                           dc.b $18
[000a124e]                           dc.w $4007
[000a1250]                           dc.b $00
[000a1251]                           dc.b $10
[000a1252] 000a0ba4                  dc.l A_3DBUTTON04
[000a1256]                           dc.b $00
[000a1257]                           dc.b $03
[000a1258]                           dc.b $00
[000a1259]                           dc.b $0b
[000a125a]                           dc.b $00
[000a125b]                           dc.b $0c
[000a125c]                           dc.b $00
[000a125d]                           dc.b $02
_12aEDIT_ALERT:
[000a125e] 0001c15c                  dc.l edal_ok
[000a1262]                           dc.b $00
[000a1263]                           dc.b $00
[000a1264]                           dc.b $00
[000a1265]                           dc.b $00
[000a1266]                           dc.w $8000
[000a1268]                           dc.w $884f
[000a126a]                           dc.b $00
[000a126b]                           dc.b $00
[000a126c]                           dc.b $00
[000a126d]                           dc.b $00
[000a126e]                           dc.b $00
[000a126f]                           dc.b $00
[000a1270]                           dc.b $00
[000a1271]                           dc.b $00
[000a1272]                           dc.b $00
[000a1273]                           dc.b $00
[000a1274]                           dc.b $00
[000a1275]                           dc.b $00
_14_EDIT_ALERT:
[000a1276]                           dc.b $00
[000a1277]                           dc.b $10
[000a1278]                           dc.w $ffff
[000a127a]                           dc.w $ffff
[000a127c]                           dc.b $00
[000a127d]                           dc.b $18
[000a127e]                           dc.w $4005
[000a1280]                           dc.b $00
[000a1281]                           dc.b $10
[000a1282] 000a0bc4                  dc.l A_3DBUTTON05
[000a1286]                           dc.b $00
[000a1287]                           dc.b $11
[000a1288]                           dc.b $00
[000a1289]                           dc.b $0b
[000a128a]                           dc.b $00
[000a128b]                           dc.b $0c
[000a128c]                           dc.b $00
[000a128d]                           dc.b $02
_14aEDIT_ALERT:
[000a128e] 0001c17e                  dc.l edal_abort
[000a1292]                           dc.b $00
[000a1293]                           dc.b $00
[000a1294]                           dc.b $00
[000a1295]                           dc.b $00
[000a1296]                           dc.w $8000
[000a1298]                           dc.w $8841
[000a129a]                           dc.b $00
[000a129b]                           dc.b $00
[000a129c]                           dc.b $00
[000a129d]                           dc.b $00
[000a129e]                           dc.b $00
[000a129f]                           dc.b $00
[000a12a0]                           dc.b $00
[000a12a1]                           dc.b $00
[000a12a2]                           dc.b $00
[000a12a3]                           dc.b $00
[000a12a4]                           dc.b $00
[000a12a5]                           dc.b $00
_16_EDIT_ALERT:
[000a12a6]                           dc.b $00
[000a12a7]                           dc.b $00
[000a12a8]                           dc.w $ffff
[000a12aa]                           dc.w $ffff
[000a12ac]                           dc.b $00
[000a12ad]                           dc.b $18
[000a12ae]                           dc.w $4005
[000a12b0]                           dc.b $00
[000a12b1]                           dc.b $10
[000a12b2] 000a0b64                  dc.l A_3DBUTTON01
[000a12b6]                           dc.b $00
[000a12b7]                           dc.b $1f
[000a12b8]                           dc.b $00
[000a12b9]                           dc.b $0b
[000a12ba]                           dc.b $00
[000a12bb]                           dc.b $0c
[000a12bc]                           dc.b $00
[000a12bd]                           dc.b $02
_16aEDIT_ALERT:
[000a12be] 0001c0cc                  dc.l edal_try
[000a12c2]                           dc.b $00
[000a12c3]                           dc.b $00
[000a12c4]                           dc.b $00
[000a12c5]                           dc.b $00
[000a12c6]                           dc.w $8020
[000a12c8]                           dc.w $8850
[000a12ca]                           dc.b $00
[000a12cb]                           dc.b $00
[000a12cc]                           dc.b $00
[000a12cd]                           dc.b $00
[000a12ce]                           dc.b $00
[000a12cf]                           dc.b $00
[000a12d0]                           dc.b $00
[000a12d1]                           dc.b $00
[000a12d2]                           dc.b $00
[000a12d3]                           dc.b $00
[000a12d4]                           dc.b $00
[000a12d5]                           dc.b $00
WI_ALERT:
[000a12d6]                           dc.b $00
[000a12d7]                           dc.b $00
[000a12d8]                           dc.b $00
[000a12d9]                           dc.b $00
[000a12da] 0001c45e                  dc.l al_service
[000a12de] 0001c3c2                  dc.l al_make
[000a12e2] 0004f69e                  dc.l Awi_open
[000a12e6] 0004e610                  dc.l Awi_init
[000a12ea] 000a1126                  dc.l EDIT_ALERT
[000a12ee]                           dc.b $00
[000a12ef]                           dc.b $00
[000a12f0]                           dc.b $00
[000a12f1]                           dc.b $00
[000a12f2]                           dc.b $00
[000a12f3]                           dc.b $00
[000a12f4]                           dc.b $00
[000a12f5]                           dc.b $00
[000a12f6]                           dc.w $ffff
[000a12f8]                           dc.w $601f
[000a12fa]                           dc.b $00
[000a12fb]                           dc.b $00
[000a12fc]                           dc.b $00
[000a12fd]                           dc.b $00
[000a12fe]                           dc.b $00
[000a12ff]                           dc.b $63
[000a1300]                           dc.b $00
[000a1301]                           dc.b $63
[000a1302]                           dc.b $00
[000a1303]                           dc.b $00
[000a1304]                           dc.b $00
[000a1305]                           dc.b $00
[000a1306]                           dc.b $00
[000a1307]                           dc.b $00
[000a1308]                           dc.b $00
[000a1309]                           dc.b $00
[000a130a]                           dc.b $00
[000a130b]                           dc.b $00
[000a130c]                           dc.b $00
[000a130d]                           dc.b $00
[000a130e]                           dc.b $00
[000a130f]                           dc.b $00
[000a1310]                           dc.b $00
[000a1311]                           dc.b $00
[000a1312]                           dc.w $ffff
[000a1314]                           dc.w $ffff
[000a1316]                           dc.w $ffff
[000a1318]                           dc.w $ffff
[000a131a]                           dc.b $00
[000a131b]                           dc.b $00
[000a131c]                           dc.b $00
[000a131d]                           dc.b $00
[000a131e]                           dc.w $fcf8
[000a1320] 000a079f                  dc.l TEXT_01
[000a1324] 000a0795                  dc.l TEXT_002
[000a1328]                           dc.w $2710
[000a132a]                           dc.w $0100
[000a132c]                           dc.b $00
[000a132d]                           dc.b $00
[000a132e]                           dc.w $ffff
[000a1330] 000a0dae                  dc.l IC_ALERT
[000a1334]                           dc.b $00
[000a1335]                           dc.b $00
[000a1336]                           dc.b $00
[000a1337]                           dc.b $00
[000a1338] 0005ef2c                  dc.l Awi_keys
[000a133c] 0004b600                  dc.l Awi_obchange
[000a1340] 0004b8cc                  dc.l Awi_redraw
[000a1344] 00050454                  dc.l Awi_topped
[000a1348] 0005013e                  dc.l Awi_closed
[000a134c] 00050496                  dc.l Awi_fulled
[000a1350] 0004bcc8                  dc.l Awi_arrowed
[000a1354] 0004beea                  dc.l Awi_hslid
[000a1358] 0004bf56                  dc.l Awi_vslid
[000a135c] 000506ca                  dc.l Awi_sized
[000a1360] 000507bc                  dc.l Awi_moved
[000a1364] 00050f9c                  dc.l Awi_iconify
[000a1368] 0005117c                  dc.l Awi_uniconify
[000a136c] 00052328                  dc.l Awi_gemscript
[000a1370]                           dc.b $00
[000a1371]                           dc.b $00
[000a1372]                           dc.b $00
[000a1373]                           dc.b $00
[000a1374]                           dc.b $00
[000a1375]                           dc.b $00
[000a1376]                           dc.b $00
[000a1377]                           dc.b $00
[000a1378]                           dc.b '[0][',0
[000a137d]                           dc.b $7c
[000a137e]                           dc.b $00
[000a137f]                           dc.b $5d
[000a1380]                           dc.b $00
[000a1381]                           dc.b $00
A_NOSTD:
[000a1382]                           dc.b '[1][ Die Grafik liegt nicht im | Standard-Format vor, eine | öbernahme ist unmîglich! ][ Abbruch ]',0
BUBBLE_01:
[000a13e5]                           dc.b 'Die énderungen werden verworfen.',0
BUBBLE_02:
[000a1406]                           dc.b 'Die énderungen werden Åbernommen.',0
BUBBLE_03:
[000a1428]                           dc.b 'Hier kann der Text unter dem Icon eingegeben werden.',0
BUBBLE_04:
[000a145d]                           dc.b 'Hier kann das Zeichen (z.B. Laufwerksbuchstabe) fÅr das Icon angegeben werden.',0
BUBBLE_05:
[000a14ac]                           dc.b 'Die Ausmaûe des Icons kînnen hier direkt editiert werden.',0
BUBBLE_06:
[000a14e6]                           dc.b 'Hier kann das Icon entworfen und verÑndert werden.',0
BUBBLE_07:
[000a1519]                           dc.b 'öber diesen Button wechseln Sie wieder in die Icon-Ansicht.',0
BUBBLE_08:
[000a1555]                           dc.b 'Die Ausmaûe eines Icons fÅr den Desktop werden eingestellt.',0
TEXT_002:
[000a1591]                           dc.b $00
TEXT_003:
[000a1592]                           dc.w $4f4b
[000a1594]                           dc.b $00
TEXT_004:
[000a1595]                           dc.b 'Abbruch',0
TEXT_01:
[000a159d]                           dc.b 'THINN',0
TEXT_019:
[000a15a3]                           dc.b 'Struktur',0
TEXT_02:
[000a15ac]                           dc.b 'FAT',0
TEXT_03:
[000a15b0]                           dc.b 'neues Muster',0
TEXT_04:
[000a15bd]                           dc.b 'Pinsel:',0
TEXT_05:
[000a15c5]                           dc.b 'StÑrke:',0
TEXT_06:
[000a15cd]                           dc.b 'Schiebe:',0
TEXT_07:
[000a15d6]                           dc.b 'lîschen',0
TEXT_08:
[000a15de]                           dc.b 'ICON1212312121212122',0
TEXT_09:
[000a15f3]                           dc.b 'hinten:',0
TEXT_10:
[000a15fb]                           dc.b 'vorne:',0
TEXT_11:
[000a1602]                           dc.w $593a
[000a1604]                           dc.b $00
TEXT_12:
[000a1605]                           dc.b $57
[000a1606]                           dc.w $3a00
TEXT_13:
[000a1608]                           dc.w $483a
[000a160a]                           dc.b $00
TEXT_14:
[000a160b]                           dc.b 'Char:',0
TEXT_15:
[000a1611]                           dc.b 'Icon:',0
TEXT_16:
[000a1617]                           dc.b 'Text:',0
TEXT_17:
[000a161d]                           dc.b ' Ikonen-Editor ',0
TEXT_18:
[000a162d]                           dc.b 'Farbe:',0
TEXT_19:
[000a1634]                           dc.b 'Edit...',0
TEXT_20:
[000a163c]                           dc.b 'leeren',0
TEXT_21:
[000a1643]                           dc.b 'Ausmaûe...',0
TEXT_22:
[000a164e]                           dc.w $583a
[000a1650]                           dc.b $00
TEXT_23:
[000a1651]                           dc.b $04
[000a1652]                           dc.b ' Deskicon',0
TEXT_24:
[000a165c]                           dc.b ' Ausmaûe ',0
TEXT_25:
[000a1666]                           dc.b 'ICONS',0
TEXT_27:
[000a166c]                           dc.b 'Ein/Aus',0
DATAS_01:
[000a1674]                           dc.b $00
[000a1675]                           dc.b $00
[000a1676]                           dc.b $00
[000a1677]                           dc.b $00
[000a1678]                           dc.w $02d8
[000a167a]                           dc.b $00
[000a167b]                           dc.b $00
[000a167c]                           dc.b $00
[000a167d]                           dc.b $00
[000a167e]                           dc.b $00
[000a167f]                           dc.b $00
[000a1680]                           dc.b $00
[000a1681]                           dc.b $00
[000a1682]                           dc.b $00
[000a1683]                           dc.b $00
[000a1684]                           dc.b $00
[000a1685]                           dc.b $00
[000a1686]                           dc.b $00
[000a1687]                           dc.b $00
[000a1688]                           dc.b $00
[000a1689]                           dc.b $00
[000a168a]                           dc.b $00
[000a168b]                           dc.b $00
[000a168c]                           dc.b $00
[000a168d]                           dc.b $7f
[000a168e]                           dc.w $c003
[000a1690]                           dc.w $fe00
[000a1692]                           dc.b $00
[000a1693]                           dc.b $7f
[000a1694]                           dc.w $c003
[000a1696]                           dc.w $c200
[000a1698]                           dc.b $00
[000a1699]                           dc.b $7f
[000a169a]                           dc.w $c003
[000a169c]                           dc.w $d200
[000a169e]                           dc.b $00
[000a169f]                           dc.b $7f
[000a16a0]                           dc.w $c003
[000a16a2]                           dc.w $8200
[000a16a4]                           dc.b $00
[000a16a5]                           dc.b $7f
[000a16a6]                           dc.w $c002
[000a16a8]                           dc.w $2200
[000a16aa]                           dc.b $00
[000a16ab]                           dc.b $7f
[000a16ac]                           dc.w $c002
[000a16ae]                           dc.w $0200
[000a16b0]                           dc.b $00
[000a16b1]                           dc.b $7f
[000a16b2]                           dc.w $c002
[000a16b4]                           dc.w $0200
[000a16b6]                           dc.b $00
[000a16b7]                           dc.b $7f
[000a16b8]                           dc.w $c003
[000a16ba]                           dc.w $fe00
[000a16bc]                           dc.b $00
[000a16bd]                           dc.b $00
[000a16be]                           dc.b $00
[000a16bf]                           dc.b $00
[000a16c0]                           dc.b $00
[000a16c1]                           dc.b $00
[000a16c2]                           dc.w $03ff
[000a16c4]                           dc.w $f81f
[000a16c6]                           dc.w $ffc0
[000a16c8]                           dc.b $00
[000a16c9]                           dc.b $00
[000a16ca]                           dc.b $00
[000a16cb]                           dc.b $00
[000a16cc]                           dc.b $00
[000a16cd]                           dc.b $00
[000a16ce]                           dc.b $00
[000a16cf]                           dc.b $00
[000a16d0]                           dc.b $00
[000a16d1]                           dc.b $00
[000a16d2]                           dc.b $00
[000a16d3]                           dc.b $00
[000a16d4]                           dc.b $00
[000a16d5]                           dc.b $00
[000a16d6]                           dc.b $00
[000a16d7]                           dc.b $00
[000a16d8]                           dc.b $00
[000a16d9]                           dc.b $00
[000a16da]                           dc.b $00
[000a16db]                           dc.b $00
[000a16dc]                           dc.b $00
[000a16dd]                           dc.b $00
[000a16de]                           dc.b $00
[000a16df]                           dc.b $00
[000a16e0]                           dc.b $00
[000a16e1]                           dc.b $07
[000a16e2]                           dc.w $8001
[000a16e4]                           dc.w $fc00
[000a16e6]                           dc.b $00
[000a16e7]                           dc.b $0f
[000a16e8]                           dc.b $00
[000a16e9]                           dc.b $01
[000a16ea]                           dc.w $fc00
[000a16ec]                           dc.b $00
[000a16ed]                           dc.b $1e
[000a16ee]                           dc.b $00
[000a16ef]                           dc.b $01
[000a16f0]                           dc.w $fc00
[000a16f2]                           dc.b $00
[000a16f3]                           dc.b $1e
[000a16f4]                           dc.b $00
[000a16f5]                           dc.b $01
[000a16f6]                           dc.w $fc00
[000a16f8]                           dc.b $00
[000a16f9]                           dc.b $3c
[000a16fa]                           dc.b $00
[000a16fb]                           dc.b $01
[000a16fc]                           dc.w $fc00
[000a16fe]                           dc.b $00
[000a16ff]                           dc.b $3c
[000a1700]                           dc.b $00
[000a1701]                           dc.b $01
[000a1702]                           dc.w $fc00
[000a1704]                           dc.b $00
[000a1705]                           dc.b $3c
[000a1706]                           dc.b $00
[000a1707]                           dc.b $01
[000a1708]                           dc.w $fc00
[000a170a]                           dc.b $00
[000a170b]                           dc.b $00
[000a170c]                           dc.b $00
[000a170d]                           dc.b $00
[000a170e]                           dc.b $00
[000a170f]                           dc.b $00
[000a1710]                           dc.w $03ff
[000a1712]                           dc.w $f81f
[000a1714]                           dc.w $ffc0
[000a1716]                           dc.b $00
[000a1717]                           dc.b $00
[000a1718]                           dc.b $00
[000a1719]                           dc.b $00
[000a171a]                           dc.b $00
[000a171b]                           dc.b $00
[000a171c]                           dc.b $00
[000a171d]                           dc.b $00
[000a171e]                           dc.b $00
[000a171f]                           dc.b $00
[000a1720]                           dc.b $00
[000a1721]                           dc.b $00
[000a1722]                           dc.b $00
[000a1723]                           dc.b $00
[000a1724]                           dc.b $00
[000a1725]                           dc.b $00
[000a1726]                           dc.b $00
[000a1727]                           dc.b $00
[000a1728]                           dc.b $00
[000a1729]                           dc.b $00
[000a172a]                           dc.b $00
[000a172b]                           dc.b $00
[000a172c]                           dc.b $00
[000a172d]                           dc.b $00
[000a172e]                           dc.b $00
[000a172f]                           dc.b $00
[000a1730]                           dc.b $00
[000a1731]                           dc.b $00
[000a1732]                           dc.b $00
[000a1733]                           dc.b $00
[000a1734]                           dc.b $00
[000a1735]                           dc.b $00
[000a1736]                           dc.b $00
[000a1737]                           dc.b $00
[000a1738]                           dc.b $00
[000a1739]                           dc.b $00
[000a173a]                           dc.b $00
[000a173b]                           dc.b $00
[000a173c]                           dc.b $00
[000a173d]                           dc.b $00
[000a173e]                           dc.b $00
[000a173f]                           dc.b $00
[000a1740]                           dc.b $00
[000a1741]                           dc.b $7f
[000a1742]                           dc.w $c003
[000a1744]                           dc.w $fe00
[000a1746]                           dc.b $00
[000a1747]                           dc.b $7f
[000a1748]                           dc.w $c002
[000a174a]                           dc.w $c200
[000a174c]                           dc.b $00
[000a174d]                           dc.b $6e
[000a174e]                           dc.w $c003
[000a1750]                           dc.w $d200
[000a1752]                           dc.b $00
[000a1753]                           dc.b $64
[000a1754]                           dc.w $c003
[000a1756]                           dc.w $8200
[000a1758]                           dc.b $00
[000a1759]                           dc.b $71
[000a175a]                           dc.w $c002
[000a175c]                           dc.w $2200
[000a175e]                           dc.b $00
[000a175f]                           dc.b $64
[000a1760]                           dc.w $c002
[000a1762]                           dc.w $1e00
[000a1764]                           dc.b $00
[000a1765]                           dc.b $6e
[000a1766]                           dc.w $c003
[000a1768]                           dc.w $fe00
[000a176a]                           dc.b $00
[000a176b]                           dc.b $7f
[000a176c]                           dc.w $c003
[000a176e]                           dc.w $fe00
[000a1770]                           dc.b $00
[000a1771]                           dc.b $00
[000a1772]                           dc.b $00
[000a1773]                           dc.b $00
[000a1774]                           dc.b $00
[000a1775]                           dc.b $00
[000a1776]                           dc.w $03ff
[000a1778]                           dc.w $f81f
[000a177a]                           dc.w $ffc0
[000a177c]                           dc.b $00
[000a177d]                           dc.b $00
[000a177e]                           dc.b $00
[000a177f]                           dc.b $00
[000a1780]                           dc.b $00
[000a1781]                           dc.b $00
[000a1782]                           dc.b $00
[000a1783]                           dc.b $00
[000a1784]                           dc.b $00
[000a1785]                           dc.b $00
[000a1786]                           dc.b $00
[000a1787]                           dc.b $00
[000a1788]                           dc.b $00
[000a1789]                           dc.b $00
[000a178a]                           dc.b $00
[000a178b]                           dc.b $00
[000a178c]                           dc.b $00
[000a178d]                           dc.b $00
[000a178e]                           dc.b $00
[000a178f]                           dc.b $00
[000a1790]                           dc.b $00
[000a1791]                           dc.b $00
[000a1792]                           dc.b $00
[000a1793]                           dc.b $00
[000a1794]                           dc.b $00
[000a1795]                           dc.b $01
[000a1796]                           dc.w $c001
[000a1798]                           dc.w $fc00
[000a179a]                           dc.b $00
[000a179b]                           dc.b $03
[000a179c]                           dc.w $8001
[000a179e]                           dc.w $3c00
[000a17a0]                           dc.b $00
[000a17a1]                           dc.b $07
[000a17a2]                           dc.b $00
[000a17a3]                           dc.b $01
[000a17a4]                           dc.w $1c00
[000a17a6]                           dc.b $00
[000a17a7]                           dc.b $07
[000a17a8]                           dc.b $00
[000a17a9]                           dc.b $01
[000a17aa]                           dc.w $8c00
[000a17ac]                           dc.b $00
[000a17ad]                           dc.b $0e
[000a17ae]                           dc.b $00
[000a17af]                           dc.b $01
[000a17b0]                           dc.w $c400
[000a17b2]                           dc.b $00
[000a17b3]                           dc.b $0e
[000a17b4]                           dc.b $00
[000a17b5]                           dc.b $01
[000a17b6]                           dc.w $e400
[000a17b8]                           dc.b $00
[000a17b9]                           dc.b $0e
[000a17ba]                           dc.b $00
[000a17bb]                           dc.b $01
[000a17bc]                           dc.w $fc00
[000a17be]                           dc.b $00
[000a17bf]                           dc.b $00
[000a17c0]                           dc.b $00
[000a17c1]                           dc.b $00
[000a17c2]                           dc.b $00
[000a17c3]                           dc.b $00
[000a17c4]                           dc.w $03ff
[000a17c6]                           dc.w $f81f
[000a17c8]                           dc.w $ffc0
[000a17ca]                           dc.b $00
[000a17cb]                           dc.b $00
[000a17cc]                           dc.b $00
[000a17cd]                           dc.b $00
[000a17ce]                           dc.b $00
[000a17cf]                           dc.b $00
[000a17d0]                           dc.b $00
[000a17d1]                           dc.b $00
[000a17d2]                           dc.b $00
[000a17d3]                           dc.b $00
[000a17d4]                           dc.b $00
[000a17d5]                           dc.b $00
[000a17d6]                           dc.b $00
[000a17d7]                           dc.b $00
[000a17d8]                           dc.b $00
[000a17d9]                           dc.b $00
[000a17da]                           dc.b $00
[000a17db]                           dc.b $00
[000a17dc]                           dc.b $00
[000a17dd]                           dc.b $00
[000a17de]                           dc.b $00
[000a17df]                           dc.b $00
[000a17e0]                           dc.b $00
[000a17e1]                           dc.b $00
[000a17e2]                           dc.b $00
[000a17e3]                           dc.b $00
[000a17e4]                           dc.b $00
[000a17e5]                           dc.b $00
[000a17e6]                           dc.b $00
[000a17e7]                           dc.b $00
[000a17e8]                           dc.b $00
[000a17e9]                           dc.b $00
[000a17ea]                           dc.b $00
[000a17eb]                           dc.b $00
[000a17ec]                           dc.b $00
[000a17ed]                           dc.b $00
[000a17ee]                           dc.b $00
[000a17ef]                           dc.b $00
[000a17f0]                           dc.b $00
[000a17f1]                           dc.b $00
[000a17f2]                           dc.b $00
[000a17f3]                           dc.b $00
[000a17f4]                           dc.b $00
[000a17f5]                           dc.b $7f
[000a17f6]                           dc.w $c003
[000a17f8]                           dc.w $fe00
[000a17fa]                           dc.b $00
[000a17fb]                           dc.b $7f
[000a17fc]                           dc.w $c002
[000a17fe]                           dc.w $0200
[000a1800]                           dc.b $00
[000a1801]                           dc.b $6e
[000a1802]                           dc.w $c002
[000a1804]                           dc.w $0200
[000a1806]                           dc.b $00
[000a1807]                           dc.b $64
[000a1808]                           dc.w $c002
[000a180a]                           dc.w $0200
[000a180c]                           dc.b $00
[000a180d]                           dc.b $60
[000a180e]                           dc.w $c002
[000a1810]                           dc.w $0200
[000a1812]                           dc.b $00
[000a1813]                           dc.b $64
[000a1814]                           dc.w $c002
[000a1816]                           dc.w $0200
[000a1818]                           dc.b $00
[000a1819]                           dc.b $6e
[000a181a]                           dc.w $c002
[000a181c]                           dc.w $0200
[000a181e]                           dc.b $00
[000a181f]                           dc.b $7f
[000a1820]                           dc.w $c003
[000a1822]                           dc.w $fe00
[000a1824]                           dc.b $00
[000a1825]                           dc.b $00
[000a1826]                           dc.b $00
[000a1827]                           dc.b $00
[000a1828]                           dc.b $00
[000a1829]                           dc.b $00
[000a182a]                           dc.w $03ff
[000a182c]                           dc.w $f81f
[000a182e]                           dc.w $ffc0
[000a1830]                           dc.b $00
[000a1831]                           dc.b $00
[000a1832]                           dc.b $00
[000a1833]                           dc.b $00
[000a1834]                           dc.b $00
[000a1835]                           dc.b $00
[000a1836]                           dc.b $00
[000a1837]                           dc.b $00
[000a1838]                           dc.b $00
[000a1839]                           dc.b $00
[000a183a]                           dc.b $00
[000a183b]                           dc.b $00
[000a183c]                           dc.b $00
[000a183d]                           dc.b $00
[000a183e]                           dc.b $00
[000a183f]                           dc.b $00
[000a1840]                           dc.b $00
[000a1841]                           dc.b $00
[000a1842]                           dc.b $00
[000a1843]                           dc.b $00
[000a1844]                           dc.b $00
[000a1845]                           dc.b $00
[000a1846]                           dc.b $00
[000a1847]                           dc.b $00
[000a1848]                           dc.b $00
[000a1849]                           dc.b $00
[000a184a]                           dc.w $6001
[000a184c]                           dc.w $fc00
[000a184e]                           dc.b $00
[000a184f]                           dc.b $00
[000a1850]                           dc.w $c001
[000a1852]                           dc.w $fc00
[000a1854]                           dc.b $00
[000a1855]                           dc.b $01
[000a1856]                           dc.w $8001
[000a1858]                           dc.w $fc00
[000a185a]                           dc.b $00
[000a185b]                           dc.b $01
[000a185c]                           dc.w $8001
[000a185e]                           dc.w $fc00
[000a1860]                           dc.b $00
[000a1861]                           dc.b $03
[000a1862]                           dc.b $00
[000a1863]                           dc.b $01
[000a1864]                           dc.w $fc00
[000a1866]                           dc.b $00
[000a1867]                           dc.b $03
[000a1868]                           dc.b $00
[000a1869]                           dc.b $01
[000a186a]                           dc.w $fc00
[000a186c]                           dc.b $00
[000a186d]                           dc.b $03
[000a186e]                           dc.b $00
[000a186f]                           dc.b $01
[000a1870]                           dc.w $fc00
[000a1872]                           dc.b $00
[000a1873]                           dc.b $00
[000a1874]                           dc.b $00
[000a1875]                           dc.b $00
[000a1876]                           dc.b $00
[000a1877]                           dc.b $00
[000a1878]                           dc.w $03ff
[000a187a]                           dc.w $f81f
[000a187c]                           dc.w $ffc0
[000a187e]                           dc.b $00
[000a187f]                           dc.b $00
[000a1880]                           dc.b $00
[000a1881]                           dc.b $00
[000a1882]                           dc.b $00
[000a1883]                           dc.b $00
[000a1884]                           dc.b $00
[000a1885]                           dc.b $00
[000a1886]                           dc.b $00
[000a1887]                           dc.b $00
[000a1888]                           dc.b $00
[000a1889]                           dc.b $00
[000a188a]                           dc.b $00
[000a188b]                           dc.b $00
[000a188c]                           dc.b $00
[000a188d]                           dc.b $00
[000a188e]                           dc.b $00
[000a188f]                           dc.b $00
[000a1890]                           dc.b $00
[000a1891]                           dc.b $00
[000a1892]                           dc.b $00
[000a1893]                           dc.b $00
[000a1894]                           dc.b $00
[000a1895]                           dc.b $00
[000a1896]                           dc.b $00
[000a1897]                           dc.b $00
[000a1898]                           dc.b $00
[000a1899]                           dc.b $00
[000a189a]                           dc.b $00
[000a189b]                           dc.b $00
[000a189c]                           dc.b $00
[000a189d]                           dc.b $00
[000a189e]                           dc.b $00
[000a189f]                           dc.b $00
[000a18a0]                           dc.b $00
[000a18a1]                           dc.b $00
[000a18a2]                           dc.b $00
[000a18a3]                           dc.b $00
[000a18a4]                           dc.b $00
[000a18a5]                           dc.b $00
[000a18a6]                           dc.b $00
[000a18a7]                           dc.b $00
[000a18a8]                           dc.b $00
[000a18a9]                           dc.b $7f
[000a18aa]                           dc.w $c003
[000a18ac]                           dc.w $fe00
[000a18ae]                           dc.b $00
[000a18af]                           dc.b $40
[000a18b0]                           dc.w $4002
[000a18b2]                           dc.w $0200
[000a18b4]                           dc.b $00
[000a18b5]                           dc.b $51
[000a18b6]                           dc.w $4002
[000a18b8]                           dc.w $0200
[000a18ba]                           dc.b $00
[000a18bb]                           dc.b $4a
[000a18bc]                           dc.w $4002
[000a18be]                           dc.w $0200
[000a18c0]                           dc.b $00
[000a18c1]                           dc.b $44
[000a18c2]                           dc.w $4002
[000a18c4]                           dc.w $0200
[000a18c6]                           dc.b $00
[000a18c7]                           dc.b $4a
[000a18c8]                           dc.w $4002
[000a18ca]                           dc.w $0200
[000a18cc]                           dc.b $00
[000a18cd]                           dc.b $51
[000a18ce]                           dc.w $4002
[000a18d0]                           dc.w $3e00
[000a18d2]                           dc.b $00
[000a18d3]                           dc.b $40
[000a18d4]                           dc.w $4003
[000a18d6]                           dc.w $fe00
[000a18d8]                           dc.b $00
[000a18d9]                           dc.b $00
[000a18da]                           dc.w $0400
[000a18dc]                           dc.b $00
[000a18dd]                           dc.b $20
[000a18de]                           dc.b $00
[000a18df]                           dc.b $00
[000a18e0]                           dc.w $0400
[000a18e2]                           dc.b $00
[000a18e3]                           dc.b $20
[000a18e4]                           dc.w $07ff
[000a18e6]                           dc.w $fc3f
[000a18e8]                           dc.w $ffe0
[000a18ea]                           dc.b $00
[000a18eb]                           dc.b $00
[000a18ec]                           dc.b $00
[000a18ed]                           dc.b $00
[000a18ee]                           dc.b $00
[000a18ef]                           dc.b $00
[000a18f0]                           dc.b $00
[000a18f1]                           dc.b $00
[000a18f2]                           dc.b $00
[000a18f3]                           dc.b $00
[000a18f4]                           dc.b $00
[000a18f5]                           dc.b $00
[000a18f6]                           dc.b $00
[000a18f7]                           dc.b $00
[000a18f8]                           dc.b $00
[000a18f9]                           dc.b $03
[000a18fa]                           dc.w $fe00
[000a18fc]                           dc.b $00
[000a18fd]                           dc.b $04
[000a18fe]                           dc.b $00
[000a18ff]                           dc.b $02
[000a1900]                           dc.w $0200
[000a1902]                           dc.b $00
[000a1903]                           dc.b $08
[000a1904]                           dc.b $00
[000a1905]                           dc.b $02
[000a1906]                           dc.w $0200
[000a1908]                           dc.b $00
[000a1909]                           dc.b $10
[000a190a]                           dc.b $00
[000a190b]                           dc.b $02
[000a190c]                           dc.w $4200
[000a190e]                           dc.b $00
[000a190f]                           dc.b $10
[000a1910]                           dc.b $00
[000a1911]                           dc.b $02
[000a1912]                           dc.w $2200
[000a1914]                           dc.b $00
[000a1915]                           dc.b $20
[000a1916]                           dc.b $00
[000a1917]                           dc.b $02
[000a1918]                           dc.w $1200
[000a191a]                           dc.b $00
[000a191b]                           dc.b $20
[000a191c]                           dc.b $00
[000a191d]                           dc.b $02
[000a191e]                           dc.w $0200
[000a1920]                           dc.b $00
[000a1921]                           dc.b $20
[000a1922]                           dc.b $00
[000a1923]                           dc.b $02
[000a1924]                           dc.w $0200
[000a1926]                           dc.b $00
[000a1927]                           dc.b $00
[000a1928]                           dc.w $0400
[000a192a]                           dc.b $00
[000a192b]                           dc.b $20
[000a192c]                           dc.b $00
[000a192d]                           dc.b $00
[000a192e]                           dc.w $0400
[000a1930]                           dc.b $00
[000a1931]                           dc.b $20
[000a1932]                           dc.w $07ff
[000a1934]                           dc.w $fc3f
[000a1936]                           dc.w $ffe0
[000a1938]                           dc.b $00
[000a1939]                           dc.b $00
[000a193a]                           dc.b $00
[000a193b]                           dc.b $00
[000a193c]                           dc.b $00
[000a193d]                           dc.b $00
[000a193e]                           dc.b $00
[000a193f]                           dc.b $00
[000a1940]                           dc.b $00
[000a1941]                           dc.b $00
[000a1942]                           dc.b $00
[000a1943]                           dc.b $00
[000a1944]                           dc.b $00
[000a1945]                           dc.b $00
[000a1946]                           dc.b $00
[000a1947]                           dc.b $00
[000a1948]                           dc.b $00
[000a1949]                           dc.b $00
DATAS_02:
[000a194a]                           dc.b $00
[000a194b]                           dc.b $00
[000a194c]                           dc.b $00
[000a194d]                           dc.b $00
[000a194e]                           dc.b $00
[000a194f]                           dc.b $00
[000a1950]                           dc.b $00
[000a1951]                           dc.b $00
[000a1952]                           dc.b $00
[000a1953]                           dc.b $00
[000a1954]                           dc.b $00
[000a1955]                           dc.b $00
[000a1956]                           dc.b $00
[000a1957]                           dc.b $00
[000a1958]                           dc.b $00
[000a1959]                           dc.b $00
[000a195a]                           dc.b $00
[000a195b]                           dc.b $00
[000a195c]                           dc.b $00
[000a195d]                           dc.b $7f
[000a195e]                           dc.w $c003
[000a1960]                           dc.w $fe00
[000a1962]                           dc.b $00
[000a1963]                           dc.b $7f
[000a1964]                           dc.w $c003
[000a1966]                           dc.w $fe00
[000a1968]                           dc.b $00
[000a1969]                           dc.b $7f
[000a196a]                           dc.w $c003
[000a196c]                           dc.w $fe00
[000a196e]                           dc.b $00
[000a196f]                           dc.b $7f
[000a1970]                           dc.w $c003
[000a1972]                           dc.w $fe00
[000a1974]                           dc.b $00
[000a1975]                           dc.b $7f
[000a1976]                           dc.w $c003
[000a1978]                           dc.w $fe00
[000a197a]                           dc.b $00
[000a197b]                           dc.b $7f
[000a197c]                           dc.w $c003
[000a197e]                           dc.w $fe00
[000a1980]                           dc.b $00
[000a1981]                           dc.b $7f
[000a1982]                           dc.w $c003
[000a1984]                           dc.w $fe00
[000a1986]                           dc.b $00
[000a1987]                           dc.b $7f
[000a1988]                           dc.w $c003
[000a198a]                           dc.w $fe00
[000a198c]                           dc.w $07ff
[000a198e]                           dc.w $fc3f
[000a1990]                           dc.w $ffe0
[000a1992]                           dc.w $07ff
[000a1994]                           dc.w $fc3f
[000a1996]                           dc.w $ffe0
[000a1998]                           dc.w $07ff
[000a199a]                           dc.w $fc3f
[000a199c]                           dc.w $ffe0
[000a199e]                           dc.b $00
[000a199f]                           dc.b $00
[000a19a0]                           dc.b $00
[000a19a1]                           dc.b $00
[000a19a2]                           dc.b $00
[000a19a3]                           dc.b $00
[000a19a4]                           dc.b $00
[000a19a5]                           dc.b $00
[000a19a6]                           dc.b $00
[000a19a7]                           dc.b $00
[000a19a8]                           dc.b $00
[000a19a9]                           dc.b $00
[000a19aa]                           dc.b $00
[000a19ab]                           dc.b $00
[000a19ac]                           dc.b $00
[000a19ad]                           dc.b $03
[000a19ae]                           dc.w $fe00
[000a19b0]                           dc.b $00
[000a19b1]                           dc.b $07
[000a19b2]                           dc.w $e003
[000a19b4]                           dc.w $fe00
[000a19b6]                           dc.b $00
[000a19b7]                           dc.b $0f
[000a19b8]                           dc.w $c003
[000a19ba]                           dc.w $fe00
[000a19bc]                           dc.b $00
[000a19bd]                           dc.b $1f
[000a19be]                           dc.w $8003
[000a19c0]                           dc.w $fe00
[000a19c2]                           dc.b $00
[000a19c3]                           dc.b $1f
[000a19c4]                           dc.w $8003
[000a19c6]                           dc.w $fe00
[000a19c8]                           dc.b $00
[000a19c9]                           dc.b $3f
[000a19ca]                           dc.b $00
[000a19cb]                           dc.b $03
[000a19cc]                           dc.w $fe00
[000a19ce]                           dc.b $00
[000a19cf]                           dc.b $3f
[000a19d0]                           dc.b $00
[000a19d1]                           dc.b $03
[000a19d2]                           dc.w $fe00
[000a19d4]                           dc.b $00
[000a19d5]                           dc.b $3f
[000a19d6]                           dc.b $00
[000a19d7]                           dc.b $03
[000a19d8]                           dc.w $fe00
[000a19da]                           dc.w $07ff
[000a19dc]                           dc.w $fc3f
[000a19de]                           dc.w $ffe0
[000a19e0]                           dc.w $07ff
[000a19e2]                           dc.w $fc3f
[000a19e4]                           dc.w $ffe0
[000a19e6]                           dc.w $07ff
[000a19e8]                           dc.w $fc3f
[000a19ea]                           dc.w $ffe0
[000a19ec]                           dc.b $00
[000a19ed]                           dc.b $00
[000a19ee]                           dc.b $00
[000a19ef]                           dc.b $00
[000a19f0]                           dc.b $00
[000a19f1]                           dc.b $00
[000a19f2]                           dc.b $00
[000a19f3]                           dc.b $00
[000a19f4]                           dc.b $00
[000a19f5]                           dc.b $00
[000a19f6]                           dc.b $00
[000a19f7]                           dc.b $00
[000a19f8]                           dc.b $00
[000a19f9]                           dc.b $00
[000a19fa]                           dc.b $00
[000a19fb]                           dc.b $00
[000a19fc]                           dc.b $00
[000a19fd]                           dc.b $00
DATAS_03:
[000a19fe]                           dc.b $00
[000a19ff]                           dc.b $00
[000a1a00]                           dc.b $00
[000a1a01]                           dc.b $00
[000a1a02]                           dc.w $02d8
[000a1a04]                           dc.b $00
[000a1a05]                           dc.b $00
[000a1a06]                           dc.b $00
[000a1a07]                           dc.b $00
[000a1a08]                           dc.b $00
[000a1a09]                           dc.b $00
[000a1a0a]                           dc.b $00
[000a1a0b]                           dc.b $00
[000a1a0c]                           dc.b $00
[000a1a0d]                           dc.b $00
[000a1a0e]                           dc.b $00
[000a1a0f]                           dc.b $00
[000a1a10]                           dc.b $00
[000a1a11]                           dc.b $00
[000a1a12]                           dc.b $00
[000a1a13]                           dc.b $00
[000a1a14]                           dc.b $00
[000a1a15]                           dc.b $00
[000a1a16]                           dc.b $00
[000a1a17]                           dc.b $7f
[000a1a18]                           dc.w $c003
[000a1a1a]                           dc.w $fe00
[000a1a1c]                           dc.b $00
[000a1a1d]                           dc.b $7f
[000a1a1e]                           dc.w $c003
[000a1a20]                           dc.w $c200
[000a1a22]                           dc.b $00
[000a1a23]                           dc.b $7f
[000a1a24]                           dc.w $c003
[000a1a26]                           dc.w $d200
[000a1a28]                           dc.b $00
[000a1a29]                           dc.b $7f
[000a1a2a]                           dc.w $c003
[000a1a2c]                           dc.w $8200
[000a1a2e]                           dc.b $00
[000a1a2f]                           dc.b $7f
[000a1a30]                           dc.w $c002
[000a1a32]                           dc.w $2200
[000a1a34]                           dc.b $00
[000a1a35]                           dc.b $7f
[000a1a36]                           dc.w $c002
[000a1a38]                           dc.w $0200
[000a1a3a]                           dc.b $00
[000a1a3b]                           dc.b $7f
[000a1a3c]                           dc.w $c002
[000a1a3e]                           dc.w $0200
[000a1a40]                           dc.b $00
[000a1a41]                           dc.b $7f
[000a1a42]                           dc.w $c003
[000a1a44]                           dc.w $fe00
[000a1a46]                           dc.b $00
[000a1a47]                           dc.b $00
[000a1a48]                           dc.b $00
[000a1a49]                           dc.b $00
[000a1a4a]                           dc.b $00
[000a1a4b]                           dc.b $00
[000a1a4c]                           dc.w $03ff
[000a1a4e]                           dc.w $f81f
[000a1a50]                           dc.w $ffc0
[000a1a52]                           dc.b $00
[000a1a53]                           dc.b $00
[000a1a54]                           dc.b $00
[000a1a55]                           dc.b $00
[000a1a56]                           dc.b $00
[000a1a57]                           dc.b $00
[000a1a58]                           dc.b $00
[000a1a59]                           dc.b $00
[000a1a5a]                           dc.b $00
[000a1a5b]                           dc.b $00
[000a1a5c]                           dc.b $00
[000a1a5d]                           dc.b $00
[000a1a5e]                           dc.b $00
[000a1a5f]                           dc.b $00
[000a1a60]                           dc.b $00
[000a1a61]                           dc.b $00
[000a1a62]                           dc.b $00
[000a1a63]                           dc.b $00
[000a1a64]                           dc.b $00
[000a1a65]                           dc.b $00
[000a1a66]                           dc.b $00
[000a1a67]                           dc.b $00
[000a1a68]                           dc.b $00
[000a1a69]                           dc.b $00
[000a1a6a]                           dc.b $00
[000a1a6b]                           dc.b $07
[000a1a6c]                           dc.w $8001
[000a1a6e]                           dc.w $fc00
[000a1a70]                           dc.b $00
[000a1a71]                           dc.b $0f
[000a1a72]                           dc.b $00
[000a1a73]                           dc.b $01
[000a1a74]                           dc.w $fc00
[000a1a76]                           dc.b $00
[000a1a77]                           dc.b $1e
[000a1a78]                           dc.b $00
[000a1a79]                           dc.b $01
[000a1a7a]                           dc.w $fc00
[000a1a7c]                           dc.b $00
[000a1a7d]                           dc.b $1e
[000a1a7e]                           dc.b $00
[000a1a7f]                           dc.b $01
[000a1a80]                           dc.w $fc00
[000a1a82]                           dc.b $00
[000a1a83]                           dc.b $3c
[000a1a84]                           dc.b $00
[000a1a85]                           dc.b $01
[000a1a86]                           dc.w $fc00
[000a1a88]                           dc.b $00
[000a1a89]                           dc.b $3c
[000a1a8a]                           dc.b $00
[000a1a8b]                           dc.b $01
[000a1a8c]                           dc.w $fc00
[000a1a8e]                           dc.b $00
[000a1a8f]                           dc.b $3c
[000a1a90]                           dc.b $00
[000a1a91]                           dc.b $01
[000a1a92]                           dc.w $fc00
[000a1a94]                           dc.b $00
[000a1a95]                           dc.b $00
[000a1a96]                           dc.b $00
[000a1a97]                           dc.b $00
[000a1a98]                           dc.b $00
[000a1a99]                           dc.b $00
[000a1a9a]                           dc.w $03ff
[000a1a9c]                           dc.w $f81f
[000a1a9e]                           dc.w $ffc0
[000a1aa0]                           dc.b $00
[000a1aa1]                           dc.b $00
[000a1aa2]                           dc.b $00
[000a1aa3]                           dc.b $00
[000a1aa4]                           dc.b $00
[000a1aa5]                           dc.b $00
[000a1aa6]                           dc.b $00
[000a1aa7]                           dc.b $00
[000a1aa8]                           dc.b $00
[000a1aa9]                           dc.b $00
[000a1aaa]                           dc.b $00
[000a1aab]                           dc.b $00
[000a1aac]                           dc.b $00
[000a1aad]                           dc.b $00
[000a1aae]                           dc.b $00
[000a1aaf]                           dc.b $00
[000a1ab0]                           dc.b $00
[000a1ab1]                           dc.b $00
[000a1ab2]                           dc.b $00
[000a1ab3]                           dc.b $00
[000a1ab4]                           dc.b $00
[000a1ab5]                           dc.b $00
[000a1ab6]                           dc.b $00
[000a1ab7]                           dc.b $00
[000a1ab8]                           dc.b $00
[000a1ab9]                           dc.b $00
[000a1aba]                           dc.b $00
[000a1abb]                           dc.b $00
[000a1abc]                           dc.b $00
[000a1abd]                           dc.b $00
[000a1abe]                           dc.b $00
[000a1abf]                           dc.b $00
[000a1ac0]                           dc.b $00
[000a1ac1]                           dc.b $00
[000a1ac2]                           dc.b $00
[000a1ac3]                           dc.b $00
[000a1ac4]                           dc.b $00
[000a1ac5]                           dc.b $00
[000a1ac6]                           dc.b $00
[000a1ac7]                           dc.b $00
[000a1ac8]                           dc.b $00
[000a1ac9]                           dc.b $00
[000a1aca]                           dc.b $00
[000a1acb]                           dc.b $7f
[000a1acc]                           dc.w $c003
[000a1ace]                           dc.w $fe00
[000a1ad0]                           dc.b $00
[000a1ad1]                           dc.b $7f
[000a1ad2]                           dc.w $c002
[000a1ad4]                           dc.w $c200
[000a1ad6]                           dc.b $00
[000a1ad7]                           dc.b $6e
[000a1ad8]                           dc.w $c003
[000a1ada]                           dc.w $d200
[000a1adc]                           dc.b $00
[000a1add]                           dc.b $64
[000a1ade]                           dc.w $c003
[000a1ae0]                           dc.w $8200
[000a1ae2]                           dc.b $00
[000a1ae3]                           dc.b $71
[000a1ae4]                           dc.w $c002
[000a1ae6]                           dc.w $2200
[000a1ae8]                           dc.b $00
[000a1ae9]                           dc.b $64
[000a1aea]                           dc.w $c002
[000a1aec]                           dc.w $1e00
[000a1aee]                           dc.b $00
[000a1aef]                           dc.b $6e
[000a1af0]                           dc.w $c003
[000a1af2]                           dc.w $fe00
[000a1af4]                           dc.b $00
[000a1af5]                           dc.b $7f
[000a1af6]                           dc.w $c003
[000a1af8]                           dc.w $fe00
[000a1afa]                           dc.b $00
[000a1afb]                           dc.b $00
[000a1afc]                           dc.b $00
[000a1afd]                           dc.b $00
[000a1afe]                           dc.b $00
[000a1aff]                           dc.b $00
[000a1b00]                           dc.w $03ff
[000a1b02]                           dc.w $f81f
[000a1b04]                           dc.w $ffc0
[000a1b06]                           dc.b $00
[000a1b07]                           dc.b $00
[000a1b08]                           dc.b $00
[000a1b09]                           dc.b $00
[000a1b0a]                           dc.b $00
[000a1b0b]                           dc.b $00
[000a1b0c]                           dc.b $00
[000a1b0d]                           dc.b $00
[000a1b0e]                           dc.b $00
[000a1b0f]                           dc.b $00
[000a1b10]                           dc.b $00
[000a1b11]                           dc.b $00
[000a1b12]                           dc.b $00
[000a1b13]                           dc.b $00
[000a1b14]                           dc.b $00
[000a1b15]                           dc.b $00
[000a1b16]                           dc.b $00
[000a1b17]                           dc.b $00
[000a1b18]                           dc.b $00
[000a1b19]                           dc.b $00
[000a1b1a]                           dc.b $00
[000a1b1b]                           dc.b $00
[000a1b1c]                           dc.b $00
[000a1b1d]                           dc.b $00
[000a1b1e]                           dc.b $00
[000a1b1f]                           dc.b $01
[000a1b20]                           dc.w $c001
[000a1b22]                           dc.w $fc00
[000a1b24]                           dc.b $00
[000a1b25]                           dc.b $03
[000a1b26]                           dc.w $8001
[000a1b28]                           dc.w $3c00
[000a1b2a]                           dc.b $00
[000a1b2b]                           dc.b $07
[000a1b2c]                           dc.b $00
[000a1b2d]                           dc.b $01
[000a1b2e]                           dc.w $1c00
[000a1b30]                           dc.b $00
[000a1b31]                           dc.b $07
[000a1b32]                           dc.b $00
[000a1b33]                           dc.b $01
[000a1b34]                           dc.w $8c00
[000a1b36]                           dc.b $00
[000a1b37]                           dc.b $0e
[000a1b38]                           dc.b $00
[000a1b39]                           dc.b $01
[000a1b3a]                           dc.w $c400
[000a1b3c]                           dc.b $00
[000a1b3d]                           dc.b $0e
[000a1b3e]                           dc.b $00
[000a1b3f]                           dc.b $01
[000a1b40]                           dc.w $e400
[000a1b42]                           dc.b $00
[000a1b43]                           dc.b $0e
[000a1b44]                           dc.b $00
[000a1b45]                           dc.b $01
[000a1b46]                           dc.w $fc00
[000a1b48]                           dc.b $00
[000a1b49]                           dc.b $00
[000a1b4a]                           dc.b $00
[000a1b4b]                           dc.b $00
[000a1b4c]                           dc.b $00
[000a1b4d]                           dc.b $00
[000a1b4e]                           dc.w $03ff
[000a1b50]                           dc.w $f81f
[000a1b52]                           dc.w $ffc0
[000a1b54]                           dc.b $00
[000a1b55]                           dc.b $00
[000a1b56]                           dc.b $00
[000a1b57]                           dc.b $00
[000a1b58]                           dc.b $00
[000a1b59]                           dc.b $00
[000a1b5a]                           dc.b $00
[000a1b5b]                           dc.b $00
[000a1b5c]                           dc.b $00
[000a1b5d]                           dc.b $00
[000a1b5e]                           dc.b $00
[000a1b5f]                           dc.b $00
[000a1b60]                           dc.b $00
[000a1b61]                           dc.b $00
[000a1b62]                           dc.b $00
[000a1b63]                           dc.b $00
[000a1b64]                           dc.b $00
[000a1b65]                           dc.b $00
[000a1b66]                           dc.b $00
[000a1b67]                           dc.b $00
[000a1b68]                           dc.b $00
[000a1b69]                           dc.b $00
[000a1b6a]                           dc.b $00
[000a1b6b]                           dc.b $00
[000a1b6c]                           dc.b $00
[000a1b6d]                           dc.b $00
[000a1b6e]                           dc.b $00
[000a1b6f]                           dc.b $00
[000a1b70]                           dc.b $00
[000a1b71]                           dc.b $00
[000a1b72]                           dc.b $00
[000a1b73]                           dc.b $00
[000a1b74]                           dc.b $00
[000a1b75]                           dc.b $00
[000a1b76]                           dc.b $00
[000a1b77]                           dc.b $00
[000a1b78]                           dc.b $00
[000a1b79]                           dc.b $00
[000a1b7a]                           dc.b $00
[000a1b7b]                           dc.b $00
[000a1b7c]                           dc.b $00
[000a1b7d]                           dc.b $00
[000a1b7e]                           dc.b $00
[000a1b7f]                           dc.b $7f
[000a1b80]                           dc.w $c003
[000a1b82]                           dc.w $fe00
[000a1b84]                           dc.b $00
[000a1b85]                           dc.b $7f
[000a1b86]                           dc.w $c002
[000a1b88]                           dc.w $0200
[000a1b8a]                           dc.b $00
[000a1b8b]                           dc.b $6e
[000a1b8c]                           dc.w $c002
[000a1b8e]                           dc.w $0200
[000a1b90]                           dc.b $00
[000a1b91]                           dc.b $64
[000a1b92]                           dc.w $c002
[000a1b94]                           dc.w $0200
[000a1b96]                           dc.b $00
[000a1b97]                           dc.b $60
[000a1b98]                           dc.w $c002
[000a1b9a]                           dc.w $0200
[000a1b9c]                           dc.b $00
[000a1b9d]                           dc.b $64
[000a1b9e]                           dc.w $c002
[000a1ba0]                           dc.w $0200
[000a1ba2]                           dc.b $00
[000a1ba3]                           dc.b $6e
[000a1ba4]                           dc.w $c002
[000a1ba6]                           dc.w $0200
[000a1ba8]                           dc.b $00
[000a1ba9]                           dc.b $7f
[000a1baa]                           dc.w $c003
[000a1bac]                           dc.w $fe00
[000a1bae]                           dc.b $00
[000a1baf]                           dc.b $00
[000a1bb0]                           dc.b $00
[000a1bb1]                           dc.b $00
[000a1bb2]                           dc.b $00
[000a1bb3]                           dc.b $00
[000a1bb4]                           dc.w $03ff
[000a1bb6]                           dc.w $f81f
[000a1bb8]                           dc.w $ffc0
[000a1bba]                           dc.b $00
[000a1bbb]                           dc.b $00
[000a1bbc]                           dc.b $00
[000a1bbd]                           dc.b $00
[000a1bbe]                           dc.b $00
[000a1bbf]                           dc.b $00
[000a1bc0]                           dc.b $00
[000a1bc1]                           dc.b $00
[000a1bc2]                           dc.b $00
[000a1bc3]                           dc.b $00
[000a1bc4]                           dc.b $00
[000a1bc5]                           dc.b $00
[000a1bc6]                           dc.b $00
[000a1bc7]                           dc.b $00
[000a1bc8]                           dc.b $00
[000a1bc9]                           dc.b $00
[000a1bca]                           dc.b $00
[000a1bcb]                           dc.b $00
[000a1bcc]                           dc.b $00
[000a1bcd]                           dc.b $00
[000a1bce]                           dc.b $00
[000a1bcf]                           dc.b $00
[000a1bd0]                           dc.b $00
[000a1bd1]                           dc.b $00
[000a1bd2]                           dc.b $00
[000a1bd3]                           dc.b $00
[000a1bd4]                           dc.w $6001
[000a1bd6]                           dc.w $fc00
[000a1bd8]                           dc.b $00
[000a1bd9]                           dc.b $00
[000a1bda]                           dc.w $c001
[000a1bdc]                           dc.w $fc00
[000a1bde]                           dc.b $00
[000a1bdf]                           dc.b $01
[000a1be0]                           dc.w $8001
[000a1be2]                           dc.w $fc00
[000a1be4]                           dc.b $00
[000a1be5]                           dc.b $01
[000a1be6]                           dc.w $8001
[000a1be8]                           dc.w $fc00
[000a1bea]                           dc.b $00
[000a1beb]                           dc.b $03
[000a1bec]                           dc.b $00
[000a1bed]                           dc.b $01
[000a1bee]                           dc.w $fc00
[000a1bf0]                           dc.b $00
[000a1bf1]                           dc.b $03
[000a1bf2]                           dc.b $00
[000a1bf3]                           dc.b $01
[000a1bf4]                           dc.w $fc00
[000a1bf6]                           dc.b $00
[000a1bf7]                           dc.b $03
[000a1bf8]                           dc.b $00
[000a1bf9]                           dc.b $01
[000a1bfa]                           dc.w $fc00
[000a1bfc]                           dc.b $00
[000a1bfd]                           dc.b $00
[000a1bfe]                           dc.b $00
[000a1bff]                           dc.b $00
[000a1c00]                           dc.b $00
[000a1c01]                           dc.b $00
[000a1c02]                           dc.w $03ff
[000a1c04]                           dc.w $f81f
[000a1c06]                           dc.w $ffc0
[000a1c08]                           dc.b $00
[000a1c09]                           dc.b $00
[000a1c0a]                           dc.b $00
[000a1c0b]                           dc.b $00
[000a1c0c]                           dc.b $00
[000a1c0d]                           dc.b $00
[000a1c0e]                           dc.b $00
[000a1c0f]                           dc.b $00
[000a1c10]                           dc.b $00
[000a1c11]                           dc.b $00
[000a1c12]                           dc.b $00
[000a1c13]                           dc.b $00
[000a1c14]                           dc.b $00
[000a1c15]                           dc.b $00
[000a1c16]                           dc.b $00
[000a1c17]                           dc.b $00
[000a1c18]                           dc.b $00
[000a1c19]                           dc.b $00
[000a1c1a]                           dc.b $00
[000a1c1b]                           dc.b $00
[000a1c1c]                           dc.b $00
[000a1c1d]                           dc.b $00
[000a1c1e]                           dc.b $00
[000a1c1f]                           dc.b $00
[000a1c20]                           dc.b $00
[000a1c21]                           dc.b $00
[000a1c22]                           dc.b $00
[000a1c23]                           dc.b $00
[000a1c24]                           dc.b $00
[000a1c25]                           dc.b $00
[000a1c26]                           dc.b $00
[000a1c27]                           dc.b $00
[000a1c28]                           dc.b $00
[000a1c29]                           dc.b $00
[000a1c2a]                           dc.b $00
[000a1c2b]                           dc.b $00
[000a1c2c]                           dc.b $00
[000a1c2d]                           dc.b $00
[000a1c2e]                           dc.b $00
[000a1c2f]                           dc.b $00
[000a1c30]                           dc.b $00
[000a1c31]                           dc.b $00
[000a1c32]                           dc.b $00
[000a1c33]                           dc.b $7f
[000a1c34]                           dc.w $c003
[000a1c36]                           dc.w $fe00
[000a1c38]                           dc.b $00
[000a1c39]                           dc.b $40
[000a1c3a]                           dc.w $4002
[000a1c3c]                           dc.w $0200
[000a1c3e]                           dc.b $00
[000a1c3f]                           dc.b $51
[000a1c40]                           dc.w $4002
[000a1c42]                           dc.w $0200
[000a1c44]                           dc.b $00
[000a1c45]                           dc.b $4a
[000a1c46]                           dc.w $4002
[000a1c48]                           dc.w $0200
[000a1c4a]                           dc.b $00
[000a1c4b]                           dc.b $44
[000a1c4c]                           dc.w $4002
[000a1c4e]                           dc.w $0200
[000a1c50]                           dc.b $00
[000a1c51]                           dc.b $4a
[000a1c52]                           dc.w $4002
[000a1c54]                           dc.w $0200
[000a1c56]                           dc.b $00
[000a1c57]                           dc.b $51
[000a1c58]                           dc.w $4002
[000a1c5a]                           dc.w $3e00
[000a1c5c]                           dc.b $00
[000a1c5d]                           dc.b $40
[000a1c5e]                           dc.w $4003
[000a1c60]                           dc.w $fe00
[000a1c62]                           dc.b $00
[000a1c63]                           dc.b $00
[000a1c64]                           dc.w $0400
[000a1c66]                           dc.b $00
[000a1c67]                           dc.b $20
[000a1c68]                           dc.b $00
[000a1c69]                           dc.b $00
[000a1c6a]                           dc.w $0400
[000a1c6c]                           dc.b $00
[000a1c6d]                           dc.b $20
[000a1c6e]                           dc.w $07ff
[000a1c70]                           dc.w $fc3f
[000a1c72]                           dc.w $ffe0
[000a1c74]                           dc.b $00
[000a1c75]                           dc.b $00
[000a1c76]                           dc.b $00
[000a1c77]                           dc.b $00
[000a1c78]                           dc.b $00
[000a1c79]                           dc.b $00
[000a1c7a]                           dc.b $00
[000a1c7b]                           dc.b $00
[000a1c7c]                           dc.b $00
[000a1c7d]                           dc.b $00
[000a1c7e]                           dc.b $00
[000a1c7f]                           dc.b $00
[000a1c80]                           dc.b $00
[000a1c81]                           dc.b $00
[000a1c82]                           dc.b $00
[000a1c83]                           dc.b $03
[000a1c84]                           dc.w $fe00
[000a1c86]                           dc.b $00
[000a1c87]                           dc.b $04
[000a1c88]                           dc.b $00
[000a1c89]                           dc.b $02
[000a1c8a]                           dc.w $0200
[000a1c8c]                           dc.b $00
[000a1c8d]                           dc.b $08
[000a1c8e]                           dc.b $00
[000a1c8f]                           dc.b $02
[000a1c90]                           dc.w $0200
[000a1c92]                           dc.b $00
[000a1c93]                           dc.b $10
[000a1c94]                           dc.b $00
[000a1c95]                           dc.b $02
[000a1c96]                           dc.w $4200
[000a1c98]                           dc.b $00
[000a1c99]                           dc.b $10
[000a1c9a]                           dc.b $00
[000a1c9b]                           dc.b $02
[000a1c9c]                           dc.w $2200
[000a1c9e]                           dc.b $00
[000a1c9f]                           dc.b $20
[000a1ca0]                           dc.b $00
[000a1ca1]                           dc.b $02
[000a1ca2]                           dc.w $1200
[000a1ca4]                           dc.b $00
[000a1ca5]                           dc.b $20
[000a1ca6]                           dc.b $00
[000a1ca7]                           dc.b $02
[000a1ca8]                           dc.w $0200
[000a1caa]                           dc.b $00
[000a1cab]                           dc.b $20
[000a1cac]                           dc.b $00
[000a1cad]                           dc.b $02
[000a1cae]                           dc.w $0200
[000a1cb0]                           dc.b $00
[000a1cb1]                           dc.b $00
[000a1cb2]                           dc.w $0400
[000a1cb4]                           dc.b $00
[000a1cb5]                           dc.b $20
[000a1cb6]                           dc.b $00
[000a1cb7]                           dc.b $00
[000a1cb8]                           dc.w $0400
[000a1cba]                           dc.b $00
[000a1cbb]                           dc.b $20
[000a1cbc]                           dc.w $07ff
[000a1cbe]                           dc.w $fc3f
[000a1cc0]                           dc.w $ffe0
[000a1cc2]                           dc.b $00
[000a1cc3]                           dc.b $00
[000a1cc4]                           dc.b $00
[000a1cc5]                           dc.b $00
[000a1cc6]                           dc.b $00
[000a1cc7]                           dc.b $00
[000a1cc8]                           dc.b $00
[000a1cc9]                           dc.b $00
[000a1cca]                           dc.b $00
[000a1ccb]                           dc.b $00
[000a1ccc]                           dc.b $00
[000a1ccd]                           dc.b $00
[000a1cce]                           dc.b $00
[000a1ccf]                           dc.b $00
[000a1cd0]                           dc.b $00
[000a1cd1]                           dc.b $00
[000a1cd2]                           dc.b $00
[000a1cd3]                           dc.b $00
DATAS_04:
[000a1cd4]                           dc.b $00
[000a1cd5]                           dc.b $00
[000a1cd6]                           dc.b $00
[000a1cd7]                           dc.b $00
[000a1cd8]                           dc.b $00
[000a1cd9]                           dc.b $00
[000a1cda]                           dc.b $00
[000a1cdb]                           dc.b $00
[000a1cdc]                           dc.b $00
[000a1cdd]                           dc.b $00
[000a1cde]                           dc.b $00
[000a1cdf]                           dc.b $00
[000a1ce0]                           dc.b $00
[000a1ce1]                           dc.b $00
[000a1ce2]                           dc.b $00
[000a1ce3]                           dc.b $00
[000a1ce4]                           dc.b $00
[000a1ce5]                           dc.b $00
[000a1ce6]                           dc.b $00
[000a1ce7]                           dc.b $7f
[000a1ce8]                           dc.w $c003
[000a1cea]                           dc.w $fe00
[000a1cec]                           dc.b $00
[000a1ced]                           dc.b $7f
[000a1cee]                           dc.w $c003
[000a1cf0]                           dc.w $fe00
[000a1cf2]                           dc.b $00
[000a1cf3]                           dc.b $7f
[000a1cf4]                           dc.w $c003
[000a1cf6]                           dc.w $fe00
[000a1cf8]                           dc.b $00
[000a1cf9]                           dc.b $7f
[000a1cfa]                           dc.w $c003
[000a1cfc]                           dc.w $fe00
[000a1cfe]                           dc.b $00
[000a1cff]                           dc.b $7f
[000a1d00]                           dc.w $c003
[000a1d02]                           dc.w $fe00
[000a1d04]                           dc.b $00
[000a1d05]                           dc.b $7f
[000a1d06]                           dc.w $c003
[000a1d08]                           dc.w $fe00
[000a1d0a]                           dc.b $00
[000a1d0b]                           dc.b $7f
[000a1d0c]                           dc.w $c003
[000a1d0e]                           dc.w $fe00
[000a1d10]                           dc.b $00
[000a1d11]                           dc.b $7f
[000a1d12]                           dc.w $c003
[000a1d14]                           dc.w $fe00
[000a1d16]                           dc.w $07ff
[000a1d18]                           dc.w $fc3f
[000a1d1a]                           dc.w $ffe0
[000a1d1c]                           dc.w $07ff
[000a1d1e]                           dc.w $fc3f
[000a1d20]                           dc.w $ffe0
[000a1d22]                           dc.w $07ff
[000a1d24]                           dc.w $fc3f
[000a1d26]                           dc.w $ffe0
[000a1d28]                           dc.b $00
[000a1d29]                           dc.b $00
[000a1d2a]                           dc.b $00
[000a1d2b]                           dc.b $00
[000a1d2c]                           dc.b $00
[000a1d2d]                           dc.b $00
[000a1d2e]                           dc.b $00
[000a1d2f]                           dc.b $00
[000a1d30]                           dc.b $00
[000a1d31]                           dc.b $00
[000a1d32]                           dc.b $00
[000a1d33]                           dc.b $00
[000a1d34]                           dc.b $00
[000a1d35]                           dc.b $00
[000a1d36]                           dc.b $00
[000a1d37]                           dc.b $03
[000a1d38]                           dc.w $fe00
[000a1d3a]                           dc.b $00
[000a1d3b]                           dc.b $07
[000a1d3c]                           dc.w $e003
[000a1d3e]                           dc.w $fe00
[000a1d40]                           dc.b $00
[000a1d41]                           dc.b $0f
[000a1d42]                           dc.w $c003
[000a1d44]                           dc.w $fe00
[000a1d46]                           dc.b $00
[000a1d47]                           dc.b $1f
[000a1d48]                           dc.w $8003
[000a1d4a]                           dc.w $fe00
[000a1d4c]                           dc.b $00
[000a1d4d]                           dc.b $1f
[000a1d4e]                           dc.w $8003
[000a1d50]                           dc.w $fe00
[000a1d52]                           dc.b $00
[000a1d53]                           dc.b $3f
[000a1d54]                           dc.b $00
[000a1d55]                           dc.b $03
[000a1d56]                           dc.w $fe00
[000a1d58]                           dc.b $00
[000a1d59]                           dc.b $3f
[000a1d5a]                           dc.b $00
[000a1d5b]                           dc.b $03
[000a1d5c]                           dc.w $fe00
[000a1d5e]                           dc.b $00
[000a1d5f]                           dc.b $3f
[000a1d60]                           dc.b $00
[000a1d61]                           dc.b $03
[000a1d62]                           dc.w $fe00
[000a1d64]                           dc.w $07ff
[000a1d66]                           dc.w $fc3f
[000a1d68]                           dc.w $ffe0
[000a1d6a]                           dc.w $07ff
[000a1d6c]                           dc.w $fc3f
[000a1d6e]                           dc.w $ffe0
[000a1d70]                           dc.w $07ff
[000a1d72]                           dc.w $fc3f
[000a1d74]                           dc.w $ffe0
[000a1d76]                           dc.b $00
[000a1d77]                           dc.b $00
[000a1d78]                           dc.b $00
[000a1d79]                           dc.b $00
[000a1d7a]                           dc.b $00
[000a1d7b]                           dc.b $00
[000a1d7c]                           dc.b $00
[000a1d7d]                           dc.b $00
[000a1d7e]                           dc.b $00
[000a1d7f]                           dc.b $00
[000a1d80]                           dc.b $00
[000a1d81]                           dc.b $00
[000a1d82]                           dc.b $00
[000a1d83]                           dc.b $00
[000a1d84]                           dc.b $00
[000a1d85]                           dc.b $00
[000a1d86]                           dc.b $00
[000a1d87]                           dc.b $00
TEDINFO_01:
[000a1d88] 000a159d                  dc.l TEXT_01
[000a1d8c] 000a1591                  dc.l TEXT_002
[000a1d90] 000a1591                  dc.l TEXT_002
[000a1d94]                           dc.b $00
[000a1d95]                           dc.b $05
[000a1d96]                           dc.b $00
[000a1d97]                           dc.b $06
[000a1d98]                           dc.b $00
[000a1d99]                           dc.b $02
[000a1d9a]                           dc.w $1180
[000a1d9c]                           dc.b $00
[000a1d9d]                           dc.b $00
[000a1d9e]                           dc.w $ffff
[000a1da0]                           dc.b $00
[000a1da1]                           dc.b $06
[000a1da2]                           dc.b $00
[000a1da3]                           dc.b $01
TEDINFO_02:
[000a1da4] 000a15ac                  dc.l TEXT_02
[000a1da8] 000a1591                  dc.l TEXT_002
[000a1dac] 000a1591                  dc.l TEXT_002
[000a1db0]                           dc.b $00
[000a1db1]                           dc.b $05
[000a1db2]                           dc.b $00
[000a1db3]                           dc.b $06
[000a1db4]                           dc.b $00
[000a1db5]                           dc.b $02
[000a1db6]                           dc.w $1180
[000a1db8]                           dc.b $00
[000a1db9]                           dc.b $00
[000a1dba]                           dc.w $ffff
[000a1dbc]                           dc.b $00
[000a1dbd]                           dc.b $04
[000a1dbe]                           dc.b $00
[000a1dbf]                           dc.b $01
A_3DBUTTON01:
[000a1dc0] 0005a4e2                  dc.l A_3Dbutton
[000a1dc4]                           dc.w $29f1
[000a1dc6]                           dc.w $0178
[000a1dc8] 00059318                  dc.l Auo_string
[000a1dcc]                           dc.b $00
[000a1dcd]                           dc.b $00
[000a1dce]                           dc.b $00
[000a1dcf]                           dc.b $00
[000a1dd0]                           dc.b $00
[000a1dd1]                           dc.b $00
[000a1dd2]                           dc.b $00
[000a1dd3]                           dc.b $00
[000a1dd4]                           dc.b $00
[000a1dd5]                           dc.b $00
[000a1dd6]                           dc.b $00
[000a1dd7]                           dc.b $00
[000a1dd8]                           dc.b $00
[000a1dd9]                           dc.b $00
[000a1dda]                           dc.b $00
[000a1ddb]                           dc.b $00
[000a1ddc]                           dc.b $00
[000a1ddd]                           dc.b $00
[000a1dde]                           dc.b $00
[000a1ddf]                           dc.b $00
A_3DBUTTON02:
[000a1de0] 0005a4e2                  dc.l A_3Dbutton
[000a1de4]                           dc.w $29c1
[000a1de6]                           dc.w $0178
[000a1de8] 00059318                  dc.l Auo_string
[000a1dec] 000a1634                  dc.l TEXT_19
[000a1df0]                           dc.b $00
[000a1df1]                           dc.b $00
[000a1df2]                           dc.b $00
[000a1df3]                           dc.b $00
[000a1df4]                           dc.b $00
[000a1df5]                           dc.b $00
[000a1df6]                           dc.b $00
[000a1df7]                           dc.b $00
[000a1df8] 000a14e6                  dc.l BUBBLE_06
[000a1dfc]                           dc.b $00
[000a1dfd]                           dc.b $00
[000a1dfe]                           dc.b $00
[000a1dff]                           dc.b $00
A_3DBUTTON03:
[000a1e00] 0005a4e2                  dc.l A_3Dbutton
[000a1e04]                           dc.w $29f1
[000a1e06]                           dc.w $0178
[000a1e08] 00059318                  dc.l Auo_string
[000a1e0c] 000a163c                  dc.l TEXT_20
[000a1e10]                           dc.b $00
[000a1e11]                           dc.b $00
[000a1e12]                           dc.b $00
[000a1e13]                           dc.b $00
[000a1e14]                           dc.b $00
[000a1e15]                           dc.b $00
[000a1e16]                           dc.b $00
[000a1e17]                           dc.b $00
[000a1e18]                           dc.b $00
[000a1e19]                           dc.b $00
[000a1e1a]                           dc.b $00
[000a1e1b]                           dc.b $00
[000a1e1c]                           dc.b $00
[000a1e1d]                           dc.b $00
[000a1e1e]                           dc.b $00
[000a1e1f]                           dc.b $00
A_3DBUTTON04:
[000a1e20] 0005a4e2                  dc.l A_3Dbutton
[000a1e24]                           dc.w $2011
[000a1e26]                           dc.w $9178
[000a1e28] 00059318                  dc.l Auo_string
[000a1e2c]                           dc.b $00
[000a1e2d]                           dc.b $00
[000a1e2e]                           dc.b $00
[000a1e2f]                           dc.b $00
[000a1e30]                           dc.b $00
[000a1e31]                           dc.b $00
[000a1e32]                           dc.b $00
[000a1e33]                           dc.b $00
[000a1e34]                           dc.b $00
[000a1e35]                           dc.b $00
[000a1e36]                           dc.b $00
[000a1e37]                           dc.b $00
[000a1e38]                           dc.b $00
[000a1e39]                           dc.b $00
[000a1e3a]                           dc.b $00
[000a1e3b]                           dc.b $00
[000a1e3c]                           dc.b $00
[000a1e3d]                           dc.b $00
[000a1e3e]                           dc.b $00
[000a1e3f]                           dc.b $00
A_3DBUTTON05:
[000a1e40] 0005a4e2                  dc.l A_3Dbutton
[000a1e44]                           dc.w $29c1
[000a1e46]                           dc.w $0178
[000a1e48] 00059318                  dc.l Auo_string
[000a1e4c] 000a1651                  dc.l TEXT_23
[000a1e50]                           dc.b $00
[000a1e51]                           dc.b $00
[000a1e52]                           dc.b $00
[000a1e53]                           dc.b $00
[000a1e54]                           dc.b $00
[000a1e55]                           dc.b $00
[000a1e56]                           dc.b $00
[000a1e57]                           dc.b $00
[000a1e58] 000a1555                  dc.l BUBBLE_08
[000a1e5c]                           dc.b $00
[000a1e5d]                           dc.b $00
[000a1e5e]                           dc.b $00
[000a1e5f]                           dc.b $00
A_3DBUTTON06:
[000a1e60] 0005a4e2                  dc.l A_3Dbutton
[000a1e64]                           dc.w $29f1
[000a1e66]                           dc.w $0178
[000a1e68] 00059318                  dc.l Auo_string
[000a1e6c] 000a15d6                  dc.l TEXT_07
[000a1e70]                           dc.b $00
[000a1e71]                           dc.b $00
[000a1e72]                           dc.b $00
[000a1e73]                           dc.b $00
[000a1e74]                           dc.b $00
[000a1e75]                           dc.b $00
[000a1e76]                           dc.b $00
[000a1e77]                           dc.b $00
[000a1e78]                           dc.b $00
[000a1e79]                           dc.b $00
[000a1e7a]                           dc.b $00
[000a1e7b]                           dc.b $00
[000a1e7c]                           dc.b $00
[000a1e7d]                           dc.b $00
[000a1e7e]                           dc.b $00
[000a1e7f]                           dc.b $00
A_3DBUTTON07:
[000a1e80] 0005a4e2                  dc.l A_3Dbutton
[000a1e84]                           dc.w $29c1
[000a1e86]                           dc.w $0178
[000a1e88] 00059318                  dc.l Auo_string
[000a1e8c] 000a15a3                  dc.l TEXT_019
[000a1e90]                           dc.b $00
[000a1e91]                           dc.b $00
[000a1e92]                           dc.b $00
[000a1e93]                           dc.b $00
[000a1e94]                           dc.b $00
[000a1e95]                           dc.b $00
[000a1e96]                           dc.b $00
[000a1e97]                           dc.b $00
[000a1e98] 000a1519                  dc.l BUBBLE_07
[000a1e9c]                           dc.b $00
[000a1e9d]                           dc.b $00
[000a1e9e]                           dc.b $00
[000a1e9f]                           dc.b $00
A_3DBUTTON08:
[000a1ea0] 0005a4e2                  dc.l A_3Dbutton
[000a1ea4]                           dc.w $29f1
[000a1ea6]                           dc.w $01f8
[000a1ea8] 00059318                  dc.l Auo_string
[000a1eac]                           dc.b $00
[000a1ead]                           dc.b $00
[000a1eae]                           dc.b $00
[000a1eaf]                           dc.b $00
[000a1eb0]                           dc.b $00
[000a1eb1]                           dc.b $00
[000a1eb2]                           dc.b $00
[000a1eb3]                           dc.b $00
[000a1eb4]                           dc.b $00
[000a1eb5]                           dc.b $00
[000a1eb6]                           dc.b $00
[000a1eb7]                           dc.b $00
[000a1eb8]                           dc.b $00
[000a1eb9]                           dc.b $00
[000a1eba]                           dc.b $00
[000a1ebb]                           dc.b $00
[000a1ebc]                           dc.b $00
[000a1ebd]                           dc.b $00
[000a1ebe]                           dc.b $00
[000a1ebf]                           dc.b $00
A_3DBUTTON10:
[000a1ec0] 0005a4e2                  dc.l A_3Dbutton
[000a1ec4]                           dc.w $29c1
[000a1ec6]                           dc.w $0178
[000a1ec8] 00059318                  dc.l Auo_string
[000a1ecc] 000a1643                  dc.l TEXT_21
[000a1ed0]                           dc.b $00
[000a1ed1]                           dc.b $00
[000a1ed2]                           dc.b $00
[000a1ed3]                           dc.b $00
[000a1ed4]                           dc.b $00
[000a1ed5]                           dc.b $00
[000a1ed6]                           dc.b $00
[000a1ed7]                           dc.b $00
[000a1ed8] 000a14ac                  dc.l BUBBLE_05
[000a1edc]                           dc.b $00
[000a1edd]                           dc.b $00
[000a1ede]                           dc.b $00
[000a1edf]                           dc.b $00
A_3DBUTTON11:
[000a1ee0] 0005a4e2                  dc.l A_3Dbutton
[000a1ee4]                           dc.w $a021
[000a1ee6]                           dc.w $91f8
[000a1ee8] 00059318                  dc.l Auo_string
[000a1eec]                           dc.b $00
[000a1eed]                           dc.b $00
[000a1eee]                           dc.b $00
[000a1eef]                           dc.b $00
[000a1ef0]                           dc.b $00
[000a1ef1]                           dc.b $00
[000a1ef2]                           dc.b $00
[000a1ef3]                           dc.b $00
[000a1ef4]                           dc.b $00
[000a1ef5]                           dc.b $00
[000a1ef6]                           dc.b $00
[000a1ef7]                           dc.b $00
[000a1ef8]                           dc.b $00
[000a1ef9]                           dc.b $00
[000a1efa]                           dc.b $00
[000a1efb]                           dc.b $00
[000a1efc]                           dc.b $00
[000a1efd]                           dc.b $00
[000a1efe]                           dc.b $00
[000a1eff]                           dc.b $00
A_3DBUTTON12:
[000a1f00] 0005a4e2                  dc.l A_3Dbutton
[000a1f04]                           dc.w $29f1
[000a1f06]                           dc.w $0178
[000a1f08] 00059318                  dc.l Auo_string
[000a1f0c] 000a15b0                  dc.l TEXT_03
[000a1f10]                           dc.b $00
[000a1f11]                           dc.b $00
[000a1f12]                           dc.b $00
[000a1f13]                           dc.b $00
[000a1f14]                           dc.b $00
[000a1f15]                           dc.b $00
[000a1f16]                           dc.b $00
[000a1f17]                           dc.b $00
[000a1f18]                           dc.b $00
[000a1f19]                           dc.b $00
[000a1f1a]                           dc.b $00
[000a1f1b]                           dc.b $00
[000a1f1c]                           dc.b $00
[000a1f1d]                           dc.b $00
[000a1f1e]                           dc.b $00
[000a1f1f]                           dc.b $00
A_3DBUTTON13:
[000a1f20] 0005a4e2                  dc.l A_3Dbutton
[000a1f24]                           dc.w $2022
[000a1f26]                           dc.w $91a8
[000a1f28] 00059318                  dc.l Auo_string
[000a1f2c]                           dc.b $00
[000a1f2d]                           dc.b $00
[000a1f2e]                           dc.b $00
[000a1f2f]                           dc.b $00
[000a1f30]                           dc.b $00
[000a1f31]                           dc.b $00
[000a1f32]                           dc.b $00
[000a1f33]                           dc.b $00
[000a1f34]                           dc.b $00
[000a1f35]                           dc.b $00
[000a1f36]                           dc.b $00
[000a1f37]                           dc.b $00
[000a1f38]                           dc.b $00
[000a1f39]                           dc.b $00
[000a1f3a]                           dc.b $00
[000a1f3b]                           dc.b $00
[000a1f3c]                           dc.b $00
[000a1f3d]                           dc.b $00
[000a1f3e]                           dc.b $00
[000a1f3f]                           dc.b $00
A_3DBUTTON14:
[000a1f40] 0005a4e2                  dc.l A_3Dbutton
[000a1f44]                           dc.w $29f1
[000a1f46]                           dc.w $0178
[000a1f48] 00059318                  dc.l Auo_string
[000a1f4c] 000a166c                  dc.l TEXT_27
[000a1f50]                           dc.b $00
[000a1f51]                           dc.b $00
[000a1f52]                           dc.b $00
[000a1f53]                           dc.b $00
[000a1f54]                           dc.b $00
[000a1f55]                           dc.b $00
[000a1f56]                           dc.b $00
[000a1f57]                           dc.b $00
[000a1f58]                           dc.b $00
[000a1f59]                           dc.b $00
[000a1f5a]                           dc.b $00
[000a1f5b]                           dc.b $00
[000a1f5c]                           dc.b $00
[000a1f5d]                           dc.b $00
[000a1f5e]                           dc.b $00
[000a1f5f]                           dc.b $00
A_3DBUTTON15:
[000a1f60] 0005a4e2                  dc.l A_3Dbutton
[000a1f64]                           dc.w $29c1
[000a1f66]                           dc.w $0178
[000a1f68] 00059318                  dc.l Auo_string
[000a1f6c] 000a1592                  dc.l TEXT_003
[000a1f70]                           dc.b $00
[000a1f71]                           dc.b $00
[000a1f72]                           dc.b $00
[000a1f73]                           dc.b $00
[000a1f74]                           dc.b $00
[000a1f75]                           dc.b $00
[000a1f76]                           dc.b $00
[000a1f77]                           dc.b $00
[000a1f78] 000a1406                  dc.l BUBBLE_02
[000a1f7c]                           dc.b $00
[000a1f7d]                           dc.b $00
[000a1f7e]                           dc.b $00
[000a1f7f]                           dc.b $00
A_3DBUTTON16:
[000a1f80] 0005a4e2                  dc.l A_3Dbutton
[000a1f84]                           dc.w $21f1
[000a1f86]                           dc.w $0178
[000a1f88] 00059318                  dc.l Auo_string
[000a1f8c]                           dc.b $00
[000a1f8d]                           dc.b $00
[000a1f8e]                           dc.b $00
[000a1f8f]                           dc.b $00
[000a1f90]                           dc.b $00
[000a1f91]                           dc.b $00
[000a1f92]                           dc.b $00
[000a1f93]                           dc.b $00
[000a1f94]                           dc.b $00
[000a1f95]                           dc.b $00
[000a1f96]                           dc.b $00
[000a1f97]                           dc.b $00
[000a1f98]                           dc.b $00
[000a1f99]                           dc.b $00
[000a1f9a]                           dc.b $00
[000a1f9b]                           dc.b $00
[000a1f9c]                           dc.b $00
[000a1f9d]                           dc.b $00
[000a1f9e]                           dc.b $00
[000a1f9f]                           dc.b $00
A_3DBUTTON18:
[000a1fa0] 0005a4e2                  dc.l A_3Dbutton
[000a1fa4]                           dc.w $29c1
[000a1fa6]                           dc.w $0178
[000a1fa8] 00059318                  dc.l Auo_string
[000a1fac] 000a1595                  dc.l TEXT_004
[000a1fb0]                           dc.b $00
[000a1fb1]                           dc.b $00
[000a1fb2]                           dc.b $00
[000a1fb3]                           dc.b $00
[000a1fb4]                           dc.b $00
[000a1fb5]                           dc.b $00
[000a1fb6]                           dc.b $00
[000a1fb7]                           dc.b $00
[000a1fb8] 000a13e5                  dc.l BUBBLE_01
[000a1fbc]                           dc.b $00
[000a1fbd]                           dc.b $00
[000a1fbe]                           dc.b $00
[000a1fbf]                           dc.b $00
A_3DBUTTON27:
[000a1fc0] 0005a4e2                  dc.l A_3Dbutton
[000a1fc4]                           dc.w $09f1
[000a1fc6]                           dc.w $0178
[000a1fc8] 00059318                  dc.l Auo_string
[000a1fcc]                           dc.b $00
[000a1fcd]                           dc.b $00
[000a1fce]                           dc.b $00
[000a1fcf]                           dc.b $00
[000a1fd0]                           dc.b $00
[000a1fd1]                           dc.b $00
[000a1fd2]                           dc.b $00
[000a1fd3]                           dc.b $00
[000a1fd4]                           dc.b $00
[000a1fd5]                           dc.b $00
[000a1fd6]                           dc.b $00
[000a1fd7]                           dc.b $00
[000a1fd8]                           dc.b $00
[000a1fd9]                           dc.b $00
[000a1fda]                           dc.b $00
[000a1fdb]                           dc.b $00
[000a1fdc]                           dc.b $00
[000a1fdd]                           dc.b $00
[000a1fde]                           dc.b $00
[000a1fdf]                           dc.b $00
A_ARROWS02:
[000a1fe0] 0005b212                  dc.l A_arrows
[000a1fe4]                           dc.w $1301
[000a1fe6]                           dc.b $00
[000a1fe7]                           dc.b $01
[000a1fe8]                           dc.b $00
[000a1fe9]                           dc.b $00
[000a1fea]                           dc.b $00
[000a1feb]                           dc.b $00
[000a1fec]                           dc.b $00
[000a1fed]                           dc.b $00
[000a1fee]                           dc.b $00
[000a1fef]                           dc.b $00
[000a1ff0]                           dc.b $00
[000a1ff1]                           dc.b $00
[000a1ff2]                           dc.b $00
[000a1ff3]                           dc.b $00
[000a1ff4]                           dc.b $00
[000a1ff5]                           dc.b $00
[000a1ff6]                           dc.b $00
[000a1ff7]                           dc.b $00
[000a1ff8]                           dc.b $00
[000a1ff9]                           dc.b $00
[000a1ffa]                           dc.b $00
[000a1ffb]                           dc.b $00
[000a1ffc]                           dc.b $00
[000a1ffd]                           dc.b $00
[000a1ffe]                           dc.b $00
[000a1fff]                           dc.b $00
A_ARROWS03:
[000a2000] 0005b212                  dc.l A_arrows
[000a2004]                           dc.b $00
[000a2005]                           dc.b $01
[000a2006]                           dc.b $00
[000a2007]                           dc.b $01
[000a2008]                           dc.b $00
[000a2009]                           dc.b $00
[000a200a]                           dc.b $00
[000a200b]                           dc.b $00
[000a200c]                           dc.b $00
[000a200d]                           dc.b $00
[000a200e]                           dc.b $00
[000a200f]                           dc.b $00
[000a2010]                           dc.b $00
[000a2011]                           dc.b $00
[000a2012]                           dc.b $00
[000a2013]                           dc.b $00
[000a2014]                           dc.b $00
[000a2015]                           dc.b $00
[000a2016]                           dc.b $00
[000a2017]                           dc.b $00
[000a2018]                           dc.b $00
[000a2019]                           dc.b $00
[000a201a]                           dc.b $00
[000a201b]                           dc.b $00
[000a201c]                           dc.b $00
[000a201d]                           dc.b $00
[000a201e]                           dc.b $00
[000a201f]                           dc.b $00
A_BOXED02:
[000a2020] 0005e9d2                  dc.l A_boxed
[000a2024]                           dc.w $9038
[000a2026]                           dc.w $0112
[000a2028] 0005e010                  dc.l Auo_boxed
[000a202c]                           dc.b $00
[000a202d]                           dc.b $00
[000a202e]                           dc.b $00
[000a202f]                           dc.b $00
[000a2030]                           dc.b $00
[000a2031]                           dc.b $00
[000a2032]                           dc.b $00
[000a2033]                           dc.b $00
[000a2034]                           dc.b $00
[000a2035]                           dc.b $00
[000a2036]                           dc.b $00
[000a2037]                           dc.b $00
[000a2038] 000a145d                  dc.l BUBBLE_04
[000a203c]                           dc.b $00
[000a203d]                           dc.b $00
[000a203e]                           dc.b $00
[000a203f]                           dc.b $00
A_BOXED03:
[000a2040] 0005e9d2                  dc.l A_boxed
[000a2044]                           dc.w $9070
[000a2046]                           dc.w $0512
[000a2048] 0005e010                  dc.l Auo_boxed
[000a204c]                           dc.b $00
[000a204d]                           dc.b $00
[000a204e]                           dc.b $00
[000a204f]                           dc.b $00
[000a2050]                           dc.b $00
[000a2051]                           dc.b $00
[000a2052]                           dc.b $00
[000a2053]                           dc.b $00
[000a2054]                           dc.b $00
[000a2055]                           dc.b $00
[000a2056]                           dc.b $00
[000a2057]                           dc.b $00
[000a2058]                           dc.b $00
[000a2059]                           dc.b $00
[000a205a]                           dc.b $00
[000a205b]                           dc.b $00
[000a205c]                           dc.b $00
[000a205d]                           dc.b $00
[000a205e]                           dc.b $00
[000a205f]                           dc.b $00
A_BOXED05:
[000a2060] 0005e9d2                  dc.l A_boxed
[000a2064]                           dc.w $9038
[000a2066]                           dc.w $1412
[000a2068] 0005e010                  dc.l Auo_boxed
[000a206c]                           dc.b $00
[000a206d]                           dc.b $00
[000a206e]                           dc.b $00
[000a206f]                           dc.b $00
[000a2070]                           dc.b $00
[000a2071]                           dc.b $00
[000a2072]                           dc.b $00
[000a2073]                           dc.b $00
[000a2074]                           dc.b $00
[000a2075]                           dc.b $00
[000a2076]                           dc.b $00
[000a2077]                           dc.b $00
[000a2078] 000a1428                  dc.l BUBBLE_03
[000a207c]                           dc.b $00
[000a207d]                           dc.b $00
[000a207e]                           dc.b $00
[000a207f]                           dc.b $00
A_BOXED06:
[000a2080] 0005e9d2                  dc.l A_boxed
[000a2084]                           dc.w $9078
[000a2086]                           dc.w $0512
[000a2088] 0005e010                  dc.l Auo_boxed
[000a208c]                           dc.b $00
[000a208d]                           dc.b $00
[000a208e]                           dc.b $00
[000a208f]                           dc.b $00
[000a2090]                           dc.b $00
[000a2091]                           dc.b $00
[000a2092]                           dc.b $00
[000a2093]                           dc.b $00
[000a2094]                           dc.b $00
[000a2095]                           dc.b $00
[000a2096]                           dc.b $00
[000a2097]                           dc.b $00
[000a2098]                           dc.b $00
[000a2099]                           dc.b $00
[000a209a]                           dc.b $00
[000a209b]                           dc.b $00
[000a209c]                           dc.b $00
[000a209d]                           dc.b $00
[000a209e]                           dc.b $00
[000a209f]                           dc.b $00
A_INNERFRAME02:
[000a20a0] 00059f9c                  dc.l A_innerframe
[000a20a4]                           dc.w $1000
[000a20a6]                           dc.w $8f19
[000a20a8] 00059318                  dc.l Auo_string
[000a20ac] 000a162d                  dc.l TEXT_18
[000a20b0]                           dc.b $00
[000a20b1]                           dc.b $00
[000a20b2]                           dc.b $00
[000a20b3]                           dc.b $00
[000a20b4]                           dc.b $00
[000a20b5]                           dc.b $00
[000a20b6]                           dc.b $00
[000a20b7]                           dc.b $00
[000a20b8]                           dc.b $00
[000a20b9]                           dc.b $00
[000a20ba]                           dc.b $00
[000a20bb]                           dc.b $00
[000a20bc]                           dc.b $00
[000a20bd]                           dc.b $00
[000a20be]                           dc.b $00
[000a20bf]                           dc.b $00
A_INNERFRAME03:
[000a20c0] 00059f9c                  dc.l A_innerframe
[000a20c4]                           dc.w $1000
[000a20c6]                           dc.w $8f19
[000a20c8] 00059318                  dc.l Auo_string
[000a20cc]                           dc.b $00
[000a20cd]                           dc.b $00
[000a20ce]                           dc.b $00
[000a20cf]                           dc.b $00
[000a20d0]                           dc.b $00
[000a20d1]                           dc.b $00
[000a20d2]                           dc.b $00
[000a20d3]                           dc.b $00
[000a20d4]                           dc.b $00
[000a20d5]                           dc.b $00
[000a20d6]                           dc.b $00
[000a20d7]                           dc.b $00
[000a20d8]                           dc.b $00
[000a20d9]                           dc.b $00
[000a20da]                           dc.b $00
[000a20db]                           dc.b $00
[000a20dc]                           dc.b $00
[000a20dd]                           dc.b $00
[000a20de]                           dc.b $00
[000a20df]                           dc.b $00
A_INNERFRAME04:
[000a20e0] 00059f9c                  dc.l A_innerframe
[000a20e4]                           dc.w $1000
[000a20e6]                           dc.w $8f19
[000a20e8] 00059318                  dc.l Auo_string
[000a20ec] 000a1611                  dc.l TEXT_15
[000a20f0]                           dc.b $00
[000a20f1]                           dc.b $00
[000a20f2]                           dc.b $00
[000a20f3]                           dc.b $00
[000a20f4]                           dc.b $00
[000a20f5]                           dc.b $00
[000a20f6]                           dc.b $00
[000a20f7]                           dc.b $00
[000a20f8]                           dc.b $00
[000a20f9]                           dc.b $00
[000a20fa]                           dc.b $00
[000a20fb]                           dc.b $00
[000a20fc]                           dc.b $00
[000a20fd]                           dc.b $00
[000a20fe]                           dc.b $00
[000a20ff]                           dc.b $00
A_INNERFRAME05:
[000a2100] 00059f9c                  dc.l A_innerframe
[000a2104]                           dc.w $1000
[000a2106]                           dc.w $8f19
[000a2108] 00059318                  dc.l Auo_string
[000a210c] 000a15bd                  dc.l TEXT_04
[000a2110]                           dc.b $00
[000a2111]                           dc.b $00
[000a2112]                           dc.b $00
[000a2113]                           dc.b $00
[000a2114]                           dc.b $00
[000a2115]                           dc.b $00
[000a2116]                           dc.b $00
[000a2117]                           dc.b $00
[000a2118]                           dc.b $00
[000a2119]                           dc.b $00
[000a211a]                           dc.b $00
[000a211b]                           dc.b $00
[000a211c]                           dc.b $00
[000a211d]                           dc.b $00
[000a211e]                           dc.b $00
[000a211f]                           dc.b $00
A_INNERFRAME06:
[000a2120] 00059f9c                  dc.l A_innerframe
[000a2124]                           dc.w $1000
[000a2126]                           dc.w $8f19
[000a2128] 00059318                  dc.l Auo_string
[000a212c] 000a15c5                  dc.l TEXT_05
[000a2130]                           dc.b $00
[000a2131]                           dc.b $00
[000a2132]                           dc.b $00
[000a2133]                           dc.b $00
[000a2134]                           dc.b $00
[000a2135]                           dc.b $00
[000a2136]                           dc.b $00
[000a2137]                           dc.b $00
[000a2138]                           dc.b $00
[000a2139]                           dc.b $00
[000a213a]                           dc.b $00
[000a213b]                           dc.b $00
[000a213c]                           dc.b $00
[000a213d]                           dc.b $00
[000a213e]                           dc.b $00
[000a213f]                           dc.b $00
A_INNERFRAME07:
[000a2140] 00059f9c                  dc.l A_innerframe
[000a2144]                           dc.w $1000
[000a2146]                           dc.w $8f19
[000a2148] 00059318                  dc.l Auo_string
[000a214c] 000a15cd                  dc.l TEXT_06
[000a2150]                           dc.b $00
[000a2151]                           dc.b $00
[000a2152]                           dc.b $00
[000a2153]                           dc.b $00
[000a2154]                           dc.b $00
[000a2155]                           dc.b $00
[000a2156]                           dc.b $00
[000a2157]                           dc.b $00
[000a2158]                           dc.b $00
[000a2159]                           dc.b $00
[000a215a]                           dc.b $00
[000a215b]                           dc.b $00
[000a215c]                           dc.b $00
[000a215d]                           dc.b $00
[000a215e]                           dc.b $00
[000a215f]                           dc.b $00
EDIC_BITMAP01:
[000a2160] 0001eb26                  dc.l edic_bitmap
[000a2164]                           dc.b $00
[000a2165]                           dc.b $00
[000a2166]                           dc.b $00
[000a2167]                           dc.b $00
[000a2168]                           dc.b $00
[000a2169]                           dc.b $00
[000a216a]                           dc.b $00
[000a216b]                           dc.b $00
[000a216c]                           dc.b $00
[000a216d]                           dc.b $00
[000a216e]                           dc.b $00
[000a216f]                           dc.b $00
[000a2170]                           dc.b $00
[000a2171]                           dc.b $00
[000a2172]                           dc.b $00
[000a2173]                           dc.b $00
[000a2174]                           dc.b $00
[000a2175]                           dc.b $00
[000a2176]                           dc.b $00
[000a2177]                           dc.b $00
[000a2178]                           dc.b $00
[000a2179]                           dc.b $00
[000a217a]                           dc.b $00
[000a217b]                           dc.b $00
[000a217c]                           dc.b $00
[000a217d]                           dc.b $00
[000a217e]                           dc.b $00
[000a217f]                           dc.b $00
ICNCOL01:
[000a2180] 0001f994                  dc.l IcnCol
[000a2184]                           dc.b $00
[000a2185]                           dc.b $00
[000a2186]                           dc.b $00
[000a2187]                           dc.b $00
[000a2188]                           dc.b $00
[000a2189]                           dc.b $00
[000a218a]                           dc.b $00
[000a218b]                           dc.b $00
[000a218c]                           dc.b $00
[000a218d]                           dc.b $00
[000a218e]                           dc.b $00
[000a218f]                           dc.b $00
[000a2190]                           dc.b $00
[000a2191]                           dc.b $00
[000a2192]                           dc.b $00
[000a2193]                           dc.b $00
[000a2194]                           dc.b $00
[000a2195]                           dc.b $00
[000a2196]                           dc.b $00
[000a2197]                           dc.b $00
[000a2198]                           dc.b $00
[000a2199]                           dc.b $00
[000a219a]                           dc.b $00
[000a219b]                           dc.b $00
[000a219c]                           dc.b $00
[000a219d]                           dc.b $00
[000a219e]                           dc.b $00
[000a219f]                           dc.b $00
PICCOLOR01:
[000a21a0] 0001f81e                  dc.l piccolor
[000a21a4]                           dc.b $00
[000a21a5]                           dc.b $00
[000a21a6]                           dc.b $00
[000a21a7]                           dc.b $00
[000a21a8]                           dc.b $00
[000a21a9]                           dc.b $00
[000a21aa]                           dc.b $00
[000a21ab]                           dc.b $00
[000a21ac]                           dc.b $00
[000a21ad]                           dc.b $00
[000a21ae]                           dc.b $00
[000a21af]                           dc.b $00
[000a21b0]                           dc.b $00
[000a21b1]                           dc.b $00
[000a21b2]                           dc.b $00
[000a21b3]                           dc.b $00
[000a21b4]                           dc.b $00
[000a21b5]                           dc.b $00
[000a21b6]                           dc.b $00
[000a21b7]                           dc.b $00
[000a21b8]                           dc.b $00
[000a21b9]                           dc.b $00
[000a21ba]                           dc.b $00
[000a21bb]                           dc.b $00
[000a21bc]                           dc.b $00
[000a21bd]                           dc.b $00
[000a21be]                           dc.b $00
[000a21bf]                           dc.b $00
USER_001:
[000a21c0] 0002b35c                  dc.l user_control
[000a21c4]                           dc.b $00
[000a21c5]                           dc.b $00
[000a21c6]                           dc.b $00
[000a21c7]                           dc.b $00
[000a21c8]                           dc.b $00
[000a21c9]                           dc.b $00
[000a21ca]                           dc.b $00
[000a21cb]                           dc.b $00
[000a21cc]                           dc.b $00
[000a21cd]                           dc.b $00
[000a21ce]                           dc.b $00
[000a21cf]                           dc.b $00
[000a21d0]                           dc.b $00
[000a21d1]                           dc.b $00
[000a21d2]                           dc.b $00
[000a21d3]                           dc.b $00
[000a21d4]                           dc.b $00
[000a21d5]                           dc.b $00
[000a21d6]                           dc.b $00
[000a21d7]                           dc.b $00
[000a21d8]                           dc.b $00
[000a21d9]                           dc.b $00
[000a21da]                           dc.b $00
[000a21db]                           dc.b $00
[000a21dc]                           dc.b $00
[000a21dd]                           dc.b $00
[000a21de]                           dc.b $00
[000a21df]                           dc.b $00
_MSK_ICON_001:
[000a21e0]                           dc.b $00
[000a21e1]                           dc.b $ff
[000a21e2]                           dc.w $ffff
[000a21e4]                           dc.w $fe00
[000a21e6]                           dc.b $00
[000a21e7]                           dc.b $ff
[000a21e8]                           dc.w $ffff
[000a21ea]                           dc.w $fe00
[000a21ec]                           dc.b $00
[000a21ed]                           dc.b $ff
[000a21ee]                           dc.w $ffff
[000a21f0]                           dc.w $fe00
[000a21f2]                           dc.b $00
[000a21f3]                           dc.b $ff
[000a21f4]                           dc.w $ffff
[000a21f6]                           dc.w $fe00
[000a21f8]                           dc.b $00
[000a21f9]                           dc.b $ff
[000a21fa]                           dc.w $ffff
[000a21fc]                           dc.w $fe00
[000a21fe]                           dc.b $00
[000a21ff]                           dc.b $ff
[000a2200]                           dc.w $ffff
[000a2202]                           dc.w $fe00
[000a2204]                           dc.b $00
[000a2205]                           dc.b $ff
[000a2206]                           dc.w $ffff
[000a2208]                           dc.w $fe00
[000a220a]                           dc.b $00
[000a220b]                           dc.b $ff
[000a220c]                           dc.w $ffff
[000a220e]                           dc.w $fe00
[000a2210]                           dc.b $00
[000a2211]                           dc.b $ff
[000a2212]                           dc.w $ffff
[000a2214]                           dc.w $fe00
[000a2216]                           dc.b $00
[000a2217]                           dc.b $ff
[000a2218]                           dc.w $ffff
[000a221a]                           dc.w $fe00
[000a221c]                           dc.b $00
[000a221d]                           dc.b $ff
[000a221e]                           dc.w $ffff
[000a2220]                           dc.w $fe00
[000a2222]                           dc.b $00
[000a2223]                           dc.b $ff
[000a2224]                           dc.w $ffff
[000a2226]                           dc.w $fe00
[000a2228]                           dc.b $00
[000a2229]                           dc.b $ff
[000a222a]                           dc.w $ffff
[000a222c]                           dc.w $fe00
[000a222e]                           dc.b $00
[000a222f]                           dc.b $ff
[000a2230]                           dc.w $ffff
[000a2232]                           dc.w $fe00
[000a2234]                           dc.b $00
[000a2235]                           dc.b $ff
[000a2236]                           dc.w $ffff
[000a2238]                           dc.w $fe00
[000a223a]                           dc.w $0fff
[000a223c]                           dc.w $ffff
[000a223e]                           dc.w $fff0
[000a2240]                           dc.w $0fff
[000a2242]                           dc.w $ffff
[000a2244]                           dc.w $fff0
[000a2246]                           dc.w $0fff
[000a2248]                           dc.w $ffff
[000a224a]                           dc.w $fff0
[000a224c]                           dc.w $0fff
[000a224e]                           dc.w $ffff
[000a2250]                           dc.w $fff0
[000a2252]                           dc.w $0fff
[000a2254]                           dc.w $ffff
[000a2256]                           dc.w $fff0
[000a2258]                           dc.w $0fff
[000a225a]                           dc.w $ffff
[000a225c]                           dc.w $fff0
[000a225e]                           dc.w $0fff
[000a2260]                           dc.w $ffff
[000a2262]                           dc.w $fff0
[000a2264]                           dc.w $0fff
[000a2266]                           dc.w $ffff
[000a2268]                           dc.w $fff0
[000a226a]                           dc.b $00
[000a226b]                           dc.b $00
[000a226c]                           dc.b $00
[000a226d]                           dc.b $00
[000a226e]                           dc.b $00
[000a226f]                           dc.b $00
_DAT_ICON_001:
[000a2270]                           dc.b $00
[000a2271]                           dc.b $ff
[000a2272]                           dc.w $ffff
[000a2274]                           dc.w $fe00
[000a2276]                           dc.b $00
[000a2277]                           dc.b $c0
[000a2278]                           dc.b $00
[000a2279]                           dc.b $00
[000a227a]                           dc.w $0600
[000a227c]                           dc.b $00
[000a227d]                           dc.b $c0
[000a227e]                           dc.w $7fff
[000a2280]                           dc.w $0600
[000a2282]                           dc.b $00
[000a2283]                           dc.b $c0
[000a2284]                           dc.w $8000
[000a2286]                           dc.w $8600
[000a2288]                           dc.b $00
[000a2289]                           dc.b $c1
[000a228a]                           dc.b $00
[000a228b]                           dc.b $00
[000a228c]                           dc.w $8600
[000a228e]                           dc.b $00
[000a228f]                           dc.b $c2
[000a2290]                           dc.b $00
[000a2291]                           dc.b $00
[000a2292]                           dc.w $8600
[000a2294]                           dc.b $00
[000a2295]                           dc.b $c2
[000a2296]                           dc.b $00
[000a2297]                           dc.b $00
[000a2298]                           dc.w $8600
[000a229a]                           dc.b $00
[000a229b]                           dc.b $c2
[000a229c]                           dc.b $00
[000a229d]                           dc.b $00
[000a229e]                           dc.w $8600
[000a22a0]                           dc.b $00
[000a22a1]                           dc.b $c2
[000a22a2]                           dc.b $00
[000a22a3]                           dc.b $00
[000a22a4]                           dc.w $8600
[000a22a6]                           dc.b $00
[000a22a7]                           dc.b $c2
[000a22a8]                           dc.b $00
[000a22a9]                           dc.b $00
[000a22aa]                           dc.w $8600
[000a22ac]                           dc.b $00
[000a22ad]                           dc.b $c2
[000a22ae]                           dc.b $00
[000a22af]                           dc.b $00
[000a22b0]                           dc.w $8600
[000a22b2]                           dc.b $00
[000a22b3]                           dc.b $c2
[000a22b4]                           dc.b $00
[000a22b5]                           dc.b $00
[000a22b6]                           dc.w $8600
[000a22b8]                           dc.b $00
[000a22b9]                           dc.b $c2
[000a22ba]                           dc.b $00
[000a22bb]                           dc.b $00
[000a22bc]                           dc.w $8600
[000a22be]                           dc.b $00
[000a22bf]                           dc.b $c2
[000a22c0]                           dc.b $00
[000a22c1]                           dc.b $00
[000a22c2]                           dc.w $8600
[000a22c4]                           dc.b $00
[000a22c5]                           dc.b $c2
[000a22c6]                           dc.b $00
[000a22c7]                           dc.b $00
[000a22c8]                           dc.w $8600
[000a22ca]                           dc.w $0fc3
[000a22cc]                           dc.w $ffff
[000a22ce]                           dc.w $87f0
[000a22d0]                           dc.w $0c00
[000a22d2]                           dc.b $00
[000a22d3]                           dc.b $00
[000a22d4]                           dc.b $00
[000a22d5]                           dc.b $30
[000a22d6]                           dc.w $0c1c
[000a22d8]                           dc.w $f9f9
[000a22da]                           dc.w $8830
[000a22dc]                           dc.w $0c08
[000a22de]                           dc.b 'Å',$09,'H0'
[000a22e2]                           dc.w $0c08
[000a22e4]                           dc.b 'Å',$09,'(0'
[000a22e8]                           dc.w $0c1c
[000a22ea]                           dc.w $f9f9
[000a22ec]                           dc.w $1830
[000a22ee]                           dc.w $0c00
[000a22f0]                           dc.b $00
[000a22f1]                           dc.b $00
[000a22f2]                           dc.b $00
[000a22f3]                           dc.b $30
[000a22f4]                           dc.w $0fff
[000a22f6]                           dc.w $ffff
[000a22f8]                           dc.w $fff0
[000a22fa]                           dc.b $00
[000a22fb]                           dc.b $00
[000a22fc]                           dc.b $00
[000a22fd]                           dc.b $00
[000a22fe]                           dc.b $00
[000a22ff]                           dc.b $00
ICON_001:
[000a2300] 000a21e0                  dc.l _MSK_ICON_001
[000a2304] 000a2270                  dc.l _DAT_ICON_001
[000a2308] 000a15de                  dc.l TEXT_08
[000a230c]                           dc.w $1041
[000a230e]                           dc.b $00
[000a230f]                           dc.b $14
[000a2310]                           dc.b $00
[000a2311]                           dc.b $06
[000a2312]                           dc.b $00
[000a2313]                           dc.b $00
[000a2314]                           dc.b $00
[000a2315]                           dc.b $00
[000a2316]                           dc.b $00
[000a2317]                           dc.b $30
[000a2318]                           dc.b $00
[000a2319]                           dc.b $18
[000a231a]                           dc.b $00
[000a231b]                           dc.b $00
[000a231c]                           dc.b $00
[000a231d]                           dc.b $18
[000a231e]                           dc.b $00
[000a231f]                           dc.b $30
[000a2320]                           dc.b $00
[000a2321]                           dc.b $08
[000a2322]                           dc.b $00
[000a2323]                           dc.b $00
[000a2324]                           dc.b $00
[000a2325]                           dc.b $00
_C4_IC_ICON:
[000a2326]                           dc.b $00
[000a2327]                           dc.b $04
[000a2328] 000a1a04                  dc.l $000a1a04 ; no symbol found
[000a232c] 000a1cd4                  dc.l DATAS_04
[000a2330]                           dc.b $00
[000a2331]                           dc.b $00
[000a2332]                           dc.b $00
[000a2333]                           dc.b $00
[000a2334]                           dc.b $00
[000a2335]                           dc.b $00
[000a2336]                           dc.b $00
[000a2337]                           dc.b $00
[000a2338]                           dc.b $00
[000a2339]                           dc.b $00
[000a233a]                           dc.b $00
[000a233b]                           dc.b $00
_MSK_IC_ICON:
[000a233c]                           dc.b $00
[000a233d]                           dc.b $00
[000a233e]                           dc.b $00
[000a233f]                           dc.b $00
[000a2340]                           dc.b $00
[000a2341]                           dc.b $00
[000a2342]                           dc.b $00
[000a2343]                           dc.b $00
[000a2344]                           dc.b $00
[000a2345]                           dc.b $00
[000a2346]                           dc.b $00
[000a2347]                           dc.b $00
[000a2348]                           dc.b $00
[000a2349]                           dc.b $00
[000a234a]                           dc.b $00
[000a234b]                           dc.b $00
[000a234c]                           dc.b $00
[000a234d]                           dc.b $00
[000a234e]                           dc.b $00
[000a234f]                           dc.b $7f
[000a2350]                           dc.w $c003
[000a2352]                           dc.w $fe00
[000a2354]                           dc.b $00
[000a2355]                           dc.b $7f
[000a2356]                           dc.w $c003
[000a2358]                           dc.w $fe00
[000a235a]                           dc.b $00
[000a235b]                           dc.b $7f
[000a235c]                           dc.w $c003
[000a235e]                           dc.w $fe00
[000a2360]                           dc.b $00
[000a2361]                           dc.b $7f
[000a2362]                           dc.w $c003
[000a2364]                           dc.w $fe00
[000a2366]                           dc.b $00
[000a2367]                           dc.b $7f
[000a2368]                           dc.w $c003
[000a236a]                           dc.w $fe00
[000a236c]                           dc.b $00
[000a236d]                           dc.b $7f
[000a236e]                           dc.w $c003
[000a2370]                           dc.w $fe00
[000a2372]                           dc.b $00
[000a2373]                           dc.b $7f
[000a2374]                           dc.w $c003
[000a2376]                           dc.w $fe00
[000a2378]                           dc.b $00
[000a2379]                           dc.b $7f
[000a237a]                           dc.w $c003
[000a237c]                           dc.w $fe00
[000a237e]                           dc.w $07ff
[000a2380]                           dc.w $fc3f
[000a2382]                           dc.w $ffe0
[000a2384]                           dc.w $07ff
[000a2386]                           dc.w $fc3f
[000a2388]                           dc.w $ffe0
[000a238a]                           dc.w $07ff
[000a238c]                           dc.w $fc3f
[000a238e]                           dc.w $ffe0
[000a2390]                           dc.b $00
[000a2391]                           dc.b $00
[000a2392]                           dc.b $00
[000a2393]                           dc.b $00
[000a2394]                           dc.b $00
[000a2395]                           dc.b $00
[000a2396]                           dc.b $00
[000a2397]                           dc.b $00
[000a2398]                           dc.b $00
[000a2399]                           dc.b $00
[000a239a]                           dc.b $00
[000a239b]                           dc.b $00
[000a239c]                           dc.b $00
[000a239d]                           dc.b $7f
[000a239e]                           dc.w $c003
[000a23a0]                           dc.w $fe00
[000a23a2]                           dc.b $00
[000a23a3]                           dc.b $7f
[000a23a4]                           dc.w $c003
[000a23a6]                           dc.w $fe00
[000a23a8]                           dc.b $00
[000a23a9]                           dc.b $7f
[000a23aa]                           dc.w $c003
[000a23ac]                           dc.w $fe00
[000a23ae]                           dc.b $00
[000a23af]                           dc.b $7f
[000a23b0]                           dc.w $c003
[000a23b2]                           dc.w $fe00
[000a23b4]                           dc.b $00
[000a23b5]                           dc.b $7f
[000a23b6]                           dc.w $c003
[000a23b8]                           dc.w $fe00
[000a23ba]                           dc.b $00
[000a23bb]                           dc.b $7f
[000a23bc]                           dc.w $c003
[000a23be]                           dc.w $fe00
[000a23c0]                           dc.b $00
[000a23c1]                           dc.b $7f
[000a23c2]                           dc.w $c003
[000a23c4]                           dc.w $fe00
[000a23c6]                           dc.b $00
[000a23c7]                           dc.b $7f
[000a23c8]                           dc.w $c003
[000a23ca]                           dc.w $fe00
[000a23cc]                           dc.w $07ff
[000a23ce]                           dc.w $fc3f
[000a23d0]                           dc.w $ffe0
[000a23d2]                           dc.w $07ff
[000a23d4]                           dc.w $fc3f
[000a23d6]                           dc.w $ffe0
[000a23d8]                           dc.w $07ff
[000a23da]                           dc.w $fc3f
[000a23dc]                           dc.w $ffe0
[000a23de]                           dc.b $00
[000a23df]                           dc.b $00
[000a23e0]                           dc.b $00
[000a23e1]                           dc.b $00
[000a23e2]                           dc.b $00
[000a23e3]                           dc.b $00
[000a23e4]                           dc.b $00
[000a23e5]                           dc.b $00
[000a23e6]                           dc.b $00
[000a23e7]                           dc.b $00
[000a23e8]                           dc.b $00
[000a23e9]                           dc.b $00
[000a23ea]                           dc.b $00
[000a23eb]                           dc.b $00
[000a23ec]                           dc.b $00
[000a23ed]                           dc.b $00
[000a23ee]                           dc.b $00
[000a23ef]                           dc.b $00
_DAT_IC_ICON:
[000a23f0]                           dc.b $00
[000a23f1]                           dc.b $00
[000a23f2]                           dc.b $00
[000a23f3]                           dc.b $00
[000a23f4]                           dc.b $00
[000a23f5]                           dc.b $00
[000a23f6]                           dc.b $00
[000a23f7]                           dc.b $00
[000a23f8]                           dc.b $00
[000a23f9]                           dc.b $00
[000a23fa]                           dc.b $00
[000a23fb]                           dc.b $00
[000a23fc]                           dc.b $00
[000a23fd]                           dc.b $00
[000a23fe]                           dc.b $00
[000a23ff]                           dc.b $00
[000a2400]                           dc.b $00
[000a2401]                           dc.b $00
[000a2402]                           dc.b $00
[000a2403]                           dc.b $7f
[000a2404]                           dc.w $c003
[000a2406]                           dc.w $fe00
[000a2408]                           dc.b $00
[000a2409]                           dc.b $40
[000a240a]                           dc.w $4003
[000a240c]                           dc.w $fe00
[000a240e]                           dc.b $00
[000a240f]                           dc.b $51
[000a2410]                           dc.w $4003
[000a2412]                           dc.w $0600
[000a2414]                           dc.b $00
[000a2415]                           dc.b $5b
[000a2416]                           dc.w $4003
[000a2418]                           dc.w $0600
[000a241a]                           dc.b $00
[000a241b]                           dc.b $5f
[000a241c]                           dc.w $4003
[000a241e]                           dc.w $0600
[000a2420]                           dc.b $00
[000a2421]                           dc.b $5b
[000a2422]                           dc.w $4003
[000a2424]                           dc.w $0600
[000a2426]                           dc.b $00
[000a2427]                           dc.b $51
[000a2428]                           dc.w $4003
[000a242a]                           dc.w $0600
[000a242c]                           dc.b $00
[000a242d]                           dc.b $40
[000a242e]                           dc.w $4003
[000a2430]                           dc.w $fe00
[000a2432]                           dc.w $07ff
[000a2434]                           dc.w $fc3f
[000a2436]                           dc.w $ffe0
[000a2438]                           dc.w $0400
[000a243a]                           dc.w $0420
[000a243c]                           dc.b $00
[000a243d]                           dc.b $20
[000a243e]                           dc.w $07ff
[000a2440]                           dc.w $fc3f
[000a2442]                           dc.w $ffe0
[000a2444]                           dc.b $00
[000a2445]                           dc.b $00
[000a2446]                           dc.b $00
[000a2447]                           dc.b $00
[000a2448]                           dc.b $00
[000a2449]                           dc.b $00
[000a244a]                           dc.b $00
[000a244b]                           dc.b $00
[000a244c]                           dc.b $00
[000a244d]                           dc.b $00
[000a244e]                           dc.b $00
[000a244f]                           dc.b $00
[000a2450]                           dc.b $00
[000a2451]                           dc.b $7f
[000a2452]                           dc.w $c003
[000a2454]                           dc.w $fe00
[000a2456]                           dc.b $00
[000a2457]                           dc.b $40
[000a2458]                           dc.w $4002
[000a245a]                           dc.w $0200
[000a245c]                           dc.b $00
[000a245d]                           dc.b $5f
[000a245e]                           dc.w $4002
[000a2460]                           dc.w $c200
[000a2462]                           dc.b $00
[000a2463]                           dc.b $51
[000a2464]                           dc.w $4002
[000a2466]                           dc.w $e200
[000a2468]                           dc.b $00
[000a2469]                           dc.b $51
[000a246a]                           dc.w $4002
[000a246c]                           dc.w $7200
[000a246e]                           dc.b $00
[000a246f]                           dc.b $51
[000a2470]                           dc.w $4002
[000a2472]                           dc.w $3a00
[000a2474]                           dc.b $00
[000a2475]                           dc.b $5f
[000a2476]                           dc.w $4002
[000a2478]                           dc.w $1a00
[000a247a]                           dc.b $00
[000a247b]                           dc.b $40
[000a247c]                           dc.w $4002
[000a247e]                           dc.w $0200
[000a2480]                           dc.w $07ff
[000a2482]                           dc.w $fc3f
[000a2484]                           dc.w $ffe0
[000a2486]                           dc.w $0400
[000a2488]                           dc.w $0420
[000a248a]                           dc.b $00
[000a248b]                           dc.b $20
[000a248c]                           dc.w $07ff
[000a248e]                           dc.w $fc3f
[000a2490]                           dc.w $ffe0
[000a2492]                           dc.b $00
[000a2493]                           dc.b $00
[000a2494]                           dc.b $00
[000a2495]                           dc.b $00
[000a2496]                           dc.b $00
[000a2497]                           dc.b $00
[000a2498]                           dc.b $00
[000a2499]                           dc.b $00
[000a249a]                           dc.b $00
[000a249b]                           dc.b $00
[000a249c]                           dc.b $00
[000a249d]                           dc.b $00
[000a249e]                           dc.b $00
[000a249f]                           dc.b $00
[000a24a0]                           dc.b $00
[000a24a1]                           dc.b $00
[000a24a2]                           dc.b $00
[000a24a3]                           dc.b $00
IC_ICON:
[000a24a4] 000a233c                  dc.l _MSK_IC_ICON
[000a24a8] 000a23f0                  dc.l _DAT_IC_ICON
[000a24ac] 000a1666                  dc.l TEXT_25
[000a24b0]                           dc.w $1000
[000a24b2]                           dc.b $00
[000a24b3]                           dc.b $00
[000a24b4]                           dc.b $00
[000a24b5]                           dc.b $00
[000a24b6]                           dc.b $00
[000a24b7]                           dc.b $0c
[000a24b8]                           dc.b $00
[000a24b9]                           dc.b $00
[000a24ba]                           dc.b $00
[000a24bb]                           dc.b $30
[000a24bc]                           dc.b $00
[000a24bd]                           dc.b $1e
[000a24be]                           dc.b $00
[000a24bf]                           dc.b $00
[000a24c0]                           dc.b $00
[000a24c1]                           dc.b $20
[000a24c2]                           dc.b $00
[000a24c3]                           dc.b $48
[000a24c4]                           dc.b $00
[000a24c5]                           dc.b $08
[000a24c6] 000a2326                  dc.l _C4_IC_ICON
COLOR:
[000a24ca]                           dc.w $ffff
[000a24cc]                           dc.b $00
[000a24cd]                           dc.b $01
[000a24ce]                           dc.b $00
[000a24cf]                           dc.b $10
[000a24d0]                           dc.b $00
[000a24d1]                           dc.b $14
[000a24d2]                           dc.b $00
[000a24d3]                           dc.b $00
[000a24d4]                           dc.b $00
[000a24d5]                           dc.b $20
[000a24d6]                           dc.b $00
[000a24d7]                           dc.b $ff
[000a24d8]                           dc.w $1100
[000a24da]                           dc.b $00
[000a24db]                           dc.b $00
[000a24dc]                           dc.b $00
[000a24dd]                           dc.b $00
[000a24de]                           dc.b $00
[000a24df]                           dc.b $10
[000a24e0]                           dc.b $00
[000a24e1]                           dc.b $04
_01_COLOR:
[000a24e2]                           dc.b $00
[000a24e3]                           dc.b $02
[000a24e4]                           dc.w $ffff
[000a24e6]                           dc.w $ffff
[000a24e8]                           dc.b $00
[000a24e9]                           dc.b $18
[000a24ea]                           dc.b $00
[000a24eb]                           dc.b $01
[000a24ec]                           dc.b $00
[000a24ed]                           dc.b $00
[000a24ee] 000a21a0                  dc.l PICCOLOR01
[000a24f2]                           dc.b $00
[000a24f3]                           dc.b $00
[000a24f4]                           dc.b $00
[000a24f5]                           dc.b $00
[000a24f6]                           dc.b $00
[000a24f7]                           dc.b $04
[000a24f8]                           dc.b $00
[000a24f9]                           dc.b $01
_02_COLOR:
[000a24fa]                           dc.b $00
[000a24fb]                           dc.b $03
[000a24fc]                           dc.w $ffff
[000a24fe]                           dc.w $ffff
[000a2500]                           dc.b $00
[000a2501]                           dc.b $18
[000a2502]                           dc.b $00
[000a2503]                           dc.b $01
[000a2504]                           dc.b $00
[000a2505]                           dc.b $00
[000a2506] 000a21a0                  dc.l PICCOLOR01
[000a250a]                           dc.b $00
[000a250b]                           dc.b $04
[000a250c]                           dc.b $00
[000a250d]                           dc.b $00
[000a250e]                           dc.b $00
[000a250f]                           dc.b $04
[000a2510]                           dc.b $00
[000a2511]                           dc.b $01
_03_COLOR:
[000a2512]                           dc.b $00
[000a2513]                           dc.b $04
[000a2514]                           dc.w $ffff
[000a2516]                           dc.w $ffff
[000a2518]                           dc.b $00
[000a2519]                           dc.b $18
[000a251a]                           dc.b $00
[000a251b]                           dc.b $01
[000a251c]                           dc.b $00
[000a251d]                           dc.b $00
[000a251e] 000a21a0                  dc.l PICCOLOR01
[000a2522]                           dc.b $00
[000a2523]                           dc.b $08
[000a2524]                           dc.b $00
[000a2525]                           dc.b $00
[000a2526]                           dc.b $00
[000a2527]                           dc.b $04
[000a2528]                           dc.b $00
[000a2529]                           dc.b $01
_04_COLOR:
[000a252a]                           dc.b $00
[000a252b]                           dc.b $05
[000a252c]                           dc.w $ffff
[000a252e]                           dc.w $ffff
[000a2530]                           dc.b $00
[000a2531]                           dc.b $18
[000a2532]                           dc.b $00
[000a2533]                           dc.b $01
[000a2534]                           dc.b $00
[000a2535]                           dc.b $00
[000a2536] 000a21a0                  dc.l PICCOLOR01
[000a253a]                           dc.b $00
[000a253b]                           dc.b $0c
[000a253c]                           dc.b $00
[000a253d]                           dc.b $00
[000a253e]                           dc.b $00
[000a253f]                           dc.b $04
[000a2540]                           dc.b $00
[000a2541]                           dc.b $01
_05_COLOR:
[000a2542]                           dc.b $00
[000a2543]                           dc.b $06
[000a2544]                           dc.w $ffff
[000a2546]                           dc.w $ffff
[000a2548]                           dc.b $00
[000a2549]                           dc.b $18
[000a254a]                           dc.b $00
[000a254b]                           dc.b $01
[000a254c]                           dc.b $00
[000a254d]                           dc.b $00
[000a254e] 000a21a0                  dc.l PICCOLOR01
[000a2552]                           dc.b $00
[000a2553]                           dc.b $00
[000a2554]                           dc.b $00
[000a2555]                           dc.b $01
[000a2556]                           dc.b $00
[000a2557]                           dc.b $04
[000a2558]                           dc.b $00
[000a2559]                           dc.b $01
_06_COLOR:
[000a255a]                           dc.b $00
[000a255b]                           dc.b $07
[000a255c]                           dc.w $ffff
[000a255e]                           dc.w $ffff
[000a2560]                           dc.b $00
[000a2561]                           dc.b $18
[000a2562]                           dc.b $00
[000a2563]                           dc.b $01
[000a2564]                           dc.b $00
[000a2565]                           dc.b $00
[000a2566] 000a21a0                  dc.l PICCOLOR01
[000a256a]                           dc.b $00
[000a256b]                           dc.b $04
[000a256c]                           dc.b $00
[000a256d]                           dc.b $01
[000a256e]                           dc.b $00
[000a256f]                           dc.b $04
[000a2570]                           dc.b $00
[000a2571]                           dc.b $01
_07_COLOR:
[000a2572]                           dc.b $00
[000a2573]                           dc.b $08
[000a2574]                           dc.w $ffff
[000a2576]                           dc.w $ffff
[000a2578]                           dc.b $00
[000a2579]                           dc.b $18
[000a257a]                           dc.b $00
[000a257b]                           dc.b $01
[000a257c]                           dc.b $00
[000a257d]                           dc.b $00
[000a257e] 000a21a0                  dc.l PICCOLOR01
[000a2582]                           dc.b $00
[000a2583]                           dc.b $08
[000a2584]                           dc.b $00
[000a2585]                           dc.b $01
[000a2586]                           dc.b $00
[000a2587]                           dc.b $04
[000a2588]                           dc.b $00
[000a2589]                           dc.b $01
_08_COLOR:
[000a258a]                           dc.b $00
[000a258b]                           dc.b $09
[000a258c]                           dc.w $ffff
[000a258e]                           dc.w $ffff
[000a2590]                           dc.b $00
[000a2591]                           dc.b $18
[000a2592]                           dc.b $00
[000a2593]                           dc.b $01
[000a2594]                           dc.b $00
[000a2595]                           dc.b $00
[000a2596] 000a21a0                  dc.l PICCOLOR01
[000a259a]                           dc.b $00
[000a259b]                           dc.b $0c
[000a259c]                           dc.b $00
[000a259d]                           dc.b $01
[000a259e]                           dc.b $00
[000a259f]                           dc.b $04
[000a25a0]                           dc.b $00
[000a25a1]                           dc.b $01
_09_COLOR:
[000a25a2]                           dc.b $00
[000a25a3]                           dc.b $0a
[000a25a4]                           dc.w $ffff
[000a25a6]                           dc.w $ffff
[000a25a8]                           dc.b $00
[000a25a9]                           dc.b $18
[000a25aa]                           dc.b $00
[000a25ab]                           dc.b $01
[000a25ac]                           dc.b $00
[000a25ad]                           dc.b $00
[000a25ae] 000a21a0                  dc.l PICCOLOR01
[000a25b2]                           dc.b $00
[000a25b3]                           dc.b $00
[000a25b4]                           dc.b $00
[000a25b5]                           dc.b $02
[000a25b6]                           dc.b $00
[000a25b7]                           dc.b $04
[000a25b8]                           dc.b $00
[000a25b9]                           dc.b $01
_10_COLOR:
[000a25ba]                           dc.b $00
[000a25bb]                           dc.b $0b
[000a25bc]                           dc.w $ffff
[000a25be]                           dc.w $ffff
[000a25c0]                           dc.b $00
[000a25c1]                           dc.b $18
[000a25c2]                           dc.b $00
[000a25c3]                           dc.b $01
[000a25c4]                           dc.b $00
[000a25c5]                           dc.b $00
[000a25c6] 000a21a0                  dc.l PICCOLOR01
[000a25ca]                           dc.b $00
[000a25cb]                           dc.b $04
[000a25cc]                           dc.b $00
[000a25cd]                           dc.b $02
[000a25ce]                           dc.b $00
[000a25cf]                           dc.b $04
[000a25d0]                           dc.b $00
[000a25d1]                           dc.b $01
_11_COLOR:
[000a25d2]                           dc.b $00
[000a25d3]                           dc.b $0c
[000a25d4]                           dc.w $ffff
[000a25d6]                           dc.w $ffff
[000a25d8]                           dc.b $00
[000a25d9]                           dc.b $18
[000a25da]                           dc.b $00
[000a25db]                           dc.b $01
[000a25dc]                           dc.b $00
[000a25dd]                           dc.b $00
[000a25de] 000a21a0                  dc.l PICCOLOR01
[000a25e2]                           dc.b $00
[000a25e3]                           dc.b $08
[000a25e4]                           dc.b $00
[000a25e5]                           dc.b $02
[000a25e6]                           dc.b $00
[000a25e7]                           dc.b $04
[000a25e8]                           dc.b $00
[000a25e9]                           dc.b $01
_12_COLOR:
[000a25ea]                           dc.b $00
[000a25eb]                           dc.b $0d
[000a25ec]                           dc.w $ffff
[000a25ee]                           dc.w $ffff
[000a25f0]                           dc.b $00
[000a25f1]                           dc.b $18
[000a25f2]                           dc.b $00
[000a25f3]                           dc.b $01
[000a25f4]                           dc.b $00
[000a25f5]                           dc.b $00
[000a25f6] 000a21a0                  dc.l PICCOLOR01
[000a25fa]                           dc.b $00
[000a25fb]                           dc.b $0c
[000a25fc]                           dc.b $00
[000a25fd]                           dc.b $02
[000a25fe]                           dc.b $00
[000a25ff]                           dc.b $04
[000a2600]                           dc.b $00
[000a2601]                           dc.b $01
_13_COLOR:
[000a2602]                           dc.b $00
[000a2603]                           dc.b $0e
[000a2604]                           dc.w $ffff
[000a2606]                           dc.w $ffff
[000a2608]                           dc.b $00
[000a2609]                           dc.b $18
[000a260a]                           dc.b $00
[000a260b]                           dc.b $01
[000a260c]                           dc.b $00
[000a260d]                           dc.b $00
[000a260e] 000a21a0                  dc.l PICCOLOR01
[000a2612]                           dc.b $00
[000a2613]                           dc.b $00
[000a2614]                           dc.b $00
[000a2615]                           dc.b $03
[000a2616]                           dc.b $00
[000a2617]                           dc.b $04
[000a2618]                           dc.b $00
[000a2619]                           dc.b $01
_14_COLOR:
[000a261a]                           dc.b $00
[000a261b]                           dc.b $0f
[000a261c]                           dc.w $ffff
[000a261e]                           dc.w $ffff
[000a2620]                           dc.b $00
[000a2621]                           dc.b $18
[000a2622]                           dc.b $00
[000a2623]                           dc.b $01
[000a2624]                           dc.b $00
[000a2625]                           dc.b $00
[000a2626] 000a21a0                  dc.l PICCOLOR01
[000a262a]                           dc.b $00
[000a262b]                           dc.b $04
[000a262c]                           dc.b $00
[000a262d]                           dc.b $03
[000a262e]                           dc.b $00
[000a262f]                           dc.b $04
[000a2630]                           dc.b $00
[000a2631]                           dc.b $01
_15_COLOR:
[000a2632]                           dc.b $00
[000a2633]                           dc.b $10
[000a2634]                           dc.w $ffff
[000a2636]                           dc.w $ffff
[000a2638]                           dc.b $00
[000a2639]                           dc.b $18
[000a263a]                           dc.b $00
[000a263b]                           dc.b $01
[000a263c]                           dc.b $00
[000a263d]                           dc.b $00
[000a263e] 000a21a0                  dc.l PICCOLOR01
[000a2642]                           dc.b $00
[000a2643]                           dc.b $08
[000a2644]                           dc.b $00
[000a2645]                           dc.b $03
[000a2646]                           dc.b $00
[000a2647]                           dc.b $04
[000a2648]                           dc.b $00
[000a2649]                           dc.b $01
_16_COLOR:
[000a264a]                           dc.b $00
[000a264b]                           dc.b $00
[000a264c]                           dc.w $ffff
[000a264e]                           dc.w $ffff
[000a2650]                           dc.b $00
[000a2651]                           dc.b $18
[000a2652]                           dc.b $00
[000a2653]                           dc.b $21
[000a2654]                           dc.b $00
[000a2655]                           dc.b $00
[000a2656] 000a21a0                  dc.l PICCOLOR01
[000a265a]                           dc.b $00
[000a265b]                           dc.b $0c
[000a265c]                           dc.b $00
[000a265d]                           dc.b $03
[000a265e]                           dc.b $00
[000a265f]                           dc.b $04
[000a2660]                           dc.b $00
[000a2661]                           dc.b $01
COLOR256:
[000a2662]                           dc.w $ffff
[000a2664]                           dc.b $00
[000a2665]                           dc.b $01
[000a2666]                           dc.w $0100
[000a2668]                           dc.b $00
[000a2669]                           dc.b $14
[000a266a]                           dc.b $00
[000a266b]                           dc.b $00
[000a266c]                           dc.b $00
[000a266d]                           dc.b $20
[000a266e]                           dc.b $00
[000a266f]                           dc.b $ff
[000a2670]                           dc.w $1100
[000a2672]                           dc.b $00
[000a2673]                           dc.b $00
[000a2674]                           dc.b $00
[000a2675]                           dc.b $00
[000a2676]                           dc.b $00
[000a2677]                           dc.b $20
[000a2678]                           dc.b $00
[000a2679]                           dc.b $10
_01_COLOR256:
[000a267a]                           dc.b $00
[000a267b]                           dc.b $02
[000a267c]                           dc.w $ffff
[000a267e]                           dc.w $ffff
[000a2680]                           dc.b $00
[000a2681]                           dc.b $18
[000a2682]                           dc.b $00
[000a2683]                           dc.b $01
[000a2684]                           dc.b $00
[000a2685]                           dc.b $00
[000a2686] 000a21a0                  dc.l PICCOLOR01
[000a268a]                           dc.b $00
[000a268b]                           dc.b $00
[000a268c]                           dc.b $00
[000a268d]                           dc.b $00
[000a268e]                           dc.b $00
[000a268f]                           dc.b $02
[000a2690]                           dc.b $00
[000a2691]                           dc.b $01
_02_COLOR256:
[000a2692]                           dc.b $00
[000a2693]                           dc.b $03
[000a2694]                           dc.w $ffff
[000a2696]                           dc.w $ffff
[000a2698]                           dc.b $00
[000a2699]                           dc.b $18
[000a269a]                           dc.b $00
[000a269b]                           dc.b $01
[000a269c]                           dc.b $00
[000a269d]                           dc.b $00
[000a269e] 000a21a0                  dc.l PICCOLOR01
[000a26a2]                           dc.b $00
[000a26a3]                           dc.b $02
[000a26a4]                           dc.b $00
[000a26a5]                           dc.b $00
[000a26a6]                           dc.b $00
[000a26a7]                           dc.b $02
[000a26a8]                           dc.b $00
[000a26a9]                           dc.b $01
_03_COLOR256:
[000a26aa]                           dc.b $00
[000a26ab]                           dc.b $04
[000a26ac]                           dc.w $ffff
[000a26ae]                           dc.w $ffff
[000a26b0]                           dc.b $00
[000a26b1]                           dc.b $18
[000a26b2]                           dc.b $00
[000a26b3]                           dc.b $01
[000a26b4]                           dc.b $00
[000a26b5]                           dc.b $00
[000a26b6] 000a21a0                  dc.l PICCOLOR01
[000a26ba]                           dc.b $00
[000a26bb]                           dc.b $04
[000a26bc]                           dc.b $00
[000a26bd]                           dc.b $00
[000a26be]                           dc.b $00
[000a26bf]                           dc.b $02
[000a26c0]                           dc.b $00
[000a26c1]                           dc.b $01
_04_COLOR256:
[000a26c2]                           dc.b $00
[000a26c3]                           dc.b $05
[000a26c4]                           dc.w $ffff
[000a26c6]                           dc.w $ffff
[000a26c8]                           dc.b $00
[000a26c9]                           dc.b $18
[000a26ca]                           dc.b $00
[000a26cb]                           dc.b $01
[000a26cc]                           dc.b $00
[000a26cd]                           dc.b $00
[000a26ce] 000a21a0                  dc.l PICCOLOR01
[000a26d2]                           dc.b $00
[000a26d3]                           dc.b $06
[000a26d4]                           dc.b $00
[000a26d5]                           dc.b $00
[000a26d6]                           dc.b $00
[000a26d7]                           dc.b $02
[000a26d8]                           dc.b $00
[000a26d9]                           dc.b $01
_05_COLOR256:
[000a26da]                           dc.b $00
[000a26db]                           dc.b $06
[000a26dc]                           dc.w $ffff
[000a26de]                           dc.w $ffff
[000a26e0]                           dc.b $00
[000a26e1]                           dc.b $18
[000a26e2]                           dc.b $00
[000a26e3]                           dc.b $01
[000a26e4]                           dc.b $00
[000a26e5]                           dc.b $00
[000a26e6] 000a21a0                  dc.l PICCOLOR01
[000a26ea]                           dc.b $00
[000a26eb]                           dc.b $08
[000a26ec]                           dc.b $00
[000a26ed]                           dc.b $00
[000a26ee]                           dc.b $00
[000a26ef]                           dc.b $02
[000a26f0]                           dc.b $00
[000a26f1]                           dc.b $01
_06_COLOR256:
[000a26f2]                           dc.b $00
[000a26f3]                           dc.b $07
[000a26f4]                           dc.w $ffff
[000a26f6]                           dc.w $ffff
[000a26f8]                           dc.b $00
[000a26f9]                           dc.b $18
[000a26fa]                           dc.b $00
[000a26fb]                           dc.b $01
[000a26fc]                           dc.b $00
[000a26fd]                           dc.b $00
[000a26fe] 000a21a0                  dc.l PICCOLOR01
[000a2702]                           dc.b $00
[000a2703]                           dc.b $0a
[000a2704]                           dc.b $00
[000a2705]                           dc.b $00
[000a2706]                           dc.b $00
[000a2707]                           dc.b $02
[000a2708]                           dc.b $00
[000a2709]                           dc.b $01
_07_COLOR256:
[000a270a]                           dc.b $00
[000a270b]                           dc.b $08
[000a270c]                           dc.w $ffff
[000a270e]                           dc.w $ffff
[000a2710]                           dc.b $00
[000a2711]                           dc.b $18
[000a2712]                           dc.b $00
[000a2713]                           dc.b $01
[000a2714]                           dc.b $00
[000a2715]                           dc.b $00
[000a2716] 000a21a0                  dc.l PICCOLOR01
[000a271a]                           dc.b $00
[000a271b]                           dc.b $0c
[000a271c]                           dc.b $00
[000a271d]                           dc.b $00
[000a271e]                           dc.b $00
[000a271f]                           dc.b $02
[000a2720]                           dc.b $00
[000a2721]                           dc.b $01
_08_COLOR256:
[000a2722]                           dc.b $00
[000a2723]                           dc.b $09
[000a2724]                           dc.w $ffff
[000a2726]                           dc.w $ffff
[000a2728]                           dc.b $00
[000a2729]                           dc.b $18
[000a272a]                           dc.b $00
[000a272b]                           dc.b $01
[000a272c]                           dc.b $00
[000a272d]                           dc.b $00
[000a272e] 000a21a0                  dc.l PICCOLOR01
[000a2732]                           dc.b $00
[000a2733]                           dc.b $0e
[000a2734]                           dc.b $00
[000a2735]                           dc.b $00
[000a2736]                           dc.b $00
[000a2737]                           dc.b $02
[000a2738]                           dc.b $00
[000a2739]                           dc.b $01
_09_COLOR256:
[000a273a]                           dc.b $00
[000a273b]                           dc.b $0a
[000a273c]                           dc.w $ffff
[000a273e]                           dc.w $ffff
[000a2740]                           dc.b $00
[000a2741]                           dc.b $18
[000a2742]                           dc.b $00
[000a2743]                           dc.b $01
[000a2744]                           dc.b $00
[000a2745]                           dc.b $00
[000a2746] 000a21a0                  dc.l PICCOLOR01
[000a274a]                           dc.b $00
[000a274b]                           dc.b $10
[000a274c]                           dc.b $00
[000a274d]                           dc.b $00
[000a274e]                           dc.b $00
[000a274f]                           dc.b $02
[000a2750]                           dc.b $00
[000a2751]                           dc.b $01
_10_COLOR256:
[000a2752]                           dc.b $00
[000a2753]                           dc.b $0b
[000a2754]                           dc.w $ffff
[000a2756]                           dc.w $ffff
[000a2758]                           dc.b $00
[000a2759]                           dc.b $18
[000a275a]                           dc.b $00
[000a275b]                           dc.b $01
[000a275c]                           dc.b $00
[000a275d]                           dc.b $00
[000a275e] 000a21a0                  dc.l PICCOLOR01
[000a2762]                           dc.b $00
[000a2763]                           dc.b $12
[000a2764]                           dc.b $00
[000a2765]                           dc.b $00
[000a2766]                           dc.b $00
[000a2767]                           dc.b $02
[000a2768]                           dc.b $00
[000a2769]                           dc.b $01
_11_COLOR256:
[000a276a]                           dc.b $00
[000a276b]                           dc.b $0c
[000a276c]                           dc.w $ffff
[000a276e]                           dc.w $ffff
[000a2770]                           dc.b $00
[000a2771]                           dc.b $18
[000a2772]                           dc.b $00
[000a2773]                           dc.b $01
[000a2774]                           dc.b $00
[000a2775]                           dc.b $00
[000a2776] 000a21a0                  dc.l PICCOLOR01
[000a277a]                           dc.b $00
[000a277b]                           dc.b $14
[000a277c]                           dc.b $00
[000a277d]                           dc.b $00
[000a277e]                           dc.b $00
[000a277f]                           dc.b $02
[000a2780]                           dc.b $00
[000a2781]                           dc.b $01
_12_COLOR256:
[000a2782]                           dc.b $00
[000a2783]                           dc.b $0d
[000a2784]                           dc.w $ffff
[000a2786]                           dc.w $ffff
[000a2788]                           dc.b $00
[000a2789]                           dc.b $18
[000a278a]                           dc.b $00
[000a278b]                           dc.b $01
[000a278c]                           dc.b $00
[000a278d]                           dc.b $00
[000a278e] 000a21a0                  dc.l PICCOLOR01
[000a2792]                           dc.b $00
[000a2793]                           dc.b $16
[000a2794]                           dc.b $00
[000a2795]                           dc.b $00
[000a2796]                           dc.b $00
[000a2797]                           dc.b $02
[000a2798]                           dc.b $00
[000a2799]                           dc.b $01
_13_COLOR256:
[000a279a]                           dc.b $00
[000a279b]                           dc.b $0e
[000a279c]                           dc.w $ffff
[000a279e]                           dc.w $ffff
[000a27a0]                           dc.b $00
[000a27a1]                           dc.b $18
[000a27a2]                           dc.b $00
[000a27a3]                           dc.b $01
[000a27a4]                           dc.b $00
[000a27a5]                           dc.b $00
[000a27a6] 000a21a0                  dc.l PICCOLOR01
[000a27aa]                           dc.b $00
[000a27ab]                           dc.b $18
[000a27ac]                           dc.b $00
[000a27ad]                           dc.b $00
[000a27ae]                           dc.b $00
[000a27af]                           dc.b $02
[000a27b0]                           dc.b $00
[000a27b1]                           dc.b $01
_14_COLOR256:
[000a27b2]                           dc.b $00
[000a27b3]                           dc.b $0f
[000a27b4]                           dc.w $ffff
[000a27b6]                           dc.w $ffff
[000a27b8]                           dc.b $00
[000a27b9]                           dc.b $18
[000a27ba]                           dc.b $00
[000a27bb]                           dc.b $01
[000a27bc]                           dc.b $00
[000a27bd]                           dc.b $00
[000a27be] 000a21a0                  dc.l PICCOLOR01
[000a27c2]                           dc.b $00
[000a27c3]                           dc.b $1a
[000a27c4]                           dc.b $00
[000a27c5]                           dc.b $00
[000a27c6]                           dc.b $00
[000a27c7]                           dc.b $02
[000a27c8]                           dc.b $00
[000a27c9]                           dc.b $01
_15_COLOR256:
[000a27ca]                           dc.b $00
[000a27cb]                           dc.b $10
[000a27cc]                           dc.w $ffff
[000a27ce]                           dc.w $ffff
[000a27d0]                           dc.b $00
[000a27d1]                           dc.b $18
[000a27d2]                           dc.b $00
[000a27d3]                           dc.b $01
[000a27d4]                           dc.b $00
[000a27d5]                           dc.b $00
[000a27d6] 000a21a0                  dc.l PICCOLOR01
[000a27da]                           dc.b $00
[000a27db]                           dc.b $1c
[000a27dc]                           dc.b $00
[000a27dd]                           dc.b $00
[000a27de]                           dc.b $00
[000a27df]                           dc.b $02
[000a27e0]                           dc.b $00
[000a27e1]                           dc.b $01
_16_COLOR256:
[000a27e2]                           dc.b $00
[000a27e3]                           dc.b $11
[000a27e4]                           dc.w $ffff
[000a27e6]                           dc.w $ffff
[000a27e8]                           dc.b $00
[000a27e9]                           dc.b $18
[000a27ea]                           dc.b $00
[000a27eb]                           dc.b $01
[000a27ec]                           dc.b $00
[000a27ed]                           dc.b $00
[000a27ee] 000a21a0                  dc.l PICCOLOR01
[000a27f2]                           dc.b $00
[000a27f3]                           dc.b $1e
[000a27f4]                           dc.b $00
[000a27f5]                           dc.b $00
[000a27f6]                           dc.b $00
[000a27f7]                           dc.b $02
[000a27f8]                           dc.b $00
[000a27f9]                           dc.b $01
_17_COLOR256:
[000a27fa]                           dc.b $00
[000a27fb]                           dc.b $12
[000a27fc]                           dc.w $ffff
[000a27fe]                           dc.w $ffff
[000a2800]                           dc.b $00
[000a2801]                           dc.b $18
[000a2802]                           dc.b $00
[000a2803]                           dc.b $01
[000a2804]                           dc.b $00
[000a2805]                           dc.b $00
[000a2806] 000a21a0                  dc.l PICCOLOR01
[000a280a]                           dc.b $00
[000a280b]                           dc.b $00
[000a280c]                           dc.b $00
[000a280d]                           dc.b $01
[000a280e]                           dc.b $00
[000a280f]                           dc.b $02
[000a2810]                           dc.b $00
[000a2811]                           dc.b $01
_18_COLOR256:
[000a2812]                           dc.b $00
[000a2813]                           dc.b $13
[000a2814]                           dc.w $ffff
[000a2816]                           dc.w $ffff
[000a2818]                           dc.b $00
[000a2819]                           dc.b $18
[000a281a]                           dc.b $00
[000a281b]                           dc.b $01
[000a281c]                           dc.b $00
[000a281d]                           dc.b $00
[000a281e] 000a21a0                  dc.l PICCOLOR01
[000a2822]                           dc.b $00
[000a2823]                           dc.b $02
[000a2824]                           dc.b $00
[000a2825]                           dc.b $01
[000a2826]                           dc.b $00
[000a2827]                           dc.b $02
[000a2828]                           dc.b $00
[000a2829]                           dc.b $01
_19_COLOR256:
[000a282a]                           dc.b $00
[000a282b]                           dc.b $14
[000a282c]                           dc.w $ffff
[000a282e]                           dc.w $ffff
[000a2830]                           dc.b $00
[000a2831]                           dc.b $18
[000a2832]                           dc.b $00
[000a2833]                           dc.b $01
[000a2834]                           dc.b $00
[000a2835]                           dc.b $00
[000a2836] 000a21a0                  dc.l PICCOLOR01
[000a283a]                           dc.b $00
[000a283b]                           dc.b $04
[000a283c]                           dc.b $00
[000a283d]                           dc.b $01
[000a283e]                           dc.b $00
[000a283f]                           dc.b $02
[000a2840]                           dc.b $00
[000a2841]                           dc.b $01
_20_COLOR256:
[000a2842]                           dc.b $00
[000a2843]                           dc.b $15
[000a2844]                           dc.w $ffff
[000a2846]                           dc.w $ffff
[000a2848]                           dc.b $00
[000a2849]                           dc.b $18
[000a284a]                           dc.b $00
[000a284b]                           dc.b $01
[000a284c]                           dc.b $00
[000a284d]                           dc.b $00
[000a284e] 000a21a0                  dc.l PICCOLOR01
[000a2852]                           dc.b $00
[000a2853]                           dc.b $06
[000a2854]                           dc.b $00
[000a2855]                           dc.b $01
[000a2856]                           dc.b $00
[000a2857]                           dc.b $02
[000a2858]                           dc.b $00
[000a2859]                           dc.b $01
_21_COLOR256:
[000a285a]                           dc.b $00
[000a285b]                           dc.b $16
[000a285c]                           dc.w $ffff
[000a285e]                           dc.w $ffff
[000a2860]                           dc.b $00
[000a2861]                           dc.b $18
[000a2862]                           dc.b $00
[000a2863]                           dc.b $01
[000a2864]                           dc.b $00
[000a2865]                           dc.b $00
[000a2866] 000a21a0                  dc.l PICCOLOR01
[000a286a]                           dc.b $00
[000a286b]                           dc.b $08
[000a286c]                           dc.b $00
[000a286d]                           dc.b $01
[000a286e]                           dc.b $00
[000a286f]                           dc.b $02
[000a2870]                           dc.b $00
[000a2871]                           dc.b $01
_22_COLOR256:
[000a2872]                           dc.b $00
[000a2873]                           dc.b $17
[000a2874]                           dc.w $ffff
[000a2876]                           dc.w $ffff
[000a2878]                           dc.b $00
[000a2879]                           dc.b $18
[000a287a]                           dc.b $00
[000a287b]                           dc.b $01
[000a287c]                           dc.b $00
[000a287d]                           dc.b $00
[000a287e] 000a21a0                  dc.l PICCOLOR01
[000a2882]                           dc.b $00
[000a2883]                           dc.b $0a
[000a2884]                           dc.b $00
[000a2885]                           dc.b $01
[000a2886]                           dc.b $00
[000a2887]                           dc.b $02
[000a2888]                           dc.b $00
[000a2889]                           dc.b $01
_23_COLOR256:
[000a288a]                           dc.b $00
[000a288b]                           dc.b $18
[000a288c]                           dc.w $ffff
[000a288e]                           dc.w $ffff
[000a2890]                           dc.b $00
[000a2891]                           dc.b $18
[000a2892]                           dc.b $00
[000a2893]                           dc.b $01
[000a2894]                           dc.b $00
[000a2895]                           dc.b $00
[000a2896] 000a21a0                  dc.l PICCOLOR01
[000a289a]                           dc.b $00
[000a289b]                           dc.b $0c
[000a289c]                           dc.b $00
[000a289d]                           dc.b $01
[000a289e]                           dc.b $00
[000a289f]                           dc.b $02
[000a28a0]                           dc.b $00
[000a28a1]                           dc.b $01
_24_COLOR256:
[000a28a2]                           dc.b $00
[000a28a3]                           dc.b $19
[000a28a4]                           dc.w $ffff
[000a28a6]                           dc.w $ffff
[000a28a8]                           dc.b $00
[000a28a9]                           dc.b $18
[000a28aa]                           dc.b $00
[000a28ab]                           dc.b $01
[000a28ac]                           dc.b $00
[000a28ad]                           dc.b $00
[000a28ae] 000a21a0                  dc.l PICCOLOR01
[000a28b2]                           dc.b $00
[000a28b3]                           dc.b $0e
[000a28b4]                           dc.b $00
[000a28b5]                           dc.b $01
[000a28b6]                           dc.b $00
[000a28b7]                           dc.b $02
[000a28b8]                           dc.b $00
[000a28b9]                           dc.b $01
_25_COLOR256:
[000a28ba]                           dc.b $00
[000a28bb]                           dc.b $1a
[000a28bc]                           dc.w $ffff
[000a28be]                           dc.w $ffff
[000a28c0]                           dc.b $00
[000a28c1]                           dc.b $18
[000a28c2]                           dc.b $00
[000a28c3]                           dc.b $01
[000a28c4]                           dc.b $00
[000a28c5]                           dc.b $00
[000a28c6] 000a21a0                  dc.l PICCOLOR01
[000a28ca]                           dc.b $00
[000a28cb]                           dc.b $10
[000a28cc]                           dc.b $00
[000a28cd]                           dc.b $01
[000a28ce]                           dc.b $00
[000a28cf]                           dc.b $02
[000a28d0]                           dc.b $00
[000a28d1]                           dc.b $01
_26_COLOR256:
[000a28d2]                           dc.b $00
[000a28d3]                           dc.b $1b
[000a28d4]                           dc.w $ffff
[000a28d6]                           dc.w $ffff
[000a28d8]                           dc.b $00
[000a28d9]                           dc.b $18
[000a28da]                           dc.b $00
[000a28db]                           dc.b $01
[000a28dc]                           dc.b $00
[000a28dd]                           dc.b $00
[000a28de] 000a21a0                  dc.l PICCOLOR01
[000a28e2]                           dc.b $00
[000a28e3]                           dc.b $12
[000a28e4]                           dc.b $00
[000a28e5]                           dc.b $01
[000a28e6]                           dc.b $00
[000a28e7]                           dc.b $02
[000a28e8]                           dc.b $00
[000a28e9]                           dc.b $01
_27_COLOR256:
[000a28ea]                           dc.b $00
[000a28eb]                           dc.b $1c
[000a28ec]                           dc.w $ffff
[000a28ee]                           dc.w $ffff
[000a28f0]                           dc.b $00
[000a28f1]                           dc.b $18
[000a28f2]                           dc.b $00
[000a28f3]                           dc.b $01
[000a28f4]                           dc.b $00
[000a28f5]                           dc.b $00
[000a28f6] 000a21a0                  dc.l PICCOLOR01
[000a28fa]                           dc.b $00
[000a28fb]                           dc.b $14
[000a28fc]                           dc.b $00
[000a28fd]                           dc.b $01
[000a28fe]                           dc.b $00
[000a28ff]                           dc.b $02
[000a2900]                           dc.b $00
[000a2901]                           dc.b $01
_28_COLOR256:
[000a2902]                           dc.b $00
[000a2903]                           dc.b $1d
[000a2904]                           dc.w $ffff
[000a2906]                           dc.w $ffff
[000a2908]                           dc.b $00
[000a2909]                           dc.b $18
[000a290a]                           dc.b $00
[000a290b]                           dc.b $01
[000a290c]                           dc.b $00
[000a290d]                           dc.b $00
[000a290e] 000a21a0                  dc.l PICCOLOR01
[000a2912]                           dc.b $00
[000a2913]                           dc.b $16
[000a2914]                           dc.b $00
[000a2915]                           dc.b $01
[000a2916]                           dc.b $00
[000a2917]                           dc.b $02
[000a2918]                           dc.b $00
[000a2919]                           dc.b $01
_29_COLOR256:
[000a291a]                           dc.b $00
[000a291b]                           dc.b $1e
[000a291c]                           dc.w $ffff
[000a291e]                           dc.w $ffff
[000a2920]                           dc.b $00
[000a2921]                           dc.b $18
[000a2922]                           dc.b $00
[000a2923]                           dc.b $01
[000a2924]                           dc.b $00
[000a2925]                           dc.b $00
[000a2926] 000a21a0                  dc.l PICCOLOR01
[000a292a]                           dc.b $00
[000a292b]                           dc.b $18
[000a292c]                           dc.b $00
[000a292d]                           dc.b $01
[000a292e]                           dc.b $00
[000a292f]                           dc.b $02
[000a2930]                           dc.b $00
[000a2931]                           dc.b $01
_30_COLOR256:
[000a2932]                           dc.b $00
[000a2933]                           dc.b $1f
[000a2934]                           dc.w $ffff
[000a2936]                           dc.w $ffff
[000a2938]                           dc.b $00
[000a2939]                           dc.b $18
[000a293a]                           dc.b $00
[000a293b]                           dc.b $01
[000a293c]                           dc.b $00
[000a293d]                           dc.b $00
[000a293e] 000a21a0                  dc.l PICCOLOR01
[000a2942]                           dc.b $00
[000a2943]                           dc.b $1a
[000a2944]                           dc.b $00
[000a2945]                           dc.b $01
[000a2946]                           dc.b $00
[000a2947]                           dc.b $02
[000a2948]                           dc.b $00
[000a2949]                           dc.b $01
_31_COLOR256:
[000a294a]                           dc.b $00
[000a294b]                           dc.b $20
[000a294c]                           dc.w $ffff
[000a294e]                           dc.w $ffff
[000a2950]                           dc.b $00
[000a2951]                           dc.b $18
[000a2952]                           dc.b $00
[000a2953]                           dc.b $01
[000a2954]                           dc.b $00
[000a2955]                           dc.b $00
[000a2956] 000a21a0                  dc.l PICCOLOR01
[000a295a]                           dc.b $00
[000a295b]                           dc.b $1c
[000a295c]                           dc.b $00
[000a295d]                           dc.b $01
[000a295e]                           dc.b $00
[000a295f]                           dc.b $02
[000a2960]                           dc.b $00
[000a2961]                           dc.b $01
_32_COLOR256:
[000a2962]                           dc.b $00
[000a2963]                           dc.b $21
[000a2964]                           dc.w $ffff
[000a2966]                           dc.w $ffff
[000a2968]                           dc.b $00
[000a2969]                           dc.b $18
[000a296a]                           dc.b $00
[000a296b]                           dc.b $01
[000a296c]                           dc.b $00
[000a296d]                           dc.b $00
[000a296e] 000a21a0                  dc.l PICCOLOR01
[000a2972]                           dc.b $00
[000a2973]                           dc.b $1e
[000a2974]                           dc.b $00
[000a2975]                           dc.b $01
[000a2976]                           dc.b $00
[000a2977]                           dc.b $02
[000a2978]                           dc.b $00
[000a2979]                           dc.b $01
_33_COLOR256:
[000a297a]                           dc.b $00
[000a297b]                           dc.b $22
[000a297c]                           dc.w $ffff
[000a297e]                           dc.w $ffff
[000a2980]                           dc.b $00
[000a2981]                           dc.b $18
[000a2982]                           dc.b $00
[000a2983]                           dc.b $01
[000a2984]                           dc.b $00
[000a2985]                           dc.b $00
[000a2986] 000a21a0                  dc.l PICCOLOR01
[000a298a]                           dc.b $00
[000a298b]                           dc.b $00
[000a298c]                           dc.b $00
[000a298d]                           dc.b $02
[000a298e]                           dc.b $00
[000a298f]                           dc.b $02
[000a2990]                           dc.b $00
[000a2991]                           dc.b $01
_34_COLOR256:
[000a2992]                           dc.b $00
[000a2993]                           dc.b $23
[000a2994]                           dc.w $ffff
[000a2996]                           dc.w $ffff
[000a2998]                           dc.b $00
[000a2999]                           dc.b $18
[000a299a]                           dc.b $00
[000a299b]                           dc.b $01
[000a299c]                           dc.b $00
[000a299d]                           dc.b $00
[000a299e] 000a21a0                  dc.l PICCOLOR01
[000a29a2]                           dc.b $00
[000a29a3]                           dc.b $02
[000a29a4]                           dc.b $00
[000a29a5]                           dc.b $02
[000a29a6]                           dc.b $00
[000a29a7]                           dc.b $02
[000a29a8]                           dc.b $00
[000a29a9]                           dc.b $01
_35_COLOR256:
[000a29aa]                           dc.b $00
[000a29ab]                           dc.b $24
[000a29ac]                           dc.w $ffff
[000a29ae]                           dc.w $ffff
[000a29b0]                           dc.b $00
[000a29b1]                           dc.b $18
[000a29b2]                           dc.b $00
[000a29b3]                           dc.b $01
[000a29b4]                           dc.b $00
[000a29b5]                           dc.b $00
[000a29b6] 000a21a0                  dc.l PICCOLOR01
[000a29ba]                           dc.b $00
[000a29bb]                           dc.b $04
[000a29bc]                           dc.b $00
[000a29bd]                           dc.b $02
[000a29be]                           dc.b $00
[000a29bf]                           dc.b $02
[000a29c0]                           dc.b $00
[000a29c1]                           dc.b $01
_36_COLOR256:
[000a29c2]                           dc.b $00
[000a29c3]                           dc.b $25
[000a29c4]                           dc.w $ffff
[000a29c6]                           dc.w $ffff
[000a29c8]                           dc.b $00
[000a29c9]                           dc.b $18
[000a29ca]                           dc.b $00
[000a29cb]                           dc.b $01
[000a29cc]                           dc.b $00
[000a29cd]                           dc.b $00
[000a29ce] 000a21a0                  dc.l PICCOLOR01
[000a29d2]                           dc.b $00
[000a29d3]                           dc.b $06
[000a29d4]                           dc.b $00
[000a29d5]                           dc.b $02
[000a29d6]                           dc.b $00
[000a29d7]                           dc.b $02
[000a29d8]                           dc.b $00
[000a29d9]                           dc.b $01
_37_COLOR256:
[000a29da]                           dc.b $00
[000a29db]                           dc.b $26
[000a29dc]                           dc.w $ffff
[000a29de]                           dc.w $ffff
[000a29e0]                           dc.b $00
[000a29e1]                           dc.b $18
[000a29e2]                           dc.b $00
[000a29e3]                           dc.b $01
[000a29e4]                           dc.b $00
[000a29e5]                           dc.b $00
[000a29e6] 000a21a0                  dc.l PICCOLOR01
[000a29ea]                           dc.b $00
[000a29eb]                           dc.b $08
[000a29ec]                           dc.b $00
[000a29ed]                           dc.b $02
[000a29ee]                           dc.b $00
[000a29ef]                           dc.b $02
[000a29f0]                           dc.b $00
[000a29f1]                           dc.b $01
_38_COLOR256:
[000a29f2]                           dc.b $00
[000a29f3]                           dc.b $27
[000a29f4]                           dc.w $ffff
[000a29f6]                           dc.w $ffff
[000a29f8]                           dc.b $00
[000a29f9]                           dc.b $18
[000a29fa]                           dc.b $00
[000a29fb]                           dc.b $01
[000a29fc]                           dc.b $00
[000a29fd]                           dc.b $00
[000a29fe] 000a21a0                  dc.l PICCOLOR01
[000a2a02]                           dc.b $00
[000a2a03]                           dc.b $0a
[000a2a04]                           dc.b $00
[000a2a05]                           dc.b $02
[000a2a06]                           dc.b $00
[000a2a07]                           dc.b $02
[000a2a08]                           dc.b $00
[000a2a09]                           dc.b $01
_39_COLOR256:
[000a2a0a]                           dc.b $00
[000a2a0b]                           dc.b $28
[000a2a0c]                           dc.w $ffff
[000a2a0e]                           dc.w $ffff
[000a2a10]                           dc.b $00
[000a2a11]                           dc.b $18
[000a2a12]                           dc.b $00
[000a2a13]                           dc.b $01
[000a2a14]                           dc.b $00
[000a2a15]                           dc.b $00
[000a2a16] 000a21a0                  dc.l PICCOLOR01
[000a2a1a]                           dc.b $00
[000a2a1b]                           dc.b $0c
[000a2a1c]                           dc.b $00
[000a2a1d]                           dc.b $02
[000a2a1e]                           dc.b $00
[000a2a1f]                           dc.b $02
[000a2a20]                           dc.b $00
[000a2a21]                           dc.b $01
_40_COLOR256:
[000a2a22]                           dc.b $00
[000a2a23]                           dc.b $29
[000a2a24]                           dc.w $ffff
[000a2a26]                           dc.w $ffff
[000a2a28]                           dc.b $00
[000a2a29]                           dc.b $18
[000a2a2a]                           dc.b $00
[000a2a2b]                           dc.b $01
[000a2a2c]                           dc.b $00
[000a2a2d]                           dc.b $00
[000a2a2e] 000a21a0                  dc.l PICCOLOR01
[000a2a32]                           dc.b $00
[000a2a33]                           dc.b $0e
[000a2a34]                           dc.b $00
[000a2a35]                           dc.b $02
[000a2a36]                           dc.b $00
[000a2a37]                           dc.b $02
[000a2a38]                           dc.b $00
[000a2a39]                           dc.b $01
_41_COLOR256:
[000a2a3a]                           dc.b $00
[000a2a3b]                           dc.b $2a
[000a2a3c]                           dc.w $ffff
[000a2a3e]                           dc.w $ffff
[000a2a40]                           dc.b $00
[000a2a41]                           dc.b $18
[000a2a42]                           dc.b $00
[000a2a43]                           dc.b $01
[000a2a44]                           dc.b $00
[000a2a45]                           dc.b $00
[000a2a46] 000a21a0                  dc.l PICCOLOR01
[000a2a4a]                           dc.b $00
[000a2a4b]                           dc.b $10
[000a2a4c]                           dc.b $00
[000a2a4d]                           dc.b $02
[000a2a4e]                           dc.b $00
[000a2a4f]                           dc.b $02
[000a2a50]                           dc.b $00
[000a2a51]                           dc.b $01
_42_COLOR256:
[000a2a52]                           dc.b $00
[000a2a53]                           dc.b $2b
[000a2a54]                           dc.w $ffff
[000a2a56]                           dc.w $ffff
[000a2a58]                           dc.b $00
[000a2a59]                           dc.b $18
[000a2a5a]                           dc.b $00
[000a2a5b]                           dc.b $01
[000a2a5c]                           dc.b $00
[000a2a5d]                           dc.b $00
[000a2a5e] 000a21a0                  dc.l PICCOLOR01
[000a2a62]                           dc.b $00
[000a2a63]                           dc.b $12
[000a2a64]                           dc.b $00
[000a2a65]                           dc.b $02
[000a2a66]                           dc.b $00
[000a2a67]                           dc.b $02
[000a2a68]                           dc.b $00
[000a2a69]                           dc.b $01
_43_COLOR256:
[000a2a6a]                           dc.b $00
[000a2a6b]                           dc.b $2c
[000a2a6c]                           dc.w $ffff
[000a2a6e]                           dc.w $ffff
[000a2a70]                           dc.b $00
[000a2a71]                           dc.b $18
[000a2a72]                           dc.b $00
[000a2a73]                           dc.b $01
[000a2a74]                           dc.b $00
[000a2a75]                           dc.b $00
[000a2a76] 000a21a0                  dc.l PICCOLOR01
[000a2a7a]                           dc.b $00
[000a2a7b]                           dc.b $14
[000a2a7c]                           dc.b $00
[000a2a7d]                           dc.b $02
[000a2a7e]                           dc.b $00
[000a2a7f]                           dc.b $02
[000a2a80]                           dc.b $00
[000a2a81]                           dc.b $01
_44_COLOR256:
[000a2a82]                           dc.b $00
[000a2a83]                           dc.b $2d
[000a2a84]                           dc.w $ffff
[000a2a86]                           dc.w $ffff
[000a2a88]                           dc.b $00
[000a2a89]                           dc.b $18
[000a2a8a]                           dc.b $00
[000a2a8b]                           dc.b $01
[000a2a8c]                           dc.b $00
[000a2a8d]                           dc.b $00
[000a2a8e] 000a21a0                  dc.l PICCOLOR01
[000a2a92]                           dc.b $00
[000a2a93]                           dc.b $16
[000a2a94]                           dc.b $00
[000a2a95]                           dc.b $02
[000a2a96]                           dc.b $00
[000a2a97]                           dc.b $02
[000a2a98]                           dc.b $00
[000a2a99]                           dc.b $01
_45_COLOR256:
[000a2a9a]                           dc.b $00
[000a2a9b]                           dc.b $2e
[000a2a9c]                           dc.w $ffff
[000a2a9e]                           dc.w $ffff
[000a2aa0]                           dc.b $00
[000a2aa1]                           dc.b $18
[000a2aa2]                           dc.b $00
[000a2aa3]                           dc.b $01
[000a2aa4]                           dc.b $00
[000a2aa5]                           dc.b $00
[000a2aa6] 000a21a0                  dc.l PICCOLOR01
[000a2aaa]                           dc.b $00
[000a2aab]                           dc.b $18
[000a2aac]                           dc.b $00
[000a2aad]                           dc.b $02
[000a2aae]                           dc.b $00
[000a2aaf]                           dc.b $02
[000a2ab0]                           dc.b $00
[000a2ab1]                           dc.b $01
_46_COLOR256:
[000a2ab2]                           dc.b $00
[000a2ab3]                           dc.b $2f
[000a2ab4]                           dc.w $ffff
[000a2ab6]                           dc.w $ffff
[000a2ab8]                           dc.b $00
[000a2ab9]                           dc.b $18
[000a2aba]                           dc.b $00
[000a2abb]                           dc.b $01
[000a2abc]                           dc.b $00
[000a2abd]                           dc.b $00
[000a2abe] 000a21a0                  dc.l PICCOLOR01
[000a2ac2]                           dc.b $00
[000a2ac3]                           dc.b $1a
[000a2ac4]                           dc.b $00
[000a2ac5]                           dc.b $02
[000a2ac6]                           dc.b $00
[000a2ac7]                           dc.b $02
[000a2ac8]                           dc.b $00
[000a2ac9]                           dc.b $01
_47_COLOR256:
[000a2aca]                           dc.b $00
[000a2acb]                           dc.b $30
[000a2acc]                           dc.w $ffff
[000a2ace]                           dc.w $ffff
[000a2ad0]                           dc.b $00
[000a2ad1]                           dc.b $18
[000a2ad2]                           dc.b $00
[000a2ad3]                           dc.b $01
[000a2ad4]                           dc.b $00
[000a2ad5]                           dc.b $00
[000a2ad6] 000a21a0                  dc.l PICCOLOR01
[000a2ada]                           dc.b $00
[000a2adb]                           dc.b $1c
[000a2adc]                           dc.b $00
[000a2add]                           dc.b $02
[000a2ade]                           dc.b $00
[000a2adf]                           dc.b $02
[000a2ae0]                           dc.b $00
[000a2ae1]                           dc.b $01
_48_COLOR256:
[000a2ae2]                           dc.b $00
[000a2ae3]                           dc.b $31
[000a2ae4]                           dc.w $ffff
[000a2ae6]                           dc.w $ffff
[000a2ae8]                           dc.b $00
[000a2ae9]                           dc.b $18
[000a2aea]                           dc.b $00
[000a2aeb]                           dc.b $01
[000a2aec]                           dc.b $00
[000a2aed]                           dc.b $00
[000a2aee] 000a21a0                  dc.l PICCOLOR01
[000a2af2]                           dc.b $00
[000a2af3]                           dc.b $1e
[000a2af4]                           dc.b $00
[000a2af5]                           dc.b $02
[000a2af6]                           dc.b $00
[000a2af7]                           dc.b $02
[000a2af8]                           dc.b $00
[000a2af9]                           dc.b $01
_49_COLOR256:
[000a2afa]                           dc.b $00
[000a2afb]                           dc.b $32
[000a2afc]                           dc.w $ffff
[000a2afe]                           dc.w $ffff
[000a2b00]                           dc.b $00
[000a2b01]                           dc.b $18
[000a2b02]                           dc.b $00
[000a2b03]                           dc.b $01
[000a2b04]                           dc.b $00
[000a2b05]                           dc.b $00
[000a2b06] 000a21a0                  dc.l PICCOLOR01
[000a2b0a]                           dc.b $00
[000a2b0b]                           dc.b $00
[000a2b0c]                           dc.b $00
[000a2b0d]                           dc.b $03
[000a2b0e]                           dc.b $00
[000a2b0f]                           dc.b $02
[000a2b10]                           dc.b $00
[000a2b11]                           dc.b $01
_50_COLOR256:
[000a2b12]                           dc.b $00
[000a2b13]                           dc.b $33
[000a2b14]                           dc.w $ffff
[000a2b16]                           dc.w $ffff
[000a2b18]                           dc.b $00
[000a2b19]                           dc.b $18
[000a2b1a]                           dc.b $00
[000a2b1b]                           dc.b $01
[000a2b1c]                           dc.b $00
[000a2b1d]                           dc.b $00
[000a2b1e] 000a21a0                  dc.l PICCOLOR01
[000a2b22]                           dc.b $00
[000a2b23]                           dc.b $02
[000a2b24]                           dc.b $00
[000a2b25]                           dc.b $03
[000a2b26]                           dc.b $00
[000a2b27]                           dc.b $02
[000a2b28]                           dc.b $00
[000a2b29]                           dc.b $01
_51_COLOR256:
[000a2b2a]                           dc.b $00
[000a2b2b]                           dc.b $34
[000a2b2c]                           dc.w $ffff
[000a2b2e]                           dc.w $ffff
[000a2b30]                           dc.b $00
[000a2b31]                           dc.b $18
[000a2b32]                           dc.b $00
[000a2b33]                           dc.b $01
[000a2b34]                           dc.b $00
[000a2b35]                           dc.b $00
[000a2b36] 000a21a0                  dc.l PICCOLOR01
[000a2b3a]                           dc.b $00
[000a2b3b]                           dc.b $04
[000a2b3c]                           dc.b $00
[000a2b3d]                           dc.b $03
[000a2b3e]                           dc.b $00
[000a2b3f]                           dc.b $02
[000a2b40]                           dc.b $00
[000a2b41]                           dc.b $01
_52_COLOR256:
[000a2b42]                           dc.b $00
[000a2b43]                           dc.b $35
[000a2b44]                           dc.w $ffff
[000a2b46]                           dc.w $ffff
[000a2b48]                           dc.b $00
[000a2b49]                           dc.b $18
[000a2b4a]                           dc.b $00
[000a2b4b]                           dc.b $01
[000a2b4c]                           dc.b $00
[000a2b4d]                           dc.b $00
[000a2b4e] 000a21a0                  dc.l PICCOLOR01
[000a2b52]                           dc.b $00
[000a2b53]                           dc.b $06
[000a2b54]                           dc.b $00
[000a2b55]                           dc.b $03
[000a2b56]                           dc.b $00
[000a2b57]                           dc.b $02
[000a2b58]                           dc.b $00
[000a2b59]                           dc.b $01
_53_COLOR256:
[000a2b5a]                           dc.b $00
[000a2b5b]                           dc.b $36
[000a2b5c]                           dc.w $ffff
[000a2b5e]                           dc.w $ffff
[000a2b60]                           dc.b $00
[000a2b61]                           dc.b $18
[000a2b62]                           dc.b $00
[000a2b63]                           dc.b $01
[000a2b64]                           dc.b $00
[000a2b65]                           dc.b $00
[000a2b66] 000a21a0                  dc.l PICCOLOR01
[000a2b6a]                           dc.b $00
[000a2b6b]                           dc.b $08
[000a2b6c]                           dc.b $00
[000a2b6d]                           dc.b $03
[000a2b6e]                           dc.b $00
[000a2b6f]                           dc.b $02
[000a2b70]                           dc.b $00
[000a2b71]                           dc.b $01
_54_COLOR256:
[000a2b72]                           dc.b $00
[000a2b73]                           dc.b $37
[000a2b74]                           dc.w $ffff
[000a2b76]                           dc.w $ffff
[000a2b78]                           dc.b $00
[000a2b79]                           dc.b $18
[000a2b7a]                           dc.b $00
[000a2b7b]                           dc.b $01
[000a2b7c]                           dc.b $00
[000a2b7d]                           dc.b $00
[000a2b7e] 000a21a0                  dc.l PICCOLOR01
[000a2b82]                           dc.b $00
[000a2b83]                           dc.b $0a
[000a2b84]                           dc.b $00
[000a2b85]                           dc.b $03
[000a2b86]                           dc.b $00
[000a2b87]                           dc.b $02
[000a2b88]                           dc.b $00
[000a2b89]                           dc.b $01
_55_COLOR256:
[000a2b8a]                           dc.b $00
[000a2b8b]                           dc.b $38
[000a2b8c]                           dc.w $ffff
[000a2b8e]                           dc.w $ffff
[000a2b90]                           dc.b $00
[000a2b91]                           dc.b $18
[000a2b92]                           dc.b $00
[000a2b93]                           dc.b $01
[000a2b94]                           dc.b $00
[000a2b95]                           dc.b $00
[000a2b96] 000a21a0                  dc.l PICCOLOR01
[000a2b9a]                           dc.b $00
[000a2b9b]                           dc.b $0c
[000a2b9c]                           dc.b $00
[000a2b9d]                           dc.b $03
[000a2b9e]                           dc.b $00
[000a2b9f]                           dc.b $02
[000a2ba0]                           dc.b $00
[000a2ba1]                           dc.b $01
_56_COLOR256:
[000a2ba2]                           dc.b $00
[000a2ba3]                           dc.b $39
[000a2ba4]                           dc.w $ffff
[000a2ba6]                           dc.w $ffff
[000a2ba8]                           dc.b $00
[000a2ba9]                           dc.b $18
[000a2baa]                           dc.b $00
[000a2bab]                           dc.b $01
[000a2bac]                           dc.b $00
[000a2bad]                           dc.b $00
[000a2bae] 000a21a0                  dc.l PICCOLOR01
[000a2bb2]                           dc.b $00
[000a2bb3]                           dc.b $0e
[000a2bb4]                           dc.b $00
[000a2bb5]                           dc.b $03
[000a2bb6]                           dc.b $00
[000a2bb7]                           dc.b $02
[000a2bb8]                           dc.b $00
[000a2bb9]                           dc.b $01
_57_COLOR256:
[000a2bba]                           dc.b $00
[000a2bbb]                           dc.b $3a
[000a2bbc]                           dc.w $ffff
[000a2bbe]                           dc.w $ffff
[000a2bc0]                           dc.b $00
[000a2bc1]                           dc.b $18
[000a2bc2]                           dc.b $00
[000a2bc3]                           dc.b $01
[000a2bc4]                           dc.b $00
[000a2bc5]                           dc.b $00
[000a2bc6] 000a21a0                  dc.l PICCOLOR01
[000a2bca]                           dc.b $00
[000a2bcb]                           dc.b $10
[000a2bcc]                           dc.b $00
[000a2bcd]                           dc.b $03
[000a2bce]                           dc.b $00
[000a2bcf]                           dc.b $02
[000a2bd0]                           dc.b $00
[000a2bd1]                           dc.b $01
_58_COLOR256:
[000a2bd2]                           dc.b $00
[000a2bd3]                           dc.b $3b
[000a2bd4]                           dc.w $ffff
[000a2bd6]                           dc.w $ffff
[000a2bd8]                           dc.b $00
[000a2bd9]                           dc.b $18
[000a2bda]                           dc.b $00
[000a2bdb]                           dc.b $01
[000a2bdc]                           dc.b $00
[000a2bdd]                           dc.b $00
[000a2bde] 000a21a0                  dc.l PICCOLOR01
[000a2be2]                           dc.b $00
[000a2be3]                           dc.b $12
[000a2be4]                           dc.b $00
[000a2be5]                           dc.b $03
[000a2be6]                           dc.b $00
[000a2be7]                           dc.b $02
[000a2be8]                           dc.b $00
[000a2be9]                           dc.b $01
_59_COLOR256:
[000a2bea]                           dc.b $00
[000a2beb]                           dc.b $3c
[000a2bec]                           dc.w $ffff
[000a2bee]                           dc.w $ffff
[000a2bf0]                           dc.b $00
[000a2bf1]                           dc.b $18
[000a2bf2]                           dc.b $00
[000a2bf3]                           dc.b $01
[000a2bf4]                           dc.b $00
[000a2bf5]                           dc.b $00
[000a2bf6] 000a21a0                  dc.l PICCOLOR01
[000a2bfa]                           dc.b $00
[000a2bfb]                           dc.b $14
[000a2bfc]                           dc.b $00
[000a2bfd]                           dc.b $03
[000a2bfe]                           dc.b $00
[000a2bff]                           dc.b $02
[000a2c00]                           dc.b $00
[000a2c01]                           dc.b $01
_60_COLOR256:
[000a2c02]                           dc.b $00
[000a2c03]                           dc.b $3d
[000a2c04]                           dc.w $ffff
[000a2c06]                           dc.w $ffff
[000a2c08]                           dc.b $00
[000a2c09]                           dc.b $18
[000a2c0a]                           dc.b $00
[000a2c0b]                           dc.b $01
[000a2c0c]                           dc.b $00
[000a2c0d]                           dc.b $00
[000a2c0e] 000a21a0                  dc.l PICCOLOR01
[000a2c12]                           dc.b $00
[000a2c13]                           dc.b $16
[000a2c14]                           dc.b $00
[000a2c15]                           dc.b $03
[000a2c16]                           dc.b $00
[000a2c17]                           dc.b $02
[000a2c18]                           dc.b $00
[000a2c19]                           dc.b $01
_61_COLOR256:
[000a2c1a]                           dc.b $00
[000a2c1b]                           dc.b $3e
[000a2c1c]                           dc.w $ffff
[000a2c1e]                           dc.w $ffff
[000a2c20]                           dc.b $00
[000a2c21]                           dc.b $18
[000a2c22]                           dc.b $00
[000a2c23]                           dc.b $01
[000a2c24]                           dc.b $00
[000a2c25]                           dc.b $00
[000a2c26] 000a21a0                  dc.l PICCOLOR01
[000a2c2a]                           dc.b $00
[000a2c2b]                           dc.b $18
[000a2c2c]                           dc.b $00
[000a2c2d]                           dc.b $03
[000a2c2e]                           dc.b $00
[000a2c2f]                           dc.b $02
[000a2c30]                           dc.b $00
[000a2c31]                           dc.b $01
_62_COLOR256:
[000a2c32]                           dc.b $00
[000a2c33]                           dc.b $3f
[000a2c34]                           dc.w $ffff
[000a2c36]                           dc.w $ffff
[000a2c38]                           dc.b $00
[000a2c39]                           dc.b $18
[000a2c3a]                           dc.b $00
[000a2c3b]                           dc.b $01
[000a2c3c]                           dc.b $00
[000a2c3d]                           dc.b $00
[000a2c3e] 000a21a0                  dc.l PICCOLOR01
[000a2c42]                           dc.b $00
[000a2c43]                           dc.b $1a
[000a2c44]                           dc.b $00
[000a2c45]                           dc.b $03
[000a2c46]                           dc.b $00
[000a2c47]                           dc.b $02
[000a2c48]                           dc.b $00
[000a2c49]                           dc.b $01
_63_COLOR256:
[000a2c4a]                           dc.b $00
[000a2c4b]                           dc.b $40
[000a2c4c]                           dc.w $ffff
[000a2c4e]                           dc.w $ffff
[000a2c50]                           dc.b $00
[000a2c51]                           dc.b $18
[000a2c52]                           dc.b $00
[000a2c53]                           dc.b $01
[000a2c54]                           dc.b $00
[000a2c55]                           dc.b $00
[000a2c56] 000a21a0                  dc.l PICCOLOR01
[000a2c5a]                           dc.b $00
[000a2c5b]                           dc.b $1c
[000a2c5c]                           dc.b $00
[000a2c5d]                           dc.b $03
[000a2c5e]                           dc.b $00
[000a2c5f]                           dc.b $02
[000a2c60]                           dc.b $00
[000a2c61]                           dc.b $01
_64_COLOR256:
[000a2c62]                           dc.b $00
[000a2c63]                           dc.b $41
[000a2c64]                           dc.w $ffff
[000a2c66]                           dc.w $ffff
[000a2c68]                           dc.b $00
[000a2c69]                           dc.b $18
[000a2c6a]                           dc.b $00
[000a2c6b]                           dc.b $01
[000a2c6c]                           dc.b $00
[000a2c6d]                           dc.b $00
[000a2c6e] 000a21a0                  dc.l PICCOLOR01
[000a2c72]                           dc.b $00
[000a2c73]                           dc.b $1e
[000a2c74]                           dc.b $00
[000a2c75]                           dc.b $03
[000a2c76]                           dc.b $00
[000a2c77]                           dc.b $02
[000a2c78]                           dc.b $00
[000a2c79]                           dc.b $01
_65_COLOR256:
[000a2c7a]                           dc.b $00
[000a2c7b]                           dc.b $42
[000a2c7c]                           dc.w $ffff
[000a2c7e]                           dc.w $ffff
[000a2c80]                           dc.b $00
[000a2c81]                           dc.b $18
[000a2c82]                           dc.b $00
[000a2c83]                           dc.b $01
[000a2c84]                           dc.b $00
[000a2c85]                           dc.b $00
[000a2c86] 000a21a0                  dc.l PICCOLOR01
[000a2c8a]                           dc.b $00
[000a2c8b]                           dc.b $00
[000a2c8c]                           dc.b $00
[000a2c8d]                           dc.b $04
[000a2c8e]                           dc.b $00
[000a2c8f]                           dc.b $02
[000a2c90]                           dc.b $00
[000a2c91]                           dc.b $01
_66_COLOR256:
[000a2c92]                           dc.b $00
[000a2c93]                           dc.b $43
[000a2c94]                           dc.w $ffff
[000a2c96]                           dc.w $ffff
[000a2c98]                           dc.b $00
[000a2c99]                           dc.b $18
[000a2c9a]                           dc.b $00
[000a2c9b]                           dc.b $01
[000a2c9c]                           dc.b $00
[000a2c9d]                           dc.b $00
[000a2c9e] 000a21a0                  dc.l PICCOLOR01
[000a2ca2]                           dc.b $00
[000a2ca3]                           dc.b $02
[000a2ca4]                           dc.b $00
[000a2ca5]                           dc.b $04
[000a2ca6]                           dc.b $00
[000a2ca7]                           dc.b $02
[000a2ca8]                           dc.b $00
[000a2ca9]                           dc.b $01
_67_COLOR256:
[000a2caa]                           dc.b $00
[000a2cab]                           dc.b $44
[000a2cac]                           dc.w $ffff
[000a2cae]                           dc.w $ffff
[000a2cb0]                           dc.b $00
[000a2cb1]                           dc.b $18
[000a2cb2]                           dc.b $00
[000a2cb3]                           dc.b $01
[000a2cb4]                           dc.b $00
[000a2cb5]                           dc.b $00
[000a2cb6] 000a21a0                  dc.l PICCOLOR01
[000a2cba]                           dc.b $00
[000a2cbb]                           dc.b $04
[000a2cbc]                           dc.b $00
[000a2cbd]                           dc.b $04
[000a2cbe]                           dc.b $00
[000a2cbf]                           dc.b $02
[000a2cc0]                           dc.b $00
[000a2cc1]                           dc.b $01
_68_COLOR256:
[000a2cc2]                           dc.b $00
[000a2cc3]                           dc.b $45
[000a2cc4]                           dc.w $ffff
[000a2cc6]                           dc.w $ffff
[000a2cc8]                           dc.b $00
[000a2cc9]                           dc.b $18
[000a2cca]                           dc.b $00
[000a2ccb]                           dc.b $01
[000a2ccc]                           dc.b $00
[000a2ccd]                           dc.b $00
[000a2cce] 000a21a0                  dc.l PICCOLOR01
[000a2cd2]                           dc.b $00
[000a2cd3]                           dc.b $06
[000a2cd4]                           dc.b $00
[000a2cd5]                           dc.b $04
[000a2cd6]                           dc.b $00
[000a2cd7]                           dc.b $02
[000a2cd8]                           dc.b $00
[000a2cd9]                           dc.b $01
_69_COLOR256:
[000a2cda]                           dc.b $00
[000a2cdb]                           dc.b $46
[000a2cdc]                           dc.w $ffff
[000a2cde]                           dc.w $ffff
[000a2ce0]                           dc.b $00
[000a2ce1]                           dc.b $18
[000a2ce2]                           dc.b $00
[000a2ce3]                           dc.b $01
[000a2ce4]                           dc.b $00
[000a2ce5]                           dc.b $00
[000a2ce6] 000a21a0                  dc.l PICCOLOR01
[000a2cea]                           dc.b $00
[000a2ceb]                           dc.b $08
[000a2cec]                           dc.b $00
[000a2ced]                           dc.b $04
[000a2cee]                           dc.b $00
[000a2cef]                           dc.b $02
[000a2cf0]                           dc.b $00
[000a2cf1]                           dc.b $01
_70_COLOR256:
[000a2cf2]                           dc.b $00
[000a2cf3]                           dc.b $47
[000a2cf4]                           dc.w $ffff
[000a2cf6]                           dc.w $ffff
[000a2cf8]                           dc.b $00
[000a2cf9]                           dc.b $18
[000a2cfa]                           dc.b $00
[000a2cfb]                           dc.b $01
[000a2cfc]                           dc.b $00
[000a2cfd]                           dc.b $00
[000a2cfe] 000a21a0                  dc.l PICCOLOR01
[000a2d02]                           dc.b $00
[000a2d03]                           dc.b $0a
[000a2d04]                           dc.b $00
[000a2d05]                           dc.b $04
[000a2d06]                           dc.b $00
[000a2d07]                           dc.b $02
[000a2d08]                           dc.b $00
[000a2d09]                           dc.b $01
_71_COLOR256:
[000a2d0a]                           dc.b $00
[000a2d0b]                           dc.b $48
[000a2d0c]                           dc.w $ffff
[000a2d0e]                           dc.w $ffff
[000a2d10]                           dc.b $00
[000a2d11]                           dc.b $18
[000a2d12]                           dc.b $00
[000a2d13]                           dc.b $01
[000a2d14]                           dc.b $00
[000a2d15]                           dc.b $00
[000a2d16] 000a21a0                  dc.l PICCOLOR01
[000a2d1a]                           dc.b $00
[000a2d1b]                           dc.b $0c
[000a2d1c]                           dc.b $00
[000a2d1d]                           dc.b $04
[000a2d1e]                           dc.b $00
[000a2d1f]                           dc.b $02
[000a2d20]                           dc.b $00
[000a2d21]                           dc.b $01
_72_COLOR256:
[000a2d22]                           dc.b $00
[000a2d23]                           dc.b $49
[000a2d24]                           dc.w $ffff
[000a2d26]                           dc.w $ffff
[000a2d28]                           dc.b $00
[000a2d29]                           dc.b $18
[000a2d2a]                           dc.b $00
[000a2d2b]                           dc.b $01
[000a2d2c]                           dc.b $00
[000a2d2d]                           dc.b $00
[000a2d2e] 000a21a0                  dc.l PICCOLOR01
[000a2d32]                           dc.b $00
[000a2d33]                           dc.b $0e
[000a2d34]                           dc.b $00
[000a2d35]                           dc.b $04
[000a2d36]                           dc.b $00
[000a2d37]                           dc.b $02
[000a2d38]                           dc.b $00
[000a2d39]                           dc.b $01
_73_COLOR256:
[000a2d3a]                           dc.b $00
[000a2d3b]                           dc.b $4a
[000a2d3c]                           dc.w $ffff
[000a2d3e]                           dc.w $ffff
[000a2d40]                           dc.b $00
[000a2d41]                           dc.b $18
[000a2d42]                           dc.b $00
[000a2d43]                           dc.b $01
[000a2d44]                           dc.b $00
[000a2d45]                           dc.b $00
[000a2d46] 000a21a0                  dc.l PICCOLOR01
[000a2d4a]                           dc.b $00
[000a2d4b]                           dc.b $10
[000a2d4c]                           dc.b $00
[000a2d4d]                           dc.b $04
[000a2d4e]                           dc.b $00
[000a2d4f]                           dc.b $02
[000a2d50]                           dc.b $00
[000a2d51]                           dc.b $01
_74_COLOR256:
[000a2d52]                           dc.b $00
[000a2d53]                           dc.b $4b
[000a2d54]                           dc.w $ffff
[000a2d56]                           dc.w $ffff
[000a2d58]                           dc.b $00
[000a2d59]                           dc.b $18
[000a2d5a]                           dc.b $00
[000a2d5b]                           dc.b $01
[000a2d5c]                           dc.b $00
[000a2d5d]                           dc.b $00
[000a2d5e] 000a21a0                  dc.l PICCOLOR01
[000a2d62]                           dc.b $00
[000a2d63]                           dc.b $12
[000a2d64]                           dc.b $00
[000a2d65]                           dc.b $04
[000a2d66]                           dc.b $00
[000a2d67]                           dc.b $02
[000a2d68]                           dc.b $00
[000a2d69]                           dc.b $01
_75_COLOR256:
[000a2d6a]                           dc.b $00
[000a2d6b]                           dc.b $4c
[000a2d6c]                           dc.w $ffff
[000a2d6e]                           dc.w $ffff
[000a2d70]                           dc.b $00
[000a2d71]                           dc.b $18
[000a2d72]                           dc.b $00
[000a2d73]                           dc.b $01
[000a2d74]                           dc.b $00
[000a2d75]                           dc.b $00
[000a2d76] 000a21a0                  dc.l PICCOLOR01
[000a2d7a]                           dc.b $00
[000a2d7b]                           dc.b $14
[000a2d7c]                           dc.b $00
[000a2d7d]                           dc.b $04
[000a2d7e]                           dc.b $00
[000a2d7f]                           dc.b $02
[000a2d80]                           dc.b $00
[000a2d81]                           dc.b $01
_76_COLOR256:
[000a2d82]                           dc.b $00
[000a2d83]                           dc.b $4d
[000a2d84]                           dc.w $ffff
[000a2d86]                           dc.w $ffff
[000a2d88]                           dc.b $00
[000a2d89]                           dc.b $18
[000a2d8a]                           dc.b $00
[000a2d8b]                           dc.b $01
[000a2d8c]                           dc.b $00
[000a2d8d]                           dc.b $00
[000a2d8e] 000a21a0                  dc.l PICCOLOR01
[000a2d92]                           dc.b $00
[000a2d93]                           dc.b $16
[000a2d94]                           dc.b $00
[000a2d95]                           dc.b $04
[000a2d96]                           dc.b $00
[000a2d97]                           dc.b $02
[000a2d98]                           dc.b $00
[000a2d99]                           dc.b $01
_77_COLOR256:
[000a2d9a]                           dc.b $00
[000a2d9b]                           dc.b $4e
[000a2d9c]                           dc.w $ffff
[000a2d9e]                           dc.w $ffff
[000a2da0]                           dc.b $00
[000a2da1]                           dc.b $18
[000a2da2]                           dc.b $00
[000a2da3]                           dc.b $01
[000a2da4]                           dc.b $00
[000a2da5]                           dc.b $00
[000a2da6] 000a21a0                  dc.l PICCOLOR01
[000a2daa]                           dc.b $00
[000a2dab]                           dc.b $18
[000a2dac]                           dc.b $00
[000a2dad]                           dc.b $04
[000a2dae]                           dc.b $00
[000a2daf]                           dc.b $02
[000a2db0]                           dc.b $00
[000a2db1]                           dc.b $01
_78_COLOR256:
[000a2db2]                           dc.b $00
[000a2db3]                           dc.b $4f
[000a2db4]                           dc.w $ffff
[000a2db6]                           dc.w $ffff
[000a2db8]                           dc.b $00
[000a2db9]                           dc.b $18
[000a2dba]                           dc.b $00
[000a2dbb]                           dc.b $01
[000a2dbc]                           dc.b $00
[000a2dbd]                           dc.b $00
[000a2dbe] 000a21a0                  dc.l PICCOLOR01
[000a2dc2]                           dc.b $00
[000a2dc3]                           dc.b $1a
[000a2dc4]                           dc.b $00
[000a2dc5]                           dc.b $04
[000a2dc6]                           dc.b $00
[000a2dc7]                           dc.b $02
[000a2dc8]                           dc.b $00
[000a2dc9]                           dc.b $01
_79_COLOR256:
[000a2dca]                           dc.b $00
[000a2dcb]                           dc.b $50
[000a2dcc]                           dc.w $ffff
[000a2dce]                           dc.w $ffff
[000a2dd0]                           dc.b $00
[000a2dd1]                           dc.b $18
[000a2dd2]                           dc.b $00
[000a2dd3]                           dc.b $01
[000a2dd4]                           dc.b $00
[000a2dd5]                           dc.b $00
[000a2dd6] 000a21a0                  dc.l PICCOLOR01
[000a2dda]                           dc.b $00
[000a2ddb]                           dc.b $1c
[000a2ddc]                           dc.b $00
[000a2ddd]                           dc.b $04
[000a2dde]                           dc.b $00
[000a2ddf]                           dc.b $02
[000a2de0]                           dc.b $00
[000a2de1]                           dc.b $01
_80_COLOR256:
[000a2de2]                           dc.b $00
[000a2de3]                           dc.b $51
[000a2de4]                           dc.w $ffff
[000a2de6]                           dc.w $ffff
[000a2de8]                           dc.b $00
[000a2de9]                           dc.b $18
[000a2dea]                           dc.b $00
[000a2deb]                           dc.b $01
[000a2dec]                           dc.b $00
[000a2ded]                           dc.b $00
[000a2dee] 000a21a0                  dc.l PICCOLOR01
[000a2df2]                           dc.b $00
[000a2df3]                           dc.b $1e
[000a2df4]                           dc.b $00
[000a2df5]                           dc.b $04
[000a2df6]                           dc.b $00
[000a2df7]                           dc.b $02
[000a2df8]                           dc.b $00
[000a2df9]                           dc.b $01
_81_COLOR256:
[000a2dfa]                           dc.b $00
[000a2dfb]                           dc.b $52
[000a2dfc]                           dc.w $ffff
[000a2dfe]                           dc.w $ffff
[000a2e00]                           dc.b $00
[000a2e01]                           dc.b $18
[000a2e02]                           dc.b $00
[000a2e03]                           dc.b $01
[000a2e04]                           dc.b $00
[000a2e05]                           dc.b $00
[000a2e06] 000a21a0                  dc.l PICCOLOR01
[000a2e0a]                           dc.b $00
[000a2e0b]                           dc.b $00
[000a2e0c]                           dc.b $00
[000a2e0d]                           dc.b $05
[000a2e0e]                           dc.b $00
[000a2e0f]                           dc.b $02
[000a2e10]                           dc.b $00
[000a2e11]                           dc.b $01
_82_COLOR256:
[000a2e12]                           dc.b $00
[000a2e13]                           dc.b $53
[000a2e14]                           dc.w $ffff
[000a2e16]                           dc.w $ffff
[000a2e18]                           dc.b $00
[000a2e19]                           dc.b $18
[000a2e1a]                           dc.b $00
[000a2e1b]                           dc.b $01
[000a2e1c]                           dc.b $00
[000a2e1d]                           dc.b $00
[000a2e1e] 000a21a0                  dc.l PICCOLOR01
[000a2e22]                           dc.b $00
[000a2e23]                           dc.b $02
[000a2e24]                           dc.b $00
[000a2e25]                           dc.b $05
[000a2e26]                           dc.b $00
[000a2e27]                           dc.b $02
[000a2e28]                           dc.b $00
[000a2e29]                           dc.b $01
_83_COLOR256:
[000a2e2a]                           dc.b $00
[000a2e2b]                           dc.b $54
[000a2e2c]                           dc.w $ffff
[000a2e2e]                           dc.w $ffff
[000a2e30]                           dc.b $00
[000a2e31]                           dc.b $18
[000a2e32]                           dc.b $00
[000a2e33]                           dc.b $01
[000a2e34]                           dc.b $00
[000a2e35]                           dc.b $00
[000a2e36] 000a21a0                  dc.l PICCOLOR01
[000a2e3a]                           dc.b $00
[000a2e3b]                           dc.b $04
[000a2e3c]                           dc.b $00
[000a2e3d]                           dc.b $05
[000a2e3e]                           dc.b $00
[000a2e3f]                           dc.b $02
[000a2e40]                           dc.b $00
[000a2e41]                           dc.b $01
_84_COLOR256:
[000a2e42]                           dc.b $00
[000a2e43]                           dc.b $55
[000a2e44]                           dc.w $ffff
[000a2e46]                           dc.w $ffff
[000a2e48]                           dc.b $00
[000a2e49]                           dc.b $18
[000a2e4a]                           dc.b $00
[000a2e4b]                           dc.b $01
[000a2e4c]                           dc.b $00
[000a2e4d]                           dc.b $00
[000a2e4e] 000a21a0                  dc.l PICCOLOR01
[000a2e52]                           dc.b $00
[000a2e53]                           dc.b $06
[000a2e54]                           dc.b $00
[000a2e55]                           dc.b $05
[000a2e56]                           dc.b $00
[000a2e57]                           dc.b $02
[000a2e58]                           dc.b $00
[000a2e59]                           dc.b $01
_85_COLOR256:
[000a2e5a]                           dc.b $00
[000a2e5b]                           dc.b $56
[000a2e5c]                           dc.w $ffff
[000a2e5e]                           dc.w $ffff
[000a2e60]                           dc.b $00
[000a2e61]                           dc.b $18
[000a2e62]                           dc.b $00
[000a2e63]                           dc.b $01
[000a2e64]                           dc.b $00
[000a2e65]                           dc.b $00
[000a2e66] 000a21a0                  dc.l PICCOLOR01
[000a2e6a]                           dc.b $00
[000a2e6b]                           dc.b $08
[000a2e6c]                           dc.b $00
[000a2e6d]                           dc.b $05
[000a2e6e]                           dc.b $00
[000a2e6f]                           dc.b $02
[000a2e70]                           dc.b $00
[000a2e71]                           dc.b $01
_86_COLOR256:
[000a2e72]                           dc.b $00
[000a2e73]                           dc.b $57
[000a2e74]                           dc.w $ffff
[000a2e76]                           dc.w $ffff
[000a2e78]                           dc.b $00
[000a2e79]                           dc.b $18
[000a2e7a]                           dc.b $00
[000a2e7b]                           dc.b $01
[000a2e7c]                           dc.b $00
[000a2e7d]                           dc.b $00
[000a2e7e] 000a21a0                  dc.l PICCOLOR01
[000a2e82]                           dc.b $00
[000a2e83]                           dc.b $0a
[000a2e84]                           dc.b $00
[000a2e85]                           dc.b $05
[000a2e86]                           dc.b $00
[000a2e87]                           dc.b $02
[000a2e88]                           dc.b $00
[000a2e89]                           dc.b $01
_87_COLOR256:
[000a2e8a]                           dc.b $00
[000a2e8b]                           dc.b $58
[000a2e8c]                           dc.w $ffff
[000a2e8e]                           dc.w $ffff
[000a2e90]                           dc.b $00
[000a2e91]                           dc.b $18
[000a2e92]                           dc.b $00
[000a2e93]                           dc.b $01
[000a2e94]                           dc.b $00
[000a2e95]                           dc.b $00
[000a2e96] 000a21a0                  dc.l PICCOLOR01
[000a2e9a]                           dc.b $00
[000a2e9b]                           dc.b $0c
[000a2e9c]                           dc.b $00
[000a2e9d]                           dc.b $05
[000a2e9e]                           dc.b $00
[000a2e9f]                           dc.b $02
[000a2ea0]                           dc.b $00
[000a2ea1]                           dc.b $01
_88_COLOR256:
[000a2ea2]                           dc.b $00
[000a2ea3]                           dc.b $59
[000a2ea4]                           dc.w $ffff
[000a2ea6]                           dc.w $ffff
[000a2ea8]                           dc.b $00
[000a2ea9]                           dc.b $18
[000a2eaa]                           dc.b $00
[000a2eab]                           dc.b $01
[000a2eac]                           dc.b $00
[000a2ead]                           dc.b $00
[000a2eae] 000a21a0                  dc.l PICCOLOR01
[000a2eb2]                           dc.b $00
[000a2eb3]                           dc.b $0e
[000a2eb4]                           dc.b $00
[000a2eb5]                           dc.b $05
[000a2eb6]                           dc.b $00
[000a2eb7]                           dc.b $02
[000a2eb8]                           dc.b $00
[000a2eb9]                           dc.b $01
_89_COLOR256:
[000a2eba]                           dc.b $00
[000a2ebb]                           dc.b $5a
[000a2ebc]                           dc.w $ffff
[000a2ebe]                           dc.w $ffff
[000a2ec0]                           dc.b $00
[000a2ec1]                           dc.b $18
[000a2ec2]                           dc.b $00
[000a2ec3]                           dc.b $01
[000a2ec4]                           dc.b $00
[000a2ec5]                           dc.b $00
[000a2ec6] 000a21a0                  dc.l PICCOLOR01
[000a2eca]                           dc.b $00
[000a2ecb]                           dc.b $10
[000a2ecc]                           dc.b $00
[000a2ecd]                           dc.b $05
[000a2ece]                           dc.b $00
[000a2ecf]                           dc.b $02
[000a2ed0]                           dc.b $00
[000a2ed1]                           dc.b $01
_90_COLOR256:
[000a2ed2]                           dc.b $00
[000a2ed3]                           dc.b $5b
[000a2ed4]                           dc.w $ffff
[000a2ed6]                           dc.w $ffff
[000a2ed8]                           dc.b $00
[000a2ed9]                           dc.b $18
[000a2eda]                           dc.b $00
[000a2edb]                           dc.b $01
[000a2edc]                           dc.b $00
[000a2edd]                           dc.b $00
[000a2ede] 000a21a0                  dc.l PICCOLOR01
[000a2ee2]                           dc.b $00
[000a2ee3]                           dc.b $12
[000a2ee4]                           dc.b $00
[000a2ee5]                           dc.b $05
[000a2ee6]                           dc.b $00
[000a2ee7]                           dc.b $02
[000a2ee8]                           dc.b $00
[000a2ee9]                           dc.b $01
_91_COLOR256:
[000a2eea]                           dc.b $00
[000a2eeb]                           dc.b $5c
[000a2eec]                           dc.w $ffff
[000a2eee]                           dc.w $ffff
[000a2ef0]                           dc.b $00
[000a2ef1]                           dc.b $18
[000a2ef2]                           dc.b $00
[000a2ef3]                           dc.b $01
[000a2ef4]                           dc.b $00
[000a2ef5]                           dc.b $00
[000a2ef6] 000a21a0                  dc.l PICCOLOR01
[000a2efa]                           dc.b $00
[000a2efb]                           dc.b $14
[000a2efc]                           dc.b $00
[000a2efd]                           dc.b $05
[000a2efe]                           dc.b $00
[000a2eff]                           dc.b $02
[000a2f00]                           dc.b $00
[000a2f01]                           dc.b $01
_92_COLOR256:
[000a2f02]                           dc.b $00
[000a2f03]                           dc.b $5d
[000a2f04]                           dc.w $ffff
[000a2f06]                           dc.w $ffff
[000a2f08]                           dc.b $00
[000a2f09]                           dc.b $18
[000a2f0a]                           dc.b $00
[000a2f0b]                           dc.b $01
[000a2f0c]                           dc.b $00
[000a2f0d]                           dc.b $00
[000a2f0e] 000a21a0                  dc.l PICCOLOR01
[000a2f12]                           dc.b $00
[000a2f13]                           dc.b $16
[000a2f14]                           dc.b $00
[000a2f15]                           dc.b $05
[000a2f16]                           dc.b $00
[000a2f17]                           dc.b $02
[000a2f18]                           dc.b $00
[000a2f19]                           dc.b $01
_93_COLOR256:
[000a2f1a]                           dc.b $00
[000a2f1b]                           dc.b $5e
[000a2f1c]                           dc.w $ffff
[000a2f1e]                           dc.w $ffff
[000a2f20]                           dc.b $00
[000a2f21]                           dc.b $18
[000a2f22]                           dc.b $00
[000a2f23]                           dc.b $01
[000a2f24]                           dc.b $00
[000a2f25]                           dc.b $00
[000a2f26] 000a21a0                  dc.l PICCOLOR01
[000a2f2a]                           dc.b $00
[000a2f2b]                           dc.b $18
[000a2f2c]                           dc.b $00
[000a2f2d]                           dc.b $05
[000a2f2e]                           dc.b $00
[000a2f2f]                           dc.b $02
[000a2f30]                           dc.b $00
[000a2f31]                           dc.b $01
_94_COLOR256:
[000a2f32]                           dc.b $00
[000a2f33]                           dc.b $5f
[000a2f34]                           dc.w $ffff
[000a2f36]                           dc.w $ffff
[000a2f38]                           dc.b $00
[000a2f39]                           dc.b $18
[000a2f3a]                           dc.b $00
[000a2f3b]                           dc.b $01
[000a2f3c]                           dc.b $00
[000a2f3d]                           dc.b $00
[000a2f3e] 000a21a0                  dc.l PICCOLOR01
[000a2f42]                           dc.b $00
[000a2f43]                           dc.b $1a
[000a2f44]                           dc.b $00
[000a2f45]                           dc.b $05
[000a2f46]                           dc.b $00
[000a2f47]                           dc.b $02
[000a2f48]                           dc.b $00
[000a2f49]                           dc.b $01
_95_COLOR256:
[000a2f4a]                           dc.b $00
[000a2f4b]                           dc.b $60
[000a2f4c]                           dc.w $ffff
[000a2f4e]                           dc.w $ffff
[000a2f50]                           dc.b $00
[000a2f51]                           dc.b $18
[000a2f52]                           dc.b $00
[000a2f53]                           dc.b $01
[000a2f54]                           dc.b $00
[000a2f55]                           dc.b $00
[000a2f56] 000a21a0                  dc.l PICCOLOR01
[000a2f5a]                           dc.b $00
[000a2f5b]                           dc.b $1c
[000a2f5c]                           dc.b $00
[000a2f5d]                           dc.b $05
[000a2f5e]                           dc.b $00
[000a2f5f]                           dc.b $02
[000a2f60]                           dc.b $00
[000a2f61]                           dc.b $01
_96_COLOR256:
[000a2f62]                           dc.b $00
[000a2f63]                           dc.b $61
[000a2f64]                           dc.w $ffff
[000a2f66]                           dc.w $ffff
[000a2f68]                           dc.b $00
[000a2f69]                           dc.b $18
[000a2f6a]                           dc.b $00
[000a2f6b]                           dc.b $01
[000a2f6c]                           dc.b $00
[000a2f6d]                           dc.b $00
[000a2f6e] 000a21a0                  dc.l PICCOLOR01
[000a2f72]                           dc.b $00
[000a2f73]                           dc.b $1e
[000a2f74]                           dc.b $00
[000a2f75]                           dc.b $05
[000a2f76]                           dc.b $00
[000a2f77]                           dc.b $02
[000a2f78]                           dc.b $00
[000a2f79]                           dc.b $01
_97_COLOR256:
[000a2f7a]                           dc.b $00
[000a2f7b]                           dc.b $62
[000a2f7c]                           dc.w $ffff
[000a2f7e]                           dc.w $ffff
[000a2f80]                           dc.b $00
[000a2f81]                           dc.b $18
[000a2f82]                           dc.b $00
[000a2f83]                           dc.b $01
[000a2f84]                           dc.b $00
[000a2f85]                           dc.b $00
[000a2f86] 000a21a0                  dc.l PICCOLOR01
[000a2f8a]                           dc.b $00
[000a2f8b]                           dc.b $00
[000a2f8c]                           dc.b $00
[000a2f8d]                           dc.b $06
[000a2f8e]                           dc.b $00
[000a2f8f]                           dc.b $02
[000a2f90]                           dc.b $00
[000a2f91]                           dc.b $01
_98_COLOR256:
[000a2f92]                           dc.b $00
[000a2f93]                           dc.b $63
[000a2f94]                           dc.w $ffff
[000a2f96]                           dc.w $ffff
[000a2f98]                           dc.b $00
[000a2f99]                           dc.b $18
[000a2f9a]                           dc.b $00
[000a2f9b]                           dc.b $01
[000a2f9c]                           dc.b $00
[000a2f9d]                           dc.b $00
[000a2f9e] 000a21a0                  dc.l PICCOLOR01
[000a2fa2]                           dc.b $00
[000a2fa3]                           dc.b $02
[000a2fa4]                           dc.b $00
[000a2fa5]                           dc.b $06
[000a2fa6]                           dc.b $00
[000a2fa7]                           dc.b $02
[000a2fa8]                           dc.b $00
[000a2fa9]                           dc.b $01
_99_COLOR256:
[000a2faa]                           dc.b $00
[000a2fab]                           dc.b $64
[000a2fac]                           dc.w $ffff
[000a2fae]                           dc.w $ffff
[000a2fb0]                           dc.b $00
[000a2fb1]                           dc.b $18
[000a2fb2]                           dc.b $00
[000a2fb3]                           dc.b $01
[000a2fb4]                           dc.b $00
[000a2fb5]                           dc.b $00
[000a2fb6] 000a21a0                  dc.l PICCOLOR01
[000a2fba]                           dc.b $00
[000a2fbb]                           dc.b $04
[000a2fbc]                           dc.b $00
[000a2fbd]                           dc.b $06
[000a2fbe]                           dc.b $00
[000a2fbf]                           dc.b $02
[000a2fc0]                           dc.b $00
[000a2fc1]                           dc.b $01
_100_COLOR256:
[000a2fc2]                           dc.b $00
[000a2fc3]                           dc.b $65
[000a2fc4]                           dc.w $ffff
[000a2fc6]                           dc.w $ffff
[000a2fc8]                           dc.b $00
[000a2fc9]                           dc.b $18
[000a2fca]                           dc.b $00
[000a2fcb]                           dc.b $01
[000a2fcc]                           dc.b $00
[000a2fcd]                           dc.b $00
[000a2fce] 000a21a0                  dc.l PICCOLOR01
[000a2fd2]                           dc.b $00
[000a2fd3]                           dc.b $06
[000a2fd4]                           dc.b $00
[000a2fd5]                           dc.b $06
[000a2fd6]                           dc.b $00
[000a2fd7]                           dc.b $02
[000a2fd8]                           dc.b $00
[000a2fd9]                           dc.b $01
_101_COLOR256:
[000a2fda]                           dc.b $00
[000a2fdb]                           dc.b $66
[000a2fdc]                           dc.w $ffff
[000a2fde]                           dc.w $ffff
[000a2fe0]                           dc.b $00
[000a2fe1]                           dc.b $18
[000a2fe2]                           dc.b $00
[000a2fe3]                           dc.b $01
[000a2fe4]                           dc.b $00
[000a2fe5]                           dc.b $00
[000a2fe6] 000a21a0                  dc.l PICCOLOR01
[000a2fea]                           dc.b $00
[000a2feb]                           dc.b $08
[000a2fec]                           dc.b $00
[000a2fed]                           dc.b $06
[000a2fee]                           dc.b $00
[000a2fef]                           dc.b $02
[000a2ff0]                           dc.b $00
[000a2ff1]                           dc.b $01
_102_COLOR256:
[000a2ff2]                           dc.b $00
[000a2ff3]                           dc.b $67
[000a2ff4]                           dc.w $ffff
[000a2ff6]                           dc.w $ffff
[000a2ff8]                           dc.b $00
[000a2ff9]                           dc.b $18
[000a2ffa]                           dc.b $00
[000a2ffb]                           dc.b $01
[000a2ffc]                           dc.b $00
[000a2ffd]                           dc.b $00
[000a2ffe] 000a21a0                  dc.l PICCOLOR01
[000a3002]                           dc.b $00
[000a3003]                           dc.b $0a
[000a3004]                           dc.b $00
[000a3005]                           dc.b $06
[000a3006]                           dc.b $00
[000a3007]                           dc.b $02
[000a3008]                           dc.b $00
[000a3009]                           dc.b $01
_103_COLOR256:
[000a300a]                           dc.b $00
[000a300b]                           dc.b $68
[000a300c]                           dc.w $ffff
[000a300e]                           dc.w $ffff
[000a3010]                           dc.b $00
[000a3011]                           dc.b $18
[000a3012]                           dc.b $00
[000a3013]                           dc.b $01
[000a3014]                           dc.b $00
[000a3015]                           dc.b $00
[000a3016] 000a21a0                  dc.l PICCOLOR01
[000a301a]                           dc.b $00
[000a301b]                           dc.b $0c
[000a301c]                           dc.b $00
[000a301d]                           dc.b $06
[000a301e]                           dc.b $00
[000a301f]                           dc.b $02
[000a3020]                           dc.b $00
[000a3021]                           dc.b $01
_104_COLOR256:
[000a3022]                           dc.b $00
[000a3023]                           dc.b $69
[000a3024]                           dc.w $ffff
[000a3026]                           dc.w $ffff
[000a3028]                           dc.b $00
[000a3029]                           dc.b $18
[000a302a]                           dc.b $00
[000a302b]                           dc.b $01
[000a302c]                           dc.b $00
[000a302d]                           dc.b $00
[000a302e] 000a21a0                  dc.l PICCOLOR01
[000a3032]                           dc.b $00
[000a3033]                           dc.b $0e
[000a3034]                           dc.b $00
[000a3035]                           dc.b $06
[000a3036]                           dc.b $00
[000a3037]                           dc.b $02
[000a3038]                           dc.b $00
[000a3039]                           dc.b $01
_105_COLOR256:
[000a303a]                           dc.b $00
[000a303b]                           dc.b $6a
[000a303c]                           dc.w $ffff
[000a303e]                           dc.w $ffff
[000a3040]                           dc.b $00
[000a3041]                           dc.b $18
[000a3042]                           dc.b $00
[000a3043]                           dc.b $01
[000a3044]                           dc.b $00
[000a3045]                           dc.b $00
[000a3046] 000a21a0                  dc.l PICCOLOR01
[000a304a]                           dc.b $00
[000a304b]                           dc.b $10
[000a304c]                           dc.b $00
[000a304d]                           dc.b $06
[000a304e]                           dc.b $00
[000a304f]                           dc.b $02
[000a3050]                           dc.b $00
[000a3051]                           dc.b $01
_106_COLOR256:
[000a3052]                           dc.b $00
[000a3053]                           dc.b $6b
[000a3054]                           dc.w $ffff
[000a3056]                           dc.w $ffff
[000a3058]                           dc.b $00
[000a3059]                           dc.b $18
[000a305a]                           dc.b $00
[000a305b]                           dc.b $01
[000a305c]                           dc.b $00
[000a305d]                           dc.b $00
[000a305e] 000a21a0                  dc.l PICCOLOR01
[000a3062]                           dc.b $00
[000a3063]                           dc.b $12
[000a3064]                           dc.b $00
[000a3065]                           dc.b $06
[000a3066]                           dc.b $00
[000a3067]                           dc.b $02
[000a3068]                           dc.b $00
[000a3069]                           dc.b $01
_107_COLOR256:
[000a306a]                           dc.b $00
[000a306b]                           dc.b $6c
[000a306c]                           dc.w $ffff
[000a306e]                           dc.w $ffff
[000a3070]                           dc.b $00
[000a3071]                           dc.b $18
[000a3072]                           dc.b $00
[000a3073]                           dc.b $01
[000a3074]                           dc.b $00
[000a3075]                           dc.b $00
[000a3076] 000a21a0                  dc.l PICCOLOR01
[000a307a]                           dc.b $00
[000a307b]                           dc.b $14
[000a307c]                           dc.b $00
[000a307d]                           dc.b $06
[000a307e]                           dc.b $00
[000a307f]                           dc.b $02
[000a3080]                           dc.b $00
[000a3081]                           dc.b $01
_108_COLOR256:
[000a3082]                           dc.b $00
[000a3083]                           dc.b $6d
[000a3084]                           dc.w $ffff
[000a3086]                           dc.w $ffff
[000a3088]                           dc.b $00
[000a3089]                           dc.b $18
[000a308a]                           dc.b $00
[000a308b]                           dc.b $01
[000a308c]                           dc.b $00
[000a308d]                           dc.b $00
[000a308e] 000a21a0                  dc.l PICCOLOR01
[000a3092]                           dc.b $00
[000a3093]                           dc.b $16
[000a3094]                           dc.b $00
[000a3095]                           dc.b $06
[000a3096]                           dc.b $00
[000a3097]                           dc.b $02
[000a3098]                           dc.b $00
[000a3099]                           dc.b $01
_109_COLOR256:
[000a309a]                           dc.b $00
[000a309b]                           dc.b $6e
[000a309c]                           dc.w $ffff
[000a309e]                           dc.w $ffff
[000a30a0]                           dc.b $00
[000a30a1]                           dc.b $18
[000a30a2]                           dc.b $00
[000a30a3]                           dc.b $01
[000a30a4]                           dc.b $00
[000a30a5]                           dc.b $00
[000a30a6] 000a21a0                  dc.l PICCOLOR01
[000a30aa]                           dc.b $00
[000a30ab]                           dc.b $18
[000a30ac]                           dc.b $00
[000a30ad]                           dc.b $06
[000a30ae]                           dc.b $00
[000a30af]                           dc.b $02
[000a30b0]                           dc.b $00
[000a30b1]                           dc.b $01
_110_COLOR256:
[000a30b2]                           dc.b $00
[000a30b3]                           dc.b $6f
[000a30b4]                           dc.w $ffff
[000a30b6]                           dc.w $ffff
[000a30b8]                           dc.b $00
[000a30b9]                           dc.b $18
[000a30ba]                           dc.b $00
[000a30bb]                           dc.b $01
[000a30bc]                           dc.b $00
[000a30bd]                           dc.b $00
[000a30be] 000a21a0                  dc.l PICCOLOR01
[000a30c2]                           dc.b $00
[000a30c3]                           dc.b $1a
[000a30c4]                           dc.b $00
[000a30c5]                           dc.b $06
[000a30c6]                           dc.b $00
[000a30c7]                           dc.b $02
[000a30c8]                           dc.b $00
[000a30c9]                           dc.b $01
_111_COLOR256:
[000a30ca]                           dc.b $00
[000a30cb]                           dc.b $70
[000a30cc]                           dc.w $ffff
[000a30ce]                           dc.w $ffff
[000a30d0]                           dc.b $00
[000a30d1]                           dc.b $18
[000a30d2]                           dc.b $00
[000a30d3]                           dc.b $01
[000a30d4]                           dc.b $00
[000a30d5]                           dc.b $00
[000a30d6] 000a21a0                  dc.l PICCOLOR01
[000a30da]                           dc.b $00
[000a30db]                           dc.b $1c
[000a30dc]                           dc.b $00
[000a30dd]                           dc.b $06
[000a30de]                           dc.b $00
[000a30df]                           dc.b $02
[000a30e0]                           dc.b $00
[000a30e1]                           dc.b $01
_112_COLOR256:
[000a30e2]                           dc.b $00
[000a30e3]                           dc.b $71
[000a30e4]                           dc.w $ffff
[000a30e6]                           dc.w $ffff
[000a30e8]                           dc.b $00
[000a30e9]                           dc.b $18
[000a30ea]                           dc.b $00
[000a30eb]                           dc.b $01
[000a30ec]                           dc.b $00
[000a30ed]                           dc.b $00
[000a30ee] 000a21a0                  dc.l PICCOLOR01
[000a30f2]                           dc.b $00
[000a30f3]                           dc.b $1e
[000a30f4]                           dc.b $00
[000a30f5]                           dc.b $06
[000a30f6]                           dc.b $00
[000a30f7]                           dc.b $02
[000a30f8]                           dc.b $00
[000a30f9]                           dc.b $01
_113_COLOR256:
[000a30fa]                           dc.b $00
[000a30fb]                           dc.b $72
[000a30fc]                           dc.w $ffff
[000a30fe]                           dc.w $ffff
[000a3100]                           dc.b $00
[000a3101]                           dc.b $18
[000a3102]                           dc.b $00
[000a3103]                           dc.b $01
[000a3104]                           dc.b $00
[000a3105]                           dc.b $00
[000a3106] 000a21a0                  dc.l PICCOLOR01
[000a310a]                           dc.b $00
[000a310b]                           dc.b $00
[000a310c]                           dc.b $00
[000a310d]                           dc.b $07
[000a310e]                           dc.b $00
[000a310f]                           dc.b $02
[000a3110]                           dc.b $00
[000a3111]                           dc.b $01
_114_COLOR256:
[000a3112]                           dc.b $00
[000a3113]                           dc.b $73
[000a3114]                           dc.w $ffff
[000a3116]                           dc.w $ffff
[000a3118]                           dc.b $00
[000a3119]                           dc.b $18
[000a311a]                           dc.b $00
[000a311b]                           dc.b $01
[000a311c]                           dc.b $00
[000a311d]                           dc.b $00
[000a311e] 000a21a0                  dc.l PICCOLOR01
[000a3122]                           dc.b $00
[000a3123]                           dc.b $02
[000a3124]                           dc.b $00
[000a3125]                           dc.b $07
[000a3126]                           dc.b $00
[000a3127]                           dc.b $02
[000a3128]                           dc.b $00
[000a3129]                           dc.b $01
_115_COLOR256:
[000a312a]                           dc.b $00
[000a312b]                           dc.b $74
[000a312c]                           dc.w $ffff
[000a312e]                           dc.w $ffff
[000a3130]                           dc.b $00
[000a3131]                           dc.b $18
[000a3132]                           dc.b $00
[000a3133]                           dc.b $01
[000a3134]                           dc.b $00
[000a3135]                           dc.b $00
[000a3136] 000a21a0                  dc.l PICCOLOR01
[000a313a]                           dc.b $00
[000a313b]                           dc.b $04
[000a313c]                           dc.b $00
[000a313d]                           dc.b $07
[000a313e]                           dc.b $00
[000a313f]                           dc.b $02
[000a3140]                           dc.b $00
[000a3141]                           dc.b $01
_116_COLOR256:
[000a3142]                           dc.b $00
[000a3143]                           dc.b $75
[000a3144]                           dc.w $ffff
[000a3146]                           dc.w $ffff
[000a3148]                           dc.b $00
[000a3149]                           dc.b $18
[000a314a]                           dc.b $00
[000a314b]                           dc.b $01
[000a314c]                           dc.b $00
[000a314d]                           dc.b $00
[000a314e] 000a21a0                  dc.l PICCOLOR01
[000a3152]                           dc.b $00
[000a3153]                           dc.b $06
[000a3154]                           dc.b $00
[000a3155]                           dc.b $07
[000a3156]                           dc.b $00
[000a3157]                           dc.b $02
[000a3158]                           dc.b $00
[000a3159]                           dc.b $01
_117_COLOR256:
[000a315a]                           dc.b $00
[000a315b]                           dc.b $76
[000a315c]                           dc.w $ffff
[000a315e]                           dc.w $ffff
[000a3160]                           dc.b $00
[000a3161]                           dc.b $18
[000a3162]                           dc.b $00
[000a3163]                           dc.b $01
[000a3164]                           dc.b $00
[000a3165]                           dc.b $00
[000a3166] 000a21a0                  dc.l PICCOLOR01
[000a316a]                           dc.b $00
[000a316b]                           dc.b $08
[000a316c]                           dc.b $00
[000a316d]                           dc.b $07
[000a316e]                           dc.b $00
[000a316f]                           dc.b $02
[000a3170]                           dc.b $00
[000a3171]                           dc.b $01
_118_COLOR256:
[000a3172]                           dc.b $00
[000a3173]                           dc.b $77
[000a3174]                           dc.w $ffff
[000a3176]                           dc.w $ffff
[000a3178]                           dc.b $00
[000a3179]                           dc.b $18
[000a317a]                           dc.b $00
[000a317b]                           dc.b $01
[000a317c]                           dc.b $00
[000a317d]                           dc.b $00
[000a317e] 000a21a0                  dc.l PICCOLOR01
[000a3182]                           dc.b $00
[000a3183]                           dc.b $0a
[000a3184]                           dc.b $00
[000a3185]                           dc.b $07
[000a3186]                           dc.b $00
[000a3187]                           dc.b $02
[000a3188]                           dc.b $00
[000a3189]                           dc.b $01
_119_COLOR256:
[000a318a]                           dc.b $00
[000a318b]                           dc.b $78
[000a318c]                           dc.w $ffff
[000a318e]                           dc.w $ffff
[000a3190]                           dc.b $00
[000a3191]                           dc.b $18
[000a3192]                           dc.b $00
[000a3193]                           dc.b $01
[000a3194]                           dc.b $00
[000a3195]                           dc.b $00
[000a3196] 000a21a0                  dc.l PICCOLOR01
[000a319a]                           dc.b $00
[000a319b]                           dc.b $0c
[000a319c]                           dc.b $00
[000a319d]                           dc.b $07
[000a319e]                           dc.b $00
[000a319f]                           dc.b $02
[000a31a0]                           dc.b $00
[000a31a1]                           dc.b $01
_120_COLOR256:
[000a31a2]                           dc.b $00
[000a31a3]                           dc.b $79
[000a31a4]                           dc.w $ffff
[000a31a6]                           dc.w $ffff
[000a31a8]                           dc.b $00
[000a31a9]                           dc.b $18
[000a31aa]                           dc.b $00
[000a31ab]                           dc.b $01
[000a31ac]                           dc.b $00
[000a31ad]                           dc.b $00
[000a31ae] 000a21a0                  dc.l PICCOLOR01
[000a31b2]                           dc.b $00
[000a31b3]                           dc.b $0e
[000a31b4]                           dc.b $00
[000a31b5]                           dc.b $07
[000a31b6]                           dc.b $00
[000a31b7]                           dc.b $02
[000a31b8]                           dc.b $00
[000a31b9]                           dc.b $01
_121_COLOR256:
[000a31ba]                           dc.b $00
[000a31bb]                           dc.b $7a
[000a31bc]                           dc.w $ffff
[000a31be]                           dc.w $ffff
[000a31c0]                           dc.b $00
[000a31c1]                           dc.b $18
[000a31c2]                           dc.b $00
[000a31c3]                           dc.b $01
[000a31c4]                           dc.b $00
[000a31c5]                           dc.b $00
[000a31c6] 000a21a0                  dc.l PICCOLOR01
[000a31ca]                           dc.b $00
[000a31cb]                           dc.b $10
[000a31cc]                           dc.b $00
[000a31cd]                           dc.b $07
[000a31ce]                           dc.b $00
[000a31cf]                           dc.b $02
[000a31d0]                           dc.b $00
[000a31d1]                           dc.b $01
_122_COLOR256:
[000a31d2]                           dc.b $00
[000a31d3]                           dc.b $7b
[000a31d4]                           dc.w $ffff
[000a31d6]                           dc.w $ffff
[000a31d8]                           dc.b $00
[000a31d9]                           dc.b $18
[000a31da]                           dc.b $00
[000a31db]                           dc.b $01
[000a31dc]                           dc.b $00
[000a31dd]                           dc.b $00
[000a31de] 000a21a0                  dc.l PICCOLOR01
[000a31e2]                           dc.b $00
[000a31e3]                           dc.b $12
[000a31e4]                           dc.b $00
[000a31e5]                           dc.b $07
[000a31e6]                           dc.b $00
[000a31e7]                           dc.b $02
[000a31e8]                           dc.b $00
[000a31e9]                           dc.b $01
_123_COLOR256:
[000a31ea]                           dc.b $00
[000a31eb]                           dc.b $7c
[000a31ec]                           dc.w $ffff
[000a31ee]                           dc.w $ffff
[000a31f0]                           dc.b $00
[000a31f1]                           dc.b $18
[000a31f2]                           dc.b $00
[000a31f3]                           dc.b $01
[000a31f4]                           dc.b $00
[000a31f5]                           dc.b $00
[000a31f6] 000a21a0                  dc.l PICCOLOR01
[000a31fa]                           dc.b $00
[000a31fb]                           dc.b $14
[000a31fc]                           dc.b $00
[000a31fd]                           dc.b $07
[000a31fe]                           dc.b $00
[000a31ff]                           dc.b $02
[000a3200]                           dc.b $00
[000a3201]                           dc.b $01
_124_COLOR256:
[000a3202]                           dc.b $00
[000a3203]                           dc.b $7d
[000a3204]                           dc.w $ffff
[000a3206]                           dc.w $ffff
[000a3208]                           dc.b $00
[000a3209]                           dc.b $18
[000a320a]                           dc.b $00
[000a320b]                           dc.b $01
[000a320c]                           dc.b $00
[000a320d]                           dc.b $00
[000a320e] 000a21a0                  dc.l PICCOLOR01
[000a3212]                           dc.b $00
[000a3213]                           dc.b $16
[000a3214]                           dc.b $00
[000a3215]                           dc.b $07
[000a3216]                           dc.b $00
[000a3217]                           dc.b $02
[000a3218]                           dc.b $00
[000a3219]                           dc.b $01
_125_COLOR256:
[000a321a]                           dc.b $00
[000a321b]                           dc.b $7e
[000a321c]                           dc.w $ffff
[000a321e]                           dc.w $ffff
[000a3220]                           dc.b $00
[000a3221]                           dc.b $18
[000a3222]                           dc.b $00
[000a3223]                           dc.b $01
[000a3224]                           dc.b $00
[000a3225]                           dc.b $00
[000a3226] 000a21a0                  dc.l PICCOLOR01
[000a322a]                           dc.b $00
[000a322b]                           dc.b $18
[000a322c]                           dc.b $00
[000a322d]                           dc.b $07
[000a322e]                           dc.b $00
[000a322f]                           dc.b $02
[000a3230]                           dc.b $00
[000a3231]                           dc.b $01
_126_COLOR256:
[000a3232]                           dc.b $00
[000a3233]                           dc.b $7f
[000a3234]                           dc.w $ffff
[000a3236]                           dc.w $ffff
[000a3238]                           dc.b $00
[000a3239]                           dc.b $18
[000a323a]                           dc.b $00
[000a323b]                           dc.b $01
[000a323c]                           dc.b $00
[000a323d]                           dc.b $00
[000a323e] 000a21a0                  dc.l PICCOLOR01
[000a3242]                           dc.b $00
[000a3243]                           dc.b $1a
[000a3244]                           dc.b $00
[000a3245]                           dc.b $07
[000a3246]                           dc.b $00
[000a3247]                           dc.b $02
[000a3248]                           dc.b $00
[000a3249]                           dc.b $01
_127_COLOR256:
[000a324a]                           dc.b $00
[000a324b]                           dc.b $80
[000a324c]                           dc.w $ffff
[000a324e]                           dc.w $ffff
[000a3250]                           dc.b $00
[000a3251]                           dc.b $18
[000a3252]                           dc.b $00
[000a3253]                           dc.b $01
[000a3254]                           dc.b $00
[000a3255]                           dc.b $00
[000a3256] 000a21a0                  dc.l PICCOLOR01
[000a325a]                           dc.b $00
[000a325b]                           dc.b $1c
[000a325c]                           dc.b $00
[000a325d]                           dc.b $07
[000a325e]                           dc.b $00
[000a325f]                           dc.b $02
[000a3260]                           dc.b $00
[000a3261]                           dc.b $01
_128_COLOR256:
[000a3262]                           dc.b $00
[000a3263]                           dc.b $81
[000a3264]                           dc.w $ffff
[000a3266]                           dc.w $ffff
[000a3268]                           dc.b $00
[000a3269]                           dc.b $18
[000a326a]                           dc.b $00
[000a326b]                           dc.b $01
[000a326c]                           dc.b $00
[000a326d]                           dc.b $00
[000a326e] 000a21a0                  dc.l PICCOLOR01
[000a3272]                           dc.b $00
[000a3273]                           dc.b $1e
[000a3274]                           dc.b $00
[000a3275]                           dc.b $07
[000a3276]                           dc.b $00
[000a3277]                           dc.b $02
[000a3278]                           dc.b $00
[000a3279]                           dc.b $01
_129_COLOR256:
[000a327a]                           dc.b $00
[000a327b]                           dc.b $82
[000a327c]                           dc.w $ffff
[000a327e]                           dc.w $ffff
[000a3280]                           dc.b $00
[000a3281]                           dc.b $18
[000a3282]                           dc.b $00
[000a3283]                           dc.b $01
[000a3284]                           dc.b $00
[000a3285]                           dc.b $00
[000a3286] 000a21a0                  dc.l PICCOLOR01
[000a328a]                           dc.b $00
[000a328b]                           dc.b $00
[000a328c]                           dc.b $00
[000a328d]                           dc.b $08
[000a328e]                           dc.b $00
[000a328f]                           dc.b $02
[000a3290]                           dc.b $00
[000a3291]                           dc.b $01
_130_COLOR256:
[000a3292]                           dc.b $00
[000a3293]                           dc.b $83
[000a3294]                           dc.w $ffff
[000a3296]                           dc.w $ffff
[000a3298]                           dc.b $00
[000a3299]                           dc.b $18
[000a329a]                           dc.b $00
[000a329b]                           dc.b $01
[000a329c]                           dc.b $00
[000a329d]                           dc.b $00
[000a329e] 000a21a0                  dc.l PICCOLOR01
[000a32a2]                           dc.b $00
[000a32a3]                           dc.b $02
[000a32a4]                           dc.b $00
[000a32a5]                           dc.b $08
[000a32a6]                           dc.b $00
[000a32a7]                           dc.b $02
[000a32a8]                           dc.b $00
[000a32a9]                           dc.b $01
_131_COLOR256:
[000a32aa]                           dc.b $00
[000a32ab]                           dc.b $84
[000a32ac]                           dc.w $ffff
[000a32ae]                           dc.w $ffff
[000a32b0]                           dc.b $00
[000a32b1]                           dc.b $18
[000a32b2]                           dc.b $00
[000a32b3]                           dc.b $01
[000a32b4]                           dc.b $00
[000a32b5]                           dc.b $00
[000a32b6] 000a21a0                  dc.l PICCOLOR01
[000a32ba]                           dc.b $00
[000a32bb]                           dc.b $04
[000a32bc]                           dc.b $00
[000a32bd]                           dc.b $08
[000a32be]                           dc.b $00
[000a32bf]                           dc.b $02
[000a32c0]                           dc.b $00
[000a32c1]                           dc.b $01
_132_COLOR256:
[000a32c2]                           dc.b $00
[000a32c3]                           dc.b $85
[000a32c4]                           dc.w $ffff
[000a32c6]                           dc.w $ffff
[000a32c8]                           dc.b $00
[000a32c9]                           dc.b $18
[000a32ca]                           dc.b $00
[000a32cb]                           dc.b $01
[000a32cc]                           dc.b $00
[000a32cd]                           dc.b $00
[000a32ce] 000a21a0                  dc.l PICCOLOR01
[000a32d2]                           dc.b $00
[000a32d3]                           dc.b $06
[000a32d4]                           dc.b $00
[000a32d5]                           dc.b $08
[000a32d6]                           dc.b $00
[000a32d7]                           dc.b $02
[000a32d8]                           dc.b $00
[000a32d9]                           dc.b $01
_133_COLOR256:
[000a32da]                           dc.b $00
[000a32db]                           dc.b $86
[000a32dc]                           dc.w $ffff
[000a32de]                           dc.w $ffff
[000a32e0]                           dc.b $00
[000a32e1]                           dc.b $18
[000a32e2]                           dc.b $00
[000a32e3]                           dc.b $01
[000a32e4]                           dc.b $00
[000a32e5]                           dc.b $00
[000a32e6] 000a21a0                  dc.l PICCOLOR01
[000a32ea]                           dc.b $00
[000a32eb]                           dc.b $08
[000a32ec]                           dc.b $00
[000a32ed]                           dc.b $08
[000a32ee]                           dc.b $00
[000a32ef]                           dc.b $02
[000a32f0]                           dc.b $00
[000a32f1]                           dc.b $01
_134_COLOR256:
[000a32f2]                           dc.b $00
[000a32f3]                           dc.b $87
[000a32f4]                           dc.w $ffff
[000a32f6]                           dc.w $ffff
[000a32f8]                           dc.b $00
[000a32f9]                           dc.b $18
[000a32fa]                           dc.b $00
[000a32fb]                           dc.b $01
[000a32fc]                           dc.b $00
[000a32fd]                           dc.b $00
[000a32fe] 000a21a0                  dc.l PICCOLOR01
[000a3302]                           dc.b $00
[000a3303]                           dc.b $0a
[000a3304]                           dc.b $00
[000a3305]                           dc.b $08
[000a3306]                           dc.b $00
[000a3307]                           dc.b $02
[000a3308]                           dc.b $00
[000a3309]                           dc.b $01
_135_COLOR256:
[000a330a]                           dc.b $00
[000a330b]                           dc.b $88
[000a330c]                           dc.w $ffff
[000a330e]                           dc.w $ffff
[000a3310]                           dc.b $00
[000a3311]                           dc.b $18
[000a3312]                           dc.b $00
[000a3313]                           dc.b $01
[000a3314]                           dc.b $00
[000a3315]                           dc.b $00
[000a3316] 000a21a0                  dc.l PICCOLOR01
[000a331a]                           dc.b $00
[000a331b]                           dc.b $0c
[000a331c]                           dc.b $00
[000a331d]                           dc.b $08
[000a331e]                           dc.b $00
[000a331f]                           dc.b $02
[000a3320]                           dc.b $00
[000a3321]                           dc.b $01
_136_COLOR256:
[000a3322]                           dc.b $00
[000a3323]                           dc.b $89
[000a3324]                           dc.w $ffff
[000a3326]                           dc.w $ffff
[000a3328]                           dc.b $00
[000a3329]                           dc.b $18
[000a332a]                           dc.b $00
[000a332b]                           dc.b $01
[000a332c]                           dc.b $00
[000a332d]                           dc.b $00
[000a332e] 000a21a0                  dc.l PICCOLOR01
[000a3332]                           dc.b $00
[000a3333]                           dc.b $0e
[000a3334]                           dc.b $00
[000a3335]                           dc.b $08
[000a3336]                           dc.b $00
[000a3337]                           dc.b $02
[000a3338]                           dc.b $00
[000a3339]                           dc.b $01
_137_COLOR256:
[000a333a]                           dc.b $00
[000a333b]                           dc.b $8a
[000a333c]                           dc.w $ffff
[000a333e]                           dc.w $ffff
[000a3340]                           dc.b $00
[000a3341]                           dc.b $18
[000a3342]                           dc.b $00
[000a3343]                           dc.b $01
[000a3344]                           dc.b $00
[000a3345]                           dc.b $00
[000a3346] 000a21a0                  dc.l PICCOLOR01
[000a334a]                           dc.b $00
[000a334b]                           dc.b $10
[000a334c]                           dc.b $00
[000a334d]                           dc.b $08
[000a334e]                           dc.b $00
[000a334f]                           dc.b $02
[000a3350]                           dc.b $00
[000a3351]                           dc.b $01
_138_COLOR256:
[000a3352]                           dc.b $00
[000a3353]                           dc.b $8b
[000a3354]                           dc.w $ffff
[000a3356]                           dc.w $ffff
[000a3358]                           dc.b $00
[000a3359]                           dc.b $18
[000a335a]                           dc.b $00
[000a335b]                           dc.b $01
[000a335c]                           dc.b $00
[000a335d]                           dc.b $00
[000a335e] 000a21a0                  dc.l PICCOLOR01
[000a3362]                           dc.b $00
[000a3363]                           dc.b $12
[000a3364]                           dc.b $00
[000a3365]                           dc.b $08
[000a3366]                           dc.b $00
[000a3367]                           dc.b $02
[000a3368]                           dc.b $00
[000a3369]                           dc.b $01
_139_COLOR256:
[000a336a]                           dc.b $00
[000a336b]                           dc.b $8c
[000a336c]                           dc.w $ffff
[000a336e]                           dc.w $ffff
[000a3370]                           dc.b $00
[000a3371]                           dc.b $18
[000a3372]                           dc.b $00
[000a3373]                           dc.b $01
[000a3374]                           dc.b $00
[000a3375]                           dc.b $00
[000a3376] 000a21a0                  dc.l PICCOLOR01
[000a337a]                           dc.b $00
[000a337b]                           dc.b $14
[000a337c]                           dc.b $00
[000a337d]                           dc.b $08
[000a337e]                           dc.b $00
[000a337f]                           dc.b $02
[000a3380]                           dc.b $00
[000a3381]                           dc.b $01
_140_COLOR256:
[000a3382]                           dc.b $00
[000a3383]                           dc.b $8d
[000a3384]                           dc.w $ffff
[000a3386]                           dc.w $ffff
[000a3388]                           dc.b $00
[000a3389]                           dc.b $18
[000a338a]                           dc.b $00
[000a338b]                           dc.b $01
[000a338c]                           dc.b $00
[000a338d]                           dc.b $00
[000a338e] 000a21a0                  dc.l PICCOLOR01
[000a3392]                           dc.b $00
[000a3393]                           dc.b $16
[000a3394]                           dc.b $00
[000a3395]                           dc.b $08
[000a3396]                           dc.b $00
[000a3397]                           dc.b $02
[000a3398]                           dc.b $00
[000a3399]                           dc.b $01
_141_COLOR256:
[000a339a]                           dc.b $00
[000a339b]                           dc.b $8e
[000a339c]                           dc.w $ffff
[000a339e]                           dc.w $ffff
[000a33a0]                           dc.b $00
[000a33a1]                           dc.b $18
[000a33a2]                           dc.b $00
[000a33a3]                           dc.b $01
[000a33a4]                           dc.b $00
[000a33a5]                           dc.b $00
[000a33a6] 000a21a0                  dc.l PICCOLOR01
[000a33aa]                           dc.b $00
[000a33ab]                           dc.b $18
[000a33ac]                           dc.b $00
[000a33ad]                           dc.b $08
[000a33ae]                           dc.b $00
[000a33af]                           dc.b $02
[000a33b0]                           dc.b $00
[000a33b1]                           dc.b $01
_142_COLOR256:
[000a33b2]                           dc.b $00
[000a33b3]                           dc.b $8f
[000a33b4]                           dc.w $ffff
[000a33b6]                           dc.w $ffff
[000a33b8]                           dc.b $00
[000a33b9]                           dc.b $18
[000a33ba]                           dc.b $00
[000a33bb]                           dc.b $01
[000a33bc]                           dc.b $00
[000a33bd]                           dc.b $00
[000a33be] 000a21a0                  dc.l PICCOLOR01
[000a33c2]                           dc.b $00
[000a33c3]                           dc.b $1a
[000a33c4]                           dc.b $00
[000a33c5]                           dc.b $08
[000a33c6]                           dc.b $00
[000a33c7]                           dc.b $02
[000a33c8]                           dc.b $00
[000a33c9]                           dc.b $01
_143_COLOR256:
[000a33ca]                           dc.b $00
[000a33cb]                           dc.b $90
[000a33cc]                           dc.w $ffff
[000a33ce]                           dc.w $ffff
[000a33d0]                           dc.b $00
[000a33d1]                           dc.b $18
[000a33d2]                           dc.b $00
[000a33d3]                           dc.b $01
[000a33d4]                           dc.b $00
[000a33d5]                           dc.b $00
[000a33d6] 000a21a0                  dc.l PICCOLOR01
[000a33da]                           dc.b $00
[000a33db]                           dc.b $1c
[000a33dc]                           dc.b $00
[000a33dd]                           dc.b $08
[000a33de]                           dc.b $00
[000a33df]                           dc.b $02
[000a33e0]                           dc.b $00
[000a33e1]                           dc.b $01
_144_COLOR256:
[000a33e2]                           dc.b $00
[000a33e3]                           dc.b $91
[000a33e4]                           dc.w $ffff
[000a33e6]                           dc.w $ffff
[000a33e8]                           dc.b $00
[000a33e9]                           dc.b $18
[000a33ea]                           dc.b $00
[000a33eb]                           dc.b $01
[000a33ec]                           dc.b $00
[000a33ed]                           dc.b $00
[000a33ee] 000a21a0                  dc.l PICCOLOR01
[000a33f2]                           dc.b $00
[000a33f3]                           dc.b $1e
[000a33f4]                           dc.b $00
[000a33f5]                           dc.b $08
[000a33f6]                           dc.b $00
[000a33f7]                           dc.b $02
[000a33f8]                           dc.b $00
[000a33f9]                           dc.b $01
_145_COLOR256:
[000a33fa]                           dc.b $00
[000a33fb]                           dc.b $92
[000a33fc]                           dc.w $ffff
[000a33fe]                           dc.w $ffff
[000a3400]                           dc.b $00
[000a3401]                           dc.b $18
[000a3402]                           dc.b $00
[000a3403]                           dc.b $01
[000a3404]                           dc.b $00
[000a3405]                           dc.b $00
[000a3406] 000a21a0                  dc.l PICCOLOR01
[000a340a]                           dc.b $00
[000a340b]                           dc.b $00
[000a340c]                           dc.b $00
[000a340d]                           dc.b $09
[000a340e]                           dc.b $00
[000a340f]                           dc.b $02
[000a3410]                           dc.b $00
[000a3411]                           dc.b $01
_146_COLOR256:
[000a3412]                           dc.b $00
[000a3413]                           dc.b $93
[000a3414]                           dc.w $ffff
[000a3416]                           dc.w $ffff
[000a3418]                           dc.b $00
[000a3419]                           dc.b $18
[000a341a]                           dc.b $00
[000a341b]                           dc.b $01
[000a341c]                           dc.b $00
[000a341d]                           dc.b $00
[000a341e] 000a21a0                  dc.l PICCOLOR01
[000a3422]                           dc.b $00
[000a3423]                           dc.b $02
[000a3424]                           dc.b $00
[000a3425]                           dc.b $09
[000a3426]                           dc.b $00
[000a3427]                           dc.b $02
[000a3428]                           dc.b $00
[000a3429]                           dc.b $01
_147_COLOR256:
[000a342a]                           dc.b $00
[000a342b]                           dc.b $94
[000a342c]                           dc.w $ffff
[000a342e]                           dc.w $ffff
[000a3430]                           dc.b $00
[000a3431]                           dc.b $18
[000a3432]                           dc.b $00
[000a3433]                           dc.b $01
[000a3434]                           dc.b $00
[000a3435]                           dc.b $00
[000a3436] 000a21a0                  dc.l PICCOLOR01
[000a343a]                           dc.b $00
[000a343b]                           dc.b $04
[000a343c]                           dc.b $00
[000a343d]                           dc.b $09
[000a343e]                           dc.b $00
[000a343f]                           dc.b $02
[000a3440]                           dc.b $00
[000a3441]                           dc.b $01
_148_COLOR256:
[000a3442]                           dc.b $00
[000a3443]                           dc.b $95
[000a3444]                           dc.w $ffff
[000a3446]                           dc.w $ffff
[000a3448]                           dc.b $00
[000a3449]                           dc.b $18
[000a344a]                           dc.b $00
[000a344b]                           dc.b $01
[000a344c]                           dc.b $00
[000a344d]                           dc.b $00
[000a344e] 000a21a0                  dc.l PICCOLOR01
[000a3452]                           dc.b $00
[000a3453]                           dc.b $06
[000a3454]                           dc.b $00
[000a3455]                           dc.b $09
[000a3456]                           dc.b $00
[000a3457]                           dc.b $02
[000a3458]                           dc.b $00
[000a3459]                           dc.b $01
_149_COLOR256:
[000a345a]                           dc.b $00
[000a345b]                           dc.b $96
[000a345c]                           dc.w $ffff
[000a345e]                           dc.w $ffff
[000a3460]                           dc.b $00
[000a3461]                           dc.b $18
[000a3462]                           dc.b $00
[000a3463]                           dc.b $01
[000a3464]                           dc.b $00
[000a3465]                           dc.b $00
[000a3466] 000a21a0                  dc.l PICCOLOR01
[000a346a]                           dc.b $00
[000a346b]                           dc.b $08
[000a346c]                           dc.b $00
[000a346d]                           dc.b $09
[000a346e]                           dc.b $00
[000a346f]                           dc.b $02
[000a3470]                           dc.b $00
[000a3471]                           dc.b $01
_150_COLOR256:
[000a3472]                           dc.b $00
[000a3473]                           dc.b $97
[000a3474]                           dc.w $ffff
[000a3476]                           dc.w $ffff
[000a3478]                           dc.b $00
[000a3479]                           dc.b $18
[000a347a]                           dc.b $00
[000a347b]                           dc.b $01
[000a347c]                           dc.b $00
[000a347d]                           dc.b $00
[000a347e] 000a21a0                  dc.l PICCOLOR01
[000a3482]                           dc.b $00
[000a3483]                           dc.b $0a
[000a3484]                           dc.b $00
[000a3485]                           dc.b $09
[000a3486]                           dc.b $00
[000a3487]                           dc.b $02
[000a3488]                           dc.b $00
[000a3489]                           dc.b $01
_151_COLOR256:
[000a348a]                           dc.b $00
[000a348b]                           dc.b $98
[000a348c]                           dc.w $ffff
[000a348e]                           dc.w $ffff
[000a3490]                           dc.b $00
[000a3491]                           dc.b $18
[000a3492]                           dc.b $00
[000a3493]                           dc.b $01
[000a3494]                           dc.b $00
[000a3495]                           dc.b $00
[000a3496] 000a21a0                  dc.l PICCOLOR01
[000a349a]                           dc.b $00
[000a349b]                           dc.b $0c
[000a349c]                           dc.b $00
[000a349d]                           dc.b $09
[000a349e]                           dc.b $00
[000a349f]                           dc.b $02
[000a34a0]                           dc.b $00
[000a34a1]                           dc.b $01
_152_COLOR256:
[000a34a2]                           dc.b $00
[000a34a3]                           dc.b $99
[000a34a4]                           dc.w $ffff
[000a34a6]                           dc.w $ffff
[000a34a8]                           dc.b $00
[000a34a9]                           dc.b $18
[000a34aa]                           dc.b $00
[000a34ab]                           dc.b $01
[000a34ac]                           dc.b $00
[000a34ad]                           dc.b $00
[000a34ae] 000a21a0                  dc.l PICCOLOR01
[000a34b2]                           dc.b $00
[000a34b3]                           dc.b $0e
[000a34b4]                           dc.b $00
[000a34b5]                           dc.b $09
[000a34b6]                           dc.b $00
[000a34b7]                           dc.b $02
[000a34b8]                           dc.b $00
[000a34b9]                           dc.b $01
_153_COLOR256:
[000a34ba]                           dc.b $00
[000a34bb]                           dc.b $9a
[000a34bc]                           dc.w $ffff
[000a34be]                           dc.w $ffff
[000a34c0]                           dc.b $00
[000a34c1]                           dc.b $18
[000a34c2]                           dc.b $00
[000a34c3]                           dc.b $01
[000a34c4]                           dc.b $00
[000a34c5]                           dc.b $00
[000a34c6] 000a21a0                  dc.l PICCOLOR01
[000a34ca]                           dc.b $00
[000a34cb]                           dc.b $10
[000a34cc]                           dc.b $00
[000a34cd]                           dc.b $09
[000a34ce]                           dc.b $00
[000a34cf]                           dc.b $02
[000a34d0]                           dc.b $00
[000a34d1]                           dc.b $01
_154_COLOR256:
[000a34d2]                           dc.b $00
[000a34d3]                           dc.b $9b
[000a34d4]                           dc.w $ffff
[000a34d6]                           dc.w $ffff
[000a34d8]                           dc.b $00
[000a34d9]                           dc.b $18
[000a34da]                           dc.b $00
[000a34db]                           dc.b $01
[000a34dc]                           dc.b $00
[000a34dd]                           dc.b $00
[000a34de] 000a21a0                  dc.l PICCOLOR01
[000a34e2]                           dc.b $00
[000a34e3]                           dc.b $12
[000a34e4]                           dc.b $00
[000a34e5]                           dc.b $09
[000a34e6]                           dc.b $00
[000a34e7]                           dc.b $02
[000a34e8]                           dc.b $00
[000a34e9]                           dc.b $01
_155_COLOR256:
[000a34ea]                           dc.b $00
[000a34eb]                           dc.b $9c
[000a34ec]                           dc.w $ffff
[000a34ee]                           dc.w $ffff
[000a34f0]                           dc.b $00
[000a34f1]                           dc.b $18
[000a34f2]                           dc.b $00
[000a34f3]                           dc.b $01
[000a34f4]                           dc.b $00
[000a34f5]                           dc.b $00
[000a34f6] 000a21a0                  dc.l PICCOLOR01
[000a34fa]                           dc.b $00
[000a34fb]                           dc.b $14
[000a34fc]                           dc.b $00
[000a34fd]                           dc.b $09
[000a34fe]                           dc.b $00
[000a34ff]                           dc.b $02
[000a3500]                           dc.b $00
[000a3501]                           dc.b $01
_156_COLOR256:
[000a3502]                           dc.b $00
[000a3503]                           dc.b $9d
[000a3504]                           dc.w $ffff
[000a3506]                           dc.w $ffff
[000a3508]                           dc.b $00
[000a3509]                           dc.b $18
[000a350a]                           dc.b $00
[000a350b]                           dc.b $01
[000a350c]                           dc.b $00
[000a350d]                           dc.b $00
[000a350e] 000a21a0                  dc.l PICCOLOR01
[000a3512]                           dc.b $00
[000a3513]                           dc.b $16
[000a3514]                           dc.b $00
[000a3515]                           dc.b $09
[000a3516]                           dc.b $00
[000a3517]                           dc.b $02
[000a3518]                           dc.b $00
[000a3519]                           dc.b $01
_157_COLOR256:
[000a351a]                           dc.b $00
[000a351b]                           dc.b $9e
[000a351c]                           dc.w $ffff
[000a351e]                           dc.w $ffff
[000a3520]                           dc.b $00
[000a3521]                           dc.b $18
[000a3522]                           dc.b $00
[000a3523]                           dc.b $01
[000a3524]                           dc.b $00
[000a3525]                           dc.b $00
[000a3526] 000a21a0                  dc.l PICCOLOR01
[000a352a]                           dc.b $00
[000a352b]                           dc.b $18
[000a352c]                           dc.b $00
[000a352d]                           dc.b $09
[000a352e]                           dc.b $00
[000a352f]                           dc.b $02
[000a3530]                           dc.b $00
[000a3531]                           dc.b $01
_158_COLOR256:
[000a3532]                           dc.b $00
[000a3533]                           dc.b $9f
[000a3534]                           dc.w $ffff
[000a3536]                           dc.w $ffff
[000a3538]                           dc.b $00
[000a3539]                           dc.b $18
[000a353a]                           dc.b $00
[000a353b]                           dc.b $01
[000a353c]                           dc.b $00
[000a353d]                           dc.b $00
[000a353e] 000a21a0                  dc.l PICCOLOR01
[000a3542]                           dc.b $00
[000a3543]                           dc.b $1a
[000a3544]                           dc.b $00
[000a3545]                           dc.b $09
[000a3546]                           dc.b $00
[000a3547]                           dc.b $02
[000a3548]                           dc.b $00
[000a3549]                           dc.b $01
_159_COLOR256:
[000a354a]                           dc.b $00
[000a354b]                           dc.b $a0
[000a354c]                           dc.w $ffff
[000a354e]                           dc.w $ffff
[000a3550]                           dc.b $00
[000a3551]                           dc.b $18
[000a3552]                           dc.b $00
[000a3553]                           dc.b $01
[000a3554]                           dc.b $00
[000a3555]                           dc.b $00
[000a3556] 000a21a0                  dc.l PICCOLOR01
[000a355a]                           dc.b $00
[000a355b]                           dc.b $1c
[000a355c]                           dc.b $00
[000a355d]                           dc.b $09
[000a355e]                           dc.b $00
[000a355f]                           dc.b $02
[000a3560]                           dc.b $00
[000a3561]                           dc.b $01
_160_COLOR256:
[000a3562]                           dc.b $00
[000a3563]                           dc.b $a1
[000a3564]                           dc.w $ffff
[000a3566]                           dc.w $ffff
[000a3568]                           dc.b $00
[000a3569]                           dc.b $18
[000a356a]                           dc.b $00
[000a356b]                           dc.b $01
[000a356c]                           dc.b $00
[000a356d]                           dc.b $00
[000a356e] 000a21a0                  dc.l PICCOLOR01
[000a3572]                           dc.b $00
[000a3573]                           dc.b $1e
[000a3574]                           dc.b $00
[000a3575]                           dc.b $09
[000a3576]                           dc.b $00
[000a3577]                           dc.b $02
[000a3578]                           dc.b $00
[000a3579]                           dc.b $01
_161_COLOR256:
[000a357a]                           dc.b $00
[000a357b]                           dc.b $a2
[000a357c]                           dc.w $ffff
[000a357e]                           dc.w $ffff
[000a3580]                           dc.b $00
[000a3581]                           dc.b $18
[000a3582]                           dc.b $00
[000a3583]                           dc.b $01
[000a3584]                           dc.b $00
[000a3585]                           dc.b $00
[000a3586] 000a21a0                  dc.l PICCOLOR01
[000a358a]                           dc.b $00
[000a358b]                           dc.b $00
[000a358c]                           dc.b $00
[000a358d]                           dc.b $0a
[000a358e]                           dc.b $00
[000a358f]                           dc.b $02
[000a3590]                           dc.b $00
[000a3591]                           dc.b $01
_162_COLOR256:
[000a3592]                           dc.b $00
[000a3593]                           dc.b $a3
[000a3594]                           dc.w $ffff
[000a3596]                           dc.w $ffff
[000a3598]                           dc.b $00
[000a3599]                           dc.b $18
[000a359a]                           dc.b $00
[000a359b]                           dc.b $01
[000a359c]                           dc.b $00
[000a359d]                           dc.b $00
[000a359e] 000a21a0                  dc.l PICCOLOR01
[000a35a2]                           dc.b $00
[000a35a3]                           dc.b $02
[000a35a4]                           dc.b $00
[000a35a5]                           dc.b $0a
[000a35a6]                           dc.b $00
[000a35a7]                           dc.b $02
[000a35a8]                           dc.b $00
[000a35a9]                           dc.b $01
_163_COLOR256:
[000a35aa]                           dc.b $00
[000a35ab]                           dc.b $a4
[000a35ac]                           dc.w $ffff
[000a35ae]                           dc.w $ffff
[000a35b0]                           dc.b $00
[000a35b1]                           dc.b $18
[000a35b2]                           dc.b $00
[000a35b3]                           dc.b $01
[000a35b4]                           dc.b $00
[000a35b5]                           dc.b $00
[000a35b6] 000a21a0                  dc.l PICCOLOR01
[000a35ba]                           dc.b $00
[000a35bb]                           dc.b $04
[000a35bc]                           dc.b $00
[000a35bd]                           dc.b $0a
[000a35be]                           dc.b $00
[000a35bf]                           dc.b $02
[000a35c0]                           dc.b $00
[000a35c1]                           dc.b $01
_164_COLOR256:
[000a35c2]                           dc.b $00
[000a35c3]                           dc.b $a5
[000a35c4]                           dc.w $ffff
[000a35c6]                           dc.w $ffff
[000a35c8]                           dc.b $00
[000a35c9]                           dc.b $18
[000a35ca]                           dc.b $00
[000a35cb]                           dc.b $01
[000a35cc]                           dc.b $00
[000a35cd]                           dc.b $00
[000a35ce] 000a21a0                  dc.l PICCOLOR01
[000a35d2]                           dc.b $00
[000a35d3]                           dc.b $06
[000a35d4]                           dc.b $00
[000a35d5]                           dc.b $0a
[000a35d6]                           dc.b $00
[000a35d7]                           dc.b $02
[000a35d8]                           dc.b $00
[000a35d9]                           dc.b $01
_165_COLOR256:
[000a35da]                           dc.b $00
[000a35db]                           dc.b $a6
[000a35dc]                           dc.w $ffff
[000a35de]                           dc.w $ffff
[000a35e0]                           dc.b $00
[000a35e1]                           dc.b $18
[000a35e2]                           dc.b $00
[000a35e3]                           dc.b $01
[000a35e4]                           dc.b $00
[000a35e5]                           dc.b $00
[000a35e6] 000a21a0                  dc.l PICCOLOR01
[000a35ea]                           dc.b $00
[000a35eb]                           dc.b $08
[000a35ec]                           dc.b $00
[000a35ed]                           dc.b $0a
[000a35ee]                           dc.b $00
[000a35ef]                           dc.b $02
[000a35f0]                           dc.b $00
[000a35f1]                           dc.b $01
_166_COLOR256:
[000a35f2]                           dc.b $00
[000a35f3]                           dc.b $a7
[000a35f4]                           dc.w $ffff
[000a35f6]                           dc.w $ffff
[000a35f8]                           dc.b $00
[000a35f9]                           dc.b $18
[000a35fa]                           dc.b $00
[000a35fb]                           dc.b $01
[000a35fc]                           dc.b $00
[000a35fd]                           dc.b $00
[000a35fe] 000a21a0                  dc.l PICCOLOR01
[000a3602]                           dc.b $00
[000a3603]                           dc.b $0a
[000a3604]                           dc.b $00
[000a3605]                           dc.b $0a
[000a3606]                           dc.b $00
[000a3607]                           dc.b $02
[000a3608]                           dc.b $00
[000a3609]                           dc.b $01
_167_COLOR256:
[000a360a]                           dc.b $00
[000a360b]                           dc.b $a8
[000a360c]                           dc.w $ffff
[000a360e]                           dc.w $ffff
[000a3610]                           dc.b $00
[000a3611]                           dc.b $18
[000a3612]                           dc.b $00
[000a3613]                           dc.b $01
[000a3614]                           dc.b $00
[000a3615]                           dc.b $00
[000a3616] 000a21a0                  dc.l PICCOLOR01
[000a361a]                           dc.b $00
[000a361b]                           dc.b $0c
[000a361c]                           dc.b $00
[000a361d]                           dc.b $0a
[000a361e]                           dc.b $00
[000a361f]                           dc.b $02
[000a3620]                           dc.b $00
[000a3621]                           dc.b $01
_168_COLOR256:
[000a3622]                           dc.b $00
[000a3623]                           dc.b $a9
[000a3624]                           dc.w $ffff
[000a3626]                           dc.w $ffff
[000a3628]                           dc.b $00
[000a3629]                           dc.b $18
[000a362a]                           dc.b $00
[000a362b]                           dc.b $01
[000a362c]                           dc.b $00
[000a362d]                           dc.b $00
[000a362e] 000a21a0                  dc.l PICCOLOR01
[000a3632]                           dc.b $00
[000a3633]                           dc.b $0e
[000a3634]                           dc.b $00
[000a3635]                           dc.b $0a
[000a3636]                           dc.b $00
[000a3637]                           dc.b $02
[000a3638]                           dc.b $00
[000a3639]                           dc.b $01
_169_COLOR256:
[000a363a]                           dc.b $00
[000a363b]                           dc.b $aa
[000a363c]                           dc.w $ffff
[000a363e]                           dc.w $ffff
[000a3640]                           dc.b $00
[000a3641]                           dc.b $18
[000a3642]                           dc.b $00
[000a3643]                           dc.b $01
[000a3644]                           dc.b $00
[000a3645]                           dc.b $00
[000a3646] 000a21a0                  dc.l PICCOLOR01
[000a364a]                           dc.b $00
[000a364b]                           dc.b $10
[000a364c]                           dc.b $00
[000a364d]                           dc.b $0a
[000a364e]                           dc.b $00
[000a364f]                           dc.b $02
[000a3650]                           dc.b $00
[000a3651]                           dc.b $01
_170_COLOR256:
[000a3652]                           dc.b $00
[000a3653]                           dc.b $ab
[000a3654]                           dc.w $ffff
[000a3656]                           dc.w $ffff
[000a3658]                           dc.b $00
[000a3659]                           dc.b $18
[000a365a]                           dc.b $00
[000a365b]                           dc.b $01
[000a365c]                           dc.b $00
[000a365d]                           dc.b $00
[000a365e] 000a21a0                  dc.l PICCOLOR01
[000a3662]                           dc.b $00
[000a3663]                           dc.b $12
[000a3664]                           dc.b $00
[000a3665]                           dc.b $0a
[000a3666]                           dc.b $00
[000a3667]                           dc.b $02
[000a3668]                           dc.b $00
[000a3669]                           dc.b $01
_171_COLOR256:
[000a366a]                           dc.b $00
[000a366b]                           dc.b $ac
[000a366c]                           dc.w $ffff
[000a366e]                           dc.w $ffff
[000a3670]                           dc.b $00
[000a3671]                           dc.b $18
[000a3672]                           dc.b $00
[000a3673]                           dc.b $01
[000a3674]                           dc.b $00
[000a3675]                           dc.b $00
[000a3676] 000a21a0                  dc.l PICCOLOR01
[000a367a]                           dc.b $00
[000a367b]                           dc.b $14
[000a367c]                           dc.b $00
[000a367d]                           dc.b $0a
[000a367e]                           dc.b $00
[000a367f]                           dc.b $02
[000a3680]                           dc.b $00
[000a3681]                           dc.b $01
_172_COLOR256:
[000a3682]                           dc.b $00
[000a3683]                           dc.b $ad
[000a3684]                           dc.w $ffff
[000a3686]                           dc.w $ffff
[000a3688]                           dc.b $00
[000a3689]                           dc.b $18
[000a368a]                           dc.b $00
[000a368b]                           dc.b $01
[000a368c]                           dc.b $00
[000a368d]                           dc.b $00
[000a368e] 000a21a0                  dc.l PICCOLOR01
[000a3692]                           dc.b $00
[000a3693]                           dc.b $16
[000a3694]                           dc.b $00
[000a3695]                           dc.b $0a
[000a3696]                           dc.b $00
[000a3697]                           dc.b $02
[000a3698]                           dc.b $00
[000a3699]                           dc.b $01
_173_COLOR256:
[000a369a]                           dc.b $00
[000a369b]                           dc.b $ae
[000a369c]                           dc.w $ffff
[000a369e]                           dc.w $ffff
[000a36a0]                           dc.b $00
[000a36a1]                           dc.b $18
[000a36a2]                           dc.b $00
[000a36a3]                           dc.b $01
[000a36a4]                           dc.b $00
[000a36a5]                           dc.b $00
[000a36a6] 000a21a0                  dc.l PICCOLOR01
[000a36aa]                           dc.b $00
[000a36ab]                           dc.b $18
[000a36ac]                           dc.b $00
[000a36ad]                           dc.b $0a
[000a36ae]                           dc.b $00
[000a36af]                           dc.b $02
[000a36b0]                           dc.b $00
[000a36b1]                           dc.b $01
_174_COLOR256:
[000a36b2]                           dc.b $00
[000a36b3]                           dc.b $af
[000a36b4]                           dc.w $ffff
[000a36b6]                           dc.w $ffff
[000a36b8]                           dc.b $00
[000a36b9]                           dc.b $18
[000a36ba]                           dc.b $00
[000a36bb]                           dc.b $01
[000a36bc]                           dc.b $00
[000a36bd]                           dc.b $00
[000a36be] 000a21a0                  dc.l PICCOLOR01
[000a36c2]                           dc.b $00
[000a36c3]                           dc.b $1a
[000a36c4]                           dc.b $00
[000a36c5]                           dc.b $0a
[000a36c6]                           dc.b $00
[000a36c7]                           dc.b $02
[000a36c8]                           dc.b $00
[000a36c9]                           dc.b $01
_175_COLOR256:
[000a36ca]                           dc.b $00
[000a36cb]                           dc.b $b0
[000a36cc]                           dc.w $ffff
[000a36ce]                           dc.w $ffff
[000a36d0]                           dc.b $00
[000a36d1]                           dc.b $18
[000a36d2]                           dc.b $00
[000a36d3]                           dc.b $01
[000a36d4]                           dc.b $00
[000a36d5]                           dc.b $00
[000a36d6] 000a21a0                  dc.l PICCOLOR01
[000a36da]                           dc.b $00
[000a36db]                           dc.b $1c
[000a36dc]                           dc.b $00
[000a36dd]                           dc.b $0a
[000a36de]                           dc.b $00
[000a36df]                           dc.b $02
[000a36e0]                           dc.b $00
[000a36e1]                           dc.b $01
_176_COLOR256:
[000a36e2]                           dc.b $00
[000a36e3]                           dc.b $b1
[000a36e4]                           dc.w $ffff
[000a36e6]                           dc.w $ffff
[000a36e8]                           dc.b $00
[000a36e9]                           dc.b $18
[000a36ea]                           dc.b $00
[000a36eb]                           dc.b $01
[000a36ec]                           dc.b $00
[000a36ed]                           dc.b $00
[000a36ee] 000a21a0                  dc.l PICCOLOR01
[000a36f2]                           dc.b $00
[000a36f3]                           dc.b $1e
[000a36f4]                           dc.b $00
[000a36f5]                           dc.b $0a
[000a36f6]                           dc.b $00
[000a36f7]                           dc.b $02
[000a36f8]                           dc.b $00
[000a36f9]                           dc.b $01
_177_COLOR256:
[000a36fa]                           dc.b $00
[000a36fb]                           dc.b $b2
[000a36fc]                           dc.w $ffff
[000a36fe]                           dc.w $ffff
[000a3700]                           dc.b $00
[000a3701]                           dc.b $18
[000a3702]                           dc.b $00
[000a3703]                           dc.b $01
[000a3704]                           dc.b $00
[000a3705]                           dc.b $00
[000a3706] 000a21a0                  dc.l PICCOLOR01
[000a370a]                           dc.b $00
[000a370b]                           dc.b $00
[000a370c]                           dc.b $00
[000a370d]                           dc.b $0b
[000a370e]                           dc.b $00
[000a370f]                           dc.b $02
[000a3710]                           dc.b $00
[000a3711]                           dc.b $01
_178_COLOR256:
[000a3712]                           dc.b $00
[000a3713]                           dc.b $b3
[000a3714]                           dc.w $ffff
[000a3716]                           dc.w $ffff
[000a3718]                           dc.b $00
[000a3719]                           dc.b $18
[000a371a]                           dc.b $00
[000a371b]                           dc.b $01
[000a371c]                           dc.b $00
[000a371d]                           dc.b $00
[000a371e] 000a21a0                  dc.l PICCOLOR01
[000a3722]                           dc.b $00
[000a3723]                           dc.b $02
[000a3724]                           dc.b $00
[000a3725]                           dc.b $0b
[000a3726]                           dc.b $00
[000a3727]                           dc.b $02
[000a3728]                           dc.b $00
[000a3729]                           dc.b $01
_179_COLOR256:
[000a372a]                           dc.b $00
[000a372b]                           dc.b $b4
[000a372c]                           dc.w $ffff
[000a372e]                           dc.w $ffff
[000a3730]                           dc.b $00
[000a3731]                           dc.b $18
[000a3732]                           dc.b $00
[000a3733]                           dc.b $01
[000a3734]                           dc.b $00
[000a3735]                           dc.b $00
[000a3736] 000a21a0                  dc.l PICCOLOR01
[000a373a]                           dc.b $00
[000a373b]                           dc.b $04
[000a373c]                           dc.b $00
[000a373d]                           dc.b $0b
[000a373e]                           dc.b $00
[000a373f]                           dc.b $02
[000a3740]                           dc.b $00
[000a3741]                           dc.b $01
_180_COLOR256:
[000a3742]                           dc.b $00
[000a3743]                           dc.b $b5
[000a3744]                           dc.w $ffff
[000a3746]                           dc.w $ffff
[000a3748]                           dc.b $00
[000a3749]                           dc.b $18
[000a374a]                           dc.b $00
[000a374b]                           dc.b $01
[000a374c]                           dc.b $00
[000a374d]                           dc.b $00
[000a374e] 000a21a0                  dc.l PICCOLOR01
[000a3752]                           dc.b $00
[000a3753]                           dc.b $06
[000a3754]                           dc.b $00
[000a3755]                           dc.b $0b
[000a3756]                           dc.b $00
[000a3757]                           dc.b $02
[000a3758]                           dc.b $00
[000a3759]                           dc.b $01
_181_COLOR256:
[000a375a]                           dc.b $00
[000a375b]                           dc.b $b6
[000a375c]                           dc.w $ffff
[000a375e]                           dc.w $ffff
[000a3760]                           dc.b $00
[000a3761]                           dc.b $18
[000a3762]                           dc.b $00
[000a3763]                           dc.b $01
[000a3764]                           dc.b $00
[000a3765]                           dc.b $00
[000a3766] 000a21a0                  dc.l PICCOLOR01
[000a376a]                           dc.b $00
[000a376b]                           dc.b $08
[000a376c]                           dc.b $00
[000a376d]                           dc.b $0b
[000a376e]                           dc.b $00
[000a376f]                           dc.b $02
[000a3770]                           dc.b $00
[000a3771]                           dc.b $01
_182_COLOR256:
[000a3772]                           dc.b $00
[000a3773]                           dc.b $b7
[000a3774]                           dc.w $ffff
[000a3776]                           dc.w $ffff
[000a3778]                           dc.b $00
[000a3779]                           dc.b $18
[000a377a]                           dc.b $00
[000a377b]                           dc.b $01
[000a377c]                           dc.b $00
[000a377d]                           dc.b $00
[000a377e] 000a21a0                  dc.l PICCOLOR01
[000a3782]                           dc.b $00
[000a3783]                           dc.b $0a
[000a3784]                           dc.b $00
[000a3785]                           dc.b $0b
[000a3786]                           dc.b $00
[000a3787]                           dc.b $02
[000a3788]                           dc.b $00
[000a3789]                           dc.b $01
_183_COLOR256:
[000a378a]                           dc.b $00
[000a378b]                           dc.b $b8
[000a378c]                           dc.w $ffff
[000a378e]                           dc.w $ffff
[000a3790]                           dc.b $00
[000a3791]                           dc.b $18
[000a3792]                           dc.b $00
[000a3793]                           dc.b $01
[000a3794]                           dc.b $00
[000a3795]                           dc.b $00
[000a3796] 000a21a0                  dc.l PICCOLOR01
[000a379a]                           dc.b $00
[000a379b]                           dc.b $0c
[000a379c]                           dc.b $00
[000a379d]                           dc.b $0b
[000a379e]                           dc.b $00
[000a379f]                           dc.b $02
[000a37a0]                           dc.b $00
[000a37a1]                           dc.b $01
_184_COLOR256:
[000a37a2]                           dc.b $00
[000a37a3]                           dc.b $b9
[000a37a4]                           dc.w $ffff
[000a37a6]                           dc.w $ffff
[000a37a8]                           dc.b $00
[000a37a9]                           dc.b $18
[000a37aa]                           dc.b $00
[000a37ab]                           dc.b $01
[000a37ac]                           dc.b $00
[000a37ad]                           dc.b $00
[000a37ae] 000a21a0                  dc.l PICCOLOR01
[000a37b2]                           dc.b $00
[000a37b3]                           dc.b $0e
[000a37b4]                           dc.b $00
[000a37b5]                           dc.b $0b
[000a37b6]                           dc.b $00
[000a37b7]                           dc.b $02
[000a37b8]                           dc.b $00
[000a37b9]                           dc.b $01
_185_COLOR256:
[000a37ba]                           dc.b $00
[000a37bb]                           dc.b $ba
[000a37bc]                           dc.w $ffff
[000a37be]                           dc.w $ffff
[000a37c0]                           dc.b $00
[000a37c1]                           dc.b $18
[000a37c2]                           dc.b $00
[000a37c3]                           dc.b $01
[000a37c4]                           dc.b $00
[000a37c5]                           dc.b $00
[000a37c6] 000a21a0                  dc.l PICCOLOR01
[000a37ca]                           dc.b $00
[000a37cb]                           dc.b $10
[000a37cc]                           dc.b $00
[000a37cd]                           dc.b $0b
[000a37ce]                           dc.b $00
[000a37cf]                           dc.b $02
[000a37d0]                           dc.b $00
[000a37d1]                           dc.b $01
_186_COLOR256:
[000a37d2]                           dc.b $00
[000a37d3]                           dc.b $bb
[000a37d4]                           dc.w $ffff
[000a37d6]                           dc.w $ffff
[000a37d8]                           dc.b $00
[000a37d9]                           dc.b $18
[000a37da]                           dc.b $00
[000a37db]                           dc.b $01
[000a37dc]                           dc.b $00
[000a37dd]                           dc.b $00
[000a37de] 000a21a0                  dc.l PICCOLOR01
[000a37e2]                           dc.b $00
[000a37e3]                           dc.b $12
[000a37e4]                           dc.b $00
[000a37e5]                           dc.b $0b
[000a37e6]                           dc.b $00
[000a37e7]                           dc.b $02
[000a37e8]                           dc.b $00
[000a37e9]                           dc.b $01
_187_COLOR256:
[000a37ea]                           dc.b $00
[000a37eb]                           dc.b $bc
[000a37ec]                           dc.w $ffff
[000a37ee]                           dc.w $ffff
[000a37f0]                           dc.b $00
[000a37f1]                           dc.b $18
[000a37f2]                           dc.b $00
[000a37f3]                           dc.b $01
[000a37f4]                           dc.b $00
[000a37f5]                           dc.b $00
[000a37f6] 000a21a0                  dc.l PICCOLOR01
[000a37fa]                           dc.b $00
[000a37fb]                           dc.b $14
[000a37fc]                           dc.b $00
[000a37fd]                           dc.b $0b
[000a37fe]                           dc.b $00
[000a37ff]                           dc.b $02
[000a3800]                           dc.b $00
[000a3801]                           dc.b $01
_188_COLOR256:
[000a3802]                           dc.b $00
[000a3803]                           dc.b $bd
[000a3804]                           dc.w $ffff
[000a3806]                           dc.w $ffff
[000a3808]                           dc.b $00
[000a3809]                           dc.b $18
[000a380a]                           dc.b $00
[000a380b]                           dc.b $01
[000a380c]                           dc.b $00
[000a380d]                           dc.b $00
[000a380e] 000a21a0                  dc.l PICCOLOR01
[000a3812]                           dc.b $00
[000a3813]                           dc.b $16
[000a3814]                           dc.b $00
[000a3815]                           dc.b $0b
[000a3816]                           dc.b $00
[000a3817]                           dc.b $02
[000a3818]                           dc.b $00
[000a3819]                           dc.b $01
_189_COLOR256:
[000a381a]                           dc.b $00
[000a381b]                           dc.b $be
[000a381c]                           dc.w $ffff
[000a381e]                           dc.w $ffff
[000a3820]                           dc.b $00
[000a3821]                           dc.b $18
[000a3822]                           dc.b $00
[000a3823]                           dc.b $01
[000a3824]                           dc.b $00
[000a3825]                           dc.b $00
[000a3826] 000a21a0                  dc.l PICCOLOR01
[000a382a]                           dc.b $00
[000a382b]                           dc.b $18
[000a382c]                           dc.b $00
[000a382d]                           dc.b $0b
[000a382e]                           dc.b $00
[000a382f]                           dc.b $02
[000a3830]                           dc.b $00
[000a3831]                           dc.b $01
_190_COLOR256:
[000a3832]                           dc.b $00
[000a3833]                           dc.b $bf
[000a3834]                           dc.w $ffff
[000a3836]                           dc.w $ffff
[000a3838]                           dc.b $00
[000a3839]                           dc.b $18
[000a383a]                           dc.b $00
[000a383b]                           dc.b $01
[000a383c]                           dc.b $00
[000a383d]                           dc.b $00
[000a383e] 000a21a0                  dc.l PICCOLOR01
[000a3842]                           dc.b $00
[000a3843]                           dc.b $1a
[000a3844]                           dc.b $00
[000a3845]                           dc.b $0b
[000a3846]                           dc.b $00
[000a3847]                           dc.b $02
[000a3848]                           dc.b $00
[000a3849]                           dc.b $01
_191_COLOR256:
[000a384a]                           dc.b $00
[000a384b]                           dc.b $c0
[000a384c]                           dc.w $ffff
[000a384e]                           dc.w $ffff
[000a3850]                           dc.b $00
[000a3851]                           dc.b $18
[000a3852]                           dc.b $00
[000a3853]                           dc.b $01
[000a3854]                           dc.b $00
[000a3855]                           dc.b $00
[000a3856] 000a21a0                  dc.l PICCOLOR01
[000a385a]                           dc.b $00
[000a385b]                           dc.b $1c
[000a385c]                           dc.b $00
[000a385d]                           dc.b $0b
[000a385e]                           dc.b $00
[000a385f]                           dc.b $02
[000a3860]                           dc.b $00
[000a3861]                           dc.b $01
_192_COLOR256:
[000a3862]                           dc.b $00
[000a3863]                           dc.b $c1
[000a3864]                           dc.w $ffff
[000a3866]                           dc.w $ffff
[000a3868]                           dc.b $00
[000a3869]                           dc.b $18
[000a386a]                           dc.b $00
[000a386b]                           dc.b $01
[000a386c]                           dc.b $00
[000a386d]                           dc.b $00
[000a386e] 000a21a0                  dc.l PICCOLOR01
[000a3872]                           dc.b $00
[000a3873]                           dc.b $1e
[000a3874]                           dc.b $00
[000a3875]                           dc.b $0b
[000a3876]                           dc.b $00
[000a3877]                           dc.b $02
[000a3878]                           dc.b $00
[000a3879]                           dc.b $01
_193_COLOR256:
[000a387a]                           dc.b $00
[000a387b]                           dc.b $c2
[000a387c]                           dc.w $ffff
[000a387e]                           dc.w $ffff
[000a3880]                           dc.b $00
[000a3881]                           dc.b $18
[000a3882]                           dc.b $00
[000a3883]                           dc.b $01
[000a3884]                           dc.b $00
[000a3885]                           dc.b $00
[000a3886] 000a21a0                  dc.l PICCOLOR01
[000a388a]                           dc.b $00
[000a388b]                           dc.b $00
[000a388c]                           dc.b $00
[000a388d]                           dc.b $0c
[000a388e]                           dc.b $00
[000a388f]                           dc.b $02
[000a3890]                           dc.b $00
[000a3891]                           dc.b $01
_194_COLOR256:
[000a3892]                           dc.b $00
[000a3893]                           dc.b $c3
[000a3894]                           dc.w $ffff
[000a3896]                           dc.w $ffff
[000a3898]                           dc.b $00
[000a3899]                           dc.b $18
[000a389a]                           dc.b $00
[000a389b]                           dc.b $01
[000a389c]                           dc.b $00
[000a389d]                           dc.b $00
[000a389e] 000a21a0                  dc.l PICCOLOR01
[000a38a2]                           dc.b $00
[000a38a3]                           dc.b $02
[000a38a4]                           dc.b $00
[000a38a5]                           dc.b $0c
[000a38a6]                           dc.b $00
[000a38a7]                           dc.b $02
[000a38a8]                           dc.b $00
[000a38a9]                           dc.b $01
_195_COLOR256:
[000a38aa]                           dc.b $00
[000a38ab]                           dc.b $c4
[000a38ac]                           dc.w $ffff
[000a38ae]                           dc.w $ffff
[000a38b0]                           dc.b $00
[000a38b1]                           dc.b $18
[000a38b2]                           dc.b $00
[000a38b3]                           dc.b $01
[000a38b4]                           dc.b $00
[000a38b5]                           dc.b $00
[000a38b6] 000a21a0                  dc.l PICCOLOR01
[000a38ba]                           dc.b $00
[000a38bb]                           dc.b $04
[000a38bc]                           dc.b $00
[000a38bd]                           dc.b $0c
[000a38be]                           dc.b $00
[000a38bf]                           dc.b $02
[000a38c0]                           dc.b $00
[000a38c1]                           dc.b $01
_196_COLOR256:
[000a38c2]                           dc.b $00
[000a38c3]                           dc.b $c5
[000a38c4]                           dc.w $ffff
[000a38c6]                           dc.w $ffff
[000a38c8]                           dc.b $00
[000a38c9]                           dc.b $18
[000a38ca]                           dc.b $00
[000a38cb]                           dc.b $01
[000a38cc]                           dc.b $00
[000a38cd]                           dc.b $00
[000a38ce] 000a21a0                  dc.l PICCOLOR01
[000a38d2]                           dc.b $00
[000a38d3]                           dc.b $06
[000a38d4]                           dc.b $00
[000a38d5]                           dc.b $0c
[000a38d6]                           dc.b $00
[000a38d7]                           dc.b $02
[000a38d8]                           dc.b $00
[000a38d9]                           dc.b $01
_197_COLOR256:
[000a38da]                           dc.b $00
[000a38db]                           dc.b $c6
[000a38dc]                           dc.w $ffff
[000a38de]                           dc.w $ffff
[000a38e0]                           dc.b $00
[000a38e1]                           dc.b $18
[000a38e2]                           dc.b $00
[000a38e3]                           dc.b $01
[000a38e4]                           dc.b $00
[000a38e5]                           dc.b $00
[000a38e6] 000a21a0                  dc.l PICCOLOR01
[000a38ea]                           dc.b $00
[000a38eb]                           dc.b $08
[000a38ec]                           dc.b $00
[000a38ed]                           dc.b $0c
[000a38ee]                           dc.b $00
[000a38ef]                           dc.b $02
[000a38f0]                           dc.b $00
[000a38f1]                           dc.b $01
_198_COLOR256:
[000a38f2]                           dc.b $00
[000a38f3]                           dc.b $c7
[000a38f4]                           dc.w $ffff
[000a38f6]                           dc.w $ffff
[000a38f8]                           dc.b $00
[000a38f9]                           dc.b $18
[000a38fa]                           dc.b $00
[000a38fb]                           dc.b $01
[000a38fc]                           dc.b $00
[000a38fd]                           dc.b $00
[000a38fe] 000a21a0                  dc.l PICCOLOR01
[000a3902]                           dc.b $00
[000a3903]                           dc.b $0a
[000a3904]                           dc.b $00
[000a3905]                           dc.b $0c
[000a3906]                           dc.b $00
[000a3907]                           dc.b $02
[000a3908]                           dc.b $00
[000a3909]                           dc.b $01
_199_COLOR256:
[000a390a]                           dc.b $00
[000a390b]                           dc.b $c8
[000a390c]                           dc.w $ffff
[000a390e]                           dc.w $ffff
[000a3910]                           dc.b $00
[000a3911]                           dc.b $18
[000a3912]                           dc.b $00
[000a3913]                           dc.b $01
[000a3914]                           dc.b $00
[000a3915]                           dc.b $00
[000a3916] 000a21a0                  dc.l PICCOLOR01
[000a391a]                           dc.b $00
[000a391b]                           dc.b $0c
[000a391c]                           dc.b $00
[000a391d]                           dc.b $0c
[000a391e]                           dc.b $00
[000a391f]                           dc.b $02
[000a3920]                           dc.b $00
[000a3921]                           dc.b $01
_200_COLOR256:
[000a3922]                           dc.b $00
[000a3923]                           dc.b $c9
[000a3924]                           dc.w $ffff
[000a3926]                           dc.w $ffff
[000a3928]                           dc.b $00
[000a3929]                           dc.b $18
[000a392a]                           dc.b $00
[000a392b]                           dc.b $01
[000a392c]                           dc.b $00
[000a392d]                           dc.b $00
[000a392e] 000a21a0                  dc.l PICCOLOR01
[000a3932]                           dc.b $00
[000a3933]                           dc.b $0e
[000a3934]                           dc.b $00
[000a3935]                           dc.b $0c
[000a3936]                           dc.b $00
[000a3937]                           dc.b $02
[000a3938]                           dc.b $00
[000a3939]                           dc.b $01
_201_COLOR256:
[000a393a]                           dc.b $00
[000a393b]                           dc.b $ca
[000a393c]                           dc.w $ffff
[000a393e]                           dc.w $ffff
[000a3940]                           dc.b $00
[000a3941]                           dc.b $18
[000a3942]                           dc.b $00
[000a3943]                           dc.b $01
[000a3944]                           dc.b $00
[000a3945]                           dc.b $00
[000a3946] 000a21a0                  dc.l PICCOLOR01
[000a394a]                           dc.b $00
[000a394b]                           dc.b $10
[000a394c]                           dc.b $00
[000a394d]                           dc.b $0c
[000a394e]                           dc.b $00
[000a394f]                           dc.b $02
[000a3950]                           dc.b $00
[000a3951]                           dc.b $01
_202_COLOR256:
[000a3952]                           dc.b $00
[000a3953]                           dc.b $cb
[000a3954]                           dc.w $ffff
[000a3956]                           dc.w $ffff
[000a3958]                           dc.b $00
[000a3959]                           dc.b $18
[000a395a]                           dc.b $00
[000a395b]                           dc.b $01
[000a395c]                           dc.b $00
[000a395d]                           dc.b $00
[000a395e] 000a21a0                  dc.l PICCOLOR01
[000a3962]                           dc.b $00
[000a3963]                           dc.b $12
[000a3964]                           dc.b $00
[000a3965]                           dc.b $0c
[000a3966]                           dc.b $00
[000a3967]                           dc.b $02
[000a3968]                           dc.b $00
[000a3969]                           dc.b $01
_203_COLOR256:
[000a396a]                           dc.b $00
[000a396b]                           dc.b $cc
[000a396c]                           dc.w $ffff
[000a396e]                           dc.w $ffff
[000a3970]                           dc.b $00
[000a3971]                           dc.b $18
[000a3972]                           dc.b $00
[000a3973]                           dc.b $01
[000a3974]                           dc.b $00
[000a3975]                           dc.b $00
[000a3976] 000a21a0                  dc.l PICCOLOR01
[000a397a]                           dc.b $00
[000a397b]                           dc.b $14
[000a397c]                           dc.b $00
[000a397d]                           dc.b $0c
[000a397e]                           dc.b $00
[000a397f]                           dc.b $02
[000a3980]                           dc.b $00
[000a3981]                           dc.b $01
_204_COLOR256:
[000a3982]                           dc.b $00
[000a3983]                           dc.b $cd
[000a3984]                           dc.w $ffff
[000a3986]                           dc.w $ffff
[000a3988]                           dc.b $00
[000a3989]                           dc.b $18
[000a398a]                           dc.b $00
[000a398b]                           dc.b $01
[000a398c]                           dc.b $00
[000a398d]                           dc.b $00
[000a398e] 000a21a0                  dc.l PICCOLOR01
[000a3992]                           dc.b $00
[000a3993]                           dc.b $16
[000a3994]                           dc.b $00
[000a3995]                           dc.b $0c
[000a3996]                           dc.b $00
[000a3997]                           dc.b $02
[000a3998]                           dc.b $00
[000a3999]                           dc.b $01
_205_COLOR256:
[000a399a]                           dc.b $00
[000a399b]                           dc.b $ce
[000a399c]                           dc.w $ffff
[000a399e]                           dc.w $ffff
[000a39a0]                           dc.b $00
[000a39a1]                           dc.b $18
[000a39a2]                           dc.b $00
[000a39a3]                           dc.b $01
[000a39a4]                           dc.b $00
[000a39a5]                           dc.b $00
[000a39a6] 000a21a0                  dc.l PICCOLOR01
[000a39aa]                           dc.b $00
[000a39ab]                           dc.b $18
[000a39ac]                           dc.b $00
[000a39ad]                           dc.b $0c
[000a39ae]                           dc.b $00
[000a39af]                           dc.b $02
[000a39b0]                           dc.b $00
[000a39b1]                           dc.b $01
_206_COLOR256:
[000a39b2]                           dc.b $00
[000a39b3]                           dc.b $cf
[000a39b4]                           dc.w $ffff
[000a39b6]                           dc.w $ffff
[000a39b8]                           dc.b $00
[000a39b9]                           dc.b $18
[000a39ba]                           dc.b $00
[000a39bb]                           dc.b $01
[000a39bc]                           dc.b $00
[000a39bd]                           dc.b $00
[000a39be] 000a21a0                  dc.l PICCOLOR01
[000a39c2]                           dc.b $00
[000a39c3]                           dc.b $1a
[000a39c4]                           dc.b $00
[000a39c5]                           dc.b $0c
[000a39c6]                           dc.b $00
[000a39c7]                           dc.b $02
[000a39c8]                           dc.b $00
[000a39c9]                           dc.b $01
_207_COLOR256:
[000a39ca]                           dc.b $00
[000a39cb]                           dc.b $d0
[000a39cc]                           dc.w $ffff
[000a39ce]                           dc.w $ffff
[000a39d0]                           dc.b $00
[000a39d1]                           dc.b $18
[000a39d2]                           dc.b $00
[000a39d3]                           dc.b $01
[000a39d4]                           dc.b $00
[000a39d5]                           dc.b $00
[000a39d6] 000a21a0                  dc.l PICCOLOR01
[000a39da]                           dc.b $00
[000a39db]                           dc.b $1c
[000a39dc]                           dc.b $00
[000a39dd]                           dc.b $0c
[000a39de]                           dc.b $00
[000a39df]                           dc.b $02
[000a39e0]                           dc.b $00
[000a39e1]                           dc.b $01
_208_COLOR256:
[000a39e2]                           dc.b $00
[000a39e3]                           dc.b $d1
[000a39e4]                           dc.w $ffff
[000a39e6]                           dc.w $ffff
[000a39e8]                           dc.b $00
[000a39e9]                           dc.b $18
[000a39ea]                           dc.b $00
[000a39eb]                           dc.b $01
[000a39ec]                           dc.b $00
[000a39ed]                           dc.b $00
[000a39ee] 000a21a0                  dc.l PICCOLOR01
[000a39f2]                           dc.b $00
[000a39f3]                           dc.b $1e
[000a39f4]                           dc.b $00
[000a39f5]                           dc.b $0c
[000a39f6]                           dc.b $00
[000a39f7]                           dc.b $02
[000a39f8]                           dc.b $00
[000a39f9]                           dc.b $01
_209_COLOR256:
[000a39fa]                           dc.b $00
[000a39fb]                           dc.b $d2
[000a39fc]                           dc.w $ffff
[000a39fe]                           dc.w $ffff
[000a3a00]                           dc.b $00
[000a3a01]                           dc.b $18
[000a3a02]                           dc.b $00
[000a3a03]                           dc.b $01
[000a3a04]                           dc.b $00
[000a3a05]                           dc.b $00
[000a3a06] 000a21a0                  dc.l PICCOLOR01
[000a3a0a]                           dc.b $00
[000a3a0b]                           dc.b $00
[000a3a0c]                           dc.b $00
[000a3a0d]                           dc.b $0d
[000a3a0e]                           dc.b $00
[000a3a0f]                           dc.b $02
[000a3a10]                           dc.b $00
[000a3a11]                           dc.b $01
_210_COLOR256:
[000a3a12]                           dc.b $00
[000a3a13]                           dc.b $d3
[000a3a14]                           dc.w $ffff
[000a3a16]                           dc.w $ffff
[000a3a18]                           dc.b $00
[000a3a19]                           dc.b $18
[000a3a1a]                           dc.b $00
[000a3a1b]                           dc.b $01
[000a3a1c]                           dc.b $00
[000a3a1d]                           dc.b $00
[000a3a1e] 000a21a0                  dc.l PICCOLOR01
[000a3a22]                           dc.b $00
[000a3a23]                           dc.b $02
[000a3a24]                           dc.b $00
[000a3a25]                           dc.b $0d
[000a3a26]                           dc.b $00
[000a3a27]                           dc.b $02
[000a3a28]                           dc.b $00
[000a3a29]                           dc.b $01
_211_COLOR256:
[000a3a2a]                           dc.b $00
[000a3a2b]                           dc.b $d4
[000a3a2c]                           dc.w $ffff
[000a3a2e]                           dc.w $ffff
[000a3a30]                           dc.b $00
[000a3a31]                           dc.b $18
[000a3a32]                           dc.b $00
[000a3a33]                           dc.b $01
[000a3a34]                           dc.b $00
[000a3a35]                           dc.b $00
[000a3a36] 000a21a0                  dc.l PICCOLOR01
[000a3a3a]                           dc.b $00
[000a3a3b]                           dc.b $04
[000a3a3c]                           dc.b $00
[000a3a3d]                           dc.b $0d
[000a3a3e]                           dc.b $00
[000a3a3f]                           dc.b $02
[000a3a40]                           dc.b $00
[000a3a41]                           dc.b $01
_212_COLOR256:
[000a3a42]                           dc.b $00
[000a3a43]                           dc.b $d5
[000a3a44]                           dc.w $ffff
[000a3a46]                           dc.w $ffff
[000a3a48]                           dc.b $00
[000a3a49]                           dc.b $18
[000a3a4a]                           dc.b $00
[000a3a4b]                           dc.b $01
[000a3a4c]                           dc.b $00
[000a3a4d]                           dc.b $00
[000a3a4e] 000a21a0                  dc.l PICCOLOR01
[000a3a52]                           dc.b $00
[000a3a53]                           dc.b $06
[000a3a54]                           dc.b $00
[000a3a55]                           dc.b $0d
[000a3a56]                           dc.b $00
[000a3a57]                           dc.b $02
[000a3a58]                           dc.b $00
[000a3a59]                           dc.b $01
_213_COLOR256:
[000a3a5a]                           dc.b $00
[000a3a5b]                           dc.b $d6
[000a3a5c]                           dc.w $ffff
[000a3a5e]                           dc.w $ffff
[000a3a60]                           dc.b $00
[000a3a61]                           dc.b $18
[000a3a62]                           dc.b $00
[000a3a63]                           dc.b $01
[000a3a64]                           dc.b $00
[000a3a65]                           dc.b $00
[000a3a66] 000a21a0                  dc.l PICCOLOR01
[000a3a6a]                           dc.b $00
[000a3a6b]                           dc.b $08
[000a3a6c]                           dc.b $00
[000a3a6d]                           dc.b $0d
[000a3a6e]                           dc.b $00
[000a3a6f]                           dc.b $02
[000a3a70]                           dc.b $00
[000a3a71]                           dc.b $01
_214_COLOR256:
[000a3a72]                           dc.b $00
[000a3a73]                           dc.b $d7
[000a3a74]                           dc.w $ffff
[000a3a76]                           dc.w $ffff
[000a3a78]                           dc.b $00
[000a3a79]                           dc.b $18
[000a3a7a]                           dc.b $00
[000a3a7b]                           dc.b $01
[000a3a7c]                           dc.b $00
[000a3a7d]                           dc.b $00
[000a3a7e] 000a21a0                  dc.l PICCOLOR01
[000a3a82]                           dc.b $00
[000a3a83]                           dc.b $0a
[000a3a84]                           dc.b $00
[000a3a85]                           dc.b $0d
[000a3a86]                           dc.b $00
[000a3a87]                           dc.b $02
[000a3a88]                           dc.b $00
[000a3a89]                           dc.b $01
_215_COLOR256:
[000a3a8a]                           dc.b $00
[000a3a8b]                           dc.b $d8
[000a3a8c]                           dc.w $ffff
[000a3a8e]                           dc.w $ffff
[000a3a90]                           dc.b $00
[000a3a91]                           dc.b $18
[000a3a92]                           dc.b $00
[000a3a93]                           dc.b $01
[000a3a94]                           dc.b $00
[000a3a95]                           dc.b $00
[000a3a96] 000a21a0                  dc.l PICCOLOR01
[000a3a9a]                           dc.b $00
[000a3a9b]                           dc.b $0c
[000a3a9c]                           dc.b $00
[000a3a9d]                           dc.b $0d
[000a3a9e]                           dc.b $00
[000a3a9f]                           dc.b $02
[000a3aa0]                           dc.b $00
[000a3aa1]                           dc.b $01
_216_COLOR256:
[000a3aa2]                           dc.b $00
[000a3aa3]                           dc.b $d9
[000a3aa4]                           dc.w $ffff
[000a3aa6]                           dc.w $ffff
[000a3aa8]                           dc.b $00
[000a3aa9]                           dc.b $18
[000a3aaa]                           dc.b $00
[000a3aab]                           dc.b $01
[000a3aac]                           dc.b $00
[000a3aad]                           dc.b $00
[000a3aae] 000a21a0                  dc.l PICCOLOR01
[000a3ab2]                           dc.b $00
[000a3ab3]                           dc.b $0e
[000a3ab4]                           dc.b $00
[000a3ab5]                           dc.b $0d
[000a3ab6]                           dc.b $00
[000a3ab7]                           dc.b $02
[000a3ab8]                           dc.b $00
[000a3ab9]                           dc.b $01
_217_COLOR256:
[000a3aba]                           dc.b $00
[000a3abb]                           dc.b $da
[000a3abc]                           dc.w $ffff
[000a3abe]                           dc.w $ffff
[000a3ac0]                           dc.b $00
[000a3ac1]                           dc.b $18
[000a3ac2]                           dc.b $00
[000a3ac3]                           dc.b $01
[000a3ac4]                           dc.b $00
[000a3ac5]                           dc.b $00
[000a3ac6] 000a21a0                  dc.l PICCOLOR01
[000a3aca]                           dc.b $00
[000a3acb]                           dc.b $10
[000a3acc]                           dc.b $00
[000a3acd]                           dc.b $0d
[000a3ace]                           dc.b $00
[000a3acf]                           dc.b $02
[000a3ad0]                           dc.b $00
[000a3ad1]                           dc.b $01
_218_COLOR256:
[000a3ad2]                           dc.b $00
[000a3ad3]                           dc.b $db
[000a3ad4]                           dc.w $ffff
[000a3ad6]                           dc.w $ffff
[000a3ad8]                           dc.b $00
[000a3ad9]                           dc.b $18
[000a3ada]                           dc.b $00
[000a3adb]                           dc.b $01
[000a3adc]                           dc.b $00
[000a3add]                           dc.b $00
[000a3ade] 000a21a0                  dc.l PICCOLOR01
[000a3ae2]                           dc.b $00
[000a3ae3]                           dc.b $12
[000a3ae4]                           dc.b $00
[000a3ae5]                           dc.b $0d
[000a3ae6]                           dc.b $00
[000a3ae7]                           dc.b $02
[000a3ae8]                           dc.b $00
[000a3ae9]                           dc.b $01
_219_COLOR256:
[000a3aea]                           dc.b $00
[000a3aeb]                           dc.b $dc
[000a3aec]                           dc.w $ffff
[000a3aee]                           dc.w $ffff
[000a3af0]                           dc.b $00
[000a3af1]                           dc.b $18
[000a3af2]                           dc.b $00
[000a3af3]                           dc.b $01
[000a3af4]                           dc.b $00
[000a3af5]                           dc.b $00
[000a3af6] 000a21a0                  dc.l PICCOLOR01
[000a3afa]                           dc.b $00
[000a3afb]                           dc.b $14
[000a3afc]                           dc.b $00
[000a3afd]                           dc.b $0d
[000a3afe]                           dc.b $00
[000a3aff]                           dc.b $02
[000a3b00]                           dc.b $00
[000a3b01]                           dc.b $01
_220_COLOR256:
[000a3b02]                           dc.b $00
[000a3b03]                           dc.b $dd
[000a3b04]                           dc.w $ffff
[000a3b06]                           dc.w $ffff
[000a3b08]                           dc.b $00
[000a3b09]                           dc.b $18
[000a3b0a]                           dc.b $00
[000a3b0b]                           dc.b $01
[000a3b0c]                           dc.b $00
[000a3b0d]                           dc.b $00
[000a3b0e] 000a21a0                  dc.l PICCOLOR01
[000a3b12]                           dc.b $00
[000a3b13]                           dc.b $16
[000a3b14]                           dc.b $00
[000a3b15]                           dc.b $0d
[000a3b16]                           dc.b $00
[000a3b17]                           dc.b $02
[000a3b18]                           dc.b $00
[000a3b19]                           dc.b $01
_221_COLOR256:
[000a3b1a]                           dc.b $00
[000a3b1b]                           dc.b $de
[000a3b1c]                           dc.w $ffff
[000a3b1e]                           dc.w $ffff
[000a3b20]                           dc.b $00
[000a3b21]                           dc.b $18
[000a3b22]                           dc.b $00
[000a3b23]                           dc.b $01
[000a3b24]                           dc.b $00
[000a3b25]                           dc.b $00
[000a3b26] 000a21a0                  dc.l PICCOLOR01
[000a3b2a]                           dc.b $00
[000a3b2b]                           dc.b $18
[000a3b2c]                           dc.b $00
[000a3b2d]                           dc.b $0d
[000a3b2e]                           dc.b $00
[000a3b2f]                           dc.b $02
[000a3b30]                           dc.b $00
[000a3b31]                           dc.b $01
_222_COLOR256:
[000a3b32]                           dc.b $00
[000a3b33]                           dc.b $df
[000a3b34]                           dc.w $ffff
[000a3b36]                           dc.w $ffff
[000a3b38]                           dc.b $00
[000a3b39]                           dc.b $18
[000a3b3a]                           dc.b $00
[000a3b3b]                           dc.b $01
[000a3b3c]                           dc.b $00
[000a3b3d]                           dc.b $00
[000a3b3e] 000a21a0                  dc.l PICCOLOR01
[000a3b42]                           dc.b $00
[000a3b43]                           dc.b $1a
[000a3b44]                           dc.b $00
[000a3b45]                           dc.b $0d
[000a3b46]                           dc.b $00
[000a3b47]                           dc.b $02
[000a3b48]                           dc.b $00
[000a3b49]                           dc.b $01
_223_COLOR256:
[000a3b4a]                           dc.b $00
[000a3b4b]                           dc.b $e0
[000a3b4c]                           dc.w $ffff
[000a3b4e]                           dc.w $ffff
[000a3b50]                           dc.b $00
[000a3b51]                           dc.b $18
[000a3b52]                           dc.b $00
[000a3b53]                           dc.b $01
[000a3b54]                           dc.b $00
[000a3b55]                           dc.b $00
[000a3b56] 000a21a0                  dc.l PICCOLOR01
[000a3b5a]                           dc.b $00
[000a3b5b]                           dc.b $1c
[000a3b5c]                           dc.b $00
[000a3b5d]                           dc.b $0d
[000a3b5e]                           dc.b $00
[000a3b5f]                           dc.b $02
[000a3b60]                           dc.b $00
[000a3b61]                           dc.b $01
_224_COLOR256:
[000a3b62]                           dc.b $00
[000a3b63]                           dc.b $e1
[000a3b64]                           dc.w $ffff
[000a3b66]                           dc.w $ffff
[000a3b68]                           dc.b $00
[000a3b69]                           dc.b $18
[000a3b6a]                           dc.b $00
[000a3b6b]                           dc.b $01
[000a3b6c]                           dc.b $00
[000a3b6d]                           dc.b $00
[000a3b6e] 000a21a0                  dc.l PICCOLOR01
[000a3b72]                           dc.b $00
[000a3b73]                           dc.b $1e
[000a3b74]                           dc.b $00
[000a3b75]                           dc.b $0d
[000a3b76]                           dc.b $00
[000a3b77]                           dc.b $02
[000a3b78]                           dc.b $00
[000a3b79]                           dc.b $01
_225_COLOR256:
[000a3b7a]                           dc.b $00
[000a3b7b]                           dc.b $e2
[000a3b7c]                           dc.w $ffff
[000a3b7e]                           dc.w $ffff
[000a3b80]                           dc.b $00
[000a3b81]                           dc.b $18
[000a3b82]                           dc.b $00
[000a3b83]                           dc.b $01
[000a3b84]                           dc.b $00
[000a3b85]                           dc.b $00
[000a3b86] 000a21a0                  dc.l PICCOLOR01
[000a3b8a]                           dc.b $00
[000a3b8b]                           dc.b $00
[000a3b8c]                           dc.b $00
[000a3b8d]                           dc.b $0e
[000a3b8e]                           dc.b $00
[000a3b8f]                           dc.b $02
[000a3b90]                           dc.b $00
[000a3b91]                           dc.b $01
_226_COLOR256:
[000a3b92]                           dc.b $00
[000a3b93]                           dc.b $e3
[000a3b94]                           dc.w $ffff
[000a3b96]                           dc.w $ffff
[000a3b98]                           dc.b $00
[000a3b99]                           dc.b $18
[000a3b9a]                           dc.b $00
[000a3b9b]                           dc.b $01
[000a3b9c]                           dc.b $00
[000a3b9d]                           dc.b $00
[000a3b9e] 000a21a0                  dc.l PICCOLOR01
[000a3ba2]                           dc.b $00
[000a3ba3]                           dc.b $02
[000a3ba4]                           dc.b $00
[000a3ba5]                           dc.b $0e
[000a3ba6]                           dc.b $00
[000a3ba7]                           dc.b $02
[000a3ba8]                           dc.b $00
[000a3ba9]                           dc.b $01
_227_COLOR256:
[000a3baa]                           dc.b $00
[000a3bab]                           dc.b $e4
[000a3bac]                           dc.w $ffff
[000a3bae]                           dc.w $ffff
[000a3bb0]                           dc.b $00
[000a3bb1]                           dc.b $18
[000a3bb2]                           dc.b $00
[000a3bb3]                           dc.b $01
[000a3bb4]                           dc.b $00
[000a3bb5]                           dc.b $00
[000a3bb6] 000a21a0                  dc.l PICCOLOR01
[000a3bba]                           dc.b $00
[000a3bbb]                           dc.b $04
[000a3bbc]                           dc.b $00
[000a3bbd]                           dc.b $0e
[000a3bbe]                           dc.b $00
[000a3bbf]                           dc.b $02
[000a3bc0]                           dc.b $00
[000a3bc1]                           dc.b $01
_228_COLOR256:
[000a3bc2]                           dc.b $00
[000a3bc3]                           dc.b $e5
[000a3bc4]                           dc.w $ffff
[000a3bc6]                           dc.w $ffff
[000a3bc8]                           dc.b $00
[000a3bc9]                           dc.b $18
[000a3bca]                           dc.b $00
[000a3bcb]                           dc.b $01
[000a3bcc]                           dc.b $00
[000a3bcd]                           dc.b $00
[000a3bce] 000a21a0                  dc.l PICCOLOR01
[000a3bd2]                           dc.b $00
[000a3bd3]                           dc.b $06
[000a3bd4]                           dc.b $00
[000a3bd5]                           dc.b $0e
[000a3bd6]                           dc.b $00
[000a3bd7]                           dc.b $02
[000a3bd8]                           dc.b $00
[000a3bd9]                           dc.b $01
_229_COLOR256:
[000a3bda]                           dc.b $00
[000a3bdb]                           dc.b $e6
[000a3bdc]                           dc.w $ffff
[000a3bde]                           dc.w $ffff
[000a3be0]                           dc.b $00
[000a3be1]                           dc.b $18
[000a3be2]                           dc.b $00
[000a3be3]                           dc.b $01
[000a3be4]                           dc.b $00
[000a3be5]                           dc.b $00
[000a3be6] 000a21a0                  dc.l PICCOLOR01
[000a3bea]                           dc.b $00
[000a3beb]                           dc.b $08
[000a3bec]                           dc.b $00
[000a3bed]                           dc.b $0e
[000a3bee]                           dc.b $00
[000a3bef]                           dc.b $02
[000a3bf0]                           dc.b $00
[000a3bf1]                           dc.b $01
_230_COLOR256:
[000a3bf2]                           dc.b $00
[000a3bf3]                           dc.b $e7
[000a3bf4]                           dc.w $ffff
[000a3bf6]                           dc.w $ffff
[000a3bf8]                           dc.b $00
[000a3bf9]                           dc.b $18
[000a3bfa]                           dc.b $00
[000a3bfb]                           dc.b $01
[000a3bfc]                           dc.b $00
[000a3bfd]                           dc.b $00
[000a3bfe] 000a21a0                  dc.l PICCOLOR01
[000a3c02]                           dc.b $00
[000a3c03]                           dc.b $0a
[000a3c04]                           dc.b $00
[000a3c05]                           dc.b $0e
[000a3c06]                           dc.b $00
[000a3c07]                           dc.b $02
[000a3c08]                           dc.b $00
[000a3c09]                           dc.b $01
_231_COLOR256:
[000a3c0a]                           dc.b $00
[000a3c0b]                           dc.b $e8
[000a3c0c]                           dc.w $ffff
[000a3c0e]                           dc.w $ffff
[000a3c10]                           dc.b $00
[000a3c11]                           dc.b $18
[000a3c12]                           dc.b $00
[000a3c13]                           dc.b $01
[000a3c14]                           dc.b $00
[000a3c15]                           dc.b $00
[000a3c16] 000a21a0                  dc.l PICCOLOR01
[000a3c1a]                           dc.b $00
[000a3c1b]                           dc.b $0c
[000a3c1c]                           dc.b $00
[000a3c1d]                           dc.b $0e
[000a3c1e]                           dc.b $00
[000a3c1f]                           dc.b $02
[000a3c20]                           dc.b $00
[000a3c21]                           dc.b $01
_232_COLOR256:
[000a3c22]                           dc.b $00
[000a3c23]                           dc.b $e9
[000a3c24]                           dc.w $ffff
[000a3c26]                           dc.w $ffff
[000a3c28]                           dc.b $00
[000a3c29]                           dc.b $18
[000a3c2a]                           dc.b $00
[000a3c2b]                           dc.b $01
[000a3c2c]                           dc.b $00
[000a3c2d]                           dc.b $00
[000a3c2e] 000a21a0                  dc.l PICCOLOR01
[000a3c32]                           dc.b $00
[000a3c33]                           dc.b $0e
[000a3c34]                           dc.b $00
[000a3c35]                           dc.b $0e
[000a3c36]                           dc.b $00
[000a3c37]                           dc.b $02
[000a3c38]                           dc.b $00
[000a3c39]                           dc.b $01
_233_COLOR256:
[000a3c3a]                           dc.b $00
[000a3c3b]                           dc.b $ea
[000a3c3c]                           dc.w $ffff
[000a3c3e]                           dc.w $ffff
[000a3c40]                           dc.b $00
[000a3c41]                           dc.b $18
[000a3c42]                           dc.b $00
[000a3c43]                           dc.b $01
[000a3c44]                           dc.b $00
[000a3c45]                           dc.b $00
[000a3c46] 000a21a0                  dc.l PICCOLOR01
[000a3c4a]                           dc.b $00
[000a3c4b]                           dc.b $10
[000a3c4c]                           dc.b $00
[000a3c4d]                           dc.b $0e
[000a3c4e]                           dc.b $00
[000a3c4f]                           dc.b $02
[000a3c50]                           dc.b $00
[000a3c51]                           dc.b $01
_234_COLOR256:
[000a3c52]                           dc.b $00
[000a3c53]                           dc.b $eb
[000a3c54]                           dc.w $ffff
[000a3c56]                           dc.w $ffff
[000a3c58]                           dc.b $00
[000a3c59]                           dc.b $18
[000a3c5a]                           dc.b $00
[000a3c5b]                           dc.b $01
[000a3c5c]                           dc.b $00
[000a3c5d]                           dc.b $00
[000a3c5e] 000a21a0                  dc.l PICCOLOR01
[000a3c62]                           dc.b $00
[000a3c63]                           dc.b $12
[000a3c64]                           dc.b $00
[000a3c65]                           dc.b $0e
[000a3c66]                           dc.b $00
[000a3c67]                           dc.b $02
[000a3c68]                           dc.b $00
[000a3c69]                           dc.b $01
_235_COLOR256:
[000a3c6a]                           dc.b $00
[000a3c6b]                           dc.b $ec
[000a3c6c]                           dc.w $ffff
[000a3c6e]                           dc.w $ffff
[000a3c70]                           dc.b $00
[000a3c71]                           dc.b $18
[000a3c72]                           dc.b $00
[000a3c73]                           dc.b $01
[000a3c74]                           dc.b $00
[000a3c75]                           dc.b $00
[000a3c76] 000a21a0                  dc.l PICCOLOR01
[000a3c7a]                           dc.b $00
[000a3c7b]                           dc.b $14
[000a3c7c]                           dc.b $00
[000a3c7d]                           dc.b $0e
[000a3c7e]                           dc.b $00
[000a3c7f]                           dc.b $02
[000a3c80]                           dc.b $00
[000a3c81]                           dc.b $01
_236_COLOR256:
[000a3c82]                           dc.b $00
[000a3c83]                           dc.b $ed
[000a3c84]                           dc.w $ffff
[000a3c86]                           dc.w $ffff
[000a3c88]                           dc.b $00
[000a3c89]                           dc.b $18
[000a3c8a]                           dc.b $00
[000a3c8b]                           dc.b $01
[000a3c8c]                           dc.b $00
[000a3c8d]                           dc.b $00
[000a3c8e] 000a21a0                  dc.l PICCOLOR01
[000a3c92]                           dc.b $00
[000a3c93]                           dc.b $16
[000a3c94]                           dc.b $00
[000a3c95]                           dc.b $0e
[000a3c96]                           dc.b $00
[000a3c97]                           dc.b $02
[000a3c98]                           dc.b $00
[000a3c99]                           dc.b $01
_237_COLOR256:
[000a3c9a]                           dc.b $00
[000a3c9b]                           dc.b $ee
[000a3c9c]                           dc.w $ffff
[000a3c9e]                           dc.w $ffff
[000a3ca0]                           dc.b $00
[000a3ca1]                           dc.b $18
[000a3ca2]                           dc.b $00
[000a3ca3]                           dc.b $01
[000a3ca4]                           dc.b $00
[000a3ca5]                           dc.b $00
[000a3ca6] 000a21a0                  dc.l PICCOLOR01
[000a3caa]                           dc.b $00
[000a3cab]                           dc.b $18
[000a3cac]                           dc.b $00
[000a3cad]                           dc.b $0e
[000a3cae]                           dc.b $00
[000a3caf]                           dc.b $02
[000a3cb0]                           dc.b $00
[000a3cb1]                           dc.b $01
_238_COLOR256:
[000a3cb2]                           dc.b $00
[000a3cb3]                           dc.b $ef
[000a3cb4]                           dc.w $ffff
[000a3cb6]                           dc.w $ffff
[000a3cb8]                           dc.b $00
[000a3cb9]                           dc.b $18
[000a3cba]                           dc.b $00
[000a3cbb]                           dc.b $01
[000a3cbc]                           dc.b $00
[000a3cbd]                           dc.b $00
[000a3cbe] 000a21a0                  dc.l PICCOLOR01
[000a3cc2]                           dc.b $00
[000a3cc3]                           dc.b $1a
[000a3cc4]                           dc.b $00
[000a3cc5]                           dc.b $0e
[000a3cc6]                           dc.b $00
[000a3cc7]                           dc.b $02
[000a3cc8]                           dc.b $00
[000a3cc9]                           dc.b $01
_239_COLOR256:
[000a3cca]                           dc.b $00
[000a3ccb]                           dc.b $f0
[000a3ccc]                           dc.w $ffff
[000a3cce]                           dc.w $ffff
[000a3cd0]                           dc.b $00
[000a3cd1]                           dc.b $18
[000a3cd2]                           dc.b $00
[000a3cd3]                           dc.b $01
[000a3cd4]                           dc.b $00
[000a3cd5]                           dc.b $00
[000a3cd6] 000a21a0                  dc.l PICCOLOR01
[000a3cda]                           dc.b $00
[000a3cdb]                           dc.b $1c
[000a3cdc]                           dc.b $00
[000a3cdd]                           dc.b $0e
[000a3cde]                           dc.b $00
[000a3cdf]                           dc.b $02
[000a3ce0]                           dc.b $00
[000a3ce1]                           dc.b $01
_240_COLOR256:
[000a3ce2]                           dc.b $00
[000a3ce3]                           dc.b $f1
[000a3ce4]                           dc.w $ffff
[000a3ce6]                           dc.w $ffff
[000a3ce8]                           dc.b $00
[000a3ce9]                           dc.b $18
[000a3cea]                           dc.b $00
[000a3ceb]                           dc.b $01
[000a3cec]                           dc.b $00
[000a3ced]                           dc.b $00
[000a3cee] 000a21a0                  dc.l PICCOLOR01
[000a3cf2]                           dc.b $00
[000a3cf3]                           dc.b $1e
[000a3cf4]                           dc.b $00
[000a3cf5]                           dc.b $0e
[000a3cf6]                           dc.b $00
[000a3cf7]                           dc.b $02
[000a3cf8]                           dc.b $00
[000a3cf9]                           dc.b $01
_241_COLOR256:
[000a3cfa]                           dc.b $00
[000a3cfb]                           dc.b $f2
[000a3cfc]                           dc.w $ffff
[000a3cfe]                           dc.w $ffff
[000a3d00]                           dc.b $00
[000a3d01]                           dc.b $18
[000a3d02]                           dc.b $00
[000a3d03]                           dc.b $01
[000a3d04]                           dc.b $00
[000a3d05]                           dc.b $00
[000a3d06] 000a21a0                  dc.l PICCOLOR01
[000a3d0a]                           dc.b $00
[000a3d0b]                           dc.b $00
[000a3d0c]                           dc.b $00
[000a3d0d]                           dc.b $0f
[000a3d0e]                           dc.b $00
[000a3d0f]                           dc.b $02
[000a3d10]                           dc.b $00
[000a3d11]                           dc.b $01
_242_COLOR256:
[000a3d12]                           dc.b $00
[000a3d13]                           dc.b $f3
[000a3d14]                           dc.w $ffff
[000a3d16]                           dc.w $ffff
[000a3d18]                           dc.b $00
[000a3d19]                           dc.b $18
[000a3d1a]                           dc.b $00
[000a3d1b]                           dc.b $01
[000a3d1c]                           dc.b $00
[000a3d1d]                           dc.b $00
[000a3d1e] 000a21a0                  dc.l PICCOLOR01
[000a3d22]                           dc.b $00
[000a3d23]                           dc.b $02
[000a3d24]                           dc.b $00
[000a3d25]                           dc.b $0f
[000a3d26]                           dc.b $00
[000a3d27]                           dc.b $02
[000a3d28]                           dc.b $00
[000a3d29]                           dc.b $01
_243_COLOR256:
[000a3d2a]                           dc.b $00
[000a3d2b]                           dc.b $f4
[000a3d2c]                           dc.w $ffff
[000a3d2e]                           dc.w $ffff
[000a3d30]                           dc.b $00
[000a3d31]                           dc.b $18
[000a3d32]                           dc.b $00
[000a3d33]                           dc.b $01
[000a3d34]                           dc.b $00
[000a3d35]                           dc.b $00
[000a3d36] 000a21a0                  dc.l PICCOLOR01
[000a3d3a]                           dc.b $00
[000a3d3b]                           dc.b $04
[000a3d3c]                           dc.b $00
[000a3d3d]                           dc.b $0f
[000a3d3e]                           dc.b $00
[000a3d3f]                           dc.b $02
[000a3d40]                           dc.b $00
[000a3d41]                           dc.b $01
_244_COLOR256:
[000a3d42]                           dc.b $00
[000a3d43]                           dc.b $f5
[000a3d44]                           dc.w $ffff
[000a3d46]                           dc.w $ffff
[000a3d48]                           dc.b $00
[000a3d49]                           dc.b $18
[000a3d4a]                           dc.b $00
[000a3d4b]                           dc.b $01
[000a3d4c]                           dc.b $00
[000a3d4d]                           dc.b $00
[000a3d4e] 000a21a0                  dc.l PICCOLOR01
[000a3d52]                           dc.b $00
[000a3d53]                           dc.b $06
[000a3d54]                           dc.b $00
[000a3d55]                           dc.b $0f
[000a3d56]                           dc.b $00
[000a3d57]                           dc.b $02
[000a3d58]                           dc.b $00
[000a3d59]                           dc.b $01
_245_COLOR256:
[000a3d5a]                           dc.b $00
[000a3d5b]                           dc.b $f6
[000a3d5c]                           dc.w $ffff
[000a3d5e]                           dc.w $ffff
[000a3d60]                           dc.b $00
[000a3d61]                           dc.b $18
[000a3d62]                           dc.b $00
[000a3d63]                           dc.b $01
[000a3d64]                           dc.b $00
[000a3d65]                           dc.b $00
[000a3d66] 000a21a0                  dc.l PICCOLOR01
[000a3d6a]                           dc.b $00
[000a3d6b]                           dc.b $08
[000a3d6c]                           dc.b $00
[000a3d6d]                           dc.b $0f
[000a3d6e]                           dc.b $00
[000a3d6f]                           dc.b $02
[000a3d70]                           dc.b $00
[000a3d71]                           dc.b $01
_246_COLOR256:
[000a3d72]                           dc.b $00
[000a3d73]                           dc.b $f7
[000a3d74]                           dc.w $ffff
[000a3d76]                           dc.w $ffff
[000a3d78]                           dc.b $00
[000a3d79]                           dc.b $18
[000a3d7a]                           dc.b $00
[000a3d7b]                           dc.b $01
[000a3d7c]                           dc.b $00
[000a3d7d]                           dc.b $00
[000a3d7e] 000a21a0                  dc.l PICCOLOR01
[000a3d82]                           dc.b $00
[000a3d83]                           dc.b $0a
[000a3d84]                           dc.b $00
[000a3d85]                           dc.b $0f
[000a3d86]                           dc.b $00
[000a3d87]                           dc.b $02
[000a3d88]                           dc.b $00
[000a3d89]                           dc.b $01
_247_COLOR256:
[000a3d8a]                           dc.b $00
[000a3d8b]                           dc.b $f8
[000a3d8c]                           dc.w $ffff
[000a3d8e]                           dc.w $ffff
[000a3d90]                           dc.b $00
[000a3d91]                           dc.b $18
[000a3d92]                           dc.b $00
[000a3d93]                           dc.b $01
[000a3d94]                           dc.b $00
[000a3d95]                           dc.b $00
[000a3d96] 000a21a0                  dc.l PICCOLOR01
[000a3d9a]                           dc.b $00
[000a3d9b]                           dc.b $0c
[000a3d9c]                           dc.b $00
[000a3d9d]                           dc.b $0f
[000a3d9e]                           dc.b $00
[000a3d9f]                           dc.b $02
[000a3da0]                           dc.b $00
[000a3da1]                           dc.b $01
_248_COLOR256:
[000a3da2]                           dc.b $00
[000a3da3]                           dc.b $f9
[000a3da4]                           dc.w $ffff
[000a3da6]                           dc.w $ffff
[000a3da8]                           dc.b $00
[000a3da9]                           dc.b $18
[000a3daa]                           dc.b $00
[000a3dab]                           dc.b $01
[000a3dac]                           dc.b $00
[000a3dad]                           dc.b $00
[000a3dae] 000a21a0                  dc.l PICCOLOR01
[000a3db2]                           dc.b $00
[000a3db3]                           dc.b $0e
[000a3db4]                           dc.b $00
[000a3db5]                           dc.b $0f
[000a3db6]                           dc.b $00
[000a3db7]                           dc.b $02
[000a3db8]                           dc.b $00
[000a3db9]                           dc.b $01
_249_COLOR256:
[000a3dba]                           dc.b $00
[000a3dbb]                           dc.b $fa
[000a3dbc]                           dc.w $ffff
[000a3dbe]                           dc.w $ffff
[000a3dc0]                           dc.b $00
[000a3dc1]                           dc.b $18
[000a3dc2]                           dc.b $00
[000a3dc3]                           dc.b $01
[000a3dc4]                           dc.b $00
[000a3dc5]                           dc.b $00
[000a3dc6] 000a21a0                  dc.l PICCOLOR01
[000a3dca]                           dc.b $00
[000a3dcb]                           dc.b $10
[000a3dcc]                           dc.b $00
[000a3dcd]                           dc.b $0f
[000a3dce]                           dc.b $00
[000a3dcf]                           dc.b $02
[000a3dd0]                           dc.b $00
[000a3dd1]                           dc.b $01
_250_COLOR256:
[000a3dd2]                           dc.b $00
[000a3dd3]                           dc.b $fb
[000a3dd4]                           dc.w $ffff
[000a3dd6]                           dc.w $ffff
[000a3dd8]                           dc.b $00
[000a3dd9]                           dc.b $18
[000a3dda]                           dc.b $00
[000a3ddb]                           dc.b $01
[000a3ddc]                           dc.b $00
[000a3ddd]                           dc.b $00
[000a3dde] 000a21a0                  dc.l PICCOLOR01
[000a3de2]                           dc.b $00
[000a3de3]                           dc.b $12
[000a3de4]                           dc.b $00
[000a3de5]                           dc.b $0f
[000a3de6]                           dc.b $00
[000a3de7]                           dc.b $02
[000a3de8]                           dc.b $00
[000a3de9]                           dc.b $01
_251_COLOR256:
[000a3dea]                           dc.b $00
[000a3deb]                           dc.b $fc
[000a3dec]                           dc.w $ffff
[000a3dee]                           dc.w $ffff
[000a3df0]                           dc.b $00
[000a3df1]                           dc.b $18
[000a3df2]                           dc.b $00
[000a3df3]                           dc.b $01
[000a3df4]                           dc.b $00
[000a3df5]                           dc.b $00
[000a3df6] 000a21a0                  dc.l PICCOLOR01
[000a3dfa]                           dc.b $00
[000a3dfb]                           dc.b $14
[000a3dfc]                           dc.b $00
[000a3dfd]                           dc.b $0f
[000a3dfe]                           dc.b $00
[000a3dff]                           dc.b $02
[000a3e00]                           dc.b $00
[000a3e01]                           dc.b $01
_252_COLOR256:
[000a3e02]                           dc.b $00
[000a3e03]                           dc.b $fd
[000a3e04]                           dc.w $ffff
[000a3e06]                           dc.w $ffff
[000a3e08]                           dc.b $00
[000a3e09]                           dc.b $18
[000a3e0a]                           dc.b $00
[000a3e0b]                           dc.b $01
[000a3e0c]                           dc.b $00
[000a3e0d]                           dc.b $00
[000a3e0e] 000a21a0                  dc.l PICCOLOR01
[000a3e12]                           dc.b $00
[000a3e13]                           dc.b $16
[000a3e14]                           dc.b $00
[000a3e15]                           dc.b $0f
[000a3e16]                           dc.b $00
[000a3e17]                           dc.b $02
[000a3e18]                           dc.b $00
[000a3e19]                           dc.b $01
_253_COLOR256:
[000a3e1a]                           dc.b $00
[000a3e1b]                           dc.b $fe
[000a3e1c]                           dc.w $ffff
[000a3e1e]                           dc.w $ffff
[000a3e20]                           dc.b $00
[000a3e21]                           dc.b $18
[000a3e22]                           dc.b $00
[000a3e23]                           dc.b $01
[000a3e24]                           dc.b $00
[000a3e25]                           dc.b $00
[000a3e26] 000a21a0                  dc.l PICCOLOR01
[000a3e2a]                           dc.b $00
[000a3e2b]                           dc.b $18
[000a3e2c]                           dc.b $00
[000a3e2d]                           dc.b $0f
[000a3e2e]                           dc.b $00
[000a3e2f]                           dc.b $02
[000a3e30]                           dc.b $00
[000a3e31]                           dc.b $01
_254_COLOR256:
[000a3e32]                           dc.b $00
[000a3e33]                           dc.b $ff
[000a3e34]                           dc.w $ffff
[000a3e36]                           dc.w $ffff
[000a3e38]                           dc.b $00
[000a3e39]                           dc.b $18
[000a3e3a]                           dc.b $00
[000a3e3b]                           dc.b $01
[000a3e3c]                           dc.b $00
[000a3e3d]                           dc.b $00
[000a3e3e] 000a21a0                  dc.l PICCOLOR01
[000a3e42]                           dc.b $00
[000a3e43]                           dc.b $1a
[000a3e44]                           dc.b $00
[000a3e45]                           dc.b $0f
[000a3e46]                           dc.b $00
[000a3e47]                           dc.b $02
[000a3e48]                           dc.b $00
[000a3e49]                           dc.b $01
_255_COLOR256:
[000a3e4a]                           dc.w $0100
[000a3e4c]                           dc.w $ffff
[000a3e4e]                           dc.w $ffff
[000a3e50]                           dc.b $00
[000a3e51]                           dc.b $18
[000a3e52]                           dc.b $00
[000a3e53]                           dc.b $01
[000a3e54]                           dc.b $00
[000a3e55]                           dc.b $00
[000a3e56] 000a21a0                  dc.l PICCOLOR01
[000a3e5a]                           dc.b $00
[000a3e5b]                           dc.b $1c
[000a3e5c]                           dc.b $00
[000a3e5d]                           dc.b $0f
[000a3e5e]                           dc.b $00
[000a3e5f]                           dc.b $02
[000a3e60]                           dc.b $00
[000a3e61]                           dc.b $01
_256_COLOR256:
[000a3e62]                           dc.b $00
[000a3e63]                           dc.b $00
[000a3e64]                           dc.w $ffff
[000a3e66]                           dc.w $ffff
[000a3e68]                           dc.b $00
[000a3e69]                           dc.b $18
[000a3e6a]                           dc.b $00
[000a3e6b]                           dc.b $21
[000a3e6c]                           dc.b $00
[000a3e6d]                           dc.b $00
[000a3e6e] 000a21a0                  dc.l PICCOLOR01
[000a3e72]                           dc.b $00
[000a3e73]                           dc.b $1e
[000a3e74]                           dc.b $00
[000a3e75]                           dc.b $0f
[000a3e76]                           dc.b $00
[000a3e77]                           dc.b $02
[000a3e78]                           dc.b $00
[000a3e79]                           dc.b $01
EDIT_ICON:
[000a3e7a]                           dc.w $ffff
[000a3e7c]                           dc.b $00
[000a3e7d]                           dc.b $01
[000a3e7e]                           dc.b $00
[000a3e7f]                           dc.b $2b
[000a3e80]                           dc.b $00
[000a3e81]                           dc.b $18
[000a3e82]                           dc.b $00
[000a3e83]                           dc.b $40
[000a3e84]                           dc.b $00
[000a3e85]                           dc.b $10
[000a3e86] 000a1f80                  dc.l A_3DBUTTON16
[000a3e8a]                           dc.b $00
[000a3e8b]                           dc.b $00
[000a3e8c]                           dc.b $00
[000a3e8d]                           dc.b $00
[000a3e8e]                           dc.b $00
[000a3e8f]                           dc.b $38
[000a3e90]                           dc.b $00
[000a3e91]                           dc.b $11
_01_EDIT_ICON:
[000a3e92]                           dc.b $00
[000a3e93]                           dc.b $0e
[000a3e94]                           dc.b $00
[000a3e95]                           dc.b $02
[000a3e96]                           dc.b $00
[000a3e97]                           dc.b $0a
[000a3e98]                           dc.b $00
[000a3e99]                           dc.b $18
[000a3e9a]                           dc.b $00
[000a3e9b]                           dc.b $40
[000a3e9c]                           dc.b $00
[000a3e9d]                           dc.b $00
[000a3e9e] 000a20a0                  dc.l A_INNERFRAME02
[000a3ea2]                           dc.b $00
[000a3ea3]                           dc.b $1b
[000a3ea4]                           dc.b $00
[000a3ea5]                           dc.b $00
[000a3ea6]                           dc.b $00
[000a3ea7]                           dc.b $1d
[000a3ea8]                           dc.b $00
[000a3ea9]                           dc.b $05
_02_EDIT_ICON:
[000a3eaa]                           dc.b $00
[000a3eab]                           dc.b $04
[000a3eac]                           dc.b $00
[000a3ead]                           dc.b $03
[000a3eae]                           dc.b $00
[000a3eaf]                           dc.b $03
[000a3eb0]                           dc.b $00
[000a3eb1]                           dc.b $1c
[000a3eb2]                           dc.b $00
[000a3eb3]                           dc.b $40
[000a3eb4]                           dc.b $00
[000a3eb5]                           dc.b $00
[000a3eb6] 000a15fb                  dc.l TEXT_10
[000a3eba]                           dc.b $00
[000a3ebb]                           dc.b $01
[000a3ebc]                           dc.b $00
[000a3ebd]                           dc.b $01
[000a3ebe]                           dc.b $00
[000a3ebf]                           dc.b $06
[000a3ec0]                           dc.b $00
[000a3ec1]                           dc.b $01
_03_EDIT_ICON:
[000a3ec2]                           dc.b $00
[000a3ec3]                           dc.b $02
[000a3ec4]                           dc.w $ffff
[000a3ec6]                           dc.w $ffff
[000a3ec8]                           dc.b $00
[000a3ec9]                           dc.b $18
[000a3eca]                           dc.b $00
[000a3ecb]                           dc.b $40
[000a3ecc]                           dc.b $00
[000a3ecd]                           dc.b $00
[000a3ece] 000a1fe0                  dc.l A_ARROWS02
[000a3ed2]                           dc.b $00
[000a3ed3]                           dc.b $00
[000a3ed4]                           dc.b $00
[000a3ed5]                           dc.b $00
[000a3ed6]                           dc.b $00
[000a3ed7]                           dc.b $01
[000a3ed8]                           dc.b $00
[000a3ed9]                           dc.b $01
_04_EDIT_ICON:
[000a3eda]                           dc.b $00
[000a3edb]                           dc.b $08
[000a3edc]                           dc.b $00
[000a3edd]                           dc.b $06
[000a3ede]                           dc.b $00
[000a3edf]                           dc.b $07
[000a3ee0]                           dc.b $00
[000a3ee1]                           dc.b $14
[000a3ee2]                           dc.b $00
[000a3ee3]                           dc.b $40
[000a3ee4]                           dc.b $00
[000a3ee5]                           dc.b $20
[000a3ee6]                           dc.b $00
[000a3ee7]                           dc.b $ff
[000a3ee8]                           dc.w $1101
[000a3eea]                           dc.b $00
[000a3eeb]                           dc.b $09
[000a3eec]                           dc.b $00
[000a3eed]                           dc.b $01
[000a3eee]                           dc.b $00
[000a3eef]                           dc.b $12
[000a3ef0]                           dc.b $00
[000a3ef1]                           dc.b $01
_04aEDIT_ICON:
[000a3ef2] 0001c768                  dc.l edic_frontcol
[000a3ef6]                           dc.b $00
[000a3ef7]                           dc.b $00
[000a3ef8]                           dc.b $00
[000a3ef9]                           dc.b $00
[000a3efa]                           dc.w $8000
[000a3efc]                           dc.w $8856
[000a3efe]                           dc.b $00
[000a3eff]                           dc.b $00
[000a3f00]                           dc.b $00
[000a3f01]                           dc.b $00
[000a3f02]                           dc.b $00
[000a3f03]                           dc.b $00
[000a3f04]                           dc.b $00
[000a3f05]                           dc.b $00
[000a3f06]                           dc.b $00
[000a3f07]                           dc.b $00
[000a3f08]                           dc.b $00
[000a3f09]                           dc.b $00
_06_EDIT_ICON:
[000a3f0a]                           dc.b $00
[000a3f0b]                           dc.b $07
[000a3f0c]                           dc.w $ffff
[000a3f0e]                           dc.w $ffff
[000a3f10]                           dc.b $00
[000a3f11]                           dc.b $14
[000a3f12]                           dc.b $00
[000a3f13]                           dc.b $00
[000a3f14]                           dc.b $00
[000a3f15]                           dc.b $00
[000a3f16]                           dc.b $00
[000a3f17]                           dc.b $01
[000a3f18]                           dc.w $1171
[000a3f1a]                           dc.b $00
[000a3f1b]                           dc.b $10
[000a3f1c]                           dc.b $00
[000a3f1d]                           dc.b $00
[000a3f1e]                           dc.b $00
[000a3f1f]                           dc.b $02
[000a3f20]                           dc.b $00
[000a3f21]                           dc.b $01
_07_EDIT_ICON:
[000a3f22]                           dc.b $00
[000a3f23]                           dc.b $04
[000a3f24]                           dc.w $ffff
[000a3f26]                           dc.w $ffff
[000a3f28]                           dc.b $00
[000a3f29]                           dc.b $18
[000a3f2a]                           dc.b $00
[000a3f2b]                           dc.b $00
[000a3f2c]                           dc.b $00
[000a3f2d]                           dc.b $00
[000a3f2e] 000a1fc0                  dc.l A_3DBUTTON27
[000a3f32]                           dc.b $00
[000a3f33]                           dc.b $00
[000a3f34]                           dc.b $00
[000a3f35]                           dc.b $00
[000a3f36]                           dc.b $00
[000a3f37]                           dc.b $10
[000a3f38]                           dc.b $00
[000a3f39]                           dc.b $01
_08_EDIT_ICON:
[000a3f3a]                           dc.b $00
[000a3f3b]                           dc.b $0a
[000a3f3c]                           dc.b $00
[000a3f3d]                           dc.b $09
[000a3f3e]                           dc.b $00
[000a3f3f]                           dc.b $09
[000a3f40]                           dc.b $00
[000a3f41]                           dc.b $1c
[000a3f42]                           dc.b $00
[000a3f43]                           dc.b $40
[000a3f44]                           dc.b $00
[000a3f45]                           dc.b $00
[000a3f46] 000a15f3                  dc.l TEXT_09
[000a3f4a]                           dc.b $00
[000a3f4b]                           dc.b $01
[000a3f4c]                           dc.b $00
[000a3f4d]                           dc.b $03
[000a3f4e]                           dc.b $00
[000a3f4f]                           dc.b $07
[000a3f50]                           dc.b $00
[000a3f51]                           dc.b $01
_09_EDIT_ICON:
[000a3f52]                           dc.b $00
[000a3f53]                           dc.b $08
[000a3f54]                           dc.w $ffff
[000a3f56]                           dc.w $ffff
[000a3f58]                           dc.b $00
[000a3f59]                           dc.b $18
[000a3f5a]                           dc.b $00
[000a3f5b]                           dc.b $40
[000a3f5c]                           dc.b $00
[000a3f5d]                           dc.b $00
[000a3f5e] 000a1fe0                  dc.l A_ARROWS02
[000a3f62]                           dc.b $00
[000a3f63]                           dc.b $00
[000a3f64]                           dc.b $00
[000a3f65]                           dc.b $00
[000a3f66]                           dc.b $00
[000a3f67]                           dc.b $01
[000a3f68]                           dc.b $00
[000a3f69]                           dc.b $01
_10_EDIT_ICON:
[000a3f6a]                           dc.b $00
[000a3f6b]                           dc.b $01
[000a3f6c]                           dc.b $00
[000a3f6d]                           dc.b $0c
[000a3f6e]                           dc.b $00
[000a3f6f]                           dc.b $0d
[000a3f70]                           dc.b $00
[000a3f71]                           dc.b $14
[000a3f72]                           dc.b $00
[000a3f73]                           dc.b $40
[000a3f74]                           dc.b $00
[000a3f75]                           dc.b $20
[000a3f76]                           dc.b $00
[000a3f77]                           dc.b $ff
[000a3f78]                           dc.w $1101
[000a3f7a]                           dc.b $00
[000a3f7b]                           dc.b $09
[000a3f7c]                           dc.b $00
[000a3f7d]                           dc.b $03
[000a3f7e]                           dc.b $00
[000a3f7f]                           dc.b $12
[000a3f80]                           dc.b $00
[000a3f81]                           dc.b $01
_10aEDIT_ICON:
[000a3f82] 0001c706                  dc.l edic_backcol
[000a3f86]                           dc.b $00
[000a3f87]                           dc.b $00
[000a3f88]                           dc.b $00
[000a3f89]                           dc.b $00
[000a3f8a]                           dc.w $8000
[000a3f8c]                           dc.w $8848
[000a3f8e]                           dc.b $00
[000a3f8f]                           dc.b $00
[000a3f90]                           dc.b $00
[000a3f91]                           dc.b $00
[000a3f92]                           dc.b $00
[000a3f93]                           dc.b $00
[000a3f94]                           dc.b $00
[000a3f95]                           dc.b $00
[000a3f96]                           dc.b $00
[000a3f97]                           dc.b $00
[000a3f98]                           dc.b $00
[000a3f99]                           dc.b $00
_12_EDIT_ICON:
[000a3f9a]                           dc.b $00
[000a3f9b]                           dc.b $0d
[000a3f9c]                           dc.w $ffff
[000a3f9e]                           dc.w $ffff
[000a3fa0]                           dc.b $00
[000a3fa1]                           dc.b $14
[000a3fa2]                           dc.b $00
[000a3fa3]                           dc.b $00
[000a3fa4]                           dc.b $00
[000a3fa5]                           dc.b $00
[000a3fa6]                           dc.b $00
[000a3fa7]                           dc.b $01
[000a3fa8]                           dc.w $1171
[000a3faa]                           dc.b $00
[000a3fab]                           dc.b $10
[000a3fac]                           dc.b $00
[000a3fad]                           dc.b $00
[000a3fae]                           dc.b $00
[000a3faf]                           dc.b $02
[000a3fb0]                           dc.b $00
[000a3fb1]                           dc.b $01
_13_EDIT_ICON:
[000a3fb2]                           dc.b $00
[000a3fb3]                           dc.b $0a
[000a3fb4]                           dc.w $ffff
[000a3fb6]                           dc.w $ffff
[000a3fb8]                           dc.b $00
[000a3fb9]                           dc.b $18
[000a3fba]                           dc.b $00
[000a3fbb]                           dc.b $00
[000a3fbc]                           dc.b $00
[000a3fbd]                           dc.b $00
[000a3fbe] 000a1fc0                  dc.l A_3DBUTTON27
[000a3fc2]                           dc.b $00
[000a3fc3]                           dc.b $00
[000a3fc4]                           dc.b $00
[000a3fc5]                           dc.b $00
[000a3fc6]                           dc.b $00
[000a3fc7]                           dc.b $10
[000a3fc8]                           dc.b $00
[000a3fc9]                           dc.b $01
_14_EDIT_ICON:
[000a3fca]                           dc.b $00
[000a3fcb]                           dc.b $15
[000a3fcc]                           dc.b $00
[000a3fcd]                           dc.b $10
[000a3fce]                           dc.b $00
[000a3fcf]                           dc.b $10
[000a3fd0]                           dc.b $00
[000a3fd1]                           dc.b $18
[000a3fd2]                           dc.w $1000
[000a3fd4]                           dc.b $00
[000a3fd5]                           dc.b $10
[000a3fd6] 000a1f20                  dc.l A_3DBUTTON13
[000a3fda]                           dc.b $00
[000a3fdb]                           dc.b $02
[000a3fdc]                           dc.b $00
[000a3fdd]                           dc.b $01
[000a3fde]                           dc.b $00
[000a3fdf]                           dc.b $18
[000a3fe0]                           dc.b $00
[000a3fe1]                           dc.b $0c
_14aEDIT_ICON:
[000a3fe2]                           dc.b $00
[000a3fe3]                           dc.b $00
[000a3fe4]                           dc.b $00
[000a3fe5]                           dc.b $00
[000a3fe6] 0001e5b0                  dc.l edic_acc
[000a3fea]                           dc.w $8000
[000a3fec]                           dc.b $00
[000a3fed]                           dc.b $00
[000a3fee]                           dc.b $00
[000a3fef]                           dc.b $00
[000a3ff0]                           dc.b $00
[000a3ff1]                           dc.b $00
[000a3ff2]                           dc.b $00
[000a3ff3]                           dc.b $00
[000a3ff4]                           dc.b $00
[000a3ff5]                           dc.b $00
[000a3ff6]                           dc.b $00
[000a3ff7]                           dc.b $00
[000a3ff8]                           dc.b $00
[000a3ff9]                           dc.b $00
_16_EDIT_ICON:
[000a3ffa]                           dc.b $00
[000a3ffb]                           dc.b $0e
[000a3ffc]                           dc.b $00
[000a3ffd]                           dc.b $12
[000a3ffe]                           dc.b $00
[000a3fff]                           dc.b $13
[000a4000]                           dc.b $00
[000a4001]                           dc.b $1f
[000a4002]                           dc.b $00
[000a4003]                           dc.b $40
[000a4004]                           dc.b $00
[000a4005]                           dc.b $00
[000a4006] 000a2300                  dc.l ICON_001
[000a400a]                           dc.b $00
[000a400b]                           dc.b $00
[000a400c]                           dc.b $00
[000a400d]                           dc.b $00
[000a400e]                           dc.b $00
[000a400f]                           dc.b $18
[000a4010]                           dc.b $00
[000a4011]                           dc.b $0c
_16aEDIT_ICON:
[000a4012] 0001d8cc                  dc.l edic_control
[000a4016]                           dc.b $00
[000a4017]                           dc.b $00
[000a4018]                           dc.b $00
[000a4019]                           dc.b $00
[000a401a]                           dc.w $8000
[000a401c]                           dc.b $00
[000a401d]                           dc.b $00
[000a401e]                           dc.b $00
[000a401f]                           dc.b $00
[000a4020]                           dc.b $00
[000a4021]                           dc.b $00
[000a4022]                           dc.b $00
[000a4023]                           dc.b $00
[000a4024]                           dc.b $00
[000a4025]                           dc.b $00
[000a4026]                           dc.b $00
[000a4027]                           dc.b $00
[000a4028]                           dc.b $00
[000a4029]                           dc.b $00
_18_EDIT_ICON:
[000a402a]                           dc.b $00
[000a402b]                           dc.b $13
[000a402c]                           dc.w $ffff
[000a402e]                           dc.w $ffff
[000a4030]                           dc.b $00
[000a4031]                           dc.b $18
[000a4032]                           dc.b $00
[000a4033]                           dc.b $80
[000a4034]                           dc.b $00
[000a4035]                           dc.b $11
[000a4036] 000a21c0                  dc.l USER_001
[000a403a]                           dc.b $00
[000a403b]                           dc.b $03
[000a403c]                           dc.b $00
[000a403d]                           dc.b $01
[000a403e]                           dc.b $00
[000a403f]                           dc.b $08
[000a4040]                           dc.b $00
[000a4041]                           dc.b $03
_19_EDIT_ICON:
[000a4042]                           dc.b $00
[000a4043]                           dc.b $10
[000a4044]                           dc.w $ffff
[000a4046]                           dc.w $ffff
[000a4048]                           dc.b $00
[000a4049]                           dc.b $19
[000a404a]                           dc.w $2000
[000a404c]                           dc.b $00
[000a404d]                           dc.b $00
[000a404e]                           dc.b $00
[000a404f]                           dc.b $ff
[000a4050]                           dc.w $1101
[000a4052]                           dc.b $00
[000a4053]                           dc.b $00
[000a4054]                           dc.b $00
[000a4055]                           dc.b $00
[000a4056]                           dc.b $00
[000a4057]                           dc.b $04
[000a4058]                           dc.b $00
[000a4059]                           dc.b $01
_19aEDIT_ICON:
[000a405a]                           dc.b $00
[000a405b]                           dc.b $00
[000a405c]                           dc.b $00
[000a405d]                           dc.b $00
[000a405e]                           dc.b $00
[000a405f]                           dc.b $00
[000a4060]                           dc.b $00
[000a4061]                           dc.b $00
[000a4062]                           dc.w $8000
[000a4064]                           dc.b $00
[000a4065]                           dc.b $00
[000a4066]                           dc.b $00
[000a4067]                           dc.b $00
[000a4068]                           dc.b $00
[000a4069]                           dc.b $00
[000a406a]                           dc.b $00
[000a406b]                           dc.b $00
[000a406c]                           dc.b $00
[000a406d]                           dc.b $00
[000a406e]                           dc.b $00
[000a406f]                           dc.b $00
[000a4070]                           dc.b $00
[000a4071]                           dc.b $0a
_21_EDIT_ICON:
[000a4072]                           dc.b $00
[000a4073]                           dc.b $1c
[000a4074]                           dc.b $00
[000a4075]                           dc.b $16
[000a4076]                           dc.b $00
[000a4077]                           dc.b $18
[000a4078]                           dc.b $00
[000a4079]                           dc.b $18
[000a407a]                           dc.b $00
[000a407b]                           dc.b $40
[000a407c]                           dc.b $00
[000a407d]                           dc.b $00
[000a407e] 000a20c0                  dc.l A_INNERFRAME03
[000a4082]                           dc.b $00
[000a4083]                           dc.b $1b
[000a4084]                           dc.b $00
[000a4085]                           dc.b $05
[000a4086]                           dc.b $00
[000a4087]                           dc.b $1d
[000a4088]                           dc.b $00
[000a4089]                           dc.b $04
_22_EDIT_ICON:
[000a408a]                           dc.b $00
[000a408b]                           dc.b $17
[000a408c]                           dc.w $ffff
[000a408e]                           dc.w $ffff
[000a4090]                           dc.b $00
[000a4091]                           dc.b $1c
[000a4092]                           dc.b $00
[000a4093]                           dc.b $40
[000a4094]                           dc.b $00
[000a4095]                           dc.b $00
[000a4096] 000a1617                  dc.l TEXT_16
[000a409a]                           dc.b $00
[000a409b]                           dc.b $01
[000a409c]                           dc.b $00
[000a409d]                           dc.b $01
[000a409e]                           dc.b $00
[000a409f]                           dc.b $05
[000a40a0]                           dc.b $00
[000a40a1]                           dc.b $01
_23_EDIT_ICON:
[000a40a2]                           dc.b $00
[000a40a3]                           dc.b $18
[000a40a4]                           dc.w $ffff
[000a40a6]                           dc.w $ffff
[000a40a8]                           dc.b $00
[000a40a9]                           dc.b $1c
[000a40aa]                           dc.b $00
[000a40ab]                           dc.b $40
[000a40ac]                           dc.b $00
[000a40ad]                           dc.b $00
[000a40ae] 000a160b                  dc.l TEXT_14
[000a40b2]                           dc.b $00
[000a40b3]                           dc.b $01
[000a40b4]                           dc.b $00
[000a40b5]                           dc.b $02
[000a40b6]                           dc.b $00
[000a40b7]                           dc.b $05
[000a40b8]                           dc.b $00
[000a40b9]                           dc.b $01
_24_EDIT_ICON:
[000a40ba]                           dc.b $00
[000a40bb]                           dc.b $15
[000a40bc]                           dc.b $00
[000a40bd]                           dc.b $19
[000a40be]                           dc.b $00
[000a40bf]                           dc.b $19
[000a40c0]                           dc.b $00
[000a40c1]                           dc.b $18
[000a40c2]                           dc.b $00
[000a40c3]                           dc.b $40
[000a40c4]                           dc.b $00
[000a40c5]                           dc.b $00
[000a40c6] 000a1e20                  dc.l A_3DBUTTON04
[000a40ca]                           dc.b $00
[000a40cb]                           dc.b $07
[000a40cc]                           dc.b $00
[000a40cd]                           dc.b $01
[000a40ce]                           dc.b $00
[000a40cf]                           dc.b $14
[000a40d0]                           dc.b $00
[000a40d1]                           dc.b $02
_25_EDIT_ICON:
[000a40d2]                           dc.b $00
[000a40d3]                           dc.b $18
[000a40d4]                           dc.b $00
[000a40d5]                           dc.b $1a
[000a40d6]                           dc.b $00
[000a40d7]                           dc.b $1b
[000a40d8]                           dc.b $00
[000a40d9]                           dc.b $14
[000a40da]                           dc.b $00
[000a40db]                           dc.b $40
[000a40dc]                           dc.b $00
[000a40dd]                           dc.b $00
[000a40de]                           dc.b $00
[000a40df]                           dc.b $ff
[000a40e0]                           dc.w $0101
[000a40e2]                           dc.b $00
[000a40e3]                           dc.b $00
[000a40e4]                           dc.b $00
[000a40e5]                           dc.b $00
[000a40e6]                           dc.b $00
[000a40e7]                           dc.b $14
[000a40e8]                           dc.b $00
[000a40e9]                           dc.b $02
_26_EDIT_ICON:
[000a40ea]                           dc.b $00
[000a40eb]                           dc.b $1b
[000a40ec]                           dc.w $ffff
[000a40ee]                           dc.w $ffff
[000a40f0]                           dc.b $00
[000a40f1]                           dc.b $18
[000a40f2]                           dc.b $00
[000a40f3]                           dc.b $08
[000a40f4]                           dc.b $00
[000a40f5]                           dc.b $00
[000a40f6] 000a2060                  dc.l A_BOXED05
[000a40fa]                           dc.b $00
[000a40fb]                           dc.b $00
[000a40fc]                           dc.b $00
[000a40fd]                           dc.b $00
[000a40fe]                           dc.b $00
[000a40ff]                           dc.b $14
[000a4100]                           dc.b $00
[000a4101]                           dc.b $01
_27_EDIT_ICON:
[000a4102]                           dc.b $00
[000a4103]                           dc.b $19
[000a4104]                           dc.w $ffff
[000a4106]                           dc.w $ffff
[000a4108]                           dc.b $00
[000a4109]                           dc.b $18
[000a410a]                           dc.b $00
[000a410b]                           dc.b $08
[000a410c]                           dc.b $00
[000a410d]                           dc.b $00
[000a410e] 000a2020                  dc.l A_BOXED02
[000a4112]                           dc.b $00
[000a4113]                           dc.b $00
[000a4114]                           dc.b $00
[000a4115]                           dc.b $01
[000a4116]                           dc.b $00
[000a4117]                           dc.b $01
[000a4118]                           dc.b $00
[000a4119]                           dc.b $01
_28_EDIT_ICON:
[000a411a]                           dc.b $00
[000a411b]                           dc.b $25
[000a411c]                           dc.b $00
[000a411d]                           dc.b $1d
[000a411e]                           dc.b $00
[000a411f]                           dc.b $23
[000a4120]                           dc.b $00
[000a4121]                           dc.b $18
[000a4122]                           dc.b $00
[000a4123]                           dc.b $40
[000a4124]                           dc.b $00
[000a4125]                           dc.b $00
[000a4126] 000a20e0                  dc.l A_INNERFRAME04
[000a412a]                           dc.b $00
[000a412b]                           dc.b $1b
[000a412c]                           dc.b $00
[000a412d]                           dc.b $09
[000a412e]                           dc.b $00
[000a412f]                           dc.b $1d
[000a4130]                           dc.b $00
[000a4131]                           dc.b $05
_29_EDIT_ICON:
[000a4132]                           dc.b $00
[000a4133]                           dc.b $1f
[000a4134]                           dc.w $ffff
[000a4136]                           dc.w $ffff
[000a4138]                           dc.b $00
[000a4139]                           dc.b $18
[000a413a]                           dc.b $00
[000a413b]                           dc.b $05
[000a413c]                           dc.b $00
[000a413d]                           dc.b $10
[000a413e] 000a1e00                  dc.l A_3DBUTTON03
[000a4142]                           dc.b $00
[000a4143]                           dc.b $01
[000a4144]                           dc.b $00
[000a4145]                           dc.b $01
[000a4146]                           dc.b $00
[000a4147]                           dc.b $0d
[000a4148]                           dc.b $00
[000a4149]                           dc.b $01
_29aEDIT_ICON:
[000a414a] 0001e3f6                  dc.l edic_newplane
[000a414e]                           dc.b $00
[000a414f]                           dc.b $00
[000a4150]                           dc.b $00
[000a4151]                           dc.b $00
[000a4152]                           dc.w $8000
[000a4154]                           dc.w $884c
[000a4156]                           dc.b $00
[000a4157]                           dc.b $00
[000a4158]                           dc.b $00
[000a4159]                           dc.b $00
[000a415a]                           dc.b $00
[000a415b]                           dc.b $00
[000a415c]                           dc.b $00
[000a415d]                           dc.b $00
[000a415e]                           dc.b $00
[000a415f]                           dc.b $00
[000a4160]                           dc.b $00
[000a4161]                           dc.b $00
_31_EDIT_ICON:
[000a4162]                           dc.b $00
[000a4163]                           dc.b $21
[000a4164]                           dc.w $ffff
[000a4166]                           dc.w $ffff
[000a4168]                           dc.b $00
[000a4169]                           dc.b $18
[000a416a]                           dc.b $00
[000a416b]                           dc.b $05
[000a416c]                           dc.b $00
[000a416d]                           dc.b $10
[000a416e] 000a1f40                  dc.l A_3DBUTTON14
[000a4172]                           dc.b $00
[000a4173]                           dc.b $01
[000a4174]                           dc.b $00
[000a4175]                           dc.b $03
[000a4176]                           dc.b $00
[000a4177]                           dc.b $0d
[000a4178]                           dc.b $00
[000a4179]                           dc.b $01
_31aEDIT_ICON:
[000a417a] 0001d570                  dc.l edic_select
[000a417e]                           dc.b $00
[000a417f]                           dc.b $00
[000a4180]                           dc.b $00
[000a4181]                           dc.b $00
[000a4182]                           dc.w $8000
[000a4184]                           dc.w $884b
[000a4186]                           dc.b $00
[000a4187]                           dc.b $00
[000a4188]                           dc.b $00
[000a4189]                           dc.b $00
[000a418a]                           dc.b $00
[000a418b]                           dc.b $00
[000a418c]                           dc.b $00
[000a418d]                           dc.b $00
[000a418e]                           dc.b $00
[000a418f]                           dc.b $00
[000a4190]                           dc.b $00
[000a4191]                           dc.b $00
_33_EDIT_ICON:
[000a4192]                           dc.b $00
[000a4193]                           dc.b $23
[000a4194]                           dc.w $ffff
[000a4196]                           dc.w $ffff
[000a4198]                           dc.b $00
[000a4199]                           dc.b $18
[000a419a]                           dc.b $00
[000a419b]                           dc.b $05
[000a419c]                           dc.b $00
[000a419d]                           dc.b $10
[000a419e] 000a1e60                  dc.l A_3DBUTTON06
[000a41a2]                           dc.b $00
[000a41a3]                           dc.b $0f
[000a41a4]                           dc.b $00
[000a41a5]                           dc.b $01
[000a41a6]                           dc.b $00
[000a41a7]                           dc.b $0d
[000a41a8]                           dc.b $00
[000a41a9]                           dc.b $01
_33aEDIT_ICON:
[000a41aa] 0001e9b6                  dc.l edic_delplane
[000a41ae]                           dc.b $00
[000a41af]                           dc.b $00
[000a41b0]                           dc.b $00
[000a41b1]                           dc.b $00
[000a41b2]                           dc.w $8000
[000a41b4]                           dc.w $8853
[000a41b6]                           dc.b $00
[000a41b7]                           dc.b $00
[000a41b8]                           dc.b $00
[000a41b9]                           dc.b $00
[000a41ba]                           dc.b $00
[000a41bb]                           dc.b $00
[000a41bc]                           dc.b $00
[000a41bd]                           dc.b $00
[000a41be]                           dc.b $00
[000a41bf]                           dc.b $00
[000a41c0]                           dc.b $00
[000a41c1]                           dc.b $00
_35_EDIT_ICON:
[000a41c2]                           dc.b $00
[000a41c3]                           dc.b $1c
[000a41c4]                           dc.w $ffff
[000a41c6]                           dc.w $ffff
[000a41c8]                           dc.b $00
[000a41c9]                           dc.b $18
[000a41ca]                           dc.b $00
[000a41cb]                           dc.b $05
[000a41cc]                           dc.b $00
[000a41cd]                           dc.b $00
[000a41ce] 000a1f00                  dc.l A_3DBUTTON12
[000a41d2]                           dc.b $00
[000a41d3]                           dc.b $0f
[000a41d4]                           dc.b $00
[000a41d5]                           dc.b $03
[000a41d6]                           dc.b $00
[000a41d7]                           dc.b $0d
[000a41d8]                           dc.b $00
[000a41d9]                           dc.b $01
_35aEDIT_ICON:
[000a41da] 0001ccd0                  dc.l edic_nextpattern
[000a41de]                           dc.b $00
[000a41df]                           dc.b $00
[000a41e0]                           dc.b $00
[000a41e1]                           dc.b $00
[000a41e2]                           dc.w $8000
[000a41e4]                           dc.b $00
[000a41e5]                           dc.b $00
[000a41e6]                           dc.b $00
[000a41e7]                           dc.b $00
[000a41e8]                           dc.b $00
[000a41e9]                           dc.b $00
[000a41ea]                           dc.b $00
[000a41eb]                           dc.b $00
[000a41ec]                           dc.b $00
[000a41ed]                           dc.b $00
[000a41ee]                           dc.b $00
[000a41ef]                           dc.b $00
[000a41f0]                           dc.b $00
[000a41f1]                           dc.b $00
_37_EDIT_ICON:
[000a41f2]                           dc.b $00
[000a41f3]                           dc.b $27
[000a41f4]                           dc.w $ffff
[000a41f6]                           dc.w $ffff
[000a41f8]                           dc.b $00
[000a41f9]                           dc.b $18
[000a41fa]                           dc.b $00
[000a41fb]                           dc.b $05
[000a41fc]                           dc.b $00
[000a41fd]                           dc.b $10
[000a41fe] 000a1de0                  dc.l A_3DBUTTON02
[000a4202]                           dc.b $00
[000a4203]                           dc.b $01
[000a4204]                           dc.b $00
[000a4205]                           dc.b $0e
[000a4206]                           dc.b $00
[000a4207]                           dc.b $0c
[000a4208]                           dc.b $00
[000a4209]                           dc.b $02
_37aEDIT_ICON:
[000a420a] 0001ef4c                  dc.l edic_edit
[000a420e]                           dc.b $00
[000a420f]                           dc.b $00
[000a4210]                           dc.b $00
[000a4211]                           dc.b $00
[000a4212]                           dc.w $8000
[000a4214]                           dc.w $8845
[000a4216]                           dc.b $00
[000a4217]                           dc.b $00
[000a4218]                           dc.b $00
[000a4219]                           dc.b $00
[000a421a]                           dc.b $00
[000a421b]                           dc.b $00
[000a421c]                           dc.b $00
[000a421d]                           dc.b $00
[000a421e]                           dc.b $00
[000a421f]                           dc.b $00
[000a4220]                           dc.b $00
[000a4221]                           dc.b $00
_39_EDIT_ICON:
[000a4222]                           dc.b $00
[000a4223]                           dc.b $29
[000a4224]                           dc.w $ffff
[000a4226]                           dc.w $ffff
[000a4228]                           dc.b $00
[000a4229]                           dc.b $18
[000a422a]                           dc.b $00
[000a422b]                           dc.b $05
[000a422c]                           dc.b $00
[000a422d]                           dc.b $10
[000a422e] 000a1ec0                  dc.l A_3DBUTTON10
[000a4232]                           dc.b $00
[000a4233]                           dc.b $0f
[000a4234]                           dc.b $00
[000a4235]                           dc.b $0e
[000a4236]                           dc.b $00
[000a4237]                           dc.b $0c
[000a4238]                           dc.b $00
[000a4239]                           dc.b $02
_39aEDIT_ICON:
[000a423a] 0001d33e                  dc.l edic_direct
[000a423e]                           dc.b $00
[000a423f]                           dc.b $00
[000a4240]                           dc.b $00
[000a4241]                           dc.b $00
[000a4242]                           dc.w $8000
[000a4244]                           dc.w $8855
[000a4246]                           dc.b $00
[000a4247]                           dc.b $00
[000a4248]                           dc.b $00
[000a4249]                           dc.b $00
[000a424a]                           dc.b $00
[000a424b]                           dc.b $00
[000a424c]                           dc.b $00
[000a424d]                           dc.b $00
[000a424e]                           dc.b $00
[000a424f]                           dc.b $00
[000a4250]                           dc.b $00
[000a4251]                           dc.b $00
_41_EDIT_ICON:
[000a4252]                           dc.b $00
[000a4253]                           dc.b $2b
[000a4254]                           dc.w $ffff
[000a4256]                           dc.w $ffff
[000a4258]                           dc.b $00
[000a4259]                           dc.b $18
[000a425a]                           dc.w $4007
[000a425c]                           dc.b $00
[000a425d]                           dc.b $10
[000a425e] 000a1f60                  dc.l A_3DBUTTON15
[000a4262]                           dc.b $00
[000a4263]                           dc.b $1d
[000a4264]                           dc.b $00
[000a4265]                           dc.b $0e
[000a4266]                           dc.b $00
[000a4267]                           dc.b $0c
[000a4268]                           dc.b $00
[000a4269]                           dc.b $02
_41aEDIT_ICON:
[000a426a] 0001e3d4                  dc.l edic_ok
[000a426e]                           dc.b $00
[000a426f]                           dc.b $00
[000a4270]                           dc.b $00
[000a4271]                           dc.b $00
[000a4272]                           dc.w $8000
[000a4274]                           dc.w $884f
[000a4276]                           dc.b $00
[000a4277]                           dc.b $00
[000a4278]                           dc.b $00
[000a4279]                           dc.b $00
[000a427a]                           dc.b $00
[000a427b]                           dc.b $00
[000a427c]                           dc.b $00
[000a427d]                           dc.b $00
[000a427e]                           dc.b $00
[000a427f]                           dc.b $00
[000a4280]                           dc.b $00
[000a4281]                           dc.b $00
_43_EDIT_ICON:
[000a4282]                           dc.b $00
[000a4283]                           dc.b $00
[000a4284]                           dc.w $ffff
[000a4286]                           dc.w $ffff
[000a4288]                           dc.b $00
[000a4289]                           dc.b $18
[000a428a]                           dc.w $4005
[000a428c]                           dc.b $00
[000a428d]                           dc.b $10
[000a428e] 000a1fa0                  dc.l A_3DBUTTON18
[000a4292]                           dc.b $00
[000a4293]                           dc.b $2b
[000a4294]                           dc.b $00
[000a4295]                           dc.b $0e
[000a4296]                           dc.b $00
[000a4297]                           dc.b $0c
[000a4298]                           dc.b $00
[000a4299]                           dc.b $02
_43aEDIT_ICON:
[000a429a] 0001e3c2                  dc.l edic_abort
[000a429e]                           dc.b $00
[000a429f]                           dc.b $00
[000a42a0]                           dc.b $00
[000a42a1]                           dc.b $00
[000a42a2]                           dc.w $8020
[000a42a4]                           dc.w $8841
[000a42a6]                           dc.b $00
[000a42a7]                           dc.b $00
[000a42a8]                           dc.b $00
[000a42a9]                           dc.b $00
[000a42aa]                           dc.b $00
[000a42ab]                           dc.b $00
[000a42ac]                           dc.b $00
[000a42ad]                           dc.b $00
[000a42ae]                           dc.b $00
[000a42af]                           dc.b $00
[000a42b0]                           dc.b $00
[000a42b1]                           dc.b $00
EDIT_ICON2:
[000a42b2]                           dc.w $ffff
[000a42b4]                           dc.b $00
[000a42b5]                           dc.b $01
[000a42b6]                           dc.b $00
[000a42b7]                           dc.b $1a
[000a42b8]                           dc.b $00
[000a42b9]                           dc.b $18
[000a42ba]                           dc.b $00
[000a42bb]                           dc.b $40
[000a42bc]                           dc.b $00
[000a42bd]                           dc.b $10
[000a42be] 000a1dc0                  dc.l A_3DBUTTON01
[000a42c2]                           dc.b $00
[000a42c3]                           dc.b $00
[000a42c4]                           dc.b $00
[000a42c5]                           dc.b $00
[000a42c6]                           dc.b $00
[000a42c7]                           dc.b $32
[000a42c8]                           dc.b $00
[000a42c9]                           dc.b $09
_01_EDIT_ICON2:
[000a42ca]                           dc.b $00
[000a42cb]                           dc.b $03
[000a42cc]                           dc.b $00
[000a42cd]                           dc.b $02
[000a42ce]                           dc.b $00
[000a42cf]                           dc.b $02
[000a42d0]                           dc.b $00
[000a42d1]                           dc.b $18
[000a42d2]                           dc.b $00
[000a42d3]                           dc.b $00
[000a42d4]                           dc.b $00
[000a42d5]                           dc.b $10
[000a42d6] 000a1f80                  dc.l A_3DBUTTON16
[000a42da]                           dc.b $00
[000a42db]                           dc.b $00
[000a42dc]                           dc.b $00
[000a42dd]                           dc.b $00
[000a42de]                           dc.b $00
[000a42df]                           dc.b $06
[000a42e0]                           dc.b $00
[000a42e1]                           dc.b $03
_02_EDIT_ICON2:
[000a42e2]                           dc.b $00
[000a42e3]                           dc.b $01
[000a42e4]                           dc.w $ffff
[000a42e6]                           dc.w $ffff
[000a42e8]                           dc.b $00
[000a42e9]                           dc.b $18
[000a42ea]                           dc.b $00
[000a42eb]                           dc.b $40
[000a42ec]                           dc.b $00
[000a42ed]                           dc.b $00
[000a42ee] 000a2180                  dc.l ICNCOL01
[000a42f2]                           dc.b $00
[000a42f3]                           dc.b $02
[000a42f4]                           dc.b $00
[000a42f5]                           dc.b $01
[000a42f6]                           dc.b $00
[000a42f7]                           dc.b $02
[000a42f8]                           dc.b $00
[000a42f9]                           dc.b $01
_03_EDIT_ICON2:
[000a42fa]                           dc.b $00
[000a42fb]                           dc.b $0a
[000a42fc]                           dc.b $00
[000a42fd]                           dc.b $04
[000a42fe]                           dc.b $00
[000a42ff]                           dc.b $08
[000a4300]                           dc.b $00
[000a4301]                           dc.b $18
[000a4302]                           dc.b $00
[000a4303]                           dc.b $40
[000a4304]                           dc.b $00
[000a4305]                           dc.b $00
[000a4306] 000a2100                  dc.l A_INNERFRAME05
[000a430a]                           dc.b $00
[000a430b]                           dc.b $06
[000a430c]                           dc.b $00
[000a430d]                           dc.b $00
[000a430e]                           dc.b $00
[000a430f]                           dc.b $0a
[000a4310]                           dc.b $00
[000a4311]                           dc.b $03
_04_EDIT_ICON2:
[000a4312]                           dc.b $00
[000a4313]                           dc.b $06
[000a4314]                           dc.w $ffff
[000a4316]                           dc.w $ffff
[000a4318]                           dc.b $00
[000a4319]                           dc.b $14
[000a431a]                           dc.b $00
[000a431b]                           dc.b $05
[000a431c]                           dc.b $00
[000a431d]                           dc.b $00
[000a431e]                           dc.b $00
[000a431f]                           dc.b $01
[000a4320]                           dc.w $1170
[000a4322]                           dc.b $00
[000a4323]                           dc.b $01
[000a4324]                           dc.b $00
[000a4325]                           dc.b $01
[000a4326]                           dc.b $00
[000a4327]                           dc.b $02
[000a4328]                           dc.b $00
[000a4329]                           dc.b $01
_04aEDIT_ICON2:
[000a432a] 0001cc46                  dc.l edic_white
[000a432e]                           dc.b $00
[000a432f]                           dc.b $00
[000a4330]                           dc.b $00
[000a4331]                           dc.b $00
[000a4332]                           dc.w $8000
[000a4334]                           dc.b $00
[000a4335]                           dc.b $57
[000a4336]                           dc.b $00
[000a4337]                           dc.b $00
[000a4338]                           dc.b $00
[000a4339]                           dc.b $00
[000a433a]                           dc.b $00
[000a433b]                           dc.b $00
[000a433c]                           dc.b $00
[000a433d]                           dc.b $00
[000a433e]                           dc.b $00
[000a433f]                           dc.b $00
[000a4340]                           dc.b $00
[000a4341]                           dc.b $00
_06_EDIT_ICON2:
[000a4342]                           dc.b $00
[000a4343]                           dc.b $08
[000a4344]                           dc.w $ffff
[000a4346]                           dc.w $ffff
[000a4348]                           dc.b $00
[000a4349]                           dc.b $14
[000a434a]                           dc.b $00
[000a434b]                           dc.b $05
[000a434c]                           dc.b $00
[000a434d]                           dc.b $00
[000a434e]                           dc.b $00
[000a434f]                           dc.b $01
[000a4350]                           dc.w $0171
[000a4352]                           dc.b $00
[000a4353]                           dc.b $04
[000a4354]                           dc.b $00
[000a4355]                           dc.b $01
[000a4356]                           dc.b $00
[000a4357]                           dc.b $02
[000a4358]                           dc.b $00
[000a4359]                           dc.b $01
_06aEDIT_ICON2:
[000a435a] 0001cbcc                  dc.l edic_black
[000a435e]                           dc.b $00
[000a435f]                           dc.b $00
[000a4360]                           dc.b $00
[000a4361]                           dc.b $00
[000a4362]                           dc.w $8000
[000a4364]                           dc.b $00
[000a4365]                           dc.b $53
[000a4366]                           dc.b $00
[000a4367]                           dc.b $00
[000a4368]                           dc.b $00
[000a4369]                           dc.b $00
[000a436a]                           dc.b $00
[000a436b]                           dc.b $00
[000a436c]                           dc.b $00
[000a436d]                           dc.b $00
[000a436e]                           dc.b $00
[000a436f]                           dc.b $00
[000a4370]                           dc.b $00
[000a4371]                           dc.b $00
_08_EDIT_ICON2:
[000a4372]                           dc.b $00
[000a4373]                           dc.b $03
[000a4374]                           dc.w $ffff
[000a4376]                           dc.w $ffff
[000a4378]                           dc.b $00
[000a4379]                           dc.b $14
[000a437a]                           dc.b $00
[000a437b]                           dc.b $05
[000a437c]                           dc.b $00
[000a437d]                           dc.b $00
[000a437e]                           dc.b $00
[000a437f]                           dc.b $01
[000a4380]                           dc.w $1141
[000a4382]                           dc.b $00
[000a4383]                           dc.b $07
[000a4384]                           dc.b $00
[000a4385]                           dc.b $01
[000a4386]                           dc.b $00
[000a4387]                           dc.b $02
[000a4388]                           dc.b $00
[000a4389]                           dc.b $01
_08aEDIT_ICON2:
[000a438a] 0001cc88                  dc.l edic_invisible
[000a438e]                           dc.b $00
[000a438f]                           dc.b $00
[000a4390]                           dc.b $00
[000a4391]                           dc.b $00
[000a4392]                           dc.w $8000
[000a4394]                           dc.b $00
[000a4395]                           dc.b $54
[000a4396]                           dc.b $00
[000a4397]                           dc.b $00
[000a4398]                           dc.b $00
[000a4399]                           dc.b $00
[000a439a]                           dc.b $00
[000a439b]                           dc.b $00
[000a439c]                           dc.b $00
[000a439d]                           dc.b $00
[000a439e]                           dc.b $00
[000a439f]                           dc.b $00
[000a43a0]                           dc.b $00
[000a43a1]                           dc.b $00
_10_EDIT_ICON2:
[000a43a2]                           dc.b $00
[000a43a3]                           dc.b $0f
[000a43a4]                           dc.b $00
[000a43a5]                           dc.b $0b
[000a43a6]                           dc.b $00
[000a43a7]                           dc.b $0d
[000a43a8]                           dc.b $00
[000a43a9]                           dc.b $18
[000a43aa]                           dc.b $00
[000a43ab]                           dc.b $40
[000a43ac]                           dc.b $00
[000a43ad]                           dc.b $00
[000a43ae] 000a2120                  dc.l A_INNERFRAME06
[000a43b2]                           dc.b $00
[000a43b3]                           dc.b $10
[000a43b4]                           dc.b $00
[000a43b5]                           dc.b $00
[000a43b6]                           dc.b $00
[000a43b7]                           dc.b $0a
[000a43b8]                           dc.b $00
[000a43b9]                           dc.b $03
_11_EDIT_ICON2:
[000a43ba]                           dc.b $00
[000a43bb]                           dc.b $0d
[000a43bc]                           dc.w $ffff
[000a43be]                           dc.w $ffff
[000a43c0]                           dc.b $00
[000a43c1]                           dc.b $15
[000a43c2]                           dc.b $00
[000a43c3]                           dc.b $05
[000a43c4]                           dc.b $00
[000a43c5]                           dc.b $00
[000a43c6] 000a1d88                  dc.l TEDINFO_01
[000a43ca]                           dc.b $00
[000a43cb]                           dc.b $01
[000a43cc]                           dc.b $00
[000a43cd]                           dc.b $01
[000a43ce]                           dc.b $00
[000a43cf]                           dc.b $05
[000a43d0]                           dc.b $00
[000a43d1]                           dc.b $01
_11aEDIT_ICON2:
[000a43d2] 0001caf0                  dc.l edic_thin
[000a43d6]                           dc.b $00
[000a43d7]                           dc.b $00
[000a43d8]                           dc.b $00
[000a43d9]                           dc.b $00
[000a43da]                           dc.w $8000
[000a43dc]                           dc.b $00
[000a43dd]                           dc.b $44
[000a43de]                           dc.b $00
[000a43df]                           dc.b $00
[000a43e0]                           dc.b $00
[000a43e1]                           dc.b $00
[000a43e2]                           dc.b $00
[000a43e3]                           dc.b $00
[000a43e4]                           dc.b $00
[000a43e5]                           dc.b $00
[000a43e6]                           dc.b $00
[000a43e7]                           dc.b $00
[000a43e8]                           dc.b $00
[000a43e9]                           dc.b $00
_13_EDIT_ICON2:
[000a43ea]                           dc.b $00
[000a43eb]                           dc.b $0a
[000a43ec]                           dc.w $ffff
[000a43ee]                           dc.w $ffff
[000a43f0]                           dc.b $00
[000a43f1]                           dc.b $15
[000a43f2]                           dc.b $00
[000a43f3]                           dc.b $05
[000a43f4]                           dc.b $00
[000a43f5]                           dc.b $00
[000a43f6] 000a1da4                  dc.l TEDINFO_02
[000a43fa]                           dc.b $00
[000a43fb]                           dc.b $05
[000a43fc]                           dc.b $00
[000a43fd]                           dc.b $01
[000a43fe]                           dc.b $00
[000a43ff]                           dc.b $04
[000a4400]                           dc.b $00
[000a4401]                           dc.b $01
_13aEDIT_ICON2:
[000a4402] 0001cb28                  dc.l edic_thick
[000a4406]                           dc.b $00
[000a4407]                           dc.b $00
[000a4408]                           dc.b $00
[000a4409]                           dc.b $00
[000a440a]                           dc.w $8000
[000a440c]                           dc.b $00
[000a440d]                           dc.b $46
[000a440e]                           dc.b $00
[000a440f]                           dc.b $00
[000a4410]                           dc.b $00
[000a4411]                           dc.b $00
[000a4412]                           dc.b $00
[000a4413]                           dc.b $00
[000a4414]                           dc.b $00
[000a4415]                           dc.b $00
[000a4416]                           dc.b $00
[000a4417]                           dc.b $00
[000a4418]                           dc.b $00
[000a4419]                           dc.b $00
_15_EDIT_ICON2:
[000a441a]                           dc.b $00
[000a441b]                           dc.b $18
[000a441c]                           dc.b $00
[000a441d]                           dc.b $10
[000a441e]                           dc.b $00
[000a441f]                           dc.b $16
[000a4420]                           dc.b $00
[000a4421]                           dc.b $18
[000a4422]                           dc.b $00
[000a4423]                           dc.b $40
[000a4424]                           dc.b $00
[000a4425]                           dc.b $00
[000a4426] 000a2140                  dc.l A_INNERFRAME07
[000a442a]                           dc.b $00
[000a442b]                           dc.b $1a
[000a442c]                           dc.b $00
[000a442d]                           dc.b $00
[000a442e]                           dc.b $00
[000a442f]                           dc.b $0a
[000a4430]                           dc.b $00
[000a4431]                           dc.b $03
_16_EDIT_ICON2:
[000a4432]                           dc.b $00
[000a4433]                           dc.b $12
[000a4434]                           dc.w $ffff
[000a4436]                           dc.w $ffff
[000a4438]                           dc.b $00
[000a4439]                           dc.b $1b
[000a443a]                           dc.b $00
[000a443b]                           dc.b $05
[000a443c]                           dc.b $00
[000a443d]                           dc.b $00
[000a443e]                           dc.w $0400
[000a4440]                           dc.w $1101
[000a4442]                           dc.b $00
[000a4443]                           dc.b $01
[000a4444]                           dc.b $00
[000a4445]                           dc.b $01
[000a4446]                           dc.b $00
[000a4447]                           dc.b $02
[000a4448]                           dc.b $00
[000a4449]                           dc.b $01
_16aEDIT_ICON2:
[000a444a] 0001d828                  dc.l edic_left
[000a444e]                           dc.b $00
[000a444f]                           dc.b $00
[000a4450]                           dc.b $00
[000a4451]                           dc.b $00
[000a4452]                           dc.w $8000
[000a4454]                           dc.w $8004
[000a4456]                           dc.b $00
[000a4457]                           dc.b $00
[000a4458]                           dc.b $00
[000a4459]                           dc.b $00
[000a445a]                           dc.b $00
[000a445b]                           dc.b $00
[000a445c]                           dc.b $00
[000a445d]                           dc.b $00
[000a445e]                           dc.b $00
[000a445f]                           dc.b $00
[000a4460]                           dc.b $00
[000a4461]                           dc.b $00
_18_EDIT_ICON2:
[000a4462]                           dc.b $00
[000a4463]                           dc.b $14
[000a4464]                           dc.w $ffff
[000a4466]                           dc.w $ffff
[000a4468]                           dc.b $00
[000a4469]                           dc.b $1b
[000a446a]                           dc.b $00
[000a446b]                           dc.b $05
[000a446c]                           dc.b $00
[000a446d]                           dc.b $00
[000a446e]                           dc.w $0100
[000a4470]                           dc.w $1101
[000a4472]                           dc.b $00
[000a4473]                           dc.b $03
[000a4474]                           dc.b $00
[000a4475]                           dc.b $01
[000a4476]                           dc.b $00
[000a4477]                           dc.b $02
[000a4478]                           dc.b $00
[000a4479]                           dc.b $01
_18aEDIT_ICON2:
[000a447a] 0001d7f2                  dc.l edic_up
[000a447e]                           dc.b $00
[000a447f]                           dc.b $00
[000a4480]                           dc.b $00
[000a4481]                           dc.b $00
[000a4482]                           dc.w $8000
[000a4484]                           dc.w $8001
[000a4486]                           dc.b $00
[000a4487]                           dc.b $00
[000a4488]                           dc.b $00
[000a4489]                           dc.b $00
[000a448a]                           dc.b $00
[000a448b]                           dc.b $00
[000a448c]                           dc.b $00
[000a448d]                           dc.b $00
[000a448e]                           dc.b $00
[000a448f]                           dc.b $00
[000a4490]                           dc.b $00
[000a4491]                           dc.b $00
_20_EDIT_ICON2:
[000a4492]                           dc.b $00
[000a4493]                           dc.b $16
[000a4494]                           dc.w $ffff
[000a4496]                           dc.w $ffff
[000a4498]                           dc.b $00
[000a4499]                           dc.b $1b
[000a449a]                           dc.b $00
[000a449b]                           dc.b $05
[000a449c]                           dc.b $00
[000a449d]                           dc.b $00
[000a449e]                           dc.w $0200
[000a44a0]                           dc.w $1101
[000a44a2]                           dc.b $00
[000a44a3]                           dc.b $05
[000a44a4]                           dc.b $00
[000a44a5]                           dc.b $01
[000a44a6]                           dc.b $00
[000a44a7]                           dc.b $02
[000a44a8]                           dc.b $00
[000a44a9]                           dc.b $01
_20aEDIT_ICON2:
[000a44aa] 0001d804                  dc.l edic_down
[000a44ae]                           dc.b $00
[000a44af]                           dc.b $00
[000a44b0]                           dc.b $00
[000a44b1]                           dc.b $00
[000a44b2]                           dc.w $8000
[000a44b4]                           dc.w $8002
[000a44b6]                           dc.b $00
[000a44b7]                           dc.b $00
[000a44b8]                           dc.b $00
[000a44b9]                           dc.b $00
[000a44ba]                           dc.b $00
[000a44bb]                           dc.b $00
[000a44bc]                           dc.b $00
[000a44bd]                           dc.b $00
[000a44be]                           dc.b $00
[000a44bf]                           dc.b $00
[000a44c0]                           dc.b $00
[000a44c1]                           dc.b $00
_22_EDIT_ICON2:
[000a44c2]                           dc.b $00
[000a44c3]                           dc.b $0f
[000a44c4]                           dc.w $ffff
[000a44c6]                           dc.w $ffff
[000a44c8]                           dc.b $00
[000a44c9]                           dc.b $1b
[000a44ca]                           dc.b $00
[000a44cb]                           dc.b $05
[000a44cc]                           dc.b $00
[000a44cd]                           dc.b $00
[000a44ce]                           dc.w $0300
[000a44d0]                           dc.w $1101
[000a44d2]                           dc.b $00
[000a44d3]                           dc.b $07
[000a44d4]                           dc.b $00
[000a44d5]                           dc.b $01
[000a44d6]                           dc.b $00
[000a44d7]                           dc.b $02
[000a44d8]                           dc.b $00
[000a44d9]                           dc.b $01
_22aEDIT_ICON2:
[000a44da] 0001d816                  dc.l edic_right
[000a44de]                           dc.b $00
[000a44df]                           dc.b $00
[000a44e0]                           dc.b $00
[000a44e1]                           dc.b $00
[000a44e2]                           dc.w $8000
[000a44e4]                           dc.w $8003
[000a44e6]                           dc.b $00
[000a44e7]                           dc.b $00
[000a44e8]                           dc.b $00
[000a44e9]                           dc.b $00
[000a44ea]                           dc.b $00
[000a44eb]                           dc.b $00
[000a44ec]                           dc.b $00
[000a44ed]                           dc.b $00
[000a44ee]                           dc.b $00
[000a44ef]                           dc.b $00
[000a44f0]                           dc.b $00
[000a44f1]                           dc.b $00
_24_EDIT_ICON2:
[000a44f2]                           dc.b $00
[000a44f3]                           dc.b $1a
[000a44f4]                           dc.w $ffff
[000a44f6]                           dc.w $ffff
[000a44f8]                           dc.b $00
[000a44f9]                           dc.b $18
[000a44fa]                           dc.b $00
[000a44fb]                           dc.b $07
[000a44fc]                           dc.b $00
[000a44fd]                           dc.b $10
[000a44fe] 000a1e80                  dc.l A_3DBUTTON07
[000a4502]                           dc.b $00
[000a4503]                           dc.b $25
[000a4504]                           dc.b $00
[000a4505]                           dc.b $01
[000a4506]                           dc.b $00
[000a4507]                           dc.b $0c
[000a4508]                           dc.b $00
[000a4509]                           dc.b $02
_24aEDIT_ICON2:
[000a450a] 0001f0dc                  dc.l edic_struct
[000a450e]                           dc.b $00
[000a450f]                           dc.b $00
[000a4510]                           dc.b $00
[000a4511]                           dc.b $00
[000a4512]                           dc.w $8000
[000a4514]                           dc.w $8853
[000a4516]                           dc.b $00
[000a4517]                           dc.b $00
[000a4518]                           dc.b $00
[000a4519]                           dc.b $00
[000a451a]                           dc.b $00
[000a451b]                           dc.b $00
[000a451c]                           dc.b $00
[000a451d]                           dc.b $00
[000a451e]                           dc.b $00
[000a451f]                           dc.b $00
[000a4520]                           dc.b $00
[000a4521]                           dc.b $00
_26_EDIT_ICON2:
[000a4522]                           dc.b $00
[000a4523]                           dc.b $00
[000a4524]                           dc.b $00
[000a4525]                           dc.b $1b
[000a4526]                           dc.b $00
[000a4527]                           dc.b $1b
[000a4528]                           dc.b $00
[000a4529]                           dc.b $18
[000a452a]                           dc.b $00
[000a452b]                           dc.b $00
[000a452c]                           dc.b $00
[000a452d]                           dc.b $10
[000a452e] 000a1ee0                  dc.l A_3DBUTTON11
[000a4532]                           dc.b $00
[000a4533]                           dc.b $02
[000a4534]                           dc.b $00
[000a4535]                           dc.b $04
[000a4536]                           dc.b $00
[000a4537]                           dc.b $0e
[000a4538]                           dc.b $00
[000a4539]                           dc.b $04
_27_EDIT_ICON2:
[000a453a]                           dc.b $00
[000a453b]                           dc.b $1a
[000a453c]                           dc.w $ffff
[000a453e]                           dc.w $ffff
[000a4540]                           dc.b $00
[000a4541]                           dc.b $18
[000a4542]                           dc.b $00
[000a4543]                           dc.b $40
[000a4544]                           dc.b $00
[000a4545]                           dc.b $00
[000a4546] 000a2160                  dc.l EDIC_BITMAP01
[000a454a]                           dc.b $00
[000a454b]                           dc.b $00
[000a454c]                           dc.b $00
[000a454d]                           dc.b $00
[000a454e]                           dc.b $00
[000a454f]                           dc.b $0e
[000a4550]                           dc.b $00
[000a4551]                           dc.b $04
_27aEDIT_ICON2:
[000a4552] 0001df84                  dc.l edic_set
[000a4556]                           dc.b $00
[000a4557]                           dc.b $00
[000a4558]                           dc.b $00
[000a4559]                           dc.b $00
[000a455a]                           dc.w $8020
[000a455c]                           dc.b $00
[000a455d]                           dc.b $00
[000a455e]                           dc.b $00
[000a455f]                           dc.b $00
[000a4560]                           dc.b $00
[000a4561]                           dc.b $00
[000a4562]                           dc.b $00
[000a4563]                           dc.b $00
[000a4564]                           dc.b $00
[000a4565]                           dc.b $00
[000a4566]                           dc.b $00
[000a4567]                           dc.b $08
[000a4568]                           dc.b $00
[000a4569]                           dc.b $00
IC_POS:
[000a456a]                           dc.w $ffff
[000a456c]                           dc.b $00
[000a456d]                           dc.b $01
[000a456e]                           dc.b $00
[000a456f]                           dc.b $01
[000a4570]                           dc.b $00
[000a4571]                           dc.b $19
[000a4572]                           dc.b $00
[000a4573]                           dc.b $00
[000a4574]                           dc.b $00
[000a4575]                           dc.b $00
[000a4576]                           dc.b $00
[000a4577]                           dc.b $ff
[000a4578]                           dc.w $1141
[000a457a]                           dc.b $00
[000a457b]                           dc.b $00
[000a457c]                           dc.b $00
[000a457d]                           dc.b $00
[000a457e]                           dc.b $00
[000a457f]                           dc.b $28
[000a4580]                           dc.b $00
[000a4581]                           dc.b $09
_01_IC_POS:
[000a4582]                           dc.b $00
[000a4583]                           dc.b $00
[000a4584]                           dc.b $00
[000a4585]                           dc.b $02
[000a4586]                           dc.b $00
[000a4587]                           dc.b $1f
[000a4588]                           dc.b $00
[000a4589]                           dc.b $18
[000a458a]                           dc.b $00
[000a458b]                           dc.b $40
[000a458c]                           dc.w $0510
[000a458e] 000a1ea0                  dc.l A_3DBUTTON08
[000a4592]                           dc.b $00
[000a4593]                           dc.b $00
[000a4594]                           dc.b $00
[000a4595]                           dc.b $00
[000a4596]                           dc.b $00
[000a4597]                           dc.b $28
[000a4598]                           dc.b $00
[000a4599]                           dc.b $09
_02_IC_POS:
[000a459a]                           dc.b $00
[000a459b]                           dc.b $03
[000a459c]                           dc.w $ffff
[000a459e]                           dc.w $ffff
[000a45a0]                           dc.b $00
[000a45a1]                           dc.b $1c
[000a45a2]                           dc.b $00
[000a45a3]                           dc.b $40
[000a45a4]                           dc.b $00
[000a45a5]                           dc.b $00
[000a45a6] 000a164e                  dc.l TEXT_22
[000a45aa]                           dc.b $00
[000a45ab]                           dc.b $08
[000a45ac]                           dc.b $00
[000a45ad]                           dc.b $01
[000a45ae]                           dc.b $00
[000a45af]                           dc.b $02
[000a45b0]                           dc.b $00
[000a45b1]                           dc.b $01
_03_IC_POS:
[000a45b2]                           dc.b $00
[000a45b3]                           dc.b $04
[000a45b4]                           dc.w $ffff
[000a45b6]                           dc.w $ffff
[000a45b8]                           dc.b $00
[000a45b9]                           dc.b $18
[000a45ba]                           dc.b $00
[000a45bb]                           dc.b $40
[000a45bc]                           dc.b $00
[000a45bd]                           dc.b $00
[000a45be] 000a2000                  dc.l A_ARROWS03
[000a45c2]                           dc.b $00
[000a45c3]                           dc.b $0b
[000a45c4]                           dc.b $00
[000a45c5]                           dc.b $01
[000a45c6]                           dc.b $00
[000a45c7]                           dc.b $01
[000a45c8]                           dc.b $00
[000a45c9]                           dc.b $01
_04_IC_POS:
[000a45ca]                           dc.b $00
[000a45cb]                           dc.b $05
[000a45cc]                           dc.w $ffff
[000a45ce]                           dc.w $ffff
[000a45d0]                           dc.b $00
[000a45d1]                           dc.b $1c
[000a45d2]                           dc.b $00
[000a45d3]                           dc.b $40
[000a45d4]                           dc.b $00
[000a45d5]                           dc.b $00
[000a45d6] 000a1602                  dc.l TEXT_11
[000a45da]                           dc.b $00
[000a45db]                           dc.b $0d
[000a45dc]                           dc.b $00
[000a45dd]                           dc.b $01
[000a45de]                           dc.b $00
[000a45df]                           dc.b $02
[000a45e0]                           dc.b $00
[000a45e1]                           dc.b $01
_05_IC_POS:
[000a45e2]                           dc.b $00
[000a45e3]                           dc.b $06
[000a45e4]                           dc.w $ffff
[000a45e6]                           dc.w $ffff
[000a45e8]                           dc.b $00
[000a45e9]                           dc.b $18
[000a45ea]                           dc.b $00
[000a45eb]                           dc.b $40
[000a45ec]                           dc.b $00
[000a45ed]                           dc.b $00
[000a45ee] 000a2000                  dc.l A_ARROWS03
[000a45f2]                           dc.b $00
[000a45f3]                           dc.b $10
[000a45f4]                           dc.b $00
[000a45f5]                           dc.b $01
[000a45f6]                           dc.b $00
[000a45f7]                           dc.b $01
[000a45f8]                           dc.b $00
[000a45f9]                           dc.b $01
_06_IC_POS:
[000a45fa]                           dc.b $00
[000a45fb]                           dc.b $07
[000a45fc]                           dc.w $ffff
[000a45fe]                           dc.w $ffff
[000a4600]                           dc.b $00
[000a4601]                           dc.b $1c
[000a4602]                           dc.b $00
[000a4603]                           dc.b $40
[000a4604]                           dc.b $00
[000a4605]                           dc.b $00
[000a4606] 000a1605                  dc.l TEXT_12
[000a460a]                           dc.b $00
[000a460b]                           dc.b $12
[000a460c]                           dc.b $00
[000a460d]                           dc.b $01
[000a460e]                           dc.b $00
[000a460f]                           dc.b $02
[000a4610]                           dc.b $00
[000a4611]                           dc.b $01
_07_IC_POS:
[000a4612]                           dc.b $00
[000a4613]                           dc.b $08
[000a4614]                           dc.w $ffff
[000a4616]                           dc.w $ffff
[000a4618]                           dc.b $00
[000a4619]                           dc.b $18
[000a461a]                           dc.b $00
[000a461b]                           dc.b $40
[000a461c]                           dc.b $00
[000a461d]                           dc.b $00
[000a461e] 000a2000                  dc.l A_ARROWS03
[000a4622]                           dc.b $00
[000a4623]                           dc.b $15
[000a4624]                           dc.b $00
[000a4625]                           dc.b $01
[000a4626]                           dc.b $00
[000a4627]                           dc.b $01
[000a4628]                           dc.b $00
[000a4629]                           dc.b $01
_08_IC_POS:
[000a462a]                           dc.b $00
[000a462b]                           dc.b $09
[000a462c]                           dc.w $ffff
[000a462e]                           dc.w $ffff
[000a4630]                           dc.b $00
[000a4631]                           dc.b $1c
[000a4632]                           dc.b $00
[000a4633]                           dc.b $40
[000a4634]                           dc.b $00
[000a4635]                           dc.b $00
[000a4636] 000a1608                  dc.l TEXT_13
[000a463a]                           dc.b $00
[000a463b]                           dc.b $17
[000a463c]                           dc.b $00
[000a463d]                           dc.b $01
[000a463e]                           dc.b $00
[000a463f]                           dc.b $02
[000a4640]                           dc.b $00
[000a4641]                           dc.b $01
_09_IC_POS:
[000a4642]                           dc.b $00
[000a4643]                           dc.b $0a
[000a4644]                           dc.w $ffff
[000a4646]                           dc.w $ffff
[000a4648]                           dc.b $00
[000a4649]                           dc.b $1c
[000a464a]                           dc.b $00
[000a464b]                           dc.b $00
[000a464c]                           dc.b $00
[000a464d]                           dc.b $00
[000a464e] 000a160b                  dc.l TEXT_14
[000a4652]                           dc.b $00
[000a4653]                           dc.b $01
[000a4654]                           dc.b $00
[000a4655]                           dc.b $02
[000a4656]                           dc.b $00
[000a4657]                           dc.b $05
[000a4658]                           dc.b $00
[000a4659]                           dc.b $01
_10_IC_POS:
[000a465a]                           dc.b $00
[000a465b]                           dc.b $19
[000a465c]                           dc.b $00
[000a465d]                           dc.b $0b
[000a465e]                           dc.b $00
[000a465f]                           dc.b $0b
[000a4660]                           dc.b $00
[000a4661]                           dc.b $18
[000a4662]                           dc.b $00
[000a4663]                           dc.b $40
[000a4664]                           dc.b $00
[000a4665]                           dc.b $00
[000a4666] 000a1e20                  dc.l A_3DBUTTON04
[000a466a]                           dc.b $00
[000a466b]                           dc.b $07
[000a466c]                           dc.b $00
[000a466d]                           dc.b $02
[000a466e]                           dc.b $00
[000a466f]                           dc.b $13
[000a4670]                           dc.b $00
[000a4671]                           dc.b $03
_11_IC_POS:
[000a4672]                           dc.b $00
[000a4673]                           dc.b $0a
[000a4674]                           dc.b $00
[000a4675]                           dc.b $0c
[000a4676]                           dc.b $00
[000a4677]                           dc.b $18
[000a4678]                           dc.b $00
[000a4679]                           dc.b $14
[000a467a]                           dc.b $00
[000a467b]                           dc.b $40
[000a467c]                           dc.b $00
[000a467d]                           dc.b $00
[000a467e]                           dc.b $00
[000a467f]                           dc.b $ff
[000a4680]                           dc.w $0101
[000a4682]                           dc.b $00
[000a4683]                           dc.b $00
[000a4684]                           dc.b $00
[000a4685]                           dc.b $00
[000a4686]                           dc.b $00
[000a4687]                           dc.b $13
[000a4688]                           dc.b $00
[000a4689]                           dc.b $03
_12_IC_POS:
[000a468a]                           dc.b $00
[000a468b]                           dc.b $0d
[000a468c]                           dc.w $ffff
[000a468e]                           dc.w $ffff
[000a4690]                           dc.b $00
[000a4691]                           dc.b $18
[000a4692]                           dc.b $00
[000a4693]                           dc.b $08
[000a4694]                           dc.b $00
[000a4695]                           dc.b $00
[000a4696] 000a2040                  dc.l A_BOXED03
[000a469a]                           dc.b $00
[000a469b]                           dc.b $00
[000a469c]                           dc.b $00
[000a469d]                           dc.b $00
[000a469e]                           dc.b $00
[000a469f]                           dc.b $04
[000a46a0]                           dc.b $00
[000a46a1]                           dc.b $01
_13_IC_POS:
[000a46a2]                           dc.b $00
[000a46a3]                           dc.b $0e
[000a46a4]                           dc.w $ffff
[000a46a6]                           dc.w $ffff
[000a46a8]                           dc.b $00
[000a46a9]                           dc.b $18
[000a46aa]                           dc.b $00
[000a46ab]                           dc.b $40
[000a46ac]                           dc.b $00
[000a46ad]                           dc.b $00
[000a46ae] 000a2000                  dc.l A_ARROWS03
[000a46b2]                           dc.b $00
[000a46b3]                           dc.b $04
[000a46b4]                           dc.b $00
[000a46b5]                           dc.b $00
[000a46b6]                           dc.b $00
[000a46b7]                           dc.b $01
[000a46b8]                           dc.b $00
[000a46b9]                           dc.b $03
_14_IC_POS:
[000a46ba]                           dc.b $00
[000a46bb]                           dc.b $0f
[000a46bc]                           dc.w $ffff
[000a46be]                           dc.w $ffff
[000a46c0]                           dc.b $00
[000a46c1]                           dc.b $18
[000a46c2]                           dc.b $00
[000a46c3]                           dc.b $08
[000a46c4]                           dc.b $00
[000a46c5]                           dc.b $00
[000a46c6] 000a2040                  dc.l A_BOXED03
[000a46ca]                           dc.b $00
[000a46cb]                           dc.b $05
[000a46cc]                           dc.b $00
[000a46cd]                           dc.b $00
[000a46ce]                           dc.b $00
[000a46cf]                           dc.b $04
[000a46d0]                           dc.b $00
[000a46d1]                           dc.b $01
_15_IC_POS:
[000a46d2]                           dc.b $00
[000a46d3]                           dc.b $10
[000a46d4]                           dc.w $ffff
[000a46d6]                           dc.w $ffff
[000a46d8]                           dc.b $00
[000a46d9]                           dc.b $18
[000a46da]                           dc.b $00
[000a46db]                           dc.b $40
[000a46dc]                           dc.b $00
[000a46dd]                           dc.b $00
[000a46de] 000a2000                  dc.l A_ARROWS03
[000a46e2]                           dc.b $00
[000a46e3]                           dc.b $09
[000a46e4]                           dc.b $00
[000a46e5]                           dc.b $00
[000a46e6]                           dc.b $00
[000a46e7]                           dc.b $01
[000a46e8]                           dc.b $00
[000a46e9]                           dc.b $03
_16_IC_POS:
[000a46ea]                           dc.b $00
[000a46eb]                           dc.b $11
[000a46ec]                           dc.w $ffff
[000a46ee]                           dc.w $ffff
[000a46f0]                           dc.b $00
[000a46f1]                           dc.b $18
[000a46f2]                           dc.b $00
[000a46f3]                           dc.b $40
[000a46f4]                           dc.b $00
[000a46f5]                           dc.b $00
[000a46f6] 000a2000                  dc.l A_ARROWS03
[000a46fa]                           dc.b $00
[000a46fb]                           dc.b $0e
[000a46fc]                           dc.b $00
[000a46fd]                           dc.b $00
[000a46fe]                           dc.b $00
[000a46ff]                           dc.b $01
[000a4700]                           dc.b $00
[000a4701]                           dc.b $03
_17_IC_POS:
[000a4702]                           dc.b $00
[000a4703]                           dc.b $12
[000a4704]                           dc.w $ffff
[000a4706]                           dc.w $ffff
[000a4708]                           dc.b $00
[000a4709]                           dc.b $18
[000a470a]                           dc.b $00
[000a470b]                           dc.b $08
[000a470c]                           dc.b $00
[000a470d]                           dc.b $00
[000a470e] 000a2040                  dc.l A_BOXED03
[000a4712]                           dc.b $00
[000a4713]                           dc.b $00
[000a4714]                           dc.b $00
[000a4715]                           dc.b $01
[000a4716]                           dc.b $00
[000a4717]                           dc.b $04
[000a4718]                           dc.b $00
[000a4719]                           dc.b $01
_18_IC_POS:
[000a471a]                           dc.b $00
[000a471b]                           dc.b $13
[000a471c]                           dc.w $ffff
[000a471e]                           dc.w $ffff
[000a4720]                           dc.b $00
[000a4721]                           dc.b $18
[000a4722]                           dc.b $00
[000a4723]                           dc.b $08
[000a4724]                           dc.b $00
[000a4725]                           dc.b $00
[000a4726] 000a2040                  dc.l A_BOXED03
[000a472a]                           dc.b $00
[000a472b]                           dc.b $05
[000a472c]                           dc.b $00
[000a472d]                           dc.b $01
[000a472e]                           dc.b $00
[000a472f]                           dc.b $04
[000a4730]                           dc.b $00
[000a4731]                           dc.b $01
_19_IC_POS:
[000a4732]                           dc.b $00
[000a4733]                           dc.b $14
[000a4734]                           dc.w $ffff
[000a4736]                           dc.w $ffff
[000a4738]                           dc.b $00
[000a4739]                           dc.b $18
[000a473a]                           dc.b $00
[000a473b]                           dc.b $08
[000a473c]                           dc.b $00
[000a473d]                           dc.b $00
[000a473e] 000a2040                  dc.l A_BOXED03
[000a4742]                           dc.b $00
[000a4743]                           dc.b $0a
[000a4744]                           dc.b $00
[000a4745]                           dc.b $01
[000a4746]                           dc.b $00
[000a4747]                           dc.b $04
[000a4748]                           dc.b $00
[000a4749]                           dc.b $01
_20_IC_POS:
[000a474a]                           dc.b $00
[000a474b]                           dc.b $15
[000a474c]                           dc.w $ffff
[000a474e]                           dc.w $ffff
[000a4750]                           dc.b $00
[000a4751]                           dc.b $18
[000a4752]                           dc.b $00
[000a4753]                           dc.b $08
[000a4754]                           dc.b $00
[000a4755]                           dc.b $00
[000a4756] 000a2040                  dc.l A_BOXED03
[000a475a]                           dc.b $00
[000a475b]                           dc.b $0f
[000a475c]                           dc.b $00
[000a475d]                           dc.b $01
[000a475e]                           dc.b $00
[000a475f]                           dc.b $04
[000a4760]                           dc.b $00
[000a4761]                           dc.b $01
_21_IC_POS:
[000a4762]                           dc.b $00
[000a4763]                           dc.b $16
[000a4764]                           dc.w $ffff
[000a4766]                           dc.w $ffff
[000a4768]                           dc.b $00
[000a4769]                           dc.b $18
[000a476a]                           dc.b $00
[000a476b]                           dc.b $08
[000a476c]                           dc.b $00
[000a476d]                           dc.b $00
[000a476e] 000a2080                  dc.l A_BOXED06
[000a4772]                           dc.b $00
[000a4773]                           dc.b $00
[000a4774]                           dc.b $00
[000a4775]                           dc.b $02
[000a4776]                           dc.b $00
[000a4777]                           dc.b $04
[000a4778]                           dc.b $00
[000a4779]                           dc.b $01
_22_IC_POS:
[000a477a]                           dc.b $00
[000a477b]                           dc.b $17
[000a477c]                           dc.w $ffff
[000a477e]                           dc.w $ffff
[000a4780]                           dc.b $00
[000a4781]                           dc.b $18
[000a4782]                           dc.b $00
[000a4783]                           dc.b $08
[000a4784]                           dc.b $00
[000a4785]                           dc.b $00
[000a4786] 000a2080                  dc.l A_BOXED06
[000a478a]                           dc.b $00
[000a478b]                           dc.b $05
[000a478c]                           dc.b $00
[000a478d]                           dc.b $02
[000a478e]                           dc.b $00
[000a478f]                           dc.b $04
[000a4790]                           dc.b $00
[000a4791]                           dc.b $01
_23_IC_POS:
[000a4792]                           dc.b $00
[000a4793]                           dc.b $18
[000a4794]                           dc.w $ffff
[000a4796]                           dc.w $ffff
[000a4798]                           dc.b $00
[000a4799]                           dc.b $18
[000a479a]                           dc.b $00
[000a479b]                           dc.b $08
[000a479c]                           dc.b $00
[000a479d]                           dc.b $00
[000a479e] 000a2040                  dc.l A_BOXED03
[000a47a2]                           dc.b $00
[000a47a3]                           dc.b $0a
[000a47a4]                           dc.b $00
[000a47a5]                           dc.b $02
[000a47a6]                           dc.b $00
[000a47a7]                           dc.b $04
[000a47a8]                           dc.b $00
[000a47a9]                           dc.b $01
_24_IC_POS:
[000a47aa]                           dc.b $00
[000a47ab]                           dc.b $0b
[000a47ac]                           dc.w $ffff
[000a47ae]                           dc.w $ffff
[000a47b0]                           dc.b $00
[000a47b1]                           dc.b $18
[000a47b2]                           dc.b $00
[000a47b3]                           dc.b $08
[000a47b4]                           dc.b $00
[000a47b5]                           dc.b $00
[000a47b6] 000a2040                  dc.l A_BOXED03
[000a47ba]                           dc.b $00
[000a47bb]                           dc.b $0f
[000a47bc]                           dc.b $00
[000a47bd]                           dc.b $02
[000a47be]                           dc.b $00
[000a47bf]                           dc.b $04
[000a47c0]                           dc.b $00
[000a47c1]                           dc.b $01
_25_IC_POS:
[000a47c2]                           dc.b $00
[000a47c3]                           dc.b $1a
[000a47c4]                           dc.w $ffff
[000a47c6]                           dc.w $ffff
[000a47c8]                           dc.b $00
[000a47c9]                           dc.b $1c
[000a47ca]                           dc.b $00
[000a47cb]                           dc.b $00
[000a47cc]                           dc.b $00
[000a47cd]                           dc.b $00
[000a47ce] 000a1611                  dc.l TEXT_15
[000a47d2]                           dc.b $00
[000a47d3]                           dc.b $01
[000a47d4]                           dc.b $00
[000a47d5]                           dc.b $03
[000a47d6]                           dc.b $00
[000a47d7]                           dc.b $05
[000a47d8]                           dc.b $00
[000a47d9]                           dc.b $01
_26_IC_POS:
[000a47da]                           dc.b $00
[000a47db]                           dc.b $1c
[000a47dc]                           dc.w $ffff
[000a47de]                           dc.w $ffff
[000a47e0]                           dc.b $00
[000a47e1]                           dc.b $18
[000a47e2]                           dc.b $00
[000a47e3]                           dc.b $05
[000a47e4]                           dc.b $00
[000a47e5]                           dc.b $10
[000a47e6] 000a1e40                  dc.l A_3DBUTTON05
[000a47ea]                           dc.b $00
[000a47eb]                           dc.b $1b
[000a47ec]                           dc.b $00
[000a47ed]                           dc.b $03
[000a47ee]                           dc.b $00
[000a47ef]                           dc.b $0c
[000a47f0]                           dc.b $00
[000a47f1]                           dc.b $02
_26aIC_POS:
[000a47f2] 0001d242                  dc.l edic_deskicon
[000a47f6]                           dc.b $00
[000a47f7]                           dc.b $00
[000a47f8]                           dc.b $00
[000a47f9]                           dc.b $00
[000a47fa]                           dc.w $8000
[000a47fc]                           dc.w $8844
[000a47fe]                           dc.b $00
[000a47ff]                           dc.b $00
[000a4800]                           dc.b $00
[000a4801]                           dc.b $00
[000a4802]                           dc.b $00
[000a4803]                           dc.b $00
[000a4804]                           dc.b $00
[000a4805]                           dc.b $00
[000a4806]                           dc.b $00
[000a4807]                           dc.b $00
[000a4808]                           dc.b $00
[000a4809]                           dc.b $00
_28_IC_POS:
[000a480a]                           dc.b $00
[000a480b]                           dc.b $1d
[000a480c]                           dc.w $ffff
[000a480e]                           dc.w $ffff
[000a4810]                           dc.b $00
[000a4811]                           dc.b $1c
[000a4812]                           dc.b $00
[000a4813]                           dc.b $00
[000a4814]                           dc.b $00
[000a4815]                           dc.b $00
[000a4816] 000a1617                  dc.l TEXT_16
[000a481a]                           dc.b $00
[000a481b]                           dc.b $01
[000a481c]                           dc.b $00
[000a481d]                           dc.b $04
[000a481e]                           dc.b $00
[000a481f]                           dc.b $05
[000a4820]                           dc.b $00
[000a4821]                           dc.b $01
_29_IC_POS:
[000a4822]                           dc.b $00
[000a4823]                           dc.b $1f
[000a4824]                           dc.w $ffff
[000a4826]                           dc.w $ffff
[000a4828]                           dc.b $00
[000a4829]                           dc.b $18
[000a482a]                           dc.w $4007
[000a482c]                           dc.b $00
[000a482d]                           dc.b $10
[000a482e] 000a1f60                  dc.l A_3DBUTTON15
[000a4832]                           dc.b $00
[000a4833]                           dc.b $07
[000a4834]                           dc.b $00
[000a4835]                           dc.b $06
[000a4836]                           dc.b $00
[000a4837]                           dc.b $0c
[000a4838]                           dc.b $00
[000a4839]                           dc.b $02
_29aIC_POS:
[000a483a]                           dc.b $00
[000a483b]                           dc.b $00
[000a483c]                           dc.b $00
[000a483d]                           dc.b $00
[000a483e]                           dc.b $00
[000a483f]                           dc.b $00
[000a4840]                           dc.b $00
[000a4841]                           dc.b $00
[000a4842]                           dc.w $8000
[000a4844]                           dc.w $884f
[000a4846]                           dc.b $00
[000a4847]                           dc.b $00
[000a4848]                           dc.b $00
[000a4849]                           dc.b $00
[000a484a]                           dc.b $00
[000a484b]                           dc.b $00
[000a484c]                           dc.b $00
[000a484d]                           dc.b $00
[000a484e]                           dc.b $00
[000a484f]                           dc.b $00
[000a4850]                           dc.b $00
[000a4851]                           dc.b $00
_31_IC_POS:
[000a4852]                           dc.b $00
[000a4853]                           dc.b $01
[000a4854]                           dc.w $ffff
[000a4856]                           dc.w $ffff
[000a4858]                           dc.b $00
[000a4859]                           dc.b $18
[000a485a]                           dc.w $4005
[000a485c]                           dc.b $00
[000a485d]                           dc.b $10
[000a485e] 000a1fa0                  dc.l A_3DBUTTON18
[000a4862]                           dc.b $00
[000a4863]                           dc.b $15
[000a4864]                           dc.b $00
[000a4865]                           dc.b $06
[000a4866]                           dc.b $00
[000a4867]                           dc.b $0c
[000a4868]                           dc.b $00
[000a4869]                           dc.b $02
_31aIC_POS:
[000a486a]                           dc.b $00
[000a486b]                           dc.b $00
[000a486c]                           dc.b $00
[000a486d]                           dc.b $00
[000a486e]                           dc.b $00
[000a486f]                           dc.b $00
[000a4870]                           dc.b $00
[000a4871]                           dc.b $00
[000a4872]                           dc.w $8020
[000a4874]                           dc.w $8841
[000a4876]                           dc.b $00
[000a4877]                           dc.b $00
[000a4878]                           dc.b $00
[000a4879]                           dc.b $00
[000a487a]                           dc.b $00
[000a487b]                           dc.b $00
[000a487c]                           dc.b $00
[000a487d]                           dc.b $00
[000a487e]                           dc.b $00
[000a487f]                           dc.b $00
[000a4880]                           dc.b $00
[000a4881]                           dc.b $00
WI_ICON:
[000a4882]                           dc.b $00
[000a4883]                           dc.b $00
[000a4884]                           dc.b $00
[000a4885]                           dc.b $00
[000a4886] 0001f492                  dc.l ic_service
[000a488a] 0001f39c                  dc.l ic_make
[000a488e] 0004f69e                  dc.l Awi_open
[000a4892] 0004e610                  dc.l Awi_init
[000a4896] 000a3e7a                  dc.l EDIT_ICON
[000a489a]                           dc.b $00
[000a489b]                           dc.b $00
[000a489c]                           dc.b $00
[000a489d]                           dc.b $00
[000a489e]                           dc.b $00
[000a489f]                           dc.b $00
[000a48a0]                           dc.b $00
[000a48a1]                           dc.b $00
[000a48a2]                           dc.w $ffff
[000a48a4]                           dc.w $601f
[000a48a6]                           dc.b $00
[000a48a7]                           dc.b $00
[000a48a8]                           dc.b $00
[000a48a9]                           dc.b $00
[000a48aa]                           dc.b $00
[000a48ab]                           dc.b $63
[000a48ac]                           dc.b $00
[000a48ad]                           dc.b $63
[000a48ae]                           dc.b $00
[000a48af]                           dc.b $00
[000a48b0]                           dc.b $00
[000a48b1]                           dc.b $00
[000a48b2]                           dc.b $00
[000a48b3]                           dc.b $00
[000a48b4]                           dc.b $00
[000a48b5]                           dc.b $00
[000a48b6]                           dc.b $00
[000a48b7]                           dc.b $00
[000a48b8]                           dc.b $00
[000a48b9]                           dc.b $00
[000a48ba]                           dc.b $00
[000a48bb]                           dc.b $00
[000a48bc]                           dc.b $00
[000a48bd]                           dc.b $00
[000a48be]                           dc.w $ffff
[000a48c0]                           dc.w $ffff
[000a48c2]                           dc.w $ffff
[000a48c4]                           dc.w $ffff
[000a48c6]                           dc.b $00
[000a48c7]                           dc.b $00
[000a48c8]                           dc.b $00
[000a48c9]                           dc.b $00
[000a48ca]                           dc.w $fcf8
[000a48cc] 000a161d                  dc.l TEXT_17
[000a48d0] 000a1591                  dc.l TEXT_002
[000a48d4]                           dc.w $2710
[000a48d6]                           dc.w $0100
[000a48d8]                           dc.b $00
[000a48d9]                           dc.b $00
[000a48da]                           dc.w $ffff
[000a48dc] 000a24a4                  dc.l IC_ICON
[000a48e0]                           dc.b $00
[000a48e1]                           dc.b $00
[000a48e2]                           dc.b $00
[000a48e3]                           dc.b $00
[000a48e4] 0001f342                  dc.l ic_keys
[000a48e8] 0004b600                  dc.l Awi_obchange
[000a48ec] 0004b8cc                  dc.l Awi_redraw
[000a48f0] 00050454                  dc.l Awi_topped
[000a48f4] 0005013e                  dc.l Awi_closed
[000a48f8] 00050496                  dc.l Awi_fulled
[000a48fc] 0004bcc8                  dc.l Awi_arrowed
[000a4900] 0004beea                  dc.l Awi_hslid
[000a4904] 0004bf56                  dc.l Awi_vslid
[000a4908] 000506ca                  dc.l Awi_sized
[000a490c] 000507bc                  dc.l Awi_moved
[000a4910] 00050f9c                  dc.l Awi_iconify
[000a4914] 0005117c                  dc.l Awi_uniconify
[000a4918] 00052328                  dc.l Awi_gemscript
[000a491c]                           dc.b $00
[000a491d]                           dc.b $00
[000a491e]                           dc.b $00
[000a491f]                           dc.b $00
[000a4920]                           dc.b $00
[000a4921]                           dc.b $00
[000a4922]                           dc.b $00
[000a4923]                           dc.b $00
WI_POS:
[000a4924]                           dc.b $00
[000a4925]                           dc.b $00
[000a4926]                           dc.b $00
[000a4927]                           dc.b $00
[000a4928] 00051276                  dc.l Awi_service
[000a492c] 0004f0ee                  dc.l Awi_selfcreate
[000a4930] 0004f69e                  dc.l Awi_open
[000a4934] 0004e610                  dc.l Awi_init
[000a4938] 000a456a                  dc.l IC_POS
[000a493c]                           dc.b $00
[000a493d]                           dc.b $00
[000a493e]                           dc.b $00
[000a493f]                           dc.b $00
[000a4940]                           dc.b $00
[000a4941]                           dc.b $00
[000a4942]                           dc.b $00
[000a4943]                           dc.b $00
[000a4944]                           dc.w $ffff
[000a4946]                           dc.w $200b
[000a4948]                           dc.b $00
[000a4949]                           dc.b $00
[000a494a]                           dc.b $00
[000a494b]                           dc.b $00
[000a494c]                           dc.b $00
[000a494d]                           dc.b $78
[000a494e]                           dc.b $00
[000a494f]                           dc.b $32
[000a4950]                           dc.b $00
[000a4951]                           dc.b $00
[000a4952]                           dc.b $00
[000a4953]                           dc.b $00
[000a4954]                           dc.b $00
[000a4955]                           dc.b $00
[000a4956]                           dc.b $00
[000a4957]                           dc.b $00
[000a4958]                           dc.b $00
[000a4959]                           dc.b $00
[000a495a]                           dc.b $00
[000a495b]                           dc.b $00
[000a495c]                           dc.b $00
[000a495d]                           dc.b $00
[000a495e]                           dc.b $00
[000a495f]                           dc.b $00
[000a4960]                           dc.w $ffff
[000a4962]                           dc.w $ffff
[000a4964]                           dc.w $ffff
[000a4966]                           dc.w $ffff
[000a4968]                           dc.b $00
[000a4969]                           dc.b $00
[000a496a]                           dc.b $00
[000a496b]                           dc.b $00
[000a496c]                           dc.w $f8f8
[000a496e] 000a165c                  dc.l TEXT_24
[000a4972] 000a1591                  dc.l TEXT_002
[000a4976]                           dc.w $2710
[000a4978]                           dc.b $00
[000a4979]                           dc.b $00
[000a497a]                           dc.b $00
[000a497b]                           dc.b $00
[000a497c]                           dc.w $ffff
[000a497e]                           dc.b $00
[000a497f]                           dc.b $00
[000a4980]                           dc.b $00
[000a4981]                           dc.b $00
[000a4982]                           dc.b $00
[000a4983]                           dc.b $00
[000a4984]                           dc.b $00
[000a4985]                           dc.b $00
[000a4986] 0005ef2c                  dc.l Awi_keys
[000a498a] 0004b600                  dc.l Awi_obchange
[000a498e] 0004b8cc                  dc.l Awi_redraw
[000a4992] 00050454                  dc.l Awi_topped
[000a4996] 0005013e                  dc.l Awi_closed
[000a499a] 00050496                  dc.l Awi_fulled
[000a499e] 0004bcc8                  dc.l Awi_arrowed
[000a49a2] 0004beea                  dc.l Awi_hslid
[000a49a6] 0004bf56                  dc.l Awi_vslid
[000a49aa] 000506ca                  dc.l Awi_sized
[000a49ae] 000507bc                  dc.l Awi_moved
[000a49b2] 00050f9c                  dc.l Awi_iconify
[000a49b6] 0005117c                  dc.l Awi_uniconify
[000a49ba] 00052328                  dc.l Awi_gemscript
[000a49be]                           dc.b $00
[000a49bf]                           dc.b $00
[000a49c0]                           dc.b $00
[000a49c1]                           dc.b $00
[000a49c2]                           dc.b $00
[000a49c3]                           dc.b $00
[000a49c4]                           dc.b $00
[000a49c5]                           dc.b $00
plane_brush:
[000a49c6]                           dc.w $ffff
[000a49c8]                           dc.w $ffff
[000a49ca]                           dc.w $ffff
brush:
[000a49cc] 000a49c6                  dc.l plane_brush
[000a49d0]                           dc.b $00
[000a49d1]                           dc.b $10
[000a49d2]                           dc.b $00
[000a49d3]                           dc.b $03
[000a49d4]                           dc.b $00
[000a49d5]                           dc.b $01
[000a49d6]                           dc.b $00
[000a49d7]                           dc.b $00
[000a49d8]                           dc.b $00
[000a49d9]                           dc.b $01
[000a49da]                           dc.b $00
[000a49db]                           dc.b $00
[000a49dc]                           dc.b $00
[000a49dd]                           dc.b $00
[000a49de]                           dc.b $00
[000a49df]                           dc.b $00
[000a49e0]                           dc.b $00
[000a49e1]                           dc.b $00
[000a49e2]                           dc.b $00
[000a49e3]                           dc.b $00
[000a49e4]                           dc.b $00
[000a49e5]                           dc.b $00
[000a49e6]                           dc.b $00
[000a49e7]                           dc.b $00
[000a49e8]                           dc.b $00
[000a49e9]                           dc.b $00
[000a49ea]                           dc.b $00
[000a49eb]                           dc.b $00
[000a49ec]                           dc.b $00
[000a49ed]                           dc.b $00
[000a49ee]                           dc.b $00
[000a49ef]                           dc.b $00
[000a49f0]                           dc.b $00
[000a49f1]                           dc.b $01
[000a49f2]                           dc.b $00
[000a49f3]                           dc.b $00
[000a49f4]                           dc.b $00
[000a49f5]                           dc.b $00
[000a49f6]                           dc.b $00
[000a49f7]                           dc.b $00
[000a49f8]                           dc.b $00
[000a49f9]                           dc.b $01
[000a49fa]                           dc.b $00
[000a49fb]                           dc.b $00
[000a49fc]                           dc.w $2000
[000a49fe]                           dc.w $2564
[000a4a00]                           dc.b $00
[000a4a01]                           dc.b $30
[000a4a02]                           dc.b $00
[000a4a03]                           dc.b $33
[000a4a04]                           dc.w $3200
[000a4a06]                           dc.w $3732
[000a4a08]                           dc.b $00
[000a4a09]                           dc.b $38
[000a4a0a]                           dc.b $00
[000a4a0b]                           dc.b $00

	.bss

to2plane: ds.w 24
toplane: ds.w 24
zoomplane: ds.b 6144
zoom2plane: ds.b 6144
