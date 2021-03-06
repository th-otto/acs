/******************************************************************************/
/*                                                                            */
/*          Eine handoptimierte Bibliothek f?r Pure-C und GNU-C               */
/*                                                                            */
/* Die AES-Funktionen - Headerdatei                                           */
/*                                                                            */
/* (c) 1998-2003 by Martin Els?sser @ LL                                      */
/* (c) 2008 Gerhard Stoll @ B                                                 */
/*                                                                            */
/*                                                 Tabsize: 1 Tag = 3 Spaces  */
/******************************************************************************/

#ifndef __ACSAES__
#define __ACSAES__

#ifndef __AES__
#define __AES__
#endif

/******************************************************************************/

#ifdef __cplusplus
extern "C" {
#endif

/******************************************************************************/

#ifndef __ACSTYPE__
   #include <acstype.h>
#endif

#include <acstos.h>

/******************************************************************************/
/*                                                                            */
/* Die diversen AES-Konstanten                                                */
/*                                                                            */
/******************************************************************************/

/* Objekt-Nummer */
#define G_BOX                 20
#define G_TEXT                21
#define G_BOXTEXT             22
#define G_IMAGE               23
#define G_USERDEF             24
#define G_IBOX                25
#define G_BUTTON              26
#define G_BOXCHAR             27
#define G_STRING              28
#define G_FTEXT               29
#define G_FBOXTEXT            30
#define G_ICON                31
#define G_TITLE               32
#define G_CICON               33
#define G_SWBUTTON            34    /* MAG!X                            */
#define G_POPUP               35    /* MAG!X                            */
#define G_RESVD1              36    /* MagiC 3.1                        */
#define G_EDIT                37    /* MagiC 5.20, ?ber Shared Library  */
#define G_SHORTCUT            38    /* MagiC 6                          */

/* Div. Aliase */
#define G_PROGDEF             G_USERDEF

/******************************************************************************/

/* Object flags */
#define NONE                  0x0000
#define SELECTABLE            0x0001
#define DEFAULT               0x0002
#define EXIT                  0x0004
#define EDITABLE              0x0008
#define RBUTTON               0x0010
#define LASTOB                0x0020
#define TOUCHEXIT             0x0040
#define HIDETREE              0x0080
#define INDIRECT              0x0100
#define FL3DIND               0x0200   /* 3D Indicator   AES 4.0 */
#define FL3DBAK               0x0400   /* 3D Background  AES 4.0 */
#define FL3DACT               0x0600   /* 3D Activator   AES 4.0 */
#define SUBMENU               0x0800

/* From mt_aes.h */
#define FL3DMASK              0x0600

/* Konstantennamen aus der GEMLIB */
#define OF_NONE               NONE
#define OF_SELECTABLE         SELECTABLE
#define OF_DEFAULT            DEFAULT
#define OF_EXIT               EXIT
#define OF_EDITABLE           EDITABLE
#define OF_RBUTTON            RBUTTON
#define OF_LASTOB             LASTOB
#define OF_TOUCHEXIT          TOUCHEXIT
#define OF_HIDETREE           HIDETREE
#define OF_INDIRECT           INDIRECT
#define OF_FL3DIND            FL3DIND
#define OF_FL3DBAK            FL3DBAK
#define OF_FL3DACT            FL3DACT
#define OF_SUBMENU            SUBMENU
#define OF_FLAG12             0x1000
#define OF_FLAG13             0x2000
#define OF_FLAG14             0x4000
#define OF_FLAG15             0x8000

/******************************************************************************/

/* Objektstatus (OBJECT.ob_state) */
#define NORMAL                0x0000
#define SELECTED              0x0001
#define CROSSED               0x0002
#define CHECKED               0x0004
#define DISABLED              0x0008
#define OUTLINED              0x0010
#define SHADOWED              0x0020
#define WHITEBAK              0x0040      /* TOS         */
#define DRAW3D                0x0080      /* GEM 2.x     */

/* Konstantennamen aus der GEMLIB */
#define OS_NORMAL             NORMAL
#define OS_SELECTED           SELECTED
#define OS_CROSSED            CROSSED
#define OS_CHECKED            CHECKED
#define OS_DISABLED           DISABLED
#define OS_OUTLINED           OUTLINED
#define OS_SHADOWED           SHADOWED
#define OS_WHITEBAK           WHITEBAK
#define OS_DRAW3D             DRAW3D
#define OS_STATE08            0x0100
#define OS_STATE09            0x0200
#define OS_STATE10            0x0400
#define OS_STATE11            0x0800
#define OS_STATE12            0x1000
#define OS_STATE13            0x2000
#define OS_STATE14            0x4000
#define OS_STATE15            0x8000

/******************************************************************************/

/* Object colors */
#if !defined(__COLORS)
#define __COLORS        /* Using AES-colors and BGI-colors is not possible */

#define WHITE                  0
#define BLACK                  1
#define RED                    2
#define GREEN                  3
#define BLUE                   4
#define CYAN                   5
#define YELLOW                 6
#define MAGENTA                7
#define LWHITE                 8
#define LBLACK                 9
#define LRED                  10
#define LGREEN                11
#define LBLUE                 12
#define LCYAN                 13
#define LYELLOW               14
#define LMAGENTA              15

/* Aus PC-GEM ?bernommen */
#define DWHITE                LWHITE
#define DBLACK                LBLACK
#define DRED                  LREAD
#define DGREEN                LGREEN
#define DBLUE                 LBLUE
#define DCYAN                 LCYAN
#define DYELLOW               LYELLOW
#define DMAGENTA              LMAGENTA

/* Konstantennamen aus der GEMLIB */
#define G_WHITE               WHITE
#define G_BLACK               BLACK
#define G_RED                 RED
#define G_GREEN               GREEN
#define G_BLUE                BLUE
#define G_CYAN                CYAN
#define G_YELLOW              YELLOW
#define G_MAGENTA             MAGENTA
#define G_LWHITE              LWHITE
#define G_LBLACK              LBLACK
#define G_LRED                LRED
#define G_LGREEN              LGREEN
#define G_LBLUE               LBLUE
#define G_LCYAN               LCYAN
#define G_LYELLOW             LYELLOW
#define G_LMAGENTA            LMAGENTA

#endif

/******************************************************************************/

/* Maus-Formen */
#define ARROW                   0
#define TEXT_CRSR               1
#define BUSYBEE                 2
#define POINT_HAND              3
#define FLAT_HAND               4
#define THIN_CROSS              5
#define THICK_CROSS             6
#define OUTLN_CROSS             7
#define USER_DEF              255
#define M_OFF                 256
#define M_ON                  257
#define M_SAVE                258
#define M_LAST                259
#define M_RESTORE             260
#define M_FORCE               0x8000

/* Div. Aliase */
#define HOURGLASS             BUSYBEE
#define BUSY_BEE              BUSYBEE
#define BEE                   BUSYBEE

/******************************************************************************/

/* Funktions-Codes f?r menu_attach */
#define ME_INQUIRE            0
#define ME_ATTACH             1
#define ME_REMOVE             2

/******************************************************************************/

/* Scroll-Infos (f?r Struktur MENU, menu_attach) */
#define SCROLL_NO             0
#define SCROLL_YES            1

/******************************************************************************/

/* Funktions-Codes f?r menu_bar */
#define MENU_INQUIRE           -1
#define MENU_REMOVE             0
#define MENU_INSTALL            1
#define MENU_GETMODE            3         /* Men?leistenmodus abfragen             */
#define MENU_SETMODE            4         /* Men?leistenmodus setzen               */
#define MENU_UPDATE             5         /* Update des Systemteils der Men?leiste */
#define MENU_INSTL            100      /* MAG!X */

/******************************************************************************/

/* Bit-Struktur f?r MENU_SETMODE */
#define  MENU_HIDDEN          0x0001   /* Men?leiste nur bei Bedarf sichtbar */
#define  MENU_PULLDOWN        0x0002   /* Pulldown-Men?s                     */
#define  MENU_SHADOWED        0x0004   /* Men?leistenboxen mit Schatten      */

/******************************************************************************/

/* Modus f?r menu_icheck */
#define UNCHECK               0
#define CHECK                 1

/******************************************************************************/

/* Modus f?r menu_ienable */
#define DISABLE               0
#define ENABLE                1

/******************************************************************************/

/* Modus f?r menu_istart */
#define MIS_GETALIGN          0
#define MIS_SETALIGN          1

/******************************************************************************/

/* Modus f?r menu_popup  */
#define SCROLL_LISTBOX        -1

/******************************************************************************/

/* Spezielle Ap-ID f?r's Registrieren des Proze?namens */
#define REG_NEWNAME           -1

/******************************************************************************/

/* Modus f?r menu_tnormal */
#define HIGHLIGHT             0
#define UNHIGHLIGHT           1

/******************************************************************************/

/* Tastatur-Status (f?r appl_trecord, evnt_button, evnt_mouse, evnt_multi) */
#define K_RSHIFT              0x0001
#define K_LSHIFT              0x0002
#define K_CTRL                0x0004
#define K_ALT                 0x0008
#ifndef K_SHIFT
#define K_SHIFT (K_LSHIFT | K_RSHIFT)
#endif

/******************************************************************************/

/* Ereignis-Flags (f?r evnt_multi, evnt_event) */
#define MU_KEYBD              0x0001
#define MU_BUTTON             0x0002
#define MU_M1                 0x0004
#define MU_M2                 0x0008
#define MU_MESAG              0x0010
#define MU_TIMER              0x0020
#define MU_WHEEL              0x0040      /* XaAES */
#define MU_MX                 0x0080      /* XaAES */
#define MU_NORM_KEYBD         0x0100      /* XaAES */
#define MU_DYNAMIC_KEYBD      0x0200      /* XaAES */

/******************************************************************************/

/* Button-Masken f?r evnt_button und evnt_multi */
#define LEFT_BUTTON           0x0001
#define RIGHT_BUTTON          0x0002
#define MIDDLE_BUTTON         0x0004

/******************************************************************************/

/* Flag f?r evnt_dclick */
#define EDC_INQUIRE           0
#define EDC_SET               1

/******************************************************************************/

/* Funktionsauswahl f?r objc_edit */
#define ED_START                0
#define ED_INIT                 1
#define ED_CHAR                 2
#define ED_END                  3
#define ED_CRSR               100   /* MAG!X       */
#define ED_DRAW               103   /* MAG!X 2.00  */

/* Div. Aliase */
#define EDSTART               ED_START
#define EDINIT                ED_INIT
#define EDCHAR                ED_CHAR
#define EDEND                 ED_END

/******************************************************************************/

/* Spezial-Position f?r objc_order */
#define OO_LAST               -1
#define OO_FIRST              0

/******************************************************************************/

/* Flag f?r das Objektbaum-Zeichnen (f?r objc_draw) */
#define NO_DRAW               0
#define REDRAW                1

/******************************************************************************/

/* Funktions-Codes f?r objc_sysvar */
#define LK3DIND                1       /* AES 4.0    */
#define LK3DACT                2       /* AES 4.0    */
#define INDBUTCOL              3       /* AES 4.0    */
#define BACKGRCOL              4       /* AES 4.0    */
#define AD3DVAL                5       /* AES 4.0    */
#define AD3DVALUE              6       /* AES 4.0    */
#define MX_ENABLE3D           10       /* MagiC 3.0  */
#define MENUCOL               11       /* MagiC 6.0  */

/******************************************************************************/

/* Modus f?r objc_sysvar */
#define SV_INQUIRE            0
#define SV_SET                1

/******************************************************************************/

/* Typen f?r form_dial */
#define FMD_START             0
#define FMD_GROW              1
#define FMD_SHRINK            2
#define FMD_FINISH            3

/******************************************************************************/

/* Fehlernummern (f?r form_error) */
#define FERR_FILENOTFOUND     2
#define FERR_PATHNOTFOUND     3
#define FERR_NOHANDLES        4
#define FERR_ACCESSDENIED     5
#define FERR_LOWMEM           8
#define FERR_BADENVIRON       10
#define FERR_BADFORMAT        11
#define FERR_BADDRIVE         15
#define FERR_DELETEDIR        16
#define FERR_NOFILES          18

/******************************************************************************/

/* R?ckgabewerte f?r fsel_input und fsel_exinput */
#define FSEL_CANCEL           0
#define FSEL_OK               1

/******************************************************************************/

/* Modus f?r shel_get */
#define SHEL_BUFSIZE          (-1)

/******************************************************************************/

/* shel_write modes for parameter "doex" */
#define SHW_NOEXEC              0
#define SHW_EXEC                1
#define SHW_EXEC_ACC            3      /* AES 3.3  */
#define SHW_SHUTDOWN            4      /* AES 3.3     */
#define SHW_RESCHNG             5      /* AES 3.3     */
#define SHW_BROADCAST           7      /* AES 4.0     */
#define SHW_INFRECGN            9      /* AES 4.0     */
#define SHW_AESSEND             10     /* AES 4.0     */
#define SHW_THR_CREATE          20     /* MagiC 4.5   */
#define SHW_THR_EXIT            21     /* MagiC */
#define SHW_THR_KILL            22     /* MagiC */
#define SHW_XMDLIMIT           256
#define SHW_XMDNICE            512
#define SHW_XMDDEFDIR         1024
#define SHW_XMDENV            2048

/* Konstantennamen aus der GEMLIB */
#define SWM_LAUNCH            SHW_NOEXEC
#define SWM_LAUNCHNOW         SHW_EXEC
#define SWM_LAUNCHACC         SHW_EXEC_ACC
#define SWM_SHUTDOWN          SHW_SHUTDOWN
#define SWM_REZCHANGE         SHW_RESCHNG
#define SWW_BROADCAST         SHW_BROADCAST
#define SWM_ENVIRON           8
#define SWM_NEWMSG            SHW_INFRECGN
#define SWM_AESMSG            SHW_AESSEND
#define SWM_THRCREATE         SHW_THR_CREATE
#define SWM_THRTERMINATE      SHW_THR_EXIT
#define SWM_THRSCHEDULE       SHW_THR_KILL

/******************************************************************************/

/* shel_write modes for parameter "isover" */
#define SHW_IMMED                0                                  /* PC-GEM 2.x  */
#define SHW_CHAIN                1                                  /* TOS         */
#define SHW_DOS                  2                                  /* PC-GEM 2.x  */
#define SHW_RESCHANGE            5
#define SHW_PARALLEL           100                                /* MAG!X       */
#define SHW_SINGLE             101                                /* MAG!X       */
#define SHW_XMDFLAGS          4096

/******************************************************************************/

/* Erweiterte Start-Flags f?r die Modi SWM_LAUNCH, SWM_LAUNCHNOW */
/* und SWM_LAUNCHACC (f?r shel_write)                            */
#define SW_PSETLIMIT          0x0100
#define SW_PRENICE            0x0200
#define SW_PDEFDIR            0x0400
#define SW_ENVIRON            0x0800

/******************************************************************************/

/*  */
#define CL_NORMAL             0
#define CL_PARSE              1

/******************************************************************************/

/* Werte f?r Modus SHW_SHUTDOWN bzw. SWM_SHUTDOWN (f?r shel_write) */
#define SD_ABORT              0
#define SD_PARTIAL            1
#define SD_COMPLETE           2

/******************************************************************************/

/* Werte f?r Modus SWM_ENVIRON (f?r shel_write) */
#define ENVIRON_SIZE          0
#define ENVIRON_CHANGE        1
#define ENVIRON_COPY          2

/******************************************************************************/

/* Werte f?r Modus SHW_INFRECGN bzw. SWM_NEWMSG (f?r shel_write) */
#define NM_APTERM             0x0001
#define NM_INHIBIT_HIDE       0x0002

/******************************************************************************/

/* Werte f?r Modus SHW_AESSEND bzw. SWM_AESMSG (f?r shel_write) */
#define AP_AESTERM            52     /* Mode 10: N.AES komplett terminieren. */

/******************************************************************************/

/* Modus f?r shel_help */
#define SHP_HELP              0

/******************************************************************************/

/* Fensterkomponenten (f?r wind_create) */
#define NAME                  0x0001
#define CLOSER                0x0002
#define FULLER                0x0004
#define MOVER                 0x0008
#define INFO                  0x0010
#define SIZER                 0x0020
#define UPARROW               0x0040
#define DNARROW               0x0080
#define VSLIDE                0x0100
#define LFARROW               0x0200
#define RTARROW               0x0400
#define HSLIDE                0x0800
#define HOTCLOSEBOX           0x1000      /* KaOS, MagiC */
#define MENUBAR               0x1000      /* XaAES */
#define BACKDROP              0x2000
#define ICONIFIER             0x4000

#define SMALLER               ICONIFIER

/******************************************************************************/

/* Die Infos f?r wind_get und wind_set */
#define WF_KIND                   1
#define WF_NAME                   2
#define WF_INFO                   3
#define WF_WORKXYWH               4
#define WF_CURRXYWH               5
#define WF_PREVXYWH               6
#define WF_FULLXYWH               7
#define WF_HSLIDE                 8
#define WF_VSLIDE                 9
#define WF_TOP                   10
#define WF_FIRSTXYWH             11
#define WF_NEXTXYWH              12
#define WF_RESVD                 13
#define WF_NEWDESK               14
#define WF_HSLSIZE               15
#define WF_VSLSIZE               16
#define WF_SCREEN                17
#define WF_COLOR                 18
#define WF_DCOLOR                19
#define WF_OWNER                 20
#define WF_BEVENT                24
#define WF_BOTTOM                25
#define WF_ICONIFY               26
#define WF_UNICONIFY             27
#define WF_UNICONIFYXYWH         28
#define WF_TOOLBAR               30
#define WF_FTOOLBAR              31
#define WF_NTOOLBAR              32
#define WF_MENU                  33    /* XaAES */
#define WF_WHEEL                 40    /* XaAES: Mausrad-Konfiguration */
#define WF_OPTS                  41    /* XaAES: Konfiguration der AES-.reaktion bei Mausrad-Events */
#define WF_MAXWORKXYWH           46    /* XaAES */
#define WF_M_BACKDROP           100    /* KAOS 1.4 */
#define WF_M_OWNER              101    /* KAOS 1.4 */
#define WF_M_WINDLIST           102    /* KAOS 1.4 */
#define WF_MINXYWH              103    /* MagiC 6  */
#define WF_INFOXYWH             104    /* MagiC 6.10  */
#define WF_WIDGETS              200    /* Positionen der V- und H-Sliderelemente. */
#define WF_USER_POINTER         230    /* MyAES - Pointer an Fenster anh?ngen */
#define WF_WIND_ATTACH          231    /* MyAES - Fenster an Fenster binden */
#define WF_TOPMOST              232    /* XaAES - Fenster ist immer oben */
#define WF_OBFLAG              1001    /* FreeGEM */
#define WF_OBTYPE              1002    /* FreeGEM */
#define WF_OBSPEC              1003    /* FreeGEM */
#define X_WF_MENU              4352    /* Geneva */
#define X_WF_DIALOG            4608    /* Geneva */
#define X_WF_DIALWID           4864    /* Geneva */
#define X_WF_DIALHT            5120    /* Geneva */
#define X_WF_DFLTDESK          5376    /* Geneva */
#define X_WF_MINMAX            5632    /* Geneva */
#define X_WF_HSPLIT            5888    /* Geneva */
#define X_WF_VSPLIT            6144    /* Geneva */
#define X_WF_SPLMIN            6400    /* Geneva */
#define X_WF_HSLIDE2           6656    /* Geneva */
#define X_WF_VSLIDE2           6912    /* Geneva */
#define X_WF_HSLSIZE2          7168    /* Geneva */
#define X_WF_VSLSIZE2          7424    /* Geneva */
#define X_WF_DIALFLGS          7680    /* Geneva */
#define X_WF_OBJHAND           7936    /* Geneva */
#define X_WF_DIALEDIT          8192    /* Geneva */
#define X_WF_DCOLSTAT          8448    /* Geneva */
#define WF_WINX               22360    /* WINX     */
#define WF_WINXCFG            22361    /* WINX     */
#define WF_DDELAY             22362    /* WINX     */
#define WF_SHADE              22365    /* WINX 2.3 */
#define WF_STACK              22366    /* WINX 2.3 */
#define WF_TOPALL             22367    /* WINX 2.3 */
#define WF_BOTTOMALL          22368    /* WINX 2.3 */
#define WF_XAAES             0x5841    /* XaAES: 'XA' */

#define WF_WXYWH              WF_WORKXYWH
#define WF_CXYWH              WF_CURRXYWH
#define WF_PXYWH              WF_PREVXYWH
#define WF_FXYWH              WF_FULLXYWH

/* Abweichende Namen in der GEMLIB */
#define WF_230                WF_USER_POINTER
#define WF_231                WF_WIND_ATTACH

/******************************************************************************/

/* wind_set(WF_BEVENT) */
#define BEVENT_WORK           0x0001    /* AES 4.0  */
#define BEVENT_INFO           0x0002    /* MagiC 6  */

/******************************************************************************/

/* Die Fenster-Komponenten (f?r wind_set, Modus WF_COLOR und WF_DCOLOR) */
#define W_BOX                  0
#define W_TITLE                1
#define W_CLOSER               2
#define W_NAME                 3
#define W_FULLER               4
#define W_INFO                 5
#define W_DATA                 6
#define W_WORK                 7
#define W_SIZER                8
#define W_VBAR                 9
#define W_UPARROW             10
#define W_DNARROW             11
#define W_VSLIDE              12
#define W_VELEV               13
#define W_HBAR                14
#define W_LFARROW             15
#define W_RTARROW             16
#define W_HSLIDE              17
#define W_HELEV               18
#define W_SMALLER             19
#define W_BOTTOMER            20             /* MagiC 3     */
#define W_HIDER               30

/******************************************************************************/

/* Die Einstellungen (f?r wind_set, Modus WF_OPTS) */
#define WO0_WHEEL             0x0001
#define WO0_FULLREDRAW        0x0002
#define WO0_NOBLITW           0x0004
#define WO0_NOBLITH           0x0008
#define WO0_SENDREPOS         0x0010

/******************************************************************************/

/* Die Einstellungen f?r das MausRad (f?r wind_set, Modus WF_WHEEL) */
#define WHL_REALWHEEL         0
#define WHL_AROWWHEEL         1
#define WHL_SLDRWHEEL         2

/******************************************************************************/

/* Die Konstanten f?r die Scroll-Nachrichten */
#define WA_UPPAGE             0
#define WA_DNPAGE             1
#define WA_UPLINE             2
#define WA_DNLINE             3
#define WA_LFPAGE             4
#define WA_RTPAGE             5
#define WA_LFLINE             6
#define WA_RTLINE             7
#define WA_WHEEL              8  /* XaAES */

/******************************************************************************/

/* Flags f?r wind_calc */
#define WC_BORDER             0
#define WC_WORK               1

/******************************************************************************/

/* Modi f?r wind_update bzw. Awi_update */
#define BEG_UPDATE            0x0001
#define END_UPDATE            0x0000
#define BEG_MCTRL             0x0003
#define END_MCTRL             0x0002

/******************************************************************************/

/* Daten-Strukturen im RSC-File (f?r rsrc_gaddr) */
#define R_TREE                 0
#define R_OBJECT               1
#define R_TEDINFO              2
#define R_ICONBLK              3
#define R_BITBLK               4
#define R_STRING               5              /* gets pointer to free strings */
#define R_IMAGEDATA            6              /* gets pointer to free images */
#define R_OBSPEC               7
#define R_TEPTEXT              8              /* sub ptrs in TEDINFO */
#define R_TEPTMPLT             9
#define R_TEPVALID            10
#define R_IBPMASK             11              /* sub ptrs in ICONBLK */
#define R_IBPDATA             12
#define R_IBPTEXT             13
#define R_BIPDATA             14              /* sub ptrs in BITBLK */
#define R_FRSTR               15              /* gets addr of ptr to free strings */
#define R_FRIMG               16              /* gets addr of ptr to free images  */

#define R_IPBTEXT             R_IBPTEXT

/******************************************************************************/

#define ROOT                   0             /* the root object of a tree   */
#define NIL                   -1             /* nil object index            */
#define MAX_LEN               81             /* max string length           */
#define MAX_DEPTH              8             /* max depth of search or draw */

/******************************************************************************/

/* Zeichensatz-Typen */
#define GDOS_PROP             0
#define GDOS_MONO             1
#define GDOS_BITM             2
#define IBM                   3
#define SMALL                 5

/******************************************************************************/

/* Ausrichtung eines editierbaren Textfeldes */
#define TE_LEFT               0
#define TE_RIGHT              1
#define TE_CNTR               2

/******************************************************************************/

/* Die Funktions-Codes f?r appl_getinfo */
#define AES_LARGEFONT          0
#define AES_SMALLFONT          1
#define AES_SYSTEM             2
#define AES_LANGUAGE           3
#define AES_PROCESS            4
#define AES_PCGEM              5
#define AES_INQUIRE            6
#define AES_WDIALOG            7
#define AES_MOUSE              8
#define AES_MENU               9
#define AES_SHELL             10
#define AES_WINDOW            11
#define AES_MESSAGE           12
#define AES_OBJECT            13
#define AES_FORM              14
#define AES_EXTENDED          64
#define AES_NAES              65
#define AES_VERSION           96
#define AES_WOPTS             97    /* XaAES */
#define AES_FUNCTIONS         98    /* XaAES */
#define AES_AOPTS             99    /* XaAES: Available application options */
#define AES_WINX          22360 /* WINX 2.3 */

/******************************************************************************/

/* Die Font-Typ f?r AES_LARGEFONT und AES_SMALLFONT, appl_getinfo */
#define SYSTEM_FONT           0
#define OUTLINE_FONT          1

/******************************************************************************/

/* Die Sprachen f?r AES_LANGUAGE, appl_getinfo */
#define AESLANG_ENGLISH       0
#define AESLANG_GERMAN        1
#define AESLANG_FRENCH        2
#define AESLANG_SPANISH       4
#define AESLANG_ITALIAN       5
#define AESLANG_SWEDISH       6

/******************************************************************************/

/* Die Flags in AES_FUNCTIONS, appl_getinfo */
#define AGI_WFORM             0x0001
#define AGI_AOPTS             0x0002
#define AGI_OBJCDATA          0x0004

/******************************************************************************/

/* Die Flags in AES_WINDOW, appl_getinfo */
#define AGI_WF_WHEEL          0x0200
#define AGI_WF_FIRSTAREAXYWH  0x0400
#define AGI_WF_OPTS           0x0800
#define AGI_WF_MENU           0x1000

/******************************************************************************/

/* Die Flags in AES_MESSAGE, appl_getinfo */
#define AGI_WM_REPOSED        0x0400      /* XaAES */

/******************************************************************************/

/* Die Flags in AES_VERSION, appl_getinfo */
#define AES_ARCH_M68K         0

#define AES_DEVSTATUS_ALPHA   0
#define AES_DEVSTATUS_BETA    1
#define AES_DEVSTATUS_RELEASE 2

#define AES_FDEVSTATUS_STABLE 0x0100

/******************************************************************************/

/* Funktionscodes f?r appl_search */
#define APP_FIRST             0
#define APP_NEXT              1

/******************************************************************************/

/* Proze?-Typen (f?r appl_search) */
#define APP_SYSTEM            0x01
#define APP_APPLICATION       0x02
#define APP_ACCESSORY         0x04
#define APP_SHELL             0x08

/******************************************************************************/

/* Event-Typen (f?r appl_tplay und appl_trecord) */
#define APPEVNT_TIMER         0
#define APPEVNT_BUTTON        1
#define APPEVNT_MOUSE         2
#define APPEVNT_KEYBOARD      3

/******************************************************************************/

/* Keine Daten vorhanden (appl_read) - MagiC & MultiTOS */
#define APR_NOWAIT            -1

/******************************************************************************/

/* Konstanten f?r ap_cwhat der Funktion appl_control */
#define APC_HIDE              10
#define APC_SHOW              11
#define APC_TOP               12
#define APC_HIDENOT           13
#define APC_INFO              14
#define APC_MENU              15
#define APC_WIDGETS           16

/******************************************************************************/

/* Flags f?r den Integer, auf den ap_cout bei APC_INFO zeigt (appl_control) */
#define APCI_HIDDEN           0x01
#define APCI_HASMBAR          0x02
#define APCI_HASDESK          0x04

/******************************************************************************/

/* Gr??e des Puffers in int16 f?r APC_WIDGETS (appl_control) */
#define MINWINOBJ             12

/******************************************************************************/

/* Flags f?r die Maus-?berwachung (evnt_mouse, evnt_multi, evnt_event) */
#define MO_ENTER              0
#define MO_LEAVE              1

/******************************************************************************/

/* Die Messages des Screenmanagers */
#define MN_SELECTED            10
#define WM_REDRAW              20
#define WM_TOPPED              21
#define WM_CLOSED              22
#define WM_FULLED              23
#define WM_ARROWED             24
#define WM_HSLID               25
#define WM_VSLID               26
#define WM_SIZED               27
#define WM_MOVED               28
#define WM_NEWTOP              29
#define WM_UNTOPPED            30
#define WM_ONTOP               31
#define WM_OFFTOP              32
#define WM_BOTTOMED            33
#define WM_ICONIFY             34
#define WM_UNICONIFY           35
#define WM_ALLICONIFY          36
#define WM_TOOLBAR             37
#define WM_REPOSED             38
#define AC_OPEN                40
#define AC_CLOSE               41
#define AP_TERM                50
#define CT_UPDATE              50               /* XControl */
#define AP_TFAIL               51
#define CT_MOVE                51               /* XControl */
#define CT_NEWTOP              52               /* XControl */
#define CT_KEY                 53               /* XControl */
#define AP_RESCHG              57
#define SHUT_COMPLETED         60
#define RESCH_COMPLETED        61
#define AP_DRAGDROP            63
#define SH_WDRAW               72
#define SC_CHANGED             80               /* In Dokus f?lschlich als CH_EXIT benannt */
#define PRN_CHANGED            82
#define FNT_CHANGED            83
#define COLORS_CHANGED         84
#define THR_EXIT               88
#define PA_EXIT                89               /* MagiC 3     */
#define CH_EXIT                90               /* MultiTOS    */
#define WM_M_BDROPPED         100               /* KAOS 1.4, MaciC <=2 (MagiC > 2=> WM_BOTTOM) */
#define SM_M_SPECIAL          101
#define SM_M_RES2             102               /* MAG!X       */
#define SM_M_RES3             103               /* MAG!X       */
#define SM_M_RES4             104               /* MAG!X       */
#define SM_M_RES5             105               /* MAG!X       */
#define SM_M_RES6             106               /* MAG!X       */
#define SM_M_RES7             107               /* MAG!X       */
#define SM_M_RES8             108               /* MAG!X       */
#define SM_M_RES9             109               /* MAG!X       */
#define WM_SHADED             0x5758            /* [WM_SHADED apid 0 win 0 0 0 0]   */
#define WM_UNSHADED           0x5759            /* [WM_UNSHADED apid 0 win 0 0 0 0] */
#define WM_MOUSEWHEEL         0x0930            /* Sent by Wheel */
#define FONT_CHANGED          0x7A18            /* Font Protocol */
#define FONT_SELECT           0x7A19            /* Font Protocol */
#define FONT_ACK              0x7A1A            /* Font Protocol */
#define XFONT_CHANGED         0x7A1B            /* Font Protocol */

/******************************************************************************/

/* Die SM_M_SPECIAL Codes */
#define SMC_TIDY_UP           0                    /* MagiC 2  */
#define SMC_TERMINATE         1                    /* MagiC 2  */
#define SMC_SWITCH            2                    /* MagiC 2  */
#define SMC_FREEZE            3                    /* MagiC 2  */
#define SMC_UNFREEZE          4                    /* MagiC 2  */
#define SMC_RES5              5                    /* MagiC 2  */
#define SMC_UNHIDEALL         6                    /* MagiC 3.1   */
#define SMC_HIDEOTHERS        7                    /* MagiC 3.1   */
#define SMC_HIDEACT           8                    /* MagiC 3.1   */

/******************************************************************************/

/* menu_bar modes */
#define MENU_HIDE               0                     /* TOS         */
#define MENU_SHOW               1                     /* TOS         */
#define MENU_INSTL            100                     /* MAG!X       */

/******************************************************************************/

/* XACC-Messages */
#ifndef __xaccproto__
   #define __xaccproto__
   #define ACC_ID             0x400
   #define ACC_OPEN           0x401
   #define ACC_CLOSE          0x402
   #define ACC_ACC            0x403
   #define ACC_EXIT           0x404
   #define ACC_ACK            0x500
   #define ACC_TEXT           0x501
   #define ACC_KEY            0x502
   #define ACC_META           0x503
   #define ACC_IMG            0x504
#endif

/******************************************************************************/

/* AV-Messages */
#ifndef __vaproto__
   #define __vaproto__
   #define AV_PROTOKOLL       0x4700
   #define VA_PROTOSTATUS     0x4701
   #define AV_GETSTATUS       0x4703
   #define AV_STATUS          0x4704
   #define VA_SETSTATUS       0x4705
   #define AV_SENDCLICK       0x4709
   #define AV_SENDKEY         0x4710
   #define VA_START           0x4711
   #define AV_ASKFILEFONT     0x4712
   #define VA_FILEFONT        0x4713
   #define AV_ASKCONFONT      0x4714
   #define VA_CONFONT         0x4715
   #define AV_ASKOBJECT       0x4716
   #define VA_OBJECT          0x4717
   #define AV_OPENCONSOLE     0x4718
   #define VA_CONSOLEOPEN     0x4719
   #define AV_OPENWIND        0x4720
   #define VA_WINDOPEN        0x4721
   #define AV_STARTPROG       0x4722
   #define VA_PROGSTART       0x4723
   #define AV_ACCWINDOPEN     0x4724
   #define VA_DRAGACCWIND     0x4725
   #define AV_ACCWINDCLOSED   0x4726
   #define AV_COPY_DRAGGED    0x4728
   #define VA_COPY_COMPLETE   0x4729
   #define AV_PATH_UPDATE     0x4730
   #define AV_WHAT_IZIT       0x4732
   #define VA_THAT_IZIT       0x4733
   #define AV_DRAG_ON_WINDOW  0x4734
   #define VA_DRAG_COMPLETE   0x4735
   #define AV_EXIT            0x4736
   #define AV_STARTED         0x4738
   #define VA_FONTCHANGED    0x4739
   #define AV_XWIND          0x4740
   #define VA_XOPEN          0x4741
   #define AV_VIEW           0x4751
   #define VA_VIEWED         0x4752
   #define AV_FILEINFO       0x4753
   #define VA_FILECHANGED    0x4754
   #define AV_COPYFILE       0x4755
   #define VA_FILECOPIED     0x4756
   #define AV_DELFILE        0x4757
   #define VA_FILEDELETED    0x4758
   #define AV_SETWINDPOS     0x4759

   #define VA_OB_UNKNOWN      0
   #define VA_OB_TRASHCAN     1
   #define VA_OB_SHREDDER     2
   #define VA_OB_CLIPBOARD    3
   #define VA_OB_FILE         4
   #define VA_OB_FOLDER       5
   #define VA_OB_DRIVE        6
   #define VA_OB_WINDOW       7
   #define VA_OB_NOTEPAD      8
   #define VA_OB_NOTE         9
#endif

/******************************************************************************/

/* Messages des D&D-Protokolles */

#define DD_OK                 0    /* Ok, - weitermachen                */
#define DD_NAK                1    /* Drag&Drop abbrechen               */
#define DD_EXT                2    /* Datenformat wird nicht akzeptiert */
#define DD_LEN                3    /* Wunsch nach weniger Daten         */
#define DD_TRASH              4    /* Ziel ist ein Papierkorb-Icon      */
#define DD_PRINTER            5    /* Ziel ist ein Drucker-Icon         */
#define DD_CLIPBOARD          6    /* Ziel ist ein Klemmbrett-Icon      */

/******************************************************************************/

/* GEMScript-Messages */
#ifndef __gemscript__
   #define __gemscript__

   /* GEMScript-Nachrichten */
   #define GS_REQUEST         0x1350
   #define GS_REPLY           0x1351
   #define GS_COMMAND         0x1352
   #define GS_ACK             0x1353
   #define GS_QUIT            0x1354
   #define GS_OPENMACRO       0x1355
   #define GS_MACRO           0x1356
   #define GS_WRITE           0x1357
   #define GS_CLOSEMACRO      0x1358

   typedef struct
   {
      long len;      /* L?nge der Struktur in Bytes */
      int16 version; /* Versionsnummer des Protokolles beim Sender (z.Z. 0x0120 = 1.2) */
      int16 msgs;    /* Bitmap der unterst?tzten Nachrichten und F?higkeiten (GSM_xxx) */
      long ext;      /* benutzte Endung, etwa '.SIC'                     */
   } GS_INFO;

   /* Kennung f?r den Empfang von GS_COMMAND */
   #define GSM_COMMAND        0x0001

   /* Kennung f?r Empfang von GS_OPENMACRO, GS_WRITE */
   /* und GS_CLOSEMACRO und Senden von GS_MACRO      */
   #define GSM_MACRO          0x0002

   /* Kennung f?r Versand von GS_OPENMACRO, GS_WRITE */
   /* und GS_CLOSEMACRO und Empfang von GS_MACRO     */
   #define GSM_WRITE          0x0004

   /* Hex-Codierung wird verstanden */
   #define GSM_HEXCODING      0x0008

   /* R?ckgabewerte der GEMScript-Funktionen (Anwendung & Fenster) */
   #define GSACK_OK           0
   #define GSACK_UNKNOWN      1
   #define GSACK_ERROR        2

#endif

/******************************************************************************/

/* OLGA-Messages */
#if !defined(OLGA_H) && !defined(__olga_c__)
   #define __olga_c__
   #define OLGA_H
   #define _ACS_OLGA_

   #define OLE_INIT                 0x4950
   #define OLE_EXIT                 0x4951
   #define OLE_NEW                  0x4952

   #define OLGA_INIT                0x1236
   #define OLGA_UPDATE              0x1238
   #define OLGA_ACK                 0x1239
   #define OLGA_RENAME              0x123a
   #define OLGA_OPENDOC             0x123b
   #define OLGA_CLOSEDOC            0x123c
   #define OLGA_LINK                0x123d
   #define OLGA_UNLINK              0x123e
   #define OLGA_UPDATED             0x123f
   #define OLGA_RENAMELINK          0x1240
   #define OLGA_LINKRENAMED         0x1241
   #define OLGA_GETOBJECTS          0x1242
   #define OLGA_OBJECTS             0x1243
   #define OLGA_BREAKLINK           0x1244
   #define OLGA_LINKBROKEN          0x1245
   #define OLGA_START               0x1246
   #define OLGA_GETINFO             0x1247
   #define OLGA_INFO                0x1248
   #define OLGA_IDLE                0x1249
   #define OLGA_ACTIVATE            0x124a
   #define OLGA_EMBED               0x124b
   #define OLGA_EMBEDDED            0x124c
   #define OLGA_UNEMBED             0x124d
   #define OLGA_GETSETTINGS         0x124e
   #define OLGA_SETTINGS            0x124f
   #define OLGA_REQUESTNOTIFICATION 0x1250
   #define OLGA_RELEASENOTIFICATION 0x1251
   #define OLGA_NOTIFY              0x1252
   #define OLGA_NOTIFIED            0x1253
   #define OLGA_SERVERTERMINATED    0x1254
   #define OLGA_CLIENTTERMINATED    0x1255
   #define OLGA_INPLACEUPDATE       0x1256
   #define OLGA_ID4UPDATE           0x1257
   #define OLGA_GETEXTENSION        0x1258
   #define OLGA_EXTENSION           0x1259
   #define OLGA_GETSERVERPATH       0x125a
   #define OLGA_SERVERPATH          0x125b
   #define OLGA_IE_BUTTON           0x125c
   #define OLGA_IE_KEY              0x125d

   #define OL_SERVER                0x0001
   #define OL_CLIENT                0x0002
   #define OL_PEER                  (OL_SERVER | OL_CLIENT)
   #define OL_CONF                  0x0400
   #define OL_IDLE                  0x0800
   #define OL_PIPES                 0x1000
   #define OL_START                 0x2000
   #define OL_MANAGER               0x4000
   #define OL_OEP                   0x0001

   #define OLS_TYPE                      1
   #define OLS_EXTENSION                 2
   #define OLS_NAME                      3

   #define OL_SRV_ID4               0x0001

#endif

/******************************************************************************/

/* DHST-Messages */
#if !defined(DHST)
   #define DHST

   #define DHST_ADD           0xDADD
   #define DHST_ACK           0xDADE

   /* Datenstruktur */
   typedef struct
   {
      char *appname;
      char *apppath;
      char *docname;
      char *docpath;
   } DHSTINFO;

#endif

/******************************************************************************/

/* SSP-Messages */
#if !defined(SSP)
   #define SSP

   /* Messages des SSP-Protokolls */
   #define SSP_SRASSR            0x126F
   #define SSP_SSIR              0x1270
   #define SSP_SPASI             0x1271
   #define SSP_SSUR              0x1272
   #define SSP_SPASA             0x1273
   #define SSP_SSA               0x1274

   /* Services zur Server-Registration */
   #define SSP_PSENDFILE         0x0001
   #define SSP_PSTATUSDISPLAY    0x0002
   #define SSP_PDISPLAYMESSAGE   0x0004
   #define SSP_PSENDMESSAGE      0x0008
   #define SSP_PUPLOADFILE       0x0010
   #define SSP_PCOMPRESSFILE     0x0020
   #define SSP_PCONTEXTPOPUP     0x0040
   #define SSP_PDISPLAYINFO      0x0080

   /* Services for Service Requesting Application Service Request */
   #define SSP_SENDFILE          0x0001
   #define SSP_STATUSDISPLAY     0x0002
   #define SSP_DISPLAYMESSAGE    0x0004
   #define SSP_SENDMESSAGE       0x0008
   #define SSP_UPLOADFILE        0x0010
   #define SSP_COMPRESSFILE      0x0020
   #define SSP_CONTEXTPOPUP      0x0040
   #define SSP_DISPLAYINFO       0x0080

   /* Data identification for Service Requesting Application Service Request */
   #define SSP_TEXT              0x0001
   #define SSP_FILENAME          0x0002
   #define SSP_STATUSICON        0x0004
   #define SSP_INFOBUF           0x0008
   #define SSP_CONTEXTREQUEST    0x0010

#endif

/******************************************************************************/

#if !defined(__XMESSAGE__)
   #define __XMESSAGE__

   #define XMESSAGE              0xFFF0
   #define XMSG_ASK              0xFFF1
   #define XMSG_OK               0xFFF2
#endif

/******************************************************************************/

/* Flags des File-Selector */
#define DOSMODE               1
#define NFOLLOWSLKS           2
#define GETMULTI              8

/******************************************************************************/

/* Sortierung beim File-Selector */
#define SORTBYNAME             0
#define SORTBYDATE             1
#define SORTBYSIZE             2
#define SORTBYTYPE             3
#define SORTBYNONE             4
#define SORTDEFAULT           -1

/******************************************************************************/

/* Globale Flags des File-Selectors (fslx_set_flags) */
#define SHOW8P3               1

/******************************************************************************/

/* Globale Flags des Druck-Dialoges (pdlg_create) */
#define PDLG_3D               1

/******************************************************************************/

/* Flags f?r das ?ffnen des Druck-Dialoges (pdlg_open) */
#define PDLG_PREFS            0x0000   /* Einstell-Dialog            */
#define PDLG_PRINT            0x0001   /* Druck-Dialog               */

#define PDLG_ALWAYS_COPIES    0x0010   /* Immer Kopien anbieten      */
#define PDLG_ALWAYS_ORIENT    0x0020   /* Immer Querformat anbieten  */
#define PDLG_ALWAYS_SCALE     0x0040   /* Immer Skalierung anbieten  */

#define PDLG_EVENODD          0x0100   /* Option f?r gerade/ungerade */
                                       /* Seiten anbieten            */

/******************************************************************************/

/* Flags f?r die Struktur PRN_SETTINGS */

/* <driver_mode>*/
#define  DM_BG_PRINTING       0x0001               /* Flag f?r Hintergrunddruck */

/* <page_flags> */
#define  PG_EVEN_PAGES        0x0001               /* nur Seiten mit gerader Seitennummer ausgeben */
#define  PG_ODD_PAGES         0x0002               /* nur Seiten mit ungerader Seitennummer ausgeben */

/* <first_page/last_page> */
#define  PG_MIN_PAGE          1
#define  PG_MAX_PAGE          9999

/* <orientation> */
#define  PG_UNKNOWN           0x0000               /* Ausrichtung unbekannt und nicht verstellbar */
#define  PG_PORTRAIT          0x0001               /* Seite im Hochformat ausgeben */
#define  PG_LANDSCAPE         0x0002               /* Seite im Querformat ausgeben */

/******************************************************************************/

/* Die Buttons des Druck-Dialoges */
#define PDLG_CANCEL           1
#define PDLG_OK               2

/******************************************************************************/

#define PDLG_CHG_SUB          0x80000000L
#define PDLG_IS_BUTTON        0x40000000L

/******************************************************************************/

#define PDLG_PREBUTTON        0x20000000L
#define PDLG_PB_OK            1
#define PDLG_PB_CANCEL        2
#define PDLG_PB_DEVICE        3

/******************************************************************************/

#define PDLG_BUT_OK           ( PDLG_PREBUTTON + PDLG_PB_OK )
#define PDLG_BUT_CNCL         ( PDLG_PREBUTTON + PDLG_PB_CANCEL )
#define PDLG_BUT_DEV          ( PDLG_PREBUTTON + PDLG_PB_DEVICE )

/******************************************************************************/

/* Flags f?r die Unterdialog des Druck-Dialoges */
#define PRN_STD_SUBS          0x0001         /* Standard-Unterdialoge f?r NVDI-Drucker */
#define PRN_FSM_SUBS          0x0002         /* Standard-Unterdialoge f?r FSM-Drucker */
#define PRN_QD_SUBS           0x0004         /* Standard-Unterdialoge f?r QuickDraw-Drucker */

/******************************************************************************/

/* Globale Flags des Font-Dialoges (fnts_create) */
#define FNTS_3D               1

/******************************************************************************/

/* Art der zugelassenen Zeichens?tze (fnts_create) */
#define FNTS_BTMP             0x01  /* Bitmap-Fonts anzeigen */
#define FNTS_OUTL             0x02  /* Vektor-Fonts anzeigen */
#define FNTS_MONO             0x04  /* ?quidistante Fonts anzeigen */
#define FNTS_PROP             0x08  /* Proportionale Fonts anzeigen */

/******************************************************************************/

/* Anzeige der Buttons im Dialog (fnts_open, fnts_do) */
#define FNTS_SNAME            0x0001   /* Checkbox f?r Name selektieren */
#define FNTS_SSTYLE           0x0002   /* Checkbox f?r Stil selektieren */
#define FNTS_SSIZE            0x0004   /* Checkbox f?r Gr??e selektieren */
#define FNTS_SRATIO           0x0008   /* Checkbox f?r Verh?ltnis selektieren */
#define FNTS_CHNAME           0x0100   /* Checkbox f?r Namen anzeigen */
#define FNTS_CHSTYLE          0x0200   /* Checkbox f?r Stil anzeigen */
#define FNTS_CHSIZE           0x0400   /* Checkbox f?r Gr??e anzeigen */
#define FNTS_CHRATIO          0x0800   /* Checkbox f?r Verh?ltnis anzeigen */
#define FNTS_RATIO            0x1000   /* Verh?ltnis Breite/H?he einstellbar */
#define FNTS_BSET             0x2000   /* Button "Setzen" anw?hlbar */
#define FNTS_BMARK            0x4000   /* Button "Markieren" anw?hlbar */

/******************************************************************************/

/* Konstanten f?r die Buttons im fnts-Dialog */
#define FNTS_CANCEL           1
#define FNTS_OK               2
#define FNTS_SET              3
#define FNTS_MARK             4
#define FNTS_OPTION           5

/* Konstante aus GEMLIB */
#define FNTS_OPT              FNTS_OPTION

/******************************************************************************/

/* Konstanten f?r die Listboxen (lbox_...) */
#define LBOX_VERT               1         /* Listbox mit vertikalem Slider                      */
#define LBOX_AUTO               2         /* Auto-Scrolling                                     */
#define LBOX_AUTOSLCT           4         /* automatische Darstellung beim Auto-Scrolling       */
#define LBOX_REAL               8         /* Real-Time-Slider                                   */
#define LBOX_SNGL              16         /* nur ein anw?hlbarer Eintrag                        */
#define LBOX_SHFT              32         /* Mehrfachselektionen mit Shift                      */
#define LBOX_TOGGLE            64         /* Status eines Eintrags bei Selektion wechseln       */
#define LBOX_2SLDRS           128         /* Listbox hat einen hor. und einen vertikalen Slider */

/******************************************************************************/

/* Einstellbare Farbmodi eines Druckermodus */
#define  CC_MONO              0x0001               /* 2 Graut?ne */
#define  CC_4_GREY            0x0002               /* 4 Graut?ne */
#define  CC_8_GREY            0x0004               /* 8 Graut?ne */
#define  CC_16_GREY           0x0008               /* 16 Graut?ne */
#define  CC_256_GREY          0x0010               /* 256 Graut?ne */
#define  CC_32K_GREY          0x0020               /* 32768 Farben in Graut?ne wandeln */
#define  CC_65K_GREY          0x0040               /* 65536 Farben in Graut?ne wandeln */
#define  CC_16M_GREY          0x0080               /* 16777216 Farben in Graut?ne wandeln */

#define  CC_2_COLOR           0x0100               /* 2 Farben */
#define  CC_4_COLOR           0x0200               /* 4 Farben */
#define  CC_8_COLOR           0x0400               /* 8 Farben */
#define  CC_16_COLOR          0x0800               /* 16 Farben */
#define  CC_256_COLOR         0x1000               /* 256 Farben */
#define  CC_32K_COLOR         0x2000               /* 32768 Farben */
#define  CC_65K_COLOR         0x4000               /* 65536 Farben */
#define  CC_16M_COLOR         0x8000               /* 16777216 Farben */

#define  NO_CC_BITS           16

/******************************************************************************/

/* Einstellbare Rasterverfahren */
#define  DC_NONE              0                    /* keine Rasterverfahren */
#define  DC_FLOYD             1                    /* einfacher Floyd-Steinberg */

#define  NO_DC_BITS           1

/******************************************************************************/

/* Druckereigenschaften */
#define  PC_FILE              0x0001               /* Drucker kann ?ber GEMDOS-Dateien angesprochen werden */
#define  PC_SERIAL            0x0002               /* Drucker kann auf der seriellen Schnittstelle angesteuert werden */
#define  PC_PARALLEL          0x0004               /* Drucker kann auf der parallelen Schnittstelle angesteuert werden */
#define  PC_ACSI              0x0008               /* Drucker kann auf der ACSI-Schnittstelle ausgeben */
#define  PC_SCSI              0x0010               /* Drucker kann auf der SCSI-Schnittstelle ausgeben */

#define  PC_BACKGROUND        0x0080               /* Treiber kann im Hintergrund ausdrucken */

#define  PC_SCALING           0x0100               /* Treiber kann Seite skalieren */
#define  PC_COPIES            0x0200               /* Treiber kann Kopien einer Seite erstellen */

/******************************************************************************/

/* Moduseigenschaften */
#define  MC_PORTRAIT          0x0001               /* Seite kann im Hochformat ausgegeben werden */
#define  MC_LANDSCAPE         0x0002               /* Seite kann im Querformat ausgegeben werden */
#define  MC_REV_PTRT          0x0004               /* Seite kann um 180 Grad gedreht im Hochformat ausgegeben werden */
#define  MC_REV_LNDSCP        0x0008               /* Seite kann um 180 Grad gedreht im Querformat ausgegeben werden */
#define  MC_ORIENTATION       0x000F

#define  MC_SLCT_CMYK         0x0400               /* Treiber kann bestimmte Farbebenen ausgeben */
#define  MC_CTRST_BRGHT       0x0800               /* Treiber kann Kontrast und Helligkeit ver?ndern */

/******************************************************************************/

/* Flags f?r plane_flags in PRN_SETTINGS */
#define  PLANE_BLACK          0x0001
#define  PLANE_YELLOW         0x0002
#define  PLANE_MAGENTA        0x0004
#define  PLANE_CYAN           0x0008

/******************************************************************************/

/* Definitionen f?r <flags> f?r wdlg_create */
#define  WDLG_BKGD            1           /* Permit background operation */

/******************************************************************************/

/* Funktionsnummern f?r <obj> in handle_exit(...) bei wdlg_create */
#define  HNDL_INIT             -1         /* Initialise dialog */
#define  HNDL_MESG             -2         /* Initialise dialog */
#define  HNDL_CLSD             -3         /* Dialog window was closed */
#define  HNDL_OPEN             -5         /* End of dialog initialisation (second  call at end of wdlg_init) */
#define  HNDL_EDIT             -6         /* Test characters for an edit-field */
#define  HNDL_EDDN             -7         /* Character was entered in edit-field */
#define  HNDL_EDCH             -8         /* Edit-field was changed */
#define  HNDL_MOVE             -9         /* Dialog was moved */
#define  HNDL_TOPW            -10         /* Dialog-window has been topped */
#define  HNDL_UNTP            -11         /* Dialog-window is not active */

/******************************************************************************/
/*                                                                            */
/* Die diversen AES-Strukturen                                                */
/*                                                                            */
/******************************************************************************/

/* Der GEM-Parameterblock, wie in Pure-C kennt */
typedef struct
{
   int16 contrl[15];
   int16 global[80];
   int16 intin[128];
   int16 intout[45];
   int16 ptsout[128];
   void *addrin[128];
   void *addrout[6];
   int16 ptsin[128];
} GEMPARBLK;

/******************************************************************************/

/* Das global-Array als Struktur */
typedef struct
{
   int16 ap_version;
   int16 ap_count;
   int16 ap_id;
   int32 ap_private;
   int32 ap_ptree;
   int32 ap_pmem;
   int16 ap_lmem;
   int16 ap_nplanes;
   int32 ap_res;
   int16 ap_bvdisk;
   int16 ap_bvhard;
} GlobalArray;

/******************************************************************************/

typedef struct
{
   int16 *contrl;
   int16 *global;
   int16 *intin;
   int16 *intout;
   int16 *addrin;
   int16 *addrout;
} AESPB;

/******************************************************************************/

/* Mausrechteck f?r EVNT_multi() */
typedef struct
{
   int16 m_out;
   int16 m_x;
   int16 m_y;
   int16 m_w;
   int16 m_h;
} MOBLK;

/******************************************************************************/

/* Ein paar "forward"-Deklarationen der Strukturen */
struct object;
struct parm_block;

/******************************************************************************/

/* Die TEDINFO-Struktur */
typedef struct text_edinfo
{
   char  *te_ptext;         /* Zeiger auf einen String          */
   char  *te_ptmplt;        /* Zeiger auf die Stringmaske       */
   char  *te_pvalid;        /* Zeiger auf den G?ltigkeitsstring */
   int16 te_font;           /* Zeichensatz                      */
   int16 te_fontid;
   int16 te_just;           /* Justierung des Texts             */
   int16 te_color;          /* Farbe                            */
   int16 te_fontsize;
   int16 te_thickness;      /* Rahmenbreite                     */
   int16 te_txtlen;         /* Maximale L?nge des Textes        */
   int16 te_tmplen;         /* L?nge der Stringmaske            */
} TEDINFO;

/* Zugriff f?r die PureC-Komponenten te_junk1 und te_junk2 */
#define te_junk1  te_fontid
#define te_junk2  te_fontsize

/******************************************************************************/

/* Die ICONBLK-Struktur */
typedef struct icon_block
{
   int16 *ib_pmask;        /* Zeiger auf die Maske          */
   int16 *ib_pdata;        /* Zeiger auf das Icon-Bild      */
   char  *ib_ptext;        /* Zeiger auf einen String       */
   int16 ib_char;          /* In den unteren 8 Bit das dar- */
                           /* zustellende Zeichen, in den   */
                           /* oberen 8 Bit die Farbe des    */
                           /* gesetzten (obere 4 Bit) und   */
                           /* des gel?schten (untere 4 Bit) */
                           /* Bits des Bitmuster IB_PDATA   */
   int16 ib_xchar;         /* x-Koordinate des Buchstabens  */
   int16 ib_ychar;         /* y-Koordinate des Buchstabens  */
   int16 ib_xicon;         /* x-Koordinate des Icons        */
   int16 ib_yicon;         /* y-Koordinate des Icons        */
   int16 ib_wicon;         /* Breite des Icons              */
   int16 ib_hicon;         /* H?he des Icons                */
   int16 ib_xtext;         /* x-Koordinate des Textes       */
   int16 ib_ytext;         /* y-Koordinate des Textes       */
   int16 ib_wtext;         /* Breite des Textes             */
   int16 ib_htext;         /* H?he des Textes               */
} ICONBLK;

/******************************************************************************/

/* Farb-Icon-Struktur */
typedef struct cicon_data
{
   int16 num_planes;
   int16 *col_data;
   int16 *col_mask;
   int16 *sel_data;
   int16 *sel_mask;
   struct cicon_data  *next_res;
} CICON;

/******************************************************************************/

/* Die IconBlk-Struktur f?r Farb- & Monochrom-Icons */
typedef struct cicon_blk
{
   ICONBLK  monoblk;
   CICON    *mainlist;
} CICONBLK;

/******************************************************************************/

/* Die BITBLK-Struktur */
typedef struct bit_block
{
   int16 *bi_pdata;     /* Zeiger auf die Grafikdaten    */
   int16 bi_wb;         /* Breite des Bildes in Bytes    */
   int16 bi_hl;         /* H?he in Linien                */
   int16 bi_x;          /* x-Position                    */
   int16 bi_y;          /* y-Position                    */
   int16 bi_color;      /* Vordergrundfarbe              */
} BITBLK;

/******************************************************************************/

/* Die USERBLK-Struktur (ACS verwendet stattdessen die AUSERBLK-Struktur!) */
typedef struct user_block
{
   int16 CDECL (*ub_code)(struct parm_block *pb);  /* Zeiger auf die Zeichen-Funktion */
   int32 ub_parm;                                  /* Optionaler Parameter            */
} USERBLK;

/******************************************************************************/

/* Die AUSERBLK-Struktur (wird von ACS anstelle USERBLK verwendet) */
typedef struct auser_block
{
   /*  0 */ int16 CDECL (*ub_code)(struct parm_block *pb);  /* Zeichenroutine         */
   /*  4 */ int32 ub_parm;                                  /* Optionaler Parameter   */
   /*  8 */ boolean (*ub_serv)(struct object *entry,        /* Service-Routine des    */
               int16 task, void *in_out);          /* Userdefs               */
   /* 12 */ void  *ub_ptr1;                                 /* Userzeiger (Daten)     */
   /* 16 */ void  *ub_ptr2;                                 /* Userzeiger (Fenster)   */
   /* 20 */ void  *ub_ptr3;                                 /* Userzeiger (obnr)      */
   /* 24 */ char  *bubble;                                  /* BubbleGEM-Hilfe-String */
   /* 28 */ char  *context;                                 /* Context-Popup-String   */
   /* 32 */ 
} AUSERBLK;

/******************************************************************************/

/* Die Komponente ob_spec in OBJECT als Bitfeld */
typedef struct
{
   unsigned character   :  8;
   signed   framesize   :  8;
   unsigned framecol    :  4;
   unsigned textcol     :  4;
   unsigned textmode    :  1;
   unsigned fillpattern :  3;
   unsigned interiorcol :  4;
} bfobspec;

/* Alias-Name der Struktur */
#define BFOBSPEC  bfobspec

/******************************************************************************/

/* Die verschiedenen M?glichkeiten der Komponente ob_spec in OBJECT */
typedef union obspecptr
{
   int32    index;            /* f?r das RSC-C-output      */
   union obspecptr *indirect; /* Zeiger uaf ob_spec        */
   bfobspec obspec;           /* Bitfield                  */
   TEDINFO  *tedinfo;         /* Zeiger auf TEDINFO        */
   ICONBLK  *iconblk;         /* Zeiger auf ICONBLK        */
   CICONBLK *ciconblk;
   BITBLK   *bitblk;          /* Zeiger auf BITBLK         */
   USERBLK  *userblk;         /* Zeiger auf USERBLK        */
   AUSERBLK *auserblk;        /* Zeiger auf AUSERBLK (ACS) */
   char     *free_string;     /* zeiger auf String         */
} OBSPEC;

/******************************************************************************/

/* Die OBJECT-Struktur f?r die AES */
typedef struct object
{
   int16 ob_next;
   int16 ob_head;
   int16 ob_tail;
   uint16 ob_type;
   uint16 ob_flags;
   uint16 ob_state;
   OBSPEC ob_spec;
   int16 ob_x;
   int16 ob_y;
   int16 ob_width;
   int16 ob_height;
} OBJECT;

/******************************************************************************/

/* Die PARMBLK-Struktur (f?r UserDefs USERDEF & AUSERDEF wichtig!) */
typedef struct parm_block
{
   OBJECT   *pb_tree;      /* Zeiger auf den Objektbaum       */
   int16    pb_obj;        /* Nummer des Objekts              */
   int16    pb_prevstate;  /* Vorheriger Objektstatus         */
   int16    pb_currstate;  /* Neuer Objektstatus              */
   int16    pb_x;          /* Objektkoordinaten               */
   int16    pb_y;          /*      -"-                        */
   int16    pb_w;          /*      -"-                        */
   int16    pb_h;          /*      -"-                        */
   int16    pb_xc;         /* Clipping-Koordinaten            */
   int16    pb_yc;         /*      -"-                        */
   int16    pb_wc;         /*      -"-                        */
   int16    pb_hc;         /*      -"-                        */
   int32    pb_parm;       /* Optionale Parameter aus USERBLK */
} PARMBLK;

/******************************************************************************/

/* Datentyp f?r die Funktionszeiger der Klick- & Drag-Routinen in ACS */
typedef void (*Aaction)(void);

/******************************************************************************/

/* Die AOBJECT-Struktur f?r die ACS-Erweiterungen */
typedef struct __aobject
{
   /*   0 */ Aaction click;    /* Klick-Routine                      */
   /*   4 */ Aaction drag;     /* Drag-Routine                       */
   /*   8 */ int16 ob_flags;   /* ob_flags wie im OBJECT zuvor       */
                     /* ACHTUNG: mu? an gleicher Position  */
                     /*          sein, wird gepr?ft!       */
   /*  10 */ int16 key;        /* Tastenk?rzel                       */
   /*  12 */ void *userp1;     /* Userzeiger 1                       */
   /*  16 */ void *userp2;     /* Userzeiger 2                       */
   /*  20 */ int16 mo_index;   /* Index der Mausform ?ber diesem Obj */
   /*  22 */ int16 type;       /* ACS-Objekt-Typ                     */
} AOBJECT;

/******************************************************************************/

/* Zusammenfassung OBJECT und AOBJECT */
typedef union
{
   OBJECT obj;
   AOBJECT aobj;
} GEMObject;

/******************************************************************************/

/* Struktur f?r de Mausform */
typedef struct mfstr
{
   int16 mf_xhot;
   int16 mf_yhot;
   int16 mf_nplanes;
   int16 mf_fg;
   int16 mf_bg;
   int16 mf_mask[16];
   int16 mf_data[16];
} MFORM;

/******************************************************************************/

#if defined(_ACS_OLGA_) || (!defined(OLGA_H) && !defined(__olga_t__))
   #define OLGA_H
   #define __olga_t__
   #define _ACS_OLGA_

   typedef struct
   {
      int16 x;
      int16 y;
      int16 w;
      int16 h;
      int16 x1;
      int16 y1;
      int16 x2;
      int16 y2;
   } OLGARect;

   /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

   typedef struct
   {
      int32    magic;
      uint16   version;
      uint16   skip;
   } OLGAInfHeader;

   /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

   typedef struct
   {
      int32 id;
      int32 length;
   } OLGABlockHeader;

   /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

   typedef struct
   {
      int16 Red;
      int16 Green;
      int16 Blue;
   } OLGARGB;

   /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

   typedef struct
   {
      int     Count;
      OLGARGB Colors[];
   } OLGAColorTable;

   /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

   struct _OLGAObjectInfo;

   typedef void cdecl (*OlgaDraw)(struct _OLGAObjectInfo *objectinfo, int16 outScreen,
                     int16 outHandle, int16 outDevID, OLGARect *Size, OLGARect *Clip);
   typedef void cdecl (*OlgaUnembed)(struct _OLGAObjectInfo *objectinfo);
   typedef void cdecl (*OlgaXDraw)(struct _OLGAObjectInfo *objectinfo, int16 outScreen,
                     int16 outHandle, int16 outDevID, OLGARect *Size, OLGARect *Clip,
                     int32 Width_mm1000, int32 Height_mm1000, int32 Scale);

   /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

   typedef struct _OLGAObjectInfo
   {
      char           *Filename;
      AESPB          *ClientGEMPB;
      int32          ClientData;
      int32          ServerData;
      int16          CBLock;
      int16          CBCount;
      OlgaDraw       CBDraw;
      OlgaUnembed    CBUnembed;
      OlgaXDraw      CBXDraw;
      OLGAColorTable *cbColorTable;
      int16          cbClientID;
      int16          cbServerID;
      /* IE */
   } OLGAObjectInfo;

   /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

   typedef struct
   {
      int32          len;
      int16          wHandle;
      int16          kShift;
      OLGARect       *Size;
      OLGAObjectInfo *objectinfo;
   } OLGAIEInfo;

#endif

/******************************************************************************/

/* Struktur der Ereignisse (f?r appl_tplay und appl_trecord) */
typedef struct
{
   int32 type;
   int32 what;
} APPLRECORD;

/******************************************************************************/

/* Input-Struktur f?r evnt_event */
/* (ein evnt_multi-Binding ohne  */
/* gro?es Parameter-Kopieren)    */
typedef struct
{
   int16 ev_mflags;
   int16 ev_mbclicks;
   int16 ev_mbmask;
   int16 ev_mbstate;
   int16 ev_mm1flags;
   GRECT xywh1;
   int16 ev_mm2flags;
   GRECT xywh2;
   int16 reserved;
   uint32 ev_mtcount;
   int16 ev_mmgpbuff[8];
   int16 ev_mwhlpbuff[16];
} MultiEventIn;

/******************************************************************************/

/* Output-Struktur f?r evnt_event */
/* (ein evnt_multi-Binding ohne   */
/* gro?es Parameter-Kopieren)     */
typedef struct
{
   int16 reserved;
   int16 ev_mmox;
   int16 ev_mmoy;
   int16 ev_mmbutton;
   int16 ev_mmokstate;
   int16 ev_mkreturn;
   int16 ev_mbreturn;
} MultiEventOut;

/******************************************************************************/

typedef struct
{
   int16 mwhich;         /* Art der Ereignisse */
   int16 mx;             /* x-Koordinate des Mauszeigers */
   int16 my;             /* y-Koordinate des Mauszeigers */
   int16 mbutton;        /* gedr?ckte Maustaste */
   int16 kstate;         /* Status der Sondertasten (kbshift) */
   int16 key;            /* Scancode der gedr?ckten Taste */
   int16 mclicks;        /* Anzahl der Mausklicks */
   int16 reserved[9];    /* reserviert */
   int16 msg[16];        /* Message-Buffer */
} EVNT;

/******************************************************************************/

/* F?r den optimierten Aufruf EventMulti von evnt_multi von Pure-C */
typedef struct
{
   /* Input-Parameter */
   int16 ev_mflags;
   int16 ev_mbclicks;
   int16 ev_bmask;
   int16 ev_mbstate;
   int16 ev_mm1flags;
   int16 ev_mm1x;
   int16 ev_mm1y;
   int16 ev_mm1width;
   int16 ev_mm1height;
   int16 ev_mm2flags;
   int16 ev_mm2x;
   int16 ev_mm2y;
   int16 ev_mm2width;
   int16 ev_mm2height;
   int16 ev_mtlocount;
   int16 ev_mthicount;

   /* Output-Parameter */
   int16 ev_mwich;
   int16 ev_mmox;
   int16 ev_mmoy;
   int16 ev_mmobutton;
   int16 ev_mmokstate;
   int16 ev_mkreturn;
   int16 ev_mbreturn;

   /* Der Message-Puffer */
   int16 ev_mmgpbuf[8];
} EVENT;

/******************************************************************************/

/* Structur for a simpler binding from evnt_button, evnt_mouse and            */
/* graf_mkstate from the mt_aes.lib. The function are not so present          */

typedef struct
{
   int16 x;
   int16 y;
   int16 bstate;
   int16 kstate;
} EVNTDATA;

/******************************************************************************/

/* Struktur f?r menu_attach */
typedef struct
{
   OBJECT *mn_tree;
   int16 mn_menu;
   int16 mn_item;
   int16 mn_scroll;
   int16 mn_keystate;
} MENU;

/******************************************************************************/

/* Men?-Einstellungen (f?r menu_settings) */
typedef struct
{
   int32 display;
   int32 drag;
   int32 delay;
   int32 speed;
   int16 height;
} MN_SET;

/******************************************************************************/

typedef struct
{
   char *string;           /* etwa "TOS|KAOS|MAG!X"          */
   int16 num;              /* Nr. der aktuellen Zeichenkette */
   int16 maxnum;           /* maximal erlaubtes <num>        */
} SWINFO;

/******************************************************************************/

typedef struct
{
   OBJECT *tree;           /* Popup- Men?                    */
   int16 obnum;            /* aktuelles Objekt von <tree>    */
} POPINFO;

/******************************************************************************/

/* Struktur f?r erweiterte Start-Daten (f?r shel_write) */
typedef struct
{
   char *newcmd;
   int32 psetlimit;
   int32 prenice;
   char *defdir;
   char *env;
} SHELW;

/* Andere Definition daf?r (aus MagiC-Doku) */
typedef struct
{
   char  *command;
   int32 limit;
   int32 nice;
   char  *defdir;
   char  *env;
} XSHW_COMMAND;

/******************************************************************************/

typedef struct
{
   int32 CDECL (*proc)(void *par);
   void     *user_stack;
   uint32   stacksize;
   int16    mode;    /* immer auf 0 setzen! */
   int32    res1;    /* immer auf 0L setzen! */
} THREADINFO;

/******************************************************************************/

/* Header einer RSC-Datei */
typedef struct rshdr
{
   uint16 rsh_vrsn;
   uint16 rsh_object;
   uint16 rsh_tedinfo;
   uint16 rsh_iconblk;    /* list of ICONBLKS */
   uint16 rsh_bitblk;
   uint16 rsh_frstr;
   uint16 rsh_string;
   uint16 rsh_imdata;     /* image data */
   uint16 rsh_frimg;
   uint16 rsh_trindex;
   uint16 rsh_nobs;       /* counts of various structs */
   uint16 rsh_ntree;
   uint16 rsh_nted;
   uint16 rsh_nib;
   uint16 rsh_nbb;
   uint16 rsh_nstring;
   uint16 rsh_nimages;
   uint16 rsh_rssize;     /* total bytes in resource */
} RSHDR;

/******************************************************************************/

#ifndef GEMLIB_XATTR
   #if defined(__TOS) || defined(_file_h_) || defined (_filesys_h_)
      #define GEMLIB_XATTR XATTR
   #else
      #define GEMLIB_XATTR void
   #endif
#endif

/******************************************************************************/

/* Die Filter-Funktion f?r fslx_open */
typedef int16 (cdecl XFSL_FILTER)(UCHAR *path, UCHAR *name, GEMLIB_XATTR *xa);

/* Filter-Funktion f?r fsel_boxinput */
typedef void cdecl (*FSEL_CALLBACK)( int16 *msg );

/******************************************************************************/

/* F?r die FNTS-Funktionen */
typedef void *FNT_DIALOG;

/* F?r die LBOX-Funktionen */
typedef void *LIST_BOX;

typedef void *DIALOG;

typedef void *PRN_DIALOG;

typedef void *XEDITINFO;

/******************************************************************************/

/* F?r die WDLG-Funktionen */
typedef short CDECL (*HNDL_OBJ)(DIALOG *dialog, EVNT *events, int16 obj,
                              int16 clicks, void *data);

/******************************************************************************/

typedef void (CDECL *UTXT_FN)(int16 x, int16 y, int16 *clip_rect,
                     int32 id, int32 pt, int32 ratio, CHAR *string);

/******************************************************************************/

typedef struct _fnts_item
{
   struct   _fnts_item  *next;   /* Zeiger auf den n?chsten Font oder 0L */
   UTXT_FN  display;             /* Anzeige-Funktion f?r eigene Fonts    */
   int32    id;                  /* ID des Fonts                         */
   int16    index;               /* mu? 0 sein, da kein VDI-Font         */
   CHAR     mono;                /* Flag f?r ?quidistante Fonts          */
   CHAR     outline;             /* Flag f?r Vektorfont                  */
   int16    npts;                /* Anzahl der vordefinierten Punkth?hen */
   CHAR     *full_name;          /* Zeiger auf den vollst?ndigen Namen   */
   CHAR     *family_name;        /* Zeiger auf den Familiennamen         */
   CHAR     *style_name;         /* Zeiger auf den Stilnamen             */
   CHAR     *pts;                /* Zeiger auf Feld mit Punkth?hen       */
   int32    reserved[4];         /* reserviert, m?ssen 0 sein            */
} FNTS_ITEM;

/******************************************************************************/

typedef struct _lbox_item
{
    struct _lbox_item *next;  /* Zeiger auf den n?chsten Eintrag */
                              /* in der Scroll-Liste             */

    int16   selected;         /* Objekt selektiert?     */
    int16   data1;            /* Daten f?r das Programm */
    void    *data2;
    void    *data3;

} LBOX_ITEM;

/******************************************************************************/

typedef void (cdecl *SLCT_ITEM)( LIST_BOX *box, OBJECT *tree,
                                 LBOX_ITEM *item,
                                 void *user_data, int16 obj_index,
                                 int16 last_state );
/******************************************************************************/

typedef int16 (cdecl *SET_ITEM)( LIST_BOX *box, OBJECT *tree,
                                 LBOX_ITEM *item,
                                 int16 obj_index, void *user_data,
                                 GRECT *rect, int16 first );

/******************************************************************************/

/* "Forward-Deklarationen" f?r die Druckdialoge */
struct _pdlg_sub;
struct _prn_entry;
struct _prn_settings;
struct _drv_entry;

/******************************************************************************/

/* Typen der Funktionszeiger f?r die Druckdialoge */
typedef int32 (cdecl *PRN_SWITCH)( struct _drv_entry *drivers,
                                   struct _prn_settings *settings,
                                   struct _prn_entry *old_printer,
                                   struct _prn_entry *new_printer );

typedef int32 (cdecl *PDLG_INIT)( struct _prn_settings *settings,
                                  struct _pdlg_sub *sub );

typedef int32 (cdecl *PDLG_HNDL)( struct _prn_settings *settings,
                                  struct _pdlg_sub *sub,
                                  int16 exit_obj );

typedef int32 (cdecl *PDLG_RESET)( struct _prn_settings *settings,
                                   struct _pdlg_sub *sub );

/******************************************************************************/

/* Wird f?r die Druckdialoge von WDialog ben?tigt */
typedef struct _prn_settings
{
   int32 magic;            /* 'pset'                                 */
   int32 length;           /* (+) Strukturl?nge                      */
   int32 format;           /* Strukturtyp                            */
   int32 reserved;         /* reserviert                             */

   int32 page_flags;       /* (+) Flags, u.a. gerade/ungerade Seiten */
                           /* 0x0001 = nur Seiten mit gerader Nummer */
                           /* 0x0002 = dto. mit ungeraden Nummern    */

   int16 first_page;       /* (+) erste zu druckende Seite (min.1)   */
   int16 last_page;        /* (+) dto. letzte Seite (max. 9999)      */
   int16 no_copies;        /* (+) Anzahl der Kopien                  */

   int16 orientation;      /* (+) Drehung                            */
                           /* 0x0000 = Ausichtung unbekannt und      */
                           /*          nicht verstellbar             */
                           /* 0x0001 = Seite im Hochformat ausgeben  */
                           /* 0x0002 = Seite im Querformat ausgeben  */

   int32 scale;            /* (+) Skalierung: 0x10000L = 100%        */
   int16 driver_id;        /* (+) VDI-Ger?tenummer                   */
   int16 driver_type;      /* Typ des eingestellten Treibers         */
   int32 driver_mode;      /* Flags, u.a. f?r Hintergrunddruck       */
   int32 reserved1;        /* reserviert                             */
   int32 reserved2;        /* reserviert                             */

   int32 printer_id;       /* Druckernummer                          */
   int32 mode_id;          /* Modusnummer                            */
   int16 mode_hdpi;        /* horizontale Aufl?sung in dpi           */
   int16 mode_vdpi;        /* vertikale Aufl?sung in dpi             */
   int32 quality_id;       /* Druckmodus (hardw?rem??ige Qualit?t,   */
                           /* z.B. Microweave oder Econofast)        */

   int32 color_mode;       /* Farbmodus                              */
   int32 plane_flags;      /* Flags f?r auszugebende Farbebenen      */
                           /* (z.B. nur cyan)                        */
   int32 dither_mode;      /* Rasterverfahren                        */
   int32 dither_value;     /* Parameter f?r das Rasterverfahren      */

   int32 size_id;          /* Papierformat                           */
   int32 type_id;          /* Papiertyp (normal, glossy)             */
   int32 input_id;         /* Papiereinzug                           */
   int32 output_id;        /* Papierauswurf                          */

   int32 contrast;         /* Kontrast:   0x10000L = normal          */
   int32 brightness;       /* Helligkeit: 0x1000L  = normal          */
   int32 reserved3;        /* reserviert                             */
   int32 reserved4;        /* reserviert                             */
   int32 reserved5;        /* reserviert                             */
   int32 reserved6;        /* reserviert                             */
   int32 reserved7;        /* reserviert                             */
   int32 reserved8;        /* reserviert                             */
   int8  device[128];      /* Dateiname f?r den Ausdruck             */

#ifdef __PRINTING__
   TPrint   mac_settings;  /* Einstellung des Mac-Druckertreibers    */
#else
   struct
   {
      UCHAR inside[120];
   } mac_settings;
#endif
} PRN_SETTINGS;

/******************************************************************************/

/* Wird f?r die Druckdialoge von WDialog ben?tigt */
typedef struct _pdlg_sub
{
   struct _pdlg_sub *next;       /* Zeiger auf Nachfolger           */
   int32       length;           /* Strukturl?nge                   */
   int32       format;           /* Datenformat                     */
   int32       reserved;         /* reserviert                      */

   void        *drivers;         /* nur f?r interne Dialoge         */
   int16       option_flags;     /* verschiedene Flags              */
   int16       sub_id;           /* Kennung des Unterdialogs        */
   DIALOG      *dialog;          /* Zeiger auf die Struktur des     */
                                 /* Fensterdialogs oder 0L          */

   OBJECT      *tree;            /* Zeiger auf den Objektbaum       */
   int16       index_offset;     /* Offset des Unterdialogs         */
   int16       reserved1;        /* reserviert                      */
   int32       reserved2;        /* reserviert                      */
   int32       reserved3;        /* reserviert                      */
   int32       reserved4;        /* reserviert                      */

   PDLG_INIT   init_dlg;         /* Initialisierungsfunktion        */
   PDLG_HNDL   do_dlg;           /* Behandlungsfunktion             */
   PDLG_RESET  reset_dlg;        /* Zur?cksetzfunktion              */
   int32       reserved5;        /* reserviert                      */

   OBJECT      *sub_icon;        /* Zeiger auf das Icon der Listbox */
   OBJECT      *sub_tree;        /* Objektbaum des Unterdialogs     */
   int32       reserved6;        /* reserviert                      */
   int32       reserved7;        /* reserviert                      */

   int32       private1;         /* dialogeigene Informationen-1    */
   int32       private2;         /* dialogeigene Informationen-2    */
   int32       private3;         /* dialogeigene Informationen-3    */
   int32       private4;         /* dialogeigene Informationen-4    */
} PDLG_SUB;

/******************************************************************************/

/* Wird f?r die Druckdialoge von WDialog ben?tigt */
typedef struct _media_type
{
   struct _media_type   *next;   /* Zeiger auf Nachfolger     */
   int32       type_id;          /* Kennung des Papierformats */
   CHAR        name[32];         /* Name des Papierformats    */
} MEDIA_TYPE;

/******************************************************************************/

/* Wird f?r die Druckdialoge von WDialog ben?tigt */
typedef struct _media_size
{
   struct _media_size *next;     /* Zeiger auf Nachfolger     */
   int32       size_id;          /* Kennung des Papierformats */
   CHAR        name[32];         /* Name des Papierformats    */
} MEDIA_SIZE;

/******************************************************************************/

/* Typen der Funktionszeiger f?r die Druckdialoge */
typedef struct _drv_entry
{
   struct _drv_entry *next;
} DRV_ENTRY;

/******************************************************************************/

/* Wird f?r die Druckdialoge von WDialog ben?tigt */
typedef struct _prn_tray
{
   struct _prn_tray  *next;      /* Zeiger auf Nachfolger       */
   int32       tray_id;          /* Nummer des Einzugs/Auswurfs */
   CHAR        name[32];         /* Name des Schachts           */
} PRN_TRAY;

/******************************************************************************/

/* Wird f?r die Druckdialoge von WDialog ben?tigt */
typedef struct _prn_mode
{
   struct _prn_mode *next;          /* Zeiger auf Nachfolger             */
   int32       mode_id;             /* Modus (Index innerhalb der Datei) */
   int16       hdpi;                /* horizontale Aufl?sung in dpi      */
   int16       vdpi;                /* vertikale Aufl?sung in dpi        */
   int32       mode_capabilities;   /* Moduseigenschaften                */

   int32       color_capabilities;  /* einstellbare Farbmodi             */
   int32       dither_flags;        /* Flags, die angeben, ob der        */
                                    /* korrespondierende Farbmodus mit   */
                                    /* oder ohne Dithern ansprechbar ist */

   MEDIA_TYPE  *paper_types;        /* geeignete Papiertypen             */
   int32       reserved;            /* reserviert                        */
   CHAR        name[32];            /* Modusname                         */
} PRN_MODE;

/******************************************************************************/

/* Wird f?r die Druckdialoge von WDialog ben?tigt */
typedef struct _prn_entry
{
   struct _prn_entry *next;            /* Zeiger auf Nachfolger           */
   int32       length;                 /* Strukturl?nge                   */
   int32       format;                 /* Datenformat                     */
   int32       reserved;               /* reserviert                      */

   int16       driver_id;              /* Treiberkennung                  */
   int16       driver_type;            /* Treibertyp                      */
   int32       printer_id;             /* Druckerkennung                  */
   int32       printer_capabilities;   /* Druckereigenschaften            */
   int32       reserved1;              /* reserviert                      */

   int32       flags;                  /* verschiedene Flags              */
   struct _pdlg_sub  *sub_dialogs;     /* Zeiger auf Unterdialoge         */
   PRN_SWITCH  setup_panel;            /* Unterdialog bei Druckerwechsel  */
                                       /* initialisieren                  */
   PRN_SWITCH  close_panel;            /* Unterdialog bei Druckerwechsel  */
                                       /* schlie?en                       */

   PRN_MODE    *modes;                 /* Liste vorhand. Aufl?sungen      */
   MEDIA_SIZE  *papers;                /* Liste vorhand. Papierformate    */
   PRN_TRAY    *input_trays;           /* Liste der Einz?ge               */
   PRN_TRAY    *output_trays;          /* Liste der Ausw?rfe              */
   CHAR        name[32];               /* Name des Druckers               */
} PRN_ENTRY;

/******************************************************************************/

/* Wird f?r die Druckdialoge von WDialog ben?tigt */
typedef struct _dither_mode
{
   struct _dither_mode  *next;   /* Zeiger auf Nachfolger     */

   int32       length;           /* Strukturl?nge             */
   int32       format;           /* Datenformat               */
   int32       reserved;         /* reserviert                */
   int32       dither_id;        /* Kennung                   */
   int32       color_modes;      /* unterst?tzte Farbtiefen   */
   int32       reserved1;        /* reserviert                */
   int32       reserved2;        /* reserviert                */
   CHAR        name[32];         /* Name des Rasterverfahrens */

} DITHER_MODE;

/******************************************************************************/

/* Wird f?r die Druckdialoge von WDialog ben?tigt */
typedef struct
{
   int32       magic;               /* 'pdnf'                           */
   int32       length;              /* Strukturl?nge                    */
   int32       format;              /* Datenformat                      */
   int32       reserved;            /* reserviert                       */

   int16       driver_id;           /* Treibernummer f?rs VDI           */
   int16       driver_type;         /* Treibertyp                       */
   int32       reserved1;           /* reserviert                       */
   int32       reserved2;           /* reserviert                       */
   int32       reserved3;           /* reserviert                       */

   PRN_ENTRY   *printers;           /* zum Treiber geh?renden Drucker   */
   DITHER_MODE *dither_modes;       /* unterst?tzte Rasterverfahren     */
   int32       reserved4;           /* reserviert                       */
   int32       reserved5;           /* reserviert                       */
   int32       reserved6;           /* reserviert                       */
   int32       reserved7;           /* reserviert                       */
   int32       reserved8;           /* reserviert                       */
   int32       reserved9;           /* reserviert                       */
   CHAR        device[128];         /* Ausgabedatei des Druckertreibers */
} DRV_INFO;

/******************************************************************************/

/* tail for default shell */
typedef struct
{
   int16 dummy;                   /* ein Nullwort               */
   int32 magic;                   /* 'SHEL', wenn ist Shell     */
   int16 isfirst;                 /* erster Aufruf der Shell    */
   int32 lasterr;                 /* letzter Fehler             */
   int16 wasgr;                   /* Programm war Grafikapp.    */
} SHELTAIL;

/******************************************************************************/

/* Zuordnung Scancode -> Objektnummer mit Anzahl Klicks der FlyDials unter MagiC */
typedef struct
{
   int8  scancode;
   int8  nclicks;
   int16 objnr;
} SCANX;

/******************************************************************************/

/* Scancode-Tabellen der FlyDials unter MagiC */
typedef struct
{
   SCANX *unsh;   /* Tabellen f?r UnShift-Kombinationen   */
   SCANX *shift;  /* Tabellen f?r Shift-Kombinationen     */
   SCANX *ctrl;   /* Tabellen f?r Control-Kombinationen   */
   SCANX *alt;    /* Tabellen f?r Alternate-Kombinationen */
   void  *resvd;  /* reserviert */
} XDO_INF;

/******************************************************************************/

/* Scrollable textedit objects */
typedef struct _xted
{
   char  *xte_ptmplt;
   char  *xte_pvalid;
   WORD  xte_vislen;
   WORD  xte_scroll;
} XTED;

/******************************************************************************/
/*                                                                            */
/* Die globalen Variablen                                                     */
/*                                                                            */
/******************************************************************************/

/* Der GEM-Parameterblock (Pure-C-kompatibel ;-( */
extern GEMPARBLK _GemParBlk;

/* Zeiger auf GLOBAL-Struktur des Hauptthreads */
extern GlobalArray *_globl;

/* Flag, ob Anwendung als Application oder Accessory l?uft */
extern int16 _app;

/******************************************************************************/
/*                                                                            */
/* Die VDI-Include-Datei wird nun ben?tigt                                    */
/* Diese kann erst hier eingelesen werden, da dort auf vorstehende Strukturen */
/* verwiesen wird!                                                            */
/*                                                                            */
/******************************************************************************/

#include <acsvdi.h>

/******************************************************************************/
/*                                                                            */
/* Prototyp der Assembler-Routine                                             */
/* Diese macht den AES-Aufruf und setzt den dazu n?tigen AES-Parameterblock   */
/* auf dem Stack zusammen - das ist etwas multithreading freundlicher... ;-)  */
/*                                                                            */
/******************************************************************************/

#ifdef __GNUC__
void aes (AESPB *pb);
#else
void CDECL aes( int16 *contrl, GlobalArray *global, int16 *intin, int16 *intout,
          void *addrin, void *addrout );
#endif

/******************************************************************************/

/* Die Routine aus Pure-C ist nat?rlich auch vorhanden */
void _crystal( AESPB *pb );

/******************************************************************************/
/*                                                                            */
/* Die APPL-Funktionen                                                        */
/*                                                                            */
/******************************************************************************/

int16 mt_appl_init( GlobalArray *globl );
int16 mt_appl_read( int16 rwid, int16 length, void *pbuff, GlobalArray *globl );
int16 mt_appl_write( int16 rwid, int16 length, void *pbuff, GlobalArray *globl );
int16 mt_appl_find( const char *pname, GlobalArray *globl );
int16 mt_appl_search( int16 mode, char *fname, int16 *type, int16 *ap_id,
            GlobalArray *globl );
int16 mt_appl_tplay( APPLRECORD *tbuffer, int16 tlength, int16 tscale,
            GlobalArray *globl );
int16 mt_appl_trecord( APPLRECORD *tbuffer, int16 tlength, GlobalArray *globl );
int16 mt_appl_bvset( uint16 bvdisk, uint16 bvhard, GlobalArray *globl );
int16 mt_appl_yield( GlobalArray *globl );
int16 mt_appl_exit( GlobalArray *globl );
int16 mt_appl_getinfo( int16 type, int16 *out1, int16 *out2, int16 *out3, int16 *out4,
            GlobalArray *globl );
int16 mt_appl_getinfo_str( int16 mode, char *str1, char *str2, char *str3, char *str4,
            GlobalArray *globl );
int16 mt_appl_control( int16 ap_cid, int16 ap_cwhat, void *ap_cout,
            GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die EVNT-Funktionen                                                        */
/*                                                                            */
/******************************************************************************/

int16 mt_evnt_keybd( GlobalArray *globl );
int16 mt_evnt_button( int16 ev_bclicks, uint16 ev_bmask,
            uint16 ev_bstate, int16 *ev_bmx, int16 *ev_bmy, int16 *ev_bbutton,
            int16 *ev_bkstate, GlobalArray *globl );
int16 mt_evnt_xbutton( int16 ev_bclicks, uint16 ev_bmask,
            uint16 ev_bstate, int16 *ev_bmx, int16 *ev_bmy, int16 *ev_bbutton,
            int16 *ev_bkstate, int16 *ev_bwhlpbuff, GlobalArray *globl );
int16 mt_evnt_mouse( int16 ev_moflags, int16 ev_mox,
            int16 ev_moy, int16 ev_mowidth, int16 ev_moheight,
            int16 *ev_momx, int16 *ev_momy, int16 *ev_mobutton, int16 *ev_mokstate,
            GlobalArray *globl );
int16 mt_evnt_mesag( int16 *pbuff, GlobalArray *globl );
int16 mt_evnt_timer( uint32 count, GlobalArray *globl );
int16 mt_evnt_multi( int16 ev_mflags, int16 ev_mbclicks, int16 ev_mbmask,
            int16 ev_mbstate, int16 ev_mm1flags, int16 ev_mm1x,
            int16 ev_mm1y, int16 ev_mm1width, int16 ev_mm1height,
            int16 ev_mm2flags, int16 ev_mm2x, int16 ev_mm2y,
            int16 ev_mm2width, int16 ev_mm2height, int16 *ev_mmgpbuff,
            int32 ev_mtimer, int16 *ev_mmox, int16 *ev_mmoy, int16 *ev_mmbutton,
            int16 *ev_mmokstate, int16 *ev_mkreturn, int16 *ev_mbreturn, GlobalArray *globl );
int16 mt_evnt_xmulti( int16 ev_mflags, int16 ev_mbclicks, int16 ev_mbmask,
            int16 ev_mbstate, int16 ev_mm1flags, int16 ev_mm1x,
            int16 ev_mm1y, int16 ev_mm1width, int16 ev_mm1height,
            int16 ev_mm2flags, int16 ev_mm2x, int16 ev_mm2y,
            int16 ev_mm2width, int16 ev_mm2height, int16 *ev_mmgpbuff,
            int32 ev_mtimer, int16 *ev_mmox, int16 *ev_mmoy, int16 *ev_mmbutton,
            int16 *ev_mmokstate, int16 *ev_mkreturn, int16 *ev_mbreturn, int16 *ev_mwhlpbuff,
            GlobalArray *globl );
void mt_EVNT_multi( int16 ev_mflags, int16 ev_mbclicks, int16 ev_mbmask,
            int16 ev_mbstate, MOBLK *m1, MOBLK *m2, int32 ev_mtimer,
            EVNT *event, GlobalArray *globl );
int16 mt_evnt_dclick( int16 rate, int16 setit, GlobalArray *globl );

/* Eigener optimierter Aufruf */
int16 mt_evnt_event( MultiEventIn *input, MultiEventOut *output, GlobalArray *globl );

/* Optimierter, Pure-C kompatibler Aufruf */
int16 mt_EvntMulti( EVENT *evnt_data, GlobalArray *globl);

/******************************************************************************/
/*                                                                            */
/* Die MENU-Funktionen                                                        */
/*                                                                            */
/******************************************************************************/

int16 mt_menu_bar( OBJECT *tree, int16 show, GlobalArray *globl );
int16 mt_menu_icheck( OBJECT *tree, int16 item, int16 check, GlobalArray *globl );
int16 mt_menu_ienable( OBJECT *tree, int16 item, int16 enable,
            GlobalArray *globl );
int16 mt_menu_tnormal( OBJECT *tree, int16 title, int16 normal,
            GlobalArray *globl );
int16 mt_menu_text( OBJECT *tree, int16 item, char *text, GlobalArray *globl );
int16 mt_menu_register( int16 apid, char *string, GlobalArray *globl );
int16 mt_menu_unregister( int16 apid, GlobalArray *globl );
int16 mt_menu_click( int16 click, int16 setit, GlobalArray *globl );
int16 mt_menu_attach( int16 flag, OBJECT *tree, int16 item, MENU *mdata,
            GlobalArray *globl );
int16 mt_menu_istart( int16 flag, OBJECT *tree, int16 imenu, int16 item,
         GlobalArray *globl );
int16 mt_menu_popup( MENU *menu, int16 xpos, int16 ypos, MENU *mdata,
         GlobalArray *globl );
int16 mt_menu_settings( int16 flag, MN_SET *set, GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die OBJC-Funktionen                                                        */
/*                                                                            */
/******************************************************************************/

int16 mt_objc_add( OBJECT *tree, int16 parent, int16 child,
            GlobalArray *globl );
int16 mt_objc_delete( OBJECT *tree, int16 objnr, GlobalArray *globl );
int16 mt_objc_draw( OBJECT *tree, int16 start, int16 depth,
            int16 xclip, int16 yclip, int16 wclip, int16 hclip,
            GlobalArray *globl );
int16 mt_objc_draw_grect( OBJECT *tree, int16 start, int16 depth,
            const GRECT *r, GlobalArray *globl );
int16 mt_objc_find( OBJECT *tree, int16 start, int16 depth,
            int16 mx, int16 my, GlobalArray *globl );
int16 mt_objc_offset( OBJECT *tree, int16 objnr, int16 *x, int16 *y,
            GlobalArray *globl );
int16 mt_objc_order( OBJECT *tree, int16 objnr, int16 new_nr,
            GlobalArray *globl );
int16 mt_objc_edit( OBJECT *tree, int16 objnr, int16 inchar,
            int16 *idx, int16 kind, GlobalArray *globl );
int16 mt_objc_xedit( OBJECT *tree, int16 objnr, int16 inchar, int16 *idx,
            int16 kind, GRECT *r, GlobalArray *globl );
int16 mt_objc_change( OBJECT *tree, int16 objnr, int16 reserved,
            int16 xclip, int16 yclip, int16 wclip, int16 hclip,
            int16 newstate, int16 redraw, GlobalArray *globl );
int16 mt_objc_sysvar( int16 mode, int16 which, int16 in1, int16 in2,
            int16 *out1, int16 *out2, GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* OBJC-Erweiterungen von MagiC                                               */
/*                                                                            */
/******************************************************************************/

/* Zuerst die "richtige" Multithreading-Variante */
void mt_objc_wdraw( OBJECT *tree, int16 start, int16 depth, GRECT *clip,
            int16 whandle, GlobalArray *globl );
int16 mt_objc_wedit( OBJECT *tree, int16 objnr, int16 inchar, int16 *idx,
            int16 kind, int16 whandle, GlobalArray *globl );
void mt_objc_wchange( OBJECT *tree, int16 objnr, int16 newstate,
            GRECT *clip, int16 whandle, GlobalArray *globl );
int16 mt_objc_xfind( OBJECT *obj, int16 start, int16 depth,
            int16 x, int16 y, GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die FORM-Funktionen                                                        */
/*                                                                            */
/******************************************************************************/

int16 mt_form_do( OBJECT *tree, int16 start, GlobalArray *globl );
int16 mt_form_dial( int16 flag, int16 xlittle,
            int16 ylittle, int16 wlittle, int16 hlittle,
            int16 xbig, int16 ybig, int16 wbig, int16 hbig,
            GlobalArray *globl );
int16 mt_form_alert( int16 defbutton, const char *string, GlobalArray *globl );
int16 mt_form_error( int16 errnum, GlobalArray *globl );
int16 mt_form_center_grect( OBJECT *tree, GRECT *r, GlobalArray *globl );
int16 mt_form_center( OBJECT *tree, int16 *x, int16 *y, int16 *w, int16 *h,
            GlobalArray *globl );
int16 mt_form_keybd( OBJECT *tree, int16 obj, int16 next,
            int16 input_char, int16 *next_obj, int16 *pchar, GlobalArray *globl );
int16 mt_form_button( OBJECT *tree, int16 obj, int16 clicks, int16 *next_obj,
            GlobalArray *globl );
int16 mt_form_popup( OBJECT *tree, int16 x, int16 y, GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die FlyDials-Funktionen aus MagiC                                          */
/*                                                                            */
/******************************************************************************/

int16 mt_form_wbutton( OBJECT *fo_btree, int16 fo_bobject,
            int16 fo_bclicks, int16 *fo_bnxtobj, int16 whandle,
            GlobalArray *globl );
int16 mt_form_xdial( int16 fo_diflag, int16 fo_dilittlx, int16 fo_dilittly,
            int16 fo_dilittlw, int16 fo_dilittlh, int16 fo_dibigx,
            int16 fo_dibigy, int16 fo_dibigw, int16 fo_dibigh,
            void **flydial, GlobalArray *globl );
int16 mt_form_xdial_grect( int16 fo_diflag,
            const GRECT *fo_dilittl, const GRECT *fo_dibig,
            void **flydial, GlobalArray *globl );
int16 mt_form_xdo( OBJECT *tree, int16 startob, int16 *lastcrsr,
            const XDO_INF *tabs, void *flydial, GlobalArray *globl );
int16 mt_form_xerr( int32 errcode, const char *errfile, GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die GRAF-Funktionen                                                        */
/*                                                                            */
/******************************************************************************/

int16 mt_graf_rubbox( int16 x, int16 y, int16 w_min,
            int16 h_min, int16 *w_end, int16 *h_end, GlobalArray *globl );
int16 mt_graf_dragbox( int16 w, int16 h, int16 sx, int16 sy,
            int16 xc, int16 yc, int16 wc, int16 hc,
            int16 *x, int16 *y, GlobalArray *globl );
int16 mt_graf_mbox( int16 w, int16 h, int16 start_x, int16 start_y,
            int16 ende_x, int16 ende_y, GlobalArray *globl );
int16 mt_graf_movebox( int16 w, int16 h, int16 start_x, int16 start_y,
            int16 ende_x, int16 ende_y, GlobalArray *globl );
int16 mt_graf_growbox( int16 start_x, int16 start_y, int16 start_w,
            int16 start_h, int16 ende_x, int16 ende_y, int16 ende_w,
            int16 ende_h, GlobalArray *globl );
int16 mt_graf_shrinkbox( int16 start_x, int16 start_y, int16 start_w,
            int16 start_h, int16 ende_x, int16 ende_y, int16 ende_w,
            int16 ende_h, GlobalArray *globl );
int16 mt_graf_watchbox( OBJECT *tree, int16 obj_nr, int16 instate,
            int16 outstate, GlobalArray *globl );
int16 mt_graf_slidebox( OBJECT *tree, int16 parent, int16 obj_nr,
            int16 isvert, GlobalArray *globl );
int16 mt_graf_handle( int16 *wchar, int16 *hchar, int16 *wbox, int16 *hbox,
            GlobalArray *globl );
int16 mt_graf_mouse( int16 mouse_nr, MFORM *form, GlobalArray *globl );
int16 mt_graf_mkstate( int16 *x, int16 *y, int16 *mstate, int16 *kstate, GlobalArray *globl );
int16 mt_graf_multirubber( int16 x, int16 y, int16 minw, int16 minh,
            GRECT *rec, int16 *outw, int16 *outh, GlobalArray *globl );

/* Andere Namen von graf_rubbox */
#ifndef __COMPATIBLE_FKT__
   #define mt_graf_rubbbox(x, y, w_min, h_min, w_end, h_end, globl) \
                                                mt_graf_rubbox(x, y, w_min, h_min, w_end, h_end, globl)
   #define mt_graf_rubberbox(x, y, w_min, h_min, w_end, h_end, globl) \
                                                mt_graf_rubbox(x, y, w_min, h_min, w_end, h_end, globl)
#else
   int16 mt_graf_rubbbox( int16 x, int16 y, int16 w_min,
               int16 h_min, int16 *w_end, int16 *h_end, GlobalArray *globl );
   int16 mt_graf_rubberbox( int16 x, int16 y, int16 w_min,
               int16 h_min, int16 *w_end, int16 *h_end, GlobalArray *globl );
#endif

/******************************************************************************/
/*                                                                            */
/* GRAF-Erweiterungen von MagiC                                               */
/*                                                                            */
/******************************************************************************/

int16 mt_graf_wwatchbox( OBJECT *gr_wptree, int16 gr_wobject,
            int16 gr_winstate, int16 gr_woutstate, int16 whandle,
            GlobalArray *globl );
int16 mt_graf_xhandle( int16 *wchar, int16 *hchar, int16 *wbox, int16 *hbox, int16 *device,
            GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die SCRP-Funktionen                                                        */
/*                                                                            */
/******************************************************************************/

/* Zuerst die "richtige" Multithreading-Variante */
int16 mt_scrp_read( char *pathname, GlobalArray *globl );
int16 mt_scrp_write( char *pathname, GlobalArray *globl );
int16 mt_scrp_clear( GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die FSEL-Funktionen                                                        */
/*                                                                            */
/******************************************************************************/

/* Zuerst die "richtige" Multithreading-Variante */
int16 mt_fsel_input( char *path, char *name, int16 *button, GlobalArray *globl );
int16 mt_fsel_exinput( char *path, char *name, int16 *button, const char *label,
            GlobalArray *globl );
int16 mt_fsel_boxinput( char *path, char *name, int16 *button,
            const char *label, FSEL_CALLBACK callback, GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die FSLX-Funktionen (MagiC)                                                */
/*                                                                            */
/******************************************************************************/

void *mt_fslx_open( const char *title, int16 x, int16 y, int16 *handle, char *path,
            int16 pathlen, char *fname, int16 fnamelen, char *patterns,
            XFSL_FILTER *filter, char *paths, int16 sort_mode, int16 flags,
            GlobalArray *globl );
int16 mt_fslx_close( void *fsd, GlobalArray *globl );
int16 mt_fslx_getnxtfile( void *fsd, char *fname, GlobalArray *globl );
int16 mt_fslx_evnt( void *fsd, EVNT *events, char *path, char *fname, int16 *button,
         int16 *nfiles, int16 *sort_mode, char **pattern, GlobalArray *globl );
void *mt_fslx_do( const char *title, char *path, int16 pathlen, char *fname,
            int16 fnamelen, char *patterns, XFSL_FILTER *filter, char *paths,
            int16 *sort_mode, int16 flags, int16 *button, int16 *nfiles, char **pattern,
            GlobalArray *globl );
int16 mt_fslx_set_flags( int16 flags, int16 *oldval, GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die WIND-Funktionen                                                        */
/*                                                                            */
/******************************************************************************/

int16 mt_wind_create( int16 kind, int16 max_x, int16 max_y,
            int16 max_w, int16 max_h, GlobalArray *globl );
int16 mt_wind_create_grect( int16 kind, const GRECT *r, GlobalArray *globl );
int16 mt_wind_open( int16 handle, int16 x, int16 y,
            int16 w, int16 h, GlobalArray *globl );
int16 mt_wind_open_grect( int16 handle, const GRECT *r, GlobalArray *globl );
int16 mt_wind_close( int16 handle, GlobalArray *globl );
int16 mt_wind_delete( int16 handle, GlobalArray *globl );
int16 mt_wind_get( int16 handle, int16 what, int16 *out1, int16 *out2,
            int16 *out3, int16 *out4, GlobalArray *globl );
int16 mt_wind_get_grect( int16 handle, int16 what, GRECT *r, GlobalArray *globl );
int16 mt_wind_getQSB( int16 handle, void **buffer, int32 *length, GlobalArray *globl );
int16 mt_wind_xget_grect( int16 handle, int16 what, const GRECT *clip, GRECT *r, GlobalArray *globl );
int16 mt_wind_get_int( int16 handle, int16 what, int16 *g1, GlobalArray *globl );

int16 mt_wind_set( int16 handle, int16 what, int16 val1, int16 val2,
            int16 val3, int16 val4, GlobalArray *globl );
int16 mt_wind_set_grect( int16 handle, int16 what, const GRECT *r, GlobalArray *globl );
int16 mt_wind_xset_grect( int16 handle, int16 what, const GRECT *s, GRECT *r, GlobalArray *globl );
int16 mt_wind_set_str( int16 handle, int16 what, const char *str, GlobalArray *globl );
int16 mt_wind_set_int( int16 handle, int16 what, int16 g1,
            GlobalArray *globl );

int16 mt_wind_find( int16 x, int16 y, GlobalArray *globl );
int16 mt_wind_update( int16 what, GlobalArray *globl );
int16 mt_wind_calc( int16 wtype, int16 kind, int16 x, int16 y,
            int16 w, int16 h, int16 *px, int16 *py, int16 *pw, int16 *ph,
            GlobalArray *globl );
int16 mt_wind_calc_grect( int16 type, int16 parts, const GRECT *In,
            GRECT *Out, GlobalArray *globl );
int16 mt_wind_new( GlobalArray *globl );
int16 mt_wind_draw( int16 handle, int16 startob, GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die RSRC-Funktionen                                                        */
/*                                                                            */
/******************************************************************************/

/* Zuerst die "richtige" Multithreading-Variante */
int16 mt_rsrc_load( const char *name, GlobalArray *globl );
int16 mt_rsrc_free( GlobalArray *globl );
int16 mt_rsrc_gaddr( int16 type, int16 id, void *addr, GlobalArray *globl );
int16 mt_rsrc_saddr( int16 type, int16 id, void *addr, GlobalArray *globl );
int16 mt_rsrc_obfix( OBJECT *tree, int16 obj, GlobalArray *globl );
int16 mt_rsrc_rcfix( void *rc_header, GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die SHEL-Funktionen                                                        */
/*                                                                            */
/******************************************************************************/

int16 mt_shel_read( char *cmd, char *tail, GlobalArray *globl );
int16 mt_shel_write( int16 do_execute, int16 is_graph, int16 is_overlay,
            char *cmd, char *tail, GlobalArray *globl );
int16 mt_shel_get( char *addr, int16 len, GlobalArray *globl );
int16 mt_shel_put( char *addr, int16 len, GlobalArray *globl );
int16 mt_shel_find( char *path, GlobalArray *globl );
int16 mt_shel_envrn( char **value, char *name, GlobalArray *globl );
int16 mt_shel_rdef( char *cmd, char *dir, GlobalArray *globl );
int16 mt_shel_wdef( char *cmd, char *dir, GlobalArray *globl );
int16 mt_shel_help( int16 sh_hmode, char *sh_hfile, char *sh_hkey,
            GlobalArray *globl );

/* Andere Schreibweise */
#define mt_shel_environ(value, name, globl)  mt_shel_envrn(value, name, globl)

/******************************************************************************/
/*                                                                            */
/* Die FNTS-Funktionen (WDialog)                                              */
/*                                                                            */
/******************************************************************************/

int16 mt_fnts_add( FNT_DIALOG *fnt_dialog, FNTS_ITEM *user_fonts,
            GlobalArray *globl );
int16 mt_fnts_close( FNT_DIALOG *fnt_dialog, int16 *x, int16 *y,
            GlobalArray *globl );
FNT_DIALOG *mt_fnts_create( int16 vdi_handle, int16 no_fonts,
            int16 font_flags, int16 dialog_flags,
            const char *sample, const char *opt_button, GlobalArray *globl );
int16 mt_fnts_delete( FNT_DIALOG *fnt_dialog, int16 vdi_handle,
            GlobalArray *globl );
int16 mt_fnts_do( FNT_DIALOG *fnt_dialog, int16 button_flags, int32 id_in,
            fix31 pt_in, int32 ratio_in, int16 *check_boxes,
            int32 *id, fix31 *pt, fix31 *ratio, GlobalArray *globl );
int16 mt_fnts_evnt( FNT_DIALOG *fnt_dialog, EVNT *events, int16 *button,
            int16 *check_boxes, int32 *id, fix31 *pt, fix31 *ratio, GlobalArray *globl );
int16 mt_fnts_get_info( FNT_DIALOG *fnt_dialog, int32 id, int16 *mono,
            int16 *outline, GlobalArray *globl );
int16 mt_fnts_get_name( FNT_DIALOG *fnt_dialog, int32 id, char *full_name,
            char *family_name, char *style_name, GlobalArray *globl );
int16 mt_fnts_get_no_styles( FNT_DIALOG *fnt_dialog, int32 id, GlobalArray *globl );
int32 mt_fnts_get_style( FNT_DIALOG *fnt_dialog, int32 id, int16 index,
            GlobalArray *globl );
int16 mt_fnts_open( FNT_DIALOG *fnt_dialog, int16 button_flags, int16 x,
            int16 y, int32 id, fix31 pt, fix31 ratio,
            GlobalArray *globl );
void mt_fnts_remove( FNT_DIALOG *fnt_dialog, GlobalArray *globl );
int16 mt_fnts_update( FNT_DIALOG *fnt_dialog, int16 button_flags, int32 id,
            fix31 pt, int32 ratio, GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die LBOX-Funktionen (WDialog)                                              */
/*                                                                            */
/******************************************************************************/

void mt_lbox_ascroll_to( LIST_BOX *box, int16 first, GRECT *box_rect,
            GRECT *slider_rect, GlobalArray *globl );
void mt_lbox_scroll_to( LIST_BOX *box, int16 first, GRECT *box_rect,
            GRECT *slider_rect, GlobalArray *globl );
void mt_lbox_bscroll_to( LIST_BOX *box, int16 first, GRECT *box_rect,
            GRECT *slider_rect, GlobalArray *globl );
int16 mt_lbox_cnt_items( LIST_BOX *box, GlobalArray *globl );
LIST_BOX *mt_lbox_create( OBJECT *tree, SLCT_ITEM slct, SET_ITEM set,
               LBOX_ITEM *items, int16 visible_a, int16 first_a,
               const int16 *ctrl_objs, const int16 *objs, int16 flags,
               int16 pause_a, void *user_data, DIALOG *dialog,
               int16 visible_b, int16 first_b, int16 entries_b,
               int16 pause_b, GlobalArray *globl );
int16 mt_lbox_delete( LIST_BOX *box, GlobalArray *globl );
int16 mt_lbox_do( LIST_BOX *box, int16 obj, GlobalArray *globl );
void mt_lbox_free_items( LIST_BOX *box, GlobalArray *globl );
void mt_lbox_free_list( LBOX_ITEM *items, GlobalArray *globl );
int16 mt_lbox_get_afirst( LIST_BOX *box, GlobalArray *globl );
int16 mt_lbox_get_first( LIST_BOX *box, GlobalArray *globl );
int16 mt_lbox_get_avis( LIST_BOX *box, GlobalArray *globl );
int16 mt_lbox_get_visible( LIST_BOX *box, GlobalArray *globl );
int16 mt_lbox_get_bentries( LIST_BOX *box, GlobalArray *globl );
int16 mt_lbox_get_bfirst( LIST_BOX *box, GlobalArray *globl );
int16 mt_lbox_get_bvis( LIST_BOX *box, GlobalArray *globl );
int16 mt_lbox_get_idx( LBOX_ITEM *items, LBOX_ITEM *search,GlobalArray *globl );
LBOX_ITEM *mt_lbox_get_item( LIST_BOX *box, int16 n, GlobalArray *globl );
LBOX_ITEM *mt_lbox_get_items( LIST_BOX *box, GlobalArray *globl );
int16 mt_lbox_get_slct_idx( LIST_BOX *box, GlobalArray *globl );
LBOX_ITEM *mt_lbox_get_slct_item( LIST_BOX *box, GlobalArray *globl );
OBJECT *mt_lbox_get_tree( LIST_BOX *box, GlobalArray *globl );
void *mt_lbox_get_udata( LIST_BOX *box, GlobalArray *globl );
void mt_lbox_set_asldr( LIST_BOX *box, int16 first, GRECT *rect, GlobalArray *globl );
void mt_lbox_set_slider( LIST_BOX *box, int16 first, GRECT *rect, GlobalArray *globl );
void mt_lbox_set_bentries( LIST_BOX *box, int16 entries, GlobalArray *globl );
void mt_lbox_set_bsldr( LIST_BOX *box, int16 first, GRECT *rect, GlobalArray *globl );
void mt_lbox_set_items( LIST_BOX *box, LBOX_ITEM *items, GlobalArray *globl );
void mt_lbox_update( LIST_BOX *box, GRECT *rect, GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die PDLG-Funktionen (WDialog)                                              */
/*                                                                            */
/******************************************************************************/

int16 mt_pdlg_add_printers( PRN_DIALOG *prn_dialog, DRV_INFO *drv_info, GlobalArray *globl );
int16 mt_pdlg_add_sub_dialogs( PRN_DIALOG *prn_dialog, PDLG_SUB *sub_dialog,
            GlobalArray *globl );
int16 mt_pdlg_close( PRN_DIALOG *prn_dialog, int16 *x, int16 *y, GlobalArray *globl );
PRN_DIALOG *mt_pdlg_create( int16 dialog_flags, GlobalArray *globl );
int16 mt_pdlg_delete( PRN_DIALOG *prn_dialog, GlobalArray *globl );
int16 mt_pdlg_dflt_settings( PRN_DIALOG *prn_dialog, PRN_SETTINGS *settings,
            GlobalArray *globl );
int16 mt_pdlg_do( PRN_DIALOG *prn_dialog, PRN_SETTINGS *settings, char *document_name,
            int16 option_flags, GlobalArray *globl );
int16 mt_pdlg_evnt( PRN_DIALOG *prn_dialog, PRN_SETTINGS *settings, EVNT *events,
            int16 *button, GlobalArray *globl );
int16 mt_pdlg_free_settings( PRN_SETTINGS *settings, GlobalArray *globl );
int32 mt_pdlg_get_setsize( GlobalArray *globl );
PRN_SETTINGS *mt_pdlg_new_settings( PRN_DIALOG *prn_dialog, GlobalArray *globl );
int16 mt_pdlg_open( PRN_DIALOG *prn_dialog, PRN_SETTINGS *settings, char *document_name,
            int16 option_flags, int16 x, int16 y, GlobalArray *globl );
int16 mt_pdlg_remove_printers( PRN_DIALOG *prn_dialog, GlobalArray *globl );
int16 mt_pdlg_remove_sub_dialogs( PRN_DIALOG *prn_dialog, GlobalArray *globl );
int16 mt_pdlg_update( PRN_DIALOG *prn_dialog, char *document_name, GlobalArray *globl );
int16 mt_pdlg_use_settings( PRN_DIALOG *prn_dialog, PRN_SETTINGS *settings,
            GlobalArray *globl );
int16 mt_pdlg_validate_settings( PRN_DIALOG *prn_dialog, PRN_SETTINGS *settings,
            GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die WDLG-Funktionen (WDialog)                                              */
/*                                                                            */
/******************************************************************************/

DIALOG *mt_wdlg_create( HNDL_OBJ handle_exit, OBJECT *tree, void *user_data, int16 code,
            void *data, int16 flags, GlobalArray *globl );
int16 mt_wdlg_open( DIALOG *dialog, char *title, int16 kind, int16 x,
            int16 y, int16 code, void *data, GlobalArray *globl );
int16 mt_wdlg_close( DIALOG *dialog, int16 *x, int16 *y, GlobalArray *globl );
int16 mt_wdlg_delete( DIALOG *dialog, GlobalArray *globl );
int16 mt_wdlg_get_tree( DIALOG *dialog, OBJECT **tree, GRECT *r, GlobalArray *globl );
int16 mt_wdlg_get_edit( DIALOG *dialog, int16 *cursor, GlobalArray *globl );
void *mt_wdlg_get_udata( DIALOG *dialog, GlobalArray *globl );
int16 mt_wdlg_get_handle( DIALOG *dialog, GlobalArray *globl );
int16 mt_wdlg_set_edit( DIALOG *dialog, int16 obj, GlobalArray *globl );
int16 mt_wdlg_set_tree( DIALOG *dialog, OBJECT *new_tree, GlobalArray *globl );
int16 mt_wdlg_set_size( DIALOG *dialog, GRECT *new_size, GlobalArray *globl );
int16 mt_wdlg_set_iconify( DIALOG *dialog, GRECT *g, char *title, OBJECT *tree,
            int16 obj, GlobalArray *globl );
int16 mt_wdlg_set_uniconify( DIALOG *dialog, GRECT *g, char *title, OBJECT *tree,
            GlobalArray *globl );
int16 mt_wdlg_evnt( DIALOG *dialog, EVNT *events, GlobalArray *globl );
void mt_wdlg_redraw( DIALOG *dialog, GRECT *rect, int16 obj, int16 depth,
            GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die EDIT-Funktionen (Scrollbare Edit-Felder ab MagiC 5.2)                  */
/*                                                                            */
/******************************************************************************/

XEDITINFO *mt_edit_create( GlobalArray *globl );
void mt_edit_set_buf( OBJECT *tree, int16 obj, char *buffer, int32 buflen,
            GlobalArray *globl );
int16 mt_edit_open( OBJECT *tree, int16 obj, GlobalArray *globl );
void mt_edit_close( OBJECT *tree, int16 obj, GlobalArray *globl );
void mt_edit_delete( XEDITINFO *editinfo, GlobalArray *globl );
int16 mt_edit_cursor( OBJECT *tree, int16 obj, int16 whdl, int16 show,
            GlobalArray *globl );
int16 mt_edit_evnt( OBJECT *tree, int16 obj, int16 whdl, EVNT *events,
            int32 *errcode, GlobalArray *globl );
int16 mt_edit_get_buf( OBJECT *tree, int16 obj, char **buffer, int32 *buflen,
            int32 *txtlen, GlobalArray *globl );
int16 mt_edit_get_format( OBJECT *tree, int16 obj, int16 *tabwidth, int16 *autowrap,
            GlobalArray *globl );
int16 mt_edit_get_colour( OBJECT *tree, int16 obj, int16 *tcolour, int16 *bcolour,
            GlobalArray *globl );
int16 mt_edit_get_font( OBJECT *tree, int16 obj, int16 *fontID, int16 *fontH,
            boolean *fontPix, boolean *mono, GlobalArray *globl );
int16 mt_edit_get_cursor( OBJECT *tree, int16 obj, char **cursorpos,
            GlobalArray *globl );
void mt_edit_get_pos( OBJECT *tree, int16 obj, int16 *xscroll, int32 *yscroll,
            char **cyscroll, char **cursorpos, int16 *cx, int16 *cy, GlobalArray *globl );
boolean mt_edit_get_dirty( OBJECT *tree, int16 obj, GlobalArray *globl );
void mt_edit_get_sel( OBJECT *tree, int16 obj, char **bsel, char **esel,
            GlobalArray *globl );
void mt_edit_get_scrollinfo( OBJECT *tree, int16 obj, int32 *nlines, int32 *yscroll,
            int16 *yvis, int16 *yval, int16 *ncols, int16 *xscroll, int16 *xvis,
            GlobalArray *globl );
void mt_edit_set_format( OBJECT *tree, int16 obj, int16 tabwidth,
            int16 autowrap, GlobalArray *globl );
void mt_edit_set_colour( OBJECT *tree, int16 obj, int16 tcolour,
            int16 bcolour, GlobalArray *globl );
void mt_edit_set_font( OBJECT *tree, int16 obj, int16 fontID, int16 fontH,
            boolean fontPix, boolean mono, GlobalArray *globl );
void mt_edit_set_cursor( OBJECT *tree, int16 obj, char *cursorpos, GlobalArray *globl );
void mt_edit_set_pos( OBJECT *tree, int16 obj, int16 xscroll,
            int32 yscroll, char *cyscroll, char *cursorpos, int16 cx,
            int16 cy, GlobalArray *globl );
int16 mt_edit_resized( OBJECT *tree, int16 obj, int16 *oldrh, int16 *newrh,
            GlobalArray *globl );
void mt_edit_set_dirty( OBJECT *tree, int16 obj, boolean dirty,
            GlobalArray *globl );
int16 mt_edit_scroll( OBJECT *tree, int16 obj, int16 whdl, int32 yscroll,
            int16 xscroll, GlobalArray *globl );

/* edit_get_colour = edit_get_color? Ein Schreibfeher in der MagiC-Dokumentation? */
int16 mt_edit_get_color( OBJECT *tree, int16 obj, int16 *tcolor, int16 *bcolor,
            GlobalArray *globl );

/* edit_set_colour = edit_set_color? Ein Schreibfeher in der MagiC-Dokumentation? */
void mt_edit_set_color( OBJECT *tree, int16 obj, int16 tcolor, int16 bcolor,
            GlobalArray *globl );

/******************************************************************************/
/*                                                                            */
/* Die PureC-Funktionen ggf. per Makro auf die MT-Funktionen umleiten         */
/*                                                                            */
/******************************************************************************/

#ifndef __COMPATIBLE_FKT__

/******************************************************************************/

/* Die APPL-Funktionen */
#define appl_init()                             mt_appl_init(_globl)
#define appl_read(rwid, length, pbuff)          mt_appl_read(rwid, length, pbuff, _globl) 
#define appl_write(rwid, length, pbuff)         mt_appl_write(rwid, length, pbuff, _globl)
#define appl_find(pname)                        mt_appl_find(pname, _globl)
#define appl_search(mode, fname, type, ap_id)   mt_appl_search(mode, fname, type, ap_id, _globl)
#define appl_tplay(buffer, tlength, tscale)     mt_appl_tplay(buffer, tlength, tscale, _globl)
#define appl_trecord(tbuffer, tlength)          mt_appl_trecord(tbuffer, tlength, _globl)
#define appl_bvset(a, b)                        mt_appl_bvset(a, b, _globl)
#define appl_yield()                            mt_appl_yield(_globl)
#define appl_exit()                             mt_appl_exit(_globl)
#define appl_getinfo(type, out1, out2, out3, out4) \
                                                mt_appl_getinfo(type, out1, out2, out3, out4, _globl) 
#define appl_getinfo_str(type, str1, str2, str3, str4)   \
                                                mt_appl_getinfo_str(type, str1, str2, str3, str4, _globl)   
#define appl_control(ap_cid, ap_cwhat, ap_cout) mt_appl_control(ap_cid, ap_cwhat, ap_cout, _globl)

/* Falls appl_xgetinfo benutzt zur Pr?fung vor appl_getinfo wird, so ist dies */
/* ?berfl?ssig, da das Binding von appl_getinfo die Pr?fung mit erledigt!     */
#define appl_xgetinfo(type, out1, out2, out3, out4)   \
                                                mt_appl_getinfo(type, out1, out2, out3, out4, _globl) 

/******************************************************************************/

/* Die EVNT-Funktionen */
#define evnt_keybd()                   mt_evnt_keybd(_globl)
#define evnt_button(a, b, c, d, e, f, g, h) \
                                       mt_evnt_button(a, b, c, d, e, f, g, h, _globl)
#define evnt_mouse(a, b, c, d, e, f, g, h, i) \
                                       mt_evnt_mouse(a, b, c, d, e, f, g, h, i, _globl)
#define evnt_mesag(pbuff)              mt_evnt_mesag(pbuff, _globl)
#define evnt_timer(ev_tlocount, ev_thicount) \
                                       mt_evnt_timer(((int32)(ev_thicount)<<16) | (uint32)(uint16)(ev_tlocount), _globl)
#define evnt_multi(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w) \
                                       mt_evnt_multi(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, ((int32)(q)<<16)|(uint32)(uint16)(p), r, s, t, u, v, w, _globl)
#define evnt_xmulti(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x) \
                                       mt_evnt_xmulti(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, ((int32)(q)<<16)|(uint32)(uint16)(p), r, s, t, u, v, w, x, _globl)
#define EVNT_multi(a, b, c, d, e, f, g, h) \
                                       mt_EVNT_multi(a, b, c, d, e, f, g, h, _globl)
#define evnt_dclick(rate, setit)       mt_evnt_dclick(rate, setit, _globl)

/* Eigener optimierter Aufruf */
#define evnt_event(input, output)      mt_evnt_event(input, output, _globl)

/* Optimierter, Pure-C kompatibler Aufruf */
#define EvntMulti(evnt_data)           mt_EvntMulti(evnt_data, _globl)

/******************************************************************************/

/* Die OBJC-Funktionen */
#define objc_add(tree, parent, child)           mt_objc_add(tree, parent, child, _globl)
#define objc_delete(tree, objnr)                mt_objc_delete(tree, objnr, _globl)
#define objc_draw(tree, start, depth, xc, yc, wc, hc) \
                                                mt_objc_draw(tree, start, depth, xc, yc, wc, hc, _globl)
#define objc_draw_grect(tree, start, depth, r) \
                                                mt_objc_draw_grect(tree, start, depth, r, _globl)
#define objc_find(tree, start, depth, mx, my)   mt_objc_find(tree, start, depth, mx, my, _globl)
#define objc_offset(tree, objnr, x, y)          mt_objc_offset(tree, objnr, x, y, _globl)
#define objc_order(tree, objnr, new_nr)         mt_objc_order(tree, objnr, new_nr, _globl)
#define objc_edit(tree, objnr, inchar, idx, kind) \
                                                mt_objc_edit(tree, objnr, inchar, idx, kind, _globl)
#define objc_xedit(tree, objnr, inchar, idx, kind, r) \
                                                mt_objc_xedit(tree, objnr, inchar, idx, kind, r, _globl)
#define objc_change(tree, objnr, rsvd,  xc, yc, wc, hc, newstate, redraw) \
                                                mt_objc_change(tree, objnr, rsvd,  xc, yc, wc, hc, newstate, redraw, _globl)
#define objc_sysvar(mode, which, in1, in2, out1, out2) \
                                                mt_objc_sysvar(mode, which, in1, in2, out1, out2, _globl)

/******************************************************************************/

/* OBJC-Erweiterungen von MagiC */
#define objc_wdraw(tree, start, depth, clip, whandle) \
                                                mt_objc_wdraw(tree, start, depth, clip, whandle, _globl)
#define objc_wedit(tree, objnr, inchar,  idx, kind, whandle) \
                                                mt_objc_wedit(tree, objnr, inchar,  idx, kind, whandle, _globl)
#define objc_wchange(tree, objnr, newstate, clip, whandle) \
                                                mt_objc_wchange(tree, objnr, newstate, clip, whandle, _globl)
#define objc_xfind(obj, start, depth, x, y)     mt_objc_xfind(obj, start, depth, x, y, _globl)

/******************************************************************************/

/* Die MENU-Funktionen */
#define menu_bar(tree, show)                 mt_menu_bar(tree, show, _globl)
#define menu_icheck(tree, item, check)       mt_menu_icheck(tree, item, check, _globl)
#define menu_ienable(tree, item, enable)     mt_menu_ienable(tree, item, enable, _globl)
#define menu_tnormal(tree, title, normal)    mt_menu_tnormal(tree, title, normal, _globl)
#define menu_text(tree, item, text)          mt_menu_text(tree, item, text, _globl)
#define menu_register(apid, string)          mt_menu_register(apid, string, _globl)
#define menu_unregister(apid)                mt_menu_unregister(apid, _globl)
#define menu_click(click, setit)             mt_menu_click(click, setit, _globl)
#define menu_attach(flag, tree, item, mdata) mt_menu_attach(flag, tree, item, mdata, _globl)
#define menu_istart(flag, tree, imenu, item) mt_menu_istart(flag, tree, imenu, item, _globl)
#define menu_popup(menu, xpos, ypos, mdata)  mt_menu_popup(menu, xpos, ypos, mdata, _globl)
#define menu_settings(flag, set)             mt_menu_settings(flag, set, _globl)

/******************************************************************************/

/* Die FORM-Funktionen */
#define form_do(tree, start)           mt_form_do(tree, start, _globl)
#define form_dial(flag, x1, y1, w1, h1, x2, y2, w2, h2) \
                                       mt_form_dial(flag, x1, y1, w1, h1, x2, y2, w2, h2, _globl)
#define form_alert(defbutton, string)  mt_form_alert(defbutton, string, _globl)
#define form_error(errnum)             mt_form_error(errnum, _globl)
#define form_center(tree, x, y, w, h)  mt_form_center(tree, x, y, w, h, _globl)
#define form_center_grect(tree, r)     mt_form_center_grect(tree, r, _globl)
#define form_keybd(tree, obj, next, input_char, next_obj, pchar) \
                                       mt_form_keybd(tree, obj, next, input_char, next_obj, pchar, _globl)
#define form_button(tree, obj, clicks, next_obj) \
                                       mt_form_button(tree, obj, clicks, next_obj, _globl)
#define form_popup(tree, x, y)         mt_form_popup(tree, x, y, _globl)

/******************************************************************************/

/* FlyDials-Funktionen von MagiC */
#define form_wbutton(fo_btree, fo_bobject, fo_bclicks, fo_bnxtobj, whandle) \
                                       mt_form_wbutton(fo_btree, fo_bobject, fo_bclicks, fo_bnxtobj, whandle, _globl)
#define form_xdial(flag, x1, y1,  w1, h1, x2, y2, w2, h2, flydial) \
                                       mt_form_xdial(flag, x1, y1,  w1, h1, x2, y2, w2, h2, flydial, _globl)
#define form_xdial_grect(flag, fo_dilittl, fo_dibig, flydial) \
                                       mt_form_xdial_grect(flag, fo_dilittl, fo_dibig, flydial, _globl)
#define form_xdo(tree, startob, lastcrsr, tabs, flydial) \
                                       mt_form_xdo(tree, startob, lastcrsr, tabs, flydial, _globl)
#define form_xerr(errcode, errfile)    mt_form_xerr(errcode, errfile, _globl)

/******************************************************************************/

/* Die GRAF-Funktionen */
#define graf_rubbox(x, y, w_min, h_min, w_end, h_end) \
                                       mt_graf_rubbox( x, y, w_min, h_min, w_end, h_end, _globl)
#define graf_rubbbox(x, y, w_min, h_min, w_end, h_end) \
                                       mt_graf_rubbox(x, y, w_min, h_min, w_end, h_end, _globl)
#define graf_rubberbox(x, y, w_min, h_min, w_end, h_end) \
                                       mt_graf_rubberbox(x, y, w_min, h_min, w_end, h_end, _globl)
#define graf_dragbox(w, h, sx, sy, xc, yc, wc, hc, x, y) \
                                       mt_graf_dragbox(w, h, sx, sy, xc, yc, wc, hc, x, y, _globl)
#define graf_mbox(w, h, start_x, start_y, ende_x, ende_y) \
                                       mt_graf_mbox(w, h, start_x, start_y, ende_x, ende_y, _globl)
#define graf_movebox(w, h, start_x, start_y, ende_x, ende_y) \
                                       mt_graf_movebox(w, h, start_x, start_y, ende_x, ende_y, _globl)
#define graf_growbox(s_x, s_y, s_w, s_h, e_x, e_y, e_w, e_h) \
                                       mt_graf_growbox(s_x, s_y, s_w, s_h, e_x, e_y, e_w, e_h, _globl)
#define graf_shrinkbox(s_x, s_y, s_w, s_h, e_x, e_y, e_w, e_h) \
                                       mt_graf_shrinkbox(s_x, s_y, s_w, s_h, e_x, e_y, e_w, e_h, _globl)
#define graf_watchbox(tree, obj_nr, instate, outstate) \
                                       mt_graf_watchbox(tree, obj_nr, instate, outstate, _globl)
#define graf_slidebox(tree, parent, obj_nr, isvert) \
                                       mt_graf_slidebox(tree, parent, obj_nr, isvert, _globl)
#define graf_handle(wchar, hchar, wbox, hbox) \
                                       mt_graf_handle(wchar, hchar, wbox, hbox, _globl)
#define graf_mouse(mouse_nr, form)     mt_graf_mouse(mouse_nr, form, _globl)
#define graf_mkstate(x, y, mstate, kstate) \
                                       mt_graf_mkstate(x, y, mstate, kstate, _globl)
#define graf_multirubber(x, y, minw, minh, rec, outw, outh) \
                                       mt_graf_multirubber(x, y, minw, minh, rec, outw, outh, _globl)

/******************************************************************************/

/* GRAF-Erweiterungen von MagiC */
#define graf_wwatchbox(wptree, wobject, winstate, woutstate, whandle) \
                           mt_graf_wwatchbox(wptree, wobject, winstate, woutstate, whandle, _globl)
#define graf_xhandle(wchar, hchar, wbox, hbox, device) \
                           mt_graf_xhandle(wchar, hchar, wbox, hbox, device, _globl)

/******************************************************************************/

/* Die SRCP-Funktionen */
#define scrp_read(pathname)         mt_scrp_read(pathname, _globl)
#define scrp_write(pathname)        mt_scrp_write(pathname, _globl)
#define scrp_clear()                mt_scrp_clear(_globl)

/******************************************************************************/

/* Die FSEL-Funktionen */
#define fsel_input(path, name, button)             mt_fsel_input(path, name, button, _globl)
#define fsel_exinput(path, name, button, label)    mt_fsel_exinput(path, name, button, label, _globl)
#define fsel_boxinput(path, name, button, label, callback) \
                                                   mt_fsel_boxinput(path, name, button, label, callback, _globl)

/******************************************************************************/

/* Die FSLX-Funktionen (MagiC, WDialog) */
#define fslx_open(a, b, c, d, e, f, g, h, i, j, k, l, m) \
                                          mt_fslx_open(a, b, c, d, e, f, g, h, i, j, k, l, m, _globl)
#define fslx_close(fsd)                   mt_fslx_close(fsd, _globl)
#define fslx_getnxtfile(fsd, fname)       mt_fslx_getnxtfile(fsd, fname, _globl)
#define fslx_evnt(a, b, c, d, e, f, g, h) mt_fslx_evnt(a, b, c, d, e, f, g, h, _globl)
#define fslx_do(a, b, c, d, e, f, g, h, i, j, k, l, m) \
                                          mt_fslx_do(a, b, c, d, e, f, g, h, i, j, k, l, m, _globl)
#define fslx_set_flags(flags, oldval)     mt_fslx_set_flags(flags, oldval, _globl)

/******************************************************************************/

/* Die WIND-Funktionen */
#define wind_create(kind, x, y, w, h)        mt_wind_create(kind, x, y, w, h, _globl)
#define wind_create_grect(kind, r)           mt_wind_create_grect(kind, r, _globl)
#define wind_open(handle, x, y, w, h)        mt_wind_open(handle, x, y, w, h, _globl)
#define wind_open_grect(handle, g)           mt_wind_open_grect(handle, g, _globl)
#define wind_close(handle)                   mt_wind_close(handle, _globl)
#define wind_delete(handle)                  mt_wind_delete(handle, _globl)
#define wind_getQSB(handle, buffer, length)  mt_wind_getQSB(handle, buffer, length, _globl)
#define wind_get_int(handle, what, g1)       mt_wind_get_int(handle, what, g1, _globl )
#define wind_set_int(handle, what, d1)       mt_wind_set_int(handle, what, g1, _globl)
#define wind_find(x, y)                      mt_wind_find(x, y, _globl)
#define wind_update(what)                    mt_wind_update(what, _globl)
#define wind_calc(wtype, kind, x, y, w, h, px, py, pw, ph) \
                                             mt_wind_calc(wtype, kind, x, y, w, h, px, py, pw, ph, _globl)
#define wind_calc_grect(type, parts, in, out) \
                                             mt_wind_calc_grect(type, parts, in, out, _globl)
#define wind_new()                           mt_wind_new(_globl)
#define wind_draw(handle, startob)           mt_wind_draw(handle, startob, _globl)

/* Wegen variabler Parameter immer als Funktionen implementiert */
int16 wind_get( int16 handle, int16 what, ... );      /* up to 4 Pointers to int16 */
int16 wind_get_opt( int16 handle, int16 what, ... );  /* optimized for Pointers    */
int16 wind_set( int16 handle, int16 what, ... );

/******************************************************************************/

/* Die RSRC-Funktionen */
#define rsrc_load(name)                mt_rsrc_load(name, _globl)
#define rsrc_free()                    mt_rsrc_free(_globl)
#define rsrc_gaddr(type, id, addr)     mt_rsrc_gaddr(type, id, addr, _globl)
#define rsrc_saddr(type, id, addr)     mt_rsrc_saddr(type, id, addr, _globl)
#define rsrc_obfix(tree, obj)          mt_rsrc_obfix(tree, obj, _globl)
#define rsrc_rcfix(rc_header)          mt_rsrc_rcfix(rc_header, _globl)

/******************************************************************************/

/* Die SHEL-Funktionen */
#define shel_read(cmd, tail)           mt_shel_read(cmd, tail, _globl)
#define shel_write(do_execute, is_graph, is_overlay, cmd, tail) \
                                       mt_shel_write(do_execute, is_graph, is_overlay, cmd, tail, _globl)
#define shel_get(addr, len)            mt_shel_get(addr, len, _globl)
#define shel_put(addr, len)            mt_shel_put(addr, len, _globl)
#define shel_find(path)                mt_shel_find(path, _globl)
#define shel_envrn(value, name)        mt_shel_envrn(value, name, _globl)
#define shel_rdef(cmd, dir)            mt_shel_rdef(cmd, dir, _globl)
#define shel_wdef(cmd, dir)            mt_shel_wdef(cmd, dir, _globl)
#define shel_help(mode, file, key)     mt_shel_help(mode, file, key, _globl)

/* Andere Schreibweise */
#define shel_environ(value, name)      mt_shel_envrn(value, name, _globl)

/******************************************************************************/

/* Die FNTS-Funktionen */
#define fnts_add(fnt_dialog, user_fonts)     mt_fnts_add(fnt_dialog, user_fonts, _globl)
#define fnts_close(fnt_dialog, x, y)         mt_fnts_close(fnt_dialog, x, y, _globl)
#define fnts_create(a, b, c, d, e, f)        mt_fnts_create(a, b, c, d, e, f, _globl)
#define fnts_delete(fnt_dialog, vdi_handle)  mt_fnts_delete(fnt_dialog, vdi_handle, _globl)
#define fnts_do(a, b, c, d, e, f, g, h, i)   mt_fnts_do(a, b, c, d, e, f, g, h, i, _globl)
#define fnts_evnt(a, b, c, d, e, f, g)       mt_fnts_evnt(a, b, c, d, e, f, g, _globl)
#define fnts_get_info(fnt_dialog, id, mono, outline) \
                                             mt_fnts_get_info(fnt_dialog, id, mono, outline, _globl)
#define fnts_get_name(fnt_dialog, id, full_name, family_name, style_name) \
                                             mt_fnts_get_name(fnt_dialog, id, full_name, \
                                                   family_name, style_name, _globl)
#define fnts_get_no_styles(fnt_dialog, id)   mt_fnts_get_no_styles(fnt_dialog, id, _globl)
#define fnts_get_style(fnt_dialog, id, index)mt_fnts_get_style(fnt_dialog, id, index, _globl)
#define fnts_open(fnt_dialog, button_flags, x, y, id, pt, ratio) \
                                             mt_fnts_open(fnt_dialog, button_flags, x, y, id, pt, ratio, _globl)
#define fnts_remove(fnt_dialog)              mt_fnts_remove(fnt_dialog, _globl)
#define fnts_update(fnt_dialog, button_flags, id, pt, ratio) \
                                             mt_fnts_update(fnt_dialog, button_flags, id, pt, ratio, _globl)

/******************************************************************************/

/* Die LBOX-Funktionen */
#define lbox_ascroll_to(box, first, box_rect, slider_rect) \
                                    mt_lbox_ascroll_to(box, first, box_rect, slider_rect, _globl)
#define lbox_scroll_to(box, first, box_rect, slider_rect) \
                                    mt_lbox_ascroll_to(box, first, box_rect, slider_rect, _globl)
#define lbox_bscroll_to(box, first, box_rect, slider_rect) \
                                    mt_lbox_bscroll_to(box, first, box_rect, slider_rect, _globl)
#define lbox_cnt_items(box)         mt_lbox_cnt_items(box, _globl)
#define lbox_create(tr, slct, set, items, v_a, f_a, c_objs, objs, flags, p_a, user, dia, v_b, f_b, e_b, p_b) \
                                    mt_lbox_create(tr, slct, set, items, v_a, f_a, c_objs, objs, flags, p_a, user, dia, v_b, f_b, e_b, p_b, _globl)
#define lbox_delete(box)            mt_lbox_delete(box, _globl)
#define lbox_do(box, obj)           mt_lbox_do(box, obj, _globl)
#define lbox_free_items(box)        mt_lbox_free_items(box, _globl)
#define lbox_free_list(items)       mt_lbox_free_list(items, _globl)
#define lbox_get_afirst(box)        mt_lbox_get_afirst(box, _globl)
#define lbox_get_first(box)         mt_lbox_get_first(box, _globl)
#define lbox_get_avis(box)          mt_lbox_get_avis(box, _globl)
#define lbox_get_visible(box)       mt_lbox_get_visible(box, _globl)
#define lbox_get_bentries(box)      mt_lbox_get_bentries(box, _globl)
#define lbox_get_bfirst(box)        mt_lbox_get_bfirst(box, _globl)
#define lbox_get_idx(items, search) mt_lbox_get_idx(items, search, _globl)
#define lbox_get_item(box, n)       mt_lbox_get_item(box, n, _globl)
#define lbox_get_items(box)         mt_lbox_get_items(box, _globl)
#define lbox_get_bvis(box)          mt_lbox_get_bvis(box, _globl)
#define lbox_get_slct_idx(box)      mt_lbox_get_slct_idx(box, _globl)
#define lbox_get_slct_item(box)     mt_lbox_get_slct_item(box, _globl)
#define lbox_get_tree(box)          mt_lbox_get_tree(box, _globl)
#define lbox_get_udata(box)         mt_lbox_get_udata(box, _globl)
#define lbox_set_asldr(box, first, rect) \
                                    mt_lbox_set_asldr(box, first, rect, _globl)
#define lbox_set_slider(box, first, rect) \
                                    mt_lbox_set_slider(box, first, rect, _globl)
#define lbox_set_bentries(box, entries) \
                                    mt_lbox_set_bentries(box, entries, _globl)
#define lbox_set_bsldr(box, first, rect) \
                                    mt_lbox_set_bsldr(box, first, rect, _globl)
#define lbox_set_items(box, items)  mt_lbox_set_items(box, items, _globl)
#define lbox_update(box, rect)      mt_lbox_update(box, rect, _globl)

/******************************************************************************/

/* Die PDLG-Funktionen */
#define pdlg_add_printers(prn_dialog, drv_info) \
                                       mt_pdlg_add_printers(prn_dialog, drv_info, _globl)
#define pdlg_add_sub_dialogs(prn_dialog, sub_dialog) \
                                       mt_pdlg_add_sub_dialogs(prn_dialog, sub_dialog, _globl)
#define pdlg_close(prn_dialog, x, y)   mt_pdlg_close(prn_dialog, x, y, _globl)
#define pdlg_create(dialog_flags)      mt_pdlg_create(dialog_flags, _globl)
#define pdlg_delete(prn_dialog)        mt_pdlg_delete(prn_dialog, _globl)
#define pdlg_dflt_settings(prn_dialog, settings) \
                                       mt_pdlg_dflt_settings(prn_dialog, settings, _globl)
#define pdlg_do(prn_dialog, settings, document_name, option_flags) \
                                       mt_pdlg_do(prn_dialog, settings, document_name, option_flags, _globl)
#define pdlg_evnt(prn_dialog, settings, events, button) \
                                       mt_pdlg_evnt(prn_dialog, settings, events, button, _globl)
#define pdlg_free_settings(settings)   mt_pdlg_free_settings(settings, _globl)
#define pdlg_get_setsize()             mt_pdlg_get_setsize(_globl)
#define pdlg_new_settings(prn_dialog)  mt_pdlg_new_settings(prn_dialog, _globl)
#define pdlg_open(prn_dialog, settings, document_name, option_flags, x, y) \
                                       mt_pdlg_open(prn_dialog, settings, document_name, option_flags, x, y, _globl)
#define pdlg_remove_printers(prn_dialog) \
                                       mt_pdlg_remove_printers(prn_dialog, _globl)
#define pdlg_remove_sub_dialogs(prn_dialog) \
                                       mt_pdlg_remove_sub_dialogs(prn_dialog, _globl)
#define pdlg_update(prn_dialog, document_name) \
                                       mt_pdlg_update(prn_dialog, document_name, _globl)
#define pdlg_use_settings(prn_dialog, settings) \
                                       mt_pdlg_use_settings(prn_dialog, settings, _globl)
#define pdlg_validate_settings(prn_dialog, settings) \
                                       mt_pdlg_validate_settings(prn_dialog, settings, _globl)

/******************************************************************************/

/* Die WDLG-Funktionen */
#define wdlg_create(handle_exit, tree, user_data, code, data, flags) \
                                          mt_wdlg_create(handle_exit, tree, user_data, code, data, flags, _globl)
#define wdlg_open(dialog, title, kind, x, y, code, data) \
                                          mt_wdlg_open(dialog, title, kind, x, y, code, data, _globl)
#define wdlg_close(dialog, x, y)          mt_wdlg_close(dialog, x, y, _globl)
#define wdlg_delete(dialog)               mt_wdlg_delete(dialog, _globl)
#define wdlg_get_tree(dialog, tree, r)    mt_wdlg_get_tree(dialog, tree, r, _globl)
#define wdlg_get_edit(dialog, cursor)     mt_wdlg_get_edit(dialog, cursor, _globl)
#define wdlg_get_udata(dialog)            mt_wdlg_get_udata(dialog, _globl)
#define wdlg_get_handle(dialog)           mt_wdlg_get_handle(dialog, _globl)
#define wdlg_set_edit(dialog, obj)        mt_wdlg_set_edit(dialog, obj, _globl)
#define wdlg_set_tree(dialog, new_tree)   mt_wdlg_set_tree(dialog, new_tree, _globl)
#define wdlg_set_size(dialog, new_size)   mt_wdlg_set_size(dialog, new_size, _globl)
#define wdlg_set_iconify(dialog, g, title, tree, obj) \
                                          mt_wdlg_set_iconify(dialog, g, title, tree, obj, _globl)
#define wdlg_set_uniconify(dialog, g, title, tree) \
                                          mt_wdlg_set_uniconify(dialog, g, title, tree, _globl)
#define wdlg_evnt(dialog, events)         mt_wdlg_evnt(dialog, events, _globl)
#define wdlg_redraw(dialog, rect, obj, depth) \
                                          mt_wdlg_redraw(dialog, rect, obj, depth, _globl)

/******************************************************************************/

/* Die EDIT-Funktionen */
#define edit_create()                        mt_edit_create(_globl)
#define edit_set_buf(tree, obj, buffer, buflen) \
                                             mt_edit_set_buf(tree, obj, buffer, buflen, _globl)
#define edit_open(tree, obj)                 mt_edit_open(tree, obj, _globl)
#define edit_close(tree, obj)                mt_edit_close(tree, obj, _globl)
#define edit_delete(editinfo)                mt_edit_delete(editinfo, _globl)
#define edit_cursor(tree, obj, whdl, show)   mt_edit_cursor(tree, obj, whdl, show, _globl)
#define edit_evnt(tree, obj, whdl, events, errcode) \
                                             mt_edit_evnt(tree, obj, whdl, events, errcode, _globl)
#define edit_get_buf(tree, obj, buffer, buflen, txtlen) \
                                             mt_edit_get_buf(tree, obj, buffer, buflen, txtlen, _globl)
#define edit_get_format(tree, obj, tabwidth, autowrap) \
                                             mt_edit_get_format(tree, obj, tabwidth, autowrap, _globl)
#define edit_get_colour(tree, obj, tcolour, bcolour) \
                                             mt_edit_get_colour(tree, obj, tcolour, bcolour, _globl)
#define edit_get_font(tree, obj, fontID, fontH, fontPix, mono) \
                                             mt_edit_get_font(tree, obj, fontID, fontH, fontPix, mono, _globl)
#define edit_get_cursor(tree, obj, cursorpos) \
                                             mt_edit_get_cursor(tree, obj, cursorpos, _globl)
#define edit_get_pos(tree, obj, xscroll, yscroll, cyscroll, cursorpos, cx, cy) \
                                             mt_edit_get_pos(tree, obj, xscroll, yscroll, cyscroll, cursorpos, cx, cy, _globl)
#define edit_get_dirty(tree, obj)            mt_edit_get_dirty(tree, obj, _globl)
#define edit_get_sel(tree, obj, bsel, esel)  mt_edit_get_sel(tree, obj, bsel, esel, _globl)
#define edit_get_scrollinfo(tree, obj, nlines, yscroll, yvis, yval, ncols, xscroll, xvis) \
                                             mt_edit_get_scrollinfo(tree, obj, nlines, yscroll, yvis, yval, ncols, xscroll, xvis, _globl)
#define edit_set_format(tree, obj, tabwidth, autowrap) \
                                             mt_edit_set_format(tree, obj, tabwidth, autowrap, _globl)
#define edit_set_colour(tree, obj, tcolour, bcolour) \
                                             mt_edit_set_colour(tree, obj, tcolour, bcolour, _globl)
#define edit_set_font(tree, obj, fontID, fontH, fontPix, mono) \
                                             mt_edit_set_font(tree, obj, fontID, fontH, fontPix, mono, _globl)
#define edit_set_cursor(tree, obj, cursorpos) \
                                             mt_edit_set_cursor(tree, obj, cursorpos, _globl)
#define edit_set_pos(tree, obj, xscroll, yscroll, cyscroll, cursorpos, cx, cy) \
                                             mt_edit_set_pos(tree, obj, xscroll, yscroll, cyscroll, cursorpos, cx, cy, _globl)
#define edit_resized(tree, obj, oldrh, newrh) \
                                             mt_edit_resized(tree, obj, oldrh, newrh, _globl)
#define edit_set_dirty(tree, obj, dirty)     mt_edit_set_dirty(tree, obj, dirty, _globl)
#define edit_scroll(tree, obj, whdl, yscroll, xscroll) \
                                             mt_edit_scroll(tree, obj, whdl, yscroll, xscroll, _globl)

/* edit_get_colour = edit_get_color? Ein Schreibfeher in der MagiC-Dokumentation? */
#define edit_get_color(tree, obj, tcolor, bcolor) \
                                             mt_edit_get_colour(tree, obj, tcolor, bcolor, _globl)

/* edit_set_colour = edit_set_color? Ein Schreibfeher in der MagiC-Dokumentation? */
#define edit_set_color(tree, obj, tcolor, bcolor) \
                                             mt_edit_set_colour(tree, obj, tcolor, bcolor, _globl)

/******************************************************************************/
/*                                                                            */
/* N?tzliche Erweiterungen                                                    */
/*                                                                            */
/******************************************************************************/

#define wind_get_grect(handle, what, r)      mt_wind_get_grect(handle, what, r, _globl)
#define wind_xget_grect(handle, what, clip, r) \
                                             mt_wind_xget_grect(handle, what, clip, r, _globl)
#define wind_set_grect(handle, what, r)      mt_wind_set_grect(handle, what, r, _globl)
#define wind_xset_grect(handle, what, s, r)  mt_wind_xset_grect(handle, what, s, r, _globl)
#define wind_set_str(handle, what, str)      mt_wind_set_str(handle, what, str, _globl)

/******************************************************************************/

#endif

/******************************************************************************/
/*                                                                            */
/* Die PureC-Funktionen ggf. als Funktionen, die die MT-Funktionen aufrufen   */
/*                                                                            */
/******************************************************************************/

#ifdef __COMPATIBLE_FKT__

/******************************************************************************/

/* Die APPL-Funktionen */
int16 appl_init( void );
int16 appl_read( int16 rwid, int16 length, void *pbuff );
int16 appl_write( int16 rwid, int16 length, void *pbuff );
int16 appl_find( const char *pname );
int16 appl_search( int16 mode, char *fname, int16 *type, int16 *ap_id );
int16 appl_tplay( APPLRECORD *tbuffer, int16 tlength, int16 tscale );
int16 appl_trecord( APPLRECORD *tbuffer, int16 tlength );
int16 appl_bvset( uint16 bvdisk, uint16 bvhard );
int16 appl_yield( void );
int16 appl_exit( void );
int16 appl_getinfo( int16 type, int16 *out1, int16 *out2, int16 *out3, int16 *out4 );
int16 appl_getinfo_str( int16 type, char *str1, char *str2, char *str3, char *str4 );
int16 appl_control( int16 ap_cid, int16 ap_cwhat, void *ap_cout );

/******************************************************************************/

/* Die EVNT-Funktionen */
int16 evnt_keybd( void );
int16 evnt_button( int16 ev_bclicks, uint16 ev_bmask,
            uint16 ev_bstate, int16 *ev_bmx, int16 *ev_bmy, int16 *ev_bbutton,
            int16 *ev_bkstate );
int16 evnt_xbutton( int16 ev_bclicks, uint16 ev_bmask,
            uint16 ev_bstate, int16 *ev_bmx, int16 *ev_bmy, int16 *ev_bbutton,
            int16 *ev_bkstate, int16 *ev_bwhlpbuff );
int16 evnt_mouse( int16 ev_moflags, int16 ev_mox, int16 ev_moy,
            int16 ev_mowidth, int16 ev_moheight, int16 *ev_momx, int16 *ev_momy,
            int16 *ev_mobutton, int16 *ev_mokstate );
int16 evnt_mesag( int16 *pbuff );
int16 evnt_timer( int16 ev_tlocount, int16 ev_thicount );
int16 evnt_multi( int16 ev_mflags, int16 ev_mbclicks, int16 ev_mbmask,
            int16 ev_mbstate, int16 ev_mm1flags, int16 ev_mm1x,
            int16 ev_mm1y, int16 ev_mm1width, int16 ev_mm1height,
            int16 ev_mm2flags, int16 ev_mm2x, int16 ev_mm2y,
            int16 ev_mm2width, int16 ev_mm2height, int16 *ev_mmgpbuff,
            int16 ev_mtlocount, int16 ev_mthicount, int16 *ev_mmox,
            int16 *ev_mmoy, int16 *ev_mmbutton, int16 *ev_mmokstate, int16 *ev_mkreturn,
            int16 *ev_mbreturn );
int16 evnt_xmulti( int16 ev_mflags, int16 ev_mbclicks, int16 ev_mbmask,
            int16 ev_mbstate, int16 ev_mm1flags, int16 ev_mm1x,
            int16 ev_mm1y, int16 ev_mm1width, int16 ev_mm1height,
            int16 ev_mm2flags, int16 ev_mm2x, int16 ev_mm2y,
            int16 ev_mm2width, int16 ev_mm2height, int16 *ev_mmgpbuff,
            int16 ev_mtlocount, int16 ev_mthicount, int16 *ev_mmox,
            int16 *ev_mmoy, int16 *ev_mmbutton, int16 *ev_mmokstate, int16 *ev_mkreturn,
            int16 *ev_mbreturn, int16 *ev_mwhlpbuff );
void EVNT_multi( int16 ev_mflags, int16 ev_mbclicks, int16 ev_mbmask,
            int16 ev_mbstate, MOBLK *m1, MOBLK *m2, int32 ev_mtimer,
            EVNT *event );
int16 evnt_dclick( int16 rate, int16 setit );

/* Eigener optimierter Aufruf */
int16 evnt_event( MultiEventIn *input, MultiEventOut *output );

/* Optimierter, Pure-C kompatibler Aufruf */
int16 EvntMulti( EVENT *evnt_data );

/******************************************************************************/

/* Die OBJC-Funktionen */
int16 objc_add( OBJECT *tree, int16 parent, int16 child );
int16 objc_delete( OBJECT *tree, int16 objnr );
int16 objc_draw( OBJECT *tree, int16 start, int16 depth,
            int16 xclip, int16 yclip, int16 wclip, int16 hclip );
int16 objc_draw_grect( OBJECT *tree, int16 start, int16 depth, const GRECT *r );
int16 objc_find( OBJECT *tree, int16 start, int16 depth,
            int16 mx, int16 my );
int16 objc_offset( OBJECT *tree, int16 objnr, int16 *x, int16 *y );
int16 objc_order( OBJECT *tree, int16 objnr, int16 new_nr );
int16 objc_edit( OBJECT *tree, int16 objnr, int16 inchar,
            int16 *idx, int16 kind );
int16 objc_xedit( OBJECT *tree, int16 objnr, int16 inchar, int16 *idx,
            int16 kind, GRECT *r );
int16 objc_change( OBJECT *tree, int16 objnr, int16 reserved, 
            int16 xclip, int16 yclip, int16 wclip, int16 hclip,
            int16 newstate, int16 redraw );
int16 objc_sysvar( int16 mode, int16 which, int16 in1, int16 in2,
            int16 *out1, int16 *out2 );

/******************************************************************************/

/* OBJC-Erweiterungen von MagiC */
void objc_wdraw( OBJECT *tree, int16 start, int16 depth, GRECT *clip,
            int16 whandle );
int16 objc_wedit( OBJECT *ob_edtree, int16 ob_edobject, int16 ob_edchar, 
            int16 *ob_edidx, int16 ob_edkind, int16 whandle );
void objc_wchange( OBJECT *tree, int16 objnr, int16 newstate,
            GRECT *clip, int16 whandle );
int16 objc_xfind( OBJECT *obj, int16 start, int16 depth,
            int16 x, int16 y );

/******************************************************************************/

/* Die MENU-Funktionen */
int16 menu_bar( OBJECT *tree, int16 show );
int16 menu_icheck( OBJECT *tree, int16 item, int16 check );
int16 menu_ienable( OBJECT *tree, int16 item, int16 enable );
int16 menu_tnormal( OBJECT *tree, int16 title, int16 normal );
int16 menu_text( OBJECT *tree, int16 item, char *text );
int16 menu_register( int16 apid, char *string );
int16 menu_unregister( int16 apid );
int16 menu_click( int16 click, int16 setit );
int16 menu_attach( int16 flag, OBJECT *tree, int16 item, MENU *mdata );
int16 menu_istart( int16 flag, OBJECT *tree, int16 imenu, int16 item );
int16 menu_popup( MENU *menu, int16 xpos, int16 ypos, MENU *mdata );
int16 menu_settings( int16 flag, MN_SET *set );

/******************************************************************************/

/* Die FORM-Funktionen */
int16 form_do( OBJECT *tree, int16 start );
int16 form_dial( int16 flag, int16 xlittle, int16 ylittle,
            int16 wlittle, int16 hlittle, int16 xbig, int16 ybig,
            int16 wbig, int16 hbig );
int16 form_alert( int16 defbutton, const char *string );
int16 form_error( int16 errnum );
int16 form_center( OBJECT *tree, int16 *x, int16 *y, int16 *w, int16 *h );
int16 form_center_grect( OBJECT *tree, GRECT *r );
int16 form_keybd( OBJECT *tree, int16 obj, int16 next,
            int16 input_char, int16 *next_obj, int16 *pchar );
int16 form_button( OBJECT *tree, int16 obj, int16 clicks, int16 *next_obj );
int16 form_popup( OBJECT *tree, int16 x, int16 y);

/******************************************************************************/

/* FlyDials-Funktionen von MagiC */
int16 form_wbutton( OBJECT *fo_btree, int16 fo_bobject,
            int16 fo_bclicks, int16 *fo_bnxtobj, int16 whandle );
int16 form_xdial( int16 fo_diflag, int16 fo_dilittlx, int16 fo_dilittly, 
            int16 fo_dilittlw, int16 fo_dilittlh, int16 fo_dibigx,
            int16 fo_dibigy, int16 fo_dibigw, int16 fo_dibigh, 
            void **flydial );
int16 form_xdial_grect( int16 fo_diflag, const GRECT *fo_dilittl,
            const GRECT *fo_dibig, void **flydial );
int16 form_xdo( OBJECT *tree, int16 startob,
            int16 *lastcrsr, const XDO_INF *tabs, void *flydial );
int16 form_xerr( int32 errcode, const char *errfile );

/******************************************************************************/

/* Die GRAF-Funktionen */
int16 graf_rubbox( int16 x, int16 y, int16 w_min,
            int16 h_min, int16 *w_end, int16 *h_end );
int16 graf_rubbbox( int16 x, int16 y, int16 w_min,
            int16 h_min, int16 *w_end, int16 *h_end );
int16 graf_rubberbox( int16 x, int16 y, int16 w_min,
            int16 h_min, int16 *w_end, int16 *h_end );
int16 graf_dragbox( int16 w, int16 h, int16 sx,
            int16 sy, int16 xc, int16 yc, int16 wc, int16 hc,
            int16 *x, int16 *y );
int16 graf_mbox( int16 w, int16 h, int16 start_x,  int16 start_y,
            int16 ende_x, int16 ende_y );
int16 graf_movebox( int16 w, int16 h, int16 start_x, int16 start_y,
            int16 ende_x, int16 ende_y );
int16 graf_growbox( int16 start_x, int16 start_y,  int16 start_w,
            int16 start_h, int16 ende_x, int16 ende_y, int16 ende_w,
            int16 ende_h );
int16 graf_shrinkbox( int16 start_x, int16 start_y, int16 start_w,
            int16 start_h, int16 ende_x, int16 ende_y, int16 ende_w,
            int16 ende_h );
int16 graf_watchbox( OBJECT *tree, int16 obj_nr, int16 instate,
            int16 outstate );
int16 graf_slidebox( OBJECT *tree, int16 parent, int16 obj_nr,
            int16 isvert );
int16 graf_handle( int16 *wchar, int16 *hchar, int16 *wbox, int16 *hbox );
int16 graf_mouse( int16 mouse_nr, MFORM *form );
int16 graf_mkstate( int16 *x, int16 *y, int16 *mstate, int16 *kstate );
int16 graf_multirubber( int16 x, int16 y, int16 minw, int16 minh,
            GRECT *rec, int16 *outw, int16 *outh );

/******************************************************************************/

/* GRAF-Erweiterungen von MagiC */
int16 graf_wwatchbox( OBJECT *gr_wptree, int16 gr_wobject,
            int16 gr_winstate, int16 gr_woutstate, int16 whandle );
int16 graf_xhandle( int16 *wchar, int16 *hchar, int16 *wbox, int16 *hbox, int16 *device );

/******************************************************************************/

/* Die SRCP-Funktionen */
int16 scrp_read( char *pathname );
int16 scrp_write( char *pathname );
int16 scrp_clear( void );

/******************************************************************************/

/* Die FSEL-Funktionen */
int16 fsel_input( char *path, char *name, int16 *button );
int16 fsel_exinput( char *path, char *name, int16 *button, const char *label );
int16 fsel_boxinput( char *path, char *name, int16 *button,
         const char *label, FSEL_CALLBACK callback );

/******************************************************************************/

/* Die FSLX-Funktionen (MagiC, WDialog) */
void *fslx_open( const char *title, int16 x, int16 y, int16 *handle, char *path,
            int16 pathlen, char *fname, int16 fnamelen, char *patterns,
            XFSL_FILTER *filter, char *paths, int16 sort_mode, int16 flags);
int16 fslx_close( void *fsd );
int16 fslx_getnxtfile( void *fsd, char *fname );
int16 fslx_evnt( void *fsd, EVNT *events, char *path, char *fname, int16 *button,
         int16 *nfiles, int16 *sort_mode, char **pattern );
void *fslx_do( const char *title, char *path, int16 pathlen, char *fname,
            int16 fnamelen, char *patterns, XFSL_FILTER *filter, char *paths,
            int16 *sort_mode, int16 flags, int16 *button, int16 *nfiles, char **pattern );
int16 fslx_set_flags( int16 flags, int16 *oldval );

/******************************************************************************/

/* Die WIND-Funktionen */
int16 wind_create( int16 kind, int16 max_x, int16 max_y,
            int16 max_w, int16 max_h );
int16 wind_create_grect( int16 kind,  const GRECT *r );
int16 wind_open( int16 handle, int16 x, int16 y,
            int16 w, int16 h );
int16 wind_close( int16 handle );
int16 wind_delete( int16 handle );
int16 wind_getQSB( int16 handle, void **buffer, int32 *length );
int16 wind_get_int( int16 handle, int16 what, int16 *g1 );
int16 wind_set_grect( int16 handle, int16 what, const GRECT *r );
int16 wind_set_int( int16 handle, int16 what, int g1 );
int16 wind_find( int16 x, int16 y );
int16 wind_update( int16 what );
int16 wind_calc( int16 wtype, int16 kind, int16 x, int16 y,
            int16 w, int16 h, int16 *px, int16 *py, int16 *pw, int16 *ph );
int16 wind_calc_grect( int16 wtype, int16 kind, const GRECT *input,
            GRECT *output);
int16 wind_new( void );
int16 wind_draw( int16 handle, int16 startob );

/* Wegen variabler Parameter immer als Funktionen implementiert */
int16 wind_get( int16 handle, int16 what, ... );      /* up to 4 Pointers to int16 */
int16 wind_get_opt( int16 handle, int16 what, ... );  /* optimized for Pointers    */
int16 wind_set( int16 handle, int16 what, ... );

/******************************************************************************/

/* Die RSRC-Funktionen */
int16 rsrc_load( const char *name );
int16 rsrc_free( void );
int16 rsrc_gaddr( int16 type, int16 id, void *addr );
int16 rsrc_saddr( int16 type, int16 id, void *addr );
int16 rsrc_obfix( OBJECT *tree, int16 obj );
int16 rsrc_rcfix( void *rc_header );

/******************************************************************************/

/* Die SHEL-Funktionen */
int16 shel_read( char *cmd, char *tail );
int16 shel_write( int16 do_execute, int16 is_graph, int16 is_overlay,
            char *cmd, char *tail );
int16 shel_get( char *addr, int16 len );
int16 shel_put( char *addr, int16 len );
int16 shel_find( char *path );
int16 shel_envrn( char **value, char *name );
int16 shel_rdef( char *cmd, char *dir );
int16 shel_wdef( char *cmd, char *dir );
int16 shel_help( int16 sh_hmode, char *sh_hfile, char *sh_hkey );

/* Andere Schreibweise */
#define shel_environ(value, name)   shel_envrn(value, name)

/******************************************************************************/

/* Die FNTS-Funktionen */
int16 fnts_add( FNT_DIALOG *fnt_dialog, FNTS_ITEM *user_fonts );
int16 fnts_close( FNT_DIALOG *fnt_dialog, int16 *x, int16 *y );
FNT_DIALOG *fnts_create( int16 vdi_handle, int16 no_fonts,
               int16 font_flags, int16 dialog_flags,
               const char *sample, const char *opt_button );
int16 fnts_delete( FNT_DIALOG *fnt_dialog, int16 vdi_handle );
int16 fnts_do( FNT_DIALOG *fnt_dialog, int16 button_flags, int32 id_in,
               fix31 pt_in, int32 ratio_in, int16 *check_boxes, 
               int32 *id, fix31 *pt, fix31 *ratio );
int16 fnts_evnt( FNT_DIALOG *fnt_dialog, EVNT *events, int16 *button,
               int16 *check_boxes, int32 *id, fix31 *pt, fix31 *ratio );
int16 fnts_get_info( FNT_DIALOG *fnt_dialog, int32 id, int16 *mono,
               int16  *outline );
int16 fnts_get_name( FNT_DIALOG *fnt_dialog, int32 id, char *full_name,
               char *family_name, char *style_name );
int16 fnts_get_no_styles( FNT_DIALOG *fnt_dialog, int32 id );
int32 fnts_get_style( FNT_DIALOG *fnt_dialog, int32 id, int16 index );
int16 fnts_open( FNT_DIALOG *fnt_dialog, int16 button_flags, int16 x,
               int16 y, int32 id, fix31 pt, fix31 ratio );
void fnts_remove( FNT_DIALOG *fnt_dialog );
int16 fnts_update( FNT_DIALOG *fnt_dialog, int16 button_flags,
               int32 id, fix31 pt, int32 ratio );

/******************************************************************************/

/* Die LBOX-Funktionen */
void lbox_ascroll_to( LIST_BOX *box, int16 first, GRECT *box_rect, GRECT *slider_rect );
void lbox_scroll_to( LIST_BOX *box, int16 first, GRECT *box_rect, GRECT *slider_rect );
void lbox_bscroll_to( LIST_BOX *box, int16 first, GRECT *box_rect, GRECT *slider_rect );
int16 lbox_cnt_items( LIST_BOX *box );
LIST_BOX *lbox_create( OBJECT *tree, SLCT_ITEM slct, SET_ITEM set,
               LBOX_ITEM *items, int16 visible_a, int16 first_a,
               const int16 *ctrl_objs, const int16 *objs, int16 flags, 
               int16 pause_a, void *user_data, DIALOG *dialog,
               int16 visible_b, int16 first_b, int16 entries_b, 
               int16 pause_b );
int16 lbox_delete( LIST_BOX *box );
int16 lbox_do( LIST_BOX *box, int16 obj );
void lbox_free_items( LIST_BOX *box );
void lbox_free_list( LBOX_ITEM *items );
int16 lbox_get_afirst( LIST_BOX *box );
int16 lbox_get_first( LIST_BOX *box );
int16 lbox_get_avis( LIST_BOX *box );
int16 lbox_get_visible( LIST_BOX *box );
int16 lbox_get_bentries( LIST_BOX *box );
int16 lbox_get_bfirst( LIST_BOX *box );
int16 lbox_get_bvis( LIST_BOX *box );
int16 lbox_get_idx( LBOX_ITEM *items, LBOX_ITEM *search );
LBOX_ITEM *lbox_get_item( LIST_BOX *box, int16 n );
LBOX_ITEM *lbox_get_items( LIST_BOX *box );
int16 lbox_get_slct_idx( LIST_BOX *box );
LBOX_ITEM *lbox_get_slct_item( LIST_BOX *box );
OBJECT *lbox_get_tree( LIST_BOX *box );
void *lbox_get_udata( LIST_BOX *box );
void lbox_set_asldr( LIST_BOX *box, int16 first, GRECT *rect );
void lbox_set_slider( LIST_BOX *box, int16 first, GRECT *rect );
void lbox_set_bentries( LIST_BOX *box, int16 entries );
void lbox_set_bsldr( LIST_BOX *box, int16 first, GRECT *rect );
void lbox_set_items( LIST_BOX *box, LBOX_ITEM *items );
void lbox_update( LIST_BOX *box, GRECT *rect );

/******************************************************************************/

/* Die PDLG-Funktionen */
int16 pdlg_add_printers( PRN_DIALOG *prn_dialog, DRV_INFO *drv_info );
int16 pdlg_add_sub_dialogs( PRN_DIALOG *prn_dialog, PDLG_SUB *sub_dialog );
int16 pdlg_close( PRN_DIALOG *prn_dialog, int16 *x, int16 *y );
PRN_DIALOG *pdlg_create( int16 dialog_flags );
int16 pdlg_delete( PRN_DIALOG *prn_dialog );
int16 pdlg_dflt_settings( PRN_DIALOG *prn_dialog, PRN_SETTINGS *settings );
int16 pdlg_do( PRN_DIALOG *prn_dialog, PRN_SETTINGS *settings, char *document_name,
            int16 option_flags );
int16 pdlg_evnt( PRN_DIALOG *prn_dialog, PRN_SETTINGS *settings, EVNT *events,
            int16 *button );
int16 pdlg_free_settings( PRN_SETTINGS *settings );
int32 pdlg_get_setsize( void );
PRN_SETTINGS *pdlg_new_settings( PRN_DIALOG *prn_dialog );
int16 pdlg_open( PRN_DIALOG *prn_dialog, PRN_SETTINGS *settings, char *document_name,
            int16 option_flags, int16 x, int16 y );
int16 pdlg_remove_printers( PRN_DIALOG *prn_dialog );
int16 pdlg_remove_sub_dialogs( PRN_DIALOG *prn_dialog );
int16 pdlg_update( PRN_DIALOG *prn_dialog, char *document_name );
int16 pdlg_use_settings( PRN_DIALOG *prn_dialog, PRN_SETTINGS *settings );
int16 pdlg_validate_settings( PRN_DIALOG *prn_dialog, PRN_SETTINGS *settings );

/******************************************************************************/

/* Die WDLG-Funktionen */
DIALOG *wdlg_create( HNDL_OBJ handle_exit, OBJECT *tree, void *user_data, int16 code,
            void *data, int16 flags );
int16 wdlg_open( DIALOG *dialog, char *title, int16 kind, int16 x, int16 y,
            int16 code, void *data );
int16 wdlg_close( DIALOG *dialog, int16 *x, int16 *y );
int16 wdlg_delete( DIALOG *dialog );
int16 wdlg_get_tree( DIALOG *dialog, OBJECT **tree, GRECT *r );
int16 wdlg_get_edit( DIALOG *dialog, int16 *cursor );
void *wdlg_get_udata( DIALOG *dialog );
int16 wdlg_get_handle( DIALOG *dialog );
int16 wdlg_set_edit( DIALOG *dialog, int16 obj );
int16 wdlg_set_tree( DIALOG *dialog, OBJECT *new_tree );
int16 wdlg_set_size( DIALOG *dialog, GRECT *new_size );
int16 wdlg_set_iconify( DIALOG *dialog, GRECT *g, char *title, OBJECT *tree,
            int16 obj );
int16 wdlg_set_uniconify( DIALOG *dialog, GRECT *g, char *title, OBJECT *tree );
int16 wdlg_evnt( DIALOG *dialog, EVNT *events );
void wdlg_redraw( DIALOG *dialog, GRECT *rect, int16 obj, int16 depth );

/******************************************************************************/

/* Die EDIT-Funktionen */
XEDITINFO *edit_create( void );
void edit_set_buf( OBJECT *tree, int16 obj, char *buffer, int32 buflen );
int16 edit_open( OBJECT *tree, int16 obj );
void edit_close( OBJECT *tree, int16 obj );
void edit_delete( XEDITINFO *editinfo );
int16 edit_cursor( OBJECT *tree, int16 obj, int16 whdl, int16 show );
int16 edit_evnt( OBJECT *tree, int16 obj, int16 whdl, EVNT *events,
            int32 *errcode );
int16 edit_get_buf( OBJECT *tree, int16 obj, char **buffer, int32 *buflen,
            int32 *txtlen );
int16 edit_get_format( OBJECT *tree, int16 obj, int16 *tabwidth, int16 *autowrap );
int16 edit_get_colour( OBJECT *tree, int16 obj, int16 *tcolour, int16 *bcolour );
int16 edit_get_font( OBJECT *tree, int16 obj, int16 *fontID, int16 *fontH,
            boolean *fontPix, boolean *mono );
int16 edit_get_cursor( OBJECT *tree, int16 obj, char **cursorpos );
void edit_get_pos( OBJECT *tree, int16 obj, int16 *xscroll, int32 *yscroll,
            char **cyscroll, char **cursorpos, int16 *cx, int16 *cy );
boolean edit_get_dirty( OBJECT *tree, int16 obj );
void edit_get_sel( OBJECT *tree, int16 obj, char **bsel, char **esel );
void edit_get_scrollinfo( OBJECT *tree, int16 obj, int32 *nlines, int32 *yscroll,
            int16 *yvis, int16 *yval, int16 *ncols, int16 *xscroll, int16 *xvis );
void edit_set_format( OBJECT *tree, int16 obj, int16 tabwidth,
            int16 autowrap );
void edit_set_colour( OBJECT *tree, int16 obj, int16 tcolour,
            int16 bcolour );
void edit_set_font( OBJECT *tree, int16 obj, int16 fontID, int16 fontH,
            boolean fontPix, boolean mono );
void edit_set_cursor( OBJECT *tree, int16 obj, char *cursorpos );
void edit_set_pos( OBJECT *tree, int16 obj, int16 xscroll,
            int32 yscroll, char *cyscroll, char *cursorpos, int16 cx,
            int16 cy );
int16 edit_resized( OBJECT *tree, int16 obj, int16 *oldrh, int16 *newrh );
void edit_set_dirty( OBJECT *tree, int16 obj, boolean dirty );
int16 edit_scroll( OBJECT *tree, int16 obj, int16 whdl, int32 yscroll,
            int16 xscroll );

/* edit_get_colour = edit_get_color? Ein Schreibfeher in der MagiC-Dokumentation? */
int16 edit_get_color( OBJECT *tree, int16 obj, int16 *tcolor, int16 *bcolor );

/* edit_set_colour = edit_set_color? Ein Schreibfeher in der MagiC-Dokumentation? */
void edit_set_color( OBJECT *tree, int16 obj, int16 tcolor, int16 bcolor );

/******************************************************************************/
/*                                                                            */
/* N?tzliche Erweiterungen                                                    */
/*                                                                            */
/******************************************************************************/

int16 wind_create_grect( int16 parts, const GRECT *r );
int16 wind_get_grect( int16 handle, short what, GRECT *r );
int16 wind_xget_grect( int16 handle, int16 what, const GRECT *clip, GRECT *r );
int16 wind_open_grect( int16 handle, const GRECT *r );
int16 wind_xset_grect( int16 handle, int16 what, const GRECT *s, GRECT *r );
int16 wind_set_str( int16 handle, int16 what, const char *str );

/******************************************************************************/

#endif

/******************************************************************************/

#ifdef __cplusplus
}
#endif

/******************************************************************************/

#endif
