package com.beizi.fusion.sm.b.a;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes6.dex */
class m implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f10306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.beizi.fusion.sm.b.b f10307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f10308c;

    @FunctionalInterface
    public interface a {
        String a(IBinder iBinder) throws com.beizi.fusion.sm.b.d, RemoteException;
    }

    private m(Context context, com.beizi.fusion.sm.b.b bVar, a aVar) {
        if (context instanceof Application) {
            this.f10306a = context;
        } else {
            this.f10306a = context.getApplicationContext();
        }
        this.f10307b = bVar;
        this.f10308c = aVar;
    }

    public static void a(Context context, Intent intent, com.beizi.fusion.sm.b.b bVar, a aVar) {
        new m(context, bVar, aVar).a(intent);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.beizi.fusion.sm.b.e.a("Service has been connected: " + componentName.getClassName());
        try {
            try {
                try {
                    String strA = this.f10308c.a(iBinder);
                    if (strA == null || strA.length() == 0) {
                        throw new com.beizi.fusion.sm.b.d("OAID acquire failed");
                    }
                    com.beizi.fusion.sm.b.e.a("OAID acquire success: " + strA);
                    this.f10307b.a(strA);
                    this.f10306a.unbindService(this);
                    com.beizi.fusion.sm.b.e.a("Service has been unbound: " + componentName.getClassName());
                } catch (Exception e10) {
                    com.beizi.fusion.sm.b.e.a(e10);
                }
            } catch (Exception e11) {
                com.beizi.fusion.sm.b.e.a(e11);
                this.f10307b.a(e11);
                this.f10306a.unbindService(this);
                com.beizi.fusion.sm.b.e.a("Service has been unbound: " + componentName.getClassName());
            }
        } catch (Throwable th) {
            try {
                this.f10306a.unbindService(this);
                com.beizi.fusion.sm.b.e.a("Service has been unbound: " + componentName.getClassName());
            } catch (Exception e12) {
                com.beizi.fusion.sm.b.e.a(e12);
            }
            throw th;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        com.beizi.fusion.sm.b.e.a("Service has been disconnected: " + componentName.getClassName());
    }

    private void a(Intent intent) {
        try {
            if (!this.f10306a.bindService(intent, this, 1)) {
                throw new com.beizi.fusion.sm.b.d("Service binding failed");
            }
            com.beizi.fusion.sm.b.e.a("Service has been bound: " + intent);
        } catch (Exception e10) {
            this.f10307b.a(e10);
        }
    }
}
