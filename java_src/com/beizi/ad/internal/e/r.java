package com.beizi.ad.internal.e;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* JADX INFO: loaded from: classes6.dex */
public class r {
    public static com.beizi.ad.model.i.d a(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return com.beizi.ad.model.i.d.NET_OTHER;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
            if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                int type = activeNetworkInfo.getType();
                if (1 == type) {
                    return com.beizi.ad.model.i.d.NET_WIFI;
                }
                if (type == 0) {
                    int subtype = activeNetworkInfo.getSubtype();
                    String subtypeName = activeNetworkInfo.getSubtypeName();
                    switch (subtype) {
                        case 1:
                        case 2:
                        case 4:
                        case 7:
                        case 11:
                        case 16:
                            return com.beizi.ad.model.i.d.NET_2G;
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
                            return com.beizi.ad.model.i.d.NET_3G;
                        case 13:
                        case 18:
                            return com.beizi.ad.model.i.d.NET_4G;
                        case 19:
                        default:
                            if (!subtypeName.equalsIgnoreCase("TD-SCDMA") && !subtypeName.equalsIgnoreCase("WCDMA") && !subtypeName.equalsIgnoreCase("CDMA2000")) {
                                return com.beizi.ad.model.i.d.NET_OTHER;
                            }
                            return com.beizi.ad.model.i.d.NET_3G;
                        case 20:
                            return com.beizi.ad.model.i.d.NET_5G;
                    }
                }
            }
            return com.beizi.ad.model.i.d.NET_OTHER;
        } catch (Throwable th) {
            th.printStackTrace();
            return com.beizi.ad.model.i.d.NET_OTHER;
        }
    }
}
