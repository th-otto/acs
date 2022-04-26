		.text

		.globl Aev_InitDD
Aev_InitDD:
		moveq.l    #1,d0
		rts

		.globl Aev_ExitDD
Aev_ExitDD:
		moveq.l    #1,d0
		rts

Aev_ddabort:
		subq.w     #6,a7
		move.w     d0,4(a7)
		move.l     d1,(a7)
		movea.l    (a7),a0
		moveq.l    #13,d0
		jsr        Psignal
		move.w     4(a7),d0
		jsr        Fclose
		moveq.l    #1,d0
		jsr        Awi_update
		clr.w      d0
		addq.w     #6,a7
		rts

		.globl Aev_GetAPDragDrop
Aev_GetAPDragDrop:
		move.l     a2,-(a7)
		lea.l      -84(a7),a7
		move.l     a0,80(a7)
		lea.l      xd4aba,a0
		lea.l      60(a7),a1
		moveq.l    #19,d0
Aev_GetAPDragDrop_1:
		move.b     (a0)+,(a1)+
		dbf        d0,Aev_GetAPDragDrop_1
		lea.l      xd4ace,a0
		lea.l      20(a7),a1
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		movea.l    80(a7),a0
		movea.l    (a0),a0
		move.b     15(a0),78(a7)
		movea.l    80(a7),a0
		movea.l    (a0),a0
		move.w     14(a0),d0
		asr.w      #8,d0
		move.b     d0,77(a7)
		moveq.l    #2,d0
		lea.l      60(a7),a0
		jsr        Fopen
		move.l     d0,8(a7)
		move.l     8(a7),d0
		bpl.s      Aev_GetAPDragDrop_2
		clr.w      d0
		bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_2:
		move.w     10(a7),14(a7)
		clr.w      d0
		jsr        Awi_update
		/* movea.l    #$00000001,a0 */
		dc.w 0x207c,0,1
		moveq.l    #13,d0
		jsr        Psignal
		move.l     d0,4(a7)
		moveq.l    #33,d1
		clr.w      d0
		lea.l      26(a7),a0
		jsr        memset
		lea.l      xd4ae8,a1
		lea.l      27(a7),a0
		jsr        strcpy
		lea.l      26(a7),a0
		moveq.l    #33,d1
		move.w     14(a7),d0
		jsr        Fwrite
		moveq.l    #33,d1
		cmp.l      d0,d1
		beq.s      Aev_GetAPDragDrop_4
		move.l     4(a7),d1
		move.w     14(a7),d0
		bsr        Aev_ddabort
		bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_4:
		movea.l    _globl,a0
		moveq.l    #50,d0
		jsr        mt_evnt_timer
		lea.l      12(a7),a0
		moveq.l    #2,d1
		move.w     14(a7),d0
		jsr        Fread
		moveq.l    #2,d1
		cmp.l      d0,d1
		bne.s      Aev_GetAPDragDrop_5
		cmpi.w     #$0008,12(a7)
		bge.s      Aev_GetAPDragDrop_6
Aev_GetAPDragDrop_5:
		move.l     4(a7),d1
		move.w     14(a7),d0
		bsr        Aev_ddabort
		bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_6:
		lea.l      20(a7),a0
		moveq.l    #4,d1
		move.w     14(a7),d0
		jsr        Fread
		moveq.l    #4,d1
		cmp.l      d0,d1
		beq.s      Aev_GetAPDragDrop_7
		move.l     4(a7),d1
		move.w     14(a7),d0
		bsr        Aev_ddabort
		bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_7:
		clr.b      24(a7)
		lea.l      20(a7),a0
		jsr        Ast_toupper
		subq.w     #4,12(a7)
		moveq.l    #4,d0
		lea.l      xd4af1,a1
		lea.l      20(a7),a0
		jsr        strncmp
		tst.w      d0
		bne.s      Aev_GetAPDragDrop_8
		bra.s      Aev_GetAPDragDrop_9
Aev_GetAPDragDrop_11:
		subq.w     #1,12(a7)
Aev_GetAPDragDrop_9:
		move.w     12(a7),d0
		ble.s      Aev_GetAPDragDrop_10
		lea.l      26(a7),a0
		moveq.l    #1,d1
		move.w     14(a7),d0
		jsr        Fread
		moveq.l    #1,d1
		cmp.l      d0,d1
		beq.s      Aev_GetAPDragDrop_11
Aev_GetAPDragDrop_10:
		move.b     #$01,26(a7)
		lea.l      26(a7),a0
		moveq.l    #1,d1
		move.w     14(a7),d0
		jsr        Fwrite
		move.l     4(a7),d1
		move.w     14(a7),d0
		bsr        Aev_ddabort
		moveq.l    #1,d0
		bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_8:
		lea.l      (a7),a0
		moveq.l    #4,d1
		move.w     14(a7),d0
		jsr        Fread
		moveq.l    #4,d1
		cmp.l      d0,d1
		beq.s      Aev_GetAPDragDrop_12
		move.l     4(a7),d1
		move.w     14(a7),d0
		bsr        Aev_ddabort
		bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_12:
		subq.w     #4,12(a7)
		bra.s      Aev_GetAPDragDrop_13
Aev_GetAPDragDrop_15:
		lea.l      26(a7),a0
		moveq.l    #1,d1
		move.w     14(a7),d0
		jsr        Fread
		moveq.l    #1,d1
		cmp.l      d0,d1
		beq.s      Aev_GetAPDragDrop_14
		move.l     4(a7),d1
		move.w     14(a7),d0
		bsr        Aev_ddabort
		bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_14:
		subq.w     #1,12(a7)
Aev_GetAPDragDrop_13:
		move.w     12(a7),d0
		bgt.s      Aev_GetAPDragDrop_15
		moveq.l    #1,d0
		add.l      (a7),d0
		jsr        Ax_malloc
		move.l     a0,16(a7)
		move.l     16(a7),d0
		bne.s      Aev_GetAPDragDrop_16
		move.b     #$01,26(a7)
		lea.l      26(a7),a0
		moveq.l    #1,d1
		move.w     14(a7),d0
		jsr        Fwrite
		move.l     4(a7),d1
		move.w     14(a7),d0
		bsr        Aev_ddabort
		bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_16:
		clr.b      26(a7)
		lea.l      26(a7),a0
		moveq.l    #1,d1
		move.w     14(a7),d0
		jsr        Fwrite
		moveq.l    #1,d1
		cmp.l      d0,d1
		beq.s      Aev_GetAPDragDrop_17
		move.l     4(a7),d1
		move.w     14(a7),d0
		bsr        Aev_ddabort
		bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_17:
		movea.l    _globl,a0
		moveq.l    #100,d0
		jsr        mt_evnt_timer
		movea.l    16(a7),a0
		move.l     (a7),d1
		move.w     14(a7),d0
		jsr        Fread
		cmp.l      (a7),d0
		beq.s      Aev_GetAPDragDrop_18
		movea.l    16(a7),a0
		jsr        Ax_free
		move.l     4(a7),d1
		move.w     14(a7),d0
		bsr        Aev_ddabort
		bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_18:
		move.l     4(a7),d1
		move.w     14(a7),d0
		bsr        Aev_ddabort
		move.l     (a7),d0
		movea.l    16(a7),a0
		clr.b      0(a0,d0.l)
		moveq.l    #4,d0
		lea.l      xd4af6,a1
		lea.l      20(a7),a0
		jsr        strncmp
		tst.w      d0
		bne.s      Aev_GetAPDragDrop_19
		movea.l    80(a7),a0
		move.l     20(a0),-(a7)
		movea.l    84(a7),a0
		move.l     16(a0),-(a7)
		movea.l    88(a7),a0
		move.w     24(a0),d0
		movea.l    88(a7),a0
		movea.l    12(a0),a1
		movea.l    24(a7),a0
		jsr        GetImgIntoObj
		addq.w     #8,a7
		movea.l    16(a7),a0
		jsr        Ax_free
		moveq.l    #1,d0
		bra        Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_19:
		moveq.l    #4,d0
		lea.l      xd4afb,a1
		lea.l      20(a7),a0
		jsr        strncmp
		tst.w      d0
		beq.s      Aev_GetAPDragDrop_20
		moveq.l    #4,d0
		lea.l      xd4b00,a1
		lea.l      20(a7),a0
		jsr        strncmp
		tst.w      d0
		bne.s      Aev_GetAPDragDrop_21
Aev_GetAPDragDrop_20:
		movea.l    80(a7),a0
		move.l     20(a0),-(a7)
		movea.l    84(a7),a0
		move.l     16(a0),-(a7)
		movea.l    88(a7),a0
		move.l     12(a0),-(a7)
		movea.l    92(a7),a0
		move.w     26(a0),d1
		movea.l    92(a7),a0
		move.w     24(a0),d0
		lea.l      32(a7),a1
		movea.l    28(a7),a0
		jsr        GetTxtIntoObj
		lea.l      12(a7),a7
		movea.l    16(a7),a0
		jsr        Ax_free
		moveq.l    #1,d0
		bra.s      Aev_GetAPDragDrop_3
Aev_GetAPDragDrop_21:
		cmpi.b     #$2E,20(a7)
		beq.s      Aev_GetAPDragDrop_22
		lea.l      xd4b05,a1
		lea.l      20(a7),a0
		jsr        strcpy
Aev_GetAPDragDrop_22:
		clr.w      d1
		move.l     (a7),d0
		movea.l    16(a7),a1
		lea.l      21(a7),a0
		jsr        Ascrp_put
		lea.l      21(a7),a1
		moveq.l    #29,d0
		movea.l    80(a7),a0
		movea.l    12(a0),a0
		movea.l    80(a7),a2
		movea.l    12(a2),a2
		movea.l    4(a2),a2
		jsr        (a2)
		tst.w      d0
		bne.s      Aev_GetAPDragDrop_23
		lea.l      21(a7),a0
		jsr        Ascrp_clear
Aev_GetAPDragDrop_23:
		moveq.l    #1,d0
Aev_GetAPDragDrop_3:
		lea.l      84(a7),a7
		movea.l    (a7)+,a2
		rts

	.IFNE 0 /* only in lib */
Aev_APDragDropMemory:
		lea.l      -150(a7),a7
		move.w     d0,148(a7)
		move.w     d1,146(a7)
		move.w     d2,144(a7)
		move.l     a0,140(a7)
		move.l     a1,136(a7)
		lea.l      ~_866+$00000019,a0
		lea.l      116(a7),a1
		moveq.l    #19,d0
Aev_APDragDropMemory_1:
		move.b     (a0)+,(a1)+
		dbf        d0,Aev_APDragDropMemory_1
		clr.w      44(a7)
		jsr        Dgetdrv
		jsr        Dsetdrv
		and.l      #$00100000,d0
		beq        Aev_APDragDropMemory_2
		lea.l      64(a7),a1
		lea.l      ~_867+$00000022,a0
		clr.w      d0
		jsr        Fxattr
		tst.l      d0
		bne        Aev_APDragDropMemory_2
		lea.l      116(a7),a0
		bsr.w      ~_164
		move.l     d0,36(a7)
		move.l     36(a7),d0
		bmi        Aev_APDragDropMemory_2
		move.w     38(a7),34(a7)
		clr.w      d0
		jsr        Awi_update
		move.w     #$003F,48(a7)
		movea.l    ACSblk,a0
		move.w     (a0),50(a7)
		move.w     146(a7),54(a7)
		move.w     144(a7),d0
		bmi.s      Aev_APDragDropMemory_3
		move.w     144(a7),d0
		bra.s      Aev_APDragDropMemory_4
Aev_APDragDropMemory_3:
		movea.l    ACSblk,a0
		move.w     610(a0),d0
Aev_APDragDropMemory_4:
		move.w     d0,56(a7)
		move.w     154(a7),d0
		bmi.s      Aev_APDragDropMemory_5
		move.w     154(a7),d0
		bra.s      Aev_APDragDropMemory_6
Aev_APDragDropMemory_5:
		movea.l    ACSblk,a0
		move.w     612(a0),d0
Aev_APDragDropMemory_6:
		move.w     d0,58(a7)
		move.w     156(a7),60(a7)
		move.b     133(a7),d0
		ext.w      d0
		lsl.w      #8,d0
		move.b     134(a7),d1
		ext.w      d1
		or.w       d1,d0
		move.w     d0,62(a7)
		movea.l    _globl,a1
		lea.l      48(a7),a0
		moveq.l    #16,d1
		move.w     148(a7),d0
		jsr        mt_appl_write
		tst.w      d0
		beq        Aev_APDragDropMemory_7
		lea.l      (a7),a0
		move.w     34(a7),d0
		bsr.w      ~_162
		tst.w      d0
		bne        Aev_APDragDropMemory_7
		movea.l    #$00000001,a0
		moveq.l    #13,d0
		jsr        Psignal
		move.l     d0,40(a7)
		move.w     #$000A,46(a7)
		moveq.l    #4,d0
		movea.l    140(a7),a1
		lea.l      (a7),a0
		jsr        strncpy
		clr.b      4(a7)
		lea.l      ~_867+$0000002A,a1
		lea.l      (a7),a0
		jsr        strcat
		move.l     158(a7),d0
		moveq.l    #24,d1
		asr.l      d1,d0
		and.b      #$FF,d0
		move.b     d0,4(a7)
		move.l     158(a7),d0
		moveq.l    #16,d1
		asr.l      d1,d0
		and.b      #$FF,d0
		move.b     d0,5(a7)
		move.l     158(a7),d0
		asr.l      #8,d0
		and.b      #$FF,d0
		move.b     d0,6(a7)
		moveq.l    #-1,d0
		and.b      161(a7),d0
		move.b     d0,7(a7)
		lea.l      (a7),a0
		move.w     46(a7),d1
		move.w     34(a7),d0
		bsr.w      ~_163
		tst.w      d0
		bne.s      Aev_APDragDropMemory_8
		lea.l      ~_867+$00000031,a1
		movea.l    140(a7),a0
		jsr        Ast_icmp
		tst.w      d0
		beq.s      Aev_APDragDropMemory_9
		movea.l    136(a7),a0
		move.l     158(a7),d1
		move.w     34(a7),d0
		jsr        Fwrite
		cmp.l      158(a7),d0
		bne.s      Aev_APDragDropMemory_10
		move.w     #$0001,44(a7)
Aev_APDragDropMemory_10:
		bra.s      Aev_APDragDropMemory_8
Aev_APDragDropMemory_9:
		movea.l    136(a7),a0
		move.l     158(a7),d1
		move.w     34(a7),d0
		jsr        Fread
		cmp.l      158(a7),d0
		bne.s      Aev_APDragDropMemory_8
		move.w     #$0001,44(a7)
Aev_APDragDropMemory_8:
		movea.l    40(a7),a0
		moveq.l    #13,d0
		jsr        Psignal
Aev_APDragDropMemory_7:
		move.w     34(a7),d0
		jsr        Fclose
		moveq.l    #1,d0
		jsr        Awi_update
Aev_APDragDropMemory_2:
		move.w     44(a7),d0
		lea.l      150(a7),a7
		rts
	.ENDC

		.data

xd4aba:
		dc.b 'U:\PIPE\DRAGDROP.AA',0
xd4ace:
		dc.b $00
xd4acf:
		dc.b $00
xd4ad0:
		dc.b $00
xd4ad1:
		dc.b $00
xd4ad2:
		dc.b $00
xd4ad3:
		dc.b 'U:\PIPE\DRAGDROP.AA',0
xd4ae7:
		dc.b $00
xd4ae8:
		dc.b '.TXT.IMG',0
xd4af1:
		dc.b 'PATH',0
xd4af6:
		dc.b '.IMG',0
xd4afb:
		dc.b '.TXT',0
xd4b00:
		dc.b 'ARGS',0
xd4b05:
		dc.b '.TMP',0
xd4b0a:
		dc.b 'U:\PIPE',0
xd4b12:
		dc.b '    ',0
		.even
xd4b18: /* unused */
		dc.b $00
xd4b19:
		dc.b 'PATH',0
		.even
