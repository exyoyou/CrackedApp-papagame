package cn.fly.commons;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import cn.fly.tools.FlyLog;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes7.dex */
public class t extends Binder implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CountDownLatch f1423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile String f1424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f1425c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f1426d;

    public t() {
        String strB = x.b("043b2cjceckEg0chWgZcjBd2cjcickObfJcjcfcbeh%e7ciccch0be7ckcjVcWchcbckddfgecddekdcWcffWeiVcb>dg");
        this.f1426d = strB;
        attachInterface(this, strB);
    }

    public void a(int i10, long j10, boolean z10, float f10, double d10, String str) {
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    public boolean b() {
        return this.f1425c;
    }

    @Override // android.os.Binder, android.os.IBinder
    public String getInterfaceDescriptor() {
        return this.f1426d;
    }

    @Override // android.os.Binder
    protected boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            parcel.enforceInterface(this.f1426d);
            a(parcel.readInt(), parcel.readLong(), parcel.readInt() > 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
        } else {
            if (i10 != 2) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(this.f1426d);
                return true;
            }
            parcel.enforceInterface(this.f1426d);
            a(parcel.readInt(), parcel.readInt() > 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
        }
        parcel2.writeNoException();
        return true;
    }

    public String a() {
        return this.f1424b;
    }

    public t a(CountDownLatch countDownLatch) {
        this.f1423a = countDownLatch;
        return this;
    }

    public void a(int i10, Bundle bundle) {
        try {
            if (bundle.containsKey(x.b("010OcjEc2cgchcbcgdeRfc3di"))) {
                this.f1424b = bundle.getString(x.b("0100cjScAcgchcbcgde+fcJdi"));
            } else if (bundle.containsKey(x.b("017%cjJc'cgchcbcgRfVchcech5hLcgeh hche"))) {
                this.f1425c = bundle.getBoolean(x.b("017^cjMcXcgchcbcg0fWchcech(h)cgeh>hche"));
            }
            CountDownLatch countDownLatch = this.f1423a;
            if (countDownLatch != null) {
                countDownLatch.countDown();
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }
}
