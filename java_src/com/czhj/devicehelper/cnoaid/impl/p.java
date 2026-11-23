package com.czhj.devicehelper.cnoaid.impl;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.RemoteException;
import com.czhj.devicehelper.cnoaid.com.heytap.openid.IOpenID;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes9.dex */
class p implements com.czhj.devicehelper.cnoaid.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f25332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f25333b;

    public p(Context context) {
        this.f25332a = context instanceof Application ? context : context.getApplicationContext();
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    protected String a(IBinder iBinder) throws PackageManager.NameNotFoundException, NoSuchAlgorithmException, com.czhj.devicehelper.cnoaid.f, RemoteException {
        String packageName = this.f25332a.getPackageName();
        String str = this.f25333b;
        if (str != null) {
            return a(iBinder, packageName, str);
        }
        byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(this.f25332a.getPackageManager().getPackageInfo(packageName, 64).signatures[0].toByteArray());
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArrDigest) {
            sb2.append(Integer.toHexString((b10 & 255) | 256).substring(1, 3));
        }
        String string = sb2.toString();
        this.f25333b = string;
        return a(iBinder, packageName, string);
    }

    protected String a(IBinder iBinder, String str, String str2) throws com.czhj.devicehelper.cnoaid.f, RemoteException {
        IOpenID iOpenIDAsInterface = IOpenID.Stub.asInterface(iBinder);
        if (iOpenIDAsInterface != null) {
            return iOpenIDAsInterface.getSerID(str, str2, "OUID");
        }
        throw new com.czhj.devicehelper.cnoaid.f("IOpenID is null");
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public void a(com.czhj.devicehelper.cnoaid.c cVar) {
        if (this.f25332a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent("action.com.heytap.openid.OPEN_ID_SERVICE");
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        n.a(this.f25332a, intent, cVar, new n.a() { // from class: com.czhj.devicehelper.cnoaid.impl.p.1
            @Override // com.czhj.devicehelper.cnoaid.impl.n.a
            public String a(IBinder iBinder) throws com.czhj.devicehelper.cnoaid.f, RemoteException {
                try {
                    return p.this.a(iBinder);
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

    @Override // com.czhj.devicehelper.cnoaid.d
    public boolean a() {
        Context context = this.f25332a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.heytap.openid", 0) != null;
        } catch (Exception e10) {
            com.czhj.devicehelper.cnoaid.g.a(e10);
            return false;
        }
    }
}
