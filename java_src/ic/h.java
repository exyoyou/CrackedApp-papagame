package ic;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Parcel;
import com.bun.miitmdid.content.StringValues;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f91565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f91566b = new LinkedBlockingQueue<>(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ServiceConnection f91567c = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                kc.a.a("ZTEDeviceIDHelper", "onServiceConnected");
                h.this.f91566b.put(iBinder);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public h(Context context) {
        this.f91565a = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.StringBuilder] */
    public String a() throws Throwable {
        ?? BindService;
        Exception e10;
        ?? r10;
        Throwable th;
        String str;
        Exception e11;
        Context context;
        ServiceConnection serviceConnection;
        String str2;
        try {
            Intent intent = new Intent();
            intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
            intent.setAction(StringValues.ACTION_BINDTO_MSASERVICE);
            intent.putExtra(StringValues.PARAM_BIND_PKGNAME, this.f91565a.getPackageName());
            BindService = this.f91565a.bindService(intent, this.f91567c, 1);
            kc.a.a("ZTEDeviceIDHelper", "getOAID isBind=" + BindService);
            try {
                if (BindService == 0) {
                    return "";
                }
                try {
                    IBinder iBinderTake = this.f91566b.take();
                    Parcel parcelObtain = Parcel.obtain();
                    Parcel parcelObtain2 = Parcel.obtain();
                    try {
                        try {
                            parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                            iBinderTake.transact(1, parcelObtain, parcelObtain2, 0);
                            parcelObtain2.readException();
                            String string = parcelObtain2.readString();
                            parcelObtain.recycle();
                            str = string;
                        } catch (Throwable th2) {
                            parcelObtain.recycle();
                            parcelObtain2.recycle();
                            throw th2;
                        }
                    } catch (Exception e12) {
                        e12.printStackTrace();
                        parcelObtain.recycle();
                        str = null;
                    }
                    parcelObtain2.recycle();
                    try {
                        try {
                            kc.a.a("ZTEDeviceIDHelper", "getOAID oaid:" + str);
                            context = this.f91565a;
                            serviceConnection = this.f91567c;
                            str2 = str;
                        } catch (Exception e13) {
                            e11 = e13;
                            e11.printStackTrace();
                            context = this.f91565a;
                            serviceConnection = this.f91567c;
                            str2 = str;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        this.f91565a.unbindService(this.f91567c);
                        throw th;
                    }
                } catch (Exception e14) {
                    str = "";
                    e11 = e14;
                    e11.printStackTrace();
                    context = this.f91565a;
                    serviceConnection = this.f91567c;
                    str2 = str;
                    context.unbindService(serviceConnection);
                    r10 = str2;
                    return r10;
                } catch (Throwable th4) {
                    th = th4;
                    this.f91565a.unbindService(this.f91567c);
                    throw th;
                }
                context.unbindService(serviceConnection);
                r10 = str2;
                return r10;
            } catch (Exception e15) {
                e10 = e15;
                kc.a.a("ZTEDeviceIDHelper", "getOAID hw service not found");
                e10.printStackTrace();
                r10 = BindService;
            }
        } catch (Exception e16) {
            BindService = "";
            e10 = e16;
        }
    }
}
