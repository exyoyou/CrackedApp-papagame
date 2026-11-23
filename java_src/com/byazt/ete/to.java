package com.byazt.ete;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 607})
public class to {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f13887a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13888c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13889n;
    public int tt;
    public int uj;
    public String ve;

    public to(JSONObject jSONObject) {
        this.f13887a = false;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("reward_live");
        if (jSONObjectOptJSONObject != null) {
            this.f13887a = true;
            tt(jSONObjectOptJSONObject.optInt("reward_live_type", 1));
            ve(jSONObjectOptJSONObject.optInt("reward_live_style", 1));
            c(jSONObjectOptJSONObject.optString("reward_live_text"));
            c(jSONObjectOptJSONObject.optInt("reward_start_time", 5));
            uj(jSONObjectOptJSONObject.optInt("reward_close_time", 10));
        }
    }

    public static String a(ic icVar) {
        to toVarI = i(icVar);
        return toVarI == null ? "去抖音观看直播\n可提前5s获得奖励哦" : toVarI.ve;
    }

    private static to i(ic icVar) {
        if (icVar == null) {
            return null;
        }
        return icVar.jc();
    }

    public static int n(ic icVar) {
        to toVarI = i(icVar);
        if (toVarI == null) {
            return 1;
        }
        return toVarI.tt;
    }

    public static int sp(ic icVar) {
        to toVarI = i(icVar);
        if (toVarI == null) {
            return 5;
        }
        return Math.max(toVarI.uj, 0);
    }

    public static int tt(ic icVar) {
        to toVarI = i(icVar);
        if (toVarI == null) {
            return 1;
        }
        return toVarI.f13888c;
    }

    public static boolean uj(ic icVar) {
        int i10;
        to toVarI = i(icVar);
        return toVarI != null && toVarI.f13887a && com.byazt.apd.tt.c().c(icVar) && ((i10 = toVarI.f13888c) == 3 || i10 == 4);
    }

    public static boolean ve(ic icVar) {
        to toVarI = i(icVar);
        return toVarI == null || !toVarI.f13887a || toVarI.f13888c == 1;
    }

    public static int x(ic icVar) {
        to toVarI = i(icVar);
        if (toVarI == null) {
            return 10;
        }
        return Math.max(toVarI.f13889n, 3);
    }

    public void c(JSONObject jSONObject) {
        if (this.f13887a) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("reward_live_type", this.f13888c);
                jSONObject2.put("reward_live_style", this.tt);
                jSONObject2.put("reward_live_text", this.ve);
                jSONObject2.put("reward_start_time", this.uj);
                jSONObject2.put("reward_close_time", this.f13889n);
                jSONObject2.put("isValid", this.f13887a);
                jSONObject.put("reward_live", jSONObject2);
            } catch (JSONException e10) {
                com.byazt.nr.m.c(e10);
            }
        }
    }

    private void tt(int i10) {
        if (i10 != 2 && i10 != 3 && i10 != 4 && i10 != 1) {
            i10 = 1;
        }
        this.f13888c = i10;
    }

    private void uj(int i10) {
        if (i10 <= 3) {
            i10 = 3;
        }
        this.f13889n = i10;
    }

    private void ve(int i10) {
        if (i10 != 1 && i10 != 2 && i10 != 3) {
            i10 = 1;
        }
        this.tt = i10;
    }

    public static boolean c(ic icVar) {
        to toVarI = i(icVar);
        if (toVarI == null) {
            return false;
        }
        return toVarI.f13887a;
    }

    public boolean c() {
        return this.f13887a;
    }

    private void c(String str) {
        if (TextUtils.isEmpty(str)) {
            str = this.tt == 3 ? "5s后将为你自动打开抖音\n在抖音观看直播\n可提前5s获得奖励哦" : "去抖音观看直播\n可提前5s获得奖励哦";
        }
        this.ve = str;
    }

    public void c(int i10) {
        this.uj = i10;
    }
}
