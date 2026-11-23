package com.xinzhu.overmind.server.user;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: com.xinzhu.overmind.server.user.a$a, reason: collision with other inner class name */
    public static class C1136a implements a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.user.a
        public MindUserInfo createUser(int i10) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.user.a
        public void deleteUser(int i10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.user.a
        public boolean exists(int i10) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.user.a
        public MindUserInfo getUserInfo(int i10) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.user.a
        public List<MindUserInfo> getUsers() throws RemoteException {
            return null;
        }
    }

    public static abstract class b extends Binder implements a {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.user.IMindUserManagerService";
        static final int TRANSACTION_createUser = 3;
        static final int TRANSACTION_deleteUser = 5;
        static final int TRANSACTION_exists = 2;
        static final int TRANSACTION_getUserInfo = 1;
        static final int TRANSACTION_getUsers = 4;

        /* JADX INFO: renamed from: com.xinzhu.overmind.server.user.a$b$a, reason: collision with other inner class name */
        private static class C1137a implements a {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static a f89954c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f89955b;

            C1137a(IBinder iBinder) {
                this.f89955b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f89955b;
            }

            @Override // com.xinzhu.overmind.server.user.a
            public MindUserInfo createUser(int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.f89955b.transact(3, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().createUser(i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? MindUserInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.user.a
            public void deleteUser(int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.f89955b.transact(5, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().deleteUser(i10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.user.a
            public boolean exists(int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.f89955b.transact(2, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().exists(i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.user.a
            public MindUserInfo getUserInfo(int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.f89955b.transact(1, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getUserInfo(i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? MindUserInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.user.a
            public List<MindUserInfo> getUsers() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f89955b.transact(4, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getUsers();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(MindUserInfo.CREATOR);
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

        public static a asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C1137a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a getDefaultImpl() {
            return C1137a.f89954c;
        }

        public static boolean setDefaultImpl(a aVar) {
            if (C1137a.f89954c != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (aVar == null) {
                return false;
            }
            C1137a.f89954c = aVar;
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
                MindUserInfo userInfo = getUserInfo(parcel.readInt());
                parcel2.writeNoException();
                if (userInfo != null) {
                    parcel2.writeInt(1);
                    userInfo.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zExists = exists(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(zExists ? 1 : 0);
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                MindUserInfo mindUserInfoCreateUser = createUser(parcel.readInt());
                parcel2.writeNoException();
                if (mindUserInfoCreateUser != null) {
                    parcel2.writeInt(1);
                    mindUserInfoCreateUser.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (i10 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                List<MindUserInfo> users = getUsers();
                parcel2.writeNoException();
                parcel2.writeTypedList(users);
                return true;
            }
            if (i10 != 5) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            deleteUser(parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }

    MindUserInfo createUser(int i10) throws RemoteException;

    void deleteUser(int i10) throws RemoteException;

    boolean exists(int i10) throws RemoteException;

    MindUserInfo getUserInfo(int i10) throws RemoteException;

    List<MindUserInfo> getUsers() throws RemoteException;
}
