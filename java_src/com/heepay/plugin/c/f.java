package com.heepay.plugin.c;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.net.Proxy;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static f f34291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Proxy f34292b = null;

    private f() {
        b();
    }

    public static synchronized f a() {
        if (f34291a == null) {
            f34291a = new f();
        }
        return f34291a;
    }

    private void b() {
        HttpsURLConnection.setDefaultHostnameVerifier(new HostnameVerifier() { // from class: com.heepay.plugin.c.f.1
            @Override // javax.net.ssl.HostnameVerifier
            public boolean verify(String str, SSLSession sSLSession) {
                return true;
            }
        });
    }

    public boolean a(Context context) {
        NetworkInfo[] allNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null) {
            for (NetworkInfo networkInfo : allNetworkInfo) {
                if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
        }
        return false;
    }
}
