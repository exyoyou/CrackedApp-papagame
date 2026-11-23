package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;

/* JADX INFO: loaded from: classes6.dex */
public class cr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile cr f7804a;

    private cr() {
    }

    public static cr a() {
        if (f7804a == null) {
            synchronized (cr.class) {
                if (f7804a == null) {
                    f7804a = new cr();
                }
            }
        }
        return f7804a;
    }

    private NetworkCapabilities c(Context context) {
        try {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f74778b) != 0) {
                return null;
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) applicationContext.getSystemService("connectivity");
            return connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        } catch (Throwable unused) {
            return null;
        }
    }

    public NetworkInfo b(Context context) {
        try {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f74778b) == 0) {
                return ((ConnectivityManager) applicationContext.getSystemService("connectivity")).getActiveNetworkInfo();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public Boolean a(Context context) {
        try {
            boolean z10 = false;
            if (bn.a(context).a() < 29) {
                NetworkInfo networkInfoB = b(context);
                if (networkInfoB != null && networkInfoB.isConnected() && networkInfoB.getType() == 1) {
                    z10 = true;
                }
                return Boolean.valueOf(z10);
            }
            NetworkCapabilities networkCapabilitiesC = c(context);
            if (networkCapabilitiesC != null && networkCapabilitiesC.hasCapability(12) && networkCapabilitiesC.hasCapability(16) && networkCapabilitiesC.hasTransport(1)) {
                z10 = true;
            }
            return Boolean.valueOf(z10);
        } catch (Throwable unused) {
            return Boolean.FALSE;
        }
    }
}
