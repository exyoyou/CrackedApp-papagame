package com.netease.nis.quicklogin.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.mobads.sdk.internal.bn;
import com.coremedia.iso.boxes.k1;
import com.join.mgps.activity.TagGameListActivity_;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.basesdk.crash.BaseJavaCrashHandler;
import com.netease.nis.quicklogin.QuickLogin;
import com.uc.crashsdk.export.LogType;
import com.umeng.analytics.pro.bm;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends BaseJavaCrashHandler {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f76134d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f76135a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f76136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f76137c;

    /* JADX INFO: renamed from: com.netease.nis.quicklogin.utils.b$b, reason: collision with other inner class name */
    private static class C0983b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @SuppressLint({"StaticFieldLeak"})
        private static final b f76138a = new b();
    }

    private String b() {
        return TextUtils.join(",", Build.SUPPORTED_ABIS);
    }

    public static b c() {
        return C0983b.f76138a;
    }

    public void a(String str, Context context) {
        if (f76134d) {
            return;
        }
        this.f76135a = str;
        this.f76136b = a(context);
        this.f76137c = System.currentTimeMillis();
        try {
            super.allowStartUpload(false);
            if (context.getExternalFilesDir("qCrash") != null) {
                super.initialize(context.getExternalFilesDir("qCrash").toString());
            } else {
                super.initialize(context.getFilesDir().toString());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        f76134d = true;
    }

    @Override // com.netease.nis.basesdk.crash.BaseJavaCrashHandler
    protected Map<String, String> buildCrashInfo(String str) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        try {
            jSONObject.put("version", "1.0.1");
            jSONObject.put("appid", "A006669459");
            jSONObject.put("uploadtime", System.currentTimeMillis());
            jSONObject.put("isencoded", 0);
            jSONObject2.put("appname", "网易易盾号码认证SDK");
            jSONObject2.put("version", QuickLogin.SDK_VERSION);
            jSONObject2.put("packagename", "com.netease.nis.quicklogin");
            jSONObject2.put(TagGameListActivity_.TAG_EXTRA, LogType.JAVA_TYPE);
            jSONObject2.put("exceptiontype", "exception");
            jSONObject2.put("crashinfo", str);
            jSONObject3.put("OS", Build.VERSION.CODENAME);
            jSONObject3.put("OSVERSION", Build.VERSION.RELEASE);
            jSONObject3.put("STARTTIME", this.f76137c);
            jSONObject3.put("CRASHTIME", System.currentTimeMillis());
            jSONObject3.put("DEVICEID", this.f76136b);
            jSONObject3.put("FINGERPRINT", Build.FINGERPRINT);
            jSONObject3.put("MANUFACTURER", Build.MANUFACTURER);
            jSONObject3.put("DEVICE", Build.DEVICE);
            jSONObject3.put("MODEL", Build.MODEL);
            jSONObject3.put("CPU_ABI", b());
            jSONObject2.put("machineInfo", jSONObject3.toString());
            jSONObject4.put("UserId", TextUtils.isEmpty(this.f76135a) ? "" : this.f76135a);
            jSONObject2.put("extraInfo", jSONObject4.toString());
        } catch (JSONException e10) {
            Logger.e(e10.getMessage());
        }
        HashMap map = new HashMap();
        map.put("head", jSONObject.toString());
        map.put("data", jSONObject2.toString());
        return map;
    }

    @Override // com.netease.nis.basesdk.crash.BaseJavaCrashHandler
    protected Map<String, String> buildStartInfo() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject.put("version", "1.0.1");
            jSONObject.put("appid", "A006669459");
            jSONObject.put("uploadtime", System.currentTimeMillis());
            jSONObject.put("isencoded", 0);
            jSONObject2.put("appname", "网易易盾号码认证SDK");
            jSONObject2.put("appver", QuickLogin.SDK_VERSION);
            jSONObject2.put("packagename", "com.netease.nis.quicklogin");
            jSONObject2.put("open_udid", this.f76136b);
            jSONObject2.put(bm.f84421x, Build.VERSION.CODENAME);
            jSONObject2.put("osVersion", Build.VERSION.RELEASE);
            jSONObject2.put("device", Build.DEVICE);
            jSONObject2.put(bn.f7597i, Build.MODEL);
        } catch (JSONException e10) {
            Logger.e(e10.getMessage());
        }
        HashMap map = new HashMap();
        map.put("head", jSONObject.toString());
        map.put("data", jSONObject2.toString());
        return map;
    }

    @Override // com.netease.nis.basesdk.crash.BaseJavaCrashHandler
    protected boolean interceptHandleException(Throwable th) {
        String stackTraceString = Log.getStackTraceString(th);
        return (stackTraceString == null || stackTraceString.contains("com.netease.nis.quicklogin.")) ? false : true;
    }

    private b() {
    }

    private String a(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        if (defaultSharedPreferences.contains(k1.f24950p)) {
            return defaultSharedPreferences.getString(k1.f24950p, "");
        }
        String string = UUID.randomUUID().toString();
        defaultSharedPreferences.edit().putString(k1.f24950p, string).apply();
        return string;
    }
}
