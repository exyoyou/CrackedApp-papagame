package com.umeng.analytics.pro;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class az implements ax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f84353a = "Coolpad";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f84354b = "com.coolpad.deviceidsupport";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f84355c = "com.coolpad.deviceidsupport.DeviceIdService";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static a f84356d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CountDownLatch f84358f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f84359g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f84357e = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ServiceConnection f84360h = new ServiceConnection() { // from class: com.umeng.analytics.pro.az.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                a unused = az.f84356d = a.b.a(iBinder);
                az.this.f84357e = az.f84356d.b(az.this.f84359g.getPackageName());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onServiceConnected: oaid = ");
                sb2.append(az.this.f84357e);
            } catch (RemoteException | NullPointerException e10) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("onServiceConnected failed e=");
                sb3.append(e10.getMessage());
            }
            az.this.f84358f.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            a unused = az.f84356d = null;
        }
    };

    private void b(Context context) {
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(f84354b, f84355c));
            context.bindService(intent, this.f84360h, 1);
        } catch (Throwable th) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("bindService failed. e=");
            sb2.append(th.getMessage());
            this.f84358f.countDown();
        }
    }

    private void c(Context context) {
        try {
            context.unbindService(this.f84360h);
        } catch (Throwable th) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("unbindService failed. e=");
            sb2.append(th.getMessage());
        }
    }

    @Override // com.umeng.analytics.pro.ax
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        this.f84359g = context.getApplicationContext();
        this.f84358f = new CountDownLatch(1);
        try {
            b(context);
            this.f84358f.await(500L, TimeUnit.MILLISECONDS);
            return this.f84357e;
        } catch (InterruptedException e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getOAID interrupted. e=");
            sb2.append(e10.getMessage());
            return null;
        } finally {
            c(context);
        }
    }
}
