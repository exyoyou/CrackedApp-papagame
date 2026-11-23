package com.byazt.uk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes6.dex */
public interface ve extends IInterface {
    void c(int i10) throws RemoteException;

    void c(int i10, uj ujVar) throws RemoteException;

    boolean c(String str) throws RemoteException;

    boolean c(String str, String str2) throws RemoteException;

    int tt(String str) throws RemoteException;

    @com.byazt.zqa.c(c = {0, 1, 87, 24})
    public static abstract class c extends Binder implements ve {
        public c() {
            attachInterface(this, "com.bytedance.pangle.IPackageManager");
        }

        public static ve c(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.pangle.IPackageManager");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ve)) ? new C0449c(iBinder) : (ve) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface("com.bytedance.pangle.IPackageManager");
                boolean zC = c(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zC ? 1 : 0);
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface("com.bytedance.pangle.IPackageManager");
                int iTt = tt(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(iTt);
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface("com.bytedance.pangle.IPackageManager");
                boolean zC2 = c(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zC2 ? 1 : 0);
                return true;
            }
            if (i10 == 4) {
                parcel.enforceInterface("com.bytedance.pangle.IPackageManager");
                c(parcel.readInt(), uj.c.c(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 5) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString("com.bytedance.pangle.IPackageManager");
                return true;
            }
            parcel.enforceInterface("com.bytedance.pangle.IPackageManager");
            c(parcel.readInt());
            parcel2.writeNoException();
            return true;
        }

        public static ve c() {
            return C0449c.f20613c;
        }

        /* JADX INFO: renamed from: com.byazt.uk.ve$c$c, reason: collision with other inner class name */
        @com.byazt.zqa.c(c = {0, 1, 87, 1241})
        private static class C0449c implements ve {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static ve f20613c;
            public IBinder tt;

            public C0449c(IBinder iBinder) {
                this.tt = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.tt;
            }

            @Override // com.byazt.uk.ve
            public boolean c(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.IPackageManager");
                    parcelObtain.writeString(str);
                    if (!this.tt.transact(1, parcelObtain, parcelObtain2, 0) && c.c() != null) {
                        return c.c().c(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.uk.ve
            public int tt(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.IPackageManager");
                    parcelObtain.writeString(str);
                    if (!this.tt.transact(2, parcelObtain, parcelObtain2, 0) && c.c() != null) {
                        return c.c().tt(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.uk.ve
            public boolean c(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.IPackageManager");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.tt.transact(3, parcelObtain, parcelObtain2, 0) && c.c() != null) {
                        return c.c().c(str, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.uk.ve
            public void c(int i10, uj ujVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.IPackageManager");
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(ujVar != null ? ujVar.asBinder() : null);
                    if (!this.tt.transact(4, parcelObtain, parcelObtain2, 0) && c.c() != null) {
                        c.c().c(i10, ujVar);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.uk.ve
            public void c(int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.pangle.IPackageManager");
                    parcelObtain.writeInt(i10);
                    if (!this.tt.transact(5, parcelObtain, parcelObtain2, 0) && c.c() != null) {
                        c.c().c(i10);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
