#include <string.h>
#include "acs.h"
#include "acsplus.h"

#ifndef UNUSED
# define UNUSED(x) ((void)(x))
#endif

static Awindow *proto_win;
static void (*acsmproto)(int16 *ev_mmgpbuf);

/******************************************************************************/
/* -------------------------------------------------------------------------- */
/******************************************************************************/

static boolean proto_service(Awindow *self, int16 task, void *in_out)
{
	boolean ret;
	boolean (*serv)(Awindow *self, int16 task, void *in_out);
	
	serv = get_protocol()->service;
	if (task == AS_TERM)
	{
		ret = serv(self, AS_TERM, self);
		ACSblk->ACSmproto = acsmproto;
		ACSmoduleterm();
		return ret;
	}
	return serv(self, task, in_out);
}

/* -------------------------------------------------------------------------- */

static void myproto(int16 *msg)
{
	const char *name = "?";
	Awindow *proto = proto_win;
	
	if (msg[0] >= WM_REDRAW && msg[0] < AC_OPEN)
	{
		Awindow *win;
		win = Awi_wid(msg[3]);
		if (win != NULL)
		{
			if (win->wi_id == proto->wi_id)
				return;
			name = win->name;
		}
	}
	
	switch (msg[0])
	{
	case MN_SELECTED:
		wprintf(proto, "MN_SELECTED: title=%d item=%d\n", msg[3], msg[4]);
		break;
	case WM_REDRAW:
		wprintf(proto, "WM_REDRAW: WiName='%s' X=%d Y=%d W=%d H=%d\n", name, msg[3], msg[4], msg[5], msg[6]);
		break;
	case WM_TOPPED:
		wprintf(proto, "WM_TOPPED: WiName='%s'\n", name);
		break;
	case WM_CLOSED:
		wprintf(proto, "WM_CLOSED: WiName='%s'\n", name);
		break;
	case WM_FULLED:
		wprintf(proto, "WM_FULLED: WiName='%s'\n", name);
		break;
	case WM_ARROWED:
		wprintf(proto, "WM_ARROWED: WiName='%s' Arr=%d\n", name, msg[4]);
		break;
	case WM_HSLID:
		wprintf(proto, "WM_HSLID: WiName='%s' Slid=%d\n", name, msg[4]);
		break;
	case WM_VSLID:
		wprintf(proto, "WM_VSLID: WiName='%s' Slid=%d\n", name, msg[4]);
		break;
	case WM_SIZED:
		wprintf(proto, "WM_SIZED: WiName='%s' X=%d Y=%d W=%d H=%d\n", name, msg[3], msg[4], msg[5], msg[6]);
		break;
	case WM_MOVED:
		wprintf(proto, "WM_MOVED: WiName='%s' X=%d Y=%d W=%d H=%d\n", name, msg[3], msg[4], msg[5], msg[6]);
		break;
	case WM_UNTOPPED:
		wprintf(proto, "WM_UNTOPPED: WiName='%s'\n", name);
		break;
	case WM_BOTTOMED:
		wprintf(proto, "WM_BOTTOMED: WiName='%s'\n", name);
		break;
	case WM_ONTOP:
		wprintf(proto, "WM_ONTOP: WiName='%s'\n", name);
		break;
	case WM_NEWTOP:
		wprintf(proto, "WM_NEWTOP: WiName='%s'\n", name);
		break;
	case WM_OFFTOP:
		wprintf(proto, "WM_OFFTOP: WiName='%s'\n", name);
		break;
	case WM_ICONIFY:
		wprintf(proto, "WM_ICONIFY: WiName='%s' X=%d Y=%d W=%d H=%d\n", name, msg[3], msg[4], msg[5], msg[6]);
		break;
	case WM_ALLICONIFY:
		wprintf(proto, "WM_ALLICONIFY\n");
		break;
	case WM_UNICONIFY:
		wprintf(proto, "WM_UNICONIFY: WiName='%s'\n", name);
		break;
	case AP_TERM:
		wprintf(proto, "AP_TERM\n");
		break;
	case SC_CHANGED:
		wprintf(proto, "SC_CHANGED\n");
		break;
	case AC_OPEN:
		wprintf(proto, "AC_OPEN\n");
		break;
	case AC_CLOSE:
		wprintf(proto, "AC_CLOSE\n");
		break;
	case AV_PROTOKOLL:
		wprintf(proto, "AV_PROTOKOLL\n");
		break;
	case VA_PROTOSTATUS:
		wprintf(proto, "VA_PROTOSTATUS\n");
		break;
	case AV_GETSTATUS:
		wprintf(proto, "AV_GETSTATUS\n");
		break;
	case AV_STATUS:
		wprintf(proto, "AV_STATUS\n");
		break;
	case VA_SETSTATUS:
		wprintf(proto, "VA_SETSTATUS\n");
		break;
	case AV_SENDKEY:
		wprintf(proto, "AV_SENDKEY\n");
		break;
	case VA_START:
		wprintf(proto, "VA_START\n");
		break;
	case AV_ASKFILEFONT:
		wprintf(proto, "AV_ASKFILEFONT\n");
		break;
	case VA_FILEFONT:
		wprintf(proto, "VA_FILEFONT\n");
		break;
	case AV_ASKCONFONT:
		wprintf(proto, "AV_ASKCONFONT\n");
		break;
	case VA_CONFONT:
		wprintf(proto, "VA_CONFONT\n");
		break;
	case AV_ASKOBJECT:
		wprintf(proto, "AV_ASKOBJECT\n");
		break;
	case VA_OBJECT:
		wprintf(proto, "VA_OBJECT\n");
		break;
	case AV_OPENCONSOLE:
		wprintf(proto, "AV_OPENCONSOLE\n");
		break;
	case VA_CONSOLEOPEN:
		wprintf(proto, "VA_CONSOLEOPEN\n");
		break;
	case AV_OPENWIND:
		wprintf(proto, "AV_OPENWIND\n");
		break;
	case VA_WINDOPEN:
		wprintf(proto, "VA_WINDOPEN\n");
		break;
	case AV_STARTPROG:
		wprintf(proto, "AV_STARTPROG\n");
		break;
	case VA_PROGSTART:
		wprintf(proto, "VA_PROGSTART\n");
		break;
	case AV_ACCWINDOPEN:
		wprintf(proto, "AV_ACCWINDOPEN\n");
		break;
	case VA_DRAGACCWIND:
		wprintf(proto, "VA_DRAGACCWIND\n");
		break;
	case AV_ACCWINDCLOSED:
		wprintf(proto, "AV_ACCWINDCLOSED\n");
		break;
	case AV_COPY_DRAGGED:
		wprintf(proto, "AV_COPY_DRAGGED\n");
		break;
	case VA_COPY_COMPLETE:
		wprintf(proto, "VA_COPY_COMPLETE\n");
		break;
	case AV_PATH_UPDATE:
		wprintf(proto, "AV_PATH_UPDATE\n");
		break;
	case AV_WHAT_IZIT:
		wprintf(proto, "AV_WHAT_IZIT\n");
		break;
	case VA_THAT_IZIT:
		wprintf(proto, "VA_THAT_IZIT\n");
		break;
	case AV_DRAG_ON_WINDOW:
		wprintf(proto, "AV_DRAG_ON_WINDOW\n");
		break;
	case VA_DRAG_COMPLETE:
		wprintf(proto, "VA_DRAG_COMPLETE\n");
		break;
	case AV_EXIT:
		wprintf(proto, "AV_EXIT\n");
		break;
	case ACC_ID:
		wprintf(proto, "ACC_ID\n");
		break;
	case ACC_OPEN:
		wprintf(proto, "ACC_OPEN\n");
		break;
	case ACC_CLOSE:
		wprintf(proto, "ACC_CLOSE\n");
		break;
	case ACC_ACC:
		wprintf(proto, "ACC_ACC\n");
		break;
	case ACC_EXIT:
		wprintf(proto, "ACC_EXIT\n");
		break;
	case ACC_ACK:
		wprintf(proto, "ACC_ACK\n");
		break;
	case ACC_TEXT:
		wprintf(proto, "ACC_TEXT\n");
		break;
	case ACC_KEY:
		wprintf(proto, "ACC_KEY\n");
		break;
	case ACC_META:
		wprintf(proto, "ACC_META\n");
		break;
	case ACC_IMG:
		wprintf(proto, "ACC_IMG\n");
		break;
	default:
		wprintf(proto, "??? Mess-0: %d Mess-1:%d Mess-2:%d\n", msg[0], msg[1], msg[2]);
		break;
	}
}

/* -------------------------------------------------------------------------- */

int16 ACSinit(void)
{
	PROTOCOLDATA proto = { 1, 6, 126, 25, 2, 100, 20, 20 };

	if ((proto_win = get_protocol()->create(&proto)) == NULL)
		return FAIL;
	proto_win->service = proto_service;
	Ast_delete(proto_win->name);
	proto_win->name = Ast_create(" GEM-Messages ");
	Ast_delete(proto_win->iconblk->monoblk.ib_ptext);
	proto_win->iconblk->monoblk.ib_ptext = Ast_create("GemMsgs");
	
	if (ACSblk->application)
		proto_win->open(proto_win);
	acsmproto = ACSblk->ACSmproto;
	ACSblk->ACSmproto = myproto;
	
	return OK;
}
