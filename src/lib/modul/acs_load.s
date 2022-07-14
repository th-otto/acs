/******************************************************************************/
/*                                                                            */
/*    ACS               Application Construction System                       */
/*    DESCRIPTION:      Startup code for modules                              */
/*                                                                            */
/* (c) 1991-2004 Stefan Bachert, Oliver Michalak, Martin Elsaesser            */
/* (c) 2022 Thorsten Otto                                                     */
/******************************************************************************/

	.globl ACSblk
	.globl _globl
	.xref ACSinit

WITH_EXTENSIONS = 1

	.text

/*
 * ACSmod header structure
 */
compiler:
	clr.w      -(a7)
	trap       #1
	dc.l       0x41435339    /* magic2 */
init_modul:
	dc.l       ACSinit       /* entry */
ACSblk:
	dc.l       0             /* filled in by loader */
_globl:
	dc.l       0             /* filled in by loader */
	dc.l       (funcsend-funcs)/6  /* funcsAnz */

/*
 * list of function tables & versions.
 * Function table pointer is filled in by loader.
 * Version is zero currently for all tables.
 */
funcs: 

funcAbp:     dc.w 0,0,0
funcAcfg:    dc.w 0,0,0
funcAch:     dc.w 0,0,0
funcAdr:     dc.w 0,0,0
funcAev:     dc.w 0,0,0
funcAf:      dc.w 0,0,0
funcAic:     dc.w 0,0,0
funcAim:     dc.w 0,0,0
funcAlu:     dc.w 0,0,0
funcAme:     dc.w 0,0,0
funcAmo:     dc.w 0,0,0
funcAob:     dc.w 0,0,0
funcAscrp:   dc.w 0,0,0
funcAsh:     dc.w 0,0,0
funcAst:     dc.w 0,0,0
funcAte:     dc.w 0,0,0
funcAuo:     dc.w 0,0,0
funcAus:     dc.w 0,0,0
funcAwi:     dc.w 0,0,0
funcA:       dc.w 0,0,0
funcSonst:   dc.w 0,0,0
funcVdi:     dc.w 0,0,0
funcAes:     dc.w 0,0,0
funcKeytab:  dc.w 0,0,0
funcMtAes:   dc.w 0,0,0

funcsend:

aess:        dc.l 0
vdis:        dc.l 0

/*
 * jump indirectly to function from application.
 * This must not modify any registers.
 */
indirect:
	move.l     a0,-(a7)   /* save A0 */
	movea.l    4(a7),a0   /* get function table ptr */
	adda.l     8(a7),a0   /* add offset */
	move.l     (a0),8(a7) /* put entry pointer on stack */
	movea.l    (a7)+,a0   /* restore a0 */
	addq.l     #4,a7      /* remove args */
	rts                   /* jump to entry */


/*
 * function tables
 */
 
/* backplan */
	.globl Abp_create
		MODULE Abp_create
		pea        0
		move.l     funcAbp(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Abp_delete
		MODULE Abp_delete
		pea        4
		move.l     funcAbp(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Abp_start
		MODULE Abp_start
		pea        8
		move.l     funcAbp(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Abp_end
		MODULE Abp_end
		pea        12
		move.l     funcAbp(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Abp_mfdb2img
		MODULE Abp_mfdb2img
		pea        16
		move.l     funcAbp(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Abp_img2mfdb
		MODULE Abp_img2mfdb
		pea        20
		move.l     funcAbp(pc),-(a7)
		bra        indirect
		ENDMOD


/* config */
	.globl Acfg_create
		MODULE Acfg_create
		pea        0
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_delete
		MODULE Acfg_delete
		pea        4
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_clear
		MODULE Acfg_clear
		pea        8
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_clearAllGroups
		MODULE Acfg_clearAllGroups
		pea        12
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_clearGroup
		MODULE Acfg_clearGroup
		pea        16
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_load
		MODULE Acfg_load
		pea        20
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_save
		MODULE Acfg_save
		pea        24
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_isChanged
		MODULE Acfg_isChanged
		pea        28
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_getValue
		MODULE Acfg_getValue
		pea        32
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_setValue
		MODULE Acfg_setValue
		pea        36
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_clearValue
		MODULE Acfg_clearValue
		pea        40
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_getChar
		MODULE Acfg_getChar
		pea        44
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_setChar
		MODULE Acfg_setChar
		pea        48
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_getLong
		MODULE Acfg_getLong
		pea        52
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_setLong
		MODULE Acfg_setLong
		pea        56
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_getString
		MODULE Acfg_getString
		pea        60
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_getBool
		MODULE Acfg_getBool
		pea        64
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_setBool
		MODULE Acfg_setBool
		pea        68
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_clearHeader
		MODULE Acfg_clearHeader
		pea        72
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_headAnzahl
		MODULE Acfg_headAnzahl
		pea        76
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_setHeader
		MODULE Acfg_setHeader
		pea        80
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_getHeader
		MODULE Acfg_getHeader
		pea        84
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_grpAnzahl
		MODULE Acfg_grpAnzahl
		pea        88
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_grpName
		MODULE Acfg_grpName
		pea        92
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_strAnzahl
		MODULE Acfg_strAnzahl
		pea        96
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_strName
		MODULE Acfg_strName
		pea        100
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_strValue
		MODULE Acfg_strValue
		pea        104
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_strIsComment
		MODULE Acfg_strIsComment
		pea        108
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_isCfgfile
		MODULE Acfg_isCfgfile
		pea        112
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_createInfo
		MODULE Acfg_createInfo
		pea        116
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_deleteInfo
		MODULE Acfg_deleteInfo
		pea        120
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_setInfo
		MODULE Acfg_setInfo
		pea        124
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_getInfo
		MODULE Acfg_getInfo
		pea        128
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_copyInfo
		MODULE Acfg_copyInfo
		pea        132
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_flags
		MODULE Acfg_flags
		pea        136
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_isGroupPresent
		MODULE Acfg_isGroupPresent
		pea        140
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_isStringPresent
		MODULE Acfg_isStringPresent
		pea        144
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

		.IFNE WITH_EXTENSIONS
	.globl Acfg_getDouble
		MODULE Acfg_getDouble
		pea        148
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Acfg_setDouble
		MODULE Acfg_setDouble
		pea        152
		move.l     funcAcfg(pc),-(a7)
		bra        indirect
		ENDMOD

		.ENDC

/* character */
	.globl Ach_tolower
		MODULE Ach_tolower
		pea        0
		move.l     funcAch(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ach_toupper
		MODULE Ach_toupper
		pea        4
		move.l     funcAch(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ach_isWhite
		MODULE Ach_isWhite
		pea        8
		move.l     funcAch(pc),-(a7)
		bra        indirect
		ENDMOD


/* selection */
	.globl Adr_box
		MODULE Adr_box
		pea        0
		move.l     funcAdr(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Adr_drag
		MODULE Adr_drag
		pea        4
		move.l     funcAdr(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Adr_next
		MODULE Adr_next
		pea        8
		move.l     funcAdr(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Adr_add
		MODULE Adr_add
		pea        12
		move.l     funcAdr(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Adr_del
		MODULE Adr_del
		pea        16
		move.l     funcAdr(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Adr_unselect
		MODULE Adr_unselect
		pea        20
		move.l     funcAdr(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Adr_start
		MODULE Adr_start
		pea        24
		move.l     funcAdr(pc),-(a7)
		bra        indirect
		ENDMOD


/* event */
	.globl Aev_quit
		MODULE Aev_quit
		pea        0
		move.l     funcAev(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aev_release
		MODULE Aev_release
		pea        4
		move.l     funcAev(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aev_mess
		MODULE Aev_mess
		pea        8
		move.l     funcAev(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aev_unhidepointer
		MODULE Aev_unhidepointer
		pea        12
		move.l     funcAev(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aev_DhstAdd
		MODULE Aev_DhstAdd
		pea        16
		move.l     funcAev(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aev_DhstSaved
		MODULE Aev_DhstSaved
		pea        20
		move.l     funcAev(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aev_WmRedraw
		MODULE Aev_WmRedraw
		pea        24
		move.l     funcAev(pc),-(a7)
		bra        indirect
		ENDMOD


/* file utilities */
	.globl Af_cfgfile
		MODULE Af_cfgfile
		pea        0
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_select
		MODULE Af_select
		pea        4
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_2drv
		MODULE Af_2drv
		pea        8
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_2path
		MODULE Af_2path
		pea        12
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_2name
		MODULE Af_2name
		pea        16
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_2fullname
		MODULE Af_2fullname
		pea        20
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_2ext
		MODULE Af_2ext
		pea        24
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_buildname
		MODULE Af_buildname
		pea        28
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_length
		MODULE Af_length
		pea        32
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_first_fsel
		MODULE Af_first_fsel
		pea        36
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_next_fsel
		MODULE Af_next_fsel
		pea        40
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_first
		MODULE Af_first
		pea        44
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_next
		MODULE Af_next
		pea        48
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_readdir
		MODULE Af_readdir
		pea        52
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_freedir
		MODULE Af_freedir
		pea        56
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_fileselect
		MODULE Af_fileselect
		pea        60
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_quote
		MODULE Af_quote
		pea        64
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_unquote
		MODULE Af_unquote
		pea        68
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

		.IFNE WITH_EXTENSIONS
	.globl Af_chgExt
		MODULE Af_chgExt
		pea        72
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Af_pathconf
		MODULE Af_pathconf
		pea        76
		move.l     funcAf(pc),-(a7)
		bra        indirect
		ENDMOD

		.ENDC

/* icons */
	.globl Aic_create
		MODULE Aic_create
		pea        0
		move.l     funcAic(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aic_delete
		MODULE Aic_delete
		pea        4
		move.l     funcAic(pc),-(a7)
		bra        indirect
		ENDMOD


/* images */
	.globl Aim_create
		MODULE Aim_create
		pea        0
		move.l     funcAim(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aim_delete
		MODULE Aim_delete
		pea        4
		move.l     funcAim(pc),-(a7)
		bra        indirect
		ENDMOD


/* lists */
	.globl Alu_create
		MODULE Alu_create
		pea        0
		move.l     funcAlu(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Alu_delete
		MODULE Alu_delete
		pea        4
		move.l     funcAlu(pc),-(a7)
		bra        indirect
		ENDMOD

		.IFNE WITH_EXTENSIONS
	.globl As_create
		MODULE As_create
		pea        8
		move.l     funcAlu(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl As_delete
		MODULE As_delete
		pea        12
		move.l     funcAlu(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aqu_create
		MODULE Aqu_create
		pea        16
		move.l     funcAlu(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aqu_delete
		MODULE Aqu_delete
		pea        20
		move.l     funcAlu(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Alu_ptrCmp
		MODULE Alu_ptrCmp
		pea        24
		move.l     funcAlu(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Alu_longCmp
		MODULE Alu_longCmp
		pea        28
		move.l     funcAlu(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Alu_intCmp
		MODULE Alu_intCmp
		pea        32
		move.l     funcAlu(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Alu_charCmp
		MODULE Alu_charCmp
		pea        36
		move.l     funcAlu(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Alu_strCmp
		MODULE Alu_strCmp
		pea        40
		move.l     funcAlu(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Alu_striCmp
		MODULE Alu_striCmp
		pea        44
		move.l     funcAlu(pc),-(a7)
		bra        indirect
		ENDMOD

		.ENDC

/* menus */
	.globl Ame_namefix
		MODULE Ame_namefix
		pea        0
		move.l     funcAme(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ame_popup
		MODULE Ame_popup
		pea        4
		move.l     funcAme(pc),-(a7)
		bra        indirect
		ENDMOD


/* mouse */
	.globl Amo_new
		MODULE Amo_new
		pea        0
		move.l     funcAmo(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Amo_busy
		MODULE Amo_busy
		pea        4
		move.l     funcAmo(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Amo_unbusy
		MODULE Amo_unbusy
		pea        8
		move.l     funcAmo(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Amo_hide
		MODULE Amo_hide
		pea        12
		move.l     funcAmo(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Amo_show
		MODULE Amo_show
		pea        16
		move.l     funcAmo(pc),-(a7)
		bra        indirect
		ENDMOD


/* objects */
	.globl Aob_create
		MODULE Aob_create
		pea        0
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_delete
		MODULE Aob_delete
		pea        4
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_fix
		MODULE Aob_fix
		pea        8
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_offset
		MODULE Aob_offset
		pea        12
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_save
		MODULE Aob_save
		pea        16
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_restore
		MODULE Aob_restore
		pea        20
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_watch
		MODULE Aob_watch
		pea        24
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_findflag
		MODULE Aob_findflag
		pea        28
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_alias
		MODULE Aob_alias
		pea        32
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_up
		MODULE Aob_up
		pea        36
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_icon
		MODULE Aob_icon
		pea        40
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_puttext
		MODULE Aob_puttext
		pea        44
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_gettext
		MODULE Aob_gettext
		pea        48
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_within
		MODULE Aob_within
		pea        52
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_printf
		MODULE Aob_printf
		pea        56
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_scanf
		MODULE Aob_scanf
		pea        60
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_flags
		MODULE Aob_flags
		pea        64
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_state
		MODULE Aob_state
		pea        68
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_service
		MODULE Aob_service
		pea        72
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_visible
		MODULE Aob_visible
		pea        76
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aob_count
		MODULE Aob_count
		pea        80
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

		.IFNE WITH_EXTENSIONS
	.globl Aob_help
		MODULE Aob_help
		pea        84
		move.l     funcAob(pc),-(a7)
		bra        indirect
		ENDMOD

		.ENDC


/* clipboard */
	.globl Ascrp_clear
		MODULE Ascrp_clear
		pea        0
		move.l     funcAscrp(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ascrp_get
		MODULE Ascrp_get
		pea        4
		move.l     funcAscrp(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ascrp_put
		MODULE Ascrp_put
		pea        8
		move.l     funcAscrp(pc),-(a7)
		bra        indirect
		ENDMOD


/* shell */
	.globl Ash_prog
		MODULE Ash_prog
		pea        0
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_error
		MODULE Ash_error
		pea        4
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_getcookie
		MODULE Ash_getcookie
		pea        8
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_getenv
		MODULE Ash_getenv
		pea        12
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_nextdd
		MODULE Ash_nextdd
		pea        16
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_sendall
		MODULE Ash_sendall
		pea        20
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_CallEdDI
		MODULE Ash_CallEdDI
		pea        24
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_NVDICookie
		MODULE Ash_NVDICookie
		pea        28
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_NVDIVersion
		MODULE Ash_NVDIVersion
		pea        32
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_NVDIDatum
		MODULE Ash_NVDIDatum
		pea        36
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_thermometer
		MODULE Ash_thermometer
		pea        40
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_fileselect
		MODULE Ash_fileselect
		pea        44
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_font
		MODULE Ash_font
		pea        48
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_print
		MODULE Ash_print
		pea        52
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_gettimer
		MODULE Ash_gettimer
		pea        56
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_printSetIcon
		MODULE Ash_printSetIcon
		pea        60
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_fontSetIcon
		MODULE Ash_fontSetIcon
		pea        64
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_fileSetIcon
		MODULE Ash_fileSetIcon
		pea        68
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_getOSHeader
		MODULE Ash_getOSHeader
		pea        72
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_getMagiC
		MODULE Ash_getMagiC
		pea        76
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_getNAES
		MODULE Ash_getNAES
		pea        80
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_getMagiCVersion
		MODULE Ash_getMagiCVersion
		pea        84
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_getMagiCAESVars
		MODULE Ash_getMagiCAESVars
		pea        88
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

		.IFNE WITH_EXTENSIONS
	.globl Ash_cmdParsen
		MODULE Ash_cmdParsen
		pea        92
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ash_sendmsg
		MODULE Ash_sendmsg
		pea        96
		move.l     funcAsh(pc),-(a7)
		bra        indirect
		ENDMOD

		.ENDC

/* strings */
	.globl Ast_create
		MODULE Ast_create
		pea        0
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_delete
		MODULE Ast_delete
		pea        4
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_tolower
		MODULE Ast_tolower
		pea        8
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_toupper
		MODULE Ast_toupper
		pea        12
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_ltrim
		MODULE Ast_ltrim
		pea        16
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_rtrim
		MODULE Ast_rtrim
		pea        20
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_alltrim
		MODULE Ast_alltrim
		pea        24
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_cmp
		MODULE Ast_cmp
		pea        28
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_icmp
		MODULE Ast_icmp
		pea        32
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_isEmpty
		MODULE Ast_isEmpty
		pea        36
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_add
		MODULE Ast_add
		pea        40
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_adl
		MODULE Ast_adl
		pea        44
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_adr
		MODULE Ast_adr
		pea        48
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_adc
		MODULE Ast_adc
		pea        52
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_filter
		MODULE Ast_filter
		pea        56
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_count
		MODULE Ast_count
		pea        60
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_fcmp
		MODULE Ast_fcmp
		pea        64
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_ncmp
		MODULE Ast_ncmp
		pea        68
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_incmp
		MODULE Ast_incmp
		pea        72
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ast_istr
		MODULE Ast_istr
		pea        76
		move.l     funcAst(pc),-(a7)
		bra        indirect
		ENDMOD


/* tedinfos */
	.globl Ate_create
		MODULE Ate_create
		pea        0
		move.l     funcAte(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ate_delete
		MODULE Ate_delete
		pea        4
		move.l     funcAte(pc),-(a7)
		bra        indirect
		ENDMOD


/* user objects */
	.globl Auo_ftext
		MODULE Auo_ftext
		pea        0
		move.l     funcAuo(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Auo_string
		MODULE Auo_string
		pea        4
		move.l     funcAuo(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Auo_cycle
		MODULE Auo_cycle
		pea        8
		move.l     funcAuo(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Auo_picture
		MODULE Auo_picture
		pea        12
		move.l     funcAuo(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Auo_boxed
		MODULE Auo_boxed
		pea        16
		move.l     funcAuo(pc),-(a7)
		bra        indirect
		ENDMOD

		.IFNE WITH_EXTENSIONS
	.globl Auo_wislider
		MODULE Auo_wislider
		pea        20
		move.l     funcAuo(pc),-(a7)
		bra        indirect
		ENDMOD
		.ENDC


/* user services */
	.globl Aus_create
		MODULE Aus_create
		pea        0
		move.l     funcAus(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aus_delete
		MODULE Aus_delete
		pea        4
		move.l     funcAus(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aus_boxed
		MODULE Aus_boxed
		pea        8
		move.l     funcAus(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aus_cycle
		MODULE Aus_cycle
		pea        12
		move.l     funcAus(pc),-(a7)
		bra        indirect
		ENDMOD

		.IFNE WITH_EXTENSIONS
	.globl Aus_help
		MODULE Aus_help
		pea        16
		move.l     funcAus(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Aus_slider
		MODULE Aus_slider
		pea        20
		move.l     funcAus(pc),-(a7)
		bra        indirect
		ENDMOD

		.ENDC

/* windows */
	.globl Awi_wid
		MODULE Awi_wid
		pea        0
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_root
		MODULE Awi_root
		pea        4
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_list
		MODULE Awi_list
		pea        8
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_sendall
		MODULE Awi_sendall
		pea        12
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_down
		MODULE Awi_down
		pea        16
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_up
		MODULE Awi_up
		pea        20
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_show
		MODULE Awi_show
		pea        24
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_init
		MODULE Awi_init
		pea        28
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_create
		MODULE Awi_create
		pea        32
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_open
		MODULE Awi_open
		pea        36
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_closed
		MODULE Awi_closed
		pea        40
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_delete
		MODULE Awi_delete
		pea        44
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_topped
		MODULE Awi_topped
		pea        48
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_fulled
		MODULE Awi_fulled
		pea        52
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_sized
		MODULE Awi_sized
		pea        56
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_moved
		MODULE Awi_moved
		pea        60
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_diaend
		MODULE Awi_diaend
		pea        64
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_diastart
		MODULE Awi_diastart
		pea        68
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_keys
		MODULE Awi_keys
		pea        72
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_obview
		MODULE Awi_obview
		pea        76
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_service
		MODULE Awi_service
		pea        80
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_scroll
		MODULE Awi_scroll
		pea        84
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_obchange
		MODULE Awi_obchange
		pea        88
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_obredraw
		MODULE Awi_obredraw
		pea        92
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_redraw
		MODULE Awi_redraw
		pea        96
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_arrowed
		MODULE Awi_arrowed
		pea        100
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_hslid
		MODULE Awi_hslid
		pea        104
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_vslid
		MODULE Awi_vslid
		pea        108
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_iconify
		MODULE Awi_iconify
		pea        112
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_uniconify
		MODULE Awi_uniconify
		pea        116
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_gemscript
		MODULE Awi_gemscript
		pea        120
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_modal
		MODULE Awi_modal
		pea        124
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_dialog
		MODULE Awi_dialog
		pea        128
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_alert
		MODULE Awi_alert
		pea        132
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_selfcreate
		MODULE Awi_selfcreate
		pea        136
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_nokey
		MODULE Awi_nokey
		pea        140
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_update
		MODULE Awi_update
		pea        144
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_uoself
		MODULE Awi_uoself
		pea        148
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_doform
		MODULE Awi_doform
		pea        152
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_observice
		MODULE Awi_observice
		pea        156
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_ontop
		MODULE Awi_ontop
		pea        160
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_layout
		MODULE Awi_layout
		pea        164
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_obvisible
		MODULE Awi_obvisible
		pea        168
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

		.IFNE WITH_EXTENSIONS
	.globl Awi_saved
		MODULE Awi_saved
		pea        172
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Awi_sendkey
		MODULE Awi_sendkey
		pea        176
		move.l     funcAwi(pc),-(a7)
		bra        indirect
		ENDMOD

		.ENDC

/* drawing callbacks */
	.globl A_dialog
		MODULE A_dialog
		pea        0
		move.l     funcA(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl A_checkbox
		MODULE A_checkbox
		pea        4
		move.l     funcA(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl A_radiobutton
		MODULE A_radiobutton
		pea        8
		move.l     funcA(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl A_innerframe
		MODULE A_innerframe
		pea        12
		move.l     funcA(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl A_pattern
		MODULE A_pattern
		pea        16
		move.l     funcA(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl A_arrows
		MODULE A_arrows
		pea        20
		move.l     funcA(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl A_select
		MODULE A_select
		pea        24
		move.l     funcA(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl A_ftext
		MODULE A_ftext
		pea        28
		move.l     funcA(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl A_title
		MODULE A_title
		pea        32
		move.l     funcA(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl A_3Dbutton
		MODULE A_3Dbutton
		pea        36
		move.l     funcA(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl A_cycle
		MODULE A_cycle
		pea        40
		move.l     funcA(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl A_picture
		MODULE A_picture
		pea        44
		move.l     funcA(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl A_dialog2
		MODULE A_dialog2
		pea        48
		move.l     funcA(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl A_boxed
		MODULE A_boxed
		pea        52
		move.l     funcA(pc),-(a7)
		bra        indirect
		ENDMOD

		.IFNE WITH_EXTENSIONS
	.globl A_slider
		MODULE A_slider
		pea        56
		move.l     funcA(pc),-(a7)
		bra        indirect
		ENDMOD
		.ENDC

/* misc */
	.globl Ax_malloc
		MODULE Ax_malloc
		pea        0
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ax_free
		MODULE Ax_free
		pea        4
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ax_ifree
		MODULE Ax_ifree
		pea        8
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ax_glmalloc
		MODULE Ax_glmalloc
		pea        12
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ax_glfree
		MODULE Ax_glfree
		pea        16
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD


/*
 * ACSmoduleterm is different, because we need
 * to pass the BASEPAGE pointer to Ax_mterm()
 */
	.globl ACSmoduleterm
		MODULE ACSmoduleterm
		movea.l    #compiler-256,a0
		pea        20
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl alert_str
		MODULE alert_str
		pea        24
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl intersect
		MODULE intersect
		pea        28
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl xywh2array
		MODULE xywh2array
		pea        32
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl array2xywh
		MODULE array2xywh
		pea        36
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl dotted_xline
		MODULE dotted_xline
		pea        40
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl dotted_yline
		MODULE dotted_yline
		pea        44
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl nkc_tos2n
		MODULE nkc_tos2n
		pea        48
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl nkc_n2tos
		MODULE nkc_n2tos
		pea        52
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl nkc_gem2n
		MODULE nkc_gem2n
		pea        56
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl nkc_n2gem
		MODULE nkc_n2gem
		pea        60
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl nkc_gemks2n
		MODULE nkc_gemks2n
		pea        64
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl nkc_n2gemks
		MODULE nkc_n2gemks
		pea        68
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl nkc_n2kstate
		MODULE nkc_n2kstate
		pea        72
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl nkc_kstate
		MODULE nkc_kstate
		pea        76
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl nkc_cmp
		MODULE nkc_cmp
		pea        80
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl nkc_tolower
		MODULE nkc_tolower
		pea        84
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl nkc_toupper
		MODULE nkc_toupper
		pea        88
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl appl_xgetinfo
		MODULE appl_xgetinfo
		pea        92
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ax_setRecycleSize
		MODULE Ax_setRecycleSize
		pea        96
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ax_getRecycleStat
		MODULE Ax_getRecycleStat
		pea        100
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Ax_recycle
		MODULE Ax_recycle
		pea        104
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Avdi_getRGB
		MODULE Avdi_getRGB
		pea        108
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

		.IFNE WITH_EXTENSIONS
	.globl Ax_memCheck
		MODULE Ax_memCheck
		pea        112
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Adate_getMonth
		MODULE Adate_getMonth
		pea        116
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Adate_ymd2dow
		MODULE Adate_ymd2dow
		pea        120
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl get_desktop
		MODULE get_desktop
		pea        124
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl get_pur_desk
		MODULE get_pur_desk
		pea        128
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl get_module_window
		MODULE get_module_window
		pea        132
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl get_editor
		MODULE get_editor
		pea        136
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl get_list
		MODULE get_list
		pea        140
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl get_protocol
		MODULE get_protocol
		pea        144
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl get_plotter
		MODULE get_plotter
		pea        148
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wprintf
		MODULE wprintf
		pea        152
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wvprintf
		MODULE wvprintf
		pea        156
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wputs
		MODULE wputs
		pea        160
		move.l     funcSonst(pc),-(a7)
		bra        indirect
		ENDMOD

		.ENDC

/* VDI */
	.globl vdi
		MODULE vdi
		pea        0
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vdi_
		MODULE vdi_
		pea        4
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_opnwk
		MODULE v_opnwk
		pea        8
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_clswk
		MODULE v_clswk
		pea        12
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_opnvwk
		MODULE v_opnvwk
		pea        16
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_clsvwk
		MODULE v_clsvwk
		pea        20
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_clrwk
		MODULE v_clrwk
		pea        24
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_updwk
		MODULE v_updwk
		pea        28
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_opnbm
		MODULE v_opnbm
		pea        32
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_clsbm
		MODULE v_clsbm
		pea        36
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_load_fonts
		MODULE vst_load_fonts
		pea        40
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_unload_fonts
		MODULE vst_unload_fonts
		pea        44
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vs_clip
		MODULE vs_clip
		pea        48
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_pline
		MODULE v_pline
		pea        52
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_pmarker
		MODULE v_pmarker
		pea        56
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_gtext
		MODULE v_gtext
		pea        60
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_fillarea
		MODULE v_fillarea
		pea        64
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_cellarray
		MODULE v_cellarray
		pea        68
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_contourfill
		MODULE v_contourfill
		pea        72
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_bar
		MODULE v_bar
		pea        76
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_arc
		MODULE v_arc
		pea        80
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_pieslice
		MODULE v_pieslice
		pea        84
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_circle
		MODULE v_circle
		pea        88
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_ellipse
		MODULE v_ellipse
		pea        92
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_ellarc
		MODULE v_ellarc
		pea        96
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_ellpie
		MODULE v_ellpie
		pea        100
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_justified
		MODULE v_justified
		pea        104
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vr_recfl
		MODULE vr_recfl
		pea        108
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_rfbox
		MODULE v_rfbox
		pea        112
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_rbox
		MODULE v_rbox
		pea        116
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_gdos
		MODULE vq_gdos
		pea        120
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vswr_mode
		MODULE vswr_mode
		pea        124
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsl_type
		MODULE vsl_type
		pea        128
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsl_udsty
		MODULE vsl_udsty
		pea        132
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsl_width
		MODULE vsl_width
		pea        136
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsl_color
		MODULE vsl_color
		pea        140
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsl_ends
		MODULE vsl_ends
		pea        144
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsm_type
		MODULE vsm_type
		pea        148
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsm_height
		MODULE vsm_height
		pea        152
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsm_color
		MODULE vsm_color
		pea        156
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_height
		MODULE vst_height
		pea        160
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_point
		MODULE vst_point
		pea        164
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_rotation
		MODULE vst_rotation
		pea        168
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_font
		MODULE vst_font
		pea        172
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_color
		MODULE vst_color
		pea        176
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_effects
		MODULE vst_effects
		pea        180
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_alignment
		MODULE vst_alignment
		pea        184
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsf_interior
		MODULE vsf_interior
		pea        188
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsf_style
		MODULE vsf_style
		pea        192
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsf_color
		MODULE vsf_color
		pea        196
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsf_perimeter
		MODULE vsf_perimeter
		pea        200
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsf_udpat
		MODULE vsf_udpat
		pea        204
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsf_updat
		MODULE vsf_updat
		pea        208
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vs_color
		MODULE vs_color
		pea        212
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vr_trnfm
		MODULE vr_trnfm
		pea        216
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vro_cpyfm
		MODULE vro_cpyfm
		pea        220
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vrt_cpyfm
		MODULE vrt_cpyfm
		pea        224
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_get_pixel
		MODULE v_get_pixel
		pea        228
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsin_mode
		MODULE vsin_mode
		pea        232
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vrq_locator
		MODULE vrq_locator
		pea        236
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsm_locator
		MODULE vsm_locator
		pea        240
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vrq_valuator
		MODULE vrq_valuator
		pea        244
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsm_valuator
		MODULE vsm_valuator
		pea        248
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vrq_choice
		MODULE vrq_choice
		pea        252
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsm_choice
		MODULE vsm_choice
		pea        256
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vrq_string
		MODULE vrq_string
		pea        260
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsm_string
		MODULE vsm_string
		pea        264
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vex_timv
		MODULE vex_timv
		pea        268
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_show_c
		MODULE v_show_c
		pea        272
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_hide_c
		MODULE v_hide_c
		pea        276
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_mouse
		MODULE vq_mouse
		pea        280
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vex_butv
		MODULE vex_butv
		pea        284
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vex_motv
		MODULE vex_motv
		pea        288
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vex_curv
		MODULE vex_curv
		pea        292
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_key_s
		MODULE vq_key_s
		pea        296
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_extnd
		MODULE vq_extnd
		pea        300
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vql_attributes
		MODULE vql_attributes
		pea        304
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqm_attributes
		MODULE vqm_attributes
		pea        308
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqf_attributes
		MODULE vqf_attributes
		pea        312
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_attributes
		MODULE vqt_attributes
		pea        316
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_extent
		MODULE vqt_extent
		pea        320
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_width
		MODULE vqt_width
		pea        324
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_name
		MODULE vqt_name
		pea        328
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqin_mode
		MODULE vqin_mode
		pea        332
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_fontinfo
		MODULE vqt_fontinfo
		pea        336
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_scrninfo
		MODULE vq_scrninfo
		pea        340
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_color
		MODULE vq_color
		pea        344
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_cellarray
		MODULE vq_cellarray
		pea        348
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_chcells
		MODULE vq_chcells
		pea        352
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_exit_cur
		MODULE v_exit_cur
		pea        356
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_enter_cur
		MODULE v_enter_cur
		pea        360
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_curup
		MODULE v_curup
		pea        364
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_curdown
		MODULE v_curdown
		pea        368
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_curright
		MODULE v_curright
		pea        372
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_curleft
		MODULE v_curleft
		pea        376
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_curhome
		MODULE v_curhome
		pea        380
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_eeos
		MODULE v_eeos
		pea        384
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_eeol
		MODULE v_eeol
		pea        388
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_curaddress
		MODULE v_curaddress
		pea        392
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_curtext
		MODULE v_curtext
		pea        396
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_rvon
		MODULE v_rvon
		pea        400
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_rvoff
		MODULE v_rvoff
		pea        404
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_curaddress
		MODULE vq_curaddress
		pea        408
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_tabstatus
		MODULE vq_tabstatus
		pea        412
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_hardcopy
		MODULE v_hardcopy
		pea        416
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_dspcur
		MODULE v_dspcur
		pea        420
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_rmcur
		MODULE v_rmcur
		pea        424
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_form_adv
		MODULE v_form_adv
		pea        428
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_clear_disp_list
		MODULE v_clear_disp_list
		pea        432
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_scan
		MODULE vq_scan
		pea        436
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_alpha_text
		MODULE v_alpha_text
		pea        440
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vs_palette
		MODULE vs_palette
		pea        444
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_sound
		MODULE v_sound
		pea        448
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vs_mute
		MODULE vs_mute
		pea        452
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vt_resolution
		MODULE vt_resolution
		pea        456
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vt_axis
		MODULE vt_axis
		pea        460
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vt_origin
		MODULE vt_origin
		pea        464
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_tdimensions
		MODULE vq_tdimensions
		pea        468
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vt_alignment
		MODULE vt_alignment
		pea        472
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsp_film
		MODULE vsp_film
		pea        476
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqp_filmname
		MODULE vqp_filmname
		pea        480
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsc_expose
		MODULE vsc_expose
		pea        484
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_meta_extents
		MODULE v_meta_extents
		pea        488
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_write_meta
		MODULE v_write_meta
		pea        492
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vm_pagesize
		MODULE vm_pagesize
		pea        496
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vm_coords
		MODULE vm_coords
		pea        500
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vm_filename
		MODULE vm_filename
		pea        504
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_offset
		MODULE v_offset
		pea        508
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_fontinit
		MODULE v_fontinit
		pea        512
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_escape2000
		MODULE v_escape2000
		pea        516
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_output_window
		MODULE v_output_window
		pea        520
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_bit_image
		MODULE v_bit_image
		pea        524
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fix31ToPixel
		MODULE fix31ToPixel
		pea        528
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_opnprn
		MODULE v_opnprn
		pea        532
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_opnmeta
		MODULE v_opnmeta
		pea        536
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_devinfo
		MODULE vq_devinfo
		pea        540
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_ext_devinfo
		MODULE vq_ext_devinfo
		pea        544
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vs_calibrate
		MODULE vs_calibrate
		pea        548
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_calibrate
		MODULE vq_calibrate
		pea        552
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_bez
		MODULE v_bez
		pea        556
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_bez_on
		MODULE v_bez_on
		pea        560
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_bez_off
		MODULE v_bez_off
		pea        564
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_bez_qual
		MODULE v_bez_qual
		pea        568
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_bez_fill
		MODULE v_bez_fill
		pea        572
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_ext_name
		MODULE vqt_ext_name
		pea        576
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_char_index
		MODULE vqt_char_index
		pea        580
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_isCharAvailable
		MODULE vqt_isCharAvailable
		pea        584
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_xfntinfo
		MODULE vqt_xfntinfo
		pea        588
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_name
		MODULE vst_name
		pea        592
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_name_and_id
		MODULE vqt_name_and_id
		pea        596
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_fontheader
		MODULE vqt_fontheader
		pea        600
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_trackkern
		MODULE vqt_trackkern
		pea        604
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_pairkern
		MODULE vqt_pairkern
		pea        608
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_charmap
		MODULE vst_charmap
		pea        612
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_kern
		MODULE vst_kern
		pea        616
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_kern_offset
		MODULE vst_kern_offset
		pea        620
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_getbitmap_info
		MODULE v_getbitmap_info
		pea        624
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_f_extent
		MODULE vqt_f_extent
		pea        628
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_real_extent
		MODULE vqt_real_extent
		pea        632
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_ftext
		MODULE v_ftext
		pea        636
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_ftext_offset
		MODULE v_ftext_offset
		pea        640
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_getoutline
		MODULE v_getoutline
		pea        644
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_arbpt32
		MODULE vst_arbpt32
		pea        648
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_advance32
		MODULE vqt_advance32
		pea        652
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_setsize32
		MODULE vst_setsize32
		pea        656
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_skew
		MODULE vst_skew
		pea        660
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_orient
		MODULE v_orient
		pea        664
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_trays
		MODULE v_trays
		pea        668
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_tray_names
		MODULE vq_tray_names
		pea        672
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_page_size
		MODULE v_page_size
		pea        676
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_page_name
		MODULE vq_page_name
		pea        680
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_fg_color
		MODULE vst_fg_color
		pea        684
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsf_fg_color
		MODULE vsf_fg_color
		pea        688
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsl_fg_color
		MODULE vsl_fg_color
		pea        692
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsm_fg_color
		MODULE vsm_fg_color
		pea        696
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsr_fg_color
		MODULE vsr_fg_color
		pea        700
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_bg_color
		MODULE vst_bg_color
		pea        704
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsf_bg_color
		MODULE vsf_bg_color
		pea        708
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsl_bg_color
		MODULE vsl_bg_color
		pea        712
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsm_bg_color
		MODULE vsm_bg_color
		pea        716
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsr_bg_color
		MODULE vsr_bg_color
		pea        720
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_fg_color
		MODULE vqt_fg_color
		pea        724
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqf_fg_color
		MODULE vqf_fg_color
		pea        728
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vql_fg_color
		MODULE vql_fg_color
		pea        732
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqm_fg_color
		MODULE vqm_fg_color
		pea        736
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqr_fg_color
		MODULE vqr_fg_color
		pea        740
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_bg_color
		MODULE vqt_bg_color
		pea        744
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqf_bg_color
		MODULE vqf_bg_color
		pea        748
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vql_bg_color
		MODULE vql_bg_color
		pea        752
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqm_bg_color
		MODULE vqm_bg_color
		pea        756
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqr_bg_color
		MODULE vqr_bg_color
		pea        760
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_color2value
		MODULE v_color2value
		pea        764
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_value2color
		MODULE v_value2color
		pea        768
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_color2nearest
		MODULE v_color2nearest
		pea        772
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_px_format
		MODULE vq_px_format
		pea        776
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vs_ctab
		MODULE vs_ctab
		pea        780
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vs_ctab_entry
		MODULE vs_ctab_entry
		pea        784
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vs_dflt_ctab
		MODULE vs_dflt_ctab
		pea        788
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_ctab
		MODULE vq_ctab
		pea        792
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_ctab_entry
		MODULE vq_ctab_entry
		pea        796
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_ctab_id
		MODULE vq_ctab_id
		pea        800
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_ctab_idx2vdi
		MODULE v_ctab_idx2vdi
		pea        804
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_ctab_vdi2idx
		MODULE v_ctab_vdi2idx
		pea        808
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_ctab_idx2value
		MODULE v_ctab_idx2value
		pea        812
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_get_ctab_id
		MODULE v_get_ctab_id
		pea        816
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_dflt_ctab
		MODULE vq_dflt_ctab
		pea        820
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_create_itab
		MODULE v_create_itab
		pea        824
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_delete_itab
		MODULE v_delete_itab
		pea        828
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vr_transfer_bits
		MODULE vr_transfer_bits
		pea        832
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vs_hilite_color
		MODULE vs_hilite_color
		pea        836
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vs_min_color
		MODULE vs_min_color
		pea        840
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vs_max_color
		MODULE vs_max_color
		pea        844
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vs_weight_color
		MODULE vs_weight_color
		pea        848
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_hilite_color
		MODULE vq_hilite_color
		pea        852
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_min_color
		MODULE vq_min_color
		pea        856
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_max_color
		MODULE vq_max_color
		pea        860
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_weight_color
		MODULE vq_weight_color
		pea        864
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vs_document_info
		MODULE vs_document_info
		pea        868
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_prn_scaling
		MODULE vq_prn_scaling
		pea        872
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_open_bm
		MODULE v_open_bm
		pea        876
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_resize_bm
		MODULE v_resize_bm
		pea        880
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_get_outline
		MODULE v_get_outline
		pea        884
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_track_offset
		MODULE vst_track_offset
		pea        888
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_arbpt
		MODULE vst_arbpt
		pea        892
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_advance
		MODULE vqt_advance
		pea        896
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_setsize
		MODULE vst_setsize
		pea        900
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vq_vgdos
		MODULE vq_vgdos
		pea        904
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_width
		MODULE vst_width
		pea        908
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_scratch
		MODULE vst_scratch
		pea        912
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vst_error
		MODULE vst_error
		pea        916
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_savecache
		MODULE v_savecache
		pea        920
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_loadcache
		MODULE v_loadcache
		pea        924
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_flushcache
		MODULE v_flushcache
		pea        928
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_cachesize
		MODULE vqt_cachesize
		pea        932
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_get_table
		MODULE vqt_get_table
		pea        936
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vs_curaddress
		MODULE vs_curaddress
		pea        940
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vsf_perimeter3
		MODULE vsf_perimeter3
		pea        944
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_justified
		MODULE vqt_justified
		pea        948
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_opnprnwrk
		MODULE v_opnprnwrk
		pea        952
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_opnmatrixprn
		MODULE v_opnmatrixprn
		pea        956
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_set_app_buff
		MODULE v_set_app_buff
		pea        960
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl vqt_devinfo
		MODULE vqt_devinfo
		pea        964
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_create_ctab
		MODULE v_create_ctab
		pea        968
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_delete_ctab
		MODULE v_delete_ctab
		pea        972
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl v_setrgb
		MODULE v_setrgb
		pea        976
		move.l     funcVdi(pc),-(a7)
		bra        indirect
		ENDMOD


/* AES */
	.globl aes
		MODULE aes
		pea        0
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl appl_init
		MODULE appl_init
		pea        4
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl appl_read
		MODULE appl_read
		pea        8
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl appl_write
		MODULE appl_write
		pea        12
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl appl_find
		MODULE appl_find
		pea        16
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl appl_search
		MODULE appl_search
		pea        20
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl appl_tplay
		MODULE appl_tplay
		pea        24
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl appl_trecord
		MODULE appl_trecord
		pea        28
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl appl_yield
		MODULE appl_yield
		pea        32
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl appl_exit
		MODULE appl_exit
		pea        36
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl appl_getinfo
		MODULE appl_getinfo
		pea        40
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl appl_control
		MODULE appl_control
		pea        44
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl evnt_keybd
		MODULE evnt_keybd
		pea        48
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl evnt_button
		MODULE evnt_button
		pea        52
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl evnt_mouse
		MODULE evnt_mouse
		pea        56
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl evnt_mesag
		MODULE evnt_mesag
		pea        60
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl evnt_timer
		MODULE evnt_timer
		pea        64
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl evnt_event
		MODULE evnt_event
		pea        68
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl evnt_multi
		MODULE evnt_multi
		pea        72
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl evnt_dclick
		MODULE evnt_dclick
		pea        76
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl menu_bar
		MODULE menu_bar
		pea        80
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl menu_icheck
		MODULE menu_icheck
		pea        84
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl menu_ienable
		MODULE menu_ienable
		pea        88
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl menu_tnormal
		MODULE menu_tnormal
		pea        92
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl menu_text
		MODULE menu_text
		pea        96
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl menu_register
		MODULE menu_register
		pea        100
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl menu_unregister
		MODULE menu_unregister
		pea        104
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl menu_click
		MODULE menu_click
		pea        108
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl menu_attach
		MODULE menu_attach
		pea        112
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl menu_istart
		MODULE menu_istart
		pea        116
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl menu_popup
		MODULE menu_popup
		pea        120
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl menu_settings
		MODULE menu_settings
		pea        124
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl objc_add
		MODULE objc_add
		pea        128
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl objc_delete
		MODULE objc_delete
		pea        132
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl objc_draw
		MODULE objc_draw
		pea        136
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl objc_find
		MODULE objc_find
		pea        140
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl objc_offset
		MODULE objc_offset
		pea        144
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl objc_order
		MODULE objc_order
		pea        148
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl objc_edit
		MODULE objc_edit
		pea        152
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl objc_change
		MODULE objc_change
		pea        156
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl objc_sysvar
		MODULE objc_sysvar
		pea        160
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl form_do
		MODULE form_do
		pea        164
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl form_dial
		MODULE form_dial
		pea        168
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl form_alert
		MODULE form_alert
		pea        172
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl form_error
		MODULE form_error
		pea        176
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl form_center
		MODULE form_center
		pea        180
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl form_keybd
		MODULE form_keybd
		pea        184
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl form_button
		MODULE form_button
		pea        188
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_rubbox
		MODULE graf_rubbox
		pea        192
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_rubberbox
		MODULE graf_rubberbox
		pea        196
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_dragbox
		MODULE graf_dragbox
		pea        200
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_mbox
		MODULE graf_mbox
		pea        204
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_movebox
		MODULE graf_movebox
		pea        208
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_growbox
		MODULE graf_growbox
		pea        212
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_shrinkbox
		MODULE graf_shrinkbox
		pea        216
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_watchbox
		MODULE graf_watchbox
		pea        220
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_slidebox
		MODULE graf_slidebox
		pea        224
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_handle
		MODULE graf_handle
		pea        228
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_mouse
		MODULE graf_mouse
		pea        232
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_mkstate
		MODULE graf_mkstate
		pea        236
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_multirubber
		MODULE graf_multirubber
		pea        240
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl scrp_read
		MODULE scrp_read
		pea        244
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl scrp_write
		MODULE scrp_write
		pea        248
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fsel_input
		MODULE fsel_input
		pea        252
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fsel_exinput
		MODULE fsel_exinput
		pea        256
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fsel_boxinput
		MODULE fsel_boxinput
		pea        260
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fslx_open
		MODULE fslx_open
		pea        264
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fslx_close
		MODULE fslx_close
		pea        268
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fslx_getnxtfile
		MODULE fslx_getnxtfile
		pea        272
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fslx_evnt
		MODULE fslx_evnt
		pea        276
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fslx_do
		MODULE fslx_do
		pea        280
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fslx_set_flags
		MODULE fslx_set_flags
		pea        284
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wind_create
		MODULE wind_create
		pea        288
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wind_open
		MODULE wind_open
		pea        292
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wind_close
		MODULE wind_close
		pea        296
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wind_delete
		MODULE wind_delete
		pea        300
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wind_get
		MODULE wind_get
		pea        304
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wind_getQSB
		MODULE wind_getQSB
		pea        308
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wind_set
		MODULE wind_set
		pea        312
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wind_find
		MODULE wind_find
		pea        316
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wind_update
		MODULE wind_update
		pea        320
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wind_calc
		MODULE wind_calc
		pea        324
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wind_new
		MODULE wind_new
		pea        328
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl rsrc_load
		MODULE rsrc_load
		pea        332
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl rsrc_free
		MODULE rsrc_free
		pea        336
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl rsrc_gaddr
		MODULE rsrc_gaddr
		pea        340
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl rsrc_saddr
		MODULE rsrc_saddr
		pea        344
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl rsrc_obfix
		MODULE rsrc_obfix
		pea        348
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl rsrc_rcfix
		MODULE rsrc_rcfix
		pea        352
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl shel_read
		MODULE shel_read
		pea        356
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl shel_write
		MODULE shel_write
		pea        360
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl shel_get
		MODULE shel_get
		pea        364
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl shel_put
		MODULE shel_put
		pea        368
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl shel_find
		MODULE shel_find
		pea        372
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl shel_envrn
		MODULE shel_envrn
		pea        376
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl shel_help
		MODULE shel_help
		pea        380
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fnts_add
		MODULE fnts_add
		pea        384
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fnts_close
		MODULE fnts_close
		pea        388
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fnts_create
		MODULE fnts_create
		pea        392
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fnts_delete
		MODULE fnts_delete
		pea        396
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fnts_do
		MODULE fnts_do
		pea        400
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fnts_evnt
		MODULE fnts_evnt
		pea        404
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fnts_get_info
		MODULE fnts_get_info
		pea        408
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fnts_get_name
		MODULE fnts_get_name
		pea        412
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fnts_get_no_styles
		MODULE fnts_get_no_styles
		pea        416
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fnts_get_style
		MODULE fnts_get_style
		pea        420
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fnts_open
		MODULE fnts_open
		pea        424
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fnts_remove
		MODULE fnts_remove
		pea        428
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl fnts_update
		MODULE fnts_update
		pea        432
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_ascroll_to
		MODULE lbox_ascroll_to
		pea        436
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_scroll_to
		MODULE lbox_scroll_to
		pea        440
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_bscroll_to
		MODULE lbox_bscroll_to
		pea        444
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_cnt_items
		MODULE lbox_cnt_items
		pea        448
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_create
		MODULE lbox_create
		pea        452
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_delete
		MODULE lbox_delete
		pea        456
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_do
		MODULE lbox_do
		pea        460
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_free_items
		MODULE lbox_free_items
		pea        464
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_free_list
		MODULE lbox_free_list
		pea        468
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_get_afirst
		MODULE lbox_get_afirst
		pea        472
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_get_first
		MODULE lbox_get_first
		pea        476
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_get_avis
		MODULE lbox_get_avis
		pea        480
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_get_visible
		MODULE lbox_get_visible
		pea        484
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_get_bentries
		MODULE lbox_get_bentries
		pea        488
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_get_bfirst
		MODULE lbox_get_bfirst
		pea        492
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_get_idx
		MODULE lbox_get_idx
		pea        496
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_get_item
		MODULE lbox_get_item
		pea        500
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_get_items
		MODULE lbox_get_items
		pea        504
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_get_slct_idx
		MODULE lbox_get_slct_idx
		pea        508
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_get_slct_item
		MODULE lbox_get_slct_item
		pea        512
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_get_tree
		MODULE lbox_get_tree
		pea        516
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_get_udata
		MODULE lbox_get_udata
		pea        520
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_set_asldr
		MODULE lbox_set_asldr
		pea        524
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_set_slider
		MODULE lbox_set_slider
		pea        528
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_set_bentries
		MODULE lbox_set_bentries
		pea        532
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_set_bsldr
		MODULE lbox_set_bsldr
		pea        536
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_set_items
		MODULE lbox_set_items
		pea        540
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl lbox_update
		MODULE lbox_update
		pea        544
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_add_printers
		MODULE pdlg_add_printers
		pea        548
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_add_sub_dialogs
		MODULE pdlg_add_sub_dialogs
		pea        552
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_close
		MODULE pdlg_close
		pea        556
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_create
		MODULE pdlg_create
		pea        560
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_delete
		MODULE pdlg_delete
		pea        564
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_dflt_settings
		MODULE pdlg_dflt_settings
		pea        568
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_do
		MODULE pdlg_do
		pea        572
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_evnt
		MODULE pdlg_evnt
		pea        576
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_free_settings
		MODULE pdlg_free_settings
		pea        580
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_get_setsize
		MODULE pdlg_get_setsize
		pea        584
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_new_settings
		MODULE pdlg_new_settings
		pea        588
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_open
		MODULE pdlg_open
		pea        592
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_remove_printers
		MODULE pdlg_remove_printers
		pea        596
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_remove_sub_dialogs
		MODULE pdlg_remove_sub_dialogs
		pea        600
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_update
		MODULE pdlg_update
		pea        604
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_use_settings
		MODULE pdlg_use_settings
		pea        608
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl pdlg_validate_settings
		MODULE pdlg_validate_settings
		pea        612
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_create
		MODULE edit_create
		pea        616
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_set_buf
		MODULE edit_set_buf
		pea        620
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_open
		MODULE edit_open
		pea        624
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_close
		MODULE edit_close
		pea        628
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_delete
		MODULE edit_delete
		pea        632
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_cursor
		MODULE edit_cursor
		pea        636
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_evnt
		MODULE edit_evnt
		pea        640
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_get_buf
		MODULE edit_get_buf
		pea        644
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_get_format
		MODULE edit_get_format
		pea        648
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_get_colour
		MODULE edit_get_colour
		pea        652
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_get_color
		MODULE edit_get_color
		pea        656
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_get_font
		MODULE edit_get_font
		pea        660
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_get_cursor
		MODULE edit_get_cursor
		pea        664
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_get_dirty
		MODULE edit_get_dirty
		pea        668
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_get_sel
		MODULE edit_get_sel
		pea        672
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_get_scrollinfo
		MODULE edit_get_scrollinfo
		pea        676
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_set_format
		MODULE edit_set_format
		pea        680
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_set_colour
		MODULE edit_set_colour
		pea        684
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_set_color
		MODULE edit_set_color
		pea        688
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_set_font
		MODULE edit_set_font
		pea        692
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_set_cursor
		MODULE edit_set_cursor
		pea        696
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_resized
		MODULE edit_resized
		pea        700
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_set_dirty
		MODULE edit_set_dirty
		pea        704
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl edit_scroll
		MODULE edit_scroll
		pea        708
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl EvntMulti
		MODULE EvntMulti
		pea        712
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl form_wbutton
		MODULE form_wbutton
		pea        716
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl form_xdial
		MODULE form_xdial
		pea        720
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl form_xdo
		MODULE form_xdo
		pea        724
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl form_xerr
		MODULE form_xerr
		pea        728
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl _crystal
		MODULE _crystal
		pea        732
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_wwatchbox
		MODULE graf_wwatchbox
		pea        736
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_xhandle
		MODULE graf_xhandle
		pea        740
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wdlg_create
		MODULE wdlg_create
		pea        744
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wdlg_open
		MODULE wdlg_open
		pea        748
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wdlg_close
		MODULE wdlg_close
		pea        752
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wdlg_delete
		MODULE wdlg_delete
		pea        756
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wdlg_get_tree
		MODULE wdlg_get_tree
		pea        760
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wdlg_get_edit
		MODULE wdlg_get_edit
		pea        764
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wdlg_get_udata
		MODULE wdlg_get_udata
		pea        768
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wdlg_get_handle
		MODULE wdlg_get_handle
		pea        772
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wdlg_set_edit
		MODULE wdlg_set_edit
		pea        776
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wdlg_set_tree
		MODULE wdlg_set_tree
		pea        780
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wdlg_set_size
		MODULE wdlg_set_size
		pea        784
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wdlg_set_iconify
		MODULE wdlg_set_iconify
		pea        788
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wdlg_set_uniconify
		MODULE wdlg_set_uniconify
		pea        792
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wdlg_evnt
		MODULE wdlg_evnt
		pea        796
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wdlg_redraw
		MODULE wdlg_redraw
		pea        800
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl wind_draw
		MODULE wind_draw
		pea        804
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl scrp_clear
		MODULE scrp_clear
		pea        808
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl objc_xedit
		MODULE objc_xedit
		pea        812
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl graf_rubbbox
		MODULE graf_rubbbox
		pea        816
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD


/* keytab */
	.globl Akt_getKeyTab
		MODULE Akt_getKeyTab
		pea        0
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getRelease
		MODULE Akt_getRelease
		pea        4
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getEuro
		MODULE Akt_getEuro
		pea        8
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getExpMaxNr
		MODULE Akt_getExpMaxNr
		pea        12
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getImpMaxNr
		MODULE Akt_getImpMaxNr
		pea        16
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getExpNameFromNr
		MODULE Akt_getExpNameFromNr
		pea        20
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getImpNameFromNr
		MODULE Akt_getImpNameFromNr
		pea        24
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getExpShortNameFromNr
		MODULE Akt_getExpShortNameFromNr
		pea        28
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getImpShortNameFromNr
		MODULE Akt_getImpShortNameFromNr
		pea        32
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getExpNrFromId
		MODULE Akt_getExpNrFromId
		pea        36
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getImpNrFromId
		MODULE Akt_getImpNrFromId
		pea        40
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getExpIdFromNr
		MODULE Akt_getExpIdFromNr
		pea        44
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getImpIdFromNr
		MODULE Akt_getImpIdFromNr
		pea        48
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getExpNrFromName
		MODULE Akt_getExpNrFromName
		pea        52
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getImpNrFromName
		MODULE Akt_getImpNrFromName
		pea        56
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_CharAtari2X
		MODULE Akt_CharAtari2X
		pea        60
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_CharX2Atari
		MODULE Akt_CharX2Atari
		pea        64
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_BlockAtari2X
		MODULE Akt_BlockAtari2X
		pea        68
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_BlockX2Atari
		MODULE Akt_BlockX2Atari
		pea        72
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_StringAtari2X
		MODULE Akt_StringAtari2X
		pea        76
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_StringX2Atari
		MODULE Akt_StringX2Atari
		pea        80
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_CharX2Unicode
		MODULE Akt_CharX2Unicode
		pea        84
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_CharUnicode2X
		MODULE Akt_CharUnicode2X
		pea        88
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_BlockX2Unicode
		MODULE Akt_BlockX2Unicode
		pea        92
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_BlockUnicode2X
		MODULE Akt_BlockUnicode2X
		pea        96
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_StringX2Unicode
		MODULE Akt_StringX2Unicode
		pea        100
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_popExpName
		MODULE Akt_popExpName
		pea        104
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_popImpName
		MODULE Akt_popImpName
		pea        108
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_chooseExpNr
		MODULE Akt_chooseExpNr
		pea        112
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_chooseImpNr
		MODULE Akt_chooseImpNr
		pea        116
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getExpMinNr
		MODULE Akt_getExpMinNr
		pea        120
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getImpMinNr
		MODULE Akt_getImpMinNr
		pea        124
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_BlockXUtf2Unicode
		MODULE Akt_BlockXUtf2Unicode
		pea        128
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_BlockUnicode2XUtf
		MODULE Akt_BlockUnicode2XUtf
		pea        132
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_StringXUtf2Unicode
		MODULE Akt_StringXUtf2Unicode
		pea        136
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_BlockXUtf2U2XUtf
		MODULE Akt_BlockXUtf2U2XUtf
		pea        140
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_BlockXUtf2XUtf
		MODULE Akt_BlockXUtf2XUtf
		pea        144
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_StringXUtf2U2XUtf
		MODULE Akt_StringXUtf2U2XUtf
		pea        148
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_StringXUtf2XUtf
		MODULE Akt_StringXUtf2XUtf
		pea        152
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

		.IFNE WITH_EXTENSIONS
		.globl Akt_getInfoShort
		MODULE Akt_getInfoShort
		pea        156
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_getInfoString
		MODULE Akt_getInfoString
		pea        160
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_CharXUtf2Unicode
		MODULE Akt_CharXUtf2Unicode
		pea        164
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl Akt_CharUnicode2XUtf
		MODULE Akt_CharUnicode2XUtf
		pea        168
		move.l     funcKeytab(pc),-(a7)
		bra        indirect
		ENDMOD

		.ENDC

/* Multi-threading AES */
	.globl mt_appl_init
		MODULE mt_appl_init
		pea        0
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_appl_read
		MODULE mt_appl_read
		pea        4
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_appl_write
		MODULE mt_appl_write
		pea        8
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_appl_find
		MODULE mt_appl_find
		pea        12
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_appl_search
		MODULE mt_appl_search
		pea        16
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_appl_tplay
		MODULE mt_appl_tplay
		pea        20
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_appl_trecord
		MODULE mt_appl_trecord
		pea        24
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_appl_yield
		MODULE mt_appl_yield
		pea        28
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_appl_exit
		MODULE mt_appl_exit
		pea        32
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_appl_getinfo
		MODULE mt_appl_getinfo
		pea        36
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_appl_control
		MODULE mt_appl_control
		pea        40
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_evnt_keybd
		MODULE mt_evnt_keybd
		pea        44
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_evnt_button
		MODULE mt_evnt_button
		pea        48
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_evnt_mouse
		MODULE mt_evnt_mouse
		pea        52
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_evnt_mesag
		MODULE mt_evnt_mesag
		pea        56
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_evnt_timer
		MODULE mt_evnt_timer
		pea        60
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_evnt_event
		MODULE mt_evnt_event
		pea        64
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_evnt_multi
		MODULE mt_evnt_multi
		pea        68
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_evnt_dclick
		MODULE mt_evnt_dclick
		pea        72
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_menu_bar
		MODULE mt_menu_bar
		pea        76
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_menu_icheck
		MODULE mt_menu_icheck
		pea        80
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_menu_ienable
		MODULE mt_menu_ienable
		pea        84
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_menu_tnormal
		MODULE mt_menu_tnormal
		pea        88
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_menu_text
		MODULE mt_menu_text
		pea        92
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_menu_register
		MODULE mt_menu_register
		pea        96
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_menu_unregister
		MODULE mt_menu_unregister
		pea        100
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_menu_click
		MODULE mt_menu_click
		pea        104
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_menu_attach
		MODULE mt_menu_attach
		pea        108
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_menu_istart
		MODULE mt_menu_istart
		pea        112
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_menu_popup
		MODULE mt_menu_popup
		pea        116
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_menu_settings
		MODULE mt_menu_settings
		pea        120
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_objc_add
		MODULE mt_objc_add
		pea        124
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_objc_delete
		MODULE mt_objc_delete
		pea        128
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_objc_draw
		MODULE mt_objc_draw
		pea        132
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_objc_find
		MODULE mt_objc_find
		pea        136
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_objc_offset
		MODULE mt_objc_offset
		pea        140
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_objc_order
		MODULE mt_objc_order
		pea        144
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_objc_edit
		MODULE mt_objc_edit
		pea        148
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_objc_change
		MODULE mt_objc_change
		pea        152
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_objc_sysvar
		MODULE mt_objc_sysvar
		pea        156
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_form_do
		MODULE mt_form_do
		pea        160
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_form_dial
		MODULE mt_form_dial
		pea        164
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_form_alert
		MODULE mt_form_alert
		pea        168
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_form_error
		MODULE mt_form_error
		pea        172
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_form_center
		MODULE mt_form_center
		pea        176
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_form_keybd
		MODULE mt_form_keybd
		pea        180
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_form_button
		MODULE mt_form_button
		pea        184
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_rubbox
		MODULE mt_graf_rubbox
		pea        188
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_rubberbox
		MODULE mt_graf_rubberbox
		pea        192
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_dragbox
		MODULE mt_graf_dragbox
		pea        196
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_mbox
		MODULE mt_graf_mbox
		pea        200
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_movebox
		MODULE mt_graf_movebox
		pea        204
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_growbox
		MODULE mt_graf_growbox
		pea        208
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_shrinkbox
		MODULE mt_graf_shrinkbox
		pea        212
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_watchbox
		MODULE mt_graf_watchbox
		pea        216
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_slidebox
		MODULE mt_graf_slidebox
		pea        220
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_handle
		MODULE mt_graf_handle
		pea        224
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_mouse
		MODULE mt_graf_mouse
		pea        228
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_mkstate
		MODULE mt_graf_mkstate
		pea        232
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_multirubber
		MODULE mt_graf_multirubber
		pea        236
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_scrp_read
		MODULE mt_scrp_read
		pea        240
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_scrp_write
		MODULE mt_scrp_write
		pea        244
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fsel_input
		MODULE mt_fsel_input
		pea        248
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fsel_exinput
		MODULE mt_fsel_exinput
		pea        252
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fsel_boxinput
		MODULE mt_fsel_boxinput
		pea        256
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fslx_open
		MODULE mt_fslx_open
		pea        260
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fslx_close
		MODULE mt_fslx_close
		pea        264
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fslx_getnxtfile
		MODULE mt_fslx_getnxtfile
		pea        268
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fslx_evnt
		MODULE mt_fslx_evnt
		pea        272
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fslx_do
		MODULE mt_fslx_do
		pea        276
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fslx_set_flags
		MODULE mt_fslx_set_flags
		pea        280
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wind_create
		MODULE mt_wind_create
		pea        284
		move.l     funcAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wind_open
		MODULE mt_wind_open
		pea        288
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wind_close
		MODULE mt_wind_close
		pea        292
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wind_delete
		MODULE mt_wind_delete
		pea        296
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wind_get
		MODULE mt_wind_get
		pea        300
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wind_getQSB
		MODULE mt_wind_getQSB
		pea        304
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wind_set
		MODULE mt_wind_set
		pea        308
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wind_find
		MODULE mt_wind_find
		pea        312
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wind_update
		MODULE mt_wind_update
		pea        316
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wind_calc
		MODULE mt_wind_calc
		pea        320
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wind_new
		MODULE mt_wind_new
		pea        324
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_rsrc_load
		MODULE mt_rsrc_load
		pea        328
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_rsrc_free
		MODULE mt_rsrc_free
		pea        332
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_rsrc_gaddr
		MODULE mt_rsrc_gaddr
		pea        336
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_rsrc_saddr
		MODULE mt_rsrc_saddr
		pea        340
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_rsrc_obfix
		MODULE mt_rsrc_obfix
		pea        344
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_rsrc_rcfix
		MODULE mt_rsrc_rcfix
		pea        348
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_shel_read
		MODULE mt_shel_read
		pea        352
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_shel_write
		MODULE mt_shel_write
		pea        356
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_shel_get
		MODULE mt_shel_get
		pea        360
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_shel_put
		MODULE mt_shel_put
		pea        364
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_shel_find
		MODULE mt_shel_find
		pea        368
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_shel_envrn
		MODULE mt_shel_envrn
		pea        372
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_shel_help
		MODULE mt_shel_help
		pea        376
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fnts_add
		MODULE mt_fnts_add
		pea        380
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fnts_close
		MODULE mt_fnts_close
		pea        384
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fnts_create
		MODULE mt_fnts_create
		pea        388
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fnts_delete
		MODULE mt_fnts_delete
		pea        392
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fnts_do
		MODULE mt_fnts_do
		pea        396
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fnts_evnt
		MODULE mt_fnts_evnt
		pea        400
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fnts_get_info
		MODULE mt_fnts_get_info
		pea        404
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fnts_get_name
		MODULE mt_fnts_get_name
		pea        408
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fnts_get_no_styles
		MODULE mt_fnts_get_no_styles
		pea        412
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fnts_get_style
		MODULE mt_fnts_get_style
		pea        406
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fnts_open
		MODULE mt_fnts_open
		pea        420
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fnts_remove
		MODULE mt_fnts_remove
		pea        424
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_fnts_update
		MODULE mt_fnts_update
		pea        428
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_ascroll_to
		MODULE mt_lbox_ascroll_to
		pea        432
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_scroll_to
		MODULE mt_lbox_scroll_to
		pea        436
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_bscroll_to
		MODULE mt_lbox_bscroll_to
		pea        440
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_cnt_items
		MODULE mt_lbox_cnt_items
		pea        444
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_create
		MODULE mt_lbox_create
		pea        448
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_delete
		MODULE mt_lbox_delete
		pea        452
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_do
		MODULE mt_lbox_do
		pea        456
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_free_items
		MODULE mt_lbox_free_items
		pea        460
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_free_list
		MODULE mt_lbox_free_list
		pea        464
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_get_afirst
		MODULE mt_lbox_get_afirst
		pea        468
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_get_first
		MODULE mt_lbox_get_first
		pea        472
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_get_avis
		MODULE mt_lbox_get_avis
		pea        476
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_get_visible
		MODULE mt_lbox_get_visible
		pea        480
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_get_bentries
		MODULE mt_lbox_get_bentries
		pea        484
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_get_bfirst
		MODULE mt_lbox_get_bfirst
		pea        488
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_get_idx
		MODULE mt_lbox_get_idx
		pea        492
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_get_item
		MODULE mt_lbox_get_item
		pea        496
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_get_items
		MODULE mt_lbox_get_items
		pea        500
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_get_slct_idx
		MODULE mt_lbox_get_slct_idx
		pea        504
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_get_slct_item
		MODULE mt_lbox_get_slct_item
		pea        508
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_get_tree
		MODULE mt_lbox_get_tree
		pea        512
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_get_udata
		MODULE mt_lbox_get_udata
		pea        516
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_set_asldr
		MODULE mt_lbox_set_asldr
		pea        520
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_set_slider
		MODULE mt_lbox_set_slider
		pea        524
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_set_bentries
		MODULE mt_lbox_set_bentries
		pea        528
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_set_bsldr
		MODULE mt_lbox_set_bsldr
		pea        532
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_set_items
		MODULE mt_lbox_set_items
		pea        536
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_lbox_update
		MODULE mt_lbox_update
		pea        540
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_add_printers
		MODULE mt_pdlg_add_printers
		pea        544
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_add_sub_dialogs
		MODULE mt_pdlg_add_sub_dialogs
		pea        548
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_close
		MODULE mt_pdlg_close
		pea        552
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_create
		MODULE mt_pdlg_create
		pea        556
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_delete
		MODULE mt_pdlg_delete
		pea        560
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_dflt_settings
		MODULE mt_pdlg_dflt_settings
		pea        564
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_do
		MODULE mt_pdlg_do
		pea        568
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_evnt
		MODULE mt_pdlg_evnt
		pea        572
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_free_settings
		MODULE mt_pdlg_free_settings
		pea        576
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_get_setsize
		MODULE mt_pdlg_get_setsize
		pea        580
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_new_settings
		MODULE mt_pdlg_new_settings
		pea        584
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_open
		MODULE mt_pdlg_open
		pea        588
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_remove_printers
		MODULE mt_pdlg_remove_printers
		pea        592
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_remove_sub_dialogs
		MODULE mt_pdlg_remove_sub_dialogs
		pea        596
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_update
		MODULE mt_pdlg_update
		pea        600
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_use_settings
		MODULE mt_pdlg_use_settings
		pea        604
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_pdlg_validate_settings
		MODULE mt_pdlg_validate_settings
		pea        608
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_create
		MODULE mt_edit_create
		pea        612
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_set_buf
		MODULE mt_edit_set_buf
		pea        616
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_open
		MODULE mt_edit_open
		pea        620
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_close
		MODULE mt_edit_close
		pea        624
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_delete
		MODULE mt_edit_delete
		pea        628
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_cursor
		MODULE mt_edit_cursor
		pea        632
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_evnt
		MODULE mt_edit_evnt
		pea        636
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_get_buf
		MODULE mt_edit_get_buf
		pea        640
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_get_format
		MODULE mt_edit_get_format
		pea        644
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_get_colour
		MODULE mt_edit_get_colour
		pea        648
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_get_color
		MODULE mt_edit_get_color
		pea        652
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_get_font
		MODULE mt_edit_get_font
		pea        656
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_get_cursor
		MODULE mt_edit_get_cursor
		pea        660
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_get_dirty
		MODULE mt_edit_get_dirty
		pea        664
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_get_sel
		MODULE mt_edit_get_sel
		pea        668
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_get_scrollinfo
		MODULE mt_edit_get_scrollinfo
		pea        672
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_set_format
		MODULE mt_edit_set_format
		pea        676
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_set_colour
		MODULE mt_edit_set_colour
		pea        680
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_set_color
		MODULE mt_edit_set_color
		pea        684
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_set_font
		MODULE mt_edit_set_font
		pea        688
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_set_cursor
		MODULE mt_edit_set_cursor
		pea        692
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_resized
		MODULE mt_edit_resized
		pea        696
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_set_dirty
		MODULE mt_edit_set_dirty
		pea        700
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_edit_scroll
		MODULE mt_edit_scroll
		pea        704
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_EvntMulti
		MODULE mt_EvntMulti
		pea        708
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_form_wbutton
		MODULE mt_form_wbutton
		pea        712
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_form_xdial
		MODULE mt_form_xdial
		pea        716
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_form_xdo
		MODULE mt_form_xdo
		pea        720
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_form_xerr
		MODULE mt_form_xerr
		pea        724
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_wwatchbox
		MODULE mt_graf_wwatchbox
		pea        728
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_xhandle
		MODULE mt_graf_xhandle
		pea        732
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wdlg_create
		MODULE mt_wdlg_create
		pea        736
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wdlg_open
		MODULE mt_wdlg_open
		pea        740
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wdlg_close
		MODULE mt_wdlg_close
		pea        744
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wdlg_delete
		MODULE mt_wdlg_delete
		pea        748
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wdlg_get_tree
		MODULE mt_wdlg_get_tree
		pea        752
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wdlg_get_edit
		MODULE mt_wdlg_get_edit
		pea        756
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wdlg_get_udata
		MODULE mt_wdlg_get_udata
		pea        760
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wdlg_get_handle
		MODULE mt_wdlg_get_handle
		pea        764
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wdlg_set_edit
		MODULE mt_wdlg_set_edit
		pea        768
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wdlg_set_tree
		MODULE mt_wdlg_set_tree
		pea        772
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wdlg_set_size
		MODULE mt_wdlg_set_size
		pea        776
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wdlg_set_iconify
		MODULE mt_wdlg_set_iconify
		pea        780
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wdlg_set_uniconify
		MODULE mt_wdlg_set_uniconify
		pea        784
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wdlg_evnt
		MODULE mt_wdlg_evnt
		pea        788
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wdlg_redraw
		MODULE mt_wdlg_redraw
		pea        792
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_wind_draw
		MODULE mt_wind_draw
		pea        796
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_scrp_clear
		MODULE mt_scrp_clear
		pea        800
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_objc_xedit
		MODULE mt_objc_xedit
		pea        804
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD

	.globl mt_graf_rubbbox
		MODULE mt_graf_rubbbox
		pea        808
		move.l     funcMtAes(pc),-(a7)
		bra        indirect
		ENDMOD


	.data

	.globl errno
errno: dc.w 0
	.globl _FilSysVec
_FilSysVec:
	dc.l 0
