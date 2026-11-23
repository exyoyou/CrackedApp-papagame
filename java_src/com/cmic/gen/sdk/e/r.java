package com.cmic.gen.sdk.e;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;

/* JADX INFO: loaded from: classes9.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static r f24509a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ConnectivityManager f24510b;

    public interface a {
        void a(Network network, ConnectivityManager.NetworkCallback networkCallback);
    }

    private r(Context context) {
        try {
            this.f24510b = (ConnectivityManager) context.getSystemService("connectivity");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static r a(Context context) {
        if (f24509a == null) {
            synchronized (r.class) {
                if (f24509a == null) {
                    f24509a = new r(context);
                }
            }
        }
        return f24509a;
    }

    @TargetApi(21)
    public synchronized void a(final a aVar) {
        try {
            if (this.f24510b == null) {
                c.a("WifiNetworkUtils", "mConnectivityManager 为空");
                aVar.a(null, null);
                return;
            }
            NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addCapability(12).addTransportType(0).build();
            ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.cmic.gen.sdk.e.r.1
                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onAvailable(Network network) {
                    try {
                        if (r.this.f24510b.getNetworkCapabilities(network).hasTransport(0)) {
                            aVar.a(network, this);
                        } else {
                            c.a("WifiNetworkUtils", "切换失败，未开启数据网络");
                            aVar.a(null, this);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        aVar.a(null, this);
                    }
                }
            };
            try {
                this.f24510b.requestNetwork(networkRequestBuild, networkCallback);
            } catch (Exception e10) {
                e10.printStackTrace();
                aVar.a(null, networkCallback);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void a(ConnectivityManager.NetworkCallback networkCallback) {
        if (this.f24510b == null || networkCallback == null) {
            return;
        }
        try {
            c.b("WifiNetworkUtils", "unregisterNetworkCallback");
            this.f24510b.unregisterNetworkCallback(networkCallback);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
