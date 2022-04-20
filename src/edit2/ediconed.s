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
[0001c72c] 4eb9 0002 f280            jsr        $0002F280
[0001c732] 544f                      addq.w     #2,a7
[0001c734] 3600                      move.w     d0,d3
[0001c736] 6b2a                      bmi.s      $0001C762
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
[0001c790] 4eb9 0002 f280            jsr        $0002F280
[0001c796] 544f                      addq.w     #2,a7
[0001c798] 3600                      move.w     d0,d3
[0001c79a] 6b2c                      bmi.s      $0001C7C8
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
[0001c7e0] 4eb9 0006 7136            jsr        $00067136
[0001c7e6] 0c57 01f4                 cmpi.w     #$01F4,(a7)
[0001c7ea] 6c14                      bge.s      $0001C800
[0001c7ec] 0c6f 0190 0002            cmpi.w     #$0190,2(a7)
[0001c7f2] 6c0c                      bge.s      $0001C800
[0001c7f4] 0c6f 0258 0004            cmpi.w     #$0258,4(a7)
[0001c7fa] 6c04                      bge.s      $0001C800
[0001c7fc] 4240                      clr.w      d0
[0001c7fe] 6002                      bra.s      $0001C802
[0001c800] 7001                      moveq.l    #1,d0
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
[0001c81e] 660e                      bne.s      $0001C82E
[0001c820] 2f0a                      move.l     a2,-(a7)
[0001c822] 204b                      movea.l    a3,a0
[0001c824] 4eb9 0001 4a3e            jsr        $00014A3E
[0001c82a] 584f                      addq.w     #4,a7
[0001c82c] 6048                      bra.s      $0001C876
[0001c82e] 780f                      moveq.l    #15,d4
[0001c830] d86a 0016                 add.w      22(a2),d4
[0001c834] c87c fff0                 and.w      #$FFF0,d4
[0001c838] c9ea 0018                 muls.w     24(a2),d4
[0001c83c] e644                      asr.w      #3,d4
[0001c83e] 48c4                      ext.l      d4
[0001c840] 2004                      move.l     d4,d0
[0001c842] 3203                      move.w     d3,d1
[0001c844] 48c1                      ext.l      d1
[0001c846] 4eb9 0007 76f0            jsr        $000776F0
[0001c84c] 2800                      move.l     d0,d4
[0001c84e] 7006                      moveq.l    #6,d0
[0001c850] d084                      add.l      d4,d0
[0001c852] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001c858] 2848                      movea.l    a0,a4
[0001c85a] 200c                      move.l     a4,d0
[0001c85c] 6604                      bne.s      $0001C862
[0001c85e] 91c8                      suba.l     a0,a0
[0001c860] 6014                      bra.s      $0001C876
[0001c862] 2004                      move.l     d4,d0
[0001c864] 43eb 0006                 lea.l      6(a3),a1
[0001c868] 41ec 0006                 lea.l      6(a4),a0
[0001c86c] 4eb9 0007 6f44            jsr        $00076F44
[0001c872] 41ec 0006                 lea.l      6(a4),a0
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
[0001c89e] 670c                      beq.s      $0001C8AC
[0001c8a0] 7201                      moveq.l    #1,d1
[0001c8a2] 3341 000a                 move.w     d1,10(a1)
[0001c8a6] 3141 000a                 move.w     d1,10(a0)
[0001c8aa] 600a                      bra.s      $0001C8B6
[0001c8ac] 4240                      clr.w      d0
[0001c8ae] 3340 000a                 move.w     d0,10(a1)
[0001c8b2] 3140 000a                 move.w     d0,10(a0)
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
[0001c918] 6626                      bne.s      $0001C940
[0001c91a] 316b 001c 000c            move.w     28(a3),12(a0)
[0001c920] 202c 0022                 move.l     34(a4),d0
[0001c924] 6712                      beq.s      $0001C938
[0001c926] 7201                      moveq.l    #1,d1
[0001c928] c26a 000a                 and.w      10(a2),d1
[0001c92c] 670a                      beq.s      $0001C938
[0001c92e] 22ac 0026                 move.l     38(a4),(a1)
[0001c932] 20ac 0022                 move.l     34(a4),(a0)
[0001c936] 6008                      bra.s      $0001C940
[0001c938] 22ac 001e                 move.l     30(a4),(a1)
[0001c93c] 20ac 001a                 move.l     26(a4),(a0)
[0001c940] 302c 002e                 move.w     46(a4),d0
[0001c944] 2679 0010 1f12            movea.l    ACSblk,a3
[0001c94a] b06b 001c                 cmp.w      28(a3),d0
[0001c94e] 6626                      bne.s      $0001C976
[0001c950] 316b 001c 000c            move.w     28(a3),12(a0)
[0001c956] 202c 0038                 move.l     56(a4),d0
[0001c95a] 6712                      beq.s      $0001C96E
[0001c95c] 7201                      moveq.l    #1,d1
[0001c95e] c26a 000a                 and.w      10(a2),d1
[0001c962] 670a                      beq.s      $0001C96E
[0001c964] 22ac 003c                 move.l     60(a4),(a1)
[0001c968] 20ac 0038                 move.l     56(a4),(a0)
[0001c96c] 6008                      bra.s      $0001C976
[0001c96e] 22ac 0034                 move.l     52(a4),(a1)
[0001c972] 20ac 0030                 move.l     48(a4),(a0)
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
[0001c9a4] 4eb9 0007 76f0            jsr        $000776F0
[0001c9aa] 2a00                      move.l     d0,d5
[0001c9ac] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001c9b2] 2648                      movea.l    a0,a3
[0001c9b4] 200b                      move.l     a3,d0
[0001c9b6] 6606                      bne.s      $0001C9BE
[0001c9b8] 91c8                      suba.l     a0,a0
[0001c9ba] 6000 009e                 bra        $0001CA5A
[0001c9be] 2079 0010 1f12            movea.l    ACSblk,a0
[0001c9c4] b868 001c                 cmp.w      28(a0),d4
[0001c9c8] 660e                      bne.s      $0001C9D8
[0001c9ca] 2268 023c                 movea.l    572(a0),a1
[0001c9ce] 3029 000e                 move.w     14(a1),d0
[0001c9d2] c07c 0800                 and.w      #$0800,d0
[0001c9d6] 670e                      beq.s      $0001C9E6
[0001c9d8] 2005                      move.l     d5,d0
[0001c9da] 224d                      movea.l    a5,a1
[0001c9dc] 204b                      movea.l    a3,a0
[0001c9de] 4eb9 0007 6f44            jsr        $00076F44
[0001c9e4] 6072                      bra.s      $0001CA58
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
[0001ca52] 4eb9 0006 66a8            jsr        $000666A8
[0001ca58] 204b                      movea.l    a3,a0
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
[0001ca8c] 661e                      bne.s      $0001CAAC
[0001ca8e] 43ea 002e                 lea.l      46(a2),a1
[0001ca92] 236a 0030 0002            move.l     48(a2),2(a1)
[0001ca98] 236a 0034 0006            move.l     52(a2),6(a1)
[0001ca9e] 236a 0038 000a            move.l     56(a2),10(a1)
[0001caa4] 236a 003c 000e            move.l     60(a2),14(a1)
[0001caaa] 602c                      bra.s      $0001CAD8
[0001caac] 2679 0010 1f12            movea.l    ACSblk,a3
[0001cab2] 302b 001c                 move.w     28(a3),d0
[0001cab6] b06a 0018                 cmp.w      24(a2),d0
[0001caba] 661c                      bne.s      $0001CAD8
[0001cabc] 43ea 0018                 lea.l      24(a2),a1
[0001cac0] 236a 001a 0002            move.l     26(a2),2(a1)
[0001cac6] 236a 001e 0006            move.l     30(a2),6(a1)
[0001cacc] 236a 0022 000a            move.l     34(a2),10(a1)
[0001cad2] 236a 0026 000e            move.l     38(a2),14(a1)
[0001cad8] 2149 0022                 move.l     a1,34(a0)
[0001cadc] 206a 0008                 movea.l    8(a2),a0
[0001cae0] 41e8 0180                 lea.l      384(a0),a0
[0001cae4] 4eb9 0004 a34e            jsr        $0004A34E
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
[0001cb9e] 6100 fc2e                 bsr        $0001C7CE
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
[0001cbe6] 6618                      bne.s      $0001CC00
[0001cbe8] 72ff                      moveq.l    #-1,d1
[0001cbea] 43f9 000a 24ca            lea.l      $000A24CA,a1
[0001cbf0] 2068 0258                 movea.l    600(a0),a0
[0001cbf4] 70ff                      moveq.l    #-1,d0
[0001cbf6] 4eb9 0004 948a            jsr        $0004948A
[0001cbfc] 3600                      move.w     d0,d3
[0001cbfe] 6026                      bra.s      $0001CC26
[0001cc00] 302b 002e                 move.w     46(a3),d0
[0001cc04] 2052                      movea.l    (a2),a0
[0001cc06] b068 001c                 cmp.w      28(a0),d0
[0001cc0a] 6618                      bne.s      $0001CC24
[0001cc0c] 72ff                      moveq.l    #-1,d1
[0001cc0e] 43f9 000a 2662            lea.l      $000A2662,a1
[0001cc14] 2068 0258                 movea.l    600(a0),a0
[0001cc18] 70ff                      moveq.l    #-1,d0
[0001cc1a] 4eb9 0004 948a            jsr        $0004948A
[0001cc20] 3600                      move.w     d0,d3
[0001cc22] 6002                      bra.s      $0001CC26
[0001cc24] 7602                      moveq.l    #2,d3
[0001cc26] 4a43                      tst.w      d3
[0001cc28] 6f16                      ble.s      $0001CC40
[0001cc2a] 5343                      subq.w     #1,d3
[0001cc2c] 3743 0044                 move.w     d3,68(a3)
[0001cc30] 4a43                      tst.w      d3
[0001cc32] 6f06                      ble.s      $0001CC3A
[0001cc34] 6100 ff2a                 bsr        $0001CB60
[0001cc38] 6006                      bra.s      $0001CC40
[0001cc3a] 4eb9 0001 cc46            jsr        $0001CC46
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
[0001cd18] d279 0007 824c            add.w      $0007824C,d1
[0001cd1e] e241                      asr.w      #1,d1
[0001cd20] d240                      add.w      d0,d1
[0001cd22] 3439 0007 824c            move.w     $0007824C,d2
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
[0001cd3e] 6614                      bne.s      $0001CD54
[0001cd40] 3003                      move.w     d3,d0
[0001cd42] 48c0                      ext.l      d0
[0001cd44] 4eb9 0007 76f0            jsr        $000776F0
[0001cd4a] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001cd50] 2448                      movea.l    a0,a2
[0001cd52] 601c                      bra.s      $0001CD70
[0001cd54] 3003                      move.w     d3,d0
[0001cd56] 48c0                      ext.l      d0
[0001cd58] 2204                      move.l     d4,d1
[0001cd5a] 4eb9 0007 76f0            jsr        $000776F0
[0001cd60] 5c80                      addq.l     #6,d0
[0001cd62] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001cd68] 2448                      movea.l    a0,a2
[0001cd6a] 200a                      move.l     a2,d0
[0001cd6c] 6702                      beq.s      $0001CD70
[0001cd6e] 5c4a                      addq.w     #6,a2
[0001cd70] 200a                      move.l     a2,d0
[0001cd72] 6700 0198                 beq        $0001CF0C
[0001cd76] 2680                      move.l     d0,(a3)
[0001cd78] 206f 0028                 movea.l    40(a7),a0
[0001cd7c] 2a90                      move.l     (a0),(a5)
[0001cd7e] 3003                      move.w     d3,d0
[0001cd80] 48c0                      ext.l      d0
[0001cd82] 2204                      move.l     d4,d1
[0001cd84] 4eb9 0007 76f0            jsr        $000776F0
[0001cd8a] 2200                      move.l     d0,d1
[0001cd8c] 204a                      movea.l    a2,a0
[0001cd8e] 4240                      clr.w      d0
[0001cd90] 4eb9 0007 712e            jsr        $0007712E
[0001cd96] 2079 0010 1f12            movea.l    ACSblk,a0
[0001cd9c] b668 001c                 cmp.w      28(a0),d3
[0001cda0] 6600 010c                 bne        $0001CEAE
[0001cda4] 3028 001c                 move.w     28(a0),d0
[0001cda8] 3b40 000c                 move.w     d0,12(a5)
[0001cdac] 3740 000c                 move.w     d0,12(a3)
[0001cdb0] 2079 0010 1f12            movea.l    ACSblk,a0
[0001cdb6] 2268 023c                 movea.l    572(a0),a1
[0001cdba] 3229 000e                 move.w     14(a1),d1
[0001cdbe] c27c 0800                 and.w      #$0800,d1
[0001cdc2] 6700 00cc                 beq        $0001CE90
[0001cdc6] 322d 0006                 move.w     6(a5),d1
[0001cdca] 302d 0004                 move.w     4(a5),d0
[0001cdce] 4eb9 0004 d928            jsr        $0004D928
[0001cdd4] 2848                      movea.l    a0,a4
[0001cdd6] 200c                      move.l     a4,d0
[0001cdd8] 6714                      beq.s      $0001CDEE
[0001cdda] 322b 0006                 move.w     6(a3),d1
[0001cdde] 302b 0004                 move.w     4(a3),d0
[0001cde2] 4eb9 0004 d928            jsr        $0004D928
[0001cde8] 2c48                      movea.l    a0,a6
[0001cdea] 200e                      move.l     a6,d0
[0001cdec] 662c                      bne.s      $0001CE1A
[0001cdee] 200c                      move.l     a4,d0
[0001cdf0] 6708                      beq.s      $0001CDFA
[0001cdf2] 204c                      movea.l    a4,a0
[0001cdf4] 4eb9 0004 d996            jsr        $0004D996
[0001cdfa] b67c 0001                 cmp.w      #$0001,d3
[0001cdfe] 660c                      bne.s      $0001CE0C
[0001ce00] 2053                      movea.l    (a3),a0
[0001ce02] 4eb9 0004 7e26            jsr        $00047E26
[0001ce08] 6000 0102                 bra        $0001CF0C
[0001ce0c] 2053                      movea.l    (a3),a0
[0001ce0e] 5d48                      subq.w     #6,a0
[0001ce10] 4eb9 0004 7e26            jsr        $00047E26
[0001ce16] 6000 00f4                 bra        $0001CF0C
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
[0001ce40] 4eb9 0006 66a8            jsr        $000666A8
[0001ce46] 2f0e                      move.l     a6,-(a7)
[0001ce48] 224c                      movea.l    a4,a1
[0001ce4a] 206f 0028                 movea.l    40(a7),a0
[0001ce4e] 7203                      moveq.l    #3,d1
[0001ce50] 2f09                      move.l     a1,-(a7)
[0001ce52] 2279 0010 1f12            movea.l    ACSblk,a1
[0001ce58] 3029 0010                 move.w     16(a1),d0
[0001ce5c] 225f                      movea.l    (a7)+,a1
[0001ce5e] 4eb9 0006 65ce            jsr        $000665CE
[0001ce64] 584f                      addq.w     #4,a7
[0001ce66] 224b                      movea.l    a3,a1
[0001ce68] 204e                      movea.l    a6,a0
[0001ce6a] 2f09                      move.l     a1,-(a7)
[0001ce6c] 2279 0010 1f12            movea.l    ACSblk,a1
[0001ce72] 3029 0010                 move.w     16(a1),d0
[0001ce76] 225f                      movea.l    (a7)+,a1
[0001ce78] 4eb9 0006 66a8            jsr        $000666A8
[0001ce7e] 204e                      movea.l    a6,a0
[0001ce80] 4eb9 0004 d996            jsr        $0004D996
[0001ce86] 204c                      movea.l    a4,a0
[0001ce88] 4eb9 0004 d996            jsr        $0004D996
[0001ce8e] 6054                      bra.s      $0001CEE4
[0001ce90] 2f0b                      move.l     a3,-(a7)
[0001ce92] 224d                      movea.l    a5,a1
[0001ce94] 206f 0028                 movea.l    40(a7),a0
[0001ce98] 7203                      moveq.l    #3,d1
[0001ce9a] 2879 0010 1f12            movea.l    ACSblk,a4
[0001cea0] 302c 0010                 move.w     16(a4),d0
[0001cea4] 4eb9 0006 65ce            jsr        $000665CE
[0001ceaa] 584f                      addq.w     #4,a7
[0001ceac] 6036                      bra.s      $0001CEE4
[0001ceae] 7001                      moveq.l    #1,d0
[0001ceb0] 3b40 000c                 move.w     d0,12(a5)
[0001ceb4] 3740 000c                 move.w     d0,12(a3)
[0001ceb8] 7aff                      moveq.l    #-1,d5
[0001ceba] da43                      add.w      d3,d5
[0001cebc] 6022                      bra.s      $0001CEE0
[0001cebe] 2f0b                      move.l     a3,-(a7)
[0001cec0] 224d                      movea.l    a5,a1
[0001cec2] 206f 0028                 movea.l    40(a7),a0
[0001cec6] 7203                      moveq.l    #3,d1
[0001cec8] 2879 0010 1f12            movea.l    ACSblk,a4
[0001cece] 302c 0010                 move.w     16(a4),d0
[0001ced2] 4eb9 0006 65ce            jsr        $000665CE
[0001ced8] 584f                      addq.w     #4,a7
[0001ceda] d993                      add.l      d4,(a3)
[0001cedc] d995                      add.l      d4,(a5)
[0001cede] 5345                      subq.w     #1,d5
[0001cee0] 4a45                      tst.w      d5
[0001cee2] 6ada                      bpl.s      $0001CEBE
[0001cee4] b67c 0001                 cmp.w      #$0001,d3
[0001cee8] 660e                      bne.s      $0001CEF8
[0001ceea] 206f 0028                 movea.l    40(a7),a0
[0001ceee] 2050                      movea.l    (a0),a0
[0001cef0] 4eb9 0004 7d6c            jsr        $00047D6C
[0001cef6] 600e                      bra.s      $0001CF06
[0001cef8] 206f 0028                 movea.l    40(a7),a0
[0001cefc] 2050                      movea.l    (a0),a0
[0001cefe] 5d48                      subq.w     #6,a0
[0001cf00] 4eb9 0004 7d6c            jsr        $00047D6C
[0001cf06] 206f 0028                 movea.l    40(a7),a0
[0001cf0a] 208a                      move.l     a2,(a0)
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
[0001cfb8] 6c0c                      bge.s      $0001CFC6
[0001cfba] 74ff                      moveq.l    #-1,d2
[0001cfbc] d443                      add.w      d3,d2
[0001cfbe] 3f42 000c                 move.w     d2,12(a7)
[0001cfc2] 3f42 0004                 move.w     d2,4(a7)
[0001cfc6] b86c 0018                 cmp.w      24(a4),d4
[0001cfca] 6c0c                      bge.s      $0001CFD8
[0001cfcc] 70ff                      moveq.l    #-1,d0
[0001cfce] d044                      add.w      d4,d0
[0001cfd0] 3f40 000e                 move.w     d0,14(a7)
[0001cfd4] 3f40 0006                 move.w     d0,6(a7)
[0001cfd8] 3003                      move.w     d3,d0
[0001cfda] 48c0                      ext.l      d0
[0001cfdc] 3204                      move.w     d4,d1
[0001cfde] 48c1                      ext.l      d1
[0001cfe0] 4eb9 0007 76f0            jsr        $000776F0
[0001cfe6] 2a00                      move.l     d0,d5
[0001cfe8] e685                      asr.l      #3,d5
[0001cfea] 486b 0010                 pea.l      16(a3)
[0001cfee] 486f 0004                 pea.l      4(a7)
[0001cff2] 2205                      move.l     d5,d1
[0001cff4] 7001                      moveq.l    #1,d0
[0001cff6] 224d                      movea.l    a5,a1
[0001cff8] 204e                      movea.l    a6,a0
[0001cffa] 6100 fd34                 bsr        $0001CD30
[0001cffe] 504f                      addq.w     #8,a7
[0001d000] 486b 0014                 pea.l      20(a3)
[0001d004] 486f 0004                 pea.l      4(a7)
[0001d008] 2205                      move.l     d5,d1
[0001d00a] 7001                      moveq.l    #1,d0
[0001d00c] 224d                      movea.l    a5,a1
[0001d00e] 204e                      movea.l    a6,a0
[0001d010] 6100 fd1e                 bsr        $0001CD30
[0001d014] 504f                      addq.w     #8,a7
[0001d016] 302b 0018                 move.w     24(a3),d0
[0001d01a] 6f5e                      ble.s      $0001D07A
[0001d01c] 486b 001a                 pea.l      26(a3)
[0001d020] 486f 0004                 pea.l      4(a7)
[0001d024] 2205                      move.l     d5,d1
[0001d026] 224d                      movea.l    a5,a1
[0001d028] 204e                      movea.l    a6,a0
[0001d02a] 7004                      moveq.l    #4,d0
[0001d02c] 6100 fd02                 bsr        $0001CD30
[0001d030] 504f                      addq.w     #8,a7
[0001d032] 486b 001e                 pea.l      30(a3)
[0001d036] 486f 0004                 pea.l      4(a7)
[0001d03a] 2205                      move.l     d5,d1
[0001d03c] 7001                      moveq.l    #1,d0
[0001d03e] 224d                      movea.l    a5,a1
[0001d040] 204e                      movea.l    a6,a0
[0001d042] 6100 fcec                 bsr        $0001CD30
[0001d046] 504f                      addq.w     #8,a7
[0001d048] 202b 0022                 move.l     34(a3),d0
[0001d04c] 672c                      beq.s      $0001D07A
[0001d04e] 486b 0022                 pea.l      34(a3)
[0001d052] 486f 0004                 pea.l      4(a7)
[0001d056] 2205                      move.l     d5,d1
[0001d058] 224d                      movea.l    a5,a1
[0001d05a] 204e                      movea.l    a6,a0
[0001d05c] 7004                      moveq.l    #4,d0
[0001d05e] 6100 fcd0                 bsr        $0001CD30
[0001d062] 504f                      addq.w     #8,a7
[0001d064] 486b 0026                 pea.l      38(a3)
[0001d068] 486f 0004                 pea.l      4(a7)
[0001d06c] 2205                      move.l     d5,d1
[0001d06e] 7001                      moveq.l    #1,d0
[0001d070] 224d                      movea.l    a5,a1
[0001d072] 204e                      movea.l    a6,a0
[0001d074] 6100 fcba                 bsr        $0001CD30
[0001d078] 504f                      addq.w     #8,a7
[0001d07a] 302b 002e                 move.w     46(a3),d0
[0001d07e] 6f5e                      ble.s      $0001D0DE
[0001d080] 486b 0030                 pea.l      48(a3)
[0001d084] 486f 0004                 pea.l      4(a7)
[0001d088] 2205                      move.l     d5,d1
[0001d08a] 224d                      movea.l    a5,a1
[0001d08c] 204e                      movea.l    a6,a0
[0001d08e] 7008                      moveq.l    #8,d0
[0001d090] 6100 fc9e                 bsr        $0001CD30
[0001d094] 504f                      addq.w     #8,a7
[0001d096] 486b 0034                 pea.l      52(a3)
[0001d09a] 486f 0004                 pea.l      4(a7)
[0001d09e] 2205                      move.l     d5,d1
[0001d0a0] 7001                      moveq.l    #1,d0
[0001d0a2] 224d                      movea.l    a5,a1
[0001d0a4] 204e                      movea.l    a6,a0
[0001d0a6] 6100 fc88                 bsr        $0001CD30
[0001d0aa] 504f                      addq.w     #8,a7
[0001d0ac] 202b 0038                 move.l     56(a3),d0
[0001d0b0] 672c                      beq.s      $0001D0DE
[0001d0b2] 486b 0038                 pea.l      56(a3)
[0001d0b6] 486f 0004                 pea.l      4(a7)
[0001d0ba] 2205                      move.l     d5,d1
[0001d0bc] 224d                      movea.l    a5,a1
[0001d0be] 204e                      movea.l    a6,a0
[0001d0c0] 7008                      moveq.l    #8,d0
[0001d0c2] 6100 fc6c                 bsr        $0001CD30
[0001d0c6] 504f                      addq.w     #8,a7
[0001d0c8] 486b 003c                 pea.l      60(a3)
[0001d0cc] 486f 0004                 pea.l      4(a7)
[0001d0d0] 2205                      move.l     d5,d1
[0001d0d2] 7001                      moveq.l    #1,d0
[0001d0d4] 224d                      movea.l    a5,a1
[0001d0d6] 204e                      movea.l    a6,a0
[0001d0d8] 6100 fc56                 bsr        $0001CD30
[0001d0dc] 504f                      addq.w     #8,a7
[0001d0de] 3003                      move.w     d3,d0
[0001d0e0] 6100 fc34                 bsr        $0001CD16
[0001d0e4] 3940 0016                 move.w     d0,22(a4)
[0001d0e8] 206b 0008                 movea.l    8(a3),a0
[0001d0ec] 3140 01c4                 move.w     d0,452(a0)
[0001d0f0] 3004                      move.w     d4,d0
[0001d0f2] 6100 fc22                 bsr        $0001CD16
[0001d0f6] 3940 0018                 move.w     d0,24(a4)
[0001d0fa] 206b 0008                 movea.l    8(a3),a0
[0001d0fe] 3140 01c6                 move.w     d0,454(a0)
[0001d102] 206f 0038                 movea.l    56(a7),a0
[0001d106] 6100 f95c                 bsr        $0001CA64
[0001d10a] 4fef 003c                 lea.l      60(a7),a7
[0001d10e] 4cdf 7838                 movem.l    (a7)+,d3-d5/a3-a6
[0001d112] 4e75                      rts
edic_check:
[0001d114] 2f0a                      move.l     a2,-(a7)
[0001d116] 2448                      movea.l    a0,a2
[0001d118] 0c6a 00c0 0016            cmpi.w     #$00C0,22(a2)
[0001d11e] 6f06                      ble.s      $0001D126
[0001d120] 357c 00c0 0016            move.w     #$00C0,22(a2)
[0001d126] 0c6a 00c0 0018            cmpi.w     #$00C0,24(a2)
[0001d12c] 6f06                      ble.s      $0001D134
[0001d12e] 357c 00c0 0018            move.w     #$00C0,24(a2)
[0001d134] 700f                      moveq.l    #15,d0
[0001d136] d06a 0016                 add.w      22(a2),d0
[0001d13a] c07c fff0                 and.w      #$FFF0,d0
[0001d13e] 3540 0016                 move.w     d0,22(a2)
[0001d142] 302a 0018                 move.w     24(a2),d0
[0001d146] 6100 fbce                 bsr        $0001CD16
[0001d14a] 3540 0018                 move.w     d0,24(a2)
[0001d14e] 0c6a 00c0 001e            cmpi.w     #$00C0,30(a2)
[0001d154] 6f06                      ble.s      $0001D15C
[0001d156] 357c 00c0 001e            move.w     #$00C0,30(a2)
[0001d15c] 0c6a 00c0 0020            cmpi.w     #$00C0,32(a2)
[0001d162] 6f06                      ble.s      $0001D16A
[0001d164] 357c 00c0 0020            move.w     #$00C0,32(a2)
[0001d16a] 302a 001e                 move.w     30(a2),d0
[0001d16e] 6100 fba6                 bsr        $0001CD16
[0001d172] 3540 001e                 move.w     d0,30(a2)
[0001d176] 302a 0020                 move.w     32(a2),d0
[0001d17a] 6100 fb9a                 bsr        $0001CD16
[0001d17e] 3540 0020                 move.w     d0,32(a2)
[0001d182] 7006                      moveq.l    #6,d0
[0001d184] d06a 000e                 add.w      14(a2),d0
[0001d188] 906a 0016                 sub.w      22(a2),d0
[0001d18c] 4a40                      tst.w      d0
[0001d18e] 6f04                      ble.s      $0001D194
[0001d190] 916a 000e                 sub.w      d0,14(a2)
[0001d194] 7006                      moveq.l    #6,d0
[0001d196] d06a 0010                 add.w      16(a2),d0
[0001d19a] 906a 0018                 sub.w      24(a2),d0
[0001d19e] 4a40                      tst.w      d0
[0001d1a0] 6f04                      ble.s      $0001D1A6
[0001d1a2] 916a 0010                 sub.w      d0,16(a2)
[0001d1a6] 302a 0012                 move.w     18(a2),d0
[0001d1aa] d06a 0016                 add.w      22(a2),d0
[0001d1ae] d07c ff40                 add.w      #$FF40,d0
[0001d1b2] 4a40                      tst.w      d0
[0001d1b4] 6f04                      ble.s      $0001D1BA
[0001d1b6] 916a 0012                 sub.w      d0,18(a2)
[0001d1ba] 302a 0014                 move.w     20(a2),d0
[0001d1be] d06a 0018                 add.w      24(a2),d0
[0001d1c2] d07c ff40                 add.w      #$FF40,d0
[0001d1c6] 4a40                      tst.w      d0
[0001d1c8] 6f04                      ble.s      $0001D1CE
[0001d1ca] 916a 0014                 sub.w      d0,20(a2)
[0001d1ce] 302a 001a                 move.w     26(a2),d0
[0001d1d2] d06a 001e                 add.w      30(a2),d0
[0001d1d6] d07c ff40                 add.w      #$FF40,d0
[0001d1da] 4a40                      tst.w      d0
[0001d1dc] 6f04                      ble.s      $0001D1E2
[0001d1de] 916a 001a                 sub.w      d0,26(a2)
[0001d1e2] 302a 001c                 move.w     28(a2),d0
[0001d1e6] d06a 0020                 add.w      32(a2),d0
[0001d1ea] d07c ff40                 add.w      #$FF40,d0
[0001d1ee] 4a40                      tst.w      d0
[0001d1f0] 6f04                      ble.s      $0001D1F6
[0001d1f2] 916a 001c                 sub.w      d0,28(a2)
[0001d1f6] 302a 000e                 move.w     14(a2),d0
[0001d1fa] 6100 fb1a                 bsr        $0001CD16
[0001d1fe] 3540 000e                 move.w     d0,14(a2)
[0001d202] 302a 0010                 move.w     16(a2),d0
[0001d206] 6100 fb0e                 bsr        $0001CD16
[0001d20a] 3540 0010                 move.w     d0,16(a2)
[0001d20e] 302a 0012                 move.w     18(a2),d0
[0001d212] 6100 fb02                 bsr        $0001CD16
[0001d216] 3540 0012                 move.w     d0,18(a2)
[0001d21a] 302a 0014                 move.w     20(a2),d0
[0001d21e] 6100 faf6                 bsr        $0001CD16
[0001d222] 3540 0014                 move.w     d0,20(a2)
[0001d226] 302a 001a                 move.w     26(a2),d0
[0001d22a] 6100 faea                 bsr        $0001CD16
[0001d22e] 3540 001a                 move.w     d0,26(a2)
[0001d232] 302a 001c                 move.w     28(a2),d0
[0001d236] 6100 fade                 bsr        $0001CD16
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
[0001d262] 4eb9 0004 b286            jsr        $0004B286
[0001d268] 7048                      moveq.l    #72,d0
[0001d26a] 906b 0016                 sub.w      22(a3),d0
[0001d26e] e240                      asr.w      #1,d0
[0001d270] 3f00                      move.w     d0,-(a7)
[0001d272] 43f9 000a 49fe            lea.l      $000A49FE,a1
[0001d278] 204c                      movea.l    a4,a0
[0001d27a] 7011                      moveq.l    #17,d0
[0001d27c] 4eb9 0004 afac            jsr        $0004AFAC
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
[0001d2a4] 4eb9 0004 afac            jsr        $0004AFAC
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
[0001d2ca] 4eb9 0004 afac            jsr        $0004AFAC
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
[0001d2f0] 4eb9 0004 afac            jsr        $0004AFAC
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
[0001d316] 4eb9 0004 afac            jsr        $0004AFAC
[0001d31c] 72ff                      moveq.l    #-1,d1
[0001d31e] 7018                      moveq.l    #24,d0
[0001d320] 2052                      movea.l    (a2),a0
[0001d322] 2068 0258                 movea.l    600(a0),a0
[0001d326] 2252                      movea.l    (a2),a1
[0001d328] 2669 0258                 movea.l    600(a1),a3
[0001d32c] 226b 0066                 movea.l    102(a3),a1
[0001d330] 4e91                      jsr        (a1)
[0001d332] 4eb9 0004 b33c            jsr        $0004B33C
[0001d338] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0001d33c] 4e75                      rts
edic_direct:
[0001d33e] 48e7 1e3c                 movem.l    d3-d6/a2-a5,-(a7)
[0001d342] 41f9 000a 4924            lea.l      $000A4924,a0
[0001d348] 2279 000a 492c            movea.l    $000A492C,a1
[0001d34e] 4e91                      jsr        (a1)
[0001d350] 2448                      movea.l    a0,a2
[0001d352] 200a                      move.l     a2,d0
[0001d354] 6700 0214                 beq        $0001D56A
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
[0001d380] 4eb9 0004 afac            jsr        $0004AFAC
[0001d386] 544f                      addq.w     #2,a7
[0001d388] 3f2c 0010                 move.w     16(a4),-(a7)
[0001d38c] 224d                      movea.l    a5,a1
[0001d38e] 700e                      moveq.l    #14,d0
[0001d390] 206a 0014                 movea.l    20(a2),a0
[0001d394] 4eb9 0004 afac            jsr        $0004AFAC
[0001d39a] 544f                      addq.w     #2,a7
[0001d39c] 3f2c 0012                 move.w     18(a4),-(a7)
[0001d3a0] 224d                      movea.l    a5,a1
[0001d3a2] 7011                      moveq.l    #17,d0
[0001d3a4] 206a 0014                 movea.l    20(a2),a0
[0001d3a8] 4eb9 0004 afac            jsr        $0004AFAC
[0001d3ae] 544f                      addq.w     #2,a7
[0001d3b0] 3f2c 0014                 move.w     20(a4),-(a7)
[0001d3b4] 224d                      movea.l    a5,a1
[0001d3b6] 7012                      moveq.l    #18,d0
[0001d3b8] 206a 0014                 movea.l    20(a2),a0
[0001d3bc] 4eb9 0004 afac            jsr        $0004AFAC
[0001d3c2] 544f                      addq.w     #2,a7
[0001d3c4] 3f2c 0016                 move.w     22(a4),-(a7)
[0001d3c8] 224d                      movea.l    a5,a1
[0001d3ca] 7013                      moveq.l    #19,d0
[0001d3cc] 206a 0014                 movea.l    20(a2),a0
[0001d3d0] 4eb9 0004 afac            jsr        $0004AFAC
[0001d3d6] 544f                      addq.w     #2,a7
[0001d3d8] 3f2c 0018                 move.w     24(a4),-(a7)
[0001d3dc] 224d                      movea.l    a5,a1
[0001d3de] 7014                      moveq.l    #20,d0
[0001d3e0] 206a 0014                 movea.l    20(a2),a0
[0001d3e4] 4eb9 0004 afac            jsr        $0004AFAC
[0001d3ea] 544f                      addq.w     #2,a7
[0001d3ec] 3f2c 001a                 move.w     26(a4),-(a7)
[0001d3f0] 224d                      movea.l    a5,a1
[0001d3f2] 7015                      moveq.l    #21,d0
[0001d3f4] 206a 0014                 movea.l    20(a2),a0
[0001d3f8] 4eb9 0004 afac            jsr        $0004AFAC
[0001d3fe] 544f                      addq.w     #2,a7
[0001d400] 3f2c 001c                 move.w     28(a4),-(a7)
[0001d404] 224d                      movea.l    a5,a1
[0001d406] 7016                      moveq.l    #22,d0
[0001d408] 206a 0014                 movea.l    20(a2),a0
[0001d40c] 4eb9 0004 afac            jsr        $0004AFAC
[0001d412] 544f                      addq.w     #2,a7
[0001d414] 3f2c 001e                 move.w     30(a4),-(a7)
[0001d418] 224d                      movea.l    a5,a1
[0001d41a] 7017                      moveq.l    #23,d0
[0001d41c] 206a 0014                 movea.l    20(a2),a0
[0001d420] 4eb9 0004 afac            jsr        $0004AFAC
[0001d426] 544f                      addq.w     #2,a7
[0001d428] 3f2c 0020                 move.w     32(a4),-(a7)
[0001d42c] 224d                      movea.l    a5,a1
[0001d42e] 7018                      moveq.l    #24,d0
[0001d430] 206a 0014                 movea.l    20(a2),a0
[0001d434] 4eb9 0004 afac            jsr        $0004AFAC
[0001d43a] 544f                      addq.w     #2,a7
[0001d43c] 204a                      movea.l    a2,a0
[0001d43e] 4eb9 0005 1292            jsr        $00051292
[0001d444] b07c 001d                 cmp.w      #$001D,d0
[0001d448] 6600 0118                 bne        $0001D562
[0001d44c] 362c 0016                 move.w     22(a4),d3
[0001d450] 382c 0018                 move.w     24(a4),d4
[0001d454] 486c 000e                 pea.l      14(a4)
[0001d458] 224d                      movea.l    a5,a1
[0001d45a] 700c                      moveq.l    #12,d0
[0001d45c] 206a 0014                 movea.l    20(a2),a0
[0001d460] 4eb9 0004 b0b2            jsr        $0004B0B2
[0001d466] 584f                      addq.w     #4,a7
[0001d468] 486c 0010                 pea.l      16(a4)
[0001d46c] 224d                      movea.l    a5,a1
[0001d46e] 700e                      moveq.l    #14,d0
[0001d470] 206a 0014                 movea.l    20(a2),a0
[0001d474] 4eb9 0004 b0b2            jsr        $0004B0B2
[0001d47a] 584f                      addq.w     #4,a7
[0001d47c] 486c 0012                 pea.l      18(a4)
[0001d480] 224d                      movea.l    a5,a1
[0001d482] 7011                      moveq.l    #17,d0
[0001d484] 206a 0014                 movea.l    20(a2),a0
[0001d488] 4eb9 0004 b0b2            jsr        $0004B0B2
[0001d48e] 584f                      addq.w     #4,a7
[0001d490] 486c 0014                 pea.l      20(a4)
[0001d494] 224d                      movea.l    a5,a1
[0001d496] 7012                      moveq.l    #18,d0
[0001d498] 206a 0014                 movea.l    20(a2),a0
[0001d49c] 4eb9 0004 b0b2            jsr        $0004B0B2
[0001d4a2] 584f                      addq.w     #4,a7
[0001d4a4] 486c 0016                 pea.l      22(a4)
[0001d4a8] 224d                      movea.l    a5,a1
[0001d4aa] 7013                      moveq.l    #19,d0
[0001d4ac] 206a 0014                 movea.l    20(a2),a0
[0001d4b0] 4eb9 0004 b0b2            jsr        $0004B0B2
[0001d4b6] 584f                      addq.w     #4,a7
[0001d4b8] 486c 0018                 pea.l      24(a4)
[0001d4bc] 224d                      movea.l    a5,a1
[0001d4be] 7014                      moveq.l    #20,d0
[0001d4c0] 206a 0014                 movea.l    20(a2),a0
[0001d4c4] 4eb9 0004 b0b2            jsr        $0004B0B2
[0001d4ca] 584f                      addq.w     #4,a7
[0001d4cc] 486c 001a                 pea.l      26(a4)
[0001d4d0] 224d                      movea.l    a5,a1
[0001d4d2] 7015                      moveq.l    #21,d0
[0001d4d4] 206a 0014                 movea.l    20(a2),a0
[0001d4d8] 4eb9 0004 b0b2            jsr        $0004B0B2
[0001d4de] 584f                      addq.w     #4,a7
[0001d4e0] 486c 001c                 pea.l      28(a4)
[0001d4e4] 224d                      movea.l    a5,a1
[0001d4e6] 7016                      moveq.l    #22,d0
[0001d4e8] 206a 0014                 movea.l    20(a2),a0
[0001d4ec] 4eb9 0004 b0b2            jsr        $0004B0B2
[0001d4f2] 584f                      addq.w     #4,a7
[0001d4f4] 486c 001e                 pea.l      30(a4)
[0001d4f8] 224d                      movea.l    a5,a1
[0001d4fa] 7017                      moveq.l    #23,d0
[0001d4fc] 206a 0014                 movea.l    20(a2),a0
[0001d500] 4eb9 0004 b0b2            jsr        $0004B0B2
[0001d506] 584f                      addq.w     #4,a7
[0001d508] 486c 0020                 pea.l      32(a4)
[0001d50c] 224d                      movea.l    a5,a1
[0001d50e] 7018                      moveq.l    #24,d0
[0001d510] 206a 0014                 movea.l    20(a2),a0
[0001d514] 4eb9 0004 b0b2            jsr        $0004B0B2
[0001d51a] 584f                      addq.w     #4,a7
[0001d51c] 204c                      movea.l    a4,a0
[0001d51e] 6100 fbf4                 bsr        $0001D114
[0001d522] 3a2c 0016                 move.w     22(a4),d5
[0001d526] 3c2c 0018                 move.w     24(a4),d6
[0001d52a] 3943 0016                 move.w     d3,22(a4)
[0001d52e] 3944 0018                 move.w     d4,24(a4)
[0001d532] 3206                      move.w     d6,d1
[0001d534] 3005                      move.w     d5,d0
[0001d536] 2053                      movea.l    (a3),a0
[0001d538] 2068 0258                 movea.l    600(a0),a0
[0001d53c] 6100 f9d4                 bsr        $0001CF12
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
[0001d562] 204a                      movea.l    a2,a0
[0001d564] 4eb9 0005 0330            jsr        $00050330
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
[0001d5ca] 6100 f2b0                 bsr        $0001C87C
[0001d5ce] 504f                      addq.w     #8,a7
[0001d5d0] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d5d6] 2268 023c                 movea.l    572(a0),a1
[0001d5da] 3029 000e                 move.w     14(a1),d0
[0001d5de] c07c 0800                 and.w      #$0800,d0
[0001d5e2] 6716                      beq.s      $0001D5FA
[0001d5e4] 322f 003a                 move.w     58(a7),d1
[0001d5e8] 302f 0038                 move.w     56(a7),d0
[0001d5ec] 4eb9 0004 d928            jsr        $0004D928
[0001d5f2] 2648                      movea.l    a0,a3
[0001d5f4] 200b                      move.l     a3,d0
[0001d5f6] 6700 01f0                 beq        $0001D7E8
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
[0001d650] 670e                      beq.s      $0001D660
[0001d652] 5341                      subq.w     #1,d1
[0001d654] 671c                      beq.s      $0001D672
[0001d656] 5341                      subq.w     #1,d1
[0001d658] 672c                      beq.s      $0001D686
[0001d65a] 5341                      subq.w     #1,d1
[0001d65c] 673e                      beq.s      $0001D69C
[0001d65e] 6050                      bra.s      $0001D6B0
[0001d660] 5252                      addq.w     #1,(a2)
[0001d662] 536a 000c                 subq.w     #1,12(a2)
[0001d666] 302f 0004                 move.w     4(a7),d0
[0001d66a] 3f40 0008                 move.w     d0,8(a7)
[0001d66e] 3e80                      move.w     d0,(a7)
[0001d670] 603e                      bra.s      $0001D6B0
[0001d672] 536a 0004                 subq.w     #1,4(a2)
[0001d676] 526a 0008                 addq.w     #1,8(a2)
[0001d67a] 3017                      move.w     (a7),d0
[0001d67c] 3f40 000c                 move.w     d0,12(a7)
[0001d680] 3f40 0004                 move.w     d0,4(a7)
[0001d684] 602a                      bra.s      $0001D6B0
[0001d686] 526a 0002                 addq.w     #1,2(a2)
[0001d68a] 536a 000e                 subq.w     #1,14(a2)
[0001d68e] 302f 0006                 move.w     6(a7),d0
[0001d692] 3f40 000a                 move.w     d0,10(a7)
[0001d696] 3f40 0002                 move.w     d0,2(a7)
[0001d69a] 6014                      bra.s      $0001D6B0
[0001d69c] 536a 0006                 subq.w     #1,6(a2)
[0001d6a0] 526a 000a                 addq.w     #1,10(a2)
[0001d6a4] 302f 0002                 move.w     2(a7),d0
[0001d6a8] 3f40 000e                 move.w     d0,14(a7)
[0001d6ac] 3f40 0006                 move.w     d0,6(a7)
[0001d6b0] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d6b6] 2268 023c                 movea.l    572(a0),a1
[0001d6ba] 3029 000e                 move.w     14(a1),d0
[0001d6be] c07c 0800                 and.w      #$0800,d0
[0001d6c2] 676e                      beq.s      $0001D732
[0001d6c4] 3228 001c                 move.w     28(a0),d1
[0001d6c8] b26f 0040                 cmp.w      64(a7),d1
[0001d6cc] 6664                      bne.s      $0001D732
[0001d6ce] 41ef 0034                 lea.l      52(a7),a0
[0001d6d2] 2279 0010 1f12            movea.l    ACSblk,a1
[0001d6d8] 3029 0010                 move.w     16(a1),d0
[0001d6dc] 224b                      movea.l    a3,a1
[0001d6de] 4eb9 0006 66a8            jsr        $000666A8
[0001d6e4] 2f0b                      move.l     a3,-(a7)
[0001d6e6] 224b                      movea.l    a3,a1
[0001d6e8] 204a                      movea.l    a2,a0
[0001d6ea] 7203                      moveq.l    #3,d1
[0001d6ec] 2879 0010 1f12            movea.l    ACSblk,a4
[0001d6f2] 302c 0010                 move.w     16(a4),d0
[0001d6f6] 4eb9 0006 65ce            jsr        $000665CE
[0001d6fc] 584f                      addq.w     #4,a7
[0001d6fe] 2f0b                      move.l     a3,-(a7)
[0001d700] 224b                      movea.l    a3,a1
[0001d702] 41ef 0004                 lea.l      4(a7),a0
[0001d706] 4241                      clr.w      d1
[0001d708] 2879 0010 1f12            movea.l    ACSblk,a4
[0001d70e] 302c 0010                 move.w     16(a4),d0
[0001d712] 4eb9 0006 65ce            jsr        $000665CE
[0001d718] 584f                      addq.w     #4,a7
[0001d71a] 43ef 0034                 lea.l      52(a7),a1
[0001d71e] 204b                      movea.l    a3,a0
[0001d720] 2879 0010 1f12            movea.l    ACSblk,a4
[0001d726] 302c 0010                 move.w     16(a4),d0
[0001d72a] 4eb9 0006 66a8            jsr        $000666A8
[0001d730] 603e                      bra.s      $0001D770
[0001d732] 486f 0034                 pea.l      52(a7)
[0001d736] 43ef 0038                 lea.l      56(a7),a1
[0001d73a] 204a                      movea.l    a2,a0
[0001d73c] 7203                      moveq.l    #3,d1
[0001d73e] 2879 0010 1f12            movea.l    ACSblk,a4
[0001d744] 302c 0010                 move.w     16(a4),d0
[0001d748] 4eb9 0006 65ce            jsr        $000665CE
[0001d74e] 584f                      addq.w     #4,a7
[0001d750] 486f 0034                 pea.l      52(a7)
[0001d754] 43ef 0038                 lea.l      56(a7),a1
[0001d758] 41ef 0004                 lea.l      4(a7),a0
[0001d75c] 4241                      clr.w      d1
[0001d75e] 2879 0010 1f12            movea.l    ACSblk,a4
[0001d764] 302c 0010                 move.w     16(a4),d0
[0001d768] 4eb9 0006 65ce            jsr        $000665CE
[0001d76e] 584f                      addq.w     #4,a7
[0001d770] 486f 0020                 pea.l      32(a7)
[0001d774] 43ef 0024                 lea.l      36(a7),a1
[0001d778] 204a                      movea.l    a2,a0
[0001d77a] 7203                      moveq.l    #3,d1
[0001d77c] 2879 0010 1f12            movea.l    ACSblk,a4
[0001d782] 302c 0010                 move.w     16(a4),d0
[0001d786] 4eb9 0006 65ce            jsr        $000665CE
[0001d78c] 584f                      addq.w     #4,a7
[0001d78e] 486f 0020                 pea.l      32(a7)
[0001d792] 43ef 0024                 lea.l      36(a7),a1
[0001d796] 41ef 0004                 lea.l      4(a7),a0
[0001d79a] 4241                      clr.w      d1
[0001d79c] 2479 0010 1f12            movea.l    ACSblk,a2
[0001d7a2] 302a 0010                 move.w     16(a2),d0
[0001d7a6] 4eb9 0006 65ce            jsr        $000665CE
[0001d7ac] 584f                      addq.w     #4,a7
[0001d7ae] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d7b4] 2268 023c                 movea.l    572(a0),a1
[0001d7b8] 3029 000e                 move.w     14(a1),d0
[0001d7bc] c07c 0800                 and.w      #$0800,d0
[0001d7c0] 6708                      beq.s      $0001D7CA
[0001d7c2] 204b                      movea.l    a3,a0
[0001d7c4] 4eb9 0004 d996            jsr        $0004D996
[0001d7ca] 72ff                      moveq.l    #-1,d1
[0001d7cc] 701b                      moveq.l    #27,d0
[0001d7ce] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d7d4] 2068 0258                 movea.l    600(a0),a0
[0001d7d8] 2279 0010 1f12            movea.l    ACSblk,a1
[0001d7de] 2469 0258                 movea.l    600(a1),a2
[0001d7e2] 226a 0066                 movea.l    102(a2),a1
[0001d7e6] 4e91                      jsr        (a1)
[0001d7e8] 4fef 0050                 lea.l      80(a7),a7
[0001d7ec] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0001d7f0] 4e75                      rts
edic_up:
[0001d7f2] 7002                      moveq.l    #2,d0
[0001d7f4] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d7fa] 2068 0258                 movea.l    600(a0),a0
[0001d7fe] 6100 fda0                 bsr        $0001D5A0
[0001d802] 4e75                      rts
edic_down:
[0001d804] 7003                      moveq.l    #3,d0
[0001d806] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d80c] 2068 0258                 movea.l    600(a0),a0
[0001d810] 6100 fd8e                 bsr        $0001D5A0
[0001d814] 4e75                      rts
edic_right:
[0001d816] 7001                      moveq.l    #1,d0
[0001d818] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d81e] 2068 0258                 movea.l    600(a0),a0
[0001d822] 6100 fd7c                 bsr        $0001D5A0
[0001d826] 4e75                      rts
edic_left:
[0001d828] 4240                      clr.w      d0
[0001d82a] 2079 0010 1f12            movea.l    ACSblk,a0
[0001d830] 2068 0258                 movea.l    600(a0),a0
[0001d834] 6100 fd6a                 bsr        $0001D5A0
[0001d838] 4e75                      rts
control:
[0001d83a] 343c 0080                 move.w     #$0080,d2
[0001d83e] c468 01b8                 and.w      440(a0),d2
[0001d842] 6626                      bne.s      $0001D86A
[0001d844] 3428 01c0                 move.w     448(a0),d2
[0001d848] b451                      cmp.w      (a1),d2
[0001d84a] 661e                      bne.s      $0001D86A
[0001d84c] 3428 01c2                 move.w     450(a0),d2
[0001d850] b469 0002                 cmp.w      2(a1),d2
[0001d854] 6614                      bne.s      $0001D86A
[0001d856] 3428 01c4                 move.w     452(a0),d2
[0001d85a] b469 0004                 cmp.w      4(a1),d2
[0001d85e] 660a                      bne.s      $0001D86A
[0001d860] 3428 01c6                 move.w     454(a0),d2
[0001d864] b469 0006                 cmp.w      6(a1),d2
[0001d868] 6720                      beq.s      $0001D88A
[0001d86a] 0268 ff7f 01b8            andi.w     #$FF7F,440(a0)
[0001d870] 3151 01c0                 move.w     (a1),448(a0)
[0001d874] 3169 0002 01c2            move.w     2(a1),450(a0)
[0001d87a] 3169 0004 01c4            move.w     4(a1),452(a0)
[0001d880] 3169 0006 01c6            move.w     6(a1),454(a0)
[0001d886] 4240                      clr.w      d0
[0001d888] 4e75                      rts
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
[0001d8a8] 6f0a                      ble.s      $0001D8B4
[0001d8aa] 3429 0004                 move.w     4(a1),d2
[0001d8ae] e642                      asr.w      #3,d2
[0001d8b0] b042                      cmp.w      d2,d0
[0001d8b2] 6e10                      bgt.s      $0001D8C4
[0001d8b4] b27c 0008                 cmp.w      #$0008,d1
[0001d8b8] 6f0e                      ble.s      $0001D8C8
[0001d8ba] 3029 0006                 move.w     6(a1),d0
[0001d8be] e640                      asr.w      #3,d0
[0001d8c0] b240                      cmp.w      d0,d1
[0001d8c2] 6f04                      ble.s      $0001D8C8
[0001d8c4] 7001                      moveq.l    #1,d0
[0001d8c6] 4e75                      rts
[0001d8c8] 7002                      moveq.l    #2,d0
[0001d8ca] 4e75                      rts
edic_control:
[0001d8cc] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[0001d8d0] 4fef ffc8                 lea.l      -56(a7),a7
[0001d8d4] 41f9 000a 49e0            lea.l      $000A49E0,a0
[0001d8da] 43ef 0020                 lea.l      32(a7),a1
[0001d8de] 700f                      moveq.l    #15,d0
[0001d8e0] 12d8                      move.b     (a0)+,(a1)+
[0001d8e2] 51c8 fffc                 dbf        d0,$0001D8E0
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
[0001d90e] 670a                      beq.s      $0001D91A
[0001d910] 4eb9 0001 ef4c            jsr        $0001EF4C
[0001d916] 6000 05de                 bra        $0001DEF6
[0001d91a] 2053                      movea.l    (a3),a0
[0001d91c] 3c28 0262                 move.w     610(a0),d6
[0001d920] 3a28 0264                 move.w     612(a0),d5
[0001d924] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0001d92a] 486f 0034                 pea.l      52(a7)
[0001d92e] 43ef 003a                 lea.l      58(a7),a1
[0001d932] 3007                      move.w     d7,d0
[0001d934] 204c                      movea.l    a4,a0
[0001d936] 4eb9 0006 ba44            jsr        $0006BA44
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
[0001d998] 4eb9 0005 ef64            jsr        $0005EF64
[0001d99e] 4a40                      tst.w      d0
[0001d9a0] 6774                      beq.s      $0001DA16
[0001d9a2] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
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
[0001d9e0] 4eb9 0006 c3fe            jsr        $0006C3FE
[0001d9e6] 4fef 000e                 lea.l      14(a7),a7
[0001d9ea] 302f 0036                 move.w     54(a7),d0
[0001d9ee] 906f 0032                 sub.w      50(a7),d0
[0001d9f2] 906a 0012                 sub.w      18(a2),d0
[0001d9f6] 6100 f31e                 bsr        $0001CD16
[0001d9fa] 3540 000e                 move.w     d0,14(a2)
[0001d9fe] 302f 0034                 move.w     52(a7),d0
[0001da02] 906f 0030                 sub.w      48(a7),d0
[0001da06] 906a 0014                 sub.w      20(a2),d0
[0001da0a] 6100 f30a                 bsr        $0001CD16
[0001da0e] 3540 0010                 move.w     d0,16(a2)
[0001da12] 6000 04cc                 bra        $0001DEE0
[0001da16] 3aaa 001a                 move.w     26(a2),(a5)
[0001da1a] 3b6a 001c 0002            move.w     28(a2),2(a5)
[0001da20] 3b6a 001e 0004            move.w     30(a2),4(a5)
[0001da26] 3b6a 0020 0006            move.w     32(a2),6(a5)
[0001da2c] 3205                      move.w     d5,d1
[0001da2e] 3006                      move.w     d6,d0
[0001da30] 204d                      movea.l    a5,a0
[0001da32] 4eb9 0005 ef64            jsr        $0005EF64
[0001da38] 4a40                      tst.w      d0
[0001da3a] 6700 00e2                 beq        $0001DB1E
[0001da3e] 3205                      move.w     d5,d1
[0001da40] 3006                      move.w     d6,d0
[0001da42] 224d                      movea.l    a5,a1
[0001da44] 204c                      movea.l    a4,a0
[0001da46] 6100 fdf2                 bsr        $0001D83A
[0001da4a] 5340                      subq.w     #1,d0
[0001da4c] 6766                      beq.s      $0001DAB4
[0001da4e] 5340                      subq.w     #1,d0
[0001da50] 6704                      beq.s      $0001DA56
[0001da52] 6000 048c                 bra        $0001DEE0
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
[0001da82] 4eb9 0001 3ffa            jsr        $00013FFA
[0001da88] 5c4f                      addq.w     #6,a7
[0001da8a] 4a40                      tst.w      d0
[0001da8c] 6700 0452                 beq        $0001DEE0
[0001da90] 302f 0036                 move.w     54(a7),d0
[0001da94] 6100 f280                 bsr        $0001CD16
[0001da98] 3540 001e                 move.w     d0,30(a2)
[0001da9c] 3940 01c4                 move.w     d0,452(a4)
[0001daa0] 302f 0034                 move.w     52(a7),d0
[0001daa4] 6100 f270                 bsr        $0001CD16
[0001daa8] 3540 0020                 move.w     d0,32(a2)
[0001daac] 3940 01c6                 move.w     d0,454(a4)
[0001dab0] 6000 042e                 bra        $0001DEE0
[0001dab4] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
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
[0001dae8] 4eb9 0006 c3fe            jsr        $0006C3FE
[0001daee] 4fef 000e                 lea.l      14(a7),a7
[0001daf2] 302f 0036                 move.w     54(a7),d0
[0001daf6] 906f 0032                 sub.w      50(a7),d0
[0001dafa] 6100 f21a                 bsr        $0001CD16
[0001dafe] 3540 001a                 move.w     d0,26(a2)
[0001db02] 3940 01c0                 move.w     d0,448(a4)
[0001db06] 302f 0034                 move.w     52(a7),d0
[0001db0a] 906f 0030                 sub.w      48(a7),d0
[0001db0e] 6100 f206                 bsr        $0001CD16
[0001db12] 3540 001c                 move.w     d0,28(a2)
[0001db16] 3940 01c2                 move.w     d0,450(a4)
[0001db1a] 6000 03c4                 bra        $0001DEE0
[0001db1e] 3aaa 0012                 move.w     18(a2),(a5)
[0001db22] 3b6a 0014 0002            move.w     20(a2),2(a5)
[0001db28] 3b6a 0016 0004            move.w     22(a2),4(a5)
[0001db2e] 3b6a 0018 0006            move.w     24(a2),6(a5)
[0001db34] 3205                      move.w     d5,d1
[0001db36] 3006                      move.w     d6,d0
[0001db38] 204d                      movea.l    a5,a0
[0001db3a] 4eb9 0005 ef64            jsr        $0005EF64
[0001db40] 4a40                      tst.w      d0
[0001db42] 6700 038c                 beq        $0001DED0
[0001db46] 3205                      move.w     d5,d1
[0001db48] 3006                      move.w     d6,d0
[0001db4a] 224d                      movea.l    a5,a1
[0001db4c] 204c                      movea.l    a4,a0
[0001db4e] 6100 fcea                 bsr        $0001D83A
[0001db52] 5340                      subq.w     #1,d0
[0001db54] 6700 007c                 beq.w      $0001DBD2
[0001db58] 5340                      subq.w     #1,d0
[0001db5a] 6704                      beq.s      $0001DB60
[0001db5c] 6000 0382                 bra        $0001DEE0
[0001db60] 3003                      move.w     d3,d0
[0001db62] 906a 0012                 sub.w      18(a2),d0
[0001db66] d07c ff40                 add.w      #$FF40,d0
[0001db6a] 4a40                      tst.w      d0
[0001db6c] 6f02                      ble.s      $0001DB70
[0001db6e] 9640                      sub.w      d0,d3
[0001db70] 3004                      move.w     d4,d0
[0001db72] 906a 0014                 sub.w      20(a2),d0
[0001db76] d07c ff40                 add.w      #$FF40,d0
[0001db7a] 4a40                      tst.w      d0
[0001db7c] 6f02                      ble.s      $0001DB80
[0001db7e] 9840                      sub.w      d0,d4
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
[0001dbae] 4eb9 0001 3ffa            jsr        $00013FFA
[0001dbb4] 5c4f                      addq.w     #6,a7
[0001dbb6] 4a40                      tst.w      d0
[0001dbb8] 6700 0326                 beq        $0001DEE0
[0001dbbc] 322f 0034                 move.w     52(a7),d1
[0001dbc0] 302f 0036                 move.w     54(a7),d0
[0001dbc4] 2053                      movea.l    (a3),a0
[0001dbc6] 2068 0258                 movea.l    600(a0),a0
[0001dbca] 6100 f346                 bsr        $0001CF12
[0001dbce] 6000 0310                 bra        $0001DEE0
[0001dbd2] 2053                      movea.l    (a3),a0
[0001dbd4] 0c68 0002 02ca            cmpi.w     #$0002,714(a0)
[0001dbda] 6600 028c                 bne        $0001DE68
[0001dbde] 2268 0258                 movea.l    600(a0),a1
[0001dbe2] 2a51                      movea.l    (a1),a5
[0001dbe4] 206d 0008                 movea.l    8(a5),a0
[0001dbe8] 2468 018c                 movea.l    396(a0),a2
[0001dbec] 3a2a 0016                 move.w     22(a2),d5
[0001dbf0] 3c2a 0018                 move.w     24(a2),d6
[0001dbf4] 3206                      move.w     d6,d1
[0001dbf6] 3005                      move.w     d5,d0
[0001dbf8] 4eb9 0004 d928            jsr        $0004D928
[0001dbfe] 2f48 0014                 move.l     a0,20(a7)
[0001dc02] 2008                      move.l     a0,d0
[0001dc04] 6700 02f0                 beq        $0001DEF6
[0001dc08] 2253                      movea.l    (a3),a1
[0001dc0a] 2069 023c                 movea.l    572(a1),a0
[0001dc0e] 3228 000e                 move.w     14(a0),d1
[0001dc12] c27c 0800                 and.w      #$0800,d1
[0001dc16] 664a                      bne.s      $0001DC62
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
[0001dc62] 7e0f                      moveq.l    #15,d7
[0001dc64] de45                      add.w      d5,d7
[0001dc66] ce7c fff0                 and.w      #$FFF0,d7
[0001dc6a] cfc6                      muls.w     d6,d7
[0001dc6c] 48c7                      ext.l      d7
[0001dc6e] e687                      asr.l      #3,d7
[0001dc70] 2053                      movea.l    (a3),a0
[0001dc72] 3028 001c                 move.w     28(a0),d0
[0001dc76] 5340                      subq.w     #1,d0
[0001dc78] 6700 00de                 beq        $0001DD58
[0001dc7c] 5740                      subq.w     #3,d0
[0001dc7e] 6700 0084                 beq        $0001DD04
[0001dc82] 5940                      subq.w     #4,d0
[0001dc84] 6704                      beq.s      $0001DC8A
[0001dc86] 6000 00e4                 bra        $0001DD6C
[0001dc8a] 0c6d 0008 002e            cmpi.w     #$0008,46(a5)
[0001dc90] 6640                      bne.s      $0001DCD2
[0001dc92] e98f                      lsl.l      #4,d7
[0001dc94] 7001                      moveq.l    #1,d0
[0001dc96] 2053                      movea.l    (a3),a0
[0001dc98] 2268 025c                 movea.l    604(a0),a1
[0001dc9c] c069 018a                 and.w      394(a1),d0
[0001dca0] 671a                      beq.s      $0001DCBC
[0001dca2] 222d 0038                 move.l     56(a5),d1
[0001dca6] 6714                      beq.s      $0001DCBC
[0001dca8] 2241                      movea.l    d1,a1
[0001dcaa] 206f 0014                 movea.l    20(a7),a0
[0001dcae] 2050                      movea.l    (a0),a0
[0001dcb0] 2007                      move.l     d7,d0
[0001dcb2] 4eb9 0007 6f44            jsr        $00076F44
[0001dcb8] 6000 00c0                 bra        $0001DD7A
[0001dcbc] 2007                      move.l     d7,d0
[0001dcbe] 226d 0030                 movea.l    48(a5),a1
[0001dcc2] 206f 0014                 movea.l    20(a7),a0
[0001dcc6] 2050                      movea.l    (a0),a0
[0001dcc8] 4eb9 0007 6f44            jsr        $00076F44
[0001dcce] 6000 00aa                 bra        $0001DD7A
[0001dcd2] 2053                      movea.l    (a3),a0
[0001dcd4] 2268 023c                 movea.l    572(a0),a1
[0001dcd8] 3029 000e                 move.w     14(a1),d0
[0001dcdc] c07c 0800                 and.w      #$0800,d0
[0001dce0] 6600 0076                 bne.w      $0001DD58
[0001dce4] 2f2f 0014                 move.l     20(a7),-(a7)
[0001dce8] 43ef 0004                 lea.l      4(a7),a1
[0001dcec] 41ef 0024                 lea.l      36(a7),a0
[0001dcf0] 7203                      moveq.l    #3,d1
[0001dcf2] 2c53                      movea.l    (a3),a6
[0001dcf4] 302e 0010                 move.w     16(a6),d0
[0001dcf8] 4eb9 0006 65ce            jsr        $000665CE
[0001dcfe] 584f                      addq.w     #4,a7
[0001dd00] 6000 0078                 bra.w      $0001DD7A
[0001dd04] 0c6d 0004 0018            cmpi.w     #$0004,24(a5)
[0001dd0a] 663c                      bne.s      $0001DD48
[0001dd0c] e58f                      lsl.l      #2,d7
[0001dd0e] 7001                      moveq.l    #1,d0
[0001dd10] 2053                      movea.l    (a3),a0
[0001dd12] 2268 025c                 movea.l    604(a0),a1
[0001dd16] c069 018a                 and.w      394(a1),d0
[0001dd1a] 6718                      beq.s      $0001DD34
[0001dd1c] 222d 0022                 move.l     34(a5),d1
[0001dd20] 6712                      beq.s      $0001DD34
[0001dd22] 2241                      movea.l    d1,a1
[0001dd24] 2c6f 0014                 movea.l    20(a7),a6
[0001dd28] 2056                      movea.l    (a6),a0
[0001dd2a] 2007                      move.l     d7,d0
[0001dd2c] 4eb9 0007 6f44            jsr        $00076F44
[0001dd32] 6046                      bra.s      $0001DD7A
[0001dd34] 2007                      move.l     d7,d0
[0001dd36] 226d 001a                 movea.l    26(a5),a1
[0001dd3a] 206f 0014                 movea.l    20(a7),a0
[0001dd3e] 2050                      movea.l    (a0),a0
[0001dd40] 4eb9 0007 6f44            jsr        $00076F44
[0001dd46] 6032                      bra.s      $0001DD7A
[0001dd48] 2053                      movea.l    (a3),a0
[0001dd4a] 2268 023c                 movea.l    572(a0),a1
[0001dd4e] 3029 000e                 move.w     14(a1),d0
[0001dd52] c07c 0800                 and.w      #$0800,d0
[0001dd56] 678c                      beq.s      $0001DCE4
[0001dd58] 2007                      move.l     d7,d0
[0001dd5a] 226d 0010                 movea.l    16(a5),a1
[0001dd5e] 206f 0014                 movea.l    20(a7),a0
[0001dd62] 2050                      movea.l    (a0),a0
[0001dd64] 4eb9 0007 6f44            jsr        $00076F44
[0001dd6a] 600e                      bra.s      $0001DD7A
[0001dd6c] 206f 0014                 movea.l    20(a7),a0
[0001dd70] 4eb9 0004 d996            jsr        $0004D996
[0001dd76] 6000 017e                 bra        $0001DEF6
[0001dd7a] 2053                      movea.l    (a3),a0
[0001dd7c] 2268 023c                 movea.l    572(a0),a1
[0001dd80] 3029 000e                 move.w     14(a1),d0
[0001dd84] c07c 0800                 and.w      #$0800,d0
[0001dd88] 6618                      bne.s      $0001DDA2
[0001dd8a] 2a6f 0014                 movea.l    20(a7),a5
[0001dd8e] 426d 000a                 clr.w      10(a5)
[0001dd92] 224d                      movea.l    a5,a1
[0001dd94] 204d                      movea.l    a5,a0
[0001dd96] 2c53                      movea.l    (a3),a6
[0001dd98] 302e 0010                 move.w     16(a6),d0
[0001dd9c] 4eb9 0006 66a8            jsr        $000666A8
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
[0001de02] 4eb9 0004 487c            jsr        $0004487C
[0001de08] 2053                      movea.l    (a3),a0
[0001de0a] 3228 0264                 move.w     612(a0),d1
[0001de0e] 3028 0262                 move.w     610(a0),d0
[0001de12] 4eb9 0004 557a            jsr        $0004557A
[0001de18] 7013                      moveq.l    #19,d0
[0001de1a] 2053                      movea.l    (a3),a0
[0001de1c] 2068 0258                 movea.l    600(a0),a0
[0001de20] 4eb9 0004 492a            jsr        $0004492A
[0001de26] 206f 0014                 movea.l    20(a7),a0
[0001de2a] 4eb9 0004 d996            jsr        $0004D996
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
[0001de66] 6078                      bra.s      $0001DEE0
[0001de68] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
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
[0001de9c] 4eb9 0006 c3fe            jsr        $0006C3FE
[0001dea2] 4fef 000e                 lea.l      14(a7),a7
[0001dea6] 302f 0036                 move.w     54(a7),d0
[0001deaa] 906f 0032                 sub.w      50(a7),d0
[0001deae] 6100 ee66                 bsr        $0001CD16
[0001deb2] 3540 0012                 move.w     d0,18(a2)
[0001deb6] 3940 01c0                 move.w     d0,448(a4)
[0001deba] 302f 0034                 move.w     52(a7),d0
[0001debe] 906f 0030                 sub.w      48(a7),d0
[0001dec2] 6100 ee52                 bsr        $0001CD16
[0001dec6] 3540 0014                 move.w     d0,20(a2)
[0001deca] 3940 01c2                 move.w     d0,450(a4)
[0001dece] 6010                      bra.s      $0001DEE0
[0001ded0] 303c 0080                 move.w     #$0080,d0
[0001ded4] c06c 01b8                 and.w      440(a4),d0
[0001ded8] 661c                      bne.s      $0001DEF6
[0001deda] 006c 0080 01b8            ori.w      #$0080,440(a4)
[0001dee0] 72ff                      moveq.l    #-1,d1
[0001dee2] 700e                      moveq.l    #14,d0
[0001dee4] 2053                      movea.l    (a3),a0
[0001dee6] 2068 0258                 movea.l    600(a0),a0
[0001deea] 2253                      movea.l    (a3),a1
[0001deec] 2469 0258                 movea.l    600(a1),a2
[0001def0] 226a 0066                 movea.l    102(a2),a1
[0001def4] 4e91                      jsr        (a1)
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
[0001df14] 6602                      bne.s      $0001DF18
[0001df16] 7010                      moveq.l    #16,d0
[0001df18] 322a 002e                 move.w     46(a2),d1
[0001df1c] 2079 0010 1f12            movea.l    ACSblk,a0
[0001df22] b268 001c                 cmp.w      28(a0),d1
[0001df26] 6604                      bne.s      $0001DF2C
[0001df28] 303c 0100                 move.w     #$0100,d0
[0001df2c] 206a 000c                 movea.l    12(a2),a0
[0001df30] 3228 02b4                 move.w     692(a0),d1
[0001df34] 5141                      subq.w     #8,d1
[0001df36] 670a                      beq.s      $0001DF42
[0001df38] 5341                      subq.w     #1,d1
[0001df3a] 673c                      beq.s      $0001DF78
[0001df3c] 5341                      subq.w     #1,d1
[0001df3e] 6732                      beq.s      $0001DF72
[0001df40] 603e                      bra.s      $0001DF80
[0001df42] 526a 0044                 addq.w     #1,68(a2)
[0001df46] b06a 0044                 cmp.w      68(a2),d0
[0001df4a] 6f1a                      ble.s      $0001DF66
[0001df4c] 2079 0010 1f12            movea.l    ACSblk,a0
[0001df52] 2068 023c                 movea.l    572(a0),a0
[0001df56] 41e8 003e                 lea.l      62(a0),a0
[0001df5a] 4eb9 0004 9898            jsr        $00049898
[0001df60] 6100 ebfe                 bsr        $0001CB60
[0001df64] 601a                      bra.s      $0001DF80
[0001df66] 357c ffff 0044            move.w     #$FFFF,68(a2)
[0001df6c] 6100 ed1a                 bsr        $0001CC88
[0001df70] 600e                      bra.s      $0001DF80
[0001df72] 6100 ecd2                 bsr        $0001CC46
[0001df76] 6008                      bra.s      $0001DF80
[0001df78] 357c 0001 0044            move.w     #$0001,68(a2)
[0001df7e] 60e0                      bra.s      $0001DF60
[0001df80] 245f                      movea.l    (a7)+,a2
[0001df82] 4e75                      rts
edic_set:
[0001df84] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0001df88] 4fef ff9c                 lea.l      -100(a7),a7
[0001df8c] 4bf9 000a 49cc            lea.l      $000A49CC,a5
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
[0001dfea] 670c                      beq.s      $0001DFF8
[0001dfec] 206f 004c                 movea.l    76(a7),a0
[0001dff0] 6100 ff0e                 bsr        $0001DF00
[0001dff4] 6000 03c2                 bra        $0001E3B8
[0001dff8] 206f 0060                 movea.l    96(a7),a0
[0001dffc] 2268 0008                 movea.l    8(a0),a1
[0001e000] 2669 018c                 movea.l    396(a1),a3
[0001e004] 4869 0180                 pea.l      384(a1)
[0001e008] 2f08                      move.l     a0,-(a7)
[0001e00a] 43ef 0024                 lea.l      36(a7),a1
[0001e00e] 41ef 0038                 lea.l      56(a7),a0
[0001e012] 6100 e868                 bsr        $0001C87C
[0001e016] 504f                      addq.w     #8,a7
[0001e018] 2054                      movea.l    (a4),a0
[0001e01a] 2268 023c                 movea.l    572(a0),a1
[0001e01e] 3029 000e                 move.w     14(a1),d0
[0001e022] c07c 0800                 and.w      #$0800,d0
[0001e026] 6716                      beq.s      $0001E03E
[0001e028] 322f 0036                 move.w     54(a7),d1
[0001e02c] 302f 0034                 move.w     52(a7),d0
[0001e030] 4eb9 0004 d928            jsr        $0004D928
[0001e036] 2f48 0018                 move.l     a0,24(a7)
[0001e03a] 6700 037c                 beq        $0001E3B8
[0001e03e] 206f 0060                 movea.l    96(a7),a0
[0001e042] 3f68 0044 0014            move.w     68(a0),20(a7)
[0001e048] 2254                      movea.l    (a4),a1
[0001e04a] 3f69 0262 005e            move.w     610(a1),94(a7)
[0001e050] 3f69 0264 005c            move.w     612(a1),92(a7)
[0001e056] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0001e05c] 486f 005c                 pea.l      92(a7)
[0001e060] 43ef 0062                 lea.l      98(a7),a1
[0001e064] 3003                      move.w     d3,d0
[0001e066] 206f 004c                 movea.l    76(a7),a0
[0001e06a] 4eb9 0006 ba44            jsr        $0006BA44
[0001e070] 504f                      addq.w     #8,a7
[0001e072] 76ff                      moveq.l    #-1,d3
[0001e074] 3803                      move.w     d3,d4
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
[0001e0a8] 6606                      bne.s      $0001E0B0
[0001e0aa] b641                      cmp.w      d1,d3
[0001e0ac] 6700 02be                 beq        $0001E36C
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
[0001e0f0] 6612                      bne.s      $0001E104
[0001e0f2] 7001                      moveq.l    #1,d0
[0001e0f4] 3f40 0006                 move.w     d0,6(a7)
[0001e0f8] 3f40 0004                 move.w     d0,4(a7)
[0001e0fc] 3f40 0002                 move.w     d0,2(a7)
[0001e100] 3e80                      move.w     d0,(a7)
[0001e102] 6026                      bra.s      $0001E12A
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
[0001e12a] 302f 005e                 move.w     94(a7),d0
[0001e12e] 6b00 026e                 bmi        $0001E39E
[0001e132] 322f 005c                 move.w     92(a7),d1
[0001e136] 6b00 0266                 bmi        $0001E39E
[0001e13a] b06b 0016                 cmp.w      22(a3),d0
[0001e13e] 6c00 025e                 bge        $0001E39E
[0001e142] b26b 0018                 cmp.w      24(a3),d1
[0001e146] 6c00 0256                 bge        $0001E39E
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
[0001e17c] 6a06                      bpl.s      $0001E184
[0001e17e] 9157                      sub.w      d0,(a7)
[0001e180] 426f 0008                 clr.w      8(a7)
[0001e184] 302f 000a                 move.w     10(a7),d0
[0001e188] 6a08                      bpl.s      $0001E192
[0001e18a] 916f 0002                 sub.w      d0,2(a7)
[0001e18e] 426f 000a                 clr.w      10(a7)
[0001e192] 302f 000c                 move.w     12(a7),d0
[0001e196] b06b 0016                 cmp.w      22(a3),d0
[0001e19a] 6d14                      blt.s      $0001E1B0
[0001e19c] 906b 0016                 sub.w      22(a3),d0
[0001e1a0] 5240                      addq.w     #1,d0
[0001e1a2] 916f 0004                 sub.w      d0,4(a7)
[0001e1a6] 70ff                      moveq.l    #-1,d0
[0001e1a8] d06b 0016                 add.w      22(a3),d0
[0001e1ac] 3f40 000c                 move.w     d0,12(a7)
[0001e1b0] 302f 000e                 move.w     14(a7),d0
[0001e1b4] b06b 0018                 cmp.w      24(a3),d0
[0001e1b8] 6d14                      blt.s      $0001E1CE
[0001e1ba] 906b 0018                 sub.w      24(a3),d0
[0001e1be] 5240                      addq.w     #1,d0
[0001e1c0] 916f 0006                 sub.w      d0,6(a7)
[0001e1c4] 70ff                      moveq.l    #-1,d0
[0001e1c6] d06b 0018                 add.w      24(a3),d0
[0001e1ca] 3f40 000e                 move.w     d0,14(a7)
[0001e1ce] 2054                      movea.l    (a4),a0
[0001e1d0] 2268 023c                 movea.l    572(a0),a1
[0001e1d4] 3029 000e                 move.w     14(a1),d0
[0001e1d8] c07c 0800                 and.w      #$0800,d0
[0001e1dc] 6700 00dc                 beq        $0001E2BA
[0001e1e0] 3228 001c                 move.w     28(a0),d1
[0001e1e4] b26f 003c                 cmp.w      60(a7),d1
[0001e1e8] 6600 00d0                 bne        $0001E2BA
[0001e1ec] 41ef 0030                 lea.l      48(a7),a0
[0001e1f0] 2254                      movea.l    (a4),a1
[0001e1f2] 3029 0010                 move.w     16(a1),d0
[0001e1f6] 226f 0018                 movea.l    24(a7),a1
[0001e1fa] 4eb9 0006 66a8            jsr        $000666A8
[0001e200] 206f 0060                 movea.l    96(a7),a0
[0001e204] 3028 0044                 move.w     68(a0),d0
[0001e208] 6b3a                      bmi.s      $0001E244
[0001e20a] 486f 0014                 pea.l      20(a7)
[0001e20e] 2f2f 001c                 move.l     28(a7),-(a7)
[0001e212] 224d                      movea.l    a5,a1
[0001e214] 41ef 0008                 lea.l      8(a7),a0
[0001e218] 7201                      moveq.l    #1,d1
[0001e21a] 2454                      movea.l    (a4),a2
[0001e21c] 302a 0010                 move.w     16(a2),d0
[0001e220] 4eb9 0006 6632            jsr        $00066632
[0001e226] 504f                      addq.w     #8,a7
[0001e228] 486f 001c                 pea.l      28(a7)
[0001e22c] 224d                      movea.l    a5,a1
[0001e22e] 41ef 0004                 lea.l      4(a7),a0
[0001e232] 720f                      moveq.l    #15,d1
[0001e234] 2454                      movea.l    (a4),a2
[0001e236] 302a 0010                 move.w     16(a2),d0
[0001e23a] 4eb9 0006 65ce            jsr        $000665CE
[0001e240] 584f                      addq.w     #4,a7
[0001e242] 605e                      bra.s      $0001E2A2
[0001e244] 206f 0018                 movea.l    24(a7),a0
[0001e248] 0c68 0001 000c            cmpi.w     #$0001,12(a0)
[0001e24e] 661a                      bne.s      $0001E26A
[0001e250] 2f08                      move.l     a0,-(a7)
[0001e252] 224d                      movea.l    a5,a1
[0001e254] 41ef 0004                 lea.l      4(a7),a0
[0001e258] 4241                      clr.w      d1
[0001e25a] 2454                      movea.l    (a4),a2
[0001e25c] 302a 0010                 move.w     16(a2),d0
[0001e260] 4eb9 0006 65ce            jsr        $000665CE
[0001e266] 584f                      addq.w     #4,a7
[0001e268] 601e                      bra.s      $0001E288
[0001e26a] 486f 0010                 pea.l      16(a7)
[0001e26e] 2f2f 001c                 move.l     28(a7),-(a7)
[0001e272] 224d                      movea.l    a5,a1
[0001e274] 41ef 0008                 lea.l      8(a7),a0
[0001e278] 7201                      moveq.l    #1,d1
[0001e27a] 2454                      movea.l    (a4),a2
[0001e27c] 302a 0010                 move.w     16(a2),d0
[0001e280] 4eb9 0006 6632            jsr        $00066632
[0001e286] 504f                      addq.w     #8,a7
[0001e288] 486f 001c                 pea.l      28(a7)
[0001e28c] 224d                      movea.l    a5,a1
[0001e28e] 41ef 0004                 lea.l      4(a7),a0
[0001e292] 4241                      clr.w      d1
[0001e294] 2454                      movea.l    (a4),a2
[0001e296] 302a 0010                 move.w     16(a2),d0
[0001e29a] 4eb9 0006 65ce            jsr        $000665CE
[0001e2a0] 584f                      addq.w     #4,a7
[0001e2a2] 43ef 0030                 lea.l      48(a7),a1
[0001e2a6] 206f 0018                 movea.l    24(a7),a0
[0001e2aa] 2454                      movea.l    (a4),a2
[0001e2ac] 302a 0010                 move.w     16(a2),d0
[0001e2b0] 4eb9 0006 66a8            jsr        $000666A8
[0001e2b6] 6000 00a2                 bra        $0001E35A
[0001e2ba] 206f 0060                 movea.l    96(a7),a0
[0001e2be] 3028 0044                 move.w     68(a0),d0
[0001e2c2] 6b3a                      bmi.s      $0001E2FE
[0001e2c4] 486f 0014                 pea.l      20(a7)
[0001e2c8] 486f 0034                 pea.l      52(a7)
[0001e2cc] 224d                      movea.l    a5,a1
[0001e2ce] 41ef 0008                 lea.l      8(a7),a0
[0001e2d2] 7201                      moveq.l    #1,d1
[0001e2d4] 2454                      movea.l    (a4),a2
[0001e2d6] 302a 0010                 move.w     16(a2),d0
[0001e2da] 4eb9 0006 6632            jsr        $00066632
[0001e2e0] 504f                      addq.w     #8,a7
[0001e2e2] 486f 001c                 pea.l      28(a7)
[0001e2e6] 224d                      movea.l    a5,a1
[0001e2e8] 41ef 0004                 lea.l      4(a7),a0
[0001e2ec] 720f                      moveq.l    #15,d1
[0001e2ee] 2454                      movea.l    (a4),a2
[0001e2f0] 302a 0010                 move.w     16(a2),d0
[0001e2f4] 4eb9 0006 65ce            jsr        $000665CE
[0001e2fa] 584f                      addq.w     #4,a7
[0001e2fc] 605c                      bra.s      $0001E35A
[0001e2fe] 0c6f 0001 003c            cmpi.w     #$0001,60(a7)
[0001e304] 661c                      bne.s      $0001E322
[0001e306] 486f 0030                 pea.l      48(a7)
[0001e30a] 224d                      movea.l    a5,a1
[0001e30c] 41ef 0004                 lea.l      4(a7),a0
[0001e310] 4241                      clr.w      d1
[0001e312] 2454                      movea.l    (a4),a2
[0001e314] 302a 0010                 move.w     16(a2),d0
[0001e318] 4eb9 0006 65ce            jsr        $000665CE
[0001e31e] 584f                      addq.w     #4,a7
[0001e320] 601e                      bra.s      $0001E340
[0001e322] 486f 0010                 pea.l      16(a7)
[0001e326] 486f 0034                 pea.l      52(a7)
[0001e32a] 224d                      movea.l    a5,a1
[0001e32c] 41ef 0008                 lea.l      8(a7),a0
[0001e330] 7201                      moveq.l    #1,d1
[0001e332] 2454                      movea.l    (a4),a2
[0001e334] 302a 0010                 move.w     16(a2),d0
[0001e338] 4eb9 0006 6632            jsr        $00066632
[0001e33e] 504f                      addq.w     #8,a7
[0001e340] 486f 001c                 pea.l      28(a7)
[0001e344] 224d                      movea.l    a5,a1
[0001e346] 41ef 0004                 lea.l      4(a7),a0
[0001e34a] 4241                      clr.w      d1
[0001e34c] 2454                      movea.l    (a4),a2
[0001e34e] 302a 0010                 move.w     16(a2),d0
[0001e352] 4eb9 0006 65ce            jsr        $000665CE
[0001e358] 584f                      addq.w     #4,a7
[0001e35a] 43ef 0050                 lea.l      80(a7),a1
[0001e35e] 206f 004c                 movea.l    76(a7),a0
[0001e362] 246f 004c                 movea.l    76(a7),a2
[0001e366] 246a 006a                 movea.l    106(a2),a2
[0001e36a] 4e92                      jsr        (a2)
[0001e36c] 382f 005e                 move.w     94(a7),d4
[0001e370] 362f 005c                 move.w     92(a7),d3
[0001e374] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0001e37a] 486f 004c                 pea.l      76(a7)
[0001e37e] 486f 0052                 pea.l      82(a7)
[0001e382] 43ef 0068                 lea.l      104(a7),a1
[0001e386] 41ef 006a                 lea.l      106(a7),a0
[0001e38a] 4eb9 0006 c978            jsr        $0006C978
[0001e390] 4fef 000c                 lea.l      12(a7),a7
[0001e394] 7001                      moveq.l    #1,d0
[0001e396] c06f 004a                 and.w      74(a7),d0
[0001e39a] 6600 fcda                 bne        $0001E076
[0001e39e] 2054                      movea.l    (a4),a0
[0001e3a0] 2268 023c                 movea.l    572(a0),a1
[0001e3a4] 3029 000e                 move.w     14(a1),d0
[0001e3a8] c07c 0800                 and.w      #$0800,d0
[0001e3ac] 670a                      beq.s      $0001E3B8
[0001e3ae] 206f 0018                 movea.l    24(a7),a0
[0001e3b2] 4eb9 0004 d996            jsr        $0004D996
[0001e3b8] 4fef 0064                 lea.l      100(a7),a7
[0001e3bc] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0001e3c0] 4e75                      rts
edic_abort:
[0001e3c2] 2079 0010 1f12            movea.l    ACSblk,a0
[0001e3c8] 2068 0258                 movea.l    600(a0),a0
[0001e3cc] 4eb9 0001 f716            jsr        $0001F716
[0001e3d2] 4e75                      rts
edic_ok:
[0001e3d4] 2079 0010 1f12            movea.l    ACSblk,a0
[0001e3da] 2068 0258                 movea.l    600(a0),a0
[0001e3de] 4eb9 0001 f1f8            jsr        $0001F1F8
[0001e3e4] 2079 0010 1f12            movea.l    ACSblk,a0
[0001e3ea] 2068 0258                 movea.l    600(a0),a0
[0001e3ee] 4eb9 0001 f716            jsr        $0001F716
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
[0001e440] 6700 0166                 beq        $0001E5A8
[0001e444] 2204                      move.l     d4,d1
[0001e446] 303c 00ff                 move.w     #$00FF,d0
[0001e44a] 4eb9 0007 712e            jsr        $0007712E
[0001e450] 2079 0010 1f12            movea.l    ACSblk,a0
[0001e456] 3028 001c                 move.w     28(a0),d0
[0001e45a] 5940                      subq.w     #4,d0
[0001e45c] 670a                      beq.s      $0001E468
[0001e45e] 5940                      subq.w     #4,d0
[0001e460] 6700 008a                 beq        $0001E4EC
[0001e464] 6000 0106                 bra        $0001E56C
[0001e468] 2a04                      move.l     d4,d5
[0001e46a] e58d                      lsl.l      #2,d5
[0001e46c] 5c85                      addq.l     #6,d5
[0001e46e] 2005                      move.l     d5,d0
[0001e470] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001e476] 2448                      movea.l    a0,a2
[0001e478] 200a                      move.l     a2,d0
[0001e47a] 6700 0112                 beq        $0001E58E
[0001e47e] 2205                      move.l     d5,d1
[0001e480] 4240                      clr.w      d0
[0001e482] 4eb9 0007 712e            jsr        $0007712E
[0001e488] 377c 0004 0018            move.w     #$0004,24(a3)
[0001e48e] 4a43                      tst.w      d3
[0001e490] 6730                      beq.s      $0001E4C2
[0001e492] 202b 001a                 move.l     26(a3),d0
[0001e496] 672a                      beq.s      $0001E4C2
[0001e498] 222b 0022                 move.l     34(a3),d1
[0001e49c] 670a                      beq.s      $0001E4A8
[0001e49e] 2041                      movea.l    d1,a0
[0001e4a0] 5d48                      subq.w     #6,a0
[0001e4a2] 4eb9 0004 7e26            jsr        $00047E26
[0001e4a8] 206b 0026                 movea.l    38(a3),a0
[0001e4ac] 4eb9 0004 7e26            jsr        $00047E26
[0001e4b2] 41ea 0006                 lea.l      6(a2),a0
[0001e4b6] 2748 0022                 move.l     a0,34(a3)
[0001e4ba] 2757 0026                 move.l     (a7),38(a3)
[0001e4be] 6000 00ce                 bra        $0001E58E
[0001e4c2] 202b 001a                 move.l     26(a3),d0
[0001e4c6] 670a                      beq.s      $0001E4D2
[0001e4c8] 2040                      movea.l    d0,a0
[0001e4ca] 5d48                      subq.w     #6,a0
[0001e4cc] 4eb9 0004 7e26            jsr        $00047E26
[0001e4d2] 206b 001e                 movea.l    30(a3),a0
[0001e4d6] 4eb9 0004 7e26            jsr        $00047E26
[0001e4dc] 41ea 0006                 lea.l      6(a2),a0
[0001e4e0] 2748 001a                 move.l     a0,26(a3)
[0001e4e4] 2757 001e                 move.l     (a7),30(a3)
[0001e4e8] 6000 00a4                 bra        $0001E58E
[0001e4ec] 2a04                      move.l     d4,d5
[0001e4ee] e78d                      lsl.l      #3,d5
[0001e4f0] 5c85                      addq.l     #6,d5
[0001e4f2] 2005                      move.l     d5,d0
[0001e4f4] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001e4fa] 2448                      movea.l    a0,a2
[0001e4fc] 200a                      move.l     a2,d0
[0001e4fe] 6700 008e                 beq        $0001E58E
[0001e502] 2205                      move.l     d5,d1
[0001e504] 4240                      clr.w      d0
[0001e506] 4eb9 0007 712e            jsr        $0007712E
[0001e50c] 377c 0008 002e            move.w     #$0008,46(a3)
[0001e512] 4a43                      tst.w      d3
[0001e514] 672e                      beq.s      $0001E544
[0001e516] 202b 0030                 move.l     48(a3),d0
[0001e51a] 6728                      beq.s      $0001E544
[0001e51c] 222b 0038                 move.l     56(a3),d1
[0001e520] 670a                      beq.s      $0001E52C
[0001e522] 2041                      movea.l    d1,a0
[0001e524] 5d48                      subq.w     #6,a0
[0001e526] 4eb9 0004 7e26            jsr        $00047E26
[0001e52c] 206b 003c                 movea.l    60(a3),a0
[0001e530] 4eb9 0004 7e26            jsr        $00047E26
[0001e536] 41ea 0006                 lea.l      6(a2),a0
[0001e53a] 2748 0038                 move.l     a0,56(a3)
[0001e53e] 2757 003c                 move.l     (a7),60(a3)
[0001e542] 604a                      bra.s      $0001E58E
[0001e544] 202b 0030                 move.l     48(a3),d0
[0001e548] 670a                      beq.s      $0001E554
[0001e54a] 2040                      movea.l    d0,a0
[0001e54c] 5d48                      subq.w     #6,a0
[0001e54e] 4eb9 0004 7e26            jsr        $00047E26
[0001e554] 206b 0034                 movea.l    52(a3),a0
[0001e558] 4eb9 0004 7e26            jsr        $00047E26
[0001e55e] 41ea 0006                 lea.l      6(a2),a0
[0001e562] 2748 0030                 move.l     a0,48(a3)
[0001e566] 2757 0034                 move.l     (a7),52(a3)
[0001e56a] 6022                      bra.s      $0001E58E
[0001e56c] 2a04                      move.l     d4,d5
[0001e56e] 2005                      move.l     d5,d0
[0001e570] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001e576] 2448                      movea.l    a0,a2
[0001e578] 200a                      move.l     a2,d0
[0001e57a] 6712                      beq.s      $0001E58E
[0001e57c] 2205                      move.l     d5,d1
[0001e57e] 4240                      clr.w      d0
[0001e580] 4eb9 0007 712e            jsr        $0007712E
[0001e586] 274a 0010                 move.l     a2,16(a3)
[0001e58a] 2757 0014                 move.l     (a7),20(a3)
[0001e58e] 206f 0004                 movea.l    4(a7),a0
[0001e592] 6100 e4d0                 bsr        $0001CA64
[0001e596] 72ff                      moveq.l    #-1,d1
[0001e598] 700e                      moveq.l    #14,d0
[0001e59a] 206f 0004                 movea.l    4(a7),a0
[0001e59e] 226f 0004                 movea.l    4(a7),a1
[0001e5a2] 2269 0066                 movea.l    102(a1),a1
[0001e5a6] 4e91                      jsr        (a1)
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
[0001e5d0] 6700 03da                 beq        $0001E9AC
[0001e5d4] 206f 002c                 movea.l    44(a7),a0
[0001e5d8] 2f68 0014 0008            move.l     20(a0),8(a7)
[0001e5de] 4eb9 0004 4840            jsr        $00044840
[0001e5e4] 4eb9 0004 484c            jsr        $0004484C
[0001e5ea] 3600                      move.w     d0,d3
[0001e5ec] 6b00 03be                 bmi        $0001E9AC
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
[0001e610] 6600 039a                 bne        $0001E9AC
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
[0001e640] 6712                      beq.s      $0001E654
[0001e642] 41f9 000a 1382            lea.l      $000A1382,a0
[0001e648] 7001                      moveq.l    #1,d0
[0001e64a] 4eb9 0005 17fe            jsr        $000517FE
[0001e650] 6000 035a                 bra        $0001E9AC
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
[0001e68a] 6700 0320                 beq        $0001E9AC
[0001e68e] 2206                      move.l     d6,d1
[0001e690] 303c 00ff                 move.w     #$00FF,d0
[0001e694] 4eb9 0007 712e            jsr        $0007712E
[0001e69a] 322d 0006                 move.w     6(a5),d1
[0001e69e] 302d 0004                 move.w     4(a5),d0
[0001e6a2] 4eb9 0004 d928            jsr        $0004D928
[0001e6a8] 2e88                      move.l     a0,(a7)
[0001e6aa] 660e                      bne.s      $0001E6BA
[0001e6ac] 206f 0010                 movea.l    16(a7),a0
[0001e6b0] 4eb9 0004 7e26            jsr        $00047E26
[0001e6b6] 6000 02f4                 bra        $0001E9AC
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
[0001e6f8] 4eb9 0006 66a8            jsr        $000666A8
[0001e6fe] 206f 000c                 movea.l    12(a7),a0
[0001e702] 3228 0018                 move.w     24(a0),d1
[0001e706] 3007                      move.w     d7,d0
[0001e708] 4eb9 0004 d928            jsr        $0004D928
[0001e70e] 2648                      movea.l    a0,a3
[0001e710] 200b                      move.l     a3,d0
[0001e712] 6616                      bne.s      $0001E72A
[0001e714] 206f 0010                 movea.l    16(a7),a0
[0001e718] 4eb9 0004 7e26            jsr        $00047E26
[0001e71e] 2057                      movea.l    (a7),a0
[0001e720] 4eb9 0004 d996            jsr        $0004D996
[0001e726] 6000 0284                 bra        $0001E9AC
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
[0001e75a] 4eb9 0006 65ce            jsr        $000665CE
[0001e760] 584f                      addq.w     #4,a7
[0001e762] be45                      cmp.w      d5,d7
[0001e764] 6f0c                      ble.s      $0001E772
[0001e766] 70ff                      moveq.l    #-1,d0
[0001e768] d045                      add.w      d5,d0
[0001e76a] 3940 000c                 move.w     d0,12(a4)
[0001e76e] 3940 0004                 move.w     d0,4(a4)
[0001e772] 302d 0006                 move.w     6(a5),d0
[0001e776] 206f 000c                 movea.l    12(a7),a0
[0001e77a] b068 0018                 cmp.w      24(a0),d0
[0001e77e] 6c0c                      bge.s      $0001E78C
[0001e780] 72ff                      moveq.l    #-1,d1
[0001e782] d240                      add.w      d0,d1
[0001e784] 3941 000e                 move.w     d1,14(a4)
[0001e788] 3941 0006                 move.w     d1,6(a4)
[0001e78c] 2f0b                      move.l     a3,-(a7)
[0001e78e] 226f 0004                 movea.l    4(a7),a1
[0001e792] 204c                      movea.l    a4,a0
[0001e794] 7203                      moveq.l    #3,d1
[0001e796] 2a79 0010 1f12            movea.l    ACSblk,a5
[0001e79c] 302d 0010                 move.w     16(a5),d0
[0001e7a0] 4eb9 0006 65ce            jsr        $000665CE
[0001e7a6] 584f                      addq.w     #4,a7
[0001e7a8] 2057                      movea.l    (a7),a0
[0001e7aa] 4eb9 0004 d996            jsr        $0004D996
[0001e7b0] 2079 0010 1f12            movea.l    ACSblk,a0
[0001e7b6] 2268 023c                 movea.l    572(a0),a1
[0001e7ba] 3029 000e                 move.w     14(a1),d0
[0001e7be] c07c 0800                 and.w      #$0800,d0
[0001e7c2] 6760                      beq.s      $0001E824
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
[0001e7e8] 4eb9 0004 d928            jsr        $0004D928
[0001e7ee] 2e88                      move.l     a0,(a7)
[0001e7f0] 660c                      bne.s      $0001E7FE
[0001e7f2] 204b                      movea.l    a3,a0
[0001e7f4] 4eb9 0004 d996            jsr        $0004D996
[0001e7fa] 6000 01b0                 bra        $0001E9AC
[0001e7fe] 2057                      movea.l    (a7),a0
[0001e800] 317c 0001 000a            move.w     #$0001,10(a0)
[0001e806] 2248                      movea.l    a0,a1
[0001e808] 2879 0010 1f12            movea.l    ACSblk,a4
[0001e80e] 302c 0010                 move.w     16(a4),d0
[0001e812] 204b                      movea.l    a3,a0
[0001e814] 4eb9 0006 66a8            jsr        $000666A8
[0001e81a] 204b                      movea.l    a3,a0
[0001e81c] 4eb9 0004 d996            jsr        $0004D996
[0001e822] 2657                      movea.l    (a7),a3
[0001e824] 2079 0010 1f12            movea.l    ACSblk,a0
[0001e82a] 3028 001c                 move.w     28(a0),d0
[0001e82e] 5940                      subq.w     #4,d0
[0001e830] 670a                      beq.s      $0001E83C
[0001e832] 5940                      subq.w     #4,d0
[0001e834] 6700 0092                 beq        $0001E8C8
[0001e838] 6000 0116                 bra        $0001E950
[0001e83c] 2e06                      move.l     d6,d7
[0001e83e] e58f                      lsl.l      #2,d7
[0001e840] 5c87                      addq.l     #6,d7
[0001e842] 2007                      move.l     d7,d0
[0001e844] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001e84a] 2848                      movea.l    a0,a4
[0001e84c] 200c                      move.l     a4,d0
[0001e84e] 6700 0124                 beq        $0001E974
[0001e852] 2007                      move.l     d7,d0
[0001e854] 2253                      movea.l    (a3),a1
[0001e856] 41ec 0006                 lea.l      6(a4),a0
[0001e85a] 4eb9 0007 6f44            jsr        $00076F44
[0001e860] 357c 0004 0018            move.w     #$0004,24(a2)
[0001e866] 4a44                      tst.w      d4
[0001e868] 6732                      beq.s      $0001E89C
[0001e86a] 202a 001a                 move.l     26(a2),d0
[0001e86e] 672c                      beq.s      $0001E89C
[0001e870] 222a 0022                 move.l     34(a2),d1
[0001e874] 670a                      beq.s      $0001E880
[0001e876] 2041                      movea.l    d1,a0
[0001e878] 5d48                      subq.w     #6,a0
[0001e87a] 4eb9 0004 7e26            jsr        $00047E26
[0001e880] 206a 0026                 movea.l    38(a2),a0
[0001e884] 4eb9 0004 7e26            jsr        $00047E26
[0001e88a] 41ec 0006                 lea.l      6(a4),a0
[0001e88e] 2548 0022                 move.l     a0,34(a2)
[0001e892] 256f 0010 0026            move.l     16(a7),38(a2)
[0001e898] 6000 00da                 bra        $0001E974
[0001e89c] 202a 001a                 move.l     26(a2),d0
[0001e8a0] 670a                      beq.s      $0001E8AC
[0001e8a2] 2040                      movea.l    d0,a0
[0001e8a4] 5d48                      subq.w     #6,a0
[0001e8a6] 4eb9 0004 7e26            jsr        $00047E26
[0001e8ac] 206a 001e                 movea.l    30(a2),a0
[0001e8b0] 4eb9 0004 7e26            jsr        $00047E26
[0001e8b6] 41ec 0006                 lea.l      6(a4),a0
[0001e8ba] 2548 001a                 move.l     a0,26(a2)
[0001e8be] 256f 0010 001e            move.l     16(a7),30(a2)
[0001e8c4] 6000 00ae                 bra        $0001E974
[0001e8c8] 2e06                      move.l     d6,d7
[0001e8ca] e78f                      lsl.l      #3,d7
[0001e8cc] 5c87                      addq.l     #6,d7
[0001e8ce] 2007                      move.l     d7,d0
[0001e8d0] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001e8d6] 2848                      movea.l    a0,a4
[0001e8d8] 200c                      move.l     a4,d0
[0001e8da] 6700 0098                 beq        $0001E974
[0001e8de] 2253                      movea.l    (a3),a1
[0001e8e0] 41ec 0006                 lea.l      6(a4),a0
[0001e8e4] 2007                      move.l     d7,d0
[0001e8e6] 4eb9 0007 6f44            jsr        $00076F44
[0001e8ec] 357c 0008 002e            move.w     #$0008,46(a2)
[0001e8f2] 4a44                      tst.w      d4
[0001e8f4] 6730                      beq.s      $0001E926
[0001e8f6] 202a 0030                 move.l     48(a2),d0
[0001e8fa] 672a                      beq.s      $0001E926
[0001e8fc] 222a 0038                 move.l     56(a2),d1
[0001e900] 670a                      beq.s      $0001E90C
[0001e902] 2041                      movea.l    d1,a0
[0001e904] 5d48                      subq.w     #6,a0
[0001e906] 4eb9 0004 7e26            jsr        $00047E26
[0001e90c] 206a 003c                 movea.l    60(a2),a0
[0001e910] 4eb9 0004 7e26            jsr        $00047E26
[0001e916] 41ec 0006                 lea.l      6(a4),a0
[0001e91a] 2548 0038                 move.l     a0,56(a2)
[0001e91e] 256f 0010 003c            move.l     16(a7),60(a2)
[0001e924] 604e                      bra.s      $0001E974
[0001e926] 202a 0030                 move.l     48(a2),d0
[0001e92a] 670a                      beq.s      $0001E936
[0001e92c] 2040                      movea.l    d0,a0
[0001e92e] 5d48                      subq.w     #6,a0
[0001e930] 4eb9 0004 7e26            jsr        $00047E26
[0001e936] 206a 0034                 movea.l    52(a2),a0
[0001e93a] 4eb9 0004 7e26            jsr        $00047E26
[0001e940] 41ec 0006                 lea.l      6(a4),a0
[0001e944] 2548 0030                 move.l     a0,48(a2)
[0001e948] 256f 0010 0034            move.l     16(a7),52(a2)
[0001e94e] 6024                      bra.s      $0001E974
[0001e950] 2e06                      move.l     d6,d7
[0001e952] 2007                      move.l     d7,d0
[0001e954] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001e95a] 2848                      movea.l    a0,a4
[0001e95c] 200c                      move.l     a4,d0
[0001e95e] 6714                      beq.s      $0001E974
[0001e960] 2253                      movea.l    (a3),a1
[0001e962] 2007                      move.l     d7,d0
[0001e964] 4eb9 0007 6f44            jsr        $00076F44
[0001e96a] 254c 0010                 move.l     a4,16(a2)
[0001e96e] 256f 0010 0014            move.l     16(a7),20(a2)
[0001e974] 206f 002c                 movea.l    44(a7),a0
[0001e978] 6100 e0ea                 bsr        $0001CA64
[0001e97c] 204b                      movea.l    a3,a0
[0001e97e] 4eb9 0004 d996            jsr        $0004D996
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
[0001e9a6] 4eb9 0004 492a            jsr        $0004492A
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
[0001e9e2] 664c                      bne.s      $0001EA30
[0001e9e4] 4a43                      tst.w      d3
[0001e9e6] 6626                      bne.s      $0001EA0E
[0001e9e8] 222b 001a                 move.l     26(a3),d1
[0001e9ec] 670a                      beq.s      $0001E9F8
[0001e9ee] 2041                      movea.l    d1,a0
[0001e9f0] 5d48                      subq.w     #6,a0
[0001e9f2] 4eb9 0004 7e26            jsr        $00047E26
[0001e9f8] 206b 001e                 movea.l    30(a3),a0
[0001e9fc] 4eb9 0004 7e26            jsr        $00047E26
[0001ea02] 42ab 001a                 clr.l      26(a3)
[0001ea06] 42ab 001e                 clr.l      30(a3)
[0001ea0a] 426b 0018                 clr.w      24(a3)
[0001ea0e] 202b 0022                 move.l     34(a3),d0
[0001ea12] 670a                      beq.s      $0001EA1E
[0001ea14] 2040                      movea.l    d0,a0
[0001ea16] 5d48                      subq.w     #6,a0
[0001ea18] 4eb9 0004 7e26            jsr        $00047E26
[0001ea1e] 206b 0026                 movea.l    38(a3),a0
[0001ea22] 4eb9 0004 7e26            jsr        $00047E26
[0001ea28] 42ab 0022                 clr.l      34(a3)
[0001ea2c] 42ab 0026                 clr.l      38(a3)
[0001ea30] 302b 002e                 move.w     46(a3),d0
[0001ea34] 2079 0010 1f12            movea.l    ACSblk,a0
[0001ea3a] b068 001c                 cmp.w      28(a0),d0
[0001ea3e] 664c                      bne.s      $0001EA8C
[0001ea40] 4a43                      tst.w      d3
[0001ea42] 6626                      bne.s      $0001EA6A
[0001ea44] 222b 0030                 move.l     48(a3),d1
[0001ea48] 670a                      beq.s      $0001EA54
[0001ea4a] 2041                      movea.l    d1,a0
[0001ea4c] 5d48                      subq.w     #6,a0
[0001ea4e] 4eb9 0004 7e26            jsr        $00047E26
[0001ea54] 206b 0034                 movea.l    52(a3),a0
[0001ea58] 4eb9 0004 7e26            jsr        $00047E26
[0001ea5e] 42ab 0030                 clr.l      48(a3)
[0001ea62] 42ab 0034                 clr.l      52(a3)
[0001ea66] 426b 002e                 clr.w      46(a3)
[0001ea6a] 202b 0038                 move.l     56(a3),d0
[0001ea6e] 670a                      beq.s      $0001EA7A
[0001ea70] 2040                      movea.l    d0,a0
[0001ea72] 5d48                      subq.w     #6,a0
[0001ea74] 4eb9 0004 7e26            jsr        $00047E26
[0001ea7a] 206b 003c                 movea.l    60(a3),a0
[0001ea7e] 4eb9 0004 7e26            jsr        $00047E26
[0001ea84] 42ab 0038                 clr.l      56(a3)
[0001ea88] 42ab 003c                 clr.l      60(a3)
[0001ea8c] 204a                      movea.l    a2,a0
[0001ea8e] 6100 dfd4                 bsr        $0001CA64
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
[0001eab2] 6068                      bra.s      $0001EB1C
[0001eab4] 341a                      move.w     (a2)+,d2
[0001eab6] 3600                      move.w     d0,d3
[0001eab8] 2049                      movea.l    a1,a0
[0001eaba] 780f                      moveq.l    #15,d4
[0001eabc] 6054                      bra.s      $0001EB12
[0001eabe] 4a43                      tst.w      d3
[0001eac0] 6b20                      bmi.s      $0001EAE2
[0001eac2] 7c54                      moveq.l    #84,d6
[0001eac4] 1146 0060                 move.b     d6,96(a0)
[0001eac8] 1146 0040                 move.b     d6,64(a0)
[0001eacc] 1146 0020                 move.b     d6,32(a0)
[0001ead0] 1086                      move.b     d6,(a0)
[0001ead2] 7caa                      moveq.l    #-86,d6
[0001ead4] 1146 0050                 move.b     d6,80(a0)
[0001ead8] 1146 0030                 move.b     d6,48(a0)
[0001eadc] 1146 0010                 move.b     d6,16(a0)
[0001eae0] 6024                      bra.s      $0001EB06
[0001eae2] 4a42                      tst.w      d2
[0001eae4] 6b04                      bmi.s      $0001EAEA
[0001eae6] 4205                      clr.b      d5
[0001eae8] 6002                      bra.s      $0001EAEC
[0001eaea] 7afe                      moveq.l    #-2,d5
[0001eaec] 1145 0060                 move.b     d5,96(a0)
[0001eaf0] 1145 0050                 move.b     d5,80(a0)
[0001eaf4] 1145 0040                 move.b     d5,64(a0)
[0001eaf8] 1145 0030                 move.b     d5,48(a0)
[0001eafc] 1145 0020                 move.b     d5,32(a0)
[0001eb00] 1145 0010                 move.b     d5,16(a0)
[0001eb04] 1085                      move.b     d5,(a0)
[0001eb06] 4228 0070                 clr.b      112(a0)
[0001eb0a] 5248                      addq.w     #1,a0
[0001eb0c] d442                      add.w      d2,d2
[0001eb0e] d643                      add.w      d3,d3
[0001eb10] 5344                      subq.w     #1,d4
[0001eb12] 4a44                      tst.w      d4
[0001eb14] 6aa8                      bpl.s      $0001EABE
[0001eb16] 43e9 0080                 lea.l      128(a1),a1
[0001eb1a] 5341                      subq.w     #1,d1
[0001eb1c] 4a41                      tst.w      d1
[0001eb1e] 6a94                      bpl.s      $0001EAB4
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
[0001eb58] 6606                      bne.s      $0001EB60
[0001eb5a] 322f 0016                 move.w     22(a7),d1
[0001eb5e] 6736                      beq.s      $0001EB96
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
[0001eb90] 4eb9 0006 3f60            jsr        $00063F60
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
[0001ebc0] 24bc 000f c440            move.l     #$000FC440,(a2)
[0001ebc6] 426a 000a                 clr.w      10(a2)
[0001ebca] 2f7c 000f dc40 0042       move.l     #$000FDC40,66(a7)
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
[0001ec10] 2f7c 000f c410 007e       move.l     #$000FC410,126(a7)
[0001ec18] 426f 0088                 clr.w      136(a7)
[0001ec1c] 43f9 000f c3e0            lea.l      $000FC3E0,a1
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
[0001ec92] 663e                      bne.s      $0001ECD2
[0001ec94] 3f40 009e                 move.w     d0,158(a7)
[0001ec98] 3f40 0076                 move.w     d0,118(a7)
[0001ec9c] 3f40 008a                 move.w     d0,138(a7)
[0001eca0] 3f40 004e                 move.w     d0,78(a7)
[0001eca4] 3540 000c                 move.w     d0,12(a2)
[0001eca8] 2228 0022                 move.l     34(a0),d1
[0001ecac] 6718                      beq.s      $0001ECC6
[0001ecae] 7401                      moveq.l    #1,d2
[0001ecb0] 226f 0038                 movea.l    56(a7),a1
[0001ecb4] c469 000a                 and.w      10(a1),d2
[0001ecb8] 670c                      beq.s      $0001ECC6
[0001ecba] 2f68 0026 003e            move.l     38(a0),62(a7)
[0001ecc0] 2f41 0092                 move.l     d1,146(a7)
[0001ecc4] 600c                      bra.s      $0001ECD2
[0001ecc6] 2f68 001e 003e            move.l     30(a0),62(a7)
[0001eccc] 2f68 001a 0092            move.l     26(a0),146(a7)
[0001ecd2] 2255                      movea.l    (a5),a1
[0001ecd4] 3029 001c                 move.w     28(a1),d0
[0001ecd8] b068 002e                 cmp.w      46(a0),d0
[0001ecdc] 663e                      bne.s      $0001ED1C
[0001ecde] 3f40 009e                 move.w     d0,158(a7)
[0001ece2] 3f40 0076                 move.w     d0,118(a7)
[0001ece6] 3f40 008a                 move.w     d0,138(a7)
[0001ecea] 3f40 004e                 move.w     d0,78(a7)
[0001ecee] 3540 000c                 move.w     d0,12(a2)
[0001ecf2] 2228 0038                 move.l     56(a0),d1
[0001ecf6] 6718                      beq.s      $0001ED10
[0001ecf8] 7401                      moveq.l    #1,d2
[0001ecfa] 226f 0038                 movea.l    56(a7),a1
[0001ecfe] c469 000a                 and.w      10(a1),d2
[0001ed02] 670c                      beq.s      $0001ED10
[0001ed04] 2f68 003c 003e            move.l     60(a0),62(a7)
[0001ed0a] 2f41 0092                 move.l     d1,146(a7)
[0001ed0e] 600c                      bra.s      $0001ED1C
[0001ed10] 2f68 0034 003e            move.l     52(a0),62(a7)
[0001ed16] 2f68 0030 0092            move.l     48(a0),146(a7)
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
[0001ed96] 6000 0184                 bra        $0001EF1C
[0001ed9a] 396c 0002 0006            move.w     2(a4),6(a4)
[0001eda0] 7007                      moveq.l    #7,d0
[0001eda2] d06f 003c                 add.w      60(a7),d0
[0001eda6] b06f 0012                 cmp.w      18(a7),d0
[0001edaa] 6d00 0166                 blt        $0001EF12
[0001edae] 322f 003c                 move.w     60(a7),d1
[0001edb2] b26f 0016                 cmp.w      22(a7),d1
[0001edb6] 6e00 015a                 bgt        $0001EF12
[0001edba] 206f 00da                 movea.l    218(a7),a0
[0001edbe] 3e28 000a                 move.w     10(a0),d7
[0001edc2] 4254                      clr.w      (a4)
[0001edc4] 4244                      clr.w      d4
[0001edc6] 6000 0144                 bra        $0001EF0C
[0001edca] 303c 0080                 move.w     #$0080,d0
[0001edce] d047                      add.w      d7,d0
[0001edd0] b06f 0010                 cmp.w      16(a7),d0
[0001edd4] 6d00 012c                 blt        $0001EF02
[0001edd8] be6f 0014                 cmp.w      20(a7),d7
[0001eddc] 6e00 0124                 bgt        $0001EF02
[0001ede0] 3214                      move.w     (a4),d1
[0001ede2] d26c 000c                 add.w      12(a4),d1
[0001ede6] 3941 0004                 move.w     d1,4(a4)
[0001edea] 2055                      movea.l    (a5),a0
[0001edec] 2268 023c                 movea.l    572(a0),a1
[0001edf0] 3429 000e                 move.w     14(a1),d2
[0001edf4] c47c 0800                 and.w      #$0800,d2
[0001edf8] 6748                      beq.s      $0001EE42
[0001edfa] 3028 001c                 move.w     28(a0),d0
[0001edfe] b06f 0076                 cmp.w      118(a7),d0
[0001ee02] 663e                      bne.s      $0001EE42
[0001ee04] 7a00                      moveq.l    #0,d5
[0001ee06] 602e                      bra.s      $0001EE36
[0001ee08] 3006                      move.w     d6,d0
[0001ee0a] c1c3                      muls.w     d3,d0
[0001ee0c] d044                      add.w      d4,d0
[0001ee0e] 48c0                      ext.l      d0
[0001ee10] 2f00                      move.l     d0,-(a7)
[0001ee12] 2005                      move.l     d5,d0
[0001ee14] 222f 0010                 move.l     16(a7),d1
[0001ee18] 4eb9 0007 76f0            jsr        $000776F0
[0001ee1e] d09f                      add.l      (a7)+,d0
[0001ee20] d080                      add.l      d0,d0
[0001ee22] 206f 0008                 movea.l    8(a7),a0
[0001ee26] 2205                      move.l     d5,d1
[0001ee28] d281                      add.l      d1,d1
[0001ee2a] 226f 0004                 movea.l    4(a7),a1
[0001ee2e] 33b0 0800 1800            move.w     0(a0,d0.l),0(a1,d1.l)
[0001ee34] 5285                      addq.l     #1,d5
[0001ee36] 302f 009e                 move.w     158(a7),d0
[0001ee3a] 48c0                      ext.l      d0
[0001ee3c] ba80                      cmp.l      d0,d5
[0001ee3e] 6dc8                      blt.s      $0001EE08
[0001ee40] 602e                      bra.s      $0001EE70
[0001ee42] 486f 007e                 pea.l      126(a7)
[0001ee46] 43ef 0096                 lea.l      150(a7),a1
[0001ee4a] 204c                      movea.l    a4,a0
[0001ee4c] 7203                      moveq.l    #3,d1
[0001ee4e] 2c55                      movea.l    (a5),a6
[0001ee50] 302e 0010                 move.w     16(a6),d0
[0001ee54] 4eb9 0006 65ce            jsr        $000665CE
[0001ee5a] 584f                      addq.w     #4,a7
[0001ee5c] 43ef 006a                 lea.l      106(a7),a1
[0001ee60] 41ef 007e                 lea.l      126(a7),a0
[0001ee64] 2c55                      movea.l    (a5),a6
[0001ee66] 302e 0010                 move.w     16(a6),d0
[0001ee6a] 4eb9 0006 66a8            jsr        $000666A8
[0001ee70] 3206                      move.w     d6,d1
[0001ee72] c3c3                      muls.w     d3,d1
[0001ee74] d244                      add.w      d4,d1
[0001ee76] 48c1                      ext.l      d1
[0001ee78] d281                      add.l      d1,d1
[0001ee7a] 206f 003e                 movea.l    62(a7),a0
[0001ee7e] 3030 1800                 move.w     0(a0,d1.l),d0
[0001ee82] 43ef 0042                 lea.l      66(a7),a1
[0001ee86] 41ef 006a                 lea.l      106(a7),a0
[0001ee8a] 6100 fc18                 bsr        $0001EAA4
[0001ee8e] 224a                      movea.l    a2,a1
[0001ee90] 41ef 0042                 lea.l      66(a7),a0
[0001ee94] 2c55                      movea.l    (a5),a6
[0001ee96] 302e 0010                 move.w     16(a6),d0
[0001ee9a] 4eb9 0006 66a8            jsr        $000666A8
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
[0001eeca] 671c                      beq.s      $0001EEE8
[0001eecc] 4857                      pea.l      (a7)
[0001eece] 4868 026a                 pea.l      618(a0)
[0001eed2] 224a                      movea.l    a2,a1
[0001eed4] 204b                      movea.l    a3,a0
[0001eed6] 2c55                      movea.l    (a5),a6
[0001eed8] 302e 0010                 move.w     16(a6),d0
[0001eedc] 7201                      moveq.l    #1,d1
[0001eede] 4eb9 0006 6632            jsr        $00066632
[0001eee4] 504f                      addq.w     #8,a7
[0001eee6] 601a                      bra.s      $0001EF02
[0001eee8] 2055                      movea.l    (a5),a0
[0001eeea] 4868 026a                 pea.l      618(a0)
[0001eeee] 224a                      movea.l    a2,a1
[0001eef0] 204b                      movea.l    a3,a0
[0001eef2] 7203                      moveq.l    #3,d1
[0001eef4] 2c55                      movea.l    (a5),a6
[0001eef6] 302e 0010                 move.w     16(a6),d0
[0001eefa] 4eb9 0006 65ce            jsr        $000665CE
[0001ef00] 584f                      addq.w     #4,a7
[0001ef02] de7c 0080                 add.w      #$0080,d7
[0001ef06] 0654 0010                 addi.w     #$0010,(a4)
[0001ef0a] 5244                      addq.w     #1,d4
[0001ef0c] b644                      cmp.w      d4,d3
[0001ef0e] 6e00 feba                 bgt        $0001EDCA
[0001ef12] 506f 003c                 addq.w     #8,60(a7)
[0001ef16] 526c 0002                 addq.w     #1,2(a4)
[0001ef1a] 5246                      addq.w     #1,d6
[0001ef1c] 206f 00a6                 movea.l    166(a7),a0
[0001ef20] bc68 0018                 cmp.w      24(a0),d6
[0001ef24] 6d00 fe74                 blt        $0001ED9A
[0001ef28] 41ef 0010                 lea.l      16(a7),a0
[0001ef2c] 4241                      clr.w      d1
[0001ef2e] 2255                      movea.l    (a5),a1
[0001ef30] 3029 0010                 move.w     16(a1),d0
[0001ef34] 4eb9 0006 3f60            jsr        $00063F60
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
[0001ef78] 4eb9 0004 b286            jsr        $0004B286
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
[0001efd6] 6100 d7f6                 bsr        $0001C7CE
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
[0001f006] 6c08                      bge.s      $0001F010
[0001f008] 3b6e 0014 0014            move.w     20(a6),20(a5)
[0001f00e] 6004                      bra.s      $0001F014
[0001f010] 3b43 0014                 move.w     d3,20(a5)
[0001f014] b86e 0016                 cmp.w      22(a6),d4
[0001f018] 6c08                      bge.s      $0001F022
[0001f01a] 3b6e 0016 0016            move.w     22(a6),22(a5)
[0001f020] 6004                      bra.s      $0001F026
[0001f022] 3b44 0016                 move.w     d4,22(a5)
[0001f026] 7008                      moveq.l    #8,d0
[0001f028] 3b40 0046                 move.w     d0,70(a5)
[0001f02c] 3b40 0044                 move.w     d0,68(a5)
[0001f030] 277c 0005 ef42 0062       move.l     #$0005EF42,98(a3)
[0001f038] 2052                      movea.l    (a2),a0
[0001f03a] 3028 000c                 move.w     12(a0),d0
[0001f03e] 3228 0004                 move.w     4(a0),d1
[0001f042] d241                      add.w      d1,d1
[0001f044] 226b 0014                 movea.l    20(a3),a1
[0001f048] d269 0014                 add.w      20(a1),d1
[0001f04c] b041                      cmp.w      d1,d0
[0001f04e] 6c02                      bge.s      $0001F052
[0001f050] 6010                      bra.s      $0001F062
[0001f052] 2052                      movea.l    (a2),a0
[0001f054] 3028 0004                 move.w     4(a0),d0
[0001f058] d040                      add.w      d0,d0
[0001f05a] 226b 0014                 movea.l    20(a3),a1
[0001f05e] d069 0014                 add.w      20(a1),d0
[0001f062] 3740 0028                 move.w     d0,40(a3)
[0001f066] 2052                      movea.l    (a2),a0
[0001f068] 3228 000e                 move.w     14(a0),d1
[0001f06c] 3428 0006                 move.w     6(a0),d2
[0001f070] e54a                      lsl.w      #2,d2
[0001f072] 226b 0014                 movea.l    20(a3),a1
[0001f076] d469 0016                 add.w      22(a1),d2
[0001f07a] b242                      cmp.w      d2,d1
[0001f07c] 6c02                      bge.s      $0001F080
[0001f07e] 6010                      bra.s      $0001F090
[0001f080] 2052                      movea.l    (a2),a0
[0001f082] 3228 0006                 move.w     6(a0),d1
[0001f086] e549                      lsl.w      #2,d1
[0001f088] 226b 0014                 movea.l    20(a3),a1
[0001f08c] d269 0016                 add.w      22(a1),d1
[0001f090] 3741 002a                 move.w     d1,42(a3)
[0001f094] 302b 0022                 move.w     34(a3),d0
[0001f098] c07c 0100                 and.w      #$0100,d0
[0001f09c] 670a                      beq.s      $0001F0A8
[0001f09e] 342b 0022                 move.w     34(a3),d2
[0001f0a2] c47c 0800                 and.w      #$0800,d2
[0001f0a6] 6624                      bne.s      $0001F0CC
[0001f0a8] 006b 0100 0056            ori.w      #$0100,86(a3)
[0001f0ae] 204b                      movea.l    a3,a0
[0001f0b0] 4eb9 0005 013e            jsr        $0005013E
[0001f0b6] 006b 0fe0 0022            ori.w      #$0FE0,34(a3)
[0001f0bc] 204b                      movea.l    a3,a0
[0001f0be] 4eb9 0004 f69e            jsr        $0004F69E
[0001f0c4] 026b feff 0056            andi.w     #$FEFF,86(a3)
[0001f0ca] 6008                      bra.s      $0001F0D4
[0001f0cc] 204b                      movea.l    a3,a0
[0001f0ce] 4eb9 0001 44f2            jsr        $000144F2
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
[0001f10c] 4eb9 0004 b286            jsr        $0004B286
[0001f112] 377c 001a 001c            move.w     #$001A,28(a3)
[0001f118] 277c 0001 f342 0062       move.l     #$0001F342,98(a3)
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
[0001f14e] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
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
[0001f186] 4eb9 0006 d60a            jsr        $0006D60A
[0001f18c] 4fef 0012                 lea.l      18(a7),a7
[0001f190] 362b 0022                 move.w     34(a3),d3
[0001f194] 2052                      movea.l    (a2),a0
[0001f196] 302f 0004                 move.w     4(a7),d0
[0001f19a] b068 000c                 cmp.w      12(a0),d0
[0001f19e] 6c04                      bge.s      $0001F1A4
[0001f1a0] c67c f1ff                 and.w      #$F1FF,d3
[0001f1a4] 2052                      movea.l    (a2),a0
[0001f1a6] 302f 0006                 move.w     6(a7),d0
[0001f1aa] b068 000e                 cmp.w      14(a0),d0
[0001f1ae] 6c04                      bge.s      $0001F1B4
[0001f1b0] c67c fe3f                 and.w      #$FE3F,d3
[0001f1b4] 3003                      move.w     d3,d0
[0001f1b6] c07c 0900                 and.w      #$0900,d0
[0001f1ba] 6604                      bne.s      $0001F1C0
[0001f1bc] c67c ffdf                 and.w      #$FFDF,d3
[0001f1c0] b66b 0022                 cmp.w      34(a3),d3
[0001f1c4] 6722                      beq.s      $0001F1E8
[0001f1c6] 3743 0022                 move.w     d3,34(a3)
[0001f1ca] 006b 0100 0056            ori.w      #$0100,86(a3)
[0001f1d0] 204b                      movea.l    a3,a0
[0001f1d2] 4eb9 0005 013e            jsr        $0005013E
[0001f1d8] 204b                      movea.l    a3,a0
[0001f1da] 4eb9 0004 f69e            jsr        $0004F69E
[0001f1e0] 026b feff 0056            andi.w     #$FEFF,86(a3)
[0001f1e6] 6008                      bra.s      $0001F1F0
[0001f1e8] 204b                      movea.l    a3,a0
[0001f1ea] 4eb9 0001 454a            jsr        $0001454A
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
[0001f214] 4eb9 0007 6f44            jsr        $00076F44
[0001f21a] 7216                      moveq.l    #22,d1
[0001f21c] 4240                      clr.w      d0
[0001f21e] 41ef 0026                 lea.l      38(a7),a0
[0001f222] 4eb9 0007 712e            jsr        $0007712E
[0001f228] 7216                      moveq.l    #22,d1
[0001f22a] 4240                      clr.w      d0
[0001f22c] 41ef 003c                 lea.l      60(a7),a0
[0001f230] 4eb9 0007 712e            jsr        $0007712E
[0001f236] 97cb                      suba.l     a3,a3
[0001f238] 202a 0030                 move.l     48(a2),d0
[0001f23c] 673c                      beq.s      $0001F27A
[0001f23e] 2f4b 004e                 move.l     a3,78(a7)
[0001f242] 3f7c 0008 003c            move.w     #$0008,60(a7)
[0001f248] 224c                      movea.l    a4,a1
[0001f24a] 2040                      movea.l    d0,a0
[0001f24c] 7008                      moveq.l    #8,d0
[0001f24e] 6100 d72c                 bsr        $0001C97C
[0001f252] 2f48 003e                 move.l     a0,62(a7)
[0001f256] 2f6a 0034 0042            move.l     52(a2),66(a7)
[0001f25c] 202a 0038                 move.l     56(a2),d0
[0001f260] 6714                      beq.s      $0001F276
[0001f262] 224c                      movea.l    a4,a1
[0001f264] 2040                      movea.l    d0,a0
[0001f266] 7008                      moveq.l    #8,d0
[0001f268] 6100 d712                 bsr        $0001C97C
[0001f26c] 2f48 0046                 move.l     a0,70(a7)
[0001f270] 2f6a 003c 004a            move.l     60(a2),74(a7)
[0001f276] 47ef 003c                 lea.l      60(a7),a3
[0001f27a] 202a 001a                 move.l     26(a2),d0
[0001f27e] 673c                      beq.s      $0001F2BC
[0001f280] 2f4b 0038                 move.l     a3,56(a7)
[0001f284] 3f7c 0004 0026            move.w     #$0004,38(a7)
[0001f28a] 224c                      movea.l    a4,a1
[0001f28c] 2040                      movea.l    d0,a0
[0001f28e] 7004                      moveq.l    #4,d0
[0001f290] 6100 d6ea                 bsr        $0001C97C
[0001f294] 2f48 0028                 move.l     a0,40(a7)
[0001f298] 2f6a 001e 002c            move.l     30(a2),44(a7)
[0001f29e] 202a 0022                 move.l     34(a2),d0
[0001f2a2] 6714                      beq.s      $0001F2B8
[0001f2a4] 224c                      movea.l    a4,a1
[0001f2a6] 2040                      movea.l    d0,a0
[0001f2a8] 7004                      moveq.l    #4,d0
[0001f2aa] 6100 d6d0                 bsr        $0001C97C
[0001f2ae] 2f48 0030                 move.l     a0,48(a7)
[0001f2b2] 2f6a 0026 0034            move.l     38(a2),52(a7)
[0001f2b8] 47ef 0026                 lea.l      38(a7),a3
[0001f2bc] 2f4b 0022                 move.l     a3,34(a7)
[0001f2c0] 43d7                      lea.l      (a7),a1
[0001f2c2] 206f 0052                 movea.l    82(a7),a0
[0001f2c6] 4eb9 0003 2fea            jsr        $00032FEA
[0001f2cc] 2648                      movea.l    a0,a3
[0001f2ce] 200b                      move.l     a3,d0
[0001f2d0] 673e                      beq.s      $0001F310
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
[0001f30a] 4eb9 0003 3220            jsr        $00033220
[0001f310] 206f 0028                 movea.l    40(a7),a0
[0001f314] 4eb9 0004 7d6c            jsr        $00047D6C
[0001f31a] 206f 0030                 movea.l    48(a7),a0
[0001f31e] 4eb9 0004 7d6c            jsr        $00047D6C
[0001f324] 206f 003e                 movea.l    62(a7),a0
[0001f328] 4eb9 0004 7d6c            jsr        $00047D6C
[0001f32e] 206f 0046                 movea.l    70(a7),a0
[0001f332] 4eb9 0004 7d6c            jsr        $00047D6C
[0001f338] 4fef 005a                 lea.l      90(a7),a7
[0001f33c] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0001f340] 4e75                      rts
ic_keys:
[0001f342] 48e7 0038                 movem.l    a2-a4,-(a7)
[0001f346] 594f                      subq.w     #4,a7
[0001f348] 2448                      movea.l    a0,a2
[0001f34a] 4eb9 0005 ef2c            jsr        $0005EF2C
[0001f350] 2052                      movea.l    (a2),a0
[0001f352] 2268 0008                 movea.l    8(a0),a1
[0001f356] 2669 018c                 movea.l    396(a1),a3
[0001f35a] 49eb 000c                 lea.l      12(a3),a4
[0001f35e] 43d7                      lea.l      (a7),a1
[0001f360] 7003                      moveq.l    #3,d0
[0001f362] 206a 0014                 movea.l    20(a2),a0
[0001f366] 41e8 0288                 lea.l      648(a0),a0
[0001f36a] 4eb9 0005 e010            jsr        $0005E010
[0001f370] 2057                      movea.l    (a7),a0
[0001f372] 1950 0001                 move.b     (a0),1(a4)
[0001f376] 226b 0008                 movea.l    8(a3),a1
[0001f37a] 701a                      moveq.l    #26,d0
[0001f37c] 206a 0014                 movea.l    20(a2),a0
[0001f380] 4eb9 0004 b154            jsr        $0004B154
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
[0001f3ae] 670c                      beq.s      $0001F3BC
[0001f3b0] 204c                      movea.l    a4,a0
[0001f3b2] 4eb9 0004 f0ca            jsr        $0004F0CA
[0001f3b8] 6000 00ce                 bra        $0001F488
[0001f3bc] 7048                      moveq.l    #72,d0
[0001f3be] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001f3c4] 2448                      movea.l    a0,a2
[0001f3c6] 200a                      move.l     a2,d0
[0001f3c8] 6700 00ba                 beq        $0001F484
[0001f3cc] 2257                      movea.l    (a7),a1
[0001f3ce] 2091                      move.l     (a1),(a0)
[0001f3d0] 2569 0004 0004            move.l     4(a1),4(a2)
[0001f3d6] 41eb 0016                 lea.l      22(a3),a0
[0001f3da] 23c8 000a 48d0            move.l     a0,$000A48D0
[0001f3e0] 2279 000a 48dc            movea.l    $000A48DC,a1
[0001f3e6] 2348 0008                 move.l     a0,8(a1)
[0001f3ea] 41f9 000a 4882            lea.l      $000A4882,a0
[0001f3f0] 4eb9 0004 f41a            jsr        $0004F41A
[0001f3f6] 2848                      movea.l    a0,a4
[0001f3f8] 200c                      move.l     a4,d0
[0001f3fa] 6754                      beq.s      $0001F450
[0001f3fc] 2257                      movea.l    (a7),a1
[0001f3fe] 2051                      movea.l    (a1),a0
[0001f400] 4868 0168                 pea.l      360(a0)
[0001f404] 43eb 003a                 lea.l      58(a3),a1
[0001f408] 204c                      movea.l    a4,a0
[0001f40a] 4eb9 0001 47a8            jsr        $000147A8
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
[0001f436] 41f9 000a 42b2            lea.l      $000A42B2,a0
[0001f43c] 4eb9 0004 9a5c            jsr        $00049A5C
[0001f442] 2548 000c                 move.l     a0,12(a2)
[0001f446] 6612                      bne.s      $0001F45A
[0001f448] 204c                      movea.l    a4,a0
[0001f44a] 4eb9 0004 7e26            jsr        $00047E26
[0001f450] 204a                      movea.l    a2,a0
[0001f452] 4eb9 0004 7e26            jsr        $00047E26
[0001f458] 602a                      bra.s      $0001F484
[0001f45a] 206a 000c                 movea.l    12(a2),a0
[0001f45e] 4eb9 0004 a25e            jsr        $0004A25E
[0001f464] 274c 0012                 move.l     a4,18(a3)
[0001f468] 204c                      movea.l    a4,a0
[0001f46a] 4eb9 0001 f50a            jsr        $0001F50A
[0001f470] 204c                      movea.l    a4,a0
[0001f472] 226c 000c                 movea.l    12(a4),a1
[0001f476] 4e91                      jsr        (a1)
[0001f478] 4a40                      tst.w      d0
[0001f47a] 670c                      beq.s      $0001F488
[0001f47c] 204c                      movea.l    a4,a0
[0001f47e] 4eb9 0001 f716            jsr        $0001F716
[0001f484] 91c8                      suba.l     a0,a0
[0001f486] 6002                      bra.s      $0001F48A
[0001f488] 204c                      movea.l    a4,a0
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
[0001f4a0] 6708                      beq.s      $0001F4AA
[0001f4a2] 907c 270e                 sub.w      #$270E,d0
[0001f4a6] 6712                      beq.s      $0001F4BA
[0001f4a8] 601e                      bra.s      $0001F4C8
[0001f4aa] 204a                      movea.l    a2,a0
[0001f4ac] 6100 fd4a                 bsr        $0001F1F8
[0001f4b0] 204a                      movea.l    a2,a0
[0001f4b2] 4eb9 0001 f716            jsr        $0001F716
[0001f4b8] 601c                      bra.s      $0001F4D6
[0001f4ba] 226b 0004                 movea.l    4(a3),a1
[0001f4be] 204a                      movea.l    a2,a0
[0001f4c0] 4eb9 0001 45a2            jsr        $000145A2
[0001f4c6] 600e                      bra.s      $0001F4D6
[0001f4c8] 224c                      movea.l    a4,a1
[0001f4ca] 3003                      move.w     d3,d0
[0001f4cc] 204a                      movea.l    a2,a0
[0001f4ce] 4eb9 0005 1276            jsr        $00051276
[0001f4d4] 6002                      bra.s      $0001F4D8
[0001f4d6] 7001                      moveq.l    #1,d0
[0001f4d8] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0001f4dc] 4e75                      rts
unfix_alloc:
[0001f4de] 2f0a                      move.l     a2,-(a7)
[0001f4e0] 2f0b                      move.l     a3,-(a7)
[0001f4e2] 2448                      movea.l    a0,a2
[0001f4e4] 2650                      movea.l    (a0),a3
[0001f4e6] 200b                      move.l     a3,d0
[0001f4e8] 671a                      beq.s      $0001F504
[0001f4ea] 202b 000e                 move.l     14(a3),d0
[0001f4ee] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001f4f4] 2488                      move.l     a0,(a2)
[0001f4f6] 202b 000e                 move.l     14(a3),d0
[0001f4fa] 226b 0004                 movea.l    4(a3),a1
[0001f4fe] 4eb9 0007 6f44            jsr        $00076F44
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
[0001f542] 4eb9 0007 6f44            jsr        $00076F44
[0001f548] 2b6f 0006 0008            move.l     6(a7),8(a5)
[0001f54e] 7016                      moveq.l    #22,d0
[0001f550] 43ee 0026                 lea.l      38(a6),a1
[0001f554] 41eb 0018                 lea.l      24(a3),a0
[0001f558] 4eb9 0007 6f44            jsr        $00076F44
[0001f55e] 7016                      moveq.l    #22,d0
[0001f560] 43ee 003c                 lea.l      60(a6),a1
[0001f564] 41eb 002e                 lea.l      46(a3),a0
[0001f568] 4eb9 0007 6f44            jsr        $00076F44
[0001f56e] 760f                      moveq.l    #15,d3
[0001f570] d66d 0016                 add.w      22(a5),d3
[0001f574] c67c fff0                 and.w      #$FFF0,d3
[0001f578] c7ed 0018                 muls.w     24(a5),d3
[0001f57c] e643                      asr.w      #3,d3
[0001f57e] 48c3                      ext.l      d3
[0001f580] 302b 0018                 move.w     24(a3),d0
[0001f584] 6f4a                      ble.s      $0001F5D0
[0001f586] 41eb 001e                 lea.l      30(a3),a0
[0001f58a] 6100 ff52                 bsr        $0001F4DE
[0001f58e] 286b 001a                 movea.l    26(a3),a4
[0001f592] 2f0d                      move.l     a5,-(a7)
[0001f594] 7004                      moveq.l    #4,d0
[0001f596] 226b 001e                 movea.l    30(a3),a1
[0001f59a] 206c 0004                 movea.l    4(a4),a0
[0001f59e] 6100 d266                 bsr        $0001C806
[0001f5a2] 584f                      addq.w     #4,a7
[0001f5a4] 2748 001a                 move.l     a0,26(a3)
[0001f5a8] 202b 0022                 move.l     34(a3),d0
[0001f5ac] 6722                      beq.s      $0001F5D0
[0001f5ae] 41eb 0026                 lea.l      38(a3),a0
[0001f5b2] 6100 ff2a                 bsr        $0001F4DE
[0001f5b6] 286b 0022                 movea.l    34(a3),a4
[0001f5ba] 2f0d                      move.l     a5,-(a7)
[0001f5bc] 7004                      moveq.l    #4,d0
[0001f5be] 226b 0026                 movea.l    38(a3),a1
[0001f5c2] 206c 0004                 movea.l    4(a4),a0
[0001f5c6] 6100 d23e                 bsr        $0001C806
[0001f5ca] 584f                      addq.w     #4,a7
[0001f5cc] 2748 0022                 move.l     a0,34(a3)
[0001f5d0] 302b 002e                 move.w     46(a3),d0
[0001f5d4] 6f4a                      ble.s      $0001F620
[0001f5d6] 41eb 0034                 lea.l      52(a3),a0
[0001f5da] 6100 ff02                 bsr        $0001F4DE
[0001f5de] 286b 0030                 movea.l    48(a3),a4
[0001f5e2] 2f0d                      move.l     a5,-(a7)
[0001f5e4] 7008                      moveq.l    #8,d0
[0001f5e6] 226b 0034                 movea.l    52(a3),a1
[0001f5ea] 206c 0004                 movea.l    4(a4),a0
[0001f5ee] 6100 d216                 bsr        $0001C806
[0001f5f2] 584f                      addq.w     #4,a7
[0001f5f4] 2748 0030                 move.l     a0,48(a3)
[0001f5f8] 202b 0038                 move.l     56(a3),d0
[0001f5fc] 6722                      beq.s      $0001F620
[0001f5fe] 41eb 003c                 lea.l      60(a3),a0
[0001f602] 6100 feda                 bsr        $0001F4DE
[0001f606] 286b 0038                 movea.l    56(a3),a4
[0001f60a] 2f0d                      move.l     a5,-(a7)
[0001f60c] 7008                      moveq.l    #8,d0
[0001f60e] 226b 003c                 movea.l    60(a3),a1
[0001f612] 206c 0004                 movea.l    4(a4),a0
[0001f616] 6100 d1ee                 bsr        $0001C806
[0001f61a] 584f                      addq.w     #4,a7
[0001f61c] 2748 0038                 move.l     a0,56(a3)
[0001f620] 2003                      move.l     d3,d0
[0001f622] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001f628] 2748 0014                 move.l     a0,20(a3)
[0001f62c] 670e                      beq.s      $0001F63C
[0001f62e] 2003                      move.l     d3,d0
[0001f630] 2216                      move.l     (a6),d1
[0001f632] 43f6 1800                 lea.l      0(a6,d1.l),a1
[0001f636] 4eb9 0007 6f44            jsr        $00076F44
[0001f63c] 2003                      move.l     d3,d0
[0001f63e] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001f644] 2748 0010                 move.l     a0,16(a3)
[0001f648] 6710                      beq.s      $0001F65A
[0001f64a] 2003                      move.l     d3,d0
[0001f64c] 222e 0004                 move.l     4(a6),d1
[0001f650] 43f6 1800                 lea.l      0(a6,d1.l),a1
[0001f654] 4eb9 0007 6f44            jsr        $00076F44
[0001f65a] 204a                      movea.l    a2,a0
[0001f65c] 6100 d406                 bsr        $0001CA64
[0001f660] 286e 0008                 movea.l    8(a6),a4
[0001f664] 226c 0004                 movea.l    4(a4),a1
[0001f668] 7004                      moveq.l    #4,d0
[0001f66a] 2057                      movea.l    (a7),a0
[0001f66c] 41e8 0270                 lea.l      624(a0),a0
[0001f670] 4eb9 0005 e010            jsr        $0005E010
[0001f676] 226c 0004                 movea.l    4(a4),a1
[0001f67a] 206f 0006                 movea.l    6(a7),a0
[0001f67e] 4eb9 0007 6950            jsr        $00076950
[0001f684] 1f6d 000d 0004            move.b     13(a5),4(a7)
[0001f68a] 43ef 0004                 lea.l      4(a7),a1
[0001f68e] 7004                      moveq.l    #4,d0
[0001f690] 2057                      movea.l    (a7),a0
[0001f692] 41e8 0288                 lea.l      648(a0),a0
[0001f696] 4eb9 0005 e010            jsr        $0005E010
[0001f69c] 362d 000c                 move.w     12(a5),d3
[0001f6a0] 700c                      moveq.l    #12,d0
[0001f6a2] e063                      asr.w      d0,d3
[0001f6a4] c67c 000f                 and.w      #$000F,d3
[0001f6a8] 49f9 000b e270            lea.l      $000BE270,a4
[0001f6ae] 3003                      move.w     d3,d0
[0001f6b0] 48c0                      ext.l      d0
[0001f6b2] e588                      lsl.l      #2,d0
[0001f6b4] 2274 0800                 movea.l    0(a4,d0.l),a1
[0001f6b8] 206a 0014                 movea.l    20(a2),a0
[0001f6bc] 7007                      moveq.l    #7,d0
[0001f6be] 4eb9 0004 afe0            jsr        $0004AFE0
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
[0001f6f2] 4eb9 0004 afe0            jsr        $0004AFE0
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
[0001f740] 660c                      bne.s      $0001F74E
[0001f742] 206b 000c                 movea.l    12(a3),a0
[0001f746] 4eb9 0004 9b7c            jsr        $00049B7C
[0001f74c] 600a                      bra.s      $0001F758
[0001f74e] 206b 0008                 movea.l    8(a3),a0
[0001f752] 4eb9 0004 9b7c            jsr        $00049B7C
[0001f758] 302a 0056                 move.w     86(a2),d0
[0001f75c] c07c 0800                 and.w      #$0800,d0
[0001f760] 6716                      beq.s      $0001F778
[0001f762] 43ea 002c                 lea.l      44(a2),a1
[0001f766] 206b 0004                 movea.l    4(a3),a0
[0001f76a] 41e8 003a                 lea.l      58(a0),a0
[0001f76e] 7008                      moveq.l    #8,d0
[0001f770] 4eb9 0007 6f44            jsr        $00076F44
[0001f776] 6014                      bra.s      $0001F78C
[0001f778] 7008                      moveq.l    #8,d0
[0001f77a] 43ea 0024                 lea.l      36(a2),a1
[0001f77e] 206b 0004                 movea.l    4(a3),a0
[0001f782] 41e8 003a                 lea.l      58(a0),a0
[0001f786] 4eb9 0007 6f44            jsr        $00076F44
[0001f78c] 206b 0010                 movea.l    16(a3),a0
[0001f790] 4eb9 0004 7e26            jsr        $00047E26
[0001f796] 206b 0014                 movea.l    20(a3),a0
[0001f79a] 4eb9 0004 7e26            jsr        $00047E26
[0001f7a0] 202b 001a                 move.l     26(a3),d0
[0001f7a4] 670a                      beq.s      $0001F7B0
[0001f7a6] 2040                      movea.l    d0,a0
[0001f7a8] 5d48                      subq.w     #6,a0
[0001f7aa] 4eb9 0004 7e26            jsr        $00047E26
[0001f7b0] 206b 001e                 movea.l    30(a3),a0
[0001f7b4] 4eb9 0004 7e26            jsr        $00047E26
[0001f7ba] 202b 0022                 move.l     34(a3),d0
[0001f7be] 670a                      beq.s      $0001F7CA
[0001f7c0] 2040                      movea.l    d0,a0
[0001f7c2] 5d48                      subq.w     #6,a0
[0001f7c4] 4eb9 0004 7e26            jsr        $00047E26
[0001f7ca] 206b 0026                 movea.l    38(a3),a0
[0001f7ce] 4eb9 0004 7e26            jsr        $00047E26
[0001f7d4] 202b 0030                 move.l     48(a3),d0
[0001f7d8] 670a                      beq.s      $0001F7E4
[0001f7da] 2040                      movea.l    d0,a0
[0001f7dc] 5d48                      subq.w     #6,a0
[0001f7de] 4eb9 0004 7e26            jsr        $00047E26
[0001f7e4] 206b 0034                 movea.l    52(a3),a0
[0001f7e8] 4eb9 0004 7e26            jsr        $00047E26
[0001f7ee] 202b 0038                 move.l     56(a3),d0
[0001f7f2] 670a                      beq.s      $0001F7FE
[0001f7f4] 2040                      movea.l    d0,a0
[0001f7f6] 5d48                      subq.w     #6,a0
[0001f7f8] 4eb9 0004 7e26            jsr        $00047E26
[0001f7fe] 206b 003c                 movea.l    60(a3),a0
[0001f802] 4eb9 0004 7e26            jsr        $00047E26
[0001f808] 204b                      movea.l    a3,a0
[0001f80a] 4eb9 0004 7e26            jsr        $00047E26
[0001f810] 204a                      movea.l    a2,a0
[0001f812] 4eb9 0005 0330            jsr        $00050330
[0001f818] 265f                      movea.l    (a7)+,a3
[0001f81a] 245f                      movea.l    (a7)+,a2
[0001f81c] 4e75                      rts
piccolor:
[0001f81e] 48e7 3028                 movem.l    d2-d3/a2/a4,-(a7)
[0001f822] 4fef ffec                 lea.l      -20(a7),a7
[0001f826] 246f 0028                 movea.l    40(a7),a2
[0001f82a] 202a 001a                 move.l     26(a2),d0
[0001f82e] 6608                      bne.s      $0001F838
[0001f830] 76ff                      moveq.l    #-1,d3
[0001f832] d66a 0004                 add.w      4(a2),d3
[0001f836] 6004                      bra.s      $0001F83C
[0001f838] 362a 001c                 move.w     28(a2),d3
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
[0001f874] 4eb9 0006 3f60            jsr        $00063F60
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
[0001f8b0] 4eb9 0006 4da0            jsr        $00064DA0
[0001f8b6] 7201                      moveq.l    #1,d1
[0001f8b8] 2054                      movea.l    (a4),a0
[0001f8ba] 3028 0010                 move.w     16(a0),d0
[0001f8be] 4eb9 0006 5390            jsr        $00065390
[0001f8c4] 7201                      moveq.l    #1,d1
[0001f8c6] 2054                      movea.l    (a4),a0
[0001f8c8] 3028 0010                 move.w     16(a0),d0
[0001f8cc] 4eb9 0006 548c            jsr        $0006548C
[0001f8d2] 3203                      move.w     d3,d1
[0001f8d4] 2054                      movea.l    (a4),a0
[0001f8d6] 3028 0010                 move.w     16(a0),d0
[0001f8da] 4eb9 0006 5438            jsr        $00065438
[0001f8e0] 41d7                      lea.l      (a7),a0
[0001f8e2] 2254                      movea.l    (a4),a1
[0001f8e4] 3029 0010                 move.w     16(a1),d0
[0001f8e8] 4eb9 0006 455e            jsr        $0006455E
[0001f8ee] 7001                      moveq.l    #1,d0
[0001f8f0] c06a 0008                 and.w      8(a2),d0
[0001f8f4] 6710                      beq.s      $0001F906
[0001f8f6] 7201                      moveq.l    #1,d1
[0001f8f8] 2054                      movea.l    (a4),a0
[0001f8fa] 3028 0010                 move.w     16(a0),d0
[0001f8fe] 4eb9 0006 4ef0            jsr        $00064EF0
[0001f904] 600e                      bra.s      $0001F914
[0001f906] 4241                      clr.w      d1
[0001f908] 2054                      movea.l    (a4),a0
[0001f90a] 3028 0010                 move.w     16(a0),d0
[0001f90e] 4eb9 0006 4ef0            jsr        $00064EF0
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
[0001f950] 4eb9 0006 4e9a            jsr        $00064E9A
[0001f956] 4242                      clr.w      d2
[0001f958] 4241                      clr.w      d1
[0001f95a] 2054                      movea.l    (a4),a0
[0001f95c] 3028 0010                 move.w     16(a0),d0
[0001f960] 4eb9 0006 4f44            jsr        $00064F44
[0001f966] 41d7                      lea.l      (a7),a0
[0001f968] 7205                      moveq.l    #5,d1
[0001f96a] 2254                      movea.l    (a4),a1
[0001f96c] 3029 0010                 move.w     16(a1),d0
[0001f970] 4eb9 0006 4010            jsr        $00064010
[0001f976] 41d7                      lea.l      (a7),a0
[0001f978] 4241                      clr.w      d1
[0001f97a] 2254                      movea.l    (a4),a1
[0001f97c] 3029 0010                 move.w     16(a1),d0
[0001f980] 4eb9 0006 3f60            jsr        $00063F60
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
[0001f9d8] 4eb9 0006 3f60            jsr        $00063F60
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
[0001fa0c] 4eb9 0006 4da0            jsr        $00064DA0
[0001fa12] 4a43                      tst.w      d3
[0001fa14] 6b1e                      bmi.s      $0001FA34
[0001fa16] 7201                      moveq.l    #1,d1
[0001fa18] 2054                      movea.l    (a4),a0
[0001fa1a] 3028 0010                 move.w     16(a0),d0
[0001fa1e] 4eb9 0006 5390            jsr        $00065390
[0001fa24] 3203                      move.w     d3,d1
[0001fa26] 2054                      movea.l    (a4),a0
[0001fa28] 3028 0010                 move.w     16(a0),d0
[0001fa2c] 4eb9 0006 5438            jsr        $00065438
[0001fa32] 602a                      bra.s      $0001FA5E
[0001fa34] 7202                      moveq.l    #2,d1
[0001fa36] 2054                      movea.l    (a4),a0
[0001fa38] 3028 0010                 move.w     16(a0),d0
[0001fa3c] 4eb9 0006 5390            jsr        $00065390
[0001fa42] 7204                      moveq.l    #4,d1
[0001fa44] 2054                      movea.l    (a4),a0
[0001fa46] 3028 0010                 move.w     16(a0),d0
[0001fa4a] 4eb9 0006 53e4            jsr        $000653E4
[0001fa50] 7201                      moveq.l    #1,d1
[0001fa52] 2054                      movea.l    (a4),a0
[0001fa54] 3028 0010                 move.w     16(a0),d0
[0001fa58] 4eb9 0006 5438            jsr        $00065438
[0001fa5e] 7201                      moveq.l    #1,d1
[0001fa60] 2054                      movea.l    (a4),a0
[0001fa62] 3028 0010                 move.w     16(a0),d0
[0001fa66] 4eb9 0006 548c            jsr        $0006548C
[0001fa6c] 41d7                      lea.l      (a7),a0
[0001fa6e] 2254                      movea.l    (a4),a1
[0001fa70] 3029 0010                 move.w     16(a1),d0
[0001fa74] 4eb9 0006 455e            jsr        $0006455E
[0001fa7a] 41d7                      lea.l      (a7),a0
[0001fa7c] 4241                      clr.w      d1
[0001fa7e] 2254                      movea.l    (a4),a1
[0001fa80] 3029 0010                 move.w     16(a1),d0
[0001fa84] 4eb9 0006 3f60            jsr        $00063F60
[0001fa8a] 4240                      clr.w      d0
[0001fa8c] 4fef 0014                 lea.l      20(a7),a7
[0001fa90] 4cdf 140c                 movem.l    (a7)+,d2-d3/a2/a4
[0001fa94] 4e75                      rts
