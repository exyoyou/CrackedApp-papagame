package com.czhj.devicehelper.cnoaid.impl;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes9.dex */
class n implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f25324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.czhj.devicehelper.cnoaid.c f25325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f25326c;

    @FunctionalInterface
    public interface a {
        String a(IBinder iBinder) throws com.czhj.devicehelper.cnoaid.f, RemoteException;
    }

    private n(Context context, com.czhj.devicehelper.cnoaid.c cVar, a aVar) {
        this.f25324a = context instanceof Application ? context : context.getApplicationContext();
        this.f25325b = cVar;
        this.f25326c = aVar;
    }

    public static void a(Context context, Intent intent, com.czhj.devicehelper.cnoaid.c cVar, a aVar) {
        new n(context, cVar, aVar).a(intent);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.czhj.devicehelper.cnoaid.g.a("Service has been connected: " + componentName.getClassName());
        try {
            try {
                try {
                    String strA = this.f25326c.a(iBinder);
                    if (strA == null || strA.length() == 0) {
                        throw new com.czhj.devicehelper.cnoaid.f("OAID/AAID acquire failed");
                    }
                    com.czhj.devicehelper.cnoaid.g.a("OAID/AAID acquire success: " + strA);
                    this.f25325b.a(strA);
                    this.f25324a.unbindService(this);
                    com.czhj.devicehelper.cnoaid.g.a("Service has been unbound: " + componentName.getClassName());
                } catch (Exception e10) {
                    com.czhj.devicehelper.cnoaid.g.a(e10);
                }
            } catch (Exception e11) {
                com.czhj.devicehelper.cnoaid.g.a(e11);
                this.f25325b.a(e11);
                this.f25324a.unbindService(this);
                com.czhj.devicehelper.cnoaid.g.a("Service has been unbound: " + componentName.getClassName());
            }
        } catch (Throwable th) {
            try {
                this.f25324a.unbindService(this);
                com.czhj.devicehelper.cnoaid.g.a("Service has been unbound: " + componentName.getClassName());
            } catch (Exception e12) {
                com.czhj.devicehelper.cnoaid.g.a(e12);
            }
            throw th;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        com.czhj.devicehelper.cnoaid.g.a("Service has been disconnected: " + componentName.getClassName());
    }

    private void a(Intent intent) {
        try {
            if (!this.f25324a.bindService(intent, this, 1)) {
                throw new com.czhj.devicehelper.cnoaid.f("Service binding failed");
            }
            com.czhj.devicehelper.cnoaid.g.a("Service has been bound: " + intent);
        } catch (Exception e10) {
            this.f25325b.a(e10);
        }
    }
}
