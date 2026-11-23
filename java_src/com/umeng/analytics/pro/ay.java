package com.umeng.analytics.pro;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.umeng.commonsdk.debug.UMRTLog;

/* JADX INFO: loaded from: classes9.dex */
public class ay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ax f84347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f84348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f84349c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ax f84350d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f84351e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f84352f;

    public static synchronized String a(Context context) {
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>*** real call OpenDeviceId.getOaid()");
        if (context == null) {
            return null;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return null;
        }
        a();
        ax axVar = f84347a;
        if (axVar != null) {
            try {
                String strA = axVar.a(context);
                f84349c = strA;
                return strA;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static synchronized String b(Context context) {
        String str = f84349c;
        if (str != null && !TextUtils.isEmpty(str)) {
            return f84349c;
        }
        return a(context);
    }

    public static synchronized String c(Context context) {
        if (context == null) {
            return null;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return null;
        }
        if (bk.c()) {
            b();
            ax axVar = f84350d;
            if (axVar != null) {
                try {
                    String strA = axVar.a(context);
                    f84352f = strA;
                    return strA;
                } catch (Throwable unused) {
                }
            }
        }
        return null;
    }

    public static synchronized String d(Context context) {
        String str = f84352f;
        if (str != null && !TextUtils.isEmpty(str)) {
            return f84352f;
        }
        return c(context);
    }

    private static void b() {
        if (f84350d != null || f84351e) {
            return;
        }
        synchronized (ay.class) {
            if (f84350d == null && !f84351e) {
                f84350d = ba.b();
                f84351e = true;
            }
        }
    }

    private static void a() {
        if (f84347a != null || f84348b) {
            return;
        }
        synchronized (ay.class) {
            if (f84347a == null && !f84348b) {
                f84347a = ba.a();
                f84348b = true;
            }
        }
    }
}
