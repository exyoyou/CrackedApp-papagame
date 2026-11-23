package com.byazt.ete;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 517})
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList<g> f13790a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13791c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f13792n;
    public String tt;
    public String uj;
    public String ve;

    public l(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        this.f13791c = 0;
        this.ve = "再看一个获取";
        this.uj = "更多奖励";
        this.f13790a = new ArrayList<>();
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("play_again")) == null) {
            return;
        }
        this.f13791c = jSONObjectOptJSONObject.optInt("again_type", 0);
        this.ve = jSONObjectOptJSONObject.optString("entrance_prefix", "再看一个获取");
        this.uj = jSONObjectOptJSONObject.optString("entrance_suffix", "更多奖励");
        this.tt = jSONObjectOptJSONObject.optString("pre_sessions");
        this.f13792n = jSONObjectOptJSONObject.optString("play_again_rit");
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("again_dialog_config");
        if (jSONArrayOptJSONArray != null) {
            this.f13790a = new ArrayList<>();
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject2 != null) {
                    this.f13790a.add(new g(jSONObjectOptJSONObject2));
                }
            }
        }
    }

    private static l a(ic icVar) {
        if (icVar == null) {
            return null;
        }
        return icVar.ef();
    }

    public static ArrayList<g> n(ic icVar) {
        l lVarA = a(icVar);
        return lVarA != null ? lVarA.f13790a : new ArrayList<>();
    }

    public static boolean tt(ic icVar) {
        l lVarA = a(icVar);
        if (lVarA == null) {
            return false;
        }
        int i10 = lVarA.f13791c;
        return (i10 == 1 || i10 == 3) && c(icVar);
    }

    public static String uj(ic icVar) {
        l lVarA = a(icVar);
        if (lVarA == null) {
            return null;
        }
        return lVarA.f13792n;
    }

    public static String ve(ic icVar) {
        l lVarA = a(icVar);
        if (lVarA == null) {
            return null;
        }
        return lVarA.tt;
    }

    public void c(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("again_type", this.f13791c);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
        try {
            jSONObject2.put("entrance_prefix", this.ve);
        } catch (JSONException e11) {
            com.byazt.nr.m.c(e11);
        }
        try {
            jSONObject2.put("entrance_suffix", this.uj);
        } catch (JSONException e12) {
            com.byazt.nr.m.c(e12);
        }
        try {
            jSONObject2.put("pre_sessions", this.tt);
        } catch (JSONException e13) {
            com.byazt.nr.m.c(e13);
        }
        try {
            jSONObject2.put("play_again_rit", this.f13792n);
        } catch (JSONException e14) {
            com.byazt.nr.m.c(e14);
        }
        try {
            JSONArray jSONArray = new JSONArray();
            ArrayList<g> arrayList = this.f13790a;
            if (arrayList != null && arrayList.size() != 0) {
                Iterator<g> it2 = this.f13790a.iterator();
                while (it2.hasNext()) {
                    jSONArray.put(it2.next().c());
                }
            }
            jSONObject2.put("again_dialog_config", jSONArray);
            try {
                jSONObject.put("play_again", jSONObject2);
            } catch (JSONException e15) {
                com.byazt.nr.m.c(e15);
            }
        } catch (JSONException e16) {
            throw new RuntimeException(e16);
        }
    }

    public static String tt(String str) {
        return str + "custom_again";
    }

    public static boolean c(ic icVar) {
        l lVarA = a(icVar);
        if (lVarA == null || lt.c(icVar)) {
            return false;
        }
        int i10 = lVarA.f13791c;
        return (i10 == 1 || i10 == 2 || i10 == 3) && !TextUtils.isEmpty(lVarA.tt);
    }

    public static String c(String str) {
        return str + "again";
    }

    public static String c(ic icVar, String str, String str2) {
        l lVarA = a(icVar);
        if (lVarA == null) {
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                return "再看一个获取更多奖励";
            }
            return "再看一个获取" + str2 + str;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(TextUtils.isEmpty(lVarA.ve) ? "再看一个获取" : lVarA.ve);
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            sb2.append(TextUtils.isEmpty(lVarA.uj) ? "更多奖励" : lVarA.uj);
        } else {
            sb2.append(str2);
            sb2.append(str);
        }
        return sb2.toString();
    }
}
