package jc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: jc.a$a, reason: collision with other inner class name */
    public static class BinderC1196a extends Binder implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public IBinder f92108a;

        public BinderC1196a(IBinder iBinder) {
            this.f92108a = iBinder;
        }

        public void a(b bVar) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDService");
                parcelObtain.writeStrongBinder(bVar != null ? (b.a) bVar : null);
                this.f92108a.transact(3, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
            } catch (Throwable th) {
                try {
                    kc.a.b("HONORDeviceIDHelper", th.getMessage());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f92108a;
        }

        public void b(b bVar) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDService");
                parcelObtain.writeStrongBinder(bVar != null ? (b.a) bVar : null);
                this.f92108a.transact(2, parcelObtain, parcelObtain2, 0);
                kc.a.a("HONORDeviceIDHelper", "gets + " + this.f92108a);
                parcelObtain2.readException();
            } catch (Throwable th) {
                try {
                    kc.a.a("HONORDeviceIDHelper", th.getMessage());
                } finally {
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                }
            }
        }
    }
}
