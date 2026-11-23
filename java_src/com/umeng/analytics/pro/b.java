package com.umeng.analytics.pro;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes9.dex */
public interface b extends IInterface {

    public static class a implements b {
        @Override // com.umeng.analytics.pro.b
        public void a(int i10, long j10, boolean z10, float f10, double d10, String str) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.umeng.analytics.pro.b
        public void a(int i10, Bundle bundle) throws RemoteException {
        }
    }

    void a(int i10, long j10, boolean z10, float f10, double d10, String str) throws RemoteException;

    void a(int i10, Bundle bundle) throws RemoteException;

    /* JADX INFO: renamed from: com.umeng.analytics.pro.b$b, reason: collision with other inner class name */
    public static abstract class AbstractBinderC1052b extends Binder implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final int f84362a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final int f84363b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String f84364c = "com.hihonor.cloudservice.oaid.IOAIDCallBack";

        /* JADX INFO: renamed from: com.umeng.analytics.pro.b$b$a */
        private static class a implements b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static b f84365a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f84366b;

            a(IBinder iBinder) {
                this.f84366b = iBinder;
            }

            public String a() {
                return AbstractBinderC1052b.f84364c;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f84366b;
            }

            @Override // com.umeng.analytics.pro.b
            public void a(int i10, long j10, boolean z10, float f10, double d10, String str) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC1052b.f84364c);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeLong(j10);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    parcelObtain.writeFloat(f10);
                    parcelObtain.writeDouble(d10);
                    parcelObtain.writeString(str);
                    try {
                        if (this.f84366b.transact(1, parcelObtain, parcelObtain2, 0) || AbstractBinderC1052b.a() == null) {
                            parcelObtain2.readException();
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        } else {
                            AbstractBinderC1052b.a().a(i10, j10, z10, f10, d10, str);
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        }
                    } catch (Throwable th) {
                        th = th;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // com.umeng.analytics.pro.b
            public void a(int i10, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC1052b.f84364c);
                    parcelObtain.writeInt(i10);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f84366b.transact(2, parcelObtain, parcelObtain2, 0) && AbstractBinderC1052b.a() != null) {
                        AbstractBinderC1052b.a().a(i10, bundle);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public AbstractBinderC1052b() {
            attachInterface(this, f84364c);
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f84364c);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface(f84364c);
                a(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 2) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(f84364c);
                return true;
            }
            parcel.enforceInterface(f84364c);
            a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }

        public static boolean a(b bVar) {
            if (a.f84365a != null || bVar == null) {
                return false;
            }
            a.f84365a = bVar;
            return true;
        }

        public static b a() {
            return a.f84365a;
        }
    }
}
