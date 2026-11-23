package com.kuaishou.weapon.p0;

import org.json.JSONArray;

/* JADX INFO: loaded from: classes3.dex */
public class dh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f74750a = "bGlidmErKw==";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f74751b = "WnBvc2VkQnJpZGdlLmphcg==";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f74752c = "bGlienBvc2VkX2FydC5zbw==";

    public static Integer a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        try {
            if (jSONArray.length() <= 0) {
                return null;
            }
            String str = new String(c.a(f74751b.getBytes(), 2));
            byte[] bArrA = c.a(f74752c.getBytes(), 2);
            return (bArrA == null || !a(jSONArray, str, new String(bArrA))) ? null : 1;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Integer b(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        try {
            if (jSONArray.length() <= 0) {
                return null;
            }
            String str = new String(c.a(f74750a.getBytes(), 2));
            return (str.length() <= 1 || !a(jSONArray, str)) ? null : 1;
        } catch (Exception unused) {
            return null;
        }
    }

    private static boolean a(JSONArray jSONArray, String str, String str2) {
        try {
            if (jSONArray.length() > 0) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    String str3 = (String) jSONArray.get(i10);
                    if (str3.contains(str) || str3.contains(str2)) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private static boolean a(JSONArray jSONArray, String str) {
        try {
            if (jSONArray.length() > 0) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    if (((String) jSONArray.get(i10)).contains(str)) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
