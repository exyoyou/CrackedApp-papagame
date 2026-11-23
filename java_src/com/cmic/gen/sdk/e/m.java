package com.cmic.gen.sdk.e;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import com.baidu.mobads.sdk.internal.bn;
import com.windmill.sdk.WMConstants;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes9.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f24497a = Build.BRAND;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f24498b = Build.MODEL;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f24499c = "android" + Build.VERSION.RELEASE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final boolean f24500d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f24501e;

    static {
        f24500d = Build.VERSION.SDK_INT <= 28;
        f24501e = Build.MANUFACTURER;
    }

    public static int a(Context context, boolean z10, com.cmic.gen.sdk.a aVar) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type != 1) {
                    if (type == 0) {
                        c.b("TelephonyUtils", "流量");
                        return 1;
                    }
                    return 0;
                }
                c.b("TelephonyUtils", t7.a.f97141e);
                boolean zA = g.a(context, "android.permission.CHANGE_NETWORK_STATE");
                c.a("TelephonyUtils", "CHANGE_NETWORK_STATE=" + zA);
                if (!zA || !z10 || !a(connectivityManager, context, aVar)) {
                    return 2;
                }
                c.b("TelephonyUtils", "流量数据 WIFI 同开");
                return 3;
            }
            return 0;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String b() {
        return f24498b;
    }

    public static String c() {
        return f24499c;
    }

    public static boolean d() {
        return f24500d;
    }

    public static boolean e() {
        String str = f24501e;
        c.a(bn.f7598j, str);
        return "HUAWEI".equalsIgnoreCase(str);
    }

    private static boolean a(ConnectivityManager connectivityManager, Context context, com.cmic.gen.sdk.a aVar) {
        try {
            Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            boolean zBooleanValue = ((Boolean) declaredMethod.invoke(connectivityManager, new Object[0])).booleanValue();
            c.b("TelephonyUtils", "data is on ---------" + zBooleanValue);
            if (Build.VERSION.SDK_INT >= 26) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    if (telephonyManager.createForSubscriptionId(SubscriptionManager.getDefaultSubscriptionId()).isDataEnabled()) {
                        aVar.a("networkTypeByAPI", "1");
                    } else {
                        aVar.a("networkTypeByAPI", "0");
                    }
                }
            } else {
                aVar.a("networkTypeByAPI", WMConstants.TIMER_STAGE_NONE);
            }
            return zBooleanValue;
        } catch (Exception unused) {
            c.a("TelephonyUtils", "isMobileEnabled ----反射出错-----");
            return false;
        }
    }

    public static String a() {
        return f24497a;
    }

    public static boolean a(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        return telephonyManager == null || 1 != telephonyManager.getSimState();
    }
}
