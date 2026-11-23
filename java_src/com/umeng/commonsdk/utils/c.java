package com.umeng.commonsdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.pro.aw;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes9.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f85555b = "lastReqTime";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f85556c = 48;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f85557d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f85558e = 720;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f85559f = "iss";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f85560g = "sinr";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f85561h = "clean";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f85562i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static int f85563j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f85554a = aw.b().b(aw.f84345z);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Object f85564k = new Object();

    static {
        f85562i = false;
        f85563j = f85558e;
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext != null) {
            String strImprintProperty = UMEnvelopeBuild.imprintProperty(appContext, f85559f, "");
            if (TextUtils.isEmpty(strImprintProperty) || !"1".equals(strImprintProperty)) {
                return;
            }
            synchronized (f85564k) {
                f85562i = true;
            }
            String strImprintProperty2 = UMEnvelopeBuild.imprintProperty(appContext, f85560g, "");
            if (TextUtils.isEmpty(strImprintProperty)) {
                f85563j = 48;
                return;
            }
            try {
                f85563j = a(Integer.parseInt(strImprintProperty2));
            } catch (Throwable unused) {
                f85563j = 48;
            }
        }
    }

    private static int a(int i10) {
        if (i10 > f85558e) {
            return f85558e;
        }
        if (i10 < 1) {
            return 1;
        }
        return i10;
    }

    public static long b(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f85554a, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getLong(f85555b, 0L);
        }
        return 0L;
    }

    public static void c(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f85554a, 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putBoolean(f85561h, true).commit();
        }
    }

    public static void d(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f85554a, 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putBoolean(f85561h, false).commit();
        }
    }

    public static boolean e(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f85554a, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getBoolean(f85561h, false);
        }
        return false;
    }

    public static boolean a() {
        boolean z10;
        synchronized (f85564k) {
            z10 = f85562i;
        }
        return z10;
    }

    public static int a(Context context) {
        int i10;
        synchronized (f85564k) {
            i10 = f85563j;
        }
        return i10;
    }

    public static boolean a(long j10, long j11, int i10) {
        Date date = new Date(j11);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(j10));
        calendar.add(10, i10);
        return date.after(calendar.getTime());
    }

    public static void a(Context context, long j10) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f85554a, 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putLong(f85555b, j10).commit();
        }
    }
}
