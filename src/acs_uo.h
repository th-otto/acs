#include "uo_acs.h"

/*
 * list/eduser.c
 */
void change_udf(ACS_HEAD *acs, Obj_Head *obj, AUSER_DEF *def);
UODATAS *part_get(const char *name);
void set_userdata(AUSER_DEF *user, int16 width, int16 height);
void set_userdef(Obj_Head *obj, AUSER_DEF *userdef);
