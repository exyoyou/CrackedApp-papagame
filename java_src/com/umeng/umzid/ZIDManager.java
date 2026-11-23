package com.umeng.umzid;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.byazt.bv.BaseConstants;
import com.coremedia.iso.boxes.k1;
import com.haima.hmcp.utils.HmIMEManager;
import com.kuaishou.weapon.p0.t;
import com.swift.sandhook.annotation.MethodReflectParams;
import com.umeng.analytics.pro.bm;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.util.Calendar;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class ZIDManager {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static ZIDManager f85690d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f85691a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f85692b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f85693c;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f85694a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ IZIDCompletionCallback f85695b;

        public a(Context context, IZIDCompletionCallback iZIDCompletionCallback) {
            this.f85694a = context;
            this.f85695b = iZIDCompletionCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            String strA = ZIDManager.a(ZIDManager.this, this.f85694a);
            if (TextUtils.isEmpty(strA)) {
                IZIDCompletionCallback iZIDCompletionCallback = this.f85695b;
                if (iZIDCompletionCallback != null) {
                    iZIDCompletionCallback.onFailure(HmIMEManager.ERROR_CODE_NOT_SUPPORT, "获取zid失败");
                    return;
                }
                return;
            }
            IZIDCompletionCallback iZIDCompletionCallback2 = this.f85695b;
            if (iZIDCompletionCallback2 != null) {
                iZIDCompletionCallback2.onSuccess(strA);
            }
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f85697a;

        public b(Context context) {
            this.f85697a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            ZIDManager.this.b(this.f85697a);
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f85699a;

        public c(Context context) {
            this.f85699a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            ZIDManager.a(ZIDManager.this, this.f85699a);
        }
    }

    public static void configureDomain(Context context, String str) {
        SharedPreferences sharedPreferencesA;
        SharedPreferences.Editor editorEdit;
        String strB = d.b(str);
        if (context == null || strB == null || TextUtils.isEmpty(strB) || (sharedPreferencesA = com.umeng.umzid.a.a(context)) == null || (editorEdit = sharedPreferencesA.edit()) == null) {
            return;
        }
        editorEdit.putString("inputDomain", strB).commit();
    }

    public static synchronized ZIDManager getInstance() {
        if (f85690d == null) {
            f85690d = new ZIDManager();
        }
        return f85690d;
    }

    public static String getSDKVersion() {
        return "1.8.2";
    }

    public final void a(Context context) {
        Object objInvoke;
        Method declaredMethod;
        try {
            Class<?> cls = Class.forName("com.uyumao.sdk.UYMManager");
            Method declaredMethod2 = cls.getDeclaredMethod("getInstance", new Class[0]);
            if (declaredMethod2 == null || (objInvoke = declaredMethod2.invoke(cls, new Object[0])) == null || (declaredMethod = cls.getDeclaredMethod("init", Context.class)) == null) {
                return;
            }
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(objInvoke, context);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0045  */
    /* JADX WARN: Code duplicated, block: B:29:0x006d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0095  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c9 A[Catch: all -> 0x0172, TRY_LEAVE, TryCatch #1 {all -> 0x0172, blocks: (B:18:0x0038, B:20:0x003e, B:22:0x0046, B:24:0x0056, B:26:0x005c, B:28:0x0068, B:30:0x006e, B:32:0x007e, B:34:0x0084, B:36:0x0090, B:38:0x0096, B:41:0x00b9, B:43:0x00bf, B:44:0x00c3, B:46:0x00c9, B:61:0x00f9, B:62:0x00fe, B:66:0x010b, B:68:0x012a, B:70:0x013f, B:72:0x0152, B:73:0x0155, B:75:0x015f, B:76:0x0162, B:78:0x016c, B:79:0x016f, B:59:0x00f4), top: B:85:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00f9 A[Catch: all -> 0x0172, TryCatch #1 {all -> 0x0172, blocks: (B:18:0x0038, B:20:0x003e, B:22:0x0046, B:24:0x0056, B:26:0x005c, B:28:0x0068, B:30:0x006e, B:32:0x007e, B:34:0x0084, B:36:0x0090, B:38:0x0096, B:41:0x00b9, B:43:0x00bf, B:44:0x00c3, B:46:0x00c9, B:61:0x00f9, B:62:0x00fe, B:66:0x010b, B:68:0x012a, B:70:0x013f, B:72:0x0152, B:73:0x0155, B:75:0x015f, B:76:0x0162, B:78:0x016c, B:79:0x016f, B:59:0x00f4), top: B:85:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0109  */
    /* JADX WARN: Code duplicated, block: B:68:0x012a A[Catch: all -> 0x0172, TryCatch #1 {all -> 0x0172, blocks: (B:18:0x0038, B:20:0x003e, B:22:0x0046, B:24:0x0056, B:26:0x005c, B:28:0x0068, B:30:0x006e, B:32:0x007e, B:34:0x0084, B:36:0x0090, B:38:0x0096, B:41:0x00b9, B:43:0x00bf, B:44:0x00c3, B:46:0x00c9, B:61:0x00f9, B:62:0x00fe, B:66:0x010b, B:68:0x012a, B:70:0x013f, B:72:0x0152, B:73:0x0155, B:75:0x015f, B:76:0x0162, B:78:0x016c, B:79:0x016f, B:59:0x00f4), top: B:85:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x013f A[Catch: all -> 0x0172, TryCatch #1 {all -> 0x0172, blocks: (B:18:0x0038, B:20:0x003e, B:22:0x0046, B:24:0x0056, B:26:0x005c, B:28:0x0068, B:30:0x006e, B:32:0x007e, B:34:0x0084, B:36:0x0090, B:38:0x0096, B:41:0x00b9, B:43:0x00bf, B:44:0x00c3, B:46:0x00c9, B:61:0x00f9, B:62:0x00fe, B:66:0x010b, B:68:0x012a, B:70:0x013f, B:72:0x0152, B:73:0x0155, B:75:0x015f, B:76:0x0162, B:78:0x016c, B:79:0x016f, B:59:0x00f4), top: B:85:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0152 A[Catch: all -> 0x0172, TryCatch #1 {all -> 0x0172, blocks: (B:18:0x0038, B:20:0x003e, B:22:0x0046, B:24:0x0056, B:26:0x005c, B:28:0x0068, B:30:0x006e, B:32:0x007e, B:34:0x0084, B:36:0x0090, B:38:0x0096, B:41:0x00b9, B:43:0x00bf, B:44:0x00c3, B:46:0x00c9, B:61:0x00f9, B:62:0x00fe, B:66:0x010b, B:68:0x012a, B:70:0x013f, B:72:0x0152, B:73:0x0155, B:75:0x015f, B:76:0x0162, B:78:0x016c, B:79:0x016f, B:59:0x00f4), top: B:85:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x015f A[Catch: all -> 0x0172, TryCatch #1 {all -> 0x0172, blocks: (B:18:0x0038, B:20:0x003e, B:22:0x0046, B:24:0x0056, B:26:0x005c, B:28:0x0068, B:30:0x006e, B:32:0x007e, B:34:0x0084, B:36:0x0090, B:38:0x0096, B:41:0x00b9, B:43:0x00bf, B:44:0x00c3, B:46:0x00c9, B:61:0x00f9, B:62:0x00fe, B:66:0x010b, B:68:0x012a, B:70:0x013f, B:72:0x0152, B:73:0x0155, B:75:0x015f, B:76:0x0162, B:78:0x016c, B:79:0x016f, B:59:0x00f4), top: B:85:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x016c A[Catch: all -> 0x0172, TryCatch #1 {all -> 0x0172, blocks: (B:18:0x0038, B:20:0x003e, B:22:0x0046, B:24:0x0056, B:26:0x005c, B:28:0x0068, B:30:0x006e, B:32:0x007e, B:34:0x0084, B:36:0x0090, B:38:0x0096, B:41:0x00b9, B:43:0x00bf, B:44:0x00c3, B:46:0x00c9, B:61:0x00f9, B:62:0x00fe, B:66:0x010b, B:68:0x012a, B:70:0x013f, B:72:0x0152, B:73:0x0155, B:75:0x015f, B:76:0x0162, B:78:0x016c, B:79:0x016f, B:59:0x00f4), top: B:85:0x0038 }] */
    public final String b(Context context) {
        boolean z10;
        Object string;
        String id2;
        String string2;
        String strF;
        String string3;
        String strE;
        Throwable th;
        JSONObject jSONObject;
        String strB;
        String strA;
        JSONObject jSONObject2;
        String strOptString;
        String strOptString2;
        SharedPreferences sharedPreferencesA;
        SharedPreferences sharedPreferencesA2;
        SharedPreferences sharedPreferencesA3;
        try {
            z10 = new JSONObject(d.c(context)).optLong("ets") <= System.currentTimeMillis();
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        String strOptString3 = null;
        if (!z10 || this.f85692b) {
            return null;
        }
        this.f85692b = true;
        JSONObject jSONObject3 = new JSONObject();
        String string4 = "";
        if (context != null) {
            try {
                SharedPreferences sharedPreferencesA4 = com.umeng.umzid.a.a(context);
                if (sharedPreferencesA4 != null) {
                    string = sharedPreferencesA4.getString("zdata", null);
                } else {
                    string = "";
                }
                id2 = Spy.getID();
                jSONObject3.put(bm.aH, id2);
                jSONObject3.put("o_z", string);
                if (context != null || (sharedPreferencesA3 = com.umeng.umzid.a.a(context)) == null) {
                    string2 = "";
                } else {
                    string2 = sharedPreferencesA3.getString("oaid", "");
                    if (d.c(string2)) {
                        string2 = d.a(string2);
                    }
                }
                strF = d.f(context);
                jSONObject3.put("o_o", string2);
                jSONObject3.put("o", strF);
                if (context != null || (sharedPreferencesA2 = com.umeng.umzid.a.a(context)) == null) {
                    string3 = "";
                } else {
                    string3 = sharedPreferencesA2.getString("mac", "");
                    if (d.c(string3)) {
                        string3 = d.a(string3);
                    }
                }
                strE = d.e(context);
                jSONObject3.put("mc", strE);
                jSONObject3.put("o_mc", string3);
                a(context, jSONObject3);
                jSONObject3.put("aaid", d.d(context));
                jSONObject3.put("uabc", d.c(context));
                if (context != null && (sharedPreferencesA = com.umeng.umzid.a.a(context)) != null) {
                    string4 = sharedPreferencesA.getString("resetToken", "");
                }
                if (!TextUtils.isEmpty(string4)) {
                    jSONObject3.put("rt", string4);
                }
                try {
                    jSONObject = new JSONObject();
                    try {
                        jSONObject.put("vpn_pxy", d.i(context));
                        jSONObject.put("wifi_pxy", d.j(context));
                        jSONObject.put(MethodReflectParams.DOUBLE, d.g(context));
                    } catch (Throwable th2) {
                        th = th2;
                        th.printStackTrace();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    jSONObject3.put("anti", jSONObject);
                }
                strB = d.b(context);
                if (strB.length() <= 0) {
                    strB = "https://utoken.umeng.com";
                }
                strA = com.umeng.umzid.a.a(strB + "/anti/updateZdata", jSONObject3.toString());
                if (!TextUtils.isEmpty(strA)) {
                    jSONObject2 = new JSONObject(strA);
                    if (Boolean.valueOf(jSONObject2.optBoolean("suc")).booleanValue()) {
                        d.f(context, id2);
                        d.a(context, strE);
                        d.b(context, strF);
                        strOptString3 = jSONObject2.optString("aaid");
                        if (!TextUtils.isEmpty(strOptString3)) {
                            d.e(context, strOptString3);
                        }
                        strOptString = jSONObject2.optString("uabc");
                        if (!TextUtils.isEmpty(strOptString)) {
                            d.d(context, strOptString);
                        }
                        strOptString2 = jSONObject2.optString("resetToken");
                        if (!TextUtils.isEmpty(strOptString2)) {
                            d.c(context, strOptString2);
                        }
                    }
                }
                a(context);
            } catch (Throwable unused) {
            }
        } else {
            string = "";
            id2 = Spy.getID();
            jSONObject3.put(bm.aH, id2);
            jSONObject3.put("o_z", string);
            if (context != null) {
                string2 = "";
            } else {
                string2 = "";
            }
            strF = d.f(context);
            jSONObject3.put("o_o", string2);
            jSONObject3.put("o", strF);
            if (context != null) {
                string3 = "";
            } else {
                string3 = "";
            }
            strE = d.e(context);
            jSONObject3.put("mc", strE);
            jSONObject3.put("o_mc", string3);
            a(context, jSONObject3);
            jSONObject3.put("aaid", d.d(context));
            jSONObject3.put("uabc", d.c(context));
            if (context != null) {
                string4 = sharedPreferencesA.getString("resetToken", "");
            }
            if (!TextUtils.isEmpty(string4)) {
                jSONObject3.put("rt", string4);
            }
            jSONObject = new JSONObject();
            jSONObject.put("vpn_pxy", d.i(context));
            jSONObject.put("wifi_pxy", d.j(context));
            jSONObject.put(MethodReflectParams.DOUBLE, d.g(context));
            if (jSONObject != null) {
                jSONObject3.put("anti", jSONObject);
            }
            strB = d.b(context);
            if (strB.length() <= 0) {
                strB = "https://utoken.umeng.com";
            }
            strA = com.umeng.umzid.a.a(strB + "/anti/updateZdata", jSONObject3.toString());
            if (!TextUtils.isEmpty(strA)) {
                jSONObject2 = new JSONObject(strA);
                if (Boolean.valueOf(jSONObject2.optBoolean("suc")).booleanValue()) {
                    d.f(context, id2);
                    d.a(context, strE);
                    d.b(context, strF);
                    strOptString3 = jSONObject2.optString("aaid");
                    if (!TextUtils.isEmpty(strOptString3)) {
                        d.e(context, strOptString3);
                    }
                    strOptString = jSONObject2.optString("uabc");
                    if (!TextUtils.isEmpty(strOptString)) {
                        d.d(context, strOptString);
                    }
                    strOptString2 = jSONObject2.optString("resetToken");
                    if (!TextUtils.isEmpty(strOptString2)) {
                        d.c(context, strOptString2);
                    }
                }
            }
            a(context);
        }
        this.f85692b = false;
        return strOptString3;
    }

    public synchronized String getZID(Context context) {
        if (context == null) {
            return "";
        }
        Context applicationContext = context.getApplicationContext();
        String strD = d.d(applicationContext);
        if (!TextUtils.isEmpty(strD)) {
            return strD;
        }
        com.umeng.umzid.c.a(new c(applicationContext));
        return "";
    }

    public synchronized void init(Context context, String str, IZIDCompletionCallback iZIDCompletionCallback) {
        SharedPreferences sharedPreferencesA;
        SharedPreferences.Editor editorEdit;
        boolean zH = d.h(context);
        this.f85693c = zH;
        if (zH) {
            if (context == null) {
                if (iZIDCompletionCallback != null) {
                    iZIDCompletionCallback.onFailure(HmIMEManager.ERROR_CODE_NOT_ENABLE, "传入参数Context为null");
                }
                return;
            }
            if (TextUtils.isEmpty(str)) {
                if (iZIDCompletionCallback != null) {
                    iZIDCompletionCallback.onFailure(HmIMEManager.ERROR_CODE_OTHER, "传入参数appkey为空");
                }
                return;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null && str != null && !TextUtils.isEmpty(str) && (sharedPreferencesA = com.umeng.umzid.a.a(applicationContext)) != null && (editorEdit = sharedPreferencesA.edit()) != null) {
                editorEdit.putString("appkey", str).commit();
            }
            String strD = d.d(applicationContext);
            if (strD == null || TextUtils.isEmpty(strD)) {
                com.umeng.umzid.c.a(new a(applicationContext, iZIDCompletionCallback));
            } else {
                com.umeng.umzid.c.a(new b(applicationContext));
                if (iZIDCompletionCallback != null) {
                    iZIDCompletionCallback.onSuccess(strD);
                }
            }
            SharedPreferences sharedPreferencesA2 = com.umeng.umzid.a.a(context);
            if (TextUtils.isEmpty(sharedPreferencesA2 != null ? sharedPreferencesA2.getString(k1.f24950p, "") : "")) {
                String string = "";
                SharedPreferences sharedPreferencesA3 = com.umeng.umzid.a.a(context);
                try {
                    string = UUID.randomUUID().toString();
                } catch (Throwable unused) {
                }
                if (sharedPreferencesA3 != null) {
                    sharedPreferencesA3.edit().putString(k1.f24950p, string).commit();
                }
            }
        }
    }

    public static /* synthetic */ String a(ZIDManager zIDManager, Context context) {
        Throwable th;
        JSONObject jSONObject;
        String strOptString = null;
        if (!zIDManager.f85691a) {
            zIDManager.f85691a = true;
            JSONObject jSONObject2 = new JSONObject();
            try {
                String id2 = Spy.getID();
                jSONObject2.put(bm.aH, id2);
                String strE = d.e(context);
                jSONObject2.put("mc", strE);
                String strF = d.f(context);
                jSONObject2.put("o", strF);
                try {
                    jSONObject = new JSONObject();
                    try {
                        jSONObject.put("vpn_pxy", d.i(context));
                        jSONObject.put("wifi_pxy", d.j(context));
                        jSONObject.put(MethodReflectParams.DOUBLE, d.g(context));
                    } catch (Throwable th2) {
                        th = th2;
                        th.printStackTrace();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    jSONObject2.put("anti", jSONObject);
                }
                zIDManager.a(context, jSONObject2);
                String strB = d.b(context);
                if (strB.length() <= 0) {
                    strB = "https://utoken.umeng.com";
                }
                String strA = com.umeng.umzid.a.a(strB + "/anti/postZdata", jSONObject2.toString());
                if (!TextUtils.isEmpty(strA)) {
                    JSONObject jSONObject3 = new JSONObject(strA);
                    if (Boolean.valueOf(jSONObject3.optBoolean("suc")).booleanValue()) {
                        d.f(context, id2);
                        d.a(context, strE);
                        d.b(context, strF);
                        strOptString = jSONObject3.optString("aaid");
                        if (!TextUtils.isEmpty(strOptString)) {
                            d.e(context, strOptString);
                        }
                        String strOptString2 = jSONObject3.optString("uabc");
                        if (!TextUtils.isEmpty(strOptString2)) {
                            d.d(context, strOptString2);
                        }
                        String strOptString3 = jSONObject3.optString("resetToken");
                        if (!TextUtils.isEmpty(strOptString3)) {
                            d.c(context, strOptString3);
                        }
                    }
                }
                zIDManager.a(context);
            } catch (Throwable th4) {
                try {
                    th4.printStackTrace();
                } finally {
                    zIDManager.f85691a = false;
                }
            }
        }
        return strOptString;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0043 A[Catch: all -> 0x0050, TRY_LEAVE, TryCatch #0 {all -> 0x0050, blocks: (B:9:0x0039, B:10:0x003d, B:12:0x0043), top: B:87:0x0039 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x0050  */
    /* JADX WARN: Code duplicated, block: B:26:0x0088  */
    public final JSONObject a(Context context, JSONObject jSONObject) throws JSONException {
        Locale locale;
        Calendar calendar;
        int rawOffset;
        Object obj;
        String string;
        Object obj2;
        Object objValueOf;
        Object country;
        SharedPreferences sharedPreferencesA;
        Object obj3 = "";
        jSONObject.putOpt("z_v", Spy.getVersion());
        jSONObject.putOpt("a_id", d.a(context));
        jSONObject.putOpt("os_v", Build.VERSION.RELEASE);
        Object string2 = null;
        if (context == null) {
            rawOffset = 8;
        } else {
            try {
                Configuration configuration = new Configuration();
                configuration.setToDefaults();
                Settings.System.getConfiguration(context.getContentResolver(), configuration);
                locale = configuration.locale;
            } catch (Throwable unused) {
                locale = null;
            }
            if (locale == null) {
                try {
                    locale = Locale.getDefault();
                    calendar = Calendar.getInstance(locale);
                    if (calendar != null) {
                        rawOffset = calendar.getTimeZone().getRawOffset() / BaseConstants.Time.HOUR;
                    } else {
                        rawOffset = 8;
                    }
                } catch (Throwable unused2) {
                }
            } else {
                calendar = Calendar.getInstance(locale);
                if (calendar != null) {
                    rawOffset = calendar.getTimeZone().getRawOffset() / BaseConstants.Time.HOUR;
                } else {
                    rawOffset = 8;
                }
            }
        }
        jSONObject.putOpt("tz", Integer.valueOf(rawOffset));
        jSONObject.putOpt(t.f74888m, Build.MODEL);
        try {
            Class<?> cls = Class.forName("com.umeng.commonsdk.statistics.common.DeviceConfig");
            Method declaredMethod = cls.getDeclaredMethod("getImeiNew", Context.class);
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(cls, context);
                if (objInvoke == null || !(objInvoke instanceof String)) {
                    obj = "";
                } else {
                    obj = (String) objInvoke;
                }
            } else {
                obj = "";
            }
        } catch (Throwable unused3) {
        }
        jSONObject.putOpt("im", obj);
        try {
            Method declaredMethod2 = Build.class.getDeclaredMethod("getString", String.class);
            declaredMethod2.setAccessible(true);
            string = declaredMethod2.invoke(null, "net.hostname").toString();
            if (string != null) {
                try {
                    if (!string.equalsIgnoreCase("")) {
                        try {
                            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                            messageDigest.update(string.getBytes());
                            byte[] bArrDigest = messageDigest.digest();
                            StringBuffer stringBuffer = new StringBuffer();
                            for (byte b10 : bArrDigest) {
                                stringBuffer.append(Integer.toHexString(b10 & 255));
                            }
                            string = stringBuffer.toString();
                        } catch (Throwable unused4) {
                            string = "";
                        }
                    }
                } catch (Exception unused5) {
                }
            }
        } catch (Exception unused6) {
            string = null;
        }
        jSONObject.putOpt("hn", string);
        jSONObject.putOpt("s_v", "1.8.2");
        jSONObject.putOpt("pkg", context == null ? null : context.getPackageName());
        jSONObject.putOpt("s_t", "Android");
        SharedPreferences sharedPreferencesA2 = com.umeng.umzid.a.a(context);
        jSONObject.putOpt("uid", sharedPreferencesA2 != null ? sharedPreferencesA2.getString(k1.f24950p, "") : "");
        jSONObject.putOpt("s_id", BaseConstants.CATEGORY_UMENG);
        try {
            obj2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e10) {
            e10.printStackTrace();
            obj2 = null;
        }
        jSONObject.putOpt("a_v", obj2);
        try {
            objValueOf = String.valueOf(context.getPackageManager().getApplicationLabel(context.getApplicationInfo()));
        } catch (Exception e11) {
            e11.printStackTrace();
            objValueOf = null;
        }
        jSONObject.putOpt("a_n", objValueOf);
        try {
            country = context.getResources().getConfiguration().locale.getCountry();
        } catch (Exception e12) {
            e12.printStackTrace();
            country = null;
        }
        jSONObject.putOpt("c", country);
        if (context != null && (sharedPreferencesA = com.umeng.umzid.a.a(context)) != null) {
            string2 = sharedPreferencesA.getString("appkey", null);
        }
        jSONObject.putOpt("ak", string2);
        try {
            Class<?> cls2 = Class.forName("com.umeng.commonsdk.statistics.common.DeviceConfig");
            Method declaredMethod3 = cls2.getDeclaredMethod("getIdfa", Context.class);
            if (declaredMethod3 != null) {
                declaredMethod3.setAccessible(true);
                Object objInvoke2 = declaredMethod3.invoke(cls2, context);
                if (objInvoke2 != null && (objInvoke2 instanceof String)) {
                    obj3 = (String) objInvoke2;
                }
            }
        } catch (Throwable unused7) {
        }
        jSONObject.putOpt("gd", obj3);
        return jSONObject;
    }
}
