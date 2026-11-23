package com.beizi.fusion.sm.b.a;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.RemoteException;
import com.beizi.fusion.sm.repeackage.com.heytap.openid.IOpenID;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes6.dex */
class n implements com.beizi.fusion.sm.b.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f10309a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f10310b;

    public n(Context context) {
        if (context instanceof Application) {
            this.f10309a = context;
        } else {
            this.f10309a = context.getApplicationContext();
        }
    }

    @Override // com.beizi.fusion.sm.b.c
    public boolean a() {
        Context context = this.f10309a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.heytap.openid", 0) != null;
        } catch (Exception e10) {
            com.beizi.fusion.sm.b.e.a(e10);
            return false;
        }
    }

    @Override // com.beizi.fusion.sm.b.c
    public void a(com.beizi.fusion.sm.b.b bVar) {
        if (this.f10309a == null || bVar == null) {
            return;
        }
        Intent intent = new Intent("action.com.heytap.openid.OPEN_ID_SERVICE");
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        m.a(this.f10309a, intent, bVar, new m.a() { // from class: com.beizi.fusion.sm.b.a.n.1
            @Override // com.beizi.fusion.sm.b.a.m.a
            public String a(IBinder iBinder) throws com.beizi.fusion.sm.b.d, RemoteException {
                try {
                    return n.this.a(iBinder);
                } catch (RemoteException e10) {
                    throw e10;
                } catch (com.beizi.fusion.sm.b.d e11) {
                    throw e11;
                } catch (Exception e12) {
                    throw new com.beizi.fusion.sm.b.d(e12);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"PackageManagerGetSignatures"})
    public String a(IBinder iBinder) throws PackageManager.NameNotFoundException, NoSuchAlgorithmException, com.beizi.fusion.sm.b.d, RemoteException {
        String packageName = this.f10309a.getPackageName();
        String str = this.f10310b;
        if (str == null) {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(this.f10309a.getPackageManager().getPackageInfo(packageName, 64).signatures[0].toByteArray());
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                sb2.append(Integer.toHexString((b10 & 255) | 256).substring(1, 3));
            }
            String string = sb2.toString();
            this.f10310b = string;
            return a(iBinder, packageName, string);
        }
        return a(iBinder, packageName, str);
    }

    private String a(IBinder iBinder, String str, String str2) throws com.beizi.fusion.sm.b.d, RemoteException {
        IOpenID iOpenIDAsInterface = IOpenID.Stub.asInterface(iBinder);
        if (iOpenIDAsInterface != null) {
            return iOpenIDAsInterface.getSerID(str, str2, "OUID");
        }
        throw new com.beizi.fusion.sm.b.d("IOpenID is null");
    }
}
