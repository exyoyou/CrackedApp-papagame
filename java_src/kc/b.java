package kc;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.kuaishou.weapon.p0.t;
import io.socket.client.Socket;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static String a(Context context) {
        boolean z10;
        char c10 = 0;
        if (context != null) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
                if (allNetworkInfo != null) {
                    z10 = false;
                    for (NetworkInfo networkInfo : allNetworkInfo) {
                        if (networkInfo.isConnected()) {
                            z10 = true;
                        }
                    }
                } else {
                    z10 = false;
                }
                if (!z10) {
                    c10 = 1;
                } else if (!connectivityManager.getNetworkInfo(1).isConnected()) {
                    switch (((TelephonyManager) context.getApplicationContext().getSystemService("phone")).getNetworkType()) {
                        case 1:
                        case 2:
                        case 4:
                        case 7:
                        case 11:
                        case 16:
                            c10 = 2;
                            break;
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 9:
                        case 10:
                        case 12:
                        case 14:
                        case 15:
                            c10 = 3;
                            break;
                        case 13:
                            c10 = 4;
                            break;
                    }
                } else {
                    c10 = 5;
                }
            } catch (Exception e10) {
                a.c(t.f74887l, "isConnected exception:" + e10.toString());
            }
        }
        if (c10 == 1) {
            return Socket.EVENT_DISCONNECT;
        }
        if (c10 == 2) {
            return "2G";
        }
        if (c10 == 3) {
            return "3G";
        }
        if (c10 != 4) {
            return c10 != 5 ? "unknown" : NetworkUtil.NETWORK_TYPE_WIFI;
        }
        return "4G";
    }
}
