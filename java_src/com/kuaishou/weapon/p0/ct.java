package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class ct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f74665a = "appkey";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f74666b = "secretkey";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f74667c = "pver";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f74668d = "sdkver";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f74669e = "ksid";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f74670f = "timestamp";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f74671g = "sign";

    public static String a(Map<String, String> map) {
        String str = "";
        for (Map.Entry<String, String> entry : map.entrySet()) {
            str = str + x.a.f97576d + entry.getKey() + SimpleComparison.EQUAL_TO_OPERATION + entry.getValue();
        }
        return str.substring(1);
    }

    public static JSONObject b(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            a(context, jSONObject);
            jSONObject.put("sdkver", WeaponHI.sKSSdkver);
            jSONObject.put("pluginver", "5.4.3");
            jSONObject.put("device_id", ck.b(context));
            jSONObject.put("iv", "v1");
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject c(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(t.f74876a, br.a(context));
            jSONObject.put("hp", context.getPackageName());
            jSONObject.put("hv", bf.q(context));
            try {
                String strB = h.a(context, "re_po_rt").b(dd.f74732i, bo.f74528e);
                if (TextUtils.isEmpty(strB)) {
                    strB = bo.f74528e;
                }
                jSONObject.put("pver", strB);
            } catch (Exception unused) {
                jSONObject.put("pver", bo.f74528e);
            }
            jSONObject.put("platform", 1);
            jSONObject.put(com.umeng.analytics.pro.f.S, bo.f74530g);
            jSONObject.put("sdkver", WeaponHI.sKSSdkver);
            jSONObject.put("pluginver", "5.4.3");
            jSONObject.put("device_id", ck.b(context));
            jSONObject.put("iv", "v1");
            return jSONObject;
        } catch (Exception unused2) {
            return null;
        }
    }

    private static Map d(Context context) {
        try {
            String str = WeaponHI.sKSAppkey;
            String str2 = WeaponHI.sKSSecKey;
            HashMap map = new HashMap();
            map.put(f74665a, str);
            map.put(f74666b, str2);
            map.put(f74670f, String.valueOf(System.currentTimeMillis() / 1000));
            map.put(f74671g, b(map));
            return map;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String a(Context context) {
        Map mapD = d(context);
        if (mapD == null || mapD.size() <= 0) {
            return null;
        }
        String str = "";
        for (Map.Entry entry : mapD.entrySet()) {
            str = str + x.a.f97576d + ((String) entry.getKey()) + SimpleComparison.EQUAL_TO_OPERATION + ((String) entry.getValue());
        }
        return str.substring(1);
    }

    private static String b(Map map) {
        StringBuilder sb2 = new StringBuilder();
        try {
            sb2.append(map.get(f74665a));
            sb2.append(map.get(f74666b));
            sb2.append(map.get(f74670f));
            return f.a(sb2.toString());
        } catch (Exception unused) {
            return null;
        }
    }

    private static void a(Context context, JSONObject jSONObject) {
        try {
            jSONObject.put(t.f74876a, br.a(context));
            jSONObject.put("hp", context.getPackageName());
            jSONObject.put("hv", bf.q(context));
            jSONObject.put("dpver", h.a(context, "re_po_rt").b(dd.f74730g, bo.f74528e));
            jSONObject.put("platform", 1);
            jSONObject.put(com.umeng.analytics.pro.f.S, bo.f74530g);
        } catch (Exception unused) {
        }
    }
}
