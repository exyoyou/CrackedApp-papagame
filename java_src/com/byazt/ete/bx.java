package com.byazt.ete;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 126})
public class bx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f13589a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13590c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f13591da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13592i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f13593n;
    public int sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f13594t;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f13595u;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f13596x;

    public bx(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("live_ad")) == null) {
            return;
        }
        this.f13595u = true;
        c(jSONObjectOptJSONObject.optInt("live_show_time", 60));
        this.tt = jSONObjectOptJSONObject.optString("live_author_nickname");
        this.ve = jSONObjectOptJSONObject.optInt("live_author_follower_count", -1);
        this.uj = jSONObjectOptJSONObject.optInt("live_watch_count", -1);
        this.f13593n = jSONObjectOptJSONObject.optString("live_description");
        this.f13589a = jSONObjectOptJSONObject.optString("live_feed_url");
        this.sp = jSONObjectOptJSONObject.optString("live_cover_image_url");
        this.f13596x = jSONObjectOptJSONObject.optString("live_avatar_url");
        this.f13592i = jSONObjectOptJSONObject.optInt("live_avatar_width");
        this.f13591da = jSONObjectOptJSONObject.optInt("live_avatar_height");
        this.sl = jSONObjectOptJSONObject.optInt("live_cover_width");
        this.f13594t = jSONObjectOptJSONObject.optInt("live_cover_height");
    }

    public static String a(ic icVar) {
        bx bxVarYp = yp(icVar);
        return bxVarYp == null ? "" : bxVarYp.f13593n;
    }

    public static int da(ic icVar) {
        bx bxVarYp = yp(icVar);
        if (bxVarYp == null) {
            return 0;
        }
        return bxVarYp.f13592i;
    }

    public static String i(ic icVar) {
        bx bxVarYp = yp(icVar);
        return bxVarYp == null ? "" : bxVarYp.f13596x;
    }

    public static int n(ic icVar) {
        bx bxVarYp = yp(icVar);
        if (bxVarYp == null) {
            return 0;
        }
        return bxVarYp.uj;
    }

    public static int sl(ic icVar) {
        bx bxVarYp = yp(icVar);
        if (bxVarYp == null) {
            return 0;
        }
        return bxVarYp.f13591da;
    }

    public static String sp(ic icVar) {
        bx bxVarYp = yp(icVar);
        return bxVarYp == null ? "" : bxVarYp.f13589a;
    }

    public static int t(ic icVar) {
        bx bxVarYp = yp(icVar);
        if (bxVarYp == null) {
            return 0;
        }
        return bxVarYp.sl;
    }

    public static int tt(ic icVar) {
        bx bxVarYp = yp(icVar);
        if (bxVarYp == null) {
            return 0;
        }
        return bxVarYp.f13590c;
    }

    public static int u(ic icVar) {
        bx bxVarYp = yp(icVar);
        if (bxVarYp == null) {
            return 0;
        }
        return bxVarYp.f13594t;
    }

    public static int uj(ic icVar) {
        bx bxVarYp = yp(icVar);
        if (bxVarYp == null) {
            return 0;
        }
        return bxVarYp.ve;
    }

    public static String ve(ic icVar) {
        bx bxVarYp = yp(icVar);
        return bxVarYp == null ? "" : bxVarYp.tt;
    }

    public static String x(ic icVar) {
        bx bxVarYp = yp(icVar);
        return bxVarYp == null ? "" : bxVarYp.sp;
    }

    private static bx yp(ic icVar) {
        if (icVar == null) {
            return null;
        }
        return icVar.js();
    }

    public boolean c() {
        return this.f13595u;
    }

    public void c(JSONObject jSONObject) {
        if (this.f13595u) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("live_show_time", this.f13590c);
                jSONObject2.put("live_author_nickname", this.tt);
                jSONObject2.put("live_author_follower_count", this.ve);
                jSONObject2.put("live_watch_count", this.uj);
                jSONObject2.put("live_description", this.f13593n);
                jSONObject2.put("live_feed_url", this.f13589a);
                jSONObject2.put("live_cover_image_url", this.sp);
                jSONObject2.put("live_avatar_url", this.f13596x);
                jSONObject2.put("live_cover_width", this.sl);
                jSONObject2.put("live_cover_height", this.f13594t);
                jSONObject2.put("live_avatar_width", this.f13592i);
                jSONObject2.put("live_avatar_height", this.f13591da);
                jSONObject2.put("isValid", this.f13595u);
                jSONObject.put("live_ad", jSONObject2);
            } catch (Exception unused) {
            }
        }
    }

    public static boolean c(ic icVar) {
        bx bxVarYp = yp(icVar);
        if (bxVarYp == null) {
            return false;
        }
        return bxVarYp.f13595u;
    }

    public void c(int i10) {
        if (i10 <= 0 || i10 > 300) {
            i10 = 60;
        }
        this.f13590c = i10;
    }
}
