package com.papa.gsyvideoplayer.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.core.net.ConnectivityManagerCompat;

/* JADX INFO: loaded from: classes2.dex */
public class NetInfoModule {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f76891g = "NONE";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f76892h = "UNKNOWN";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f76893i = "To use NetInfo on Android, add the following to your AndroidManifest.xml:\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f76894j = "E_MISSING_PERMISSION";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConnectivityManager f76895a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f76897c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f76899e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f76898d = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f76900f = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConnectivityBroadcastReceiver f76896b = new ConnectivityBroadcastReceiver();

    private class ConnectivityBroadcastReceiver extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f76901a;

        private ConnectivityBroadcastReceiver() {
            this.f76901a = false;
        }

        public boolean a() {
            return this.f76901a;
        }

        public void b(boolean z10) {
            this.f76901a = z10;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                NetInfoModule.this.i();
            }
        }
    }

    public interface b {
        void a(String str);
    }

    public NetInfoModule(Context context, b bVar) {
        this.f76899e = context;
        this.f76895a = (ConnectivityManager) context.getSystemService("connectivity");
        this.f76897c = bVar;
    }

    private void h() {
        b bVar = this.f76897c;
        if (bVar != null) {
            bVar.a(this.f76898d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        String strB = b();
        if (strB.equalsIgnoreCase(this.f76898d)) {
            return;
        }
        this.f76898d = strB;
        h();
    }

    private void registerReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.f76899e.registerReceiver(this.f76896b, intentFilter);
        this.f76896b.b(true);
    }

    private void unregisterReceiver() {
        if (this.f76896b.a()) {
            this.f76899e.unregisterReceiver(this.f76896b);
            this.f76896b.b(false);
        }
    }

    public String b() {
        String upperCase = "UNKNOWN";
        try {
            NetworkInfo activeNetworkInfo = this.f76895a.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                if (!ConnectivityManager.isNetworkTypeValid(activeNetworkInfo.getType())) {
                    return "UNKNOWN";
                }
                upperCase = activeNetworkInfo.getTypeName().toUpperCase();
                return upperCase;
            }
            return f76891g;
        } catch (SecurityException unused) {
            this.f76900f = true;
            return upperCase;
        }
    }

    public String c() {
        return this.f76900f ? f76894j : this.f76898d;
    }

    public boolean d() {
        if (this.f76900f) {
            return false;
        }
        return ConnectivityManagerCompat.isActiveNetworkMetered(this.f76895a);
    }

    public void e() {
    }

    public void f() {
        unregisterReceiver();
    }

    public void g() {
        registerReceiver();
    }
}
