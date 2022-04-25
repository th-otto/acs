#include "acs_i.h"

static void *oldbas = NULL;
static char nix[4] = "\0\0\0";

struct ACSmod {
	int32 magic1;
	int32 magic2;
	int16 (*entry)(void);
	Ablk *acsblk;
	GlobalArray *global; /* only in 2005 version */
	long funcsAnz;
	void **funcs;
};

struct ACSoldmod {
	int32 magic1;
	int16 (*entry)(void);
	Ablk *acsblk;
	void **funcs;
};


static boolean PushFuncLists(struct ACSmod *mod);


void Ax_mterm(void *bas)
{
	if (oldbas != NULL)
	{
		if (ACSblk->application || ACSblk->multitask)
		{
			Mfree(oldbas);
		} else
		{
			accgemdos();
			Mfree(oldbas);
			oldgemdos();
		}
	}
	oldbas = bas;
}


/* Load and initialize an ACS-Module (returns OK or FAIL) */
int16 Ash_module(const char *path)
{
	boolean mygemdos;
	boolean oldmodule;
	PD *pd;
	struct ACSmod *mod;
	int16 (*entry)(void);

	if (!ACSblk->application && !ACSblk->multitask)
		mygemdos = TRUE;
	else
		mygemdos = FALSE;
	if (mygemdos)
		accgemdos();
	/* just load, dont't go */
	pd = (PD *)Pexec(3, path, (void *)nix, nix);
	mod = (struct ACSmod *)(pd + 1);
	if ((long)pd < 0 || (long)pd == 0xffffL)
	{
		if (mygemdos)
			oldgemdos();
		ACSblk->ACSerror(AE_LOAD_MOD, path);
		return FAIL;
	}
	if (Mshrink(0, pd, pd->p_tlen + pd->p_dlen + pd->p_blen + 1024) != 0)
		ACSblk->ACSerror(AE_MEM_MOD, path);
	if (mod->magic1 >= 0x41435336L && mod->magic1 <= 0x41435337L) /* 'ACS6', 'ACS7' */
	{
		oldmodule = TRUE;
	} else if ((mod->magic1 >= 0x41435330L && mod->magic1 <= 0x41435338l) || /* 'ACS0' .. 'ACS8' */
		/* this is clr.w -(a7); trap #1 */
		(mod->magic1 == 0x42674E41L && mod->magic2 == 0x41435339L)) /* ACS9 */
	{
		oldmodule = FALSE;
	} else
	{
		goto mfree;
	}
	if (!oldmodule && PushFuncLists(mod) == FALSE)
	{
	mfree:
		Mfree(pd);
		if (mygemdos)
			oldgemdos();
		ACSblk->ACSerror(AE_VER_MOD, path);
		return FAIL;
	}
	if (mygemdos)
		oldgemdos();
	/* just go */
	if (!oldmodule && Pexec(4, NULL, (void *)pd, NULL) != 0)
	{
		if (mygemdos)
			accgemdos();
		Mfree(pd);
		if (mygemdos)
			oldgemdos();
		ACSblk->ACSerror(AE_LOAD_MOD, path);
		return FAIL;
	}
	if (oldmodule)
	{
		if (mod->magic1 >= 0x41435336L && mod->magic1 <= 0x41435337L) /* 'ACS6', 'ACS7' */
		{
			entry = ((struct ACSoldmod *)mod)->entry;
			((struct ACSoldmod *)mod)->acsblk = ACSblk;
			((struct ACSoldmod *)mod)->funcs = mod->magic1 == 0x41435336L ? ACS230 : ACS233;
		}
	} else
	{
		entry = mod->entry;
		mod->acsblk = ACSblk;
		mod->global = _globl;
	}
	return entry();
}
