package com.join.mgps.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.quv.AbsServerManager;
import com.join.android.app.common.utils.g;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class PackageInstallWatch {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long f72266f = 600000;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final PackageInstallWatch f72267g = new PackageInstallWatch();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, Runnable> f72268a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f72269b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f72270c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BroadcastReceiver f72271d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f72272e;

    private PackageInstallWatch() {
    }

    private synchronized void c(Context applicationContext) {
        if (this.f72272e) {
            return;
        }
        this.f72270c = applicationContext;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(BootReceiver_.f72254a);
        intentFilter.addAction(BootReceiver_.f72255b);
        intentFilter.addAction(BootReceiver_.f72257d);
        intentFilter.addAction(BootReceiver_.f72256c);
        intentFilter.addDataScheme(AbsServerManager.PACKAGE_QUERY_BINDER);
        intentFilter.setPriority(Integer.MAX_VALUE);
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.join.mgps.receiver.PackageInstallWatch.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                PackageInstallWatch.this.f(context, intent);
            }
        };
        this.f72271d = broadcastReceiver;
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                this.f72270c.registerReceiver(broadcastReceiver, intentFilter, 2);
            } else {
                this.f72270c.registerReceiver(broadcastReceiver, intentFilter);
            }
            this.f72272e = true;
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f72272e = false;
            this.f72271d = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public synchronized void g(String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            return;
        }
        if (this.f72268a.containsKey(packageName)) {
            this.f72268a.remove(packageName);
            if (this.f72268a.isEmpty()) {
                j();
            }
        }
    }

    public static PackageInstallWatch e() {
        return f72267g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Context context, Intent intent) {
        if (intent == null || intent.getData() == null) {
            return;
        }
        String action = intent.getAction();
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (TextUtils.isEmpty(action) || TextUtils.isEmpty(schemeSpecificPart)) {
            return;
        }
        Intent intent2 = new Intent(p5.a.f96211o);
        intent2.putExtra("packageName", schemeSpecificPart);
        intent2.putExtra("actionFrom", action);
        context.sendBroadcast(intent2);
        if (BootReceiver_.f72254a.equals(action) || BootReceiver_.f72257d.equals(action)) {
            h(schemeSpecificPart);
        }
    }

    private synchronized void h(String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            return;
        }
        Runnable runnableRemove = this.f72268a.remove(packageName);
        if (runnableRemove != null) {
            this.f72269b.removeCallbacks(runnableRemove);
        }
        if (this.f72268a.isEmpty()) {
            j();
        }
    }

    private synchronized void j() {
        Context context;
        BroadcastReceiver broadcastReceiver;
        if (!this.f72272e || (context = this.f72270c) == null || (broadcastReceiver = this.f72271d) == null) {
            this.f72272e = false;
            return;
        }
        try {
            context.unregisterReceiver(broadcastReceiver);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f72271d = null;
        this.f72272e = false;
    }

    public synchronized void i() {
        for (Runnable runnable : this.f72268a.values()) {
            if (runnable != null) {
                this.f72269b.removeCallbacks(runnable);
            }
        }
        this.f72268a.clear();
        j();
    }

    public synchronized void k(Context context, final String packageName) {
        if (context != null) {
            if (!TextUtils.isEmpty(packageName)) {
                c(context.getApplicationContext());
                Runnable runnableRemove = this.f72268a.remove(packageName);
                if (runnableRemove != null) {
                    this.f72269b.removeCallbacks(runnableRemove);
                }
                Runnable runnable = new Runnable() { // from class: com.join.mgps.receiver.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f72282b.g(packageName);
                    }
                };
                this.f72268a.put(packageName, runnable);
                this.f72269b.postDelayed(runnable, 600000L);
            }
        }
    }

    public void l(Context context, File apkFile) {
        if (context == null || apkFile == null || !apkFile.exists()) {
            return;
        }
        try {
            k(context, g.t0(context).s(context, apkFile.getAbsolutePath()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void m(Context context, String apkFilePath) {
        if (TextUtils.isEmpty(apkFilePath)) {
            return;
        }
        l(context, new File(apkFilePath));
    }
}
