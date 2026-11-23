package com.beizi.fusion.sm.b.a;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.beizi.fusion.sm.repeackage.com.google.android.gms.ads.identifier.internal.IAdvertisingIdService;

/* JADX INFO: loaded from: classes6.dex */
class f implements com.beizi.fusion.sm.b.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f10294a;

    public f(Context context) {
        this.f10294a = context;
    }

    @Override // com.beizi.fusion.sm.b.c
    public boolean a() {
        Context context = this.f10294a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo(na.d.f94512e, 0) != null;
        } catch (Exception e10) {
            com.beizi.fusion.sm.b.e.a(e10);
            return false;
        }
    }

    @Override // com.beizi.fusion.sm.b.c
    public void a(com.beizi.fusion.sm.b.b bVar) {
        if (this.f10294a == null || bVar == null) {
            return;
        }
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage(na.d.f94510c);
        m.a(this.f10294a, intent, bVar, new m.a() { // from class: com.beizi.fusion.sm.b.a.f.1
            @Override // com.beizi.fusion.sm.b.a.m.a
            public String a(IBinder iBinder) throws com.beizi.fusion.sm.b.d, RemoteException {
                IAdvertisingIdService iAdvertisingIdServiceAsInterface = IAdvertisingIdService.Stub.asInterface(iBinder);
                if (iAdvertisingIdServiceAsInterface.isLimitAdTrackingEnabled(true)) {
                    com.beizi.fusion.sm.b.e.a("User has disabled advertising identifier");
                }
                return iAdvertisingIdServiceAsInterface.getId();
            }
        });
    }
}
