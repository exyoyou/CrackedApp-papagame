package com.byazt.ete;

import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 145})
public class my {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13811a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f13812c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f13813da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f13814i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13815n;
    public boolean sp;
    public int tt;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f13816x;

    public my(JSONObject jSONObject) {
        this.tt = 0;
        if (jSONObject == null) {
            return;
        }
        int iOptInt = jSONObject.optInt("reward_browse_type", 0);
        this.tt = iOptInt;
        if (iOptInt < 0 || iOptInt > 3) {
            this.tt = 0;
        }
        if (this.tt == 2) {
            this.tt = 3;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("direct_landing_page_info");
        if (jSONObjectOptJSONObject != null) {
            this.f13812c = jSONObjectOptJSONObject.optString("direct_landing_url");
            this.ve = jSONObjectOptJSONObject.optInt("display_duration", 0);
            this.uj = jSONObjectOptJSONObject.optInt("close_time", 0);
            this.f13815n = jSONObjectOptJSONObject.optInt("page_type");
            this.f13811a = jSONObjectOptJSONObject.optInt("show_type");
            this.sp = jSONObjectOptJSONObject.optBoolean("is_landing_with_sound", false);
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("reward_browse_banner");
            if (jSONObjectOptJSONObject2 != null) {
                this.f13816x = jSONObjectOptJSONObject2.optString("ugen_url");
                this.f13814i = jSONObjectOptJSONObject2.optString("ugen_md5");
            }
            this.f13813da = jSONObjectOptJSONObject.optInt("close_btn_position");
        }
    }

    public static boolean a(ic icVar) {
        my myVarRh = rh(icVar);
        return myVarRh != null && myVarRh.f13815n == 3;
    }

    public static int da(ic icVar) {
        my myVarRh = rh(icVar);
        if (myVarRh == null) {
            return 0;
        }
        return myVarRh.tt;
    }

    public static boolean i(ic icVar) {
        my myVarRh = rh(icVar);
        if (myVarRh == null) {
            return false;
        }
        return myVarRh.sp;
    }

    public static boolean m(ic icVar) {
        my myVarRh = rh(icVar);
        return myVarRh != null && myVarRh.f13813da == 2;
    }

    public static boolean n(ic icVar) {
        my myVarRh = rh(icVar);
        if (myVarRh == null || myVarRh.f13815n != 4) {
            return false;
        }
        int iSl = com.byazt.aas.nb.sl(icVar);
        return iSl == 3 || iSl == 4 || iSl == 5 || iSl == 9;
    }

    public static int nu(ic icVar) {
        my myVarRh = rh(icVar);
        if (myVarRh == null) {
            return 0;
        }
        return myVarRh.f13813da;
    }

    private static my rh(ic icVar) {
        if (icVar == null) {
            return null;
        }
        return icVar.pn();
    }

    public static int sl(ic icVar) {
        int i10;
        my myVarRh = rh(icVar);
        if (myVarRh != null && (i10 = myVarRh.ve) >= 0) {
            return i10;
        }
        return 0;
    }

    public static boolean sp(ic icVar) {
        my myVarRh = rh(icVar);
        return myVarRh != null && myVarRh.f13811a == 3;
    }

    public static int t(ic icVar) {
        int i10;
        my myVarRh = rh(icVar);
        if (myVarRh != null && (i10 = myVarRh.uj) >= 0) {
            return i10;
        }
        return 0;
    }

    public static boolean tt(ic icVar) {
        if (c(icVar)) {
            return i(icVar);
        }
        return false;
    }

    public static boolean u(ic icVar) {
        return rh(icVar) != null && da(icVar) == 3 && c(icVar);
    }

    public static boolean uj(ic icVar) {
        my myVarRh = rh(icVar);
        return myVarRh != null && c(icVar) && myVarRh.tt == 1 && myVarRh.f13815n == 2;
    }

    public static boolean ve(ic icVar) {
        my myVarRh = rh(icVar);
        return myVarRh != null && myVarRh.tt == 1 && myVarRh.f13815n == 1;
    }

    public static String x(ic icVar) {
        my myVarRh = rh(icVar);
        return myVarRh == null ? "" : myVarRh.f13812c;
    }

    public static com.byazt.seg.c yp(ic icVar) {
        my myVarRh = rh(icVar);
        if (myVarRh == null || TextUtils.isEmpty(myVarRh.f13816x)) {
            return null;
        }
        com.byazt.seg.c cVar = new com.byazt.seg.c();
        cVar.ve(myVarRh.f13816x);
        cVar.tt(myVarRh.f13814i);
        cVar.c(myVarRh.f13816x);
        return cVar;
    }

    public static boolean z(ic icVar) {
        my myVarRh = rh(icVar);
        return myVarRh != null && myVarRh.f13813da == 1;
    }

    public void c(JSONObject jSONObject) {
        try {
            jSONObject.put("reward_browse_type", this.tt);
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("direct_landing_url", this.f13812c);
            jSONObject2.put("display_duration", this.ve);
            jSONObject2.put("close_time", this.uj);
            jSONObject2.put("page_type", this.f13815n);
            jSONObject2.put("show_type", this.f13811a);
            jSONObject2.put("close_btn_position", this.f13813da);
            jSONObject2.put("is_landing_with_sound", this.sp);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("ugen_url", this.f13816x);
            jSONObject3.put("ugen_md5", this.f13814i);
            jSONObject2.put("reward_browse_banner", jSONObject3);
            jSONObject.put("direct_landing_page_info", jSONObject2);
        } catch (Exception e11) {
            com.byazt.nr.m.c(e11);
        }
    }

    public static boolean c(ic icVar) {
        my myVarRh = rh(icVar);
        return (myVarRh == null || da(icVar) == 0 || TextUtils.isEmpty(myVarRh.f13812c)) ? false : true;
    }
}
