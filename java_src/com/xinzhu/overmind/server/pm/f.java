package com.xinzhu.overmind.server.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.xinzhu.overmind.entity.pm.InstalledModule;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface f extends IInterface {

    public static class a implements f {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.f
        public boolean f(String str) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.pm.f
        public boolean l() throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.pm.f
        public List<InstalledModule> o() throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.f
        public void p(String str, boolean z10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.pm.f
        public void q(boolean z10) throws RemoteException {
        }
    }

    public static abstract class b extends Binder implements f {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.pm.IMindXposedManagerService";
        static final int TRANSACTION_getInstalledModules = 5;
        static final int TRANSACTION_isModuleEnable = 3;
        static final int TRANSACTION_isXPEnable = 1;
        static final int TRANSACTION_setModuleEnable = 4;
        static final int TRANSACTION_setXPEnable = 2;

        private static class a implements f {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static f f89902c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f89903b;

            a(IBinder iBinder) {
                this.f89903b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f89903b;
            }

            @Override // com.xinzhu.overmind.server.pm.f
            public boolean f(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.f89903b.transact(3, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().f(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.f
            public boolean l() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f89903b.transact(1, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().l();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.f
            public List<InstalledModule> o() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f89903b.transact(5, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().o();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(InstalledModule.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.f
            public void p(String str, boolean z10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    if (this.f89903b.transact(4, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().p(str, z10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.f
            public void q(boolean z10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    if (this.f89903b.transact(2, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().q(z10);
                    }
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

        public static f asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof f)) ? new a(iBinder) : (f) iInterfaceQueryLocalInterface;
        }

        public static f getDefaultImpl() {
            return a.f89902c;
        }

        public static boolean setDefaultImpl(f fVar) {
            if (a.f89902c != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (fVar == null) {
                return false;
            }
            a.f89902c = fVar;
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
                boolean zL = l();
                parcel2.writeNoException();
                parcel2.writeInt(zL ? 1 : 0);
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                q(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zF = f(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zF ? 1 : 0);
                return true;
            }
            if (i10 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                p(parcel.readString(), parcel.readInt() != 0);
                parcel2.writeNoException();
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
            List<InstalledModule> listO = o();
            parcel2.writeNoException();
            parcel2.writeTypedList(listO);
            return true;
        }
    }

    boolean f(String str) throws RemoteException;

    boolean l() throws RemoteException;

    List<InstalledModule> o() throws RemoteException;

    void p(String str, boolean z10) throws RemoteException;

    void q(boolean z10) throws RemoteException;
}
