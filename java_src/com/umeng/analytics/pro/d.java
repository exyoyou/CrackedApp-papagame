package com.umeng.analytics.pro;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes9.dex */
public interface d extends IInterface {

    public static class a implements d {
        @Override // com.umeng.analytics.pro.d
        public String a() throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.umeng.analytics.pro.d
        public String b(String str) throws RemoteException {
            return null;
        }

        @Override // com.umeng.analytics.pro.d
        public String a(String str) throws RemoteException {
            return null;
        }
    }

    String a() throws RemoteException;

    String a(String str) throws RemoteException;

    String b(String str) throws RemoteException;

    public static abstract class b extends Binder implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final int f84613a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final int f84614b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final int f84615c = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final String f84616d = "com.samsung.android.deviceidservice.IDeviceIdService";

        private static class a implements d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static d f84617a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f84618b;

            a(IBinder iBinder) {
                this.f84618b = iBinder;
            }

            @Override // com.umeng.analytics.pro.d
            public String a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f84616d);
                    if (!this.f84618b.transact(1, parcelObtain, parcelObtain2, 0) && b.b() != null) {
                        return b.b().a();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f84618b;
            }

            public String b() {
                return b.f84616d;
            }

            @Override // com.umeng.analytics.pro.d
            public String b(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f84616d);
                    parcelObtain.writeString(str);
                    if (!this.f84618b.transact(3, parcelObtain, parcelObtain2, 0) && b.b() != null) {
                        return b.b().b(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.umeng.analytics.pro.d
            public String a(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f84616d);
                    parcelObtain.writeString(str);
                    if (!this.f84618b.transact(2, parcelObtain, parcelObtain2, 0) && b.b() != null) {
                        return b.b().a(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, f84616d);
        }

        public static d a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f84616d);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof d)) ? new a(iBinder) : (d) iInterfaceQueryLocalInterface;
        }

        public static d b() {
            return a.f84617a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface(f84616d);
                String strA = a();
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(f84616d);
                String strA2 = a(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(strA2);
                return true;
            }
            if (i10 != 3) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(f84616d);
                return true;
            }
            parcel.enforceInterface(f84616d);
            String strB = b(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeString(strB);
            return true;
        }

        public static boolean a(d dVar) {
            if (a.f84617a != null || dVar == null) {
                return false;
            }
            a.f84617a = dVar;
            return true;
        }
    }
}
