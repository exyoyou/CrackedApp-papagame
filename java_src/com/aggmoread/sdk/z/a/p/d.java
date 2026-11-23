package com.aggmoread.sdk.z.a.p;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f3792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f3793c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3794d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BroadcastReceiver f3795e = new a();

    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(@NonNull Context context, Intent intent) {
            d dVar = d.this;
            boolean z10 = dVar.f3793c;
            dVar.f3793c = dVar.a(context);
            if (z10 != d.this.f3793c) {
                com.aggmoread.sdk.z.a.d.a("ConnectivityListener", "connectivity changed, isConnected: " + d.this.f3793c);
                d.this.f3792b.a(d.this.f3793c);
            }
        }
    }

    public d(@NonNull Context context, @NonNull c cVar) {
        this.f3791a = context.getApplicationContext();
        this.f3792b = cVar == null ? c.f3790a : cVar;
    }

    private void d() {
        if (this.f3794d) {
            this.f3791a.unregisterReceiver(this.f3795e);
            this.f3794d = false;
        }
    }

    public void b() {
        a();
    }

    public void c() {
        d();
    }

    public static d a(Context context, c cVar) {
        d dVar = new d(context, cVar);
        dVar.b();
        return dVar;
    }

    private void a() {
        if (this.f3794d) {
            return;
        }
        this.f3793c = a(this.f3791a);
        try {
            this.f3791a.registerReceiver(this.f3795e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f3794d = true;
        } catch (SecurityException e10) {
            com.aggmoread.sdk.z.a.d.a("ConnectivityListener", "Failed to register", e10);
        }
    }

    @SuppressLint({"MissingPermission"})
    boolean a(@NonNull Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException e10) {
            com.aggmoread.sdk.z.a.d.a("ConnectivityListener", "Failed to determine connectivity status when connectivity changed ", e10);
            return true;
        }
    }
}
