package com.beizi.fusion.d.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: loaded from: classes6.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10174a;

    private class a implements ServiceConnection {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b.a f10176b;

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            String strA = new com.beizi.fusion.d.b.f.a(iBinder).a();
            b.a aVar = this.f10176b;
            if (aVar != null) {
                aVar.a(strA);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        private a(b.a aVar) {
            this.f10176b = aVar;
        }
    }

    public i(Context context) {
        this.f10174a = context;
    }

    public void a(b.a aVar) {
        try {
            this.f10174a.getPackageManager().getPackageInfo("com.samsung.android.deviceidservice", 0);
            Intent intent = new Intent();
            intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
            this.f10174a.bindService(intent, new a(aVar), 1);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
