package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.umeng.analytics.pro.aw;
import com.umeng.analytics.pro.l;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class AnalyticsConfig {
    public static boolean CATCH_EXCEPTION = false;
    public static boolean CHANGE_CATCH_EXCEPTION_NOTALLOW = true;
    public static boolean CLEAR_EKV_BL = false;
    public static boolean CLEAR_EKV_WL = false;
    public static final String DEBUG_KEY = "debugkey";
    public static final String DEBUG_MODE_PERIOD = "sendaging";
    public static String GPU_RENDERER = "";
    public static String GPU_VENDER = "";
    public static final String RTD_PERIOD = "period";
    public static final String RTD_START_TIME = "startTime";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static double[] f84158a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f84159b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f84160c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f84161d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f84162e = 0;
    public static boolean enable = true;
    public static long kContinueSessionMillis = 30000;
    public static String mWrapperType;
    public static String mWrapperVersion;
    public static final String RTD_SP_FILE = aw.b().b(aw.A);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Object f84163f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f84164g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f84165h = "";

    static void a(String str) {
        f84160c = str;
    }

    public static String getAppkey(Context context) {
        return UMUtils.getAppkey(context);
    }

    public static String getChannel(Context context) {
        return UMUtils.getChannel(context);
    }

    public static String getGameSdkVersion(Context context) {
        try {
            Class<?> cls = Class.forName("com.umeng.analytics.game.GameSdkVersion");
            return (String) cls.getDeclaredField("SDK_VERSION").get(cls);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static double[] getLocation() {
        return f84158a;
    }

    public static String getRealTimeDebugKey() {
        String str;
        synchronized (f84163f) {
            str = f84165h;
        }
        return str;
    }

    public static String getSecretKey(Context context) {
        if (TextUtils.isEmpty(f84161d)) {
            f84161d = com.umeng.common.b.a(context).c();
        }
        return f84161d;
    }

    public static int getVerticalType(Context context) {
        if (f84162e == 0) {
            f84162e = com.umeng.common.b.a(context).d();
        }
        return f84162e;
    }

    public static boolean isRealTimeDebugMode() {
        boolean z10;
        synchronized (f84163f) {
            z10 = f84164g;
        }
        return z10;
    }

    public static void turnOffRealTimeDebug() {
        synchronized (f84163f) {
            f84164g = false;
            f84165h = "";
        }
    }

    public static void turnOnRealTimeDebug(Map<String, String> map) {
        synchronized (f84163f) {
            f84164g = true;
            if (map != null && map.containsKey("debugkey")) {
                f84165h = map.get("debugkey");
            }
        }
    }

    static void a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            UMLog.aq(l.A, 0, Constants.TIPS_SPECIAL_TAG);
        } else {
            f84161d = str;
            com.umeng.common.b.a(context).a(f84161d);
        }
    }

    static void a(Context context, int i10) {
        f84162e = i10;
        com.umeng.common.b.a(context).a(f84162e);
    }
}
