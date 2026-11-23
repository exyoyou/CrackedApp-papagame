package com.sdk.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import com.sdk.base.framework.utils.log.LogUtils;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"NewApi"})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f78376c = "com.sdk.a.a";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Boolean f78377d = Boolean.valueOf(com.sdk.f.d.f78521a);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Network f78378e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f78379f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static ConnectivityManager.NetworkCallback f78380g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HttpURLConnection f78381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ConnectivityManager f78382b;

    /* JADX INFO: renamed from: com.sdk.a.a$a, reason: collision with other inner class name */
    public class C1010a extends ConnectivityManager.NetworkCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ URL f78383a;

        public C1010a(URL url) {
            this.f78383a = url;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            a.f78378e = network;
            try {
                a.this.f78381a = (HttpURLConnection) network.openConnection(this.f78383a);
            } catch (IOException unused) {
                String str = a.f78376c;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onAvailable: ");
                sb2.append(a.this.f78381a.getURL());
            }
        }
    }

    public a() {
        this.f78382b = null;
        f78379f = true;
        f78380g = null;
        f78378e = null;
        this.f78381a = null;
    }

    public void a(ConnectivityManager.NetworkCallback networkCallback) {
        a(this.f78382b, networkCallback);
    }

    public a(Context context, URL url) {
        LogUtils.d_yl(f78376c, "public CellularConnection 开始", 0);
        this.f78382b = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        try {
            Network network = f78378e;
            if (network == null || f78379f) {
                f78379f = false;
                C1010a c1010a = new C1010a(url);
                f78380g = c1010a;
                a(c1010a);
                return;
            }
            try {
                this.f78381a = (HttpURLConnection) network.openConnection(url);
            } catch (IOException unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("CellularConnection: ");
                sb2.append(this.f78381a);
            }
        } catch (Exception e10) {
            LogUtils.e(f78376c, e10.toString(), f78377d);
        }
    }

    public static void a(ConnectivityManager connectivityManager, ConnectivityManager.NetworkCallback networkCallback) {
        if (connectivityManager == null || networkCallback == null) {
            return;
        }
        try {
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addTransportType(0).addCapability(12);
            NetworkRequest networkRequestBuild = builder.build();
            String str = f78376c;
            LogUtils.d_yl(str, "请求网络 requestNetwork 前  ", 0);
            connectivityManager.requestNetwork(networkRequestBuild, networkCallback);
            LogUtils.d_yl(str, "请求网络 requestNetwork 后  ", 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public HttpURLConnection a() {
        HttpURLConnection httpURLConnection;
        long jCurrentTimeMillis = System.currentTimeMillis();
        do {
            if (System.currentTimeMillis() - jCurrentTimeMillis > 2000) {
                return null;
            }
            httpURLConnection = this.f78381a;
        } while (httpURLConnection == null);
        return httpURLConnection;
    }
}
