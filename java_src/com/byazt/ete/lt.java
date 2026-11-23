package com.byazt.ete;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 438})
public class lt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13795a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f13796c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f13797da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13798i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f13799m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13800n;
    public String sl;
    public boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f13801t;
    public int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f13802u;
    public int uj;
    public boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f13803x;
    public boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f13804z;

    public lt(JSONObject jSONObject) {
        this.f13797da = 0;
        if (jSONObject == null) {
            return;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("reward_draw");
        if (jSONObjectOptJSONObject != null) {
            this.tt = jSONObjectOptJSONObject.optInt("max_draw_play_time", 10);
            this.uj = jSONObjectOptJSONObject.optInt("draw_rewarded_play_time", 30);
            this.f13800n = jSONObjectOptJSONObject.optInt("skip_btn_left_style", 0);
            this.f13795a = jSONObjectOptJSONObject.optInt("skip_btn_right_style", 0);
            this.sp = jSONObjectOptJSONObject.optBoolean("auto_slide", false);
            this.f13803x = jSONObjectOptJSONObject.optInt("show_time_type", 0);
            this.f13798i = jSONObjectOptJSONObject.optInt("tip_time", 0);
            this.f13797da = jSONObjectOptJSONObject.optInt("show_type", 0);
            this.ve = jSONObjectOptJSONObject.optBoolean("single_max_countdown", false);
            this.sl = jSONObjectOptJSONObject.optString("top_template_url");
            this.f13801t = jSONObjectOptJSONObject.optString("top_template_md5");
            this.f13802u = jSONObjectOptJSONObject.optInt("top_template_timeout");
            this.yp = jSONObjectOptJSONObject.optBoolean("can_cancel");
            this.f13804z = jSONObjectOptJSONObject.optInt("init_status_time", 0);
            this.f13799m = jSONObjectOptJSONObject.optBoolean("is_pause_tip_by_express", false);
        } else {
            this.tt = 10;
            this.uj = 30;
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(com.umeng.analytics.pro.f.K);
        if (jSONObjectOptJSONObject2 != null) {
            this.f13796c = !TextUtils.isEmpty(jSONObjectOptJSONObject2.optString("group_id"));
        }
    }

    public static boolean a(ic icVar) {
        lt ltVarNu = nu(icVar);
        if (ltVarNu == null) {
            return false;
        }
        return ltVarNu.sp;
    }

    public static boolean da(ic icVar) {
        lt ltVarNu = nu(icVar);
        if (ltVarNu == null) {
            return false;
        }
        return ltVarNu.ve;
    }

    public static int i(ic icVar) {
        lt ltVarNu = nu(icVar);
        if (ltVarNu == null) {
            return 25;
        }
        return ltVarNu.f13798i;
    }

    public static boolean m(ic icVar) {
        lt ltVarNu = nu(icVar);
        if (ltVarNu == null) {
            return false;
        }
        return ltVarNu.f13799m;
    }

    public static int n(ic icVar) {
        lt ltVarNu = nu(icVar);
        if (ltVarNu == null) {
            return 0;
        }
        return ltVarNu.f13795a;
    }

    private static lt nu(ic icVar) {
        if (icVar == null) {
            return null;
        }
        return icVar.xo();
    }

    public static String sl(ic icVar) {
        lt ltVarNu = nu(icVar);
        if (ltVarNu == null) {
            return null;
        }
        return ltVarNu.sl;
    }

    public static int sp(ic icVar) {
        lt ltVarNu = nu(icVar);
        if (ltVarNu == null) {
            return 10;
        }
        return ltVarNu.f13803x == 1 ? Math.min((int) Math.max(xd.sp(icVar), ve(icVar)), 60) : ve(icVar);
    }

    public static String t(ic icVar) {
        lt ltVarNu = nu(icVar);
        if (ltVarNu == null) {
            return null;
        }
        return ltVarNu.f13801t;
    }

    public static int tt(ic icVar) {
        int i10;
        lt ltVarNu = nu(icVar);
        if (ltVarNu != null && (i10 = ltVarNu.tt) > 0) {
            return i10;
        }
        return 10;
    }

    public static int u(ic icVar) {
        lt ltVarNu = nu(icVar);
        if (ltVarNu == null) {
            return 0;
        }
        return ltVarNu.f13802u;
    }

    public static int uj(ic icVar) {
        lt ltVarNu = nu(icVar);
        if (ltVarNu == null) {
            return 0;
        }
        return ltVarNu.f13800n;
    }

    public static int ve(ic icVar) {
        int i10;
        lt ltVarNu = nu(icVar);
        if (ltVarNu != null && (i10 = ltVarNu.uj) > 0) {
            return i10;
        }
        return 30;
    }

    public static boolean x(ic icVar) {
        lt ltVarNu = nu(icVar);
        return ltVarNu != null && c(icVar) && ltVarNu.f13797da == 1;
    }

    public static boolean yp(ic icVar) {
        lt ltVarNu = nu(icVar);
        if (ltVarNu == null) {
            return false;
        }
        return ltVarNu.yp;
    }

    public static int z(ic icVar) {
        lt ltVarNu = nu(icVar);
        if (ltVarNu == null) {
            return 0;
        }
        return ltVarNu.f13804z;
    }

    public void c(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("max_draw_play_time", this.tt);
            jSONObject2.put("draw_rewarded_play_time", this.uj);
            jSONObject2.put("skip_btn_left_style", this.f13800n);
            jSONObject2.put("skip_btn_right_style", this.f13795a);
            jSONObject2.put("auto_slide", this.sp);
            jSONObject2.put("show_time_type", this.f13803x);
            jSONObject2.put("show_type", this.f13797da);
            jSONObject2.put("tip_time", this.f13798i);
            jSONObject2.put("single_max_countdown", this.ve);
            jSONObject2.put("top_template_url", this.sl);
            jSONObject2.put("top_template_md5", this.f13801t);
            jSONObject2.put("top_template_timeout", this.f13802u);
            jSONObject2.put("can_cancel", this.yp);
            jSONObject2.put("init_status_time", this.f13804z);
            jSONObject2.put("is_pause_tip_by_express", this.f13799m);
            jSONObject.put("reward_draw", jSONObject2);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    public static boolean c(ic icVar) {
        lt ltVarNu = nu(icVar);
        if (ltVarNu == null) {
            return false;
        }
        return ltVarNu.f13796c;
    }
}
