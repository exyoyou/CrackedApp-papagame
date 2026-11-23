package com.beizi.fusion.d.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes6.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f10152a = new LinkedBlockingQueue<>(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ServiceConnection f10153b = new ServiceConnection() { // from class: com.beizi.fusion.d.a.c.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                c.this.f10152a.put(iBinder);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f10154c;

    public c(Context context) {
        this.f10154c = context;
    }

    public void a(b.a aVar) {
        try {
            this.f10154c.getPackageManager().getPackageInfo("com.huawei.hwid", 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage("com.huawei.hwid");
        try {
            if (this.f10154c.bindService(intent, this.f10153b, 1)) {
                try {
                    com.beizi.fusion.d.b.b.a aVar2 = new com.beizi.fusion.d.b.b.a(this.f10152a.take());
                    String strA = aVar2.a();
                    aVar2.b();
                    if (aVar != null) {
                        aVar.a(strA);
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        } finally {
            this.f10154c.unbindService(this.f10153b);
        }
    }
}
