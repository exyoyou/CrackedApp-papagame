package com.umeng.analytics.pro;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes9.dex */
public interface c extends IInterface {

    public static class a implements c {
        @Override // com.umeng.analytics.pro.c
        public void a(int i10, long j10, boolean z10, float f10, double d10, String str) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.umeng.analytics.pro.c
        public void b(com.umeng.analytics.pro.b bVar) throws RemoteException {
        }

        @Override // com.umeng.analytics.pro.c
        public void a(com.umeng.analytics.pro.b bVar) throws RemoteException {
        }
    }

    void a(int i10, long j10, boolean z10, float f10, double d10, String str) throws RemoteException;

    void a(com.umeng.analytics.pro.b bVar) throws RemoteException;

    void b(com.umeng.analytics.pro.b bVar) throws RemoteException;

    public static abstract class b extends Binder implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final int f84507a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final int f84508b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final int f84509c = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final String f84510d = "com.hihonor.cloudservice.oaid.IOAIDService";

        private static class a implements c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static c f84511a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f84512b;

            a(IBinder iBinder) {
                this.f84512b = iBinder;
            }

            public String a() {
                return b.f84510d;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f84512b;
            }

            @Override // com.umeng.analytics.pro.c
            public void b(com.umeng.analytics.pro.b bVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f84510d);
                    parcelObtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    if (this.f84512b.transact(3, parcelObtain, parcelObtain2, 0) || b.a() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.a().b(bVar);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.umeng.analytics.pro.c
            public void a(int i10, long j10, boolean z10, float f10, double d10, String str) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f84510d);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeLong(j10);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    parcelObtain.writeFloat(f10);
                    parcelObtain.writeDouble(d10);
                    parcelObtain.writeString(str);
                    try {
                        if (this.f84512b.transact(1, parcelObtain, parcelObtain2, 0) || b.a() == null) {
                            parcelObtain2.readException();
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        } else {
                            b.a().a(i10, j10, z10, f10, d10, str);
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

            @Override // com.umeng.analytics.pro.c
            public void a(com.umeng.analytics.pro.b bVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f84510d);
                    parcelObtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    if (!this.f84512b.transact(2, parcelObtain, parcelObtain2, 0) && b.a() != null) {
                        b.a().a(bVar);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, f84510d);
        }

        public static c a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f84510d);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface(f84510d);
                a(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(f84510d);
                a(com.umeng.analytics.pro.b.AbstractBinderC1052b.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 3) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(f84510d);
                return true;
            }
            parcel.enforceInterface(f84510d);
            b(com.umeng.analytics.pro.b.AbstractBinderC1052b.a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        public static boolean a(c cVar) {
            if (a.f84511a != null || cVar == null) {
                return false;
            }
            a.f84511a = cVar;
            return true;
        }

        public static c a() {
            return a.f84511a;
        }
    }
}
