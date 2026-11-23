package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.pro.av;
import com.umeng.analytics.pro.f;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.MLog;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
import org.json.JSONTokener;

/* JADX INFO: loaded from: classes9.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f84208a = 20;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f84209b = "umeng_pcp";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f84210c = "mob";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f84211d = "em";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f84212e = "cp";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f84213f = "pk";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f84214g = "pv";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String[] f84215h = new String[2];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static Object f84216i = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static Map<String, Object> f84217j = new HashMap();

    public static void a(Context context, String str, String str2) {
        String[] strArr = f84215h;
        strArr[0] = str;
        strArr[1] = str2;
        if (context != null) {
            com.umeng.common.b.a(context).a(str, str2);
        }
    }

    public static void b(Context context) {
        String[] strArr = f84215h;
        strArr[0] = null;
        strArr[1] = null;
        if (context != null) {
            com.umeng.common.b.a(context).b();
        }
    }

    public static Map<String, Object> c(Context context) throws JSONException {
        SharedPreferences sharedPreferences = context.getSharedPreferences(f84209b, 0);
        String string = sharedPreferences.getString("cp", "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            String str = new String(av.a(Base64.decode(string, 0), UMConfigure.sAppkey.getBytes()));
            if (str.length() <= 0) {
                return null;
            }
            HashMap map = new HashMap();
            try {
                JSONArray jSONArray = (JSONArray) new JSONTokener(str).nextValue();
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i10);
                    map.put(jSONObject.getString("pk"), jSONObject.get("pv"));
                }
                sharedPreferences.edit().putString("cp", "").apply();
                return map;
            } catch (Throwable unused) {
                return map;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static String[] a(Context context) {
        String[] strArrA;
        if (!TextUtils.isEmpty(f84215h[0]) && !TextUtils.isEmpty(f84215h[1])) {
            return f84215h;
        }
        if (context == null || (strArrA = com.umeng.common.b.a(context).a()) == null) {
            return null;
        }
        String[] strArr = f84215h;
        strArr[0] = strArrA[0];
        strArr[1] = strArrA[1];
        return strArr;
    }

    public static void b(String str) {
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext != null) {
            try {
                SharedPreferences sharedPreferences = appContext.getSharedPreferences(f84209b, 0);
                byte[] bArrA = av.a(str.getBytes(), UMConfigure.sAppkey.getBytes());
                sharedPreferences.edit().putString(f84211d, bArrA.length == 0 ? f.Q : Base64.encodeToString(bArrA, 0)).apply();
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(String str) {
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext != null) {
            try {
                SharedPreferences sharedPreferences = appContext.getSharedPreferences(f84209b, 0);
                byte[] bArrA = av.a(str.getBytes(), UMConfigure.sAppkey.getBytes());
                sharedPreferences.edit().putString(f84210c, bArrA.length == 0 ? f.Q : Base64.encodeToString(bArrA, 0)).apply();
            } catch (Throwable unused) {
            }
        }
    }

    public static String b() {
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext == null) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences = appContext.getSharedPreferences(f84209b, 0);
            String string = sharedPreferences.getString(f84211d, "");
            if (f.Q.equals(string)) {
                sharedPreferences.edit().putString(f84211d, "").apply();
                return "";
            }
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            sharedPreferences.edit().putString(f84211d, "").apply();
            return new String(av.a(Base64.decode(string, 0), UMConfigure.sAppkey.getBytes()));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String a() {
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext == null) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences = appContext.getSharedPreferences(f84209b, 0);
            String string = sharedPreferences.getString(f84210c, "");
            if (f.Q.equals(string)) {
                sharedPreferences.edit().putString(f84210c, "").apply();
                return "";
            }
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            sharedPreferences.edit().putString(f84210c, "").apply();
            return new String(av.a(Base64.decode(string, 0), UMConfigure.sAppkey.getBytes()));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void a(Context context, Map<String, Object> map) {
        if (map != null) {
            JSONStringer jSONStringer = new JSONStringer();
            try {
                synchronized (f84216i) {
                    jSONStringer.array();
                    for (String str : map.keySet()) {
                        jSONStringer.object();
                        jSONStringer.key("pk");
                        jSONStringer.value(str);
                        jSONStringer.key("pv");
                        jSONStringer.value(map.get(str));
                        jSONStringer.endObject();
                    }
                    jSONStringer.endArray();
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences(f84209b, 0);
                sharedPreferences.edit().putString("cp", Base64.encodeToString(av.a(jSONStringer.toString().getBytes(), UMConfigure.sAppkey.getBytes()), 0)).apply();
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(String str, Object obj) {
        synchronized (f84216i) {
            if (f84217j.containsKey(str)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "更新账号自定义KV: key=" + str + "; val=" + obj);
                f84217j.put(str, obj);
                a(UMGlobalContext.getAppContext(), f84217j);
            } else {
                if (f84217j.size() >= 20) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "设置账号自定义KV: 已经设置20个KV键值对，忽略设置请求。");
                    MLog.e("userProfile: Only 20 user-defined key-value pairs can be configured, please check!");
                    return;
                }
                UMRTLog.i(UMRTLog.RTLOG_TAG, "设置账号自定义KV: key=" + str + "; val=" + obj);
                f84217j.put(str, obj);
                a(UMGlobalContext.getAppContext(), f84217j);
            }
        }
    }
}
