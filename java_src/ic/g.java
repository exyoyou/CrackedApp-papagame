package ic;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Parcel;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f91561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f91562b = new LinkedBlockingQueue<>(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ServiceConnection f91563c = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                g.this.f91562b.put(iBinder);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public g(Context context) {
        this.f91561a = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public String a() throws Throwable {
        ?? BindService;
        Exception e10;
        ?? r10;
        String string;
        Exception e11;
        Context context;
        ServiceConnection serviceConnection;
        try {
            Intent intent = new Intent();
            intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
            BindService = this.f91561a.bindService(intent, this.f91563c, 1);
            try {
                try {
                    if (BindService == 0) {
                        return "";
                    }
                    try {
                        IBinder iBinderTake = this.f91562b.take();
                        Parcel parcelObtain = Parcel.obtain();
                        Parcel parcelObtain2 = Parcel.obtain();
                        try {
                            parcelObtain.writeInterfaceToken("com.samsung.android.deviceidservice.IDeviceIdService");
                            iBinderTake.transact(1, parcelObtain, parcelObtain2, 0);
                            parcelObtain2.readException();
                            string = parcelObtain2.readString();
                        } catch (Throwable th) {
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                            th.printStackTrace();
                            string = null;
                        }
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        try {
                            kc.a.a("SamsungDeviceIDHelper", "getOAID oaid:" + string);
                            context = this.f91561a;
                            serviceConnection = this.f91563c;
                            BindService = string;
                        } catch (Exception e12) {
                            e11 = e12;
                            e11.printStackTrace();
                            context = this.f91561a;
                            serviceConnection = this.f91563c;
                            BindService = string;
                        }
                    } catch (Exception e13) {
                        string = "";
                        e11 = e13;
                    } catch (Throwable th2) {
                        BindService = "";
                        th = th2;
                    }
                    context.unbindService(serviceConnection);
                    r10 = BindService;
                    return r10;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Exception e14) {
                e10 = e14;
                kc.a.a("SamsungDeviceIDHelper", "getOAID service not found");
                e10.printStackTrace();
                r10 = BindService;
            }
            this.f91561a.unbindService(this.f91563c);
            throw th;
        } catch (Exception e15) {
            BindService = "";
            e10 = e15;
        }
    }
}
