package com.byazt.cz;

import android.text.TextUtils;
import com.baidu.mobads.sdk.api.SplashAd;
import com.byazt.ly.uj;
import com.byazt.nr.m;
import com.byazt.px.tt;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 605, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ArrayList<C0287c> f12637c = new ArrayList<>();
    public static final String[] tt;
    public static final ArrayList<String> uj;
    public static final ArrayList<String> ve;

    /* JADX INFO: renamed from: com.byazt.cz.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 605, 44})
    private static class C0287c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f12638c;
        public int tt;
        public String ve;

        public C0287c(String str, int i10, String str2) {
            this.f12638c = str;
            this.tt = i10;
            this.ve = str2;
        }
    }

    static {
        String[] strArr = {"TTTransparentActivity", "openadsdk", "com.byazt.mta", "com.qq", "com.kwad", "baidu", "mbridge", "sigmob", MediationConstant.ADN_UNITY, MediationConstant.ADN_KLEVIN};
        tt = strArr;
        ve = new ArrayList<>(Arrays.asList(strArr));
        uj = new ArrayList<>();
    }

    public static boolean c(String str, int i10, int i11) {
        ArrayList<C0287c> arrayList = f12637c;
        if (arrayList.size() <= 0) {
            return TextUtils.equals("baidu", str);
        }
        for (C0287c c0287c : arrayList) {
            if (c0287c != null && TextUtils.equals(c0287c.f12638c, str) && i11 == c0287c.tt) {
                String str2 = c0287c.ve;
                uj ujVarC = tt.c().c(str);
                String networkSdkVersion = ujVarC != null ? ujVarC.getNetworkSdkVersion() : null;
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(networkSdkVersion)) {
                    if (str2.startsWith(SimpleComparison.LESS_THAN_EQUAL_TO_OPERATION)) {
                        return c(networkSdkVersion, str2);
                    }
                    if (str2.startsWith(SimpleComparison.GREATER_THAN_EQUAL_TO_OPERATION)) {
                        return tt(networkSdkVersion, str2);
                    }
                }
            }
        }
        return false;
    }

    private static boolean tt(String str, String str2) {
        return ve(str, str2) >= 0;
    }

    private static int ve(String str, String str2) {
        String strSubstring = str2.substring(2);
        if (str.startsWith("v") || str.startsWith("V")) {
            str = str.substring(1);
        }
        return str.compareTo(strSubstring);
    }

    public static boolean tt(String str) {
        com.byazt.eu.tt.tt(MediationConstant.TAG, "--==--- activityStr: ".concat(String.valueOf(str)));
        Iterator<String> it2 = ve.iterator();
        while (it2.hasNext()) {
            if (str.contains(it2.next())) {
                return ve(str);
            }
        }
        return false;
    }

    private static boolean ve(String str) {
        ArrayList<String> arrayList = uj;
        if (arrayList.size() == 0) {
            return true;
        }
        Iterator<String> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (str.contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    private static boolean c(String str, String str2) {
        return ve(str, str2) <= 0;
    }

    public static void c(String str) {
        ArrayList<String> arrayList;
        List listAsList;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            try {
                JSONObject jSONObject = new JSONObject(str);
                ve.clear();
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("act_str");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                        String strOptString = jSONArrayOptJSONArray.optString(i10);
                        if (!TextUtils.isEmpty(strOptString)) {
                            ve.add(strOptString);
                        }
                    }
                }
                uj.clear();
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("not_act_str");
                if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                    for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                        String strOptString2 = jSONArrayOptJSONArray2.optString(i11);
                        if (!TextUtils.isEmpty(strOptString2)) {
                            uj.add(strOptString2);
                        }
                    }
                }
                f12637c.clear();
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("not_support");
                if (jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() > 0) {
                    for (int i12 = 0; i12 < jSONArrayOptJSONArray3.length(); i12++) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray3.optJSONObject(i12);
                        if (jSONObjectOptJSONObject != null) {
                            f12637c.add(new C0287c(jSONObjectOptJSONObject.optString(SplashAd.KEY_BIDFAIL_ADN), jSONObjectOptJSONObject.optInt("subtype"), jSONObjectOptJSONObject.optString("versions")));
                        }
                    }
                }
                arrayList = ve;
                listAsList = Arrays.asList(tt);
            } catch (JSONException e10) {
                m.c(e10);
                arrayList = ve;
                listAsList = Arrays.asList(tt);
            }
            arrayList.addAll(listAsList);
        } catch (Throwable th) {
            ve.addAll(Arrays.asList(tt));
            throw th;
        }
    }
}
