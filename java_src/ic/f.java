package ic;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.content.pm.Signature;
import android.os.IBinder;
import java.security.MessageDigest;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f91557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f91558b = new LinkedBlockingQueue<>(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ServiceConnection f91559c = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            kc.a.a("OppoDeviceIDHelper", "onServiceConnected");
            try {
                f.this.f91558b.put(iBinder);
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public f(Context context) {
        this.f91557a = context;
    }

    public final String a() {
        try {
            Signature[] signatureArr = this.f91557a.getPackageManager().getPackageInfo(this.f91557a.getPackageName(), 64).signatures;
            if (signatureArr != null && signatureArr.length > 0) {
                byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(signatureArr[0].toByteArray());
                StringBuilder sb2 = new StringBuilder();
                for (byte b10 : bArrDigest) {
                    sb2.append(Integer.toHexString((b10 & 255) | 256).substring(1, 3));
                }
                return sb2.toString();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }
}
