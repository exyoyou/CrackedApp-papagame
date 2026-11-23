package com.beizi.fusion.d.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.bun.miitmdid.content.StringValues;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes6.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f10184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f10185b = "com.mdid.msa";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f10186c = new LinkedBlockingQueue<>(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ServiceConnection f10187d = new ServiceConnection() { // from class: com.beizi.fusion.d.a.l.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                l.this.f10186c.put(iBinder);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    };

    public l(Context context) {
        this.f10184a = context;
    }

    private int a() {
        try {
            this.f10184a.getPackageManager().getPackageInfo(this.f10185b, 0);
            return 1;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    private void a(String str) {
        a();
        Intent intent = new Intent();
        intent.setClassName(this.f10185b, "com.mdid.msa.service.MsaKlService");
        intent.setAction(StringValues.ACTION_START_MSASERVICE);
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, str);
        try {
            intent.putExtra("com.bun.msa.param.runinset", true);
            this.f10184a.startService(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(b.a aVar) {
        try {
            this.f10184a.getPackageManager().getPackageInfo(this.f10185b, 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        String packageName = this.f10184a.getPackageName();
        a(packageName);
        Intent intent = new Intent();
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
        intent.setAction(StringValues.ACTION_BINDTO_MSASERVICE);
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, packageName);
        if (this.f10184a.bindService(intent, this.f10187d, 1)) {
            try {
                String strA = new com.beizi.fusion.d.b.g.a.C0239a(this.f10186c.take()).a();
                if (aVar != null) {
                    aVar.a(strA);
                }
                this.f10184a.unbindService(this.f10187d);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }
}
