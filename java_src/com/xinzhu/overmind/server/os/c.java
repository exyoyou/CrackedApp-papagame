package com.xinzhu.overmind.server.os;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes8.dex */
public interface c extends IInterface {

    public static class a implements c {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.c
        public String solveAddNotification(String str, int i10, int i11, String str2) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.c
        public void solveCancelAllNotifications(String str, int i10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.os.c
        public String solveCancelNotification(String str, int i10, int i11, String str2) throws RemoteException {
            return null;
        }
    }

    public static abstract class b extends Binder implements c {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.os.IMindNotificationManagerService";
        static final int TRANSACTION_solveAddNotification = 1;
        static final int TRANSACTION_solveCancelAllNotifications = 3;
        static final int TRANSACTION_solveCancelNotification = 2;

        private static class a implements c {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static c f89722c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f89723b;

            a(IBinder iBinder) {
                this.f89723b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f89723b;
            }

            @Override // com.xinzhu.overmind.server.os.c
            public String solveAddNotification(String str, int i10, int i11, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeString(str2);
                    if (!this.f89723b.transact(1, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().solveAddNotification(str, i10, i11, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.os.c
            public void solveCancelAllNotifications(String str, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    if (this.f89723b.transact(3, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().solveCancelAllNotifications(str, i10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.os.c
            public String solveCancelNotification(String str, int i10, int i11, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeString(str2);
                    if (!this.f89723b.transact(2, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().solveCancelNotification(str, i10, i11, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String u() {
                return b.DESCRIPTOR;
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static c asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }

        public static c getDefaultImpl() {
            return a.f89722c;
        }

        public static boolean setDefaultImpl(c cVar) {
            if (a.f89722c != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (cVar == null) {
                return false;
            }
            a.f89722c = cVar;
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
                String strSolveAddNotification = solveAddNotification(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(strSolveAddNotification);
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                String strSolveCancelNotification = solveCancelNotification(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(strSolveCancelNotification);
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
            solveCancelAllNotifications(parcel.readString(), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }

    String solveAddNotification(String str, int i10, int i11, String str2) throws RemoteException;

    void solveCancelAllNotifications(String str, int i10) throws RemoteException;

    String solveCancelNotification(String str, int i10, int i11, String str2) throws RemoteException;
}
