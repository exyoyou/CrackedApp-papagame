package com.byazt.vx;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.efs.sdk.base.core.util.NetworkUtil;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 962, 110})
public class qy {
    private static int c(int i10) {
        if (i10 == 0) {
            return 0;
        }
        int i11 = 2;
        if (i10 != 2) {
            i11 = 3;
            if (i10 != 3) {
                if (i10 == 4) {
                    return 1;
                }
                if (i10 == 5) {
                    return 4;
                }
                if (i10 != 6) {
                    return i10;
                }
                return 5;
            }
        }
        return i11;
    }

    private static String tt(int i10) {
        if (i10 == 0) {
            return "unknown";
        }
        if (i10 == 2) {
            return NetworkUtil.NETWORK_CLASS_2G;
        }
        if (i10 == 3) {
            return NetworkUtil.NETWORK_CLASS_3G;
        }
        if (i10 == 4) {
            return NetworkUtil.NETWORK_TYPE_WIFI;
        }
        if (i10 != 5) {
            return i10 != 6 ? "mobile" : NetworkUtil.NETWORK_CLASS_5G;
        }
        return NetworkUtil.NETWORK_CLASS_4G;
    }

    public static String ve() {
        return tt(com.byazt.bp.c.t().qy().ve() ? com.byazt.aas.qy.c() : 0);
    }

    public static String c() {
        return ((com.byazt.dna.ve) com.byazt.ut.uj.getService("embed_applog")).getDid();
    }

    public static int tt() {
        return c(com.byazt.bp.c.t().qy().ve() ? com.byazt.aas.qy.c() : 0);
    }

    public static boolean c(Context context) {
        NetworkInfo[] allNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null) {
                for (NetworkInfo networkInfo : allNetworkInfo) {
                    if (networkInfo.getState() == NetworkInfo.State.CONNECTED || networkInfo.getState() == NetworkInfo.State.CONNECTING) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean ve(Context context) {
        return com.byazt.nr.rh.ve(context) == 2;
    }

    public static boolean tt(Context context) {
        return com.byazt.nr.rh.ve(context) == 3;
    }
}
