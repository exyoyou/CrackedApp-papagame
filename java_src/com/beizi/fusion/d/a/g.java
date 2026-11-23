package com.beizi.fusion.d.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.Signature;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes6.dex */
public class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    com.beizi.fusion.d.b.d f10163b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f10165d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f10166e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f10162a = "OUID";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ServiceConnection f10164c = new ServiceConnection() { // from class: com.beizi.fusion.d.a.g.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            g.this.f10163b = com.beizi.fusion.d.b.d.a.a(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            g.this.f10163b = null;
        }
    };

    public g(Context context) {
        this.f10165d = context;
    }

    public String a(b.a aVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot run on MainThread");
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
        if (this.f10165d.bindService(intent, this.f10164c, 1)) {
            try {
                SystemClock.sleep(BaseCloudFileManager.ACK_TIMEOUT);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (this.f10163b != null) {
                String strA = a("OUID");
                if (aVar == null) {
                    return strA;
                }
                aVar.a(strA);
                return strA;
            }
        }
        return null;
    }

    private String a(String str) {
        Signature[] signatureArr;
        String packageName = this.f10165d.getPackageName();
        if (this.f10166e == null) {
            String string = null;
            try {
                signatureArr = this.f10165d.getPackageManager().getPackageInfo(packageName, 64).signatures;
            } catch (Exception e10) {
                e10.printStackTrace();
                signatureArr = null;
            }
            if (signatureArr != null && signatureArr.length > 0) {
                byte[] byteArray = signatureArr[0].toByteArray();
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                    if (messageDigest != null) {
                        byte[] bArrDigest = messageDigest.digest(byteArray);
                        StringBuilder sb2 = new StringBuilder();
                        for (byte b10 : bArrDigest) {
                            sb2.append(Integer.toHexString((b10 & 255) | 256).substring(1, 3));
                        }
                        string = sb2.toString();
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            this.f10166e = string;
        }
        return ((com.beizi.fusion.d.b.d.a.C0237a) this.f10163b).a(packageName, this.f10166e, str);
    }
}
