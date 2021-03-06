#include "acs_i.h"
#include "acsio.h"
#include <time.h>
#include "io/workout.h"
#include "version.h"

extern OBJECT OUTPUT_INFO;

static Axywh info_xywh;
static MFDB *info_bp;
static OBJECT *work;
static int16 mapX[1000]; /* FIXME: duplicate */

static char const xacc_types[][3] = {
	"",
	"WP",
	"DT",
	"ED",
	"DB",
	"SS",
	"RG",
	"VG",
	"GG",
	"MU",
	"CD",
	"DC",
	"DT",
	"PE"
};

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wclobbered"
#endif


void info_start(const char *filename)
{
	Aev_mess();
	work = Aob_create(&OUTPUT_INFO);
	if (work != NULL)
	{
		Aob_fix(work);
		form_center(work, &info_xywh.x, &info_xywh.y, &info_xywh.w, &info_xywh.h);
		info_xywh.x--;
		info_xywh.y--;
		info_xywh.w += 2;
		info_xywh.h += 2;
		info_bp = Aob_save(&info_xywh);
		strncpy(work[OUTPUT_INFO_FILE].ob_spec.tedinfo->te_ptext, filename, 31);
		work[OUTPUT_INFO_TITLE].ob_spec.tedinfo->te_ptext[0] = '\0';
		work[OUTPUT_INFO_LIST].ob_spec.tedinfo->te_ptext[0] = '\0';
		work[OUTPUT_INFO_OBJECT].ob_spec.tedinfo->te_ptext[0] = '\0';
		/* BUG: 10 exceeds MAX_DEPTH */
		objc_draw(work, ROOT, 10, info_xywh.x, info_xywh.y, info_xywh.w, info_xywh.h);
	}
}


void info_end(void)
{
	Aob_delete(work);
	Aob_restore(info_bp, &info_xywh);
}


void info_title(const char *title)
{
	if (work != NULL)
	{
		strcpy(work[OUTPUT_INFO_TITLE].ob_spec.tedinfo->te_ptext, title);
		objc_draw(work, OUTPUT_INFO_TITLE, 1, info_xywh.x, info_xywh.y, info_xywh.w, info_xywh.h);
		info_list("");
		info_obj("");
	}
}


void info_list(const char *name)
{
	if (work != NULL)
	{
		strcpy(work[OUTPUT_INFO_LIST].ob_spec.tedinfo->te_ptext, name);
		objc_draw(work, OUTPUT_INFO_LIST, 1, info_xywh.x, info_xywh.y, info_xywh.w, info_xywh.h);
		info_obj("");
	}
}


void info_obj(const char *name)
{
	if (work != NULL)
	{
		strcpy(work[OUTPUT_INFO_OBJECT].ob_spec.tedinfo->te_ptext, name);
		objc_draw(work, OUTPUT_INFO_OBJECT, 1, info_xywh.x, info_xywh.y, info_xywh.w, info_xywh.h);
	}
}


static void out_label(Obj_Head *obj, const char *str_default)
{
	if (obj != NULL)
	{
		sprintf(iostring, "%-12s", obj->label);
		save_string(iostring);
	} else
	{
		save_string(str_default);
	}
}


static void out_label2(Obj_Head *obj, const char *str_default)
{
	if (obj != NULL)
	{
		sprintf(iostring, "&%-12s", obj->label);
		save_string(iostring);
	} else
	{
		save_string(str_default);
	}
}


static void out_label3(Obj_Head *obj, const char *str_default)
{
	if (obj != NULL)
	{
		sprintf(iostring, "&%-12s[3]", obj->label);
		save_string(iostring);
	} else
	{
		save_string(str_default);
	}
}


#if WITH_FIXES
static void out_rootlabel(Obj_Head *obj)
{
	if (obj != NULL)
	{
		sprintf(iostring, "&%s.root", obj->label);
		save_string(iostring);
	} else
	{
		save_string("NULL");
	}
}
#endif


static void out_acs(ACS_HEAD *acs)
{
	int i;
	Amouse *mouse;
	char buf[36];
	Obj_Head *entry;
	
	if (!(acs->flags & ACS_SUBMODUL))
	{
		save_string(NL NL "Adescr ACSdescr =");
		save_string(NL "\t{" NL);
		/* FIXME: acc_reg may contain special chars */
		sprintf(iostring, "\t\t\"%s\", %d," NL "\t\t%2d, %2d," NL "\t\t%#4x," NL "\t\t\"%s\"," NL "\t\t",
			"ACS3.00", ACS_VERSION, acs->descr.dx, acs->descr.dy, acs->descr.flags | AB_SMARTREDRAW, acs->descr.acc_reg);
		save_string(iostring);
		out_label2(acs->descr.root, "&PUR_DESK");
		save_string(", ");
		out_label2(acs->descr.acc, "NULL");
		save_string("," NL "\t\t{" NL);
		mouse = acs->descr.mouse;
		for (i = 0; i < 32; i++)
		{
			if (i != 0)
				save_string("," NL);
			if (mouse->number != USER_DEF)
				sprintf(iostring, "\t\t\t{%3d, NULL}", mouse->number);
			else
				sprintf(iostring, "\t\t\t{255, &%s}", ((Obj_Head *)mouse->form)->label);
			save_string(iostring);
			mouse++;
		}
#if WITH_FIXES
		save_string(NL "\t\t}," NL "\t\t{" NL);
#else
		save_string(NL "\t\t}," NL);
#endif
		for (i = 0; i < AD_COUNT; i++)
		{
			sprintf(buf, "ACS(%02d)", i);
			entry = find_entry(acs->st_list, buf);
			/* FIXME: messages may contain special chars */
			if (entry == NULL &&
				(entry = find_entry(acs->al_list, buf)) == NULL)
			{
				sprintf(iostring, "\t\t\"%s\"", mlmess[i]);
			} else
			{
				sprintf(iostring, "\t\t\"%s\"", (char *)entry->object);
			}
			save_string(iostring);
			if (i < (AD_COUNT - 1))
				save_string(",");
			save_string(NL);
		}
#if WITH_FIXES
		save_string("\t\t}" NL "\t};" NL);
#else
		save_string("\t};" NL);
#endif
		save_string(NL NL " Aconfig ACSconfig =");
		save_string(NL "\t{" NL "\t\t");
		save_string("{\"");
		out_label((Obj_Head *)acs->config.CfgInfo.dateiname, "");
		save_string("\", \"");
		out_label((Obj_Head *)acs->config.CfgInfo.comment, "%;");
		save_string("\", ");
		out_label((Obj_Head *)acs->config.CfgInfo.env_praefix, "NULL");
		save_string(", ");
		save_string(acs->config.CfgInfo.casesensitiv ? "TRUE, " : "FALSE, ");
		save_string(acs->config.CfgInfo.file_sensitiv ? "TRUE, " : "FALSE, ");
		if (acs->config.CfgInfo.file_buffer > 4)
			sprintf(iostring, "%i}," NL "\t\t", acs->config.CfgInfo.file_buffer);
		else
			strcpy(iostring, "4}," NL "\t\t");
		save_string(iostring);
		save_string("\"");
		out_label((Obj_Head *)acs->config.BaseName, "PUR_DESK");
		save_string("\"," NL "\t\t");
		out_label((Obj_Head *)acs->config.ACSterm, "NULL");
		save_string(", ");
		out_label((Obj_Head *)acs->config.ACSaboutme, "NULL");
		save_string(", ");
		out_label((Obj_Head *)acs->config.ACSclose, "NULL");
		save_string(", ");
		out_label((Obj_Head *)acs->config.ACSmessage, "NULL");
		save_string(", ");
		out_label((Obj_Head *)acs->config.ACSmproto, "NULL");
		save_string(", " NL "\t\t");
		out_label((Obj_Head *)acs->config.ACStimer, "NULL");
		save_string(", ");
		out_label((Obj_Head *)acs->config.ACSkey, "NULL");
		save_string(", ");
		out_label((Obj_Head *)acs->config.ACSbutton, "NULL");
		save_string(", ");
		out_label((Obj_Head *)acs->config.ACSmouse, "NULL");
		save_string(", ");
		out_label((Obj_Head *)acs->config.ACSwikey, "NULL");
		save_string(", ");
		sprintf(iostring, "%i, ", acs->config.init_prot);
		save_string(iostring);
		if (acs->config.XAccType > 0)
#if WITH_FIXES
			sprintf(iostring, "0x%04x, ", xacc_types[acs->config.XAccType]);
#else
			sprintf(iostring, "'%s', ", xacc_types[acs->config.XAccType]);
#endif
		else
			strcpy(iostring, "0, ");
		save_string(iostring);
		out_label((Obj_Head *)acs->config.ACSGEMScript, "NULL");
		save_string(", ");
		out_label((Obj_Head *)acs->config.ACSinit0, "NULL");
		save_string(", ");
		out_label((Obj_Head *)acs->config.ACSinit, "ACSinit");
		save_string(NL "\t};" NL);
	}
}


static void out_cicon(const char *label, CICON *cicon, int16 next_planes)
{
	sprintf(iostring, "static CICON _C%d_%-s = {" NL "\t\t%d," NL "\t\t", cicon->num_planes, label, cicon->num_planes);
	save_string(iostring);
	out_label3((Obj_Head *)cicon->col_data, "NULL");
	save_string("," NL "\t\t");
	out_label((Obj_Head *)cicon->col_mask, "NULL");
	save_string("," NL "\t\t");
	out_label3((Obj_Head *)cicon->sel_data, "NULL");
	save_string("," NL "\t\t");
	out_label((Obj_Head *)cicon->sel_mask, "NULL");
	if (next_planes != 0)
	{
		sprintf(iostring, "," NL "\t\t&_C%d_%-s};" NL, next_planes, label);
		save_string(iostring);
	} else
	{
		save_string("," NL "\t\tNULL};" NL);
	}
}


static void out_icon(Obj_Head *obj)
{
	int i, count;
	Obj_Head **list;
	Obj_Head *o;
	ACSCICONBLK *cicon;
	CICONBLK *ciconblk;
	int16 next_planes;
	int16 words, w;
	int16 *data;
	
	count = (int)(obj->used / sizeof(*list));
	if (count > 0)
	{
		info_list(obj->label);
		list = (Obj_Head **)obj->object;
		save_string(NL NL "/*\t\tICONS\t\t*/" NL NL);
		for (i = 0; i < count; i++)
		{
			o = list[i];
			info_obj(o->label);
			ciconblk = &((ACSCICONBLK *)o->object)->cicon;
			cicon = (ACSCICONBLK *)o->object;
			next_planes = 0;
			if (cicon->c256.num_planes != 0)
			{
				out_cicon(o->label, &cicon->c256, next_planes);
				next_planes = 8;
			}
			if (cicon->c16.num_planes != 0)
			{
				out_cicon(o->label, &cicon->c16, next_planes);
				next_planes = 4;
			}
			words = ((ciconblk->monoblk.ib_wicon + 15) >> 4) * ciconblk->monoblk.ib_hicon - 1;
			data = (int16 *)((char *)ciconblk + (long)ciconblk->monoblk.ib_pmask);
			sprintf(iostring, "static int16 _MSK_%-s [] = {" NL "\t\t", o->label);
			save_string(iostring);
			for (w = 0; w < words; w++)
			{
				sprintf(iostring, "%#06x, ", *data++);
				save_string(iostring);
				if ((w & 7) == 7)
					save_string(NL "\t\t");
			}
			sprintf(iostring, "%#06x};" NL "static int16 _DAT_%-s [] = {" NL "\t\t", *data++, o->label);
			save_string(iostring);
			for (w = 0; w < words; w++)
			{
				sprintf(iostring, "%#06x, ", *data++);
				save_string(iostring);
				if ((w & 7) == 7)
					save_string(NL "\t\t");
			}
			sprintf(iostring, "%#06x};" NL, *data++);
			save_string(iostring);
			if ((o->flags & (OBJ_GLOBAL | OBJ_LOCAL)) == OBJ_GLOBAL)
				save_string("       ");
			else
				save_string("static ");
			sprintf(iostring, "CICONBLK %-s = {{" NL
				"\t\t_MSK_%-s, _DAT_%-s, %-s," NL
				"\t\t%#6x, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d},",
				o->label, o->label, o->label, ((Obj_Head *)ciconblk->monoblk.ib_ptext)->label,
				ciconblk->monoblk.ib_char,
				ciconblk->monoblk.ib_xchar,
				ciconblk->monoblk.ib_ychar,
				ciconblk->monoblk.ib_xicon,
				ciconblk->monoblk.ib_yicon,
				ciconblk->monoblk.ib_wicon,
				ciconblk->monoblk.ib_hicon,
				ciconblk->monoblk.ib_xtext,
				ciconblk->monoblk.ib_ytext,
				ciconblk->monoblk.ib_wtext,
				ciconblk->monoblk.ib_htext);
			save_string(iostring);
			if (next_planes != 0)
			{
				sprintf(iostring, "&_C%d_%-s", next_planes, o->label);
				save_string(iostring);
			} else
			{
				save_string("NULL");
			}
			save_string("};" NL NL);
		}
	}
}


static void out_mouse(Obj_Head *obj)
{
	int i, count;
	Obj_Head **list;
	Obj_Head *o;
	MFORM *mouse;
	int16 *data;
	int16 w;
	
	count = (int)(obj->used / sizeof(*list));
	if (count > 0)
	{
		info_list(obj->label);
		list = (Obj_Head **)obj->object;
		save_string(NL NL "/*\t\tMOUSEFORMS\t\t*/" NL NL);
		for (i = 0; i < count; i++)
		{
			o = list[i];
			info_obj(o->label);
			mouse = (MFORM *)o->object;
			if ((o->flags & (OBJ_GLOBAL | OBJ_LOCAL)) == OBJ_GLOBAL)
				save_string("       ");
			else
				save_string("static ");
			sprintf(iostring, "MFORM %-s =" NL
				"\t\t{" NL
				"\t\t\t%2d, %2d, %2d, %2d, %2d," NL
				"\t\t\t{" NL
				"\t\t\t\t",
				o->label,
				mouse->mf_xhot,
				mouse->mf_yhot,
				mouse->mf_nplanes,
				mouse->mf_fg,
				mouse->mf_bg);
			save_string(iostring);
			data = mouse->mf_mask;
			for (w = 15; w > 0; w--)
			{
				sprintf(iostring, "%#06x, ", *data++);
				save_string(iostring);
				if (w == 8)
					save_string(NL "\t\t\t\t");
			}
			sprintf(iostring, "%#06x" NL "\t\t\t}," NL "\t\t\t{" NL "\t\t\t\t", *data++);
			save_string(iostring);
			for (w = 15; w > 0; w--)
			{
				sprintf(iostring, "%#06x, ", *data++);
				save_string(iostring);
				if (w == 8)
					save_string(NL "\t\t\t\t");
			}
			sprintf(iostring, "%#06x" NL "\t\t\t}" NL "\t\t};" NL NL NL, *data++);
			save_string(iostring);
		}
	}
}


static void out_image(Obj_Head *obj)
{
	int i, count;
	Obj_Head **list;
	Obj_Head *o;
	BITBLK *bitblk;
	int16 words, w;
	int16 *data;
	
	count = (int)(obj->used / sizeof(*list));
	if (count > 0)
	{
		info_list(obj->label);
		list = (Obj_Head **)obj->object;
		save_string(NL NL "/*\t\tIMAGES\t\t*/" NL NL);
		for (i = 0; i < count; i++)
		{
			o = list[i];
			info_obj(o->label);
			bitblk = (BITBLK *)o->object;
			words = (bitblk->bi_wb >> 1) * bitblk->bi_hl - 1;
			data = (int16 *)((char *)bitblk + (long)bitblk->bi_pdata);
			sprintf(iostring, "static int16 _IMG_%-s [] =" NL "\t{" NL "\t\t", o->label);
			save_string(iostring);
			for (w = 0; w < words; w++)
			{
				sprintf(iostring, "%#06x, ", *data++);
				save_string(iostring);
				if ((w & 7) == 7)
					save_string(NL "\t\t");
			}
			sprintf(iostring, "%#06x" NL "\t};" NL, *data++);
			save_string(iostring);
			if ((o->flags & (OBJ_GLOBAL | OBJ_LOCAL)) == OBJ_GLOBAL)
				save_string("       ");
			else
				save_string("static ");
			sprintf(iostring, "BITBLK %-s = {_IMG_%-s, %2d, %2d, %2d, %2d, %#04x};" NL NL,
				o->label, o->label,
				bitblk->bi_wb,
				bitblk->bi_hl,
				bitblk->bi_x,
				bitblk->bi_y,
				bitblk->bi_color);
			save_string(iostring);
		}
	}
}


static void out_obj(Obj_Head *list, const char *title)
{
	int i, count;
	int16 *mapptr;
	Obj_Head **trees;
	Obj_Head *tree;
	OBJ_ENTRY *entry;
	int entrycount, j, index;
	OBJECT object;
	AOBJECT aobject;
	
	mapptr = &mapX[1];
	count = (int)(list->used / sizeof(*trees));
	if (count > 0)
	{
		info_list(list->label);
		save_string(title);
		mapX[0] = -1;
		trees = (Obj_Head **)list->object;
		for (i = 0; i < count; i++)
		{
			tree = trees[i];
			info_obj(tree->label);
			entrycount = (int)(tree->used / sizeof(*entry));
			entry = (OBJ_ENTRY *)tree->object;
			mapptr[0] = index = 0;
			for (j = 0; j < entrycount; entry++, j++, mapptr[j] = index)
			{
				if ((tree->flags & (OBJ_GLOBAL | OBJ_LOCAL)) != OBJ_GLOBAL && entry->label != NULL)
				{
					sprintf(iostring, "#define %-14s (%3d)" NL, entry->label->label, index);
					save_string(iostring);
				}
				if (entry->aobj.click == NULL &&
					entry->aobj.drag == NULL &&
					entry->aobj.userp1 == NULL &&
					entry->aobj.userp2 == NULL &&
					entry->type == NULL &&
					entry->aobj.key == 0 &&
					entry->aobj.mo_index == 0)
					index += 1;
				else
					index += 2;
			}

#if WITH_FIXES
			for (entry = (OBJ_ENTRY *)tree->object, j = 0; j < entrycount; entry++, j++)
			{
				if (j == 0)
				{
					if ((tree->flags & (OBJ_GLOBAL | OBJ_LOCAL)) != OBJ_GLOBAL)
						save_string("static ");
					save_string("struct {" NL "\tOBJECT root;" NL);
				} else
				{
					sprintf(iostring, "\tOBJECT  _%02d_%s;" NL, mapptr[j], tree->label);
					save_string(iostring);
				}
				if (mapptr[j + 1] == mapptr[j] + 2)
				{
					sprintf(iostring, "\tAOBJECT _%02da%s;" NL, mapptr[j], tree->label);
					save_string(iostring);
				}
			}
			sprintf(iostring, "} %s = {" NL, tree->label);
			save_string(iostring);
			
			for (entry = (OBJ_ENTRY *)tree->object, j = 0; j < entrycount; entry++, j++)
			{
				memcpy(&object, &entry->obj, sizeof(object));
				memcpy(&aobject, &entry->aobj, sizeof(aobject));
				object.ob_next = mapptr[object.ob_next];
				object.ob_head = mapptr[object.ob_head];
				object.ob_tail = mapptr[object.ob_tail];
				if (j == entrycount - 1)
				{
					if (mapptr[j + 1] == mapptr[j] + 2)
						aobject.ob_flags |= OF_LASTOB;
					else
						object.ob_flags |= OF_LASTOB;
				}
				sprintf(iostring, "\t{ %2d, %2d, %2d, %2d, %#6x, %#6x, ",
					object.ob_next,
					object.ob_head,
					object.ob_tail,
					object.ob_type,
					object.ob_flags,
					object.ob_state);
				save_string(iostring);
				if ((char)object.ob_type == G_BOX ||
					(char)object.ob_type == G_IBOX ||
					(char)object.ob_type == G_BOXCHAR)
				{
					sprintf(iostring, " C_UNION(%#010lxL)\t\t\t\t", (long)object.ob_spec.index);
				} else if ((char)object.ob_type == G_TITLE ||
					(char)object.ob_type == G_STRING ||
					(char)object.ob_type == G_BUTTON)
				{
					sprintf(iostring, "C_UNION(%-12s)", ((Obj_Head *)object.ob_spec.free_string)->label);
				} else
				{
					sprintf(iostring, "C_UNION(&%-12s)", ((Obj_Head *)object.ob_spec.tedinfo)->label);
				}
				save_string(iostring);
				sprintf(iostring, " , %2d, %2d, %2d, %2d }," NL, object.ob_x, object.ob_y, object.ob_width, object.ob_height);
				save_string(iostring);
				if (mapptr[j + 1] == mapptr[j] + 2)
				{
					save_string("\t{");
					out_label((Obj_Head *)aobject.click, "NULL\t\t ");
					save_string(", ");
					out_label((Obj_Head *)aobject.drag, "NULL\t\t ");
					sprintf(iostring, ", %#6x, %#6x, ", aobject.ob_flags, aobject.key);
					save_string(iostring);
					out_label((Obj_Head *)aobject.userp1, "NULL\t\t\t\t");
					save_string(", ");
					out_label((Obj_Head *)aobject.userp2, "NULL\t\t\t\t");
					sprintf(iostring, ", %#6x, ", aobject.mo_index);
					save_string(iostring);
					out_label(entry->type, "0\t\t\t\t\t");
					save_string("}," NL);
				}
			}
			save_string("};" NL);
#else
			entry = (OBJ_ENTRY *)tree->object;
			for (j = 0; j < entrycount; entry++, j++)
			{
				memcpy(&object, &entry->obj, sizeof(object));
				memcpy(&aobject, &entry->aobj, sizeof(aobject));
				object.ob_next = mapptr[object.ob_next];
				object.ob_head = mapptr[object.ob_head];
				object.ob_tail = mapptr[object.ob_tail];
				if (j == entrycount - 1)
				{
					if (mapptr[j + 1] == mapptr[j] + 2)
						aobject.ob_flags |= OF_LASTOB;
					else
						object.ob_flags |= OF_LASTOB;
				}
				if (j == 0)
				{
					if ((tree->flags & (OBJ_GLOBAL | OBJ_LOCAL)) == OBJ_GLOBAL)
						save_string("       ");
					else
						save_string("static ");
					sprintf(iostring, "OBJECT  %-12s    ", tree->label);
				} else
				{
					sprintf(iostring, "static OBJECT  _%02d_%-12s", mapptr[j], tree->label);
				}
				save_string(iostring);
				sprintf(iostring, " = { %2d, %2d, %2d, %2d, %#6x, %#6x, ",
					object.ob_next,
					object.ob_head,
					object.ob_tail,
					object.ob_type,
					object.ob_flags,
					object.ob_state);
				save_string(iostring);
				if ((char)object.ob_type == G_BOX ||
					(char)object.ob_type == G_IBOX ||
					(char)object.ob_type == G_BOXCHAR)
				{
					sprintf(iostring, " %#010lxL\t\t\t\t", (long)object.ob_spec.index);
				} else if ((char)object.ob_type == G_TITLE ||
					(char)object.ob_type == G_STRING ||
					(char)object.ob_type == G_BUTTON)
				{
					sprintf(iostring, "(long) %-12s", ((Obj_Head *)object.ob_spec.free_string)->label);
				} else
				{
					sprintf(iostring, "(long) &%-12s", ((Obj_Head *)object.ob_spec.tedinfo)->label);
				}
				save_string(iostring);
				sprintf(iostring, " , %2d, %2d, %2d, %2d };" NL, object.ob_x, object.ob_y, object.ob_width, object.ob_height);
				save_string(iostring);
				if (mapptr[j + 1] == mapptr[j] + 2)
				{
					sprintf(iostring, "static AOBJECT _%02da%-12s = {", mapptr[j], tree->label);
					save_string(iostring);
					out_label((Obj_Head *)aobject.click, "NULL\t\t ");
					save_string(", ");
					out_label((Obj_Head *)aobject.drag, "NULL\t\t ");
					sprintf(iostring, ", %#6x, %#6x, ", aobject.ob_flags, aobject.key);
					save_string(iostring);
					out_label((Obj_Head *)aobject.userp1, "NULL\t\t\t\t");
					save_string(", ");
					out_label((Obj_Head *)aobject.userp2, "NULL\t\t\t\t");
					sprintf(iostring, ", %#6x, ", aobject.mo_index);
					save_string(iostring);
					out_label(entry->type, "0\t\t\t\t\t");
					save_string("};" NL);
				}
			}
#endif
			save_string(NL);
		}
	}
}


static void out_data(Obj_Head *list)
{
	int i, count;
	Obj_Head **items;
	Obj_Head *item;
	long j, size;
	int16 *data;
	
	count = (int)(list->used / sizeof(*items));
	if (count > 0)
	{
		info_list(list->label);
		items = (Obj_Head **)list->object;
		save_string(NL NL "/*\t\tDATAS\t\t*/" NL NL);
		for (i = 0; i < count; i++)
		{
			item = items[i];
			info_obj(item->label);
			size = ((long)item->used - 1) >> 1;
			if (size > 0)
			{
				if ((item->flags & (OBJ_GLOBAL | OBJ_LOCAL)) == OBJ_GLOBAL)
					save_string("       ");
				else
					save_string("static ");
				sprintf(iostring, "int16 %-12s [] =" NL "\t{" NL "\t\t\t", item->label);
				save_string(iostring);
				data = item->object;
				for (j = 0; j < size; j++)
				{
					sprintf(iostring, "%#06x, ", *data++);
					save_string(iostring);
					if ((j & 7) == 7)
						save_string(NL "\t\t\t");
				}
				sprintf(iostring, "%#06x" NL "\t};" NL NL, *data++);
				save_string(iostring);
			}
		}
	}
}	


static void out_string(Obj_Head *list, Obj_Head *map, const char *title)
{
	int i, count;
	Obj_Head **items;
	Obj_Head *item;
	Obj_Head *mapitem;
	char buf[4];
	char *str;

	count = (int)(list->used / sizeof(*items));
	if (count > 0)
	{
		info_list(list->label);
		items = (Obj_Head **)list->object;
		if (!Ast_isEmpty(title))
			save_string(title);
		buf[1] = '\0';
		for (i = 0; i < count; i++)
		{
			item = items[i];
			mapitem = ((Obj_Head **)map->object)[i];
			if (strncmp(mapitem->label, "ACS(", 4) != 0)
			{
				info_obj(mapitem->label);
				if ((mapitem->flags & (OBJ_GLOBAL | OBJ_LOCAL)) == OBJ_GLOBAL)
					save_string("       ");
				else
					save_string("static ");
				save_string("char ");
				buf[1] = '\0';
				str = item->label;
				while ((signed char)*str >= ' ')
				{
					buf[0] = *str;
					save_string(buf);
					str++;
				}
				save_string(" [] = \"");
				str = (char *)item->object;
				while (*str != '\0')
				{
					switch (*str)
					{
					case '\n':
						strcpy(buf, "\\n");
						break;
					case '\r':
						strcpy(buf, "\\r");
						break;
					case '\t':
						strcpy(buf, "\\t");
						break;
					case '\v':
						strcpy(buf, "\\v");
						break;
					case '\b':
						strcpy(buf, "\\b");
						break;
					case '\a':
						strcpy(buf, "\\a");
						break;
					case '\f':
						strcpy(buf, "\\f");
						break;
					case '"':
						strcpy(buf, "\\\"");
						break;
					case '\\':
						strcpy(buf, "\\\\");
						break;
					default:
						buf[0] = *str;
						buf[1] = '\0';
						break;
					}
					save_string(buf);
					str++;
				}
				save_string("\";" NL);
			}
		}
	}
}


static void out_tedi(Obj_Head *list)
{
	int i, count;
	Obj_Head **items;
	Obj_Head *item;
	TEDINFO *ted;
	
	count = (int)(list->used / sizeof(*items));
	if (count > 0)
	{
		info_list(list->label);
		items = (Obj_Head **)list->object;
		save_string(NL NL "/*\t\tTEDINFOS\t\t*/" NL NL);
		for (i = 0; i < count; i++)
		{
			item = items[i];
			info_obj(item->label);
			ted = (TEDINFO *)item->object;
			sprintf(iostring, "static TEDINFO %-12s = {%s, %s, %s, %d, %d, %d, %#x, %d, %d, %ld, %ld};" NL,
				item->label,
				((Obj_Head *)ted->te_ptext)->label,
				((Obj_Head *)ted->te_ptmplt)->label,
				((Obj_Head *)ted->te_pvalid)->label,
				ted->te_font,
				ted->te_fontid,
				ted->te_just,
				ted->te_color,
				ted->te_fontsize,
				ted->te_thickness,
				((Obj_Head *)ted->te_ptext)->used,
				((Obj_Head *)ted->te_ptmplt)->used);
			save_string(iostring);
		}
	}
}


static void out_user(Obj_Head *list)
{
	int i, count;
	Obj_Head **items;
	Obj_Head *item;
	AUSERBLK *user;
	
	count = (int)(list->used / sizeof(*items));
	if (count > 0)
	{
		info_list(list->label);
		items = (Obj_Head **)list->object;
		save_string(NL NL "/*\t\tAUSERBLK\t\t*/" NL NL);
		for (i = 0; i < count; i++)
		{
			item = items[i];
			info_obj(item->label);
			user = (AUSERBLK *)item->object;
			sprintf(iostring, "static AUSERBLK %-12s = {%s, ", item->label, ((Obj_Head *)user->ub_code)->label);
			save_string(iostring);
			out_label((Obj_Head *)user->ub_parm, "0L");
			save_string(", ");
			out_label((Obj_Head *)user->ub_serv, "NULL");
			save_string(", ");
			out_label((Obj_Head *)user->ub_ptr1, "NULL");
			save_string(", ");
			out_label((Obj_Head *)user->ub_ptr2, "NULL");
			save_string(", ");
			out_label((Obj_Head *)user->ub_ptr3, "NULL");
			save_string(", ");
			out_label((Obj_Head *)user->bubble, "NULL");
			save_string(", ");
			out_label((Obj_Head *)user->context, "NULL");
			save_string("};" NL);
		}
	}
}


static void out_window(Obj_Head *list)
{
	int i, count;
	Obj_Head **items;
	Obj_Head *item;
	Awindow *win;
	
	count = (int)(list->used / sizeof(*items));
	if (count > 0)
	{
		info_list(list->label);
		items = (Obj_Head **)list->object;
		save_string(NL NL "/*\t\tWINDOWS\t\t*/" NL NL);
		for (i = 0; i < count; i++)
		{
			item = items[i];
			info_obj(item->label);
			win = (Awindow *)item->object;
			sprintf(iostring, "Awindow %-12s =" NL "\t{" NL "\t\t", item->label);
			save_string(iostring);
			out_label((Obj_Head *)win->user, "NULL");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->service, "Awi_service");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->create, "Awi_selfcreate");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->open, "Awi_open");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->init, "Awi_init");
			save_string("," NL "\t\t");
#if WITH_FIXES
			out_rootlabel((Obj_Head *)win->work);
#else
			out_label2((Obj_Head *)win->work, "NULL");
#endif
			save_string(", ");
#if WITH_FIXES
			out_rootlabel((Obj_Head *)win->toolbar);
#else
			out_label2((Obj_Head *)win->toolbar, "NULL");
#endif
			save_string(", 0, 0, -1," NL "\t\t");
			sprintf(iostring, "%#6x, {%2i, %2i, %2i, %2i}," NL "\t\t",
				win->wi_kind, win->wi_act.x, win->wi_act.y, win->wi_act.w, win->wi_act.h);
			save_string(iostring);
			save_string("{0, 0, 0, 0}, {0, 0, 0, 0}, {-1, -1, -1, -1}, 0, 0," NL "\t\t");
			sprintf(iostring, "%#6x," NL "\t\t", win->snap_mask);
			save_string(iostring);
			out_label((Obj_Head *)win->name, "NULL");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->info, "NULL");
			save_string("," NL "\t\t");
			sprintf(iostring, "%4d, %#6x, 0, -1," NL "\t\t", win->ob_len, win->kind);
			save_string(iostring);
			out_label2((Obj_Head *)win->iconblk, "NULL");
			save_string("," NL "\t\t");
#if WITH_FIXES
			out_rootlabel((Obj_Head *)win->menu);
#else
			out_label2((Obj_Head *)win->menu, "NULL");
#endif
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->keys, "Awi_keys");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->obchange, "Awi_obchange");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->redraw, "Awi_redraw");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->topped, "Awi_topped");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->closed, "Awi_closed");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->fulled, "Awi_fulled");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->arrowed, "Awi_arrowed");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->hslid, "Awi_hslid");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->vslid, "Awi_vslid");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->sized, "Awi_sized");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->moved, "Awi_moved");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->iconify, "Awi_iconify");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->uniconify, "Awi_uniconify");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->gemscript, "Awi_gemscript");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->help_title, "NULL");
			save_string("," NL "\t\t");
			out_label((Obj_Head *)win->help_file, "NULL");
			save_string(NL "\t};" NL NL NL);
		}
	}
}


static void out_refs(ACS_HEAD *acs)
{
	Obj_Head *list = acs->rf_list;
	int i, count;
	Obj_Head **items;
	Obj_Head *item;
	int16 flags;
	
	count = (int)(list->used / sizeof(*items));
	if (count > 0)
	{
		items = (Obj_Head **)list->object;
		save_string(NL NL "/*\t\tANSI-C Routines\t\t*/" NL NL);
		for (i = 0; i < count; i++)
		{
			item = items[i];
			info_obj(item->label);
			flags = item->flags;
			if ((long)item->used > 0)
			{
				save_string((char *)item->object);
			} else
			{
				if ((flags & 0xff) != 0 && !(flags & OBJ_USERDEFINED))
				{
					sprintf(iostring, "/* '%s' Not yet defined by user */" NL, item->label);
					save_string(iostring);
				}
			}
			save_string(NL);
		}
	}
}


static void out_declproto(ACS_HEAD *acs)
{
	Obj_Head *list = acs->rf_list;
	int i, count;
	Obj_Head **items;
	Obj_Head *item;
	int16 flags;
	
	count = (int)(list->used / sizeof(*items));
	if (count > 0)
	{
		info_list(acs->rf_list->label);
		items = (Obj_Head **)list->object;
		save_string(NL NL "/*\t\tANSI-C Prototypes\t\t*/" NL NL);
		for (i = 0; i < count; i++)
		{
			item = items[i];
			flags = item->flags;
			if ((flags & (OBJ_LOCAL | OBJ_GLOBAL | OBJ_USERDEFINED)) == 0 ||
				(flags & (OBJ_LOCAL | OBJ_GLOBAL | OBJ_USERDEFINED)) == (OBJ_LOCAL | OBJ_GLOBAL))
			{
				info_obj(item->label);
				switch (flags & 0xff)
				{
				case REF_OBJ_CLICK:
				case REF_OBJ_DRAG:
				case REF_SYS_TERM:
				case REF_SYS_ABOUTME:
				case REF_SYS_CLOSE:
				case REF_SYS_TIMER:
				case REF_SYS_MOUSE:
					sprintf(iostring, "static void %s( void );" NL, item->label);
					break;
				case REF_USER_DRAW:
					sprintf(iostring, "static int16 CDECL %s( PARMBLK* pb );" NL, item->label);
					break;
				case REF_USER_SERVICE:
					sprintf(iostring, "static int16 %s( OBJECT *entry, int16 task, void *in_out );" NL, item->label);
					break;
				case REF_WIN_OPEN:
				case REF_WIN_INIT:
				case REF_WIN_UNICONIFY:
					sprintf(iostring, "static int16 %s( Awindow* wind );" NL, item->label);
					break;
				case REF_WIN_CREATE:
					sprintf(iostring, "static Awindow *%s( void *para );" NL, item->label);
					break;
				case REF_WIN_KEYS:
					sprintf(iostring, "static int16 %s( Awindow *wind, int16 kstate, int16 key );" NL, item->label);
					break;
				case REF_WIN_CHANGE:
					sprintf(iostring, "static void %s( Awindow *wind, int16 obnr, int16 state );" NL, item->label);
					break;
				case REF_WIN_REDRAW:
				case REF_WIN_MOVED:
				case REF_WIN_SIZED:
					sprintf(iostring, "static void %s( Awindow *wind, Axywh *area );" NL, item->label);
					break;
				case REF_WIN_TOPPED:
				case REF_WIN_CLOSED:
				case REF_WIN_FULLED:
					sprintf(iostring, "static void %s( Awindow *wind );" NL, item->label);
					break;
				case REF_WIN_ARROWED:
					sprintf(iostring, "static void %s( Awindow *wind, int16 pos, int16 amount );" NL, item->label);
					break;
				case REF_WIN_HSLIDE:
				case REF_WIN_VSLIDE:
					sprintf(iostring, "static void %s( Awindow *wind, int16 pos );" NL, item->label);
					break;
				case REF_WIN_SERVICE:
					sprintf(iostring, "static int16 %s( Awindow *wind, int16 task, void *in_out );" NL, item->label);
					break;
				case REF_NONE:
					iostring[0] = '\0';
					break;
				case REF_WIN_ICONIFY:
					sprintf(iostring, "static int16 %s( Awindow *wind, int16 all );" NL, item->label);
					break;
				case REF_WIN_GEMSCRIPT:
					sprintf(iostring, "static int16 %s( Awindow *wind, int16 anz, char **cmds, A_GSAntwort *antwort );" NL, item->label);
					break;
				case REF_SYS_ACSINIT0:
				case REF_SYS_ACSINIT:
					sprintf(iostring, "static int16 %s( void );" NL, item->label);
					break;
				case REF_SYS_MESSAGE:
				case REF_SYS_MPROTO:
					sprintf(iostring, "static int16 %s( int16 *message );" NL, item->label);
					break;
				case REF_SYS_BUTTON:
					sprintf(iostring, "static void %s( int16 *button, int16 *kreturn );" NL, item->label);
					break;
				case REF_SYS_KEY:
				case REF_SYS_WIKEY:
					sprintf(iostring, "static void %s( int16 *kstate, int16 *key );" NL, item->label);
					break;
				case REF_SYS_GEMSCRIPT:
					sprintf(iostring, "static int16 %s( int16 anz, char **cmd, A_GSAntwort *antwort );" NL, item->label);
					break;
				case REF_WIN_UNUSED1:
				case REF_WIN_UNUSED2:
				default:
					sprintf(iostring, "/* %s Type %d ?? */" NL, item->label, flags & 0xff);
					break;
				}
				save_string(iostring);
			}
		}
		save_string(NL NL);
	}
}


void pc_output(ACS_HEAD *acs)
{
	time_t t;
	char filename[__PS__];
	char *p;
	char *dot;
	long fd;
	int i, j;
	
	p = strrchr(acs->filename, PATH_SEP) + 1;
	strcpy(filename, acs->filename);
	dot = strrchr(filename, '.'); /* BUG: will also find dot in directory names */
	/* BUG: no null pointer check */
	strcpy(dot, ".AH"); /* FIXME: make lowercase */
	fd = Fcreate(filename, 0);
	if (fd < 0)
	{
		ACSblk->ACSerror(AE_CREATE_IO, p);
	} else
	{
		info_start(filename);
		info_title("ANSI C Code");
		if (setjmp(*set_handle((int16)fd)) != 0)
		{
			ACSblk->ACSerror(AE_WRITE_IO, NULL);
		} else
		{
			t = time(NULL);
			sprintf(iostring, pc_welcome, ctime(&t), acs->filename);
			save_string(iostring);
			save_string(NL "/*\t\tGUI-LANGUAGE\t\t*/" NL);
			for (i = 0; i <= MAX_LANGS; i++)
			{
				for (j = i + 1; j <= MAX_LANGS; j++)
				{
					sprintf(iostring, "#if defined(ACS_LANG%d) && defined(ACS_LANG%d)" NL, i + 1, j + 1);
					save_string(iostring);
					save_string("\t#error \"More than one language macros defined!\"" NL "#endif" NL);
				}
			}
			save_string(NL);
			save_string("#if ");
			for (j = 0; j <= MAX_LANGS; j++)
			{
				if (j == 0)
					sprintf(iostring, "!defined(ACS_LANG%d)", j + 1);
				else
					sprintf(iostring, " && !defined(ACS_LANG%d)", j + 1);
				save_string(iostring);
			}
			sprintf(iostring, NL "\t#define ACS_LANG%d" NL "#endif" NL, acs->language + 1);
			save_string(iostring);
			out_declproto(acs);
			
			save_string(NL NL "/*\t\tALERT BOXES\t\t*/" NL NL);
			save_string(NL "#if defined(ACS_LANG1)\t\t\t/*\t\tAlerts: ACS_LANG1\t\t*/" NL NL);
			for (j = 0; j <= MAX_LANGS; j++)
			{
				if (j < acs->language)
				{
					out_string(acs->mlal_list[j], acs->al_list, NULL);
				} else if (j == acs->language)
				{
					out_string(acs->al_list, acs->al_list, NULL);
				} else
				{
					out_string(acs->mlal_list[j - 1], acs->al_list, NULL);
				}
				if (j < MAX_LANGS)
				{
					sprintf(iostring, NL "#elif defined(ACS_LANG%d)\t\t\t/*\t\tAlerts: ACS_LANG%d\t\t*/" NL NL, j + 2, j + 2);
					save_string(iostring);
				}
			}
			save_string(NL "#else" NL NL "\t#error \"Wrong Language Macro defined\"" NL NL "#endif" NL NL);
			
			save_string(NL NL "/*\t\tSTRINGS\t\t*/" NL NL);
			save_string(NL "#if defined(ACS_LANG1)\t\t\t\t/*\t\tStrings: ACS_LANG1\t\t*/" NL NL);
			for (j = 0; j <= MAX_LANGS; j++)
			{
				if (j < acs->language)
				{
					out_string(acs->mlst_list[j], acs->st_list, NULL);
				} else if (j == acs->language)
				{
					out_string(acs->st_list, acs->st_list, NULL);
				} else
				{
					out_string(acs->mlst_list[j - 1], acs->st_list, NULL);
				}
				if (j < MAX_LANGS)
				{
					sprintf(iostring, NL "#elif defined(ACS_LANG%d)\t\t\t/*\t\tStrings: ACS_LANG%d\t\t*/" NL NL, j + 2, j + 2);
					save_string(iostring);
				}
				
			}
			save_string(NL "#else" NL NL "\t#error \"Wrong Language Macro defined\"" NL NL "#endif" NL NL);

			out_data(acs->if_list);
			out_tedi(acs->te_list);
			out_user(acs->us_list);
			out_icon(acs->ic_list);
			out_image(acs->im_list);
			out_obj(acs->me_list, NL NL "/*\t\tMENU TREES\t\t*/" NL NL);
			out_obj(acs->pu_list, NL NL "/*\t\tPOPUP TREES\t\t*/" NL NL);
			out_obj(acs->ob_list, NL NL "/*\t\tOBJECT TREES\t\t*/" NL NL);
			out_window(acs->wi_list);
			out_mouse(acs->mo_list);
			out_acs(acs);
			if (acs->flags & ACS_PROTOTYPES)
				out_refs(acs);
			close_buf();
		}
		info_end();
		Fclose((int16)fd);
	}
}
