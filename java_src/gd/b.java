package gd;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes10.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public fd.a f91372a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f91373b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f91374c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f91375d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ServiceConnection f91376e = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            b.this.f91372a = fd.a.AbstractBinderC1161a.a(iBinder);
            synchronized (b.this.f91375d) {
                b.this.f91375d.notify();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            b.this.f91372a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: gd.b$b, reason: collision with other inner class name */
    public static class C1168b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f91378a = new b(null);
    }

    public /* synthetic */ b(a aVar) {
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0047  */
    /* JADX WARN: Code duplicated, block: B:45:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public synchronized String a(Context context, String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot run on MainThread");
        }
        if (this.f91372a != null) {
            try {
                return c(context, str);
            } catch (RemoteException e10) {
                e10.printStackTrace();
                return "";
            }
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
        if (!context.bindService(intent, this.f91376e, 1)) {
            if (this.f91372a == null) {
                return "";
            }
            return c(context, str);
        }
        synchronized (this.f91375d) {
            try {
                this.f91375d.wait(BaseCloudFileManager.ACK_TIMEOUT);
            } catch (InterruptedException e11) {
                e11.printStackTrace();
            }
        }
        if (this.f91372a == null) {
            return "";
        }
        try {
            return c(context, str);
        } catch (RemoteException e12) {
            e12.printStackTrace();
            return "";
        }
        throw th;
    }

    public boolean b(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.heytap.openid", 0);
            if (Build.VERSION.SDK_INT >= 28) {
                return packageInfo != null && packageInfo.getLongVersionCode() >= 1;
            }
            return packageInfo != null && packageInfo.versionCode >= 1;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public final String c(Context context, String str) {
        Signature[] signatureArr;
        if (TextUtils.isEmpty(this.f91373b)) {
            this.f91373b = context.getPackageName();
        }
        if (TextUtils.isEmpty(this.f91374c)) {
            String string = null;
            try {
                signatureArr = context.getPackageManager().getPackageInfo(this.f91373b, 64).signatures;
            } catch (PackageManager.NameNotFoundException e10) {
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
                } catch (NoSuchAlgorithmException e11) {
                    e11.printStackTrace();
                }
            }
            this.f91374c = string;
        }
        String strA = ((fd.a.AbstractBinderC1161a.C1162a) this.f91372a).a(this.f91373b, this.f91374c, str);
        return TextUtils.isEmpty(strA) ? "" : strA;
    }
}
