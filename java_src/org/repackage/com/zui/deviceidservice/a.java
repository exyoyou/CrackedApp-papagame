package org.repackage.com.zui.deviceidservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes10.dex */
public interface a extends IInterface {
    String a() throws RemoteException;

    String a(String str) throws RemoteException;

    String b() throws RemoteException;

    String b(String str) throws RemoteException;

    boolean c() throws RemoteException;

    boolean c(String str) throws RemoteException;

    /* JADX INFO: renamed from: org.repackage.com.zui.deviceidservice.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC1231a extends Binder implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final int f96042a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final int f96043b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final int f96044c = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final int f96045d = 4;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static final int f96046e = 5;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        static final int f96047f = 6;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final String f96048g = "org.repackage.com.zui.deviceidservice.IDeviceidInterface";

        public AbstractBinderC1231a() {
            attachInterface(this, f96048g);
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f96048g);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C1232a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1598968902) {
                parcel2.writeString(f96048g);
                return true;
            }
            switch (i10) {
                case 1:
                    parcel.enforceInterface(f96048g);
                    String strA = a();
                    parcel2.writeNoException();
                    parcel2.writeString(strA);
                    return true;
                case 2:
                    parcel.enforceInterface(f96048g);
                    String strB = b();
                    parcel2.writeNoException();
                    parcel2.writeString(strB);
                    return true;
                case 3:
                    parcel.enforceInterface(f96048g);
                    boolean zC = c();
                    parcel2.writeNoException();
                    parcel2.writeInt(zC ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(f96048g);
                    String strA2 = a(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strA2);
                    return true;
                case 5:
                    parcel.enforceInterface(f96048g);
                    String strB2 = b(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strB2);
                    return true;
                case 6:
                    parcel.enforceInterface(f96048g);
                    boolean zC2 = c(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zC2 ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }

        /* JADX INFO: renamed from: org.repackage.com.zui.deviceidservice.a$a$a, reason: collision with other inner class name */
        private static class C1232a implements a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f96049b;

            C1232a(IBinder iBinder) {
                this.f96049b = iBinder;
            }

            @Override // org.repackage.com.zui.deviceidservice.a
            public String a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC1231a.f96048g);
                    this.f96049b.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f96049b;
            }

            @Override // org.repackage.com.zui.deviceidservice.a
            public String b() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC1231a.f96048g);
                    this.f96049b.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // org.repackage.com.zui.deviceidservice.a
            public boolean c() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC1231a.f96048g);
                    this.f96049b.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String u() {
                return AbstractBinderC1231a.f96048g;
            }

            @Override // org.repackage.com.zui.deviceidservice.a
            public String a(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC1231a.f96048g);
                    parcelObtain.writeString(str);
                    this.f96049b.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // org.repackage.com.zui.deviceidservice.a
            public String b(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC1231a.f96048g);
                    parcelObtain.writeString(str);
                    this.f96049b.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // org.repackage.com.zui.deviceidservice.a
            public boolean c(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC1231a.f96048g);
                    parcelObtain.writeString(str);
                    this.f96049b.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
