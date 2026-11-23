package com.beizi.fusion.sm.b.a;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.os.RemoteException;
import com.beizi.fusion.sm.repeackage.com.bun.lib.MsaIdInterface;
import com.bun.miitmdid.content.StringValues;

/* JADX INFO: loaded from: classes6.dex */
class j implements com.beizi.fusion.sm.b.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f10302a;

    public j(Context context) {
        this.f10302a = context;
    }

    private void b() {
        try {
            Intent intent = new Intent(StringValues.ACTION_START_MSASERVICE);
            intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaKlService");
            intent.putExtra(StringValues.PARAM_BIND_PKGNAME, this.f10302a.getPackageName());
            if (Build.VERSION.SDK_INT < 26) {
                this.f10302a.startService(intent);
            } else {
                this.f10302a.startForegroundService(intent);
            }
        } catch (Exception e10) {
            com.beizi.fusion.sm.b.e.a(e10);
        }
    }

    @Override // com.beizi.fusion.sm.b.c
    public boolean a() {
        Context context = this.f10302a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.mdid.msa", 0) != null;
        } catch (Exception e10) {
            com.beizi.fusion.sm.b.e.a(e10);
            return false;
        }
    }

    @Override // com.beizi.fusion.sm.b.c
    public void a(com.beizi.fusion.sm.b.b bVar) {
        if (this.f10302a == null || bVar == null) {
            return;
        }
        b();
        Intent intent = new Intent(StringValues.ACTION_BINDTO_MSASERVICE);
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, this.f10302a.getPackageName());
        m.a(this.f10302a, intent, bVar, new m.a() { // from class: com.beizi.fusion.sm.b.a.j.1
            @Override // com.beizi.fusion.sm.b.a.m.a
            public String a(IBinder iBinder) throws com.beizi.fusion.sm.b.d, RemoteException {
                MsaIdInterface msaIdInterfaceAsInterface = MsaIdInterface.Stub.asInterface(iBinder);
                if (msaIdInterfaceAsInterface == null) {
                    throw new com.beizi.fusion.sm.b.d("MsaIdInterface is null");
                }
                if (msaIdInterfaceAsInterface.isSupported()) {
                    return msaIdInterfaceAsInterface.getOAID();
                }
                throw new com.beizi.fusion.sm.b.d("MsaIdInterface#isSupported return false");
            }
        });
    }
}
