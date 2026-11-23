package com.czhj.devicehelper.cnoaid.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.czhj.devicehelper.cnoaid.com.oplus.stdid.IStdID;

/* JADX INFO: loaded from: classes9.dex */
public class o extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f25327a = "action.com.oplus.stdid.ID_SERVICE";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f25328b = "com.coloros.mcs";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f25329c = "com.oplus.stdid.IdentifyService";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f25330d;

    public o(Context context) {
        super(context);
        this.f25330d = context;
    }

    @Override // com.czhj.devicehelper.cnoaid.impl.p
    protected String a(IBinder iBinder, String str, String str2) throws com.czhj.devicehelper.cnoaid.f, RemoteException {
        IStdID iStdIDAsInterface = IStdID.Stub.asInterface(iBinder);
        if (iStdIDAsInterface != null) {
            return iStdIDAsInterface.getSerID(str, str2, "OUID");
        }
        throw new com.czhj.devicehelper.cnoaid.f("IStdID is null");
    }

    @Override // com.czhj.devicehelper.cnoaid.impl.p, com.czhj.devicehelper.cnoaid.d
    public void a(com.czhj.devicehelper.cnoaid.c cVar) {
        if (this.f25330d == null || cVar == null) {
            return;
        }
        Intent intent = new Intent(f25327a);
        intent.setComponent(new ComponentName(f25328b, f25329c));
        n.a(this.f25330d, intent, cVar, new n.a() { // from class: com.czhj.devicehelper.cnoaid.impl.o.1
            @Override // com.czhj.devicehelper.cnoaid.impl.n.a
            public String a(IBinder iBinder) throws com.czhj.devicehelper.cnoaid.f, RemoteException {
                try {
                    return o.this.a(iBinder);
                } catch (RemoteException e10) {
                    throw e10;
                } catch (com.czhj.devicehelper.cnoaid.f e11) {
                    throw e11;
                } catch (Exception e12) {
                    throw new com.czhj.devicehelper.cnoaid.f(e12);
                }
            }
        });
    }

    @Override // com.czhj.devicehelper.cnoaid.impl.p, com.czhj.devicehelper.cnoaid.d
    public boolean a() {
        Context context = this.f25330d;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo(f25328b, 0) != null;
        } catch (Exception e10) {
            com.czhj.devicehelper.cnoaid.g.a(e10);
            return false;
        }
    }
}
