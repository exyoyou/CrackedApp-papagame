package com.join.android.app.common.servcie;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.pref.PrefDef_;

/* JADX INFO: loaded from: classes5.dex */
public final class DownloadService_ extends DownloadService {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final IntentFilter f34683p = new IntentFilter();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final BroadcastReceiver f34684q = new BroadcastReceiver() { // from class: com.join.android.app.common.servcie.DownloadService_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownloadService_.this.k(intent);
        }
    };

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final IntentFilter f34685r = new IntentFilter();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final BroadcastReceiver f34686s = new BroadcastReceiver() { // from class: com.join.android.app.common.servcie.DownloadService_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownloadService_.this.l(intent);
        }
    };

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final IntentFilter f34687t = new IntentFilter();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final BroadcastReceiver f34688u = new BroadcastReceiver() { // from class: com.join.android.app.common.servcie.DownloadService_.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownloadService_.this.q(intent);
        }
    };

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final IntentFilter f34689v = new IntentFilter();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final BroadcastReceiver f34690w = new BroadcastReceiver() { // from class: com.join.android.app.common.servcie.DownloadService_.4
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownloadService_.this.A(intent);
        }
    };

    class a extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f34695b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String id2, long delay, String serial, final String val$packageName) {
            super(id2, delay, serial);
            this.f34695b = val$packageName;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DownloadService_.super.m(this.f34695b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f34697b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f34698c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final int val$i, final String val$packageName) {
            super(id2, delay, serial);
            this.f34697b = val$i;
            this.f34698c = val$packageName;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DownloadService_.super.n(this.f34697b, this.f34698c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f34700b;

        c(final DetailResultBean val$detialResultBean) {
            this.f34700b = val$detialResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadService_.super.O(this.f34700b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f34702b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f34703c;

        d(final int val$money, final int val$empirical) {
            this.f34702b = val$money;
            this.f34703c = val$empirical;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadService_.super.N(this.f34702b, this.f34703c);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadService_.super.I();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Intent f34706b;

        f(final Intent val$intent) {
            this.f34706b = val$intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadService_.super.A(this.f34706b);
        }
    }

    class g extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f34708b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String id2, long delay, String serial, final String val$gameId) {
            super(id2, delay, serial);
            this.f34708b = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DownloadService_.super.r(this.f34708b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class h extends org.androidannotations.api.builder.g<h> {
        public h(Context context) {
            super(context, (Class<?>) DownloadService_.class);
        }
    }

    private void X() {
        this.f34675d = new PrefDef_(this);
        this.f34683p.addAction(p5.a.f96209n);
        this.f34685r.addAction(p5.a.f96211o);
        this.f34687t.addAction(p5.a.f96213p);
        this.f34689v.addAction("android.net.wifi.STATE_CHANGE");
        this.f34689v.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        this.f34689v.addAction("android.net.wifi.SCAN_RESULTS");
        this.f34689v.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    }

    public static h Y(Context context) {
        return new h(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.common.servcie.DownloadService
    public void A(final Intent intent) {
        org.androidannotations.api.b.e("", new f(intent), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.common.servcie.DownloadService
    public void I() {
        org.androidannotations.api.b.e("", new e(), BaseCloudFileManager.ACK_TIMEOUT);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.common.servcie.DownloadService
    public void N(final int money, final int empirical) {
        org.androidannotations.api.b.e("", new d(money, empirical), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.common.servcie.DownloadService
    public void O(final DetailResultBean detialResultBean) {
        org.androidannotations.api.b.e("", new c(detialResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.common.servcie.DownloadService
    public void m(final String packageName) {
        org.androidannotations.api.a.l(new a("", 0L, "", packageName));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.common.servcie.DownloadService
    public void n(final int i10, final String packageName) {
        org.androidannotations.api.a.l(new b("", 0L, "", i10, packageName));
    }

    @Override // com.join.android.app.common.servcie.DownloadService, android.app.Service
    public void onCreate() {
        X();
        super.onCreate();
        registerReceiver(this.f34684q, this.f34683p);
        registerReceiver(this.f34686s, this.f34685r);
        registerReceiver(this.f34688u, this.f34687t);
        registerReceiver(this.f34690w, this.f34689v);
    }

    @Override // com.join.android.app.common.servcie.DownloadService, android.app.Service
    public void onDestroy() {
        unregisterReceiver(this.f34684q);
        unregisterReceiver(this.f34686s);
        unregisterReceiver(this.f34688u);
        unregisterReceiver(this.f34690w);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.common.servcie.DownloadService
    public void r(final String gameId) {
        org.androidannotations.api.a.l(new g("", 0L, "", gameId));
    }
}
