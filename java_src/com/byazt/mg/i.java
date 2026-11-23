package com.byazt.mg;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.efs.sdk.base.core.util.NetworkUtil;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 170, 42})
public final class i {

    /* JADX INFO: renamed from: com.byazt.mg.i$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 170, 203})
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f16905c;

        static {
            int[] iArr = new int[com.byazt.jz.tt.EnumC0351tt.values().length];
            f16905c = iArr;
            try {
                iArr[com.byazt.jz.tt.EnumC0351tt.WIFI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16905c[com.byazt.jz.tt.EnumC0351tt.MOBILE_2G.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16905c[com.byazt.jz.tt.EnumC0351tt.MOBILE_3G.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16905c[com.byazt.jz.tt.EnumC0351tt.MOBILE_4G.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16905c[com.byazt.jz.tt.EnumC0351tt.MOBILE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static String c(Context context) {
        return c(ve(context));
    }

    public static boolean tt(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable()) ? false : true;
        } catch (Exception unused) {
        }
    }

    private static com.byazt.jz.tt.EnumC0351tt ve(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return com.byazt.jz.tt.EnumC0351tt.NONE;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (1 == type) {
                    return com.byazt.jz.tt.EnumC0351tt.WIFI;
                }
                if (type != 0) {
                    return com.byazt.jz.tt.EnumC0351tt.MOBILE;
                }
                switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        return com.byazt.jz.tt.EnumC0351tt.MOBILE_3G;
                    case 4:
                    case 7:
                    case 11:
                    default:
                        return com.byazt.jz.tt.EnumC0351tt.MOBILE;
                    case 13:
                        return com.byazt.jz.tt.EnumC0351tt.MOBILE_4G;
                }
            }
            return com.byazt.jz.tt.EnumC0351tt.NONE;
        } catch (Throwable unused) {
            return com.byazt.jz.tt.EnumC0351tt.MOBILE;
        }
    }

    public static String c(com.byazt.jz.tt.EnumC0351tt enumC0351tt) {
        try {
            int i10 = AnonymousClass1.f16905c[enumC0351tt.ordinal()];
            if (i10 == 1) {
                return NetworkUtil.NETWORK_TYPE_WIFI;
            }
            if (i10 == 2) {
                return NetworkUtil.NETWORK_CLASS_2G;
            }
            if (i10 == 3) {
                return NetworkUtil.NETWORK_CLASS_3G;
            }
            if (i10 != 4) {
                return i10 != 5 ? "" : "mobile";
            }
            return NetworkUtil.NETWORK_CLASS_4G;
        } catch (Exception unused) {
            return "";
        }
    }
}
