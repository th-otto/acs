		.text

		.globl INbackplan
INbackplan:
		move.w     init,d0
		addq.w     #1,init
		tst.w      d0
		bne.s      INbackplan_1
		jsr        Logbase
		move.l     a0,screen
		jsr        ACSInitLinea
		lea.l      Vdiesc,a0
		movea.l    (a0),a1
		move.w     908(a1),bytes_lin
		move.w     218(a1),max_x
		move.w     220(a1),max_y
		move.w     906(a1),v_rez_vt
		move.w     898(a1),v_rez_hz
INbackplan_1:
		rts

		.globl Abp_create
Abp_create:
		movem.l    d3-d6/a2,-(a7)
		move.w     d0,d3
		move.w     d1,d5
		moveq.l    #15,d4
		add.w      d0,d4
		asr.w      #4,d4
		move.w     d1,d0
		movea.l    ACSblk,a0
		muls.w     28(a0),d0
		ext.l      d0
		add.l      d0,d0
		move.w     d4,d1
		ext.l      d1
		jsr        _lmul
		move.l     d0,d6
		add.l      #$00000014,d6
		move.l     d6,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Abp_create_1
		move.l     d6,d1
		clr.w      d0
		jsr        memset
		lea.l      20(a2),a0
		move.l     a0,(a2)
		move.w     d3,4(a2)
		move.w     d5,6(a2)
		move.w     d4,8(a2)
		movea.l    ACSblk,a1
		move.w     28(a1),12(a2)
Abp_create_1:
		movea.l    a2,a0
		movem.l    (a7)+,d3-d6/a2
		rts

		.globl Abp_delete
Abp_delete:
		moveq.l    #20,d0
		jsr        Ax_recycle
		rts

ret:
		rts

		.globl Abp_start
Abp_start:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		lea.l      pxy,a3
		move.w     -2(a3),d0
		bne.s      Abp_start_1
		bsr        INbackplan
Abp_start_1:
		jsr        Amo_hide
		jsr        Kbdvbase
		move.l     a0,vectors
		move.l     16(a0),kb_mousevec
		move.l     #ret,16(a0)
		moveq.l    #-1,d0
		/* movea.l    #$FFFFFFFF,a1 */
		dc.w 0x227c,-1,-1
		movea.l    (a2),a0
		jsr        Setscreen
		lea.l      Vdiesc,a0
		move.w     8(a2),d0
		add.w      d0,d0
		muls.w     12(a2),d0
		movea.l    (a0),a1
		move.w     d0,908(a1)
		movea.l    Linea,a1
		move.w     d0,2(a1)
		movea.l    (a0),a1
		move.w     6(a2),906(a1)
		movea.l    (a0),a1
		move.w     4(a2),898(a1)
		moveq.l    #-1,d0
		add.w      4(a2),d0
		movea.l    (a0),a1
		move.w     d0,218(a1)
		move.w     d0,4(a3)
		moveq.l    #-1,d1
		add.w      6(a2),d1
		movea.l    (a0),a1
		move.w     d1,220(a1)
		move.w     d1,6(a3)
		movea.l    a3,a0
		movea.l    ACSblk,a1
		move.w     16(a1),d0
		moveq.l    #1,d1
		jsr        vs_clip
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Abp_end
Abp_end:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		lea.l      bytes_lin,a2
		lea.l      Vdiesc,a0
		move.w     (a2),d0
		movea.l    Linea,a1
		move.w     d0,2(a1)
		movea.l    (a0),a1
		move.w     d0,908(a1)
		movea.l    (a0),a1
		move.w     2(a2),906(a1)
		movea.l    (a0),a1
		move.w     4(a2),898(a1)
		lea.l      pxy,a3
		move.w     -4(a2),d0
		movea.l    (a0),a1
		move.w     d0,218(a1)
		move.w     d0,4(a3)
		move.w     -2(a2),d1
		movea.l    (a0),a1
		move.w     d1,220(a1)
		move.w     d1,6(a3)
		moveq.l    #-1,d0
		/* movea.l    #$FFFFFFFF,a1 */
		dc.w 0x227c,-1,-1
		movea.l    -8(a2),a0
		jsr        Setscreen
		movea.l    6(a2),a0
		move.l     10(a2),16(a0)
		movea.l    a3,a0
		moveq.l    #1,d1
		movea.l    ACSblk,a1
		move.w     16(a1),d0
		jsr        vs_clip
		jsr        Amo_show
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Abp_mfdb2img
Abp_mfdb2img:
		movem.l    a2-a6,-(a7)
		movea.l    a0,a2
		movea.l    a1,a5
		movea.l    24(a7),a4
		move.w     6(a2),d1
		move.w     4(a2),d0
		bsr        Abp_create
		movea.l    a0,a3
		move.l     a3,d0
		beq        Abp_mfdb2img_1
		move.w     #$0001,10(a3)
		move.w     10(a2),d1
		beq.s      Abp_mfdb2img_2
		move.w     8(a3),d0
		add.w      d0,d0
		muls.w     6(a3),d0
		muls.w     12(a3),d0
		ext.l      d0
		add.l      #$00000014,d0
		movea.l    a2,a1
		jsr        memcpy
		bra.s      Abp_mfdb2img_3
Abp_mfdb2img_2:
		movea.l    a3,a1
		movea.l    a2,a0
		movea.l    ACSblk,a6
		move.w     16(a6),d0
		jsr        vr_trnfm
Abp_mfdb2img_3:
		suba.l     a1,a1
		movea.l    a3,a0
		jsr        compress_image
		move.l     d0,(a4)
		movea.l    a3,a0
		bsr        Abp_delete
		move.l     a5,d0
		beq        Abp_mfdb2img_4
		moveq.l    #16,d0
		add.l      (a4),d0
		jsr        Ax_malloc
		move.l     a0,(a5)
		move.l     a0,d0
		beq.s      Abp_mfdb2img_1
		move.w     6(a2),d1
		move.w     4(a2),d0
		bsr        Abp_create
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      Abp_mfdb2img_5
		movea.l    (a5),a0
		jsr        Ax_ifree
Abp_mfdb2img_1:
		moveq.l    #-1,d0
		bra        Abp_mfdb2img_6
Abp_mfdb2img_5:
		move.w     #$0001,10(a3)
		move.w     10(a2),d0
		beq.s      Abp_mfdb2img_7
		move.w     8(a3),d0
		add.w      d0,d0
		muls.w     6(a3),d0
		muls.w     12(a3),d0
		ext.l      d0
		add.l      #$00000014,d0
		movea.l    a2,a1
		movea.l    a3,a0
		jsr        memcpy
		bra.s      Abp_mfdb2img_8
Abp_mfdb2img_7:
		movea.l    a3,a1
		movea.l    a2,a0
		movea.l    ACSblk,a4
		move.w     16(a4),d0
		jsr        vr_trnfm
Abp_mfdb2img_8:
		movea.l    (a5),a1
		movea.l    a3,a0
		jsr        compress_image
		movea.l    (a5),a0
		move.w     #$0001,(a0)
		movea.l    (a5),a0
		move.w     #$0008,2(a0)
		movea.l    (a5),a0
		move.w     12(a3),4(a0)
		movea.l    (a5),a0
		move.w     #$0002,6(a0)
		move.w     #$01F4,d0
		movea.l    (a5),a0
		move.w     d0,10(a0)
		movea.l    (a5),a0
		move.w     d0,8(a0)
		movea.l    (a5),a0
		move.w     4(a3),12(a0)
		movea.l    (a5),a0
		move.w     6(a3),14(a0)
		movea.l    a3,a0
		bsr        Abp_delete
Abp_mfdb2img_4:
		clr.w      d0
Abp_mfdb2img_6:
		movem.l    (a7)+,a2-a6
		rts

compress_image:
		movem.l    d3-d7/a2-a5,-(a7)
		lea.l      -140(a7),a7
		movea.l    a0,a3
		move.l     a1,d0
		bne.s      compress_image_1
		suba.l     a2,a2
		bra.s      compress_image_2
compress_image_1:
		lea.l      16(a1),a2
compress_image_2:
		moveq.l    #7,d0
		add.w      4(a3),d0
		asr.w      #3,d0
		move.w     d0,134(a7)
		move.w     8(a3),136(a7)
		move.w     136(a7),d0
		add.w      d0,d0
		ext.l      d0
		move.w     6(a3),d1
		ext.l      d1
		jsr        _lmul
		move.l     d0,(a7)
		movea.l    (a3),a4
		clr.b      d5
		lea.l      4(a7),a5
		bra.s      compress_image_3
compress_image_4:
		clr.w      d0
		move.b     d5,d0
		ext.l      d0
		move.l     (a7),d1
		jsr        _lmul
		lea.l      0(a4,d0.l),a0
		clr.w      d1
		move.b     d5,d1
		lsl.w      #2,d1
		move.l     a0,0(a5,d1.w)
		addq.b     #1,d5
compress_image_3:
		clr.w      d0
		move.b     d5,d0
		cmp.w      12(a3),d0
		blt.s      compress_image_4
		moveq.l    #0,d5
		move.w     6(a3),138(a7)
		bra        compress_image_5
compress_image_27:
		move.w     134(a7),d1
		move.w     12(a3),d0
		movea.l    a5,a0
		jsr        vreplic
		move.b     d0,132(a7)
		subq.b     #1,d0
		bls.s      compress_image_6
		clr.w      d1
		move.b     132(a7),d1
		cmp.w      138(a7),d1
		ble.s      compress_image_7
		move.b     139(a7),132(a7)
compress_image_7:
		addq.l     #4,d5
		move.l     a2,d0
		beq.s      compress_image_6
		clr.b      (a2)+
		clr.b      (a2)+
		/* move.b     #$FF,(a2)+ */
		dc.w 0x14fc,0xffff
		move.b     132(a7),(a2)+
compress_image_6:
		clr.w      d4
		bra        compress_image_8
compress_image_26:
		move.w     134(a7),d0
		move.w     d4,d1
		lsl.w      #2,d1
		movea.l    0(a5,d1.w),a4
		bra        compress_image_9
compress_image_25:
		clr.b      d3
		move.b     (a4),d1
		bne.s      compress_image_10
compress_image_12:
		subq.w     #1,d0
		addq.b     #1,d3
		addq.w     #1,a4
		move.b     (a4),d1
		bne.s      compress_image_11
		cmp.b      #$7F,d3
		bcc.s      compress_image_11
		tst.w      d0
		bgt.s      compress_image_12
compress_image_11:
		addq.l     #1,d5
		move.l     a2,d1
		beq        compress_image_9
		move.b     d3,(a2)+
		bra        compress_image_9
compress_image_10:
		cmpi.b     #$FF,(a4)
		bne.s      compress_image_13
compress_image_15:
		subq.w     #1,d0
		addq.b     #1,d3
		addq.w     #1,a4
		cmpi.b     #$FF,(a4)
		bne.s      compress_image_14
		cmp.b      #$7F,d3
		bcc.s      compress_image_14
		tst.w      d0
		bgt.s      compress_image_15
compress_image_14:
		addq.l     #1,d5
		move.l     a2,d1
		beq        compress_image_9
		moveq.l    #-128,d2
		or.b       d3,d2
		move.b     d2,(a2)+
		bra        compress_image_9
compress_image_13:
		move.b     (a4),d6
		move.b     1(a4),d7
		cmp.w      #$0003,d0
		ble.s      compress_image_16
		cmp.b      2(a4),d6
		bne.s      compress_image_16
		cmp.b      3(a4),d7
		bne.s      compress_image_16
		moveq.l    #1,d3
		addq.w     #2,a4
		subq.w     #2,d0
compress_image_18:
		subq.w     #2,d0
		addq.b     #1,d3
		addq.w     #2,a4
		cmp.b      (a4),d6
		bne.s      compress_image_17
		cmp.b      1(a4),d7
		bne.s      compress_image_17
		cmp.b      #$FE,d3
		bcc.s      compress_image_17
		cmp.w      #$0001,d0
		bgt.s      compress_image_18
compress_image_17:
		addq.l     #4,d5
		move.l     a2,d1
		beq        compress_image_9
		clr.b      (a2)+
		move.b     d3,(a2)+
		move.b     d6,(a2)+
		move.b     d7,(a2)+
		bra.w      compress_image_9
compress_image_16:
		movea.l    a4,a1
compress_image_20:
		subq.w     #1,d0
		addq.b     #1,d3
		addq.w     #1,a4
		tst.w      d0
		beq.s      compress_image_19
		cmp.b      #$FF,d3
		beq.s      compress_image_19
		cmp.w      #$0002,d0
		ble.s      compress_image_20
		move.b     (a4),d1
		bne.s      compress_image_21
		move.b     1(a4),d2
		bne.s      compress_image_21
		move.b     2(a4),d1
		beq.s      compress_image_19
compress_image_21:
		cmpi.b     #$FF,(a4)
		bne.s      compress_image_22
		cmpi.b     #$FF,1(a4)
		bne.s      compress_image_22
		cmpi.b     #$FF,2(a4)
		beq.s      compress_image_19
compress_image_22:
		cmp.w      #$0004,d0
		ble.s      compress_image_20
		move.b     (a4),d6
		move.b     1(a4),d7
		cmp.b      2(a4),d6
		bne.s      compress_image_20
		cmp.b      3(a4),d7
		bne.s      compress_image_20
compress_image_19:
		clr.w      d1
		move.b     d3,d1
		addq.w     #2,d1
		ext.l      d1
		add.l      d1,d5
		move.l     a2,d2
		beq.s      compress_image_9
		/* move.b     #$80,(a2)+ */
		dc.w 0x14fc,0xff80
		move.b     d3,(a2)+
		bra.s      compress_image_23
compress_image_24:
		move.b     (a1)+,(a2)+
compress_image_23:
		move.b     d3,d1
		subq.b     #1,d3
		tst.b      d1
		bne.s      compress_image_24
compress_image_9:
		tst.w      d0
		bgt        compress_image_25
		moveq.l    #0,d0
		move.b     132(a7),d0
		move.w     136(a7),d1
		ext.l      d1
		jsr        _lmul
		add.l      d0,d0
		move.w     d4,d1
		lsl.w      #2,d1
		add.l      d0,0(a5,d1.w)
		addq.w     #1,d4
compress_image_8:
		cmp.w      12(a3),d4
		blt        compress_image_26
		clr.w      d0
		move.b     132(a7),d0
		sub.w      d0,138(a7)
compress_image_5:
		move.w     138(a7),d0
		bgt        compress_image_27
		move.l     d5,d0
		lea.l      140(a7),a7
		movem.l    (a7)+,d3-d7/a2-a5
		rts

vreplic:
		movem.l    d3-d6/a2-a3,-(a7)
		lea.l      -128(a7),a7
		move.w     d1,d2
		moveq.l    #1,d3
		and.w      d1,d3
		beq.s      vreplic_1
		addq.w     #1,d2
vreplic_1:
		moveq.l    #1,d3
		moveq.l    #-1,d4
		add.w      d0,d4
		bra.s      vreplic_2
vreplic_3:
		move.w     d4,d5
		ext.l      d5
		lsl.l      #2,d5
		movea.l    0(a0,d5.l),a1
		adda.w     d2,a1
		move.w     d4,d5
		lsl.w      #2,d5
		move.l     a1,0(a7,d5.w)
		subq.w     #1,d4
vreplic_2:
		tst.w      d4
		bpl.s      vreplic_3
		bra.s      vreplic_4
vreplic_10:
		moveq.l    #-1,d4
		add.w      d0,d4
		bra.s      vreplic_5
vreplic_9:
		move.w     d4,d5
		ext.l      d5
		lsl.l      #2,d5
		movea.l    0(a0,d5.l),a2
		move.w     d4,d5
		lsl.w      #2,d5
		movea.l    0(a7,d5.w),a3
		moveq.l    #-1,d5
		add.w      d1,d5
		bra.s      vreplic_6
vreplic_8:
		move.b     (a2)+,d6
		cmp.b      (a3)+,d6
		bne.s      vreplic_7
		subq.w     #1,d5
vreplic_6:
		tst.w      d5
		bpl.s      vreplic_8
		move.w     d2,d5
		ext.l      d5
		move.w     d4,d6
		lsl.w      #2,d6
		add.l      d5,0(a7,d6.w)
		subq.w     #1,d4
vreplic_5:
		tst.w      d4
		bpl.s      vreplic_9
		addq.b     #1,d3
vreplic_4:
		cmp.b      #$FF,d3
		bcs.s      vreplic_10
vreplic_7:
		move.b     d3,d0
		lea.l      128(a7),a7
		movem.l    (a7)+,d3-d6/a2-a3
		rts

		.globl Abp_img2mfdb
Abp_img2mfdb:
		movem.l    d3-d5/a2-a6,-(a7)
		lea.l      -36(a7),a7
		movea.l    a0,a2
		movea.l    a1,a3
		move.w     d0,d5
		lea.l      16(a7),a4
		move.w     14(a2),d1
		move.w     12(a2),d0
		bsr        Abp_create
		move.l     a0,(a3)
		beq        Abp_img2mfdb_1
		move.w     12(a2),4(a4)
		move.w     14(a2),6(a4)
		moveq.l    #15,d0
		add.w      12(a2),d0
		and.w      #$FFF0,d0
		lsr.w      #4,d0
		move.w     d0,8(a4)
		move.w     #$0001,10(a4)
		movea.l    ACSblk,a1
		move.w     28(a1),12(a4)
		move.w     28(a1),d1
		cmp.w      4(a2),d1
		ble.s      Abp_img2mfdb_2
		move.w     d1,d3
		bra.s      Abp_img2mfdb_3
Abp_img2mfdb_2:
		move.w     4(a2),d3
Abp_img2mfdb_3:
		clr.w      d0
		move.w     d0,18(a4)
		move.w     d0,16(a4)
		move.w     d0,14(a4)
		move.w     8(a4),d0
		ext.l      d0
		move.w     6(a4),d1
		ext.l      d1
		jsr        _lmul
		move.l     d0,d4
		add.l      d4,d4
		move.l     d4,d0
		move.w     d3,d1
		ext.l      d1
		jsr        _lmul
		addq.l     #1,d0
		jsr        Ax_malloc
		movea.l    a0,a6
		move.l     a6,d0
		bne.s      Abp_img2mfdb_4
		movea.l    (a3),a0
		bsr        Abp_delete
Abp_img2mfdb_1:
		moveq.l    #-1,d0
		bra        Abp_img2mfdb_5
Abp_img2mfdb_4:
		move.l     a6,(a4)
		move.w     2(a2),d0
		ext.l      d0
		add.l      d0,d0
		lea.l      0(a2,d0.l),a5
		move.l     d4,d0
		move.w     d3,d1
		ext.l      d1
		jsr        _lmul
		pea.l      0(a6,d0.l)
		move.l     a6,-(a7)
		movea.l    a5,a1
		movea.l    a2,a0
		jsr        uncompress_image
		addq.w     #8,a7
		tst.w      d5
		beq        Abp_img2mfdb_6
		movea.l    ACSblk,a0
		move.w     28(a0),d5
		sub.w      4(a2),d5
		tst.w      d5
		ble        Abp_img2mfdb_7
		cmpi.w     #$0001,4(a2)
		bne.s      Abp_img2mfdb_8
		move.w     #$0001,12(a4)
		movea.l    a4,a1
		movea.l    a4,a0
		movea.l    ACSblk,a5
		move.w     16(a5),d0
		jsr        vr_trnfm
		clr.w      d0
		move.w     d0,10(a7)
		move.w     d0,8(a7)
		move.w     d0,2(a7)
		move.w     d0,(a7)
		moveq.l    #-1,d1
		movea.l    (a3),a0
		add.w      4(a0),d1
		move.w     d1,12(a7)
		move.w     d1,4(a7)
		moveq.l    #-1,d0
		add.w      6(a0),d0
		move.w     d0,14(a7)
		move.w     d0,6(a7)
		pea.l      color
		move.l     a0,-(a7)
		movea.l    a4,a1
		lea.l      8(a7),a0
		moveq.l    #1,d1
		movea.l    ACSblk,a5
		move.w     16(a5),d0
		jsr        vrt_cpyfm
		addq.w     #8,a7
		bra.s      Abp_img2mfdb_9
Abp_img2mfdb_8:
		move.w     d5,d0
		ext.l      d0
		move.l     d4,d1
		jsr        _lmul
		move.l     d0,d1
		move.l     d1,-(a7)
		move.w     4(a2),d0
		ext.l      d0
		move.l     d4,d1
		jsr        _lmul
		lea.l      0(a6,d0.l),a0
		clr.w      d0
		move.l     (a7)+,d1
		jsr        memset
Abp_img2mfdb_7:
		movea.l    (a3),a1
		movea.l    a4,a0
		movea.l    ACSblk,a2
		move.w     16(a2),d0
		jsr        vr_trnfm
Abp_img2mfdb_9:
		movea.l    (a3),a0
		clr.w      10(a0)
		bra.s      Abp_img2mfdb_10
Abp_img2mfdb_6:
		move.l     d4,d0
		move.w     d3,d1
		ext.l      d1
		jsr        _lmul
		movea.l    a6,a1
		movea.l    (a3),a0
		movea.l    (a0),a0
		jsr        memcpy
		movea.l    (a3),a0
		move.w     #$0001,10(a0)
Abp_img2mfdb_10:
		movea.l    a6,a0
		jsr        Ax_ifree
		clr.w      d0
Abp_img2mfdb_5:
		lea.l      36(a7),a7
		movem.l    (a7)+,d3-d5/a2-a6
		rts

uncompress_image:
		movem.l    d3-d7/a2-a5,-(a7)
		lea.l      -138(a7),a7
		movea.l    a0,a2
		movea.l    a1,a3
		movea.l    178(a7),a4
		moveq.l    #7,d3
		add.w      12(a2),d3
		asr.w      #3,d3
		moveq.l    #1,d0
		add.w      d3,d0
		and.w      #$FFFE,d0
		move.w     d0,132(a7)
		ext.l      d0
		move.w     14(a2),d1
		ext.l      d1
		jsr        _lmul
		move.l     d0,(a7)
		clr.b      d4
		bra.s      uncompress_image_1
uncompress_image_2:
		clr.w      d0
		move.b     d4,d0
		ext.l      d0
		move.l     (a7),d1
		jsr        _lmul
		lea.l      0(a4,d0.l),a0
		clr.w      d1
		move.b     d4,d1
		lsl.w      #2,d1
		move.l     a0,4(a7,d1.w)
		addq.b     #1,d4
uncompress_image_1:
		clr.w      d0
		move.b     d4,d0
		cmp.w      4(a2),d0
		blt.s      uncompress_image_2
		move.w     14(a2),134(a7)
		bra        uncompress_image_3
uncompress_image_26:
		clr.b      d6
		clr.w      136(a7)
		bra        uncompress_image_4
uncompress_image_25:
		move.w     d3,d5
		move.w     136(a7),d0
		lsl.w      #2,d0
		movea.l    4(a7,d0.w),a4
		movea.l    a4,a5
		cmpa.l     182(a7),a4
		bcs        uncompress_image_5
		suba.l     a0,a0
		movea.l    ACSblk,a1
		movea.l    982(a1),a1
		moveq.l    #21,d0
		jsr        (a1)
		bra        uncompress_image_6
uncompress_image_20:
		clr.w      d0
		move.b     (a3)+,d0
		tst.w      d0
		beq.s      uncompress_image_7
		sub.w      #$0080,d0
		beq.s      uncompress_image_8
		bra.s      uncompress_image_9
uncompress_image_7:
		move.b     (a3)+,d4
		tst.b      d4
		bne.s      uncompress_image_10
		cmpi.b     #$FF,(a3)
		bne.s      uncompress_image_11
		addq.w     #1,a3
uncompress_image_11:
		move.b     (a3)+,d6
		add.b      #$FF,d6
		bra.s      uncompress_image_5
uncompress_image_14:
		clr.b      d0
		bra.s      uncompress_image_12
uncompress_image_13:
		moveq.l    #0,d1
		move.b     d0,d1
		move.b     0(a3,d1.l),(a4)+
		subq.w     #1,d5
		addq.b     #1,d0
uncompress_image_12:
		clr.w      d1
		move.b     d0,d1
		cmp.w      6(a2),d1
		blt.s      uncompress_image_13
		subq.b     #1,d4
uncompress_image_10:
		tst.b      d4
		bne.s      uncompress_image_14
		adda.w     6(a2),a3
		bra.s      uncompress_image_5
uncompress_image_8:
		move.b     (a3)+,d4
		bra.s      uncompress_image_15
uncompress_image_16:
		move.b     (a3)+,(a4)+
		subq.w     #1,d5
		subq.b     #1,d4
uncompress_image_15:
		tst.b      d4
		bne.s      uncompress_image_16
		bra.s      uncompress_image_5
uncompress_image_9:
		move.b     -1(a3),d4
		move.b     #$80,d0
		and.b      d4,d0
		beq.s      uncompress_image_17
		move.b     #$FF,d7
		and.b      #$7F,d4
		bra.s      uncompress_image_18
uncompress_image_17:
		clr.b      d7
		bra.s      uncompress_image_18
uncompress_image_19:
		move.b     d7,(a4)+
		subq.w     #1,d5
		subq.b     #1,d4
uncompress_image_18:
		tst.b      d4
		bne.s      uncompress_image_19
uncompress_image_5:
		tst.w      d5
		bgt        uncompress_image_20
		moveq.l    #1,d0
		and.w      d3,d0
		beq.s      uncompress_image_21
		clr.b      (a4)+
uncompress_image_21:
		clr.b      d4
		bra.s      uncompress_image_22
uncompress_image_24:
		move.w     d3,d0
		ext.l      d0
		movea.l    a5,a1
		movea.l    a4,a0
		jsr        memcpy
		adda.w     d3,a4
		moveq.l    #1,d0
		and.w      d3,d0
		beq.s      uncompress_image_23
		clr.b      (a4)+
uncompress_image_23:
		addq.b     #1,d4
uncompress_image_22:
		cmp.b      d4,d6
		bhi.s      uncompress_image_24
		move.w     136(a7),d0
		lsl.w      #2,d0
		move.l     a4,4(a7,d0.w)
		addq.w     #1,136(a7)
uncompress_image_4:
		move.w     136(a7),d0
		cmp.w      4(a2),d0
		blt        uncompress_image_25
		clr.w      d1
		move.b     d6,d1
		sub.w      d1,134(a7)
		subq.w     #1,134(a7)
uncompress_image_3:
		move.w     134(a7),d0
		bgt        uncompress_image_26
uncompress_image_6:
		lea.l      138(a7),a7
		movem.l    (a7)+,d3-d7/a2-a5
		rts

		.data

init:
		dc.b $00
		dc.b $00
pxy:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
color:
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
	.bss

screen: ds.l 1
max_x: ds.w 1
max_y: ds.w 1
bytes_lin: ds.w 1
v_rez_vt: ds.w 1
v_rez_hz: ds.w 1
vectors: ds.l 1
kb_mousevec: ds.l 1
