package ic;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Parcel;
import com.asus.msa.SupplementaryDID.IDidAidlInterface;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f91533a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f91534b = new LinkedBlockingQueue<>(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ServiceConnection f91535c = new ServiceConnectionC1176a();

    /* JADX INFO: renamed from: ic.a$a, reason: collision with other inner class name */
    public class ServiceConnectionC1176a implements ServiceConnection {
        public ServiceConnectionC1176a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                a.this.f91534b.put(iBinder);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public a(Context context) {
        this.f91533a = context;
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
            intent.setAction("com.asus.msa.action.ACCESS_DID");
            intent.setComponent(new ComponentName("com.asus.msa.SupplementaryDID", "com.asus.msa.SupplementaryDID.SupplementaryDIDService"));
            BindService = this.f91533a.bindService(intent, this.f91535c, 1);
            try {
                try {
                    if (BindService == 0) {
                        return "";
                    }
                    try {
                        IBinder iBinderTake = this.f91534b.take();
                        Parcel parcelObtain = Parcel.obtain();
                        Parcel parcelObtain2 = Parcel.obtain();
                        try {
                            parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                            iBinderTake.transact(3, parcelObtain, parcelObtain2, 0);
                            parcelObtain2.readException();
                            string = parcelObtain2.readString();
                        } catch (Throwable th) {
                            parcelObtain.recycle();
                            parcelObtain2.recycle();
                            th.printStackTrace();
                            string = null;
                        }
                        parcelObtain.recycle();
                        parcelObtain2.recycle();
                        try {
                            kc.a.a("ASUSDeviceIDHelper", "getOAID oaid:" + string);
                            context = this.f91533a;
                            serviceConnection = this.f91535c;
                            BindService = string;
                        } catch (Exception e12) {
                            e11 = e12;
                            e11.printStackTrace();
                            context = this.f91533a;
                            serviceConnection = this.f91535c;
                            BindService = string;
                        }
                    } catch (Exception e13) {
                        string = "";
                        e11 = e13;
                        e11.printStackTrace();
                        context = this.f91533a;
                        serviceConnection = this.f91535c;
                        BindService = string;
                        context.unbindService(serviceConnection);
                        r10 = BindService;
                        return r10;
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
                kc.a.a("ASUSDeviceIDHelper", "getOAID asus service not found;");
                e10.printStackTrace();
                r10 = BindService;
            }
            this.f91533a.unbindService(this.f91535c);
            throw th;
        } catch (Exception e15) {
            BindService = "";
            e10 = e15;
        }
    }
}
