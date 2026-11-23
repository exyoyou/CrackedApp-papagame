package com.kwad.sdk.core.e.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.os.IBinder;
import com.kwad.sdk.utils.aa;
import java.security.MessageDigest;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
public final class j {
    private Context mContext;
    private final LinkedBlockingQueue<IBinder> mLinkedBlockingQueue = new LinkedBlockingQueue<>(1);
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.kwad.sdk.core.e.a.j.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            com.kwad.sdk.core.d.c.i("OppoDeviceIDHelper", "onServiceConnected");
            try {
                j.this.mLinkedBlockingQueue.put(iBinder);
            } catch (InterruptedException e10) {
                com.kwad.sdk.core.d.c.printStackTrace(e10);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    };

    public j(Context context) {
        this.mContext = context;
    }

    private String getSign() {
        Signature[] signatureArr;
        try {
            Context context = this.mContext;
            PackageInfo packageInfo = aa.getPackageInfo(context, context.getPackageName(), 64);
            if (packageInfo == null || (signatureArr = packageInfo.signatures) == null || signatureArr.length <= 0) {
                return null;
            }
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(signatureArr[0].toByteArray());
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                sb2.append(Integer.toHexString((b10 & 255) | 256).substring(1, 3));
            }
            return sb2.toString();
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
            return null;
        }
    }

    public final String getOAID() {
        Context context;
        ServiceConnection serviceConnection;
        String serID = "";
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
            intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
            boolean zBindService = this.mContext.bindService(intent, this.serviceConnection, 1);
            com.kwad.sdk.core.d.c.i("OppoDeviceIDHelper", "getOAID isBin=" + zBindService);
            if (zBindService) {
                try {
                    try {
                        serID = new com.kwad.sdk.core.e.b.f.a(this.mLinkedBlockingQueue.take()).getSerID(this.mContext.getPackageName(), getSign(), "OUID");
                        com.kwad.sdk.core.d.c.i("OppoDeviceIDHelper", "getOAID oaid" + serID);
                        context = this.mContext;
                        serviceConnection = this.serviceConnection;
                    } catch (Exception e10) {
                        com.kwad.sdk.core.d.c.printStackTrace(e10);
                        context = this.mContext;
                        serviceConnection = this.serviceConnection;
                    }
                    context.unbindService(serviceConnection);
                } catch (Throwable th) {
                    this.mContext.unbindService(this.serviceConnection);
                    throw th;
                }
            }
        } catch (Exception e11) {
            com.kwad.sdk.core.d.c.i("OppoDeviceIDHelper", "getOAID service not found");
            com.kwad.sdk.core.d.c.printStackTraceOnly(e11);
        }
        return serID;
    }
}
