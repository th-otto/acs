		.include "country.inc"
		
		.text

		.globl Ash_thermometer
Ash_thermometer:
		movem.l    d3-d4/a2-a6,-(a7)
		subq.w     #4,a7
		move.w     d0,d3
		movea.l    a0,a4
		move.w     d1,d4
		move.l     a1,(a7)
		movea.l    40(a7),a5
		movea.l    48(a7),a3
		moveq.l    #114,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Ash_thermometer_1
		moveq.l    #-1,d0
		bra        Ash_thermometer_2
Ash_thermometer_1:
		moveq.l    #114,d1
		clr.w      d0
		movea.l    a2,a0
		jsr        memset
		move.l     (a7),64(a2)
		move.l     36(a7),68(a2)
		move.l     a5,72(a2)
		move.l     44(a7),76(a2)
		move.l     a3,80(a2)
		move.l     52(a7),84(a2)
		move.l     56(a7),88(a2)
		move.w     d3,100(a2)
		move.l     a4,92(a2)
		move.w     d4,102(a2)
		movea.l    a2,a0
		movea.l    ThermWind+8,a1
		jsr        (a1)
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      Ash_thermometer_3
		moveq.l    #8,d1
		and.w      d3,d1
		beq.s      Ash_thermometer_4
		movea.l    12(a4),a1
		jsr        (a1)
		moveq.l    #2,d4
		bra        Ash_thermometer_5
Ash_thermometer_4:
		movea.l    ACSblk,a0
		move.l     562(a0),106(a2)
		movea.l    ACSblk,a0
		move.l     #$00000001,562(a0)
		movea.l    a4,a0
		jsr        Awi_dialog
		move.w     d0,d4
		suba.l     a1,a1
		movea.l    a4,a0
		movea.l    4(a4),a6
		moveq.l    #2,d0
		jsr        (a6)
		movea.l    ACSblk,a0
		move.l     106(a2),562(a0)
		bra.s      Ash_thermometer_6
Ash_thermometer_3:
		move.l     36(a7),d0
		beq.s      Ash_thermometer_7
		movea.l    a2,a0
		movea.l    d0,a1
		jsr        (a1)
Ash_thermometer_7:
		move.l     a5,d0
		beq.s      Ash_thermometer_8
		movea.l    a2,a0
		jsr        (a5)
		tst.w      d0
		beq.s      Ash_thermometer_9
Ash_thermometer_8:
		move.l     44(a7),d0
		beq.s      Ash_thermometer_10
		bra.s      Ash_thermometer_11
Ash_thermometer_12:
		move.l     a3,d0
		beq.s      Ash_thermometer_11
		movea.l    a2,a0
		jsr        (a3)
Ash_thermometer_11:
		movea.l    a2,a0
		movea.l    44(a7),a1
		jsr        (a1)
		tst.w      d0
		bne.s      Ash_thermometer_12
Ash_thermometer_10:
		move.l     52(a7),d0
		beq.s      Ash_thermometer_9
		movea.l    a2,a0
		movea.l    d0,a1
		jsr        (a1)
Ash_thermometer_9:
		move.l     56(a7),d0
		beq.s      Ash_thermometer_6
		movea.l    a2,a0
		movea.l    d0,a1
		jsr        (a1)
Ash_thermometer_6:
		moveq.l    #114,d0
		movea.l    a2,a0
		jsr        Ax_recycle
Ash_thermometer_5:
		move.w     d4,d0
Ash_thermometer_2:
		addq.w     #4,a7
		movem.l    (a7)+,d3-d4/a2-a6
		rts

Prozent:
		movem.l    d3-d5/a2-a6,-(a7)
		movea.l    a0,a2
		move.l     d0,d4
		movea.l    (a0),a3
		lea.l      laufBNr,a4
		move.w     98(a3),d1
		add.w      d1,d1
		move.w     0(a4,d1.w),d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		movea.l    20(a2),a5
		adda.l     d0,a5
		move.w     8(a4,d1.w),d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		movea.l    20(a2),a6
		adda.l     d0,a6
		clr.w      d3
		move.w     20(a6),d0
		ext.l      d0
		move.l     d4,d1
		jsr        _lmul
		move.l     d0,d5
		moveq.l    #12,d0
		asr.l      d0,d5
		lea.l      ACSblk,a6
		cmp.w      20(a5),d5
		bgt.s      Prozent_1
		tst.w      d5
		bne.s      Prozent_2
Prozent_1:
		move.w     d5,20(a5)
		movea.l    (a6),a0
		move.l     20(a2),604(a0)
		move.w     98(a3),d0
		add.w      d0,d0
		movea.l    (a6),a0
		move.w     0(a4,d0.w),608(a0)
		moveq.l    #-1,d1
		move.w     98(a3),d2
		add.w      d2,d2
		move.w     0(a4,d2.w),d0
		movea.l    a2,a0
		jsr        Awi_obchange
		moveq.l    #1,d3
Prozent_2:
		moveq.l    #4,d0
		and.w      100(a3),d0
		beq.s      Prozent_3
		move.l     d4,d5
		add.l      d5,d5
		add.l      d4,d5
		lsl.l      #3,d5
		add.l      d4,d5
		lsl.l      #2,d5
		moveq.l    #12,d1
		asr.l      d1,d5
		tst.w      d3
		bne.s      Prozent_4
		cmp.w      96(a3),d5
		bgt.s      Prozent_4
		tst.w      d5
		bne.s      Prozent_3
Prozent_4:
		cmp.w      96(a3),d5
		bgt.s      Prozent_5
		tst.w      d5
		bne.s      Prozent_6
Prozent_5:
		move.w     d5,96(a3)
Prozent_6:
		move.w     d5,-(a7)
		lea.l      xd44fe,a1
		move.w     98(a3),d1
		add.w      d1,d1
		move.w     16(a4,d1.w),d0
		movea.l    20(a2),a0
		jsr        Aob_printf
		addq.w     #2,a7
		movea.l    (a6),a0
		move.l     20(a2),604(a0)
		move.w     98(a3),d0
		add.w      d0,d0
		movea.l    (a6),a0
		move.w     16(a4,d0.w),608(a0)
		move.w     98(a3),d1
		add.w      d1,d1
		move.w     16(a4,d1.w),d0
		movea.l    a2,a0
		jsr        Awi_obredraw
Prozent_3:
		movem.l    (a7)+,d3-d5/a2-a6
		rts

TextUpdate:
		movem.l    a2-a5,-(a7)
		movea.l    a0,a2
		movea.l    a1,a4
		movea.l    (a0),a3
		moveq.l    #1,d0
		and.w      100(a3),d0
		beq.s      TextUpdate_1
		lea.l      textNr,a5
		movea.l    a4,a1
		move.w     98(a3),d1
		add.w      d1,d1
		move.w     0(a5,d1.w),d0
		movea.l    20(a2),a0
		jsr        Aob_puttext
		movea.l    ACSblk,a0
		move.l     20(a2),604(a0)
		move.w     98(a3),d0
		add.w      d0,d0
		movea.l    ACSblk,a0
		move.w     0(a5,d0.w),608(a0)
		move.w     98(a3),d1
		add.w      d1,d1
		move.w     0(a5,d1.w),d0
		movea.l    a2,a0
		jsr        Awi_obredraw
TextUpdate_1:
		movem.l    (a7)+,a2-a5
		rts

ThermoCreate:
		movem.l    a2-a5,-(a7)
		subq.w     #2,a7
		movea.l    a0,a2
		lea.l      ThermWind,a3
		move.l     a2,d0
		beq.s      ThermoCreate_1
		moveq.l    #3,d1
		and.w      100(a2),d1
		move.w     d1,98(a2)
		lsl.w      #2,d1
		lea.l      162(a3),a0
		move.l     0(a0,d1.w),20(a3)
		move.l     92(a2),74(a3)
		movea.l    a3,a0
		jsr        Awi_create
		movea.l    a0,a4
		move.l     a4,d0
		bne.s      ThermoCreate_2
ThermoCreate_1:
		suba.l     a0,a0
		bra        ThermoCreate_3
ThermoCreate_2:
		movea.l    20(a4),a0
		move.w     20(a0),56(a4)
		movea.l    20(a4),a0
		move.w     22(a0),58(a4)
		move.l     _globl,-(a7)
		pea.l      42(a4)
		pea.l      40(a4)
		move.w     58(a4),-(a7)
		move.w     56(a4),-(a7)
		move.w     54(a4),-(a7)
		lea.l      18(a7),a1
		lea.l      18(a7),a0
		move.w     52(a4),d2
		move.w     34(a4),d1
		clr.w      d0
		jsr        mt_wind_calc
		lea.l      18(a7),a7
		move.l     a2,(a4)
		move.l     a4,110(a2)
		move.l     #$FFFFFFFF,(a2)
		clr.l      4(a2)
		clr.l      8(a2)
		move.w     98(a2),d1
		add.w      d1,d1
		lea.l      186(a3),a0
		move.w     0(a0,d1.w),d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		movea.l    20(a4),a1
		clr.w      20(a1,d0.l)
		moveq.l    #0,d0
		movea.l    a4,a0
		bsr        Prozent
		move.w     102(a2),d0
		bmi.s      ThermoCreate_4
		movea.l    ACSblk,a0
		cmpi.w     #$0010,26(a0)
		blt.s      ThermoCreate_4
		movea.l    572(a0),a1
		move.w     14(a1),d1
		and.w      #$0100,d1
		bne.s      ThermoCreate_4
		move.w     98(a2),d0
		add.w      d0,d0
		lea.l      186(a3),a0
		move.w     0(a0,d0.w),d1
		ext.l      d1
		move.l     d1,d2
		add.l      d2,d2
		add.l      d1,d2
		lsl.l      #3,d2
		movea.l    20(a4),a1
		movea.l    12(a1,d2.l),a0
		andi.l     #$FFFFFF80,4(a0)
		moveq.l    #15,d0
		and.w      102(a2),d0
		ext.l      d0
		or.l       #$00000070,d0
		or.l       d0,4(a0)
ThermoCreate_4:
		move.l     (a2),d0
		bpl.s      ThermoCreate_5
		move.l     68(a2),d1
		beq.s      ThermoCreate_5
		movea.l    a2,a0
		movea.l    d1,a1
		jsr        (a1)
		tst.w      d0
		bne.s      ThermoCreate_5
		suba.l     a1,a1
		moveq.l    #2,d0
		movea.l    a4,a0
		movea.l    4(a4),a5
		jsr        (a5)
ThermoCreate_5:
		moveq.l    #1,d0
		and.w      100(a2),d0
		beq.s      ThermoCreate_6
		lea.l      12(a2),a1
		move.w     98(a2),d1
		add.w      d1,d1
		lea.l      178(a3),a0
		move.w     0(a0,d1.w),d0
		movea.l    20(a4),a0
		jsr        Aob_puttext
ThermoCreate_6:
		moveq.l    #4,d0
		and.w      100(a2),d0
		bne.s      ThermoCreate_7
		moveq.l    #1,d2
		bra.s      ThermoCreate_8
ThermoCreate_7:
		clr.w      d2
ThermoCreate_8:
		move.w     #$0080,d1
		move.w     98(a2),d0
		add.w      d0,d0
		lea.l      202(a3),a0
		move.w     0(a0,d0.w),d0
		movea.l    a4,a0
		jsr        Aob_flags
		ori.w      #$0024,86(a4)
		clr.w      104(a2)
		movea.l    a4,a0
ThermoCreate_3:
		addq.w     #2,a7
		movem.l    (a7)+,a2-a5
		rts

ThermoService:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a2
		movea.l    (a0),a3
		move.w     d0,d1
		subq.w     #2,d1
		beq.s      ThermoService_1
		bra        ThermoService_2
ThermoService_1:
		move.w     86(a2),d0
		and.w      #$0200,d0
		bne        ThermoService_3
		ori.w      #$0200,86(a2)
		andi.w     #$FFDF,86(a2)
		lea.l      ACSblk,a4
		move.w     104(a3),d0
		beq.s      ThermoService_4
		move.l     84(a3),d1
		beq.s      ThermoService_4
		moveq.l    #8,d2
		and.w      100(a3),d2
		bne.s      ThermoService_5
		movea.l    (a4),a0
		move.l     106(a3),562(a0)
ThermoService_5:
		movea.l    a3,a0
		movea.l    84(a3),a1
		jsr        (a1)
		moveq.l    #8,d0
		and.w      100(a3),d0
		bne.s      ThermoService_4
		movea.l    (a4),a0
		move.l     #$00000001,562(a0)
ThermoService_4:
		movea.l    a2,a0
		jsr        Awi_delete
		clr.l      110(a3)
		move.l     88(a3),d0
		beq.s      ThermoService_6
		moveq.l    #8,d1
		and.w      100(a3),d1
		bne.s      ThermoService_7
		movea.l    (a4),a0
		move.l     106(a3),562(a0)
ThermoService_7:
		movea.l    a3,a0
		movea.l    88(a3),a1
		jsr        (a1)
		moveq.l    #8,d0
		and.w      100(a3),d0
		bne.s      ThermoService_6
		movea.l    (a4),a0
		move.l     #$00000001,562(a0)
ThermoService_6:
		moveq.l    #8,d0
		and.w      100(a3),d0
		beq.s      ThermoService_3
		movea.l    a3,a0
		moveq.l    #114,d0
		jsr        Ax_recycle
ThermoService_3:
		moveq.l    #1,d0
		bra.s      ThermoService_8
ThermoService_2:
		clr.w      d0
ThermoService_8:
		movem.l    (a7)+,a2-a4
		rts

ThermoInit:
		movem.l    d3-d6/a2-a4,-(a7)
		movea.l    a0,a2
		movea.l    (a0),a3
		moveq.l    #1,d3
		lea.l      ACSblk,a4
		move.w     104(a3),d0
		beq        ThermoInit_1
		moveq.l    #8,d1
		and.w      100(a3),d1
		bne.s      ThermoInit_2
		movea.l    (a4),a0
		move.l     106(a3),562(a0)
ThermoInit_2:
		andi.w     #$FFDF,86(a2)
		move.l     76(a3),d0
		beq.s      ThermoInit_3
		movea.l    a3,a0
		movea.l    d0,a1
		jsr        (a1)
		tst.w      d0
		beq.s      ThermoInit_3
		moveq.l    #1,d3
		bra.s      ThermoInit_4
ThermoInit_3:
		clr.w      d3
ThermoInit_4:
		lea.l      12(a3),a1
		movea.l    a2,a0
		bsr        TextUpdate
		tst.w      d3
		beq.s      ThermoInit_5
		move.l     80(a3),d0
		beq.s      ThermoInit_5
		movea.l    a3,a0
		movea.l    d0,a1
		jsr        (a1)
ThermoInit_5:
		addq.l     #1,(a3)
		moveq.l    #8,d0
		and.w      100(a3),d0
		bne.s      ThermoInit_6
		movea.l    (a4),a0
		move.l     #$00000001,562(a0)
ThermoInit_6:
		tst.w      d3
		beq.s      ThermoInit_7
		move.l     8(a3),d0
		beq.s      ThermoInit_7
		move.l     4(a3),d4
		and.l      #$FFF00000,d4
		move.l     4(a3),d5
		and.l      #$000FFFFF,d5
		move.l     d5,d0
		moveq.l    #12,d1
		lsl.l      d1,d0
		move.l     8(a3),d1
		jsr        _uldiv
		move.l     d0,-(a7)
		move.l     d4,d0
		move.l     8(a3),d1
		jsr        _uldiv
		move.l     d0,d6
		moveq.l    #12,d0
		lsr.l      d0,d6
		add.l      (a7)+,d6
		bra.s      ThermoInit_8
ThermoInit_7:
		move.l     #$00001000,d6
ThermoInit_8:
		tst.l      d6
		bpl.s      ThermoInit_9
		moveq.l    #0,d6
		bra.s      ThermoInit_10
ThermoInit_9:
		cmp.l      #$00001000,d6
		ble.s      ThermoInit_10
		move.l     #$00001000,d6
ThermoInit_10:
		move.l     d6,d0
		movea.l    a2,a0
		bsr        Prozent
ThermoInit_1:
		move.w     104(a3),d0
		bne.s      ThermoInit_11
		move.w     32(a2),d1
		bmi.s      ThermoInit_11
		move.l     72(a3),d2
		beq.s      ThermoInit_12
		moveq.l    #8,d4
		and.w      100(a3),d4
		bne.s      ThermoInit_13
		movea.l    (a4),a0
		move.l     106(a3),562(a0)
ThermoInit_13:
		andi.w     #$FFDF,86(a2)
		movea.l    a3,a0
		movea.l    72(a3),a1
		jsr        (a1)
		move.w     d0,d3
		moveq.l    #8,d1
		and.w      100(a3),d1
		bne.s      ThermoInit_12
		movea.l    (a4),a0
		move.l     #$00000001,562(a0)
ThermoInit_12:
		lea.l      12(a3),a1
		movea.l    a2,a0
		bsr        TextUpdate
		move.w     d3,104(a3)
ThermoInit_11:
		move.w     86(a2),d0
		and.w      #$0200,d0
		bne.s      ThermoInit_14
		ori.w      #$0020,86(a2)
		moveq.l    #8,d0
		and.w      100(a3),d0
		bne.s      ThermoInit_15
		tst.w      d3
		bne.s      ThermoInit_16
		moveq.l    #1,d1
		bra.s      ThermoInit_17
ThermoInit_16:
		clr.w      d1
ThermoInit_17:
		movea.l    (a4),a0
		move.w     d1,616(a0)
		bra.s      ThermoInit_14
ThermoInit_15:
		tst.w      d3
		bne.s      ThermoInit_14
		suba.l     a1,a1
		moveq.l    #2,d0
		movea.l    a2,a0
		movea.l    4(a2),a3
		jsr        (a3)
ThermoInit_14:
		clr.w      d0
		movem.l    (a7)+,d3-d6/a2-a4
		rts

ThermCancel:
		movem.l    a2-a5,-(a7)
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		movea.l    600(a0),a3
		movea.l    (a3),a4
		move.l     84(a4),d0
		beq.s      ThermCancel_1
		moveq.l    #8,d1
		and.w      100(a4),d1
		bne.s      ThermCancel_2
		move.l     106(a4),562(a0)
ThermCancel_2:
		andi.w     #$FFDF,86(a3)
		movea.l    a4,a0
		movea.l    84(a4),a1
		jsr        (a1)
		tst.w      d0
		beq.s      ThermCancel_3
		lea.l      12(a4),a1
		movea.l    a3,a0
		bsr        TextUpdate
		moveq.l    #8,d0
		and.w      100(a4),d0
		beq.s      ThermCancel_4
		suba.l     a1,a1
		movea.l    a3,a0
		movea.l    4(a3),a5
		moveq.l    #2,d0
		jsr        (a5)
		bra.s      ThermCancel_5
ThermCancel_4:
		movea.l    (a2),a0
		move.w     #$0001,616(a0)
ThermCancel_5:
		clr.w      104(a4)
		bra.s      ThermCancel_6
ThermCancel_3:
		ori.w      #$0020,86(a3)
ThermCancel_6:
		moveq.l    #8,d0
		and.w      100(a4),d0
		bne.s      ThermCancel_1
		movea.l    (a2),a0
		move.l     106(a4),562(a0)
ThermCancel_1:
		movem.l    (a7)+,a2-a5
		rts

ThermoClosed:
		rts

ThermoGEMScript:
		moveq.l    #1,d0
		rts

		.data

TEXT_01:
		dc.b '12345678901234567890123456789012345678901234567890',0
TEXT_02:
		dc.b $00
		.IFEQ COUNTRY-COUNTRY_DE
TEXT_04:
		dc.b 'Abbrechen',0
		.ENDC
		.IFEQ COUNTRY-COUNTRY_US
TEXT_04:
		dc.b 'Cancel',0
		.ENDC
TEXT_05:
		dc.b $00
TEXT_06:
		dc.b '100 %',0
		.even
TEDINFO_02:
		dc.l TEXT_01
		dc.l TEXT_02
		dc.l TEXT_02
		dc.w $0005
		dc.w $0006
		dc.w $0000
		dc.w $1100
		dc.w $0000
		dc.w $ffff
		dc.w $0033
		dc.w $0001
TEDINFO_03:
		dc.l TEXT_06
		dc.l TEXT_02
		dc.l TEXT_02
		dc.w $0003
		dc.w $0006
		dc.w $0002
		dc.w $1100
		dc.w $0000
		dc.w $0000
		dc.w $0006
		dc.w $0001
TEDINFO_04:
		dc.l TEXT_06
		dc.l TEXT_02
		dc.l TEXT_02
		dc.w $0003
		dc.w $0006
		dc.w $0002
		dc.w $1100
		dc.w $0000
		dc.w $ffff
		dc.w $0006
		dc.w $0001
A_3DBUTTON01:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0178
		dc.l Auo_string
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
A_3DBUTTON02:
		dc.l A_3Dbutton
		dc.w $2001
		dc.w $9178
		dc.l Auo_string
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
A_3DBUTTON04:
		dc.l A_3Dbutton
		dc.w $2901
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_04
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
A_3DBUTTON05:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0178
		dc.l Auo_string
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
A_3DBUTTON06:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0178
		dc.l Auo_string
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
A_3DBUTTON07:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0178
		dc.l Auo_string
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
A_3DBUTTON08:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0178
		dc.l Auo_string
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
ThermAObj:
		dc.w $ffff
		dc.w $0001
		dc.w $0003
		dc.w $0018
		dc.w $0000
		dc.w $0000
		dc.l A_3DBUTTON01
		dc.w $0000
		dc.w $0000
		dc.w $0029
		dc.w $0404
_01_ThermAObj:
		dc.w $0003
		dc.w $ffff
		dc.b $ff
		dc.b $ff
		dc.w $0018
		dc.w $0045
		dc.w $0000
		dc.l A_3DBUTTON04
		dc.w $000d
		dc.w $0c02
		dc.w $0010
		dc.w $0001
_01aThermAObj:
		dc.l ThermCancel
		dc.w $0000
		dc.w $0000
		dc.w $8000
		dc.w $8841
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
_03_ThermAObj:
		dc.w $0000
		dc.w $0004
		dc.w $0005
		dc.w $0018
		dc.w $0000
		dc.w $0000
		dc.l A_3DBUTTON02
		dc.w $0001
		dc.w $0001
		dc.w $0027
		dc.w $0401
_04_ThermAObj:
		dc.w $0005
		dc.w $ffff
		dc.w $ffff
		dc.w $0018
		dc.w $0000
		dc.w $0000
		dc.l A_3DBUTTON05
		dc.w $0000
		dc.w $0000
		dc.w $000b
		dc.w $0401
_05_ThermAObj:
		dc.w $0003
		dc.w $ffff
		dc.w $ffff
		dc.w $0015
		dc.w $0020
		dc.w $0000
		dc.l TEDINFO_04
		dc.w $0011
		dc.w $0200
		dc.w $0005
		dc.w $0001
ThermObj:
		dc.w $ffff
		dc.w $0001
		dc.w $0001
		dc.w $0018
		dc.w $0000
		dc.w $0000
		dc.l A_3DBUTTON01
		dc.w $0000
		dc.w $0000
		dc.w $0029
		dc.w $0403
_01_ThermObj:
		dc.w $0000
		dc.w $0002
		dc.w $0003
		dc.w $0018
		dc.w $0000
		dc.w $0000
		dc.l A_3DBUTTON02
		dc.w $0001
		dc.w $0001
		dc.w $0027
		dc.w $0401
_02_ThermObj:
		dc.w $0003
		dc.w $ffff
		dc.w $ffff
		dc.w $0018
		dc.w $0000
		dc.w $0000
		dc.l A_3DBUTTON06
		dc.w $0000
		dc.w $0000
		dc.w $000b
		dc.w $0401
_03_ThermObj:
		dc.w $0001
		dc.w $ffff
		dc.w $ffff
		dc.w $0015
		dc.w $0020
		dc.w $0000
		dc.l TEDINFO_04
		dc.w $0011
		dc.w $0200
		dc.w $0005
		dc.w $0001
ThermTAObj:
		dc.w $ffff
		dc.w $0001
		dc.w $0006
		dc.w $0018
		dc.w $0000
		dc.w $0000
		dc.l A_3DBUTTON01
		dc.w $0000
		dc.w $0000
		dc.w $0029
		dc.w $0405
_01_ThermTAObj:
		dc.w $0004
		dc.w $0002
		dc.w $0003
		dc.w $0018
		dc.w $0000
		dc.w $0000
		dc.l A_3DBUTTON02
		dc.w $0001
		dc.w $0002
		dc.w $0027
		dc.w $0401
_02_ThermTAObj:
		dc.w $0003
		dc.w $ffff
		dc.w $ffff
		dc.w $0018
		dc.w $0000
		dc.w $0000
		dc.l A_3DBUTTON07
		dc.w $0000
		dc.w $0000
		dc.w $000b
		dc.w $0401
_03_ThermTAObj:
		dc.w $0001
		dc.w $ffff
		dc.w $ffff
		dc.w $0015
		dc.w $0000
		dc.w $0000
		dc.l TEDINFO_04
		dc.w $0011
		dc.w $0200
		dc.w $0005
		dc.w $0001
_04_ThermTAObj:
		dc.w $0006
		dc.w $ffff
		dc.w $ffff
		dc.w $0018
		dc.w $0045
		dc.w $0000
		dc.l A_3DBUTTON04
		dc.w $000d
		dc.w $0c03
		dc.w $0010
		dc.w $0001
_05_ThermTAObj:
		dc.l ThermCancel
		dc.w $0000
		dc.w $0000
		dc.w $8000
		dc.w $8841
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
_05aThermTAObj:
		dc.w $0000
		dc.w $ffff
		dc.w $ffff
		dc.w $0015
		dc.w $0020
		dc.w $0000
		dc.l TEDINFO_02
		dc.w $0001
		dc.w $0000
		dc.w $0028
		dc.w $0002
ThermTObj:
		dc.w $ffff
		dc.w $0001
		dc.w $0004
		dc.w $0018
		dc.w $0000
		dc.w $0000
		dc.l A_3DBUTTON01
		dc.w $0000
		dc.w $0000
		dc.w $0029
		dc.w $0404
_01_ThermTObj:
		dc.w $0004
		dc.w $0002
		dc.w $0003
		dc.w $0018
		dc.w $0000
		dc.w $0000
		dc.l A_3DBUTTON02
		dc.w $0001
		dc.w $0002
		dc.w $0027
		dc.w $0401
_02_ThermTObj:
		dc.w $0003
		dc.w $ffff
		dc.w $ffff
		dc.w $0018
		dc.w $0000
		dc.w $0000
		dc.l A_3DBUTTON08
		dc.w $0000
		dc.w $0000
		dc.w $000b
		dc.w $0401
_03_ThermTObj:
		dc.w $0001
		dc.w $ffff
		dc.w $ffff
		dc.w $0015
		dc.w $0000
		dc.w $0000
		dc.l TEDINFO_03
		dc.w $0011
		dc.w $0200
		dc.w $0005
		dc.w $0001
_04_ThermTObj:
		dc.w $0000
		dc.w $ffff
		dc.w $ffff
		dc.w $0015
		dc.w $0020
		dc.w $0000
		dc.l TEDINFO_02
		dc.w $0001
		dc.w $0000
		dc.w $0028
		dc.w $0002
		.globl ThermWind
ThermWind:
		dc.w $0000
		dc.w $0000
		dc.l ThermoService
		dc.l ThermoCreate
		dc.l Awi_open
		dc.l ThermoInit
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $ffff
		dc.w $2009
		dc.w $0000
		dc.w $0000
		dc.w $0078
		dc.w $0032
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $0000
		dc.w $0000
		dc.w $f8f8
		dc.l TEXT_05
		dc.l TEXT_02
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $ffff
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.l Awi_keys
		dc.l Awi_obchange
		dc.l Awi_redraw
		dc.l Awi_topped
		dc.l ThermoClosed
		dc.l Awi_fulled
		dc.l Awi_arrowed
		dc.l Awi_hslid
		dc.l Awi_vslid
		dc.l Awi_sized
		dc.l Awi_moved
		dc.l Awi_iconify
		dc.l Awi_uniconify
		dc.l ThermoGEMScript
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
ThermObjs:
		dc.l ThermObj
		dc.l ThermTObj
		dc.l ThermAObj
		dc.l ThermTAObj
textNr:
		dc.w $ffff
		dc.w $0004
		dc.w $ffff
		dc.w $0006
laufBNr:
		dc.w $0002
		dc.w $0002
		dc.w $0004
		dc.w $0002
fixBNr:
		dc.w $0001
		dc.w $0001
		dc.w $0003
		dc.w $0001
prozNr:
		dc.w $0003
		dc.w $0003
		dc.w $0005
		dc.w $0003
xd44fe:
		dc.b '%i %%',0
		.even

