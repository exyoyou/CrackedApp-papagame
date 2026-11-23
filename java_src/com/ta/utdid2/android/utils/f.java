package com.ta.utdid2.android.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.join.mgps.Util.o0;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f82936a = "Wi-Fi";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f82937b = "00-00-00-00-00-00";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f82938c = "NetworkUtils";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ConnectivityManager f82939d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f82940e = {4, 7, 2, 1};

    private static String a(int i10) {
        return (i10 & 255) + o0.f49827a + ((i10 >> 8) & 255) + o0.f49827a + ((i10 >> 16) & 255) + o0.f49827a + ((i10 >> 24) & 255);
    }

    public static ConnectivityManager b(Context context) {
        if (context == null) {
            return null;
        }
        if (f82939d == null) {
            f82939d = (ConnectivityManager) context.getSystemService("connectivity");
        }
        return f82939d;
    }

    public static String[] c(Context context) {
        String[] strArr = {"Unknown", "Unknown"};
        try {
            if (context.getPackageManager().checkPermission(com.kuaishou.weapon.p0.g.f74778b, context.getPackageName()) != 0) {
                strArr[0] = "Unknown";
                return strArr;
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                strArr[0] = "Unknown";
                return strArr;
            }
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
            if (networkInfo != null && networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                strArr[0] = "Wi-Fi";
                return strArr;
            }
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
            if (networkInfo2 != null && networkInfo2.getState() == NetworkInfo.State.CONNECTED) {
                strArr[0] = "2G/3G";
                strArr[1] = networkInfo2.getSubtypeName();
            }
            return strArr;
        } catch (Exception unused) {
        }
    }

    public static String d(Context context) {
        WifiInfo connectionInfo;
        if (context == null || (connectionInfo = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo()) == null) {
            return f82937b;
        }
        String macAddress = connectionInfo.getMacAddress();
        return i.c(macAddress) ? f82937b : macAddress;
    }

    public static String e(Context context) {
        if (context != null) {
            try {
                WifiInfo connectionInfo = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo();
                if (connectionInfo != null) {
                    return a(connectionInfo.getIpAddress());
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static boolean f(Context context) {
        ConnectivityManager connectivityManagerB = b(context);
        if (connectivityManagerB == null) {
            return false;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManagerB.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnected();
            }
            return false;
        } catch (Exception e10) {
            e10.toString();
            return false;
        }
    }

    public static boolean g(Context context) {
        ConnectivityManager connectivityManagerB = b(context);
        if (connectivityManagerB != null) {
            try {
                NetworkInfo activeNetworkInfo = connectivityManagerB.getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    int subtype = activeNetworkInfo.getSubtype();
                    if (d.f82932b) {
                        StringBuilder sb2 = new StringBuilder("subType:");
                        sb2.append(subtype);
                        sb2.append(": name:");
                        sb2.append(activeNetworkInfo.getSubtypeName());
                    }
                    for (int i10 : f82940e) {
                        if (i10 == subtype) {
                            return true;
                        }
                    }
                }
            } catch (Exception e10) {
                e10.toString();
            }
        }
        return false;
    }

    public static boolean h(Context context) {
        if (context != null) {
            try {
                if (c(context)[0].equals("Wi-Fi")) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
