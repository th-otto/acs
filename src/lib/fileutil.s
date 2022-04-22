
		.globl Af_cfgfile
Af_cfgfile:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a4
		lea.l      ACSblk,a2
		lea.l      scrap,a3
		movea.l    (a2),a0
		lea.l      726(a0),a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      Af_cfgfile_1
		movea.l    (a2),a0
		lea.l      726(a0),a0
		jsr        Af_length
		moveq.l    #-1,d1
		cmp.l      d0,d1
		ble.s      Af_cfgfile_2
Af_cfgfile_1:
		movea.l    (a2),a0
		move.b     854(a0),d0
		bne.s      Af_cfgfile_3
		lea.l      xd38b0,a1
		movea.l    a3,a0
		jsr        strcpy
		jsr        Dgetdrv
		add.b      d0,(a3)
		bra.s      Af_cfgfile_4
Af_cfgfile_3:
		movea.l    (a2),a1
		lea.l      854(a1),a1
		movea.l    a3,a0
		jsr        strcpy
		bra.s      Af_cfgfile_4
Af_cfgfile_2:
		movea.l    (a2),a1
		lea.l      726(a1),a1
		movea.l    a3,a0
		jsr        strcpy
Af_cfgfile_4:
		movea.l    a4,a1
		movea.l    a3,a0
		jsr        strcat
		lea.l      xd38b4,a1
		movea.l    a3,a0
		jsr        strcat
		movea.l    a3,a0
		movem.l    (a7)+,a2-a4
		rts

		.globl Af_2drv
Af_2drv:
		move.l     a2,-(a7)
		movea.l    a0,a2
		cmpi.b     #$3A,1(a2)
		bne.s      Af_2drv_1
		move.b     (a0),d0
		ext.w      d0
		jsr        isalpha
		tst.w      d0
		beq.s      Af_2drv_1
		move.b     (a2),d0
		ext.w      d0
		jsr        toupper
		add.w      #$FFBF,d0
		bra.s      Af_2drv_2
Af_2drv_1:
		jsr        Dgetdrv
Af_2drv_2:
		movea.l    (a7)+,a2
		rts

		.globl Af_2path
Af_2path:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a3
		movea.l    a1,a4
		moveq.l    #92,d0
		movea.l    a1,a0
		jsr        strchr
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Af_2path_1
		movea.l    a3,a0
		clr.w      d0
		jsr        Dgetpath
		movea.l    a3,a0
		jsr        strlen
		subq.l     #1,d0
		cmpi.b     #$5C,0(a3,d0.l)
		beq.w      Af_2path_2
		lea.l      xd38b2,a1
		movea.l    a3,a0
		jsr        strcat
		bra.s      Af_2path_2
Af_2path_1:
		move.b     (a4),d0
		ext.w      d0
		jsr        isascii
		tst.w      d0
		beq.s      Af_2path_3
		move.b     (a4),d0
		ext.w      d0
		jsr        isalnum
		tst.w      d0
		beq.s      Af_2path_3
		cmpi.b     #$3A,1(a4)
		beq.s      Af_2path_4
Af_2path_3:
		movea.l    a4,a2
Af_2path_4:
		moveq.l    #2,d0
		lea.l      xd38b9,a1
		movea.l    a4,a0
		jsr        Ast_ncmp
		tst.w      d0
		bne.s      Af_2path_5
		clr.w      d0
		movea.l    a3,a0
		jsr        Dgetpath
		bra.s      Af_2path_6
Af_2path_5:
		clr.b      (a3)
Af_2path_6:
		moveq.l    #92,d0
		movea.l    a4,a0
		jsr        strrchr
		movea.l    a0,a4
		move.l     a4,d0
		sub.l      a2,d0
		addq.l     #1,d0
		movea.l    a2,a1
		movea.l    a3,a0
		jsr        strncat
Af_2path_2:
		movea.l    a3,a0
		movem.l    (a7)+,a2-a4
		rts

		.globl Af_2name
Af_2name:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a4
		movea.l    a1,a3
		moveq.l    #92,d0
		movea.l    a1,a0
		jsr        strrchr
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Af_2name_1
		movea.l    a3,a0
		moveq.l    #58,d0
		jsr        strrchr
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Af_2name_1
		movea.l    a3,a2
		bra.s      Af_2name_2
Af_2name_1:
		addq.w     #1,a2
Af_2name_2:
		moveq.l    #46,d0
		movea.l    a2,a0
		jsr        strrchr
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      Af_2name_3
		movea.l    a2,a1
		movea.l    a4,a0
		jsr        strcpy
		bra.s      Af_2name_4
Af_2name_3:
		move.l     a3,d0
		sub.l      a2,d0
		movea.l    a2,a1
		movea.l    a4,a0
		jsr        strncpy
		movea.l    a3,a0
		suba.l     a2,a0
		clr.b      0(a4,a0.l)
Af_2name_4:
		movea.l    a4,a0
		movem.l    (a7)+,a2-a4
		rts

		.globl Af_2fullname
Af_2fullname:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a4
		movea.l    a1,a2
		moveq.l    #92,d0
		movea.l    a1,a0
		jsr        strrchr
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      Af_2fullname_1
		movea.l    a2,a0
		moveq.l    #58,d0
		jsr        strrchr
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      Af_2fullname_1
		movea.l    a2,a3
		bra.s      Af_2fullname_2
Af_2fullname_1:
		addq.w     #1,a3
Af_2fullname_2:
		movea.l    a3,a1
		movea.l    a4,a0
		jsr        strcpy
		movea.l    a4,a0
		movem.l    (a7)+,a2-a4
		rts

		.globl Af_2ext
Af_2ext:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a4
		movea.l    a1,a3
		moveq.l    #92,d0
		movea.l    a1,a0
		jsr        strrchr
		movea.l    a0,a2
		moveq.l    #46,d0
		movea.l    a3,a0
		jsr        strrchr
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      Af_2ext_1
		move.l     a2,d1
		beq.s      Af_2ext_2
		cmp.l      d1,d0
		bcc.s      Af_2ext_2
Af_2ext_1:
		lea.l      xd38b3,a1
		movea.l    a4,a0
		jsr        strcpy
		bra.s      Af_2ext_3
Af_2ext_2:
		lea.l      1(a3),a1
		movea.l    a4,a0
		jsr        strcpy
Af_2ext_3:
		movea.l    a4,a0
		movem.l    (a7)+,a2-a4
		rts

		.globl Af_buildname
Af_buildname:
		movem.l    d3-d4/a2-a6,-(a7)
		movea.l    a0,a3
		move.w     d0,d4
		movea.l    a1,a4
		movea.l    32(a7),a5
		movea.l    36(a7),a6
		moveq.l    #3,d3
		lea.l      xd38b0,a2
		movea.l    a2,a1
		movea.l    a3,a0
		jsr        strcpy
		tst.w      d4
		bmi.s      Af_buildname_1
		add.b      d4,(a3)
		bra.s      Af_buildname_2
Af_buildname_1:
		jsr        Dgetdrv
		add.b      d0,(a3)
Af_buildname_2:
		move.l     a4,d0
		beq.s      Af_buildname_3
		move.b     (a4),d1
		bne.s      Af_buildname_4
Af_buildname_3:
		move.b     (a3),d0
		ext.w      d0
		add.w      #$FFC0,d0
		lea.l      2(a3),a0
		jsr        Dgetpath
		lea.l      2(a2),a1
		movea.l    a3,a0
		jsr        strcat
		jsr        strlen
		move.l     d0,d3
		bra.s      Af_buildname_5
Af_buildname_4:
		cmpi.b     #$5C,(a4)
		bne.s      Af_buildname_6
		lea.l      1(a4),a1
		bra.s      Af_buildname_7
Af_buildname_6:
		movea.l    a4,a1
Af_buildname_7:
		lea.l      0(a3,d3.l),a0
		jsr        strcpy
		movea.l    a3,a0
		jsr        strlen
		move.l     d0,d3
		cmpi.b     #$5C,-1(a3,d3.l)
		beq.s      Af_buildname_5
		lea.l      2(a2),a1
		lea.l      0(a3,d3.l),a0
		jsr        strcpy
		addq.l     #1,d3
Af_buildname_5:
		move.l     a5,d0
		beq.s      Af_buildname_8
		movea.l    a5,a1
		movea.l    a3,a0
		jsr        strcat
		move.l     a6,d0
		beq.s      Af_buildname_8
		movea.l    a3,a0
		jsr        strlen
		move.l     d0,d3
		cmpi.b     #$2E,-1(a3,d3.l)
		beq.s      Af_buildname_9
		lea.l      12(a2),a1
		lea.l      0(a3,d3.l),a0
		jsr        strcpy
		addq.l     #1,d3
Af_buildname_9:
		movea.l    a6,a1
		lea.l      0(a3,d3.l),a0
		jsr        strcpy
Af_buildname_8:
		movea.l    a3,a0
		movem.l    (a7)+,d3-d4/a2-a6
		rts

		.globl Af_length
Af_length:
		movem.l    d3-d4/a2-a3,-(a7)
		movea.l    a0,a2
		moveq.l    #-2,d3
		move.l     a2,d0
		beq.s      Af_length_1
		move.b     (a0),d1
		beq.s      Af_length_1
		move.b     1(a2),d2
		bne.s      Af_length_2
		cmp.b      #$5C,d1
		beq.s      Af_length_3
Af_length_2:
		move.b     (a2),d0
		ext.w      d0
		jsr        isascii
		tst.w      d0
		beq.s      Af_length_4
		move.b     (a2),d0
		ext.w      d0
		jsr        isalpha
		tst.w      d0
		beq.s      Af_length_4
		lea.l      xd38b1,a1
		lea.l      1(a2),a0
		jsr        Ast_cmp
		tst.w      d0
		bne.s      Af_length_4
		jsr        Dgetdrv
		jsr        Dsetdrv
		moveq.l    #1,d1
		moveq.l    #-65,d2
		add.b      (a2),d2
		lsl.l      d2,d1
		and.l      d1,d0
		beq.s      Af_length_1
Af_length_3:
		moveq.l    #-1,d0
		bra.w      Af_length_5
Af_length_1:
		moveq.l    #-2,d0
		bra.w      Af_length_5
Af_length_4:
		jsr        Amo_busy
		moveq.l    #92,d0
		movea.l    a2,a0
		jsr        strrchr
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      Af_length_6
		move.b     1(a3),d1
		bne.s      Af_length_6
		clr.b      (a0)
		bra.s      Af_length_7
Af_length_6:
		suba.l     a3,a3
Af_length_7:
		clr.w      d1
		clr.w      d0
		movea.l    a2,a0
		jsr        Fattrib
		tst.l      d0
		bmi.s      Af_length_8
		moveq.l    #16,d1
		and.w      d0,d1
		beq.s      Af_length_9
		moveq.l    #-1,d3
		bra.s      Af_length_8
Af_length_9:
		clr.w      d0
		movea.l    a2,a0
		jsr        Fopen
		move.l     d0,d4
		tst.l      d0
		ble.s      Af_length_8
		moveq.l    #2,d2
		move.w     d4,d1
		moveq.l    #0,d0
		jsr        Fseek
		move.l     d0,d3
		move.w     d4,d0
		jsr        Fclose
Af_length_8:
		jsr        Amo_unbusy
		move.l     a3,d0
		beq.s      Af_length_10
		move.b     #$5C,(a3)
Af_length_10:
		move.l     d3,d0
Af_length_5:
		movem.l    (a7)+,d3-d4/a2-a3
		rts

Af_readdirOld:
		movem.l    d3-d4/a2-a4/a6,-(a7)
		lea.l      -48(a7),a7
		movea.l    a0,a2
		jsr        strlen
		move.l     d0,d3
		lea.l      xd38b0,a3
		cmpi.b     #$5C,-1(a2,d3.l)
		bne.s      Af_readdirOld_1
		lea.l      14(a3),a1
		movea.l    a2,a0
		jsr        strcat
		bra.s      Af_readdirOld_2
Af_readdirOld_1:
		lea.l      18(a3),a1
		movea.l    a2,a0
		jsr        strcat
Af_readdirOld_2:
		jsr        Fgetdta
		move.l     a0,44(a7)
		lea.l      (a7),a0
		jsr        Fsetdta
		suba.l     a6,a6
		movea.l    a6,a4
		moveq.l    #17,d0
		movea.l    a2,a0
		jsr        Fsfirst
		move.w     d0,d4
		bra        Af_readdirOld_3
Af_readdirOld_9:
		lea.l      12(a3),a1
		lea.l      30(a7),a0
		jsr        Ast_cmp
		tst.w      d0
		beq        Af_readdirOld_4
		lea.l      23(a3),a1
		lea.l      30(a7),a0
		jsr        Ast_cmp
		tst.w      d0
		beq        Af_readdirOld_4
		move.l     a4,d0
		bne.s      Af_readdirOld_5
		moveq.l    #60,d0
		jsr        Ax_malloc
		movea.l    a0,a6
		move.l     a6,d0
		beq        Af_readdirOld_6
		moveq.l    #60,d1
		clr.w      d0
		jsr        memset
		movea.l    a6,a4
		bra.s      Af_readdirOld_7
Af_readdirOld_5:
		moveq.l    #60,d0
		jsr        Ax_malloc
		move.l     a0,4(a6)
		move.l     a0,d0
		beq        Af_readdirOld_6
		movea.l    d0,a6
		moveq.l    #60,d1
		movea.l    a6,a0
		clr.w      d0
		jsr        memset
Af_readdirOld_7:
		moveq.l    #20,d0
		add.l      d3,d0
		jsr        Ax_malloc
		move.l     a0,(a6)
		move.l     a0,d0
		beq        Af_readdirOld_6
		clr.b      (a0)
		movea.l    a2,a1
		movea.l    (a6),a0
		jsr        strcpy
		movea.l    (a6),a0
		jsr        strlen
		subq.l     #3,d0
		movea.l    (a6),a0
		clr.b      0(a0,d0.l)
		lea.l      30(a7),a1
		movea.l    (a6),a0
		jsr        strcat
		moveq.l    #16,d0
		and.b      21(a7),d0
		beq.s      Af_readdirOld_8
		lea.l      2(a3),a1
		movea.l    (a6),a0
		jsr        strcat
Af_readdirOld_8:
		move.b     21(a7),d0
		ext.w      d0
		move.w     d0,48(a6)
		move.w     22(a7),36(a6)
		move.w     22(a7),40(a6)
		move.w     22(a7),44(a6)
		move.w     24(a7),38(a6)
		move.w     24(a7),42(a6)
		move.w     24(a7),46(a6)
		movea.l    a2,a0
		bsr        Af_2drv
		move.w     d0,14(a6)
		move.l     26(a7),24(a6)
Af_readdirOld_4:
		jsr        Fsnext
		move.w     d0,d4
Af_readdirOld_3:
		tst.w      d4
		beq        Af_readdirOld_9
Af_readdirOld_6:
		movea.l    44(a7),a0
		jsr        Fsetdta
		tst.w      d4
		bne.s      Af_readdirOld_10
		movea.l    a4,a0
		jsr        Af_freedir
		suba.l     a6,a6
		movea.l    a6,a4
Af_readdirOld_10:
		movea.l    a4,a0
		lea.l      48(a7),a7
		movem.l    (a7)+,d3-d4/a2-a4/a6
		rts

Af_readdirNew:
		movem.l    d3-d7/a3-a6,-(a7)
		lea.l      -60(a7),a7
		move.l     a0,56(a7)
		clr.w      d3
		jsr        strlen
		move.l     d0,d4
		moveq.l    #-1,d0
		movea.l    56(a7),a0
		jsr        Dpathconf
		move.l     d0,d5
		moveq.l    #-32,d1
		cmp.l      d0,d1
		beq.s      Af_readdirNew_1
		moveq.l    #2,d2
		cmp.l      d0,d2
		bgt.s      Af_readdirNew_1
		movea.l    56(a7),a0
		moveq.l    #2,d0
		jsr        Dpathconf
		move.l     d0,d5
		moveq.l    #-32,d1
		cmp.l      d0,d1
		beq.s      Af_readdirNew_2
		moveq.l    #30,d6
		add.w      d5,d6
		bra.s      Af_readdirNew_3
Af_readdirNew_2:
		move.w     #$0096,d6
Af_readdirNew_3:
		bra.s      Af_readdirNew_4
Af_readdirNew_1:
		move.w     #$0096,d6
Af_readdirNew_4:
		move.w     d6,d0
		ext.l      d0
		jsr        Ax_malloc
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      Af_readdirNew_5
		clr.b      (a0)
		movea.l    56(a7),a0
		clr.w      d0
		jsr        Dopendir
		move.l     d0,d7
		and.l      #$FF000000,d0
		cmp.l      #$FF000000,d0
		beq.s      Af_readdirNew_6
		moveq.l    #-34,d1
		cmp.l      d7,d1
		beq.s      Af_readdirNew_6
		moveq.l    #-36,d2
		cmp.l      d7,d2
		beq.s      Af_readdirNew_6
		moveq.l    #-39,d0
		cmp.l      d7,d0
		bne.s      Af_readdirNew_7
Af_readdirNew_6:
		tst.l      d7
		bmi.s      Af_readdirNew_5
		move.l     d7,d0
		jsr        Dclosedir
Af_readdirNew_5:
		suba.l     a0,a0
		bra        Af_readdirNew_8
Af_readdirNew_7:
		suba.l     a4,a4
		movea.l    a4,a5
Af_readdirNew_17:
		lea.l      52(a7),a6
		pea.l      (a6)
		lea.l      4(a7),a1
		movea.l    a3,a0
		move.l     d7,d1
		move.w     d6,d0
		jsr        Dxreaddir
		addq.w     #4,a7
		move.l     d0,d5
		moveq.l    #-32,d1
		cmp.l      d0,d1
		bne.s      Af_readdirNew_9
Af_readdirNew_10:
		movea.l    a3,a0
		move.l     d7,d1
		move.w     d6,d0
		jsr        Dreaddir
		move.l     d0,d5
		moveq.l    #-64,d1
		cmp.l      d0,d1
		beq.s      Af_readdirNew_10
		tst.l      d0
		bmi.s      Af_readdirNew_11
		move.l     #$FFFFFFE0,(a6)
		bra.s      Af_readdirNew_12
Af_readdirNew_13:
		pea.l      (a6)
		lea.l      4(a7),a1
		movea.l    a3,a0
		move.l     d7,d1
		move.w     d6,d0
		jsr        Dxreaddir
		addq.w     #4,a7
		move.l     d0,d5
Af_readdirNew_9:
		moveq.l    #-64,d0
		cmp.l      d5,d0
		beq.s      Af_readdirNew_13
		tst.l      d5
		bpl.s      Af_readdirNew_12
Af_readdirNew_11:
		moveq.l    #-49,d0
		cmp.l      d5,d0
		beq.s      Af_readdirNew_14
		moveq.l    #1,d3
		bra.s      Af_readdirNew_15
Af_readdirNew_14:
		clr.w      d3
Af_readdirNew_15:
		bra        Af_readdirNew_16
Af_readdirNew_12:
		lea.l      xd38bc,a1
		lea.l      4(a3),a0
		jsr        Ast_cmp
		tst.w      d0
		beq        Af_readdirNew_17
		lea.l      xd38c7,a1
		lea.l      4(a3),a0
		jsr        Ast_cmp
		tst.w      d0
		beq        Af_readdirNew_17
		move.l     a5,d0
		bne.s      Af_readdirNew_18
		moveq.l    #60,d0
		jsr        Ax_malloc
		movea.l    a0,a4
		move.l     a4,d0
		bne.s      Af_readdirNew_19
		moveq.l    #1,d3
		bra.s      Af_readdirNew_20
Af_readdirNew_19:
		clr.w      d3
Af_readdirNew_20:
		tst.w      d3
		bne        Af_readdirNew_16
		moveq.l    #60,d1
		clr.w      d0
		movea.l    a4,a0
		jsr        memset
		movea.l    a4,a5
		bra.s      Af_readdirNew_21
Af_readdirNew_18:
		moveq.l    #60,d0
		jsr        Ax_malloc
		move.l     a0,4(a4)
		move.l     a0,d0
		bne.s      Af_readdirNew_22
		moveq.l    #1,d3
		bra.s      Af_readdirNew_23
Af_readdirNew_22:
		clr.w      d3
Af_readdirNew_23:
		tst.w      d3
		bne        Af_readdirNew_16
		movea.l    4(a4),a4
		moveq.l    #60,d1
		clr.w      d0
		movea.l    a4,a0
		jsr        memset
Af_readdirNew_21:
		move.w     d6,d0
		ext.l      d0
		add.l      d4,d0
		addq.l     #1,d0
		jsr        Ax_malloc
		move.l     a0,(a4)
		move.l     a0,d0
		beq        Af_readdirNew_16
		clr.b      (a0)
		movea.l    56(a7),a1
		movea.l    (a4),a0
		jsr        strcpy
		lea.l      xd38b2,a1
		movea.l    (a4),a0
		jsr        strcat
		lea.l      4(a3),a1
		movea.l    (a4),a0
		jsr        strcat
		moveq.l    #-32,d0
		cmp.l      (a6),d0
		bne.s      Af_readdirNew_24
		lea.l      8(a4),a1
		movea.l    (a4),a0
		clr.w      d0
		jsr        Fxattr
		move.l     d0,(a6)
		moveq.l    #-32,d1
		cmp.l      d0,d1
		bne.s      Af_readdirNew_25
		lea.l      8(a4),a0
		clr.w      d0
		moveq.l    #52,d1
		jsr        memset
		bra.s      Af_readdirNew_25
Af_readdirNew_24:
		moveq.l    #52,d0
		lea.l      (a7),a1
		lea.l      8(a4),a0
		jsr        memcpy
Af_readdirNew_25:
		moveq.l    #-32,d0
		cmp.l      (a6),d0
		beq        Af_readdirNew_17
		moveq.l    #16,d1
		and.w      48(a4),d1
		beq        Af_readdirNew_17
		lea.l      xd38b2,a1
		movea.l    (a4),a0
		jsr        strcat
		bra        Af_readdirNew_17
Af_readdirNew_16:
		movea.l    a3,a0
		jsr        Ax_free
		move.l     d7,d0
		jsr        Dclosedir
		tst.w      d3
		beq.s      Af_readdirNew_26
		movea.l    a5,a0
		jsr        Af_freedir
		suba.l     a4,a4
		movea.l    a4,a5
Af_readdirNew_26:
		movea.l    a5,a0
Af_readdirNew_8:
		lea.l      60(a7),a7
		movem.l    (a7)+,d3-d7/a3-a6
		rts

		.globl Af_readdir
Af_readdir:
		movem.l    d3-d4/a2-a3,-(a7)
		movea.l    a0,a3
		jsr        strlen
		move.l     d0,d3
		moveq.l    #20,d0
		add.l      d3,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Af_readdir_1
		suba.l     a0,a0
		bra        Af_readdir_2
Af_readdir_1:
		movea.l    a3,a1
		movea.l    a2,a0
		jsr        strcpy
		moveq.l    #92,d0
		movea.l    a2,a0
		jsr        strrchr
		move.l     a0,d0
		beq.s      Af_readdir_3
		move.b     1(a0),d1
		bne.s      Af_readdir_3
		clr.b      (a0)
Af_readdir_3:
		movea.l    a2,a0
		jsr        strlen
		moveq.l    #2,d1
		cmp.l      d0,d1
		bne.s      Af_readdir_4
		cmpi.b     #$3A,1(a2)
		bne.s      Af_readdir_4
		lea.l      xd38b2,a1
		movea.l    a2,a0
		jsr        strcat
Af_readdir_4:
		jsr        Dgetdrv
		move.w     d0,d3
		movea.l    a3,a0
		bsr        Af_2drv
		jsr        Dsetdrv
		clr.w      d0
		lea.l      xd38bc,a0
		jsr        Dopendir
		move.l     d0,d4
		move.w     d3,d0
		jsr        Dsetdrv
		moveq.l    #-32,d0
		cmp.l      d4,d0
		bne.s      Af_readdir_5
		movea.l    a2,a0
		bsr        Af_readdirOld
		movea.l    a0,a3
		bra.s      Af_readdir_6
Af_readdir_5:
		tst.l      d4
		ble.s      Af_readdir_7
		move.l     d4,d0
		jsr        Dclosedir
Af_readdir_7:
		movea.l    a2,a0
		bsr        Af_readdirNew
		movea.l    a0,a3
Af_readdir_6:
		movea.l    a2,a0
		jsr        Ax_free
		movea.l    a3,a0
Af_readdir_2:
		movem.l    (a7)+,d3-d4/a2-a3
		rts

		.globl Af_freedir
Af_freedir:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		bra.s      Af_freedir_1
Af_freedir_3:
		movea.l    a2,a3
		movea.l    4(a2),a2
		move.l     (a3),d0
		beq.s      Af_freedir_2
		movea.l    d0,a0
		jsr        Ast_delete
Af_freedir_2:
		movea.l    a3,a0
		jsr        Ax_free
Af_freedir_1:
		move.l     a2,d0
		bne.s      Af_freedir_3
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Af_first
Af_first:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a3
		movea.l    a1,a4
		lea.l      DateiListe,a2
		move.l     (a2),d0
		beq.s      Af_first_1
		movea.l    d0,a0
		bsr.w      Af_freedir
		moveq.l    #0,d0
		move.l     d0,4(a2)
		move.l     d0,(a2)
Af_first_1:
		movea.l    a3,a0
		bsr        Af_readdir
		move.l     a0,(a2)
		move.l     a0,d0
		bne.s      Af_first_2
		suba.l     a0,a0
		bra.s      Af_first_3
Af_first_2:
		movea.l    a4,a0
		jsr        Af_next
Af_first_3:
		movem.l    (a7)+,a2-a4
		rts

		.globl Af_next
Af_next:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		lea.l      AktDatei,a2
		move.l     -4(a2),d0
		beq.s      Af_next_1
		move.l     (a2),d1
		bne.s      Af_next_2
		move.l     d0,(a2)
		bra.s      Af_next_3
Af_next_2:
		movea.l    (a2),a0
		move.l     4(a0),(a2)
Af_next_3:
		move.l     (a2),d0
		bne.s      Af_next_4
		movea.l    -4(a2),a0
		bsr        Af_freedir
		moveq.l    #0,d0
		move.l     d0,(a2)
		move.l     d0,-4(a2)
		bra.s      Af_next_1
Af_next_4:
		move.l     a3,d0
		beq.s      Af_next_5
		movea.l    (a2),a1
		addq.w     #8,a1
		movea.l    a3,a0
		moveq.l    #52,d0
		jsr        memcpy
Af_next_5:
		movea.l    (a2),a0
		movea.l    (a0),a0
		bra.s      Af_next_6
Af_next_1:
		suba.l     a0,a0
Af_next_6:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Af_quote
Af_quote:
		movem.l    d3/a2-a5,-(a7)
		movea.l    a0,a2
		movea.l    a1,a3
		cmpa.l     a0,a1
		beq.s      Af_quote_1
		jsr        strcpy
Af_quote_1:
		movea.l    a2,a0
		jsr        Ast_alltrim
		lea.l      xd38b0,a3
		lea.l      26(a3),a1
		movea.l    a2,a0
		jsr        strpbrk
		move.l     a0,d0
		beq.s      Af_quote_2
		clr.w      d3
		movea.l    a2,a4
		bra.s      Af_quote_3
Af_quote_5:
		move.b     (a4),d0
		cmp.b      32(a3),d0
		bne.s      Af_quote_4
		addq.w     #1,d3
Af_quote_4:
		addq.w     #1,a4
Af_quote_3:
		move.b     (a4),d0
		bne.s      Af_quote_5
		movea.l    a2,a0
		jsr        strlen
		lea.l      0(a2,d0.l),a4
		lea.l      1(a4,d3.w),a5
		bra.s      Af_quote_6
Af_quote_8:
		move.b     (a4),d0
		cmp.b      32(a3),d0
		bne.s      Af_quote_7
		move.b     d0,(a5)
		subq.w     #1,a5
Af_quote_7:
		move.b     (a4),(a5)
		subq.w     #1,a4
		subq.w     #1,a5
Af_quote_6:
		cmpa.l     a4,a2
		bls.s      Af_quote_8
		move.b     32(a3),(a2)
		movea.l    a2,a0
		jsr        strlen
		lea.l      0(a2,d0.l),a5
		move.b     32(a3),(a5)+
		clr.b      (a5)
Af_quote_2:
		movea.l    a2,a0
		movem.l    (a7)+,d3/a2-a5
		rts

		.globl Af_unquote
Af_unquote:
		move.w     d3,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		cmpa.l     a0,a1
		beq.s      Af_unquote_1
		jsr        strcpy
Af_unquote_1:
		movea.l    a3,a0
		jsr        Ast_alltrim
		move.b     (a3),d3
		move.b     d3,d0
		ext.w      d0
		lea.l      xd38d0,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Af_unquote_2
		movea.l    a3,a0
		jsr        strlen
		subq.l     #1,d0
		cmp.b      0(a3,d0.l),d3
		bne.s      Af_unquote_2
		movea.l    a3,a1
		lea.l      1(a3),a0
		bra.s      Af_unquote_3
Af_unquote_6:
		cmp.b      (a0),d3
		bne.s      Af_unquote_4
		move.b     (a0),d0
		cmp.b      1(a0),d0
		bne.s      Af_unquote_5
		addq.w     #1,a0
Af_unquote_4:
		move.b     (a0),(a1)
		addq.w     #1,a0
		addq.w     #1,a1
Af_unquote_3:
		move.b     (a0),d0
		bne.s      Af_unquote_6
Af_unquote_5:
		clr.b      (a1)
Af_unquote_2:
		movea.l    a3,a0
		movea.l    (a7)+,a3
		move.w     (a7)+,d3
		rts

		.globl Af_parseCmdLine
Af_parseCmdLine:
		movem.l    d3/a2-a6,-(a7)
		lea.l      -136(a7),a7
		movea.l    a0,a4
		jsr        Alu_create
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Af_parseCmdLine_1
		movea.l    a4,a0
		jsr        Ast_create
		move.l     a0,(a7)
		move.l     a0,d0
		bne.s      Af_parseCmdLine_2
Af_parseCmdLine_1:
		suba.l     a0,a0
		bra        Af_parseCmdLine_3
Af_parseCmdLine_2:
		movea.l    (a7),a4
		lea.l      4(a7),a5
		bra        Af_parseCmdLine_4
Af_parseCmdLine_12:
		movea.l    a4,a0
		jsr        Ast_alltrim
		move.b     (a4),d3
		move.b     d3,d0
		ext.w      d0
		lea.l      xd38d0,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Af_parseCmdLine_5
		addq.w     #1,a4
		movea.l    a5,a3
		bra.s      Af_parseCmdLine_6
Af_parseCmdLine_9:
		cmp.b      (a4),d3
		bne.s      Af_parseCmdLine_7
		addq.w     #1,a4
		move.b     -1(a4),d0
		cmp.b      (a4),d0
		bne.s      Af_parseCmdLine_8
Af_parseCmdLine_7:
		move.b     (a4),(a3)
		addq.w     #1,a4
		addq.w     #1,a3
Af_parseCmdLine_6:
		move.b     (a4),d0
		bne.s      Af_parseCmdLine_9
Af_parseCmdLine_8:
		clr.b      (a3)
		bra.s      Af_parseCmdLine_10
Af_parseCmdLine_5:
		lea.l      xd38ca,a1
		movea.l    a4,a0
		jsr        strpbrk
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      Af_parseCmdLine_11
		move.b     (a0),d3
		clr.b      (a0)
		movea.l    a4,a1
		movea.l    a5,a0
		jsr        strcpy
		movea.l    a3,a4
		move.b     d3,(a4)
		bra.s      Af_parseCmdLine_10
Af_parseCmdLine_11:
		movea.l    a4,a1
		movea.l    a5,a0
		jsr        strcpy
		suba.l     a4,a4
Af_parseCmdLine_10:
		movea.l    a5,a0
		jsr        Ast_create
		move.l     a0,132(a7)
		move.l     a0,d0
		beq.s      Af_parseCmdLine_4
		movea.l    d0,a1
		movea.l    12(a2),a6
		movea.l    a2,a0
		jsr        (a6)
Af_parseCmdLine_4:
		movea.l    a4,a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq        Af_parseCmdLine_12
		movea.l    (a7),a0
		jsr        Ast_delete
		movea.l    a2,a0
Af_parseCmdLine_3:
		lea.l      136(a7),a7
		movem.l    (a7)+,d3/a2-a6
		rts

		.data

DateiListe:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
AktDatei:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $2e00
max_mode:
		dc.w $fffe
xd38ac:
		dc.b 'A:\',0
xd38b0:
		dc.b 'A'
xd38b1:
	dc.b ':'
xd38b2:
	dc.b $5c
xd38b3:
	dc.b 0
xd38b4:
		dc.b '.cfg',0
xd38b9:
		dc.b $2e
		dc.w $5c00
xd38bc:
		dc.w $2e00
xd38be:
		dc.b '*.*',0
xd38c2:
		dc.b '\*.*',0
xd38c7:
		dc.b $2e
		dc.w $2e00
xd38ca:
		dc.b ' ',$09,$0a,$0d,$27,0
xd38d0:
		dc.w $2722
		dc.b $00
		.even

	.bss

scrap: ds.b 256
