package com.xinzhu.overmind.server.os;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes8.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: com.xinzhu.overmind.server.os.a$a, reason: collision with other inner class name */
    public static class C1132a implements a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.a
        public MindDeviceInfo getDeviceInfo(int i10) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.a
        public void setVirtualDeviceStatus(boolean z10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.os.a
        public void updateMindDeviceInfo(int i10, MindDeviceInfo mindDeviceInfo) throws RemoteException {
        }
    }

    public static abstract class b extends Binder implements a {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.os.IMindDeviceInfoService";
        static final int TRANSACTION_getDeviceInfo = 1;
        static final int TRANSACTION_setVirtualDeviceStatus = 2;
        static final int TRANSACTION_updateMindDeviceInfo = 3;

        /* JADX INFO: renamed from: com.xinzhu.overmind.server.os.a$b$a, reason: collision with other inner class name */
        private static class C1133a implements a {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static a f89718c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f89719b;

            C1133a(IBinder iBinder) {
                this.f89719b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f89719b;
            }

            @Override // com.xinzhu.overmind.server.os.a
            public MindDeviceInfo getDeviceInfo(int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.f89719b.transact(1, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getDeviceInfo(i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? MindDeviceInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.os.a
            public void setVirtualDeviceStatus(boolean z10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    if (this.f89719b.transact(2, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().setVirtualDeviceStatus(z10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String u() {
                return b.DESCRIPTOR;
            }

            @Override // com.xinzhu.overmind.server.os.a
            public void updateMindDeviceInfo(int i10, MindDeviceInfo mindDeviceInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (mindDeviceInfo != null) {
                        parcelObtain.writeInt(1);
                        mindDeviceInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f89719b.transact(3, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().updateMindDeviceInfo(i10, mindDeviceInfo);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static a asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C1133a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a getDefaultImpl() {
            return C1133a.f89718c;
        }

        public static boolean setDefaultImpl(a aVar) {
            if (C1133a.f89718c != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (aVar == null) {
                return false;
            }
            C1133a.f89718c = aVar;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                MindDeviceInfo deviceInfo = getDeviceInfo(parcel.readInt());
                parcel2.writeNoException();
                if (deviceInfo != null) {
                    parcel2.writeInt(1);
                    deviceInfo.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                setVirtualDeviceStatus(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 3) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            updateMindDeviceInfo(parcel.readInt(), parcel.readInt() != 0 ? MindDeviceInfo.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
    }

    MindDeviceInfo getDeviceInfo(int i10) throws RemoteException;

    void setVirtualDeviceStatus(boolean z10) throws RemoteException;

    void updateMindDeviceInfo(int i10, MindDeviceInfo mindDeviceInfo) throws RemoteException;
}
