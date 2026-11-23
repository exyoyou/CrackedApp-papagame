package com.papa.gsyvideoplayer.utils;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f77055a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f77056b = 4;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f77057c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f77058d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f77059e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f77060f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f77061g = 16;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f77062h = 17;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f77063i = 18;

    private k() {
    }

    private static NetworkInfo a(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:21:0x0043 A[RETURN, SYNTHETIC] */
    public static int b(Context context) {
        NetworkInfo networkInfoA = a(context);
        if (networkInfoA == null || !networkInfoA.isAvailable()) {
            return -1;
        }
        if (networkInfoA.getType() == 1) {
            return 1;
        }
        if (networkInfoA.getType() != 0) {
            return 5;
        }
        switch (networkInfoA.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return 2;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return 3;
            case 13:
            case 18:
                return 4;
            default:
                String subtypeName = networkInfoA.getSubtypeName();
                if (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000")) {
                    return 3;
                }
                return 5;
        }
    }

    public static String c(Context context) {
        int iB = b(context);
        if (iB == -1) {
            return "NETWORK_NO";
        }
        if (iB == 1) {
            return "NETWORK_WIFI";
        }
        if (iB == 2) {
            return "NETWORK_2G";
        }
        if (iB != 3) {
            return iB != 4 ? "NETWORK_UNKNOWN" : "NETWORK_4G";
        }
        return "NETWORK_3G";
    }

    public static String d(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            return telephonyManager.getNetworkOperatorName();
        }
        return null;
    }

    public static int e(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            return telephonyManager.getPhoneType();
        }
        return -1;
    }

    public static boolean f(Context context) {
        NetworkInfo networkInfoA = a(context);
        return networkInfoA != null && networkInfoA.isAvailable() && networkInfoA.getSubtype() == 13;
    }

    public static boolean g(Context context) {
        NetworkInfo networkInfoA = a(context);
        return networkInfoA != null && networkInfoA.isAvailable();
    }

    public static boolean h(Context context) {
        NetworkInfo networkInfoA = a(context);
        return networkInfoA != null && networkInfoA.isConnected();
    }

    public static boolean i(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return connectivityManager != null && connectivityManager.getActiveNetworkInfo().getType() == 1;
    }

    public static void j(Context context) {
        context.startActivity(new Intent("android.settings.SETTINGS"));
    }
}
