package com.czhj.devicehelper.honor.identifier;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import com.umeng.analytics.pro.bb;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes9.dex */
public class b implements ServiceConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f25347b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.czhj.devicehelper.honor.identifier.a.C0540a f25346a = new com.czhj.devicehelper.honor.identifier.a.C0540a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f25348c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public BinderC0541b f25349d = new BinderC0541b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CountDownLatch f25350e = new CountDownLatch(2);

    class a extends com.czhj.devicehelper.honor.oaid.a.AbstractBinderC0542a {
        public a() {
        }

        @Override // com.czhj.devicehelper.honor.oaid.a
        public void a(int i10, long j10, boolean z10, float f10, double d10, String str) {
        }

        @Override // com.czhj.devicehelper.honor.oaid.a
        public void a(int i10, Bundle bundle) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("OAIDCallBack handleResult retCode=");
            sb2.append(i10);
            sb2.append(" retInfo=");
            sb2.append(bundle);
            if (i10 != 0 || bundle == null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("OAIDCallBack handleResult error retCode=$ ");
                sb3.append(i10);
            } else if (b.this.f25346a != null) {
                String string = bundle.getString(bb.c.f84371b);
                b.this.f25346a.f25344a = string;
                StringBuilder sb4 = new StringBuilder();
                sb4.append("OAIDCallBack handleResult success ");
                sb4.append(string);
            }
            b.this.f25350e.countDown();
        }
    }

    /* JADX INFO: renamed from: com.czhj.devicehelper.honor.identifier.b$b, reason: collision with other inner class name */
    class BinderC0541b extends com.czhj.devicehelper.honor.oaid.a.AbstractBinderC0542a {
        public BinderC0541b() {
        }

        @Override // com.czhj.devicehelper.honor.oaid.a
        public void a(int i10, long j10, boolean z10, float f10, double d10, String str) {
        }

        @Override // com.czhj.devicehelper.honor.oaid.a
        public void a(int i10, Bundle bundle) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("OAIDCallBack handleResult retCode=");
            sb2.append(i10);
            sb2.append(" retInfo= ");
            sb2.append(bundle);
            if (i10 != 0 || bundle == null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("OAIDLimitCallback handleResult error retCode= ");
                sb3.append(i10);
            } else if (b.this.f25346a != null) {
                boolean z10 = bundle.getBoolean("oa_id_limit_state");
                b.this.f25346a.f25345b = z10;
                StringBuilder sb4 = new StringBuilder();
                sb4.append("OAIDLimitCallback handleResult success  isLimit=");
                sb4.append(z10);
            }
            b.this.f25350e.countDown();
        }
    }

    public final void a() {
        try {
            this.f25347b.unbindService(this);
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("OAIDClientImpl#disconnect#Disconnect error::");
            sb2.append(e10.getMessage());
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        new Thread(new Runnable() { // from class: com.czhj.devicehelper.honor.identifier.b.1
            @Override // java.lang.Runnable
            public void run() {
                com.czhj.devicehelper.honor.oaid.b c0543a;
                try {
                    Binder.getCallingPid();
                    IBinder iBinder2 = iBinder;
                    if (iBinder2 == null) {
                        c0543a = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinder2.queryLocalInterface("com.hihonor.cloudservice.oaid.IOAIDService");
                        c0543a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.czhj.devicehelper.honor.oaid.b)) ? new com.czhj.devicehelper.honor.oaid.b.a.C0543a(iBinder) : (com.czhj.devicehelper.honor.oaid.b) iInterfaceQueryLocalInterface;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("onServiceConnected-debug4-");
                    sb2.append(c0543a);
                    c0543a.a(b.this.f25348c);
                    c0543a.b(b.this.f25349d);
                } catch (Exception e10) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("onServiceConnected error:");
                    sb3.append(e10.getMessage());
                    b.this.f25350e.countDown();
                    b.this.f25350e.countDown();
                    b.this.a();
                }
            }
        }).start();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f25350e.countDown();
        this.f25350e.countDown();
    }

    public boolean a(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            packageManager.getPackageInfo("com.hihonor.id", 0);
            Intent intent = new Intent("com.hihonor.id.HnOaIdService");
            intent.setPackage("com.hihonor.id");
            return !packageManager.queryIntentServices(intent, 0).isEmpty();
        } catch (Exception unused) {
            return false;
        }
    }
}
