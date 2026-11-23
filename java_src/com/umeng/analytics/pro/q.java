package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.process.UMProcessDBHelper;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ReportPolicy;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ABTest;
import com.umeng.commonsdk.statistics.noise.Defcon;
import com.umeng.commonsdk.utils.JSONArraySortUtil;
import com.umeng.commonsdk.utils.UMUtils;
import com.umeng.umcrash.UMCrashUtils;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f84828a = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f84829l = "first_activate_time";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f84830m = "ana_is_f";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f84831n = "thtstart";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f84832o = "dstk_last_time";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f84833p = "dstk_cnt";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f84834q = "gkvc";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f84835r = "ekvc";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f84836t = "-1";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final String f84837x = "com.umeng.umcrash.UMCrashUtils";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static Class<?> f84838y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static Method f84839z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f84840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SharedPreferences f84841c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f84842d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f84843e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f84844f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private JSONArray f84845g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f84846h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f84847i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f84848j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f84849k;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final long f84850s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f84851u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f84852v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Object f84853w;

    public static class a {
        public static final int A = 8209;
        public static final int B = 8210;
        public static final int C = 8211;
        public static final int D = 8212;
        public static final int E = 8213;
        public static final int F = 8214;
        public static final int G = 8215;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f84854a = 4097;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f84855b = 4098;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f84856c = 4099;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f84857d = 4100;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f84858e = 4101;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f84859f = 4102;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final int f84860g = 4103;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final int f84861h = 4104;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final int f84862i = 4105;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final int f84863j = 4106;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final int f84864k = 4352;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final int f84865l = 4353;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final int f84866m = 4354;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static final int f84867n = 4355;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final int f84868o = 4356;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static final int f84869p = 4357;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final int f84870q = 4358;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public static final int f84871r = 8193;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public static final int f84872s = 8194;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public static final int f84873t = 8195;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public static final int f84874u = 8196;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public static final int f84875v = 8197;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public static final int f84876w = 8199;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public static final int f84877x = 8200;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public static final int f84878y = 8201;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public static final int f84879z = 8208;
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final q f84880a = new q();

        private b() {
        }
    }

    static {
        h();
    }

    public static q a(Context context) {
        if (f84828a == null && context != null) {
            f84828a = context.getApplicationContext();
        }
        return b.f84880a;
    }

    private void e(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (2050 == jSONObject.getInt("__t")) {
                if (!a(this.f84849k, this.f84847i)) {
                    return;
                } else {
                    this.f84847i++;
                }
            } else if (2049 == jSONObject.getInt("__t")) {
                if (!a(this.f84849k, this.f84848j)) {
                    return;
                } else {
                    this.f84848j++;
                }
            }
            if (AnalyticsConfig.isRealTimeDebugMode()) {
                if (this.f84845g == null) {
                    this.f84845g = new JSONArray();
                }
                this.f84845g.put(jSONObject);
                k.a(f84828a).a(this.f84845g);
                this.f84845g = new JSONArray();
                return;
            }
            if (this.f84845g.length() >= this.f84844f) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>*** 超过10个事件，事件落库。");
                k.a(f84828a).a(this.f84845g);
                this.f84845g = new JSONArray();
            }
            if (this.f84849k == 0) {
                this.f84849k = System.currentTimeMillis();
            }
            this.f84845g.put(jSONObject);
        } catch (Throwable th) {
            MLog.e(th);
        }
    }

    private void f(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        try {
            if (!jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("header")).has(f.aH)) {
                if (jSONObject.has("content")) {
                    jSONObject = jSONObject.getJSONObject("content");
                }
                if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("analytics")) && (jSONObjectOptJSONObject = jSONObject.optJSONObject(com.umeng.commonsdk.statistics.b.a("analytics"))) != null && jSONObjectOptJSONObject.length() > 0 && jSONObjectOptJSONObject.has(f.f84663n)) {
                    k.a(f84828a).a(true, false);
                }
                k.a(f84828a).b();
                return;
            }
            if (jSONObject.has("content")) {
                jSONObject = jSONObject.getJSONObject("content");
            }
            if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("analytics"))) {
                JSONObject jSONObject2 = jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("analytics"));
                if (jSONObject2.has(f.f84663n) && (jSONObjectOptJSONObject2 = jSONObject2.getJSONArray(f.f84663n).optJSONObject(0)) != null) {
                    String strOptString = jSONObjectOptJSONObject2.optString("id");
                    if (!TextUtils.isEmpty(strOptString)) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> removeAllInstantData: really delete instant session data");
                        k.a(f84828a).b(strOptString);
                    }
                }
            }
            k.a(f84828a).b();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> removeAllInstantData: send INSTANT_SESSION_START_CONTINUE event because OVERSIZE.");
            Context context = f84828a;
            UMWorkDispatch.sendEvent(context, 4353, CoreProtocol.getInstance(context), null);
        } catch (Exception unused) {
        }
    }

    private static void h() {
        try {
            f84838y = UMCrashUtils.class;
            Method declaredMethod = UMCrashUtils.class.getDeclaredMethod("setPuidAndProvider", String.class, String.class);
            if (declaredMethod != null) {
                f84839z = declaredMethod;
            }
        } catch (Throwable unused) {
        }
    }

    private void i() {
        JSONObject jSONObjectB = b(UMEnvelopeBuild.maxDataSpace(f84828a));
        if (jSONObjectB == null || jSONObjectB.length() < 1) {
            return;
        }
        JSONObject jSONObject = (JSONObject) jSONObjectB.opt("header");
        JSONObject jSONObject2 = (JSONObject) jSONObjectB.opt("content");
        if (f84828a == null || jSONObject == null || jSONObject2 == null) {
            return;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> constructInstantMessage: request build envelope.");
        JSONObject jSONObjectBuildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(f84828a, jSONObject, jSONObject2);
        if (jSONObjectBuildEnvelopeWithExtHeader != null) {
            try {
                if (jSONObjectBuildEnvelopeWithExtHeader.has("exception")) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Build envelope error code: " + jSONObjectBuildEnvelopeWithExtHeader.getInt("exception"));
                }
            } catch (Throwable unused) {
            }
            if (UMConfigure.isDebugLog()) {
                e(jSONObjectBuildEnvelopeWithExtHeader);
            }
            b((Object) jSONObjectBuildEnvelopeWithExtHeader);
        }
    }

    private void j() {
        JSONObject jSONObjectBuildEnvelopeWithExtHeader;
        JSONObject jSONObjectA = a(UMEnvelopeBuild.maxDataSpace(f84828a));
        if (jSONObjectA == null || jSONObjectA.length() < 1) {
            return;
        }
        JSONObject jSONObject = (JSONObject) jSONObjectA.opt("header");
        JSONObject jSONObject2 = (JSONObject) jSONObjectA.opt("content");
        Context context = f84828a;
        if (context == null || jSONObject == null || jSONObject2 == null || (jSONObjectBuildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(context, jSONObject, jSONObject2)) == null) {
            return;
        }
        try {
            if (jSONObjectBuildEnvelopeWithExtHeader.has("exception")) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "Build envelope error code: " + jSONObjectBuildEnvelopeWithExtHeader.getInt("exception"));
            }
        } catch (Throwable unused) {
        }
        if (UMConfigure.isDebugLog()) {
            d(jSONObjectBuildEnvelopeWithExtHeader);
        }
        a((Object) jSONObjectBuildEnvelopeWithExtHeader);
    }

    private JSONObject k() {
        JSONObject jSONObjectL = l();
        if (jSONObjectL != null) {
            try {
                jSONObjectL.put("st", "1");
            } catch (Throwable unused) {
            }
        }
        return jSONObjectL;
    }

    private JSONObject l() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (AnalyticsConfig.mWrapperType != null && AnalyticsConfig.mWrapperVersion != null) {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("wrapper_version"), AnalyticsConfig.mWrapperVersion);
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("wrapper_type"), AnalyticsConfig.mWrapperType);
            }
            int verticalType = AnalyticsConfig.getVerticalType(f84828a);
            jSONObject.put(com.umeng.commonsdk.statistics.b.a(f.f84658i), verticalType);
            String str = "9.6.7";
            if (verticalType == 1) {
                String gameSdkVersion = AnalyticsConfig.getGameSdkVersion(f84828a);
                if (!TextUtils.isEmpty(gameSdkVersion)) {
                    str = gameSdkVersion;
                }
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("sdk_version"), str);
            } else {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("sdk_version"), "9.6.7");
            }
            String strMD5 = HelperUtils.MD5(AnalyticsConfig.getSecretKey(f84828a));
            if (!TextUtils.isEmpty(strMD5)) {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("secret"), strMD5);
            }
            String strImprintProperty = UMEnvelopeBuild.imprintProperty(f84828a, "pr_ve", null);
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f84828a);
            String strImprintProperty2 = UMEnvelopeBuild.imprintProperty(f84828a, f.at, "");
            if (!TextUtils.isEmpty(strImprintProperty2)) {
                if (AnalyticsConfig.CLEAR_EKV_BL) {
                    jSONObject.put(com.umeng.commonsdk.statistics.b.a(f.av), "");
                } else {
                    jSONObject.put(com.umeng.commonsdk.statistics.b.a(f.av), strImprintProperty2);
                }
            }
            String strImprintProperty3 = UMEnvelopeBuild.imprintProperty(f84828a, f.au, "");
            if (!TextUtils.isEmpty(strImprintProperty3)) {
                if (AnalyticsConfig.CLEAR_EKV_WL) {
                    jSONObject.put(com.umeng.commonsdk.statistics.b.a(f.aw), "");
                } else {
                    jSONObject.put(com.umeng.commonsdk.statistics.b.a(f.aw), strImprintProperty3);
                }
            }
            jSONObject.put(com.umeng.commonsdk.statistics.b.a(f.an), "1.0.0");
            if (s()) {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a(f.ap), "1");
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putLong(f84830m, 0L).commit();
                }
            }
            jSONObject.put(com.umeng.commonsdk.statistics.b.a(f.f84661l), m());
            jSONObject.put(com.umeng.commonsdk.statistics.b.a(f.f84662m), n());
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString("vers_name", "");
                if (!TextUtils.isEmpty(string)) {
                    String str2 = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    if (TextUtils.isEmpty(strImprintProperty)) {
                        jSONObject.put(com.umeng.commonsdk.statistics.b.a(f.f84661l), sharedPreferences.getString("vers_pre_version", "0"));
                        jSONObject.put(com.umeng.commonsdk.statistics.b.a(f.f84662m), sharedPreferences.getString("vers_date", str2));
                    }
                    sharedPreferences.edit().putString("pre_version", string).putString("cur_version", DeviceConfig.getAppVersionName(f84828a)).putString("pre_date", str2).remove("vers_name").remove("vers_code").remove("vers_date").remove("vers_pre_version").commit();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    private String m() {
        String string = "0";
        String strImprintProperty = null;
        try {
            strImprintProperty = UMEnvelopeBuild.imprintProperty(f84828a, "pr_ve", null);
            if (!TextUtils.isEmpty(strImprintProperty)) {
                string = strImprintProperty;
            } else {
                if (!TextUtils.isEmpty(this.f84842d)) {
                    return this.f84842d;
                }
                if (this.f84841c == null) {
                    this.f84841c = PreferenceWrapper.getDefault(f84828a);
                }
                String string2 = this.f84841c.getString("pre_version", "");
                String appVersionName = DeviceConfig.getAppVersionName(f84828a);
                if (TextUtils.isEmpty(string2)) {
                    this.f84841c.edit().putString("pre_version", "0").putString("cur_version", appVersionName).commit();
                } else {
                    string = this.f84841c.getString("cur_version", "");
                    if (appVersionName.equals(string)) {
                        string = string2;
                    } else {
                        this.f84841c.edit().putString("pre_version", string).putString("cur_version", appVersionName).commit();
                    }
                }
            }
        } catch (Throwable unused) {
        }
        this.f84842d = string;
        return string;
    }

    private String n() {
        String strImprintProperty = null;
        try {
            strImprintProperty = UMEnvelopeBuild.imprintProperty(f84828a, "ud_da", null);
            if (TextUtils.isEmpty(strImprintProperty)) {
                if (!TextUtils.isEmpty(this.f84843e)) {
                    return this.f84843e;
                }
                if (this.f84841c == null) {
                    this.f84841c = PreferenceWrapper.getDefault(f84828a);
                }
                String string = this.f84841c.getString("pre_date", "");
                if (TextUtils.isEmpty(string)) {
                    string = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    this.f84841c.edit().putString("pre_date", string).commit();
                } else {
                    String str = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    if (!string.equals(str)) {
                        this.f84841c.edit().putString("pre_date", str).commit();
                        strImprintProperty = str;
                    }
                }
                strImprintProperty = string;
            }
        } catch (Throwable unused) {
        }
        this.f84843e = strImprintProperty;
        return strImprintProperty;
    }

    private void o() {
        try {
            this.f84847i = 0;
            this.f84848j = 0;
            this.f84849k = System.currentTimeMillis();
            PreferenceWrapper.getDefault(f84828a).edit().putLong(f84832o, System.currentTimeMillis()).putInt(f84833p, 0).commit();
        } catch (Throwable unused) {
        }
    }

    private boolean p() {
        try {
            if (!TextUtils.isEmpty(w.a().b())) {
                b(f84828a);
            }
            if (this.f84845g.length() <= 0) {
                return false;
            }
            for (int i10 = 0; i10 < this.f84845g.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = this.f84845g.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() > 0) {
                    String strOptString = jSONObjectOptJSONObject.optString("__i");
                    if (TextUtils.isEmpty(strOptString) || "-1".equals(strOptString)) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }

    private void q() {
        if (this.f84845g.length() > 0) {
            JSONArray jSONArray = new JSONArray();
            for (int i10 = 0; i10 < this.f84845g.length(); i10++) {
                try {
                    JSONObject jSONObject = this.f84845g.getJSONObject(i10);
                    if (jSONObject == null || jSONObject.length() <= 0) {
                        jSONArray.put(jSONObject);
                    } else {
                        String strOptString = jSONObject.optString("__i");
                        String str = "-1";
                        if (TextUtils.isEmpty(strOptString) || "-1".equals(strOptString)) {
                            String strB = w.a().b();
                            if (!TextUtils.isEmpty(strB)) {
                                str = strB;
                            }
                            jSONObject.put("__i", str);
                        }
                        jSONArray.put(jSONObject);
                    }
                } catch (Throwable unused) {
                }
            }
            this.f84845g = jSONArray;
        }
    }

    private void r() {
        Context context;
        SharedPreferences sharedPreferences;
        try {
            if (!s() || (context = f84828a) == null || (sharedPreferences = PreferenceWrapper.getDefault(context)) == null || sharedPreferences.getLong(f84829l, 0L) != 0) {
                return;
            }
            sharedPreferences.edit().putLong(f84829l, System.currentTimeMillis()).commit();
        } catch (Throwable unused) {
        }
    }

    private boolean s() {
        SharedPreferences sharedPreferences;
        try {
            Context context = f84828a;
            return (context == null || (sharedPreferences = PreferenceWrapper.getDefault(context)) == null || sharedPreferences.getLong(f84830m, -1L) == 0) ? false : true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public void b() {
    }

    public void c() {
        b(f84828a);
        d();
        a(true);
    }

    public void d() {
        try {
            if (this.f84845g.length() > 0) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>*** flushMemoryData: 事件落库。");
                k.a(f84828a).a(this.f84845g);
                this.f84845g = new JSONArray();
            }
            PreferenceWrapper.getDefault(f84828a).edit().putLong(f84831n, this.f84849k).putInt(f84834q, this.f84847i).putInt(f84835r, this.f84848j).commit();
        } catch (Throwable unused) {
        }
    }

    private q() {
        this.f84840b = null;
        this.f84841c = null;
        this.f84842d = null;
        this.f84843e = null;
        this.f84844f = 10;
        this.f84845g = new JSONArray();
        this.f84846h = 5000;
        this.f84847i = 0;
        this.f84848j = 0;
        this.f84849k = 0L;
        this.f84850s = 28800000L;
        this.f84851u = false;
        this.f84852v = false;
        this.f84853w = new Object();
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f84828a);
            this.f84849k = sharedPreferences.getLong(f84831n, 0L);
            this.f84847i = sharedPreferences.getInt(f84834q, 0);
            this.f84848j = sharedPreferences.getInt(f84835r, 0);
            this.f84840b = new c();
        } catch (Throwable unused) {
        }
    }

    private void b(JSONObject jSONObject) {
        JSONObject jSONObjectF;
        if (k.a(UMGlobalContext.getAppContext(f84828a)).c() || (jSONObjectF = k.a(UMGlobalContext.getAppContext(f84828a)).f()) == null) {
            return;
        }
        String strOptString = jSONObjectF.optString("__av");
        String strOptString2 = jSONObjectF.optString("__vc");
        try {
            if (TextUtils.isEmpty(strOptString)) {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("app_version"), UMUtils.getAppVersionName(f84828a));
            } else {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("app_version"), strOptString);
            }
            if (TextUtils.isEmpty(strOptString2)) {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("version_code"), UMUtils.getAppVersionCode(f84828a));
            } else {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("version_code"), strOptString2);
            }
        } catch (Throwable unused) {
        }
    }

    private void g(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        try {
            if (jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("header")).has(f.aH)) {
                if (jSONObject.has("content")) {
                    jSONObject = jSONObject.getJSONObject("content");
                }
                if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("analytics"))) {
                    if (!jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("analytics")).has(f.f84663n)) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> Error, Should not go to this branch.");
                        return;
                    }
                    k.a(f84828a).i();
                    k.a(f84828a).h();
                    k.a(f84828a).b(true, false);
                    k.a(f84828a).a();
                    return;
                }
                return;
            }
            if (jSONObject.has("content")) {
                jSONObject = jSONObject.getJSONObject("content");
            }
            if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("analytics")) && (jSONObjectOptJSONObject = jSONObject.optJSONObject(com.umeng.commonsdk.statistics.b.a("analytics"))) != null && jSONObjectOptJSONObject.length() > 0) {
                if (jSONObjectOptJSONObject.has(f.f84663n)) {
                    k.a(f84828a).b(true, false);
                }
                if (jSONObjectOptJSONObject.has("ekv") || jSONObjectOptJSONObject.has(f.Z)) {
                    k.a(f84828a).h();
                }
                if (jSONObjectOptJSONObject.has("error")) {
                    k.a(f84828a).i();
                }
            }
            k.a(f84828a).a();
        } catch (Exception unused) {
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ReportPolicy.ReportStrategy f84881a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f84882b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f84883c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f84884d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f84885e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private ABTest f84886f;

        public c() {
            this.f84886f = null;
            this.f84886f = ABTest.getService(q.f84828a);
        }

        public void a() {
            try {
                int[] iArrA = a(-1, -1);
                this.f84882b = iArrA[0];
                this.f84883c = iArrA[1];
            } catch (Throwable unused) {
            }
        }

        protected void b() {
            int iA;
            Defcon service = Defcon.getService(q.f84828a);
            if (service.isOpen()) {
                ReportPolicy.ReportStrategy reportStrategy = this.f84881a;
                this.f84881a = (reportStrategy instanceof ReportPolicy.DefconPolicy) && reportStrategy.isValid() ? this.f84881a : new ReportPolicy.DefconPolicy(StatTracer.getInstance(q.f84828a), service);
            } else {
                boolean z10 = Integer.valueOf(UMEnvelopeBuild.imprintProperty(q.f84828a, "integrated_test", "-1")).intValue() == 1;
                if (UMConfigure.isDebugLog() && z10 && !MLog.DEBUG) {
                    UMLog.mutlInfo(l.K, 3, Constants.TIPS_SPECIAL_TAG, null, null);
                }
                if (MLog.DEBUG && z10) {
                    this.f84881a = new ReportPolicy.DebugPolicy(StatTracer.getInstance(q.f84828a));
                } else if (this.f84886f.isInTest() && "RPT".equals(this.f84886f.getTestName())) {
                    if (this.f84886f.getTestPolicy() == 6) {
                        if (Integer.valueOf(UMEnvelopeBuild.imprintProperty(q.f84828a, "test_report_interval", "-1")).intValue() != -1) {
                            iA = a(90000);
                        } else {
                            iA = this.f84883c;
                            if (iA <= 0) {
                                iA = this.f84885e;
                            }
                        }
                    } else {
                        iA = 0;
                    }
                    this.f84881a = b(this.f84886f.getTestPolicy(), iA);
                } else {
                    int i10 = this.f84884d;
                    int i11 = this.f84885e;
                    int i12 = this.f84882b;
                    if (i12 != -1) {
                        i11 = this.f84883c;
                        i10 = i12;
                    }
                    this.f84881a = b(i10, i11);
                }
            }
            if (UMConfigure.isDebugLog()) {
                try {
                    ReportPolicy.ReportStrategy reportStrategy2 = this.f84881a;
                    if (reportStrategy2 instanceof ReportPolicy.ReportAtLaunch) {
                        UMLog.mutlInfo(l.I, 3, "", null, null);
                    } else if (reportStrategy2 instanceof ReportPolicy.ReportByInterval) {
                        UMLog.mutlInfo(l.J, 3, "", new String[]{"@"}, new String[]{String.valueOf(((ReportPolicy.ReportByInterval) reportStrategy2).getReportInterval() / 1000)});
                    } else if (reportStrategy2 instanceof ReportPolicy.DebugPolicy) {
                        UMLog.mutlInfo(l.L, 3, "", null, null);
                    } else if (reportStrategy2 instanceof ReportPolicy.ReportQuasiRealtime) {
                        String strValueOf = String.valueOf(((ReportPolicy.ReportQuasiRealtime) reportStrategy2).getReportInterval() / 1000);
                        UMLog uMLog = UMConfigure.umDebugLog;
                        UMLog.mutlInfo(l.M, 3, "", new String[]{"@"}, new String[]{strValueOf});
                    } else {
                        boolean z11 = reportStrategy2 instanceof ReportPolicy.DefconPolicy;
                    }
                } catch (Throwable unused) {
                }
            }
        }

        public ReportPolicy.ReportStrategy c() {
            b();
            return this.f84881a;
        }

        public int[] a(int i10, int i11) {
            int iIntValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(q.f84828a, "report_policy", "-1")).intValue();
            int iIntValue2 = Integer.valueOf(UMEnvelopeBuild.imprintProperty(q.f84828a, "report_interval", "-1")).intValue();
            if (iIntValue == -1 || !ReportPolicy.isValid(iIntValue)) {
                return new int[]{i10, i11};
            }
            if (6 == iIntValue) {
                if (iIntValue2 == -1 || iIntValue2 < 90 || iIntValue2 > 86400) {
                    iIntValue2 = 90;
                }
                return new int[]{iIntValue, iIntValue2 * 1000};
            }
            if (11 == iIntValue) {
                if (iIntValue2 == -1 || iIntValue2 < 15 || iIntValue2 > 3600) {
                    iIntValue2 = 15;
                }
                return new int[]{iIntValue, iIntValue2 * 1000};
            }
            return new int[]{i10, i11};
        }

        public int a(int i10) {
            int iIntValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(q.f84828a, "test_report_interval", "-1")).intValue();
            return (iIntValue == -1 || iIntValue < 90 || iIntValue > 86400) ? i10 : iIntValue * 1000;
        }

        private ReportPolicy.ReportStrategy b(int i10, int i11) {
            if (i10 == 0) {
                ReportPolicy.ReportStrategy reportStrategy = this.f84881a;
                return reportStrategy instanceof ReportPolicy.ReportRealtime ? reportStrategy : new ReportPolicy.ReportRealtime();
            }
            if (i10 == 1) {
                ReportPolicy.ReportStrategy reportStrategy2 = this.f84881a;
                return reportStrategy2 instanceof ReportPolicy.ReportAtLaunch ? reportStrategy2 : new ReportPolicy.ReportAtLaunch();
            }
            if (i10 == 4) {
                ReportPolicy.ReportStrategy reportStrategy3 = this.f84881a;
                return reportStrategy3 instanceof ReportPolicy.ReportDaily ? reportStrategy3 : new ReportPolicy.ReportDaily(StatTracer.getInstance(q.f84828a));
            }
            if (i10 == 5) {
                ReportPolicy.ReportStrategy reportStrategy4 = this.f84881a;
                return reportStrategy4 instanceof ReportPolicy.ReportWifiOnly ? reportStrategy4 : new ReportPolicy.ReportWifiOnly(q.f84828a);
            }
            if (i10 == 6) {
                ReportPolicy.ReportStrategy reportStrategy5 = this.f84881a;
                if (reportStrategy5 instanceof ReportPolicy.ReportByInterval) {
                    ((ReportPolicy.ReportByInterval) reportStrategy5).setReportInterval(i11);
                    return reportStrategy5;
                }
                return new ReportPolicy.ReportByInterval(StatTracer.getInstance(q.f84828a), i11);
            }
            if (i10 == 8) {
                ReportPolicy.ReportStrategy reportStrategy6 = this.f84881a;
                return reportStrategy6 instanceof ReportPolicy.SmartPolicy ? reportStrategy6 : new ReportPolicy.SmartPolicy(StatTracer.getInstance(q.f84828a));
            }
            if (i10 != 11) {
                ReportPolicy.ReportStrategy reportStrategy7 = this.f84881a;
                return reportStrategy7 instanceof ReportPolicy.ReportAtLaunch ? reportStrategy7 : new ReportPolicy.ReportAtLaunch();
            }
            ReportPolicy.ReportStrategy reportStrategy8 = this.f84881a;
            if (reportStrategy8 instanceof ReportPolicy.ReportQuasiRealtime) {
                ((ReportPolicy.ReportQuasiRealtime) reportStrategy8).setReportInterval(i11);
                return reportStrategy8;
            }
            ReportPolicy.ReportQuasiRealtime reportQuasiRealtime = new ReportPolicy.ReportQuasiRealtime();
            reportQuasiRealtime.setReportInterval(i11);
            return reportQuasiRealtime;
        }
    }

    private void c(JSONObject jSONObject) {
        try {
            if (!k.a(f84828a).e()) {
                JSONObject jSONObjectG = k.a(f84828a).g();
                if (jSONObjectG != null) {
                    String strOptString = jSONObjectG.optString("__av");
                    String strOptString2 = jSONObjectG.optString("__vc");
                    if (TextUtils.isEmpty(strOptString)) {
                        jSONObject.put(com.umeng.commonsdk.statistics.b.a("app_version"), UMUtils.getAppVersionName(f84828a));
                    } else {
                        jSONObject.put(com.umeng.commonsdk.statistics.b.a("app_version"), strOptString);
                    }
                    if (TextUtils.isEmpty(strOptString2)) {
                        jSONObject.put(com.umeng.commonsdk.statistics.b.a("version_code"), UMUtils.getAppVersionCode(f84828a));
                        return;
                    } else {
                        jSONObject.put(com.umeng.commonsdk.statistics.b.a("version_code"), strOptString2);
                        return;
                    }
                }
                return;
            }
            jSONObject.put(com.umeng.commonsdk.statistics.b.a("app_version"), UMUtils.getAppVersionName(f84828a));
            jSONObject.put(com.umeng.commonsdk.statistics.b.a("version_code"), UMUtils.getAppVersionCode(f84828a));
        } catch (Throwable unused) {
        }
    }

    public void a() {
        if (f84828a != null) {
            synchronized (this.f84853w) {
                if (this.f84851u) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> network is now available, rebuild instant session data packet.");
                    Context context = f84828a;
                    UMWorkDispatch.sendEvent(context, 4353, CoreProtocol.getInstance(context), null);
                }
            }
            synchronized (this.f84853w) {
                if (this.f84852v) {
                    Context context2 = f84828a;
                    UMWorkDispatch.sendEvent(context2, 4354, CoreProtocol.getInstance(context2), null);
                }
            }
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Map<String, Object> f84887a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f84888b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f84889c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f84890d;

        private d() {
            this.f84887a = null;
            this.f84888b = null;
            this.f84889c = null;
            this.f84890d = 0L;
        }

        public Map<String, Object> a() {
            return this.f84887a;
        }

        public String b() {
            return this.f84889c;
        }

        public String c() {
            return this.f84888b;
        }

        public long d() {
            return this.f84890d;
        }

        public d(String str, Map<String, Object> map, String str2, long j10) {
            this.f84887a = map;
            this.f84888b = str;
            this.f84890d = j10;
            this.f84889c = str2;
        }
    }

    private void h(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject == null || jSONObject.length() <= 0 || !jSONObject.has("__ii")) {
                return;
            }
            String strOptString = jSONObject.optString("__ii");
            jSONObject.remove("__ii");
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            k.a(f84828a).a(strOptString, obj.toString(), 2);
        } catch (Throwable unused) {
        }
    }

    private void d(JSONObject jSONObject) {
        JSONObject jSONObject2;
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.length() <= 0) {
                return;
            }
            JSONObject jSONObject3 = new JSONObject();
            if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("analytics"))) {
                JSONObject jSONObject4 = jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("analytics"));
                if (jSONObject4.has("ekv")) {
                    jSONObject3.put("ekv", jSONObject4.getJSONArray("ekv"));
                    if (jSONObject3.length() > 0) {
                        if (AnalyticsConfig.isRealTimeDebugMode()) {
                            MLog.d("[埋点验证模式]事件:" + jSONObject3.toString());
                        } else {
                            MLog.d("事件:" + jSONObject3.toString());
                        }
                        jSONObject3 = new JSONObject();
                    }
                }
                if (jSONObject4.has(f.Z)) {
                    jSONObject3.put(f.Z, jSONObject4.getJSONArray(f.Z));
                    if (jSONObject3.length() > 0) {
                        if (AnalyticsConfig.isRealTimeDebugMode()) {
                            MLog.d("[埋点验证模式]游戏事件:" + jSONObject3.toString());
                        } else {
                            MLog.d("游戏事件:" + jSONObject3.toString());
                        }
                        jSONObject3 = new JSONObject();
                    }
                }
                if (jSONObject4.has("error")) {
                    jSONObject3.put("error", jSONObject4.getJSONArray("error"));
                    if (jSONObject3.length() > 0) {
                        if (AnalyticsConfig.isRealTimeDebugMode()) {
                            MLog.d("[埋点验证模式]错误:" + jSONObject3.toString());
                        } else {
                            MLog.d("错误:" + jSONObject3.toString());
                        }
                        jSONObject3 = new JSONObject();
                    }
                }
                if (jSONObject4.has(f.f84663n)) {
                    JSONArray jSONArray = jSONObject4.getJSONArray(f.f84663n);
                    JSONArray jSONArray2 = new JSONArray();
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        JSONObject jSONObject5 = jSONArray.getJSONObject(i10);
                        if (jSONObject5 != null && jSONObject5.length() > 0) {
                            if (jSONObject5.has(f.f84670u)) {
                                jSONObject5.remove(f.f84670u);
                            }
                            jSONArray2.put(jSONObject5);
                        }
                    }
                    jSONObject3.put(f.f84663n, jSONArray2);
                    if (jSONObject3.length() > 0) {
                        if (AnalyticsConfig.isRealTimeDebugMode()) {
                            MLog.d("[埋点验证模式]会话:" + jSONObject3.toString());
                        } else {
                            MLog.d("会话:" + jSONObject3.toString());
                        }
                        jSONObject3 = new JSONObject();
                    }
                }
                if (jSONObject4.has(f.I)) {
                    jSONObject3.put(f.I, jSONObject4.getJSONObject(f.I));
                }
                if (jSONObject4.has(f.L)) {
                    jSONObject3.put(f.L, jSONObject4.getJSONObject(f.L));
                    if (jSONObject3.length() > 0) {
                        if (AnalyticsConfig.isRealTimeDebugMode()) {
                            MLog.d("[埋点验证模式]账号:" + jSONObject3.toString());
                        } else {
                            MLog.d("账号:" + jSONObject3.toString());
                        }
                        jSONObject3 = new JSONObject();
                    }
                }
            }
            if (jSONObject.has("dplus")) {
                jSONObject3.put("dplus", jSONObject.getJSONObject("dplus"));
            }
            if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("header")) && (jSONObject2 = jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("header"))) != null && jSONObject2.length() > 0) {
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("sdk_version"))) {
                    jSONObject3.put("sdk_version", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("sdk_version")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("device_id"))) {
                    jSONObject3.put("device_id", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("device_id")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("device_model"))) {
                    jSONObject3.put("device_model", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("device_model")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("version_code"))) {
                    jSONObject3.put("version", jSONObject2.getInt(com.umeng.commonsdk.statistics.b.a("version_code")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("appkey"))) {
                    jSONObject3.put("appkey", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("appkey")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("channel"))) {
                    jSONObject3.put("channel", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("channel")));
                }
                if (jSONObject3.length() > 0) {
                    MLog.d("基础信息:" + jSONObject3.toString());
                    jSONObject3 = new JSONObject();
                }
            }
            jSONObject3.length();
        } catch (Throwable th) {
            MLog.e(th);
        }
    }

    public JSONObject b(long j10) {
        if (TextUtils.isEmpty(aa.a().d(UMGlobalContext.getAppContext(f84828a)))) {
            return null;
        }
        JSONObject jSONObjectB = k.a(UMGlobalContext.getAppContext(f84828a)).b(false);
        String[] strArrA = com.umeng.analytics.c.a(f84828a);
        if (strArrA != null && !TextUtils.isEmpty(strArrA[0]) && !TextUtils.isEmpty(strArrA[1])) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(f.M, strArrA[0]);
                jSONObject.put(f.N, strArrA[1]);
                if (jSONObject.length() > 0) {
                    jSONObjectB.put(f.L, jSONObject);
                }
            } catch (Throwable unused) {
            }
        }
        int iA = t.a().a(f84828a);
        if (jSONObjectB.length() == 1 && jSONObjectB.optJSONObject(f.L) != null && iA != 3) {
            return null;
        }
        t.a().b(jSONObjectB, f84828a);
        if (jSONObjectB.length() <= 0 && iA != 3) {
            return null;
        }
        JSONObject jSONObjectK = k();
        if (jSONObjectK != null) {
            b(jSONObjectK);
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            if (iA == 3) {
                jSONObject3.put("analytics", new JSONObject());
            } else if (jSONObjectB.length() > 0) {
                jSONObject3.put("analytics", jSONObjectB);
            }
            if (jSONObjectK != null && jSONObjectK.length() > 0) {
                jSONObject2.put("header", jSONObjectK);
            }
            if (jSONObject3.length() > 0) {
                jSONObject2.put("content", jSONObject3);
            }
            return b(jSONObject2, j10);
        } catch (Throwable unused2) {
            return jSONObject2;
        }
    }

    private boolean c(boolean z10) {
        if (s() || AnalyticsConfig.isRealTimeDebugMode()) {
            return true;
        }
        if (this.f84840b == null) {
            this.f84840b = new c();
        }
        this.f84840b.a();
        ReportPolicy.ReportStrategy reportStrategyC = this.f84840b.c();
        boolean zShouldSendMessage = reportStrategyC.shouldSendMessage(z10);
        if (zShouldSendMessage) {
            if (((reportStrategyC instanceof ReportPolicy.ReportByInterval) || (reportStrategyC instanceof ReportPolicy.DebugPolicy) || (reportStrategyC instanceof ReportPolicy.ReportQuasiRealtime)) && p()) {
                d();
            }
            if ((reportStrategyC instanceof ReportPolicy.DefconPolicy) && p()) {
                d();
            }
            if (UMConfigure.isDebugLog()) {
                MLog.d("数据发送策略 : " + reportStrategyC.getClass().getSimpleName());
            }
        }
        return zShouldSendMessage;
    }

    private void a(String str, String str2) {
        Method method;
        Class<?> cls = f84838y;
        if (cls == null || (method = f84839z) == null) {
            return;
        }
        try {
            method.invoke(cls, str, str2);
        } catch (Throwable unused) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> reflect call setPuidAndProvider method of crash lib failed.");
        }
    }

    private void e(JSONObject jSONObject) {
        JSONObject jSONObject2;
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.length() <= 0) {
                return;
            }
            JSONObject jSONObject3 = new JSONObject();
            if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("analytics"))) {
                JSONObject jSONObject4 = jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("analytics"));
                if (jSONObject4.has(f.f84663n)) {
                    JSONArray jSONArray = jSONObject4.getJSONArray(f.f84663n);
                    JSONArray jSONArray2 = new JSONArray();
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        JSONObject jSONObject5 = jSONArray.getJSONObject(i10);
                        if (jSONObject5 != null && jSONObject5.length() > 0) {
                            jSONArray2.put(jSONObject5);
                        }
                    }
                    jSONObject3.put(f.f84663n, jSONArray2);
                    if (jSONObject3.length() > 0) {
                        MLog.d("本次启动会话:" + jSONObject3.toString());
                        jSONObject3 = new JSONObject();
                    }
                }
                if (jSONObject4.has(f.L)) {
                    jSONObject3.put(f.L, jSONObject4.getJSONObject(f.L));
                    if (jSONObject3.length() > 0) {
                        MLog.d("本次启动账号:" + jSONObject3.toString());
                        jSONObject3 = new JSONObject();
                    }
                }
            }
            if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("header")) && jSONObject.has(com.umeng.commonsdk.statistics.b.a("header")) && (jSONObject2 = jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("header"))) != null && jSONObject2.length() > 0) {
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("sdk_version"))) {
                    jSONObject3.put("sdk_version", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("sdk_version")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("device_id"))) {
                    jSONObject3.put("device_id", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("device_id")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("device_model"))) {
                    jSONObject3.put("device_model", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("device_model")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("version_code"))) {
                    jSONObject3.put("version", jSONObject2.getInt(com.umeng.commonsdk.statistics.b.a("version_code")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("appkey"))) {
                    jSONObject3.put("appkey", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("appkey")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("channel"))) {
                    jSONObject3.put("channel", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("channel")));
                }
                if (jSONObject3.length() > 0) {
                    MLog.d("本次启动基础信息:" + jSONObject3.toString());
                    jSONObject3 = new JSONObject();
                }
            }
            jSONObject3.length();
        } catch (Throwable th) {
            MLog.e(th);
        }
    }

    public void a(Object obj, int i10) {
        if (com.umeng.commonsdk.utils.c.a()) {
            if (i10 != 4357) {
                return;
            }
            try {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> clean db in silent mode.");
                j.a(f84828a);
                com.umeng.commonsdk.utils.c.c(f84828a);
            } catch (Throwable unused) {
            }
        }
        if (AnalyticsConfig.enable) {
            try {
                if (i10 != 4358) {
                    switch (i10) {
                        case 4097:
                            if (UMUtils.isMainProgress(f84828a)) {
                                if (obj != null) {
                                    e(obj);
                                }
                                if ("-1".equals(((JSONObject) obj).optString("__i"))) {
                                    return;
                                }
                                a(false);
                                return;
                            }
                            UMProcessDBHelper.getInstance(f84828a).insertEventsInSubProcess(UMFrUtils.getSubProcessName(f84828a), new JSONArray().put(obj));
                            return;
                        case 4098:
                            if (obj != null) {
                                e(obj);
                            }
                            if ("-1".equals(((JSONObject) obj).optString("__i"))) {
                                return;
                            }
                            a(false);
                            return;
                        case 4099:
                            x.a(f84828a);
                            return;
                        case 4100:
                            n.c(f84828a);
                            return;
                        case a.f84858e /* 4101 */:
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> PROFILE_SIGNIN");
                            a((Object) null, true);
                            g(obj);
                            return;
                        case a.f84859f /* 4102 */:
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> PROFILE_SIGNOFF");
                            a((Object) null, true);
                            f(obj);
                            return;
                        case a.f84860g /* 4103 */:
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> START_SESSION");
                            w.a().a(f84828a, obj);
                            synchronized (this.f84853w) {
                                this.f84852v = true;
                                break;
                            }
                            return;
                        case a.f84861h /* 4104 */:
                            w.a().c(f84828a, obj);
                            return;
                        case a.f84862i /* 4105 */:
                            d();
                            return;
                        case a.f84863j /* 4106 */:
                            h(obj);
                            return;
                        default:
                            switch (i10) {
                                case 4352:
                                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> INSTANT_SESSION_START");
                                    w.a().b(f84828a, obj);
                                    synchronized (this.f84853w) {
                                        this.f84851u = true;
                                        break;
                                    }
                                    return;
                                case 4353:
                                    a(obj, true);
                                    return;
                                case 4354:
                                    c();
                                    return;
                                case 4355:
                                    if (!UMUtils.isMainProgress(f84828a)) {
                                        UMProcessDBHelper.getInstance(f84828a).insertEventsInSubProcess(UMFrUtils.getSubProcessName(f84828a), new JSONArray().put(obj));
                                        return;
                                    } else {
                                        if (obj != null) {
                                            e(obj);
                                            d();
                                            return;
                                        }
                                        return;
                                    }
                                case 4356:
                                    if (obj == null || f84838y == null || f84839z == null) {
                                        return;
                                    }
                                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> PROFILE_CHANGE_NOTIFY");
                                    String string = "";
                                    String string2 = "";
                                    if (obj instanceof JSONObject) {
                                        JSONObject jSONObject = (JSONObject) obj;
                                        if (jSONObject.has("uid") && jSONObject.has(f.M)) {
                                            string = jSONObject.getString(f.M);
                                            string2 = jSONObject.getString("uid");
                                        }
                                        a(string2, string);
                                        return;
                                    }
                                    return;
                                default:
                                    switch (i10) {
                                        case a.f84873t /* 8195 */:
                                            com.umeng.analytics.b.a().a(obj);
                                            return;
                                        case a.f84874u /* 8196 */:
                                            com.umeng.analytics.b.a().m();
                                            return;
                                        case 8197:
                                            com.umeng.analytics.b.a().k();
                                            return;
                                        default:
                                            switch (i10) {
                                                case a.f84876w /* 8199 */:
                                                case a.f84877x /* 8200 */:
                                                    com.umeng.analytics.b.a().b(obj);
                                                    return;
                                                case a.f84878y /* 8201 */:
                                                    com.umeng.analytics.b.a().b((Object) null);
                                                    return;
                                                default:
                                                    switch (i10) {
                                                        case a.f84879z /* 8208 */:
                                                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> receive DELAY_BUILD_ENVELOPE event.");
                                                            Context context = f84828a;
                                                            UMWorkDispatch.sendEvent(context, a.A, CoreProtocol.getInstance(context), null);
                                                            Context context2 = f84828a;
                                                            UMWorkDispatch.sendEvent(context2, 4354, CoreProtocol.getInstance(context2), null);
                                                            return;
                                                        case a.A /* 8209 */:
                                                            a(obj, false);
                                                            return;
                                                        case a.B /* 8210 */:
                                                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> recv BUILD_ENVELOPE_IMMEDIATELY.");
                                                            if (!UMUtils.isMainProgress(f84828a) || (this.f84840b.c() instanceof ReportPolicy.ReportQuasiRealtime)) {
                                                                return;
                                                            }
                                                            a(true);
                                                            return;
                                                        default:
                                                            switch (i10) {
                                                                case a.E /* 8213 */:
                                                                    if (FieldManager.allow(com.umeng.commonsdk.utils.d.E)) {
                                                                        if (DeviceConfig.getGlobleActivity(f84828a) != null) {
                                                                            w.b(f84828a);
                                                                        }
                                                                        Context context3 = f84828a;
                                                                        UMWorkDispatch.sendEventEx(context3, a.E, CoreProtocol.getInstance(context3), null, 5000L);
                                                                        return;
                                                                    }
                                                                    return;
                                                                case a.F /* 8214 */:
                                                                    if (obj != null && (obj instanceof JSONObject)) {
                                                                        String strOptString = ((JSONObject) obj).optString(AnalyticsConfig.RTD_START_TIME);
                                                                        String strOptString2 = ((JSONObject) obj).optString("period");
                                                                        String strOptString3 = ((JSONObject) obj).optString("debugkey");
                                                                        if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2) || TextUtils.isEmpty(strOptString3)) {
                                                                            return;
                                                                        }
                                                                        Context context4 = f84828a;
                                                                        String str = AnalyticsConfig.RTD_SP_FILE;
                                                                        com.umeng.common.b.a(context4, str, AnalyticsConfig.RTD_START_TIME, strOptString);
                                                                        com.umeng.common.b.a(f84828a, str, "period", strOptString2);
                                                                        com.umeng.common.b.a(f84828a, str, "debugkey", strOptString3);
                                                                        return;
                                                                    }
                                                                    return;
                                                                case a.G /* 8215 */:
                                                                    com.umeng.common.b.a(f84828a, AnalyticsConfig.RTD_SP_FILE);
                                                                    return;
                                                                default:
                                                                    return;
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
                }
                if (obj != null && (obj instanceof JSONObject)) {
                    String strOptString4 = ((JSONObject) obj).optString(f.S);
                    Object objOpt = ((JSONObject) obj).opt(f.T);
                    if (TextUtils.isEmpty(strOptString4)) {
                        return;
                    }
                    String[] strArrA = com.umeng.analytics.c.a(f84828a);
                    if (strArrA != null && !TextUtils.isEmpty(strArrA[0]) && !TextUtils.isEmpty(strArrA[1])) {
                        if (f.O.equals(strOptString4)) {
                            com.umeng.analytics.c.a((String) objOpt);
                            return;
                        } else if (f.P.equals(strOptString4)) {
                            com.umeng.analytics.c.b((String) objOpt);
                            return;
                        } else {
                            com.umeng.analytics.c.a(strOptString4, objOpt);
                            return;
                        }
                    }
                    MLog.e("Please call MobclickAgent.onProfileSignIn() function before set user profile property.");
                }
            } catch (Throwable unused2) {
            }
        }
    }

    private void g(Object obj) {
        try {
            b(f84828a);
            d();
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject != null && jSONObject.length() > 0) {
                String string = jSONObject.getString(f.M);
                String string2 = jSONObject.getString("uid");
                long j10 = jSONObject.getLong("ts");
                String[] strArrA = com.umeng.analytics.c.a(f84828a);
                if (strArrA != null && string.equals(strArrA[0]) && string2.equals(strArrA[1])) {
                    return;
                }
                w.a().a(f84828a, j10);
                String strC = aa.a().c(f84828a);
                boolean zB = w.a().b(f84828a, j10, false);
                com.umeng.analytics.c.a(f84828a, string, string2);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onProfileSignIn: force generate new session: session id = " + strC);
                w.a().a(f84828a, j10, true);
                if (zB) {
                    w.a().b(f84828a, j10);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public long f() {
        SharedPreferences sharedPreferences;
        long jCurrentTimeMillis = 0;
        try {
            Context context = f84828a;
            if (context == null || (sharedPreferences = PreferenceWrapper.getDefault(context)) == null) {
                return 0L;
            }
            long j10 = sharedPreferences.getLong(f84829l, 0L);
            if (j10 == 0) {
                try {
                    jCurrentTimeMillis = System.currentTimeMillis();
                    sharedPreferences.edit().putLong(f84829l, jCurrentTimeMillis).commit();
                    return jCurrentTimeMillis;
                } catch (Throwable unused) {
                }
            }
            return j10;
        } catch (Throwable unused2) {
            return jCurrentTimeMillis;
        }
    }

    public void c(Object obj) {
        b(f84828a);
        d();
        if (d(false)) {
            j();
        }
    }

    private void f(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject != null && jSONObject.length() > 0) {
                long j10 = jSONObject.getLong("ts");
                b(f84828a);
                d();
                String[] strArrA = com.umeng.analytics.c.a(f84828a);
                if (strArrA == null || TextUtils.isEmpty(strArrA[0]) || TextUtils.isEmpty(strArrA[1])) {
                    return;
                }
                w.a().a(f84828a, j10);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onProfileSignIn: force generate new session: session id = " + aa.a().c(f84828a));
                boolean zB = w.a().b(f84828a, j10, false);
                com.umeng.analytics.c.b(f84828a);
                w.a().a(f84828a, j10, true);
                if (zB) {
                    w.a().b(f84828a, j10);
                }
            }
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignOff", th);
            }
        }
    }

    private JSONObject b(JSONObject jSONObject, long j10) {
        try {
            if (s.a(jSONObject) <= j10) {
                return jSONObject;
            }
            jSONObject = null;
            k.a(f84828a).a(true, false);
            k.a(f84828a).b();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> Instant session packet overload !!! ");
            return null;
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    public JSONObject b(boolean z10) {
        JSONArray jSONArray;
        JSONObject jSONObjectA = null;
        try {
            jSONObjectA = k.a(f84828a).a(z10);
            if (jSONObjectA == null) {
                jSONObjectA = new JSONObject();
            } else {
                try {
                    boolean zHas = jSONObjectA.has(f.f84663n);
                    jSONObjectA = jSONObjectA;
                    if (zHas) {
                        JSONArray jSONArray2 = jSONObjectA.getJSONArray(f.f84663n);
                        JSONArray jSONArray3 = new JSONArray();
                        int i10 = 0;
                        while (i10 < jSONArray2.length()) {
                            JSONObject jSONObject = (JSONObject) jSONArray2.get(i10);
                            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(f.f84669t);
                            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(f.f84670u);
                            if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 != null) {
                                jSONObject.put(f.f84669t, jSONArrayOptJSONArray2);
                                jSONObject.remove(f.f84670u);
                            }
                            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray2 != null) {
                                ArrayList arrayList = new ArrayList();
                                for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                                    arrayList.add((JSONObject) jSONArrayOptJSONArray.get(i11));
                                }
                                for (int i12 = 0; i12 < jSONArrayOptJSONArray2.length(); i12++) {
                                    arrayList.add((JSONObject) jSONArrayOptJSONArray2.get(i12));
                                }
                                JSONArraySortUtil jSONArraySortUtil = new JSONArraySortUtil();
                                jSONArraySortUtil.setCompareKey(f.f84673x);
                                Collections.sort(arrayList, jSONArraySortUtil);
                                JSONArray jSONArray4 = new JSONArray();
                                Iterator it2 = arrayList.iterator();
                                while (it2.hasNext()) {
                                    jSONArray4.put((JSONObject) it2.next());
                                }
                                jSONObject.put(f.f84669t, jSONArray4);
                                jSONObject.remove(f.f84670u);
                            }
                            if (jSONObject.has(f.f84669t)) {
                                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray(f.f84669t);
                                int i13 = 0;
                                while (i13 < jSONArrayOptJSONArray3.length()) {
                                    JSONObject jSONObject2 = jSONArrayOptJSONArray3.getJSONObject(i13);
                                    if (jSONObject2.has(f.f84673x)) {
                                        jSONObject2.put("ts", jSONObject2.getLong(f.f84673x));
                                        jSONObject2.remove(f.f84673x);
                                    }
                                    i13++;
                                    jSONArray2 = jSONArray2;
                                }
                                jSONArray = jSONArray2;
                                jSONObject.put(f.f84669t, jSONArrayOptJSONArray3);
                                jSONObject.put(f.f84675z, jSONArrayOptJSONArray3.length());
                            } else {
                                jSONArray = jSONArray2;
                                jSONObject.put(f.f84675z, 0);
                            }
                            jSONArray3.put(jSONObject);
                            i10++;
                            jSONArray2 = jSONArray;
                        }
                        jSONObjectA.put(f.f84663n, jSONArray3);
                        jSONObjectA = jSONObjectA;
                    }
                } catch (Exception e10) {
                    MLog.e("merge pages error");
                    e10.printStackTrace();
                    jSONObjectA = jSONObjectA;
                }
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f84828a);
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString("userlevel", "");
                if (!TextUtils.isEmpty(string)) {
                    jSONObjectA.put("userlevel", string);
                }
            }
            String[] strArrA = com.umeng.analytics.c.a(f84828a);
            if (strArrA != null && !TextUtils.isEmpty(strArrA[0]) && !TextUtils.isEmpty(strArrA[1])) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(f.M, strArrA[0]);
                jSONObject3.put(f.N, strArrA[1]);
                if (jSONObject3.length() > 0) {
                    JSONObject jSONObject4 = new JSONObject();
                    String strA = com.umeng.analytics.c.a();
                    if (strA != null) {
                        jSONObject4.put(f.O, strA);
                    }
                    String strB = com.umeng.analytics.c.b();
                    if (strB != null) {
                        jSONObject4.put(f.P, strB);
                    }
                    Map<String, Object> mapC = com.umeng.analytics.c.c(f84828a);
                    if (mapC != null && mapC.size() > 0) {
                        for (String str : mapC.keySet()) {
                            jSONObject4.put(str, mapC.get(str));
                        }
                    }
                    if (jSONObject4.length() > 0) {
                        jSONObject3.put("up", jSONObject4);
                    }
                    jSONObjectA.put(f.L, jSONObject3);
                }
            }
            if (ABTest.getService(f84828a).isInTest()) {
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put(ABTest.getService(f84828a).getTestName(), ABTest.getService(f84828a).getGroupInfo());
                jSONObjectA.put(f.K, jSONObject5);
            }
            t.a().a(jSONObjectA, f84828a);
        } catch (Throwable unused) {
        }
        return jSONObjectA;
    }

    public void e() {
        if (d(false)) {
            j();
        }
    }

    public void d(Object obj) {
        r();
        m();
        n();
        a(true);
    }

    private boolean d(boolean z10) {
        if (this.f84840b == null) {
            this.f84840b = new c();
        }
        ReportPolicy.ReportStrategy reportStrategyC = this.f84840b.c();
        if (!(reportStrategyC instanceof ReportPolicy.DefconPolicy)) {
            return true;
        }
        if (z10) {
            return ((ReportPolicy.DefconPolicy) reportStrategyC).shouldSendMessageByInstant();
        }
        return reportStrategyC.shouldSendMessage(false);
    }

    public void b(Object obj) {
        if (obj != null) {
            try {
                JSONObject jSONObject = (JSONObject) obj;
                if (jSONObject.length() > 0 && (!jSONObject.has("exception") || 101 != jSONObject.getInt("exception"))) {
                    f(jSONObject);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void b(Context context) {
        try {
            k.a(context).d();
            q();
        } catch (Throwable unused) {
        }
    }

    public void a(boolean z10) {
        if (c(z10)) {
            if (!(this.f84840b.c() instanceof ReportPolicy.ReportQuasiRealtime)) {
                if (UMEnvelopeBuild.isReadyBuild(f84828a, UMLogDataProtocol.UMBusinessType.U_APP)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> constructMessage()");
                    j();
                    return;
                }
                return;
            }
            if (z10) {
                if (UMEnvelopeBuild.isOnline(f84828a)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> send session start in policy ReportQuasiRealtime.");
                    j();
                    return;
                }
                return;
            }
            if (UMEnvelopeBuild.isReadyBuild(f84828a, UMLogDataProtocol.UMBusinessType.U_APP)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> send normal data in policy ReportQuasiRealtime.");
                j();
            }
        }
    }

    private boolean a(JSONArray jSONArray) {
        int length = jSONArray.length();
        List listAsList = Arrays.asList("$$_onUMengEnterForeground", "$$_onUMengEnterBackground", "$$_onUMengEnterForegroundInitError");
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            try {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i11);
                if (jSONObjectOptJSONObject != null && listAsList.contains(jSONObjectOptJSONObject.optString("id"))) {
                    i10++;
                }
            } catch (Throwable unused) {
            }
        }
        return i10 >= length;
    }

    private boolean a(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ekv");
        int length = jSONArrayOptJSONArray.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            try {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i11);
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray(itKeys.next());
                    if (jSONArrayOptJSONArray2 != null && a(jSONArrayOptJSONArray2)) {
                        i10++;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return i10 >= length;
    }

    public JSONObject a(long j10) {
        if (TextUtils.isEmpty(aa.a().d(f84828a))) {
            return null;
        }
        JSONObject jSONObjectB = b(false);
        int iA = t.a().a(f84828a);
        if (jSONObjectB.length() > 0) {
            if (jSONObjectB.length() == 1) {
                if (jSONObjectB.optJSONObject(f.L) != null && iA != 3) {
                    return null;
                }
                if (!TextUtils.isEmpty(jSONObjectB.optString("userlevel")) && iA != 3) {
                    return null;
                }
            } else if (jSONObjectB.length() == 2 && jSONObjectB.optJSONObject(f.L) != null && !TextUtils.isEmpty(jSONObjectB.optString("userlevel")) && iA != 3) {
                return null;
            }
            String strOptString = jSONObjectB.optString(f.f84663n);
            String strOptString2 = jSONObjectB.optString(f.Z);
            String strOptString3 = jSONObjectB.optString("ekv");
            if (TextUtils.isEmpty(strOptString) && TextUtils.isEmpty(strOptString2) && !TextUtils.isEmpty(strOptString3) && a(jSONObjectB)) {
                return null;
            }
        } else if (iA != 3) {
            return null;
        }
        JSONObject jSONObjectL = l();
        if (jSONObjectL != null) {
            c(jSONObjectL);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (iA == 3) {
                jSONObject2.put("analytics", new JSONObject());
            } else if (jSONObjectB.length() > 0) {
                jSONObject2.put("analytics", jSONObjectB);
            }
            if (jSONObjectL != null && jSONObjectL.length() > 0) {
                jSONObject.put("header", jSONObjectL);
            }
            if (jSONObject2.length() > 0) {
                jSONObject.put("content", jSONObject2);
            }
            return a(jSONObject, j10);
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    private JSONObject a(JSONObject jSONObject, long j10) {
        try {
            if (s.a(jSONObject) <= j10) {
                return jSONObject;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("header");
            jSONObject2.put(f.aH, s.a(jSONObject));
            jSONObject.put("header", jSONObject2);
            return s.a(f84828a, j10, jSONObject);
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    private boolean a(long j10, int i10) {
        if (j10 == 0) {
            return true;
        }
        if (System.currentTimeMillis() - j10 <= 28800000) {
            return i10 < 5000;
        }
        o();
        return true;
    }

    public void a(Object obj) {
        if (obj != null) {
            try {
                JSONObject jSONObject = (JSONObject) obj;
                if (jSONObject.length() > 0 && (!jSONObject.has("exception") || 101 != jSONObject.getInt("exception"))) {
                    g(jSONObject);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void a(Object obj, boolean z10) {
        if (z10) {
            if (d(true)) {
                i();
            }
        } else if (UMEnvelopeBuild.isOnline(f84828a) && d(true)) {
            i();
        }
    }
}
