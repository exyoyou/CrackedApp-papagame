package com.join.mgps.Util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.efs.sdk.base.core.util.NetworkUtil;

/* JADX INFO: loaded from: classes4.dex */
public class s1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f50022a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f50023b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f50024c = 1;

    public static String a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() != 0) {
            return NetworkUtil.NETWORK_TYPE_WIFI;
        }
        String subtypeName = activeNetworkInfo.getSubtypeName();
        int subtype = activeNetworkInfo.getSubtype();
        if (subtype == 4 || subtype == 1 || subtype == 2 || subtype == 7 || subtype == 11) {
            return NetworkUtil.NETWORK_CLASS_2G;
        }
        if (subtype != 3 && subtype != 8 && subtype != 6 && subtype != 5 && subtype != 12 && subtype != 9 && subtype != 10 && subtype != 14 && subtype != 15) {
            if (subtype == 13) {
                return NetworkUtil.NETWORK_CLASS_4G;
            }
            if (!subtypeName.equalsIgnoreCase("TD-SCDMA") && !subtypeName.equalsIgnoreCase("WCDMA") && !subtypeName.equalsIgnoreCase("CDMA2000")) {
                return subtypeName;
            }
        }
        return NetworkUtil.NETWORK_CLASS_3G;
    }

    public static int b(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            if (activeNetworkInfo.getType() == 1) {
                return 1;
            }
            if (activeNetworkInfo.getType() == 0) {
                return 0;
            }
        }
        return -1;
    }
}
