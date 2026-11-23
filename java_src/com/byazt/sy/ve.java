package com.byazt.sy;

import android.view.View;
import com.byazt.ete.gr;
import com.byazt.ete.ic;
import com.byazt.ete.p;
import com.byazt.ete.u;
import com.haima.hmcp.ConstantsInternal;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 528, 54})
public class ve {
    private static boolean c(int i10, int i11, int i12, int i13, float f10, float f11) {
        return f10 >= ((float) i10) && f10 <= ((float) (i12 + i10)) && f11 >= ((float) i11) && f11 <= ((float) (i13 + i11));
    }

    public static void tt(ic icVar, u uVar) {
        JSONObject jSONObject = new JSONObject();
        c(icVar, uVar, jSONObject);
        com.byazt.ddx.uj.c(icVar, "easy_play_start_render", jSONObject);
    }

    public static void c(ic icVar, u uVar, JSONObject jSONObject) {
        if (icVar == null || uVar == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("style_id", uVar.n());
            jSONObject.put("component_type", uVar.c());
            jSONObject.put("render_sequence", uVar.ve());
            jSONObject.put("display_area", uVar.uj());
            if (uVar.tt()) {
                jSONObject.put("style_category", p.uj(icVar));
                jSONObject.put("exp_id", p.n(icVar));
                jSONObject.put("group_id", p.a(icVar));
            }
        } catch (Exception unused) {
        }
    }

    public static void tt(ic icVar, u uVar, boolean z10) {
        c(icVar, uVar, z10, 0, (String) null);
    }

    public static void tt(ic icVar, u uVar, boolean z10, int i10, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("success", z10 ? 1 : 0);
            jSONObject.put("error_code", i10);
        } catch (Exception unused) {
        }
        c(icVar, uVar, jSONObject);
        com.byazt.ddx.uj.c(icVar, "easy_play_show", jSONObject);
    }

    public static void tt(ic icVar, u uVar, boolean z10, JSONObject jSONObject) {
        c(icVar, uVar, z10, jSONObject, false);
    }

    public static void c(ic icVar, u uVar) {
        JSONObject jSONObject = new JSONObject();
        c(icVar, uVar, jSONObject);
        com.byazt.ddx.uj.c(icVar, "easy_play_start_load", jSONObject);
    }

    public static void c(ic icVar, u uVar, boolean z10) {
        c(icVar, uVar, z10, 0, (JSONObject) null);
    }

    public static void c(ic icVar, u uVar, boolean z10, int i10) {
        c(icVar, uVar, z10, i10, (JSONObject) null);
    }

    public static void c(ic icVar, u uVar, boolean z10, int i10, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("success", z10 ? 1 : 0);
            jSONObject.put("error_code", i10);
        } catch (Exception unused) {
        }
        c(icVar, uVar, jSONObject);
        com.byazt.ddx.uj.c(icVar, "easy_play_load_result", jSONObject);
    }

    public static void c(ic icVar, u uVar, boolean z10, int i10, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("success", z10 ? 1 : 0);
            jSONObject.put("error_code", i10);
            if (str != null) {
                jSONObject.put(ConstantsInternal.KEY_ERROR_MSG, str);
            }
        } catch (Exception unused) {
        }
        c(icVar, uVar, jSONObject);
        com.byazt.ddx.uj.c(icVar, "easy_play_render_result", jSONObject);
    }

    public static void c(ic icVar, u uVar, boolean z10, JSONObject jSONObject) {
        tt(icVar, uVar, z10, 0, jSONObject);
    }

    public static void c(ic icVar, u uVar, boolean z10, JSONObject jSONObject, boolean z11) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = 2;
        try {
            jSONObject.put("area_type", z10 ? 1 : 2);
            int iC = uVar.c();
            if (iC == 1 || iC == 3) {
                if (!z11) {
                    i10 = 1;
                }
                jSONObject.put("click_type", i10);
            }
        } catch (Exception unused) {
        }
        c(icVar, uVar, jSONObject);
        com.byazt.ddx.uj.c(icVar, "easy_play_click", jSONObject);
    }

    public static boolean c(View view, com.byazt.sr.ve veVar) {
        if (view != null) {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            int i10 = iArr[0];
            int i11 = iArr[1];
            int width = view.getWidth();
            int height = view.getHeight();
            if (veVar instanceof gr) {
                gr grVar = (gr) veVar;
                return c(i10, i11, width, height, grVar.f13648c, grVar.tt);
            }
        }
        return false;
    }
}
