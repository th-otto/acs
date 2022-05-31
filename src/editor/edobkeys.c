/******************************************************************************/
/*                                                                            */
/*    ACS               Application Construction System                       */
/*    DESCRIPTION:      Translate key strings to codes                        */
/*                                                                            */
/* (c) 1991-2004 Stefan Bachert, Oliver Michalak, Martin Elsaesser            */
/* (c) 2022 Thorsten Otto                                                     */
/******************************************************************************/

#include "acs_i.h"

typedef struct {
	const char *string;
	int16 code;
} sc;

static sc nktab[] = {
	{ "BS", NK_BS },
	{ "DEL", NK_DEL },
	{ "CLR", NK_CLRHOME },
	{ "HOME", NK_CLRHOME },
	{ "UP", NK_UP },
	{ "DOWN", NK_DOWN },
	{ "LEFT", NK_LEFT },
	{ "RIGHT", NK_RIGHT },
	{ "PAGEUP", NK_M_PGUP },
	{ "PAGEDOWN", NK_M_PGDN },
	{ "TAB", NK_TAB },
	{ "ESC", NK_ESC },
	{ "F1", NK_F1 },
	{ "F2", NK_F2 },
	{ "F3", NK_F3 },
	{ "F4", NK_F4 },
	{ "F5", NK_F5 },
	{ "F6", NK_F6 },
	{ "F7", NK_F7 },
	{ "F8", NK_F8 },
	{ "F9", NK_F9 },
	{ "F10", NK_F10 },
	{ "F11", NK_M_F11 },
	{ "F12", NK_M_F12 },
	{ "F14", NK_M_F14 },
	{ "INS", NK_INS },
	{ "RET", NK_RET },
	{ "RETURN", NK_RET },
	{ "ENTER", NK_ENTER },
	{ "HELP", NK_HELP },
	{ "UNDO", NK_UNDO },
};
static int num_nktab = (int)(sizeof(nktab) / sizeof(nktab[0])); /* FIXME: no need for static var */
static boolean sorted = FALSE;

/******************************************************************************/
/* -------------------------------------------------------------------------- */
/******************************************************************************/

static int comp(const void *key, const void *entry)
{
	return Ast_cmp(key, ((const sc *)entry)->string);
}

/* -------------------------------------------------------------------------- */

static int compi(const void *entry1, const void *entry2)
{
	return Ast_cmp(((const sc *)entry1)->string, ((const sc *)entry2)->string);
}

/* -------------------------------------------------------------------------- */

int16 key_code(const char *str)
{
	int16 key;
	sc *sc;
	boolean found;
	
	key = 0;
	do
	{
		found = FALSE;
		if (*str == ALT_C)
		{
			key |= NKF_FUNC | NKF_ALT;
			found = TRUE;
		} else if (*str == SHIFT_C)
		{
			key |= NKF_LSH | NKF_RSH;
			found = TRUE;
		} else if (*str == CONTROL_C)
		{
			key |= NKF_FUNC | NKF_CTRL;
			found = TRUE;
		}
		if (found)
			++str;
	} while (found);
	if (!sorted)
	{
		qsort(nktab, num_nktab, sizeof(nktab[0]), compi);
		sorted = TRUE;
	}
	sc = bsearch(str, nktab, num_nktab, sizeof(nktab[0]), comp);
	if (sc == NULL)
	{
		if ((unsigned char)*str >= ' ' && (str[1] == '\0' || str[1] == ' '))
			return (unsigned char)*str | key;
		return 0;
	}
	return key | sc->code | NKF_FUNC;
}

/* -------------------------------------------------------------------------- */

char *key_string(int16 key)
{
	static char string[32];
	int i;
	int len;
	
	string[0] = '\0';
	if (key & (NKF_LSH|NKF_RSH))
		strcat(string, SHIFT_S);
	if (key & NKF_CTRL)
		strcat(string, CONTROL_S);
	if (key & NKF_ALT)
		strcat(string, ALT_S);
	len = (int)strlen(string);
	for (i = 0; i < num_nktab; i++)
	{
		if ((char)nktab[i].code == (char)key)
		{
			return strcat(string, nktab[i].string);
		}
	}
	if ((key & 0xff) >= ' ')
	{
		string[len++] = (unsigned char)(key & 0xff); /* FIXME: useless mask */
	}
	string[len] = '\0';
	return string;
}
