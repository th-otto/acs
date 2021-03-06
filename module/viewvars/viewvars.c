#include <string.h>
#include "acs.h"
#include "acsplus.h"

#ifndef UNUSED
# define UNUSED(x) ((void)(x))
#endif

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
		ACSmoduleterm();
		return ret;
	}
	return serv(self, task, in_out);
}

/* -------------------------------------------------------------------------- */

static long get_syshdr(void)
{
	return *((long *)0x4f2);
}

/* -------------------------------------------------------------------------- */

int16 ACSinit(void)
{
	Awindow *win;
	Ablk *acsblk;
	char path[256];
	SYSHDR *syshdr;
	MAGX_COOKIE *magiccookie;
	int16 i;
	char **env;
	char *envptr;
	A_dd *dd;
	
	win = get_protocol()->create(NULL);
	if (win == NULL)
		return FAIL;
	acsblk = ACSblk;
	win->service = proto_service;
	Ast_delete(win->name);
	win->name = Ast_create(" ACSblk Vars ");
	Ast_delete(win->iconblk->monoblk.ib_ptext);
	win->iconblk->monoblk.ib_ptext = Ast_create("ViewVars");
	
	wprintf(win, "ap_version: $%04x\n", acsblk->AESglobal[0]);
	wprintf(win, "ap_count:   %4d\n", acsblk->AESglobal[1]);
	wprintf(win, "gl_apid:    %4d\n", acsblk->gl_apid);
	wprintf(win, "nplanes:    %4d\n", acsblk->nplanes);
	wprintf(win, "ncolors:    %4d\n", acsblk->ncolors);
	wprintf(win, "phys_handle:%4d\n", acsblk->phys_handle);
	wprintf(win, "vdi_handle: %4d\n", acsblk->vdi_handle);
	wprintf(win, "gl_wattr:   %4d\n", acsblk->gl_wattr);
	wprintf(win, "gl_hattr:   %4d\n", acsblk->gl_hattr);
	wprintf(win, "gl_wbox:    %4d\n", acsblk->gl_wbox);
	wprintf(win, "gl_hbox:    %4d\n", acsblk->gl_hbox);
	wprintf(win, "gl_wchar:   %4d\n", acsblk->gl_wchar);
	wprintf(win, "gl_hchar:   %4d\n", acsblk->gl_hchar);
	wprintf(win, "desk. x:    %4d\n", acsblk->desk.x);
	wprintf(win, "desk. y:    %4d\n", acsblk->desk.y);
	wprintf(win, "desk. w:    %4d\n", acsblk->desk.w);
	wprintf(win, "desk. h:    %4d\n", acsblk->desk.h);
	wprintf(win, "appname:    '%s'\n", acsblk->appname);
	wprintf(win, "apppath:    '%s'\n", acsblk->apppath);
	wprintf(win, "apppara:    '%s'\n", acsblk->apppara);
	wprintf(win, "appfrom:    '%s'\n", acsblk->appfrom);
	wprintf(win, "basename:   '%s'\n", acsblk->basename);
	wprintf(win, "ev_mtcount:  %4ld\n", (long)acsblk->ev_mtcount);
	wprintf(win, "application: %4d\n", acsblk->application);
	wprintf(win, "multitask:   %4d\n", acsblk->multitask);
	wprintf(win, "fonts:       %4d\n", acsblk->fonts);
	wprintf(win, "argc:        %4d\n", acsblk->argc);
	for (i = 0; i < acsblk->argc; i++)
		wprintf(win, "argv [%d]:  '%s'\n", i, acsblk->argv[i]);
	env = acsblk->env;
	if (env != NULL)
	{
		while (*env != NULL)
		{
			wprintf(win, "env:       '%s'\n", *env);
			env++;
		}
	}
	if ((envptr = Ash_getenv("HOME")) != NULL)
		wprintf(win, "Home-Dir: %s\n", envptr);
	if ((envptr = Ash_getenv("AVSERVER")) != NULL)
		wprintf(win, "AV-Server: %s\n", envptr);
	wprintf(win, "fontid:      %4d\n", acsblk->fontid);
	wprintf(win, "fheight:     %4d\n", acsblk->fheight);
	wprintf(win, "fontsid:     %4d\n", acsblk->fontsid);
	wprintf(win, "fsheight:    %4d\n", acsblk->fsheight);
	wprintf(win, "dither:      $%04x\n", acsblk->dither);
	wprintf(win, "CFG-Path:    '%s'\n", acsblk->cfg_path);
	wprintf(win, "Scrap-Path:  '%s'\n", acsblk->scrp_path);
	wprintf(win, "Menu-ID:     %4d\n", acsblk->menu_id);
	wprintf(win, "eigener DD-Name:     '%s'\n", acsblk->dd_name);
	dd = NULL;
	wprintf(win, "D&D-Partner:\n");
	while ((dd = Ash_nextdd(dd)) != NULL)
	{
		wprintf(win, "----------------------------------------\n");
		if (dd->type & DD_XACC)
			wprintf(win, "  DD-XACC-Name:'%s'\n", dd->xacc_name);
		if (dd->type & DD_VA)
			wprintf(win, "  DD-VA-Name:  '%s'\n", dd->va_name);
		wprintf(win, "  DD-Id:       %4d\n", dd->id);
	}
	wprintf(win, "----------------------------------------\n");
	if (Ash_getcookie(C_MagX, &magiccookie))
	{
		wprintf(win, "MagiC:\nVersion 0x%X\n", magiccookie->aesvars->version);
		wprintf(win, "Magisch :%ld\n", (long)magiccookie->aesvars->magic);
		wprintf(win, "Release :%d\n", magiccookie->aesvars->release);
	} else
	{
		wprintf(win, "kein MagiC\n");
	}
	if (acsblk->description->flags & AB_LAZYEVAL)
		wprintf(win, "AB_DEBUG\n");
	if (acsblk->description->flags & AB_NOTRANSICON)
		wprintf(win, "AB_NOTRANSICON\n");
	wprintf(win, "Sonstige Werte:\n");
	wprintf(win, "GEMDOS Version: '$%04x'\n", Sversion());
	syshdr = (SYSHDR *)Supexec(get_syshdr);
	wprintf(win, "TOS Version:    '$%04x'\n", syshdr->os_version);
	Dgetpath(path, 0);
	wprintf(win, "Akt Dir:     '%s'\n", path);
	wprintf(win, "Akt Drive:   '%c'\n", Dgetdrv() + 'A');
	if (acsblk->application)
		win->open(win);

	return OK;
}
