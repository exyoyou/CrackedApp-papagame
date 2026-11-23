package com.byazt.vx;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 962, 215})
public class yp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f21416a = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f21417c = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f21418n = true;
    public static final Map<Integer, Map<String, List<List<String>>>> sp = new HashMap();
    public static boolean tt = true;
    public static boolean uj = true;
    public static boolean ve = true;

    public static boolean a() {
        if (!ve) {
            return false;
        }
        ve = false;
        return true;
    }

    public static boolean c() {
        return f21416a;
    }

    public static boolean n() {
        if (!tt) {
            return false;
        }
        tt = false;
        return true;
    }

    public static boolean sp() {
        if (!uj) {
            return false;
        }
        uj = false;
        return true;
    }

    public static boolean tt() {
        StackTraceElement[] stackTrace;
        Map<String, List<List<String>>> map;
        List<List<String>> list;
        try {
            stackTrace = Thread.currentThread().getStackTrace();
        } catch (Throwable unused) {
            stackTrace = null;
        }
        if (stackTrace == null || stackTrace.length == 0 || (map = sp.get(7)) == null || (list = map.get(MediationConstant.ADN_PANGLE)) == null || list.size() <= 1) {
            return true;
        }
        return c(stackTrace, list);
    }

    public static boolean uj() {
        if (!f21417c) {
            return false;
        }
        f21417c = false;
        return true;
    }

    public static boolean ve() {
        StackTraceElement[] stackTrace;
        Map<String, List<List<String>>> map;
        List<List<String>> list;
        try {
            stackTrace = Thread.currentThread().getStackTrace();
        } catch (Throwable unused) {
            stackTrace = null;
        }
        if (stackTrace == null || stackTrace.length == 0 || (map = sp.get(8)) == null || (list = map.get(MediationConstant.ADN_PANGLE)) == null || list.size() <= 1) {
            return true;
        }
        return c(stackTrace, list);
    }

    public static boolean x() {
        if (!f21418n) {
            return false;
        }
        f21418n = false;
        return true;
    }

    public static void c(boolean z10) {
        f21416a = z10;
    }

    public static void c(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                Iterator<String> itKeys = jSONObject.keys();
                if (itKeys != null) {
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
                        if (jSONArrayOptJSONArray != null) {
                            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                                JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i10);
                                Integer numValueOf = Integer.valueOf(jSONObject2.optInt("rit_type"));
                                JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("adn_features");
                                if (jSONArrayOptJSONArray2 != null) {
                                    ArrayList arrayList = new ArrayList();
                                    for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                                        JSONArray jSONArray = jSONArrayOptJSONArray2.getJSONArray(i11);
                                        if (jSONArray != null) {
                                            ArrayList arrayList2 = new ArrayList();
                                            for (int i12 = 0; i12 < jSONArray.length(); i12++) {
                                                String string = jSONArray.getString(i12);
                                                if (!TextUtils.isEmpty(string)) {
                                                    arrayList2.add(string);
                                                }
                                            }
                                            arrayList.add(arrayList2);
                                        }
                                    }
                                    if (arrayList.size() > 0) {
                                        HashMap map = new HashMap();
                                        map.put(next, arrayList);
                                        sp.put(numValueOf, map);
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Exception e10) {
                com.byazt.eu.tt.c("TMe", "supervisorFeature error: " + e10.toString());
                com.byazt.nr.m.c(e10);
                return;
            }
        }
        com.byazt.eu.tt.c("TMe", "--==-- adn features:" + sp);
    }

    private static boolean c(Object obj, List<List<String>> list) {
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) obj;
        for (List<String> list2 : list) {
            if (list2 != null && list2.size() > 0) {
                for (int i10 = 0; i10 < stackTraceElementArr.length; i10++) {
                    StackTraceElement stackTraceElement = stackTraceElementArr[i10];
                    if (stackTraceElement != null) {
                        String string = stackTraceElement.toString();
                        if (!TextUtils.isEmpty(string) && string.contains(list2.get(0)) && (list2.size() == 1 || c(stackTraceElementArr, i10, list2))) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private static boolean c(Object obj, int i10, List<String> list) {
        int i11;
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) obj;
        for (int i12 = 0; i12 < list.size(); i12++) {
            String str = list.get(i12);
            if (TextUtils.isEmpty(str) || (i11 = i10 + i12) >= stackTraceElementArr.length) {
                return false;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i11];
            if (stackTraceElement != null) {
                String string = stackTraceElement.toString();
                if (TextUtils.isEmpty(string) || !string.contains(str)) {
                    return false;
                }
            }
        }
        return true;
    }
}
