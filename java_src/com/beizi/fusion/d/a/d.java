package com.beizi.fusion.d.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: loaded from: classes6.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.beizi.fusion.d.b.c f10156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ServiceConnection f10157b = new ServiceConnection() { // from class: com.beizi.fusion.d.a.d.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            d.this.f10156a = new com.beizi.fusion.d.b.c.a.C0236a(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f10158c;

    public d(Context context) {
        this.f10158c = context;
    }

    public void a(b.a aVar) {
        com.beizi.fusion.d.b.c cVar;
        this.f10158c.getPackageName();
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        if (!this.f10158c.bindService(intent, this.f10157b, 1) || (cVar = this.f10156a) == null) {
            return;
        }
        String strA = cVar.a();
        if (aVar != null) {
            aVar.a(strA);
        }
    }
}
