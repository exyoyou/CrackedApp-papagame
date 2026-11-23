package com.join.mgps.Util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.widget.Toast;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f49785a = "JPUSH_EXAMPLE";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f49786b = "JPUSH_EXAMPLE_DAYS";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f49787c = "PREFS_START_TIME";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f49788d = "PREFS_END_TIME";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f49789e = "JPUSH_APPKEY";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f49790f = "^[+0-9][-0-9]{1,}$";

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49791b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f49792c;

        a(final Context val$context, final String val$toast) {
            this.f49791b = val$context;
            this.f49792c = val$toast;
        }

        @Override // java.lang.Runnable
        public void run() {
            Looper.prepare();
            Toast.makeText(this.f49791b, this.f49792c, 0).show();
            Looper.loop();
        }
    }

    public static String a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return "Unknown";
        }
    }

    public static String b(Context context) {
        String string;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Bundle bundle = applicationInfo != null ? applicationInfo.metaData : null;
            if (bundle == null || (string = bundle.getString("JPUSH_APPKEY")) == null) {
                return null;
            }
            try {
                if (string.length() != 24) {
                    return null;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            return string;
        } catch (PackageManager.NameNotFoundException unused2) {
            return null;
        }
    }

    public static String c(Context context) {
        return "JPushInterface.getUdid(context)";
    }

    public static String d(Context context, String imei) {
        String deviceId;
        try {
            deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        } catch (Exception e10) {
            h1.c(k0.class.getSimpleName(), e10.getMessage());
            deviceId = null;
        }
        return g(deviceId) ? deviceId : imei;
    }

    public static boolean e(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static boolean f(String s10) {
        return s10 == null || s10.length() == 0 || s10.trim().length() == 0;
    }

    private static boolean g(CharSequence string) {
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        try {
            return Pattern.compile("[\\x20-\\x7E]+").matcher(string).matches();
        } catch (Throwable unused) {
            return true;
        }
    }

    public static boolean h(String s10) {
        if (TextUtils.isEmpty(s10)) {
            return true;
        }
        return Pattern.compile(f49790f).matcher(s10).matches();
    }

    public static boolean i(String s10) {
        return Pattern.compile("^[一-龥0-9a-zA-Z_!@#$&*+=.|]+$").matcher(s10).matches();
    }

    public static void j(final String toast, final Context context) {
        new Thread(new a(context, toast)).start();
    }
}
