package com.xinzhu.overmind.server.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes8.dex */
public interface d extends IInterface {

    public static class a implements d {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public int installPackageAsExist(MindPackageSettings mindPackageSettings, int i10) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public int installPackageAsUser(MindPackageSettings mindPackageSettings, int i10) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public int uninstallPackageAsUser(MindPackageSettings mindPackageSettings, boolean z10, int i10) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.pm.d
        public int updatePackage(MindPackageSettings mindPackageSettings) throws RemoteException {
            return 0;
        }
    }

    public static abstract class b extends Binder implements d {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.pm.IMindPackageInstallerService";
        static final int TRANSACTION_installPackageAsExist = 2;
        static final int TRANSACTION_installPackageAsUser = 1;
        static final int TRANSACTION_uninstallPackageAsUser = 3;
        static final int TRANSACTION_updatePackage = 4;

        private static class a implements d {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static d f89898c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f89899b;

            a(IBinder iBinder) {
                this.f89899b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f89899b;
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public int installPackageAsExist(MindPackageSettings mindPackageSettings, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (mindPackageSettings != null) {
                        parcelObtain.writeInt(1);
                        mindPackageSettings.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    if (!this.f89899b.transact(2, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().installPackageAsExist(mindPackageSettings, i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public int installPackageAsUser(MindPackageSettings mindPackageSettings, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (mindPackageSettings != null) {
                        parcelObtain.writeInt(1);
                        mindPackageSettings.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    if (!this.f89899b.transact(1, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().installPackageAsUser(mindPackageSettings, i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String u() {
                return b.DESCRIPTOR;
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public int uninstallPackageAsUser(MindPackageSettings mindPackageSettings, boolean z10, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    int i11 = 1;
                    if (mindPackageSettings != null) {
                        parcelObtain.writeInt(1);
                        mindPackageSettings.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z10) {
                        i11 = 0;
                    }
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i10);
                    if (!this.f89899b.transact(3, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().uninstallPackageAsUser(mindPackageSettings, z10, i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.pm.d
            public int updatePackage(MindPackageSettings mindPackageSettings) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (mindPackageSettings != null) {
                        parcelObtain.writeInt(1);
                        mindPackageSettings.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f89899b.transact(4, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().updatePackage(mindPackageSettings);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static d asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof d)) ? new a(iBinder) : (d) iInterfaceQueryLocalInterface;
        }

        public static d getDefaultImpl() {
            return a.f89898c;
        }

        public static boolean setDefaultImpl(d dVar) {
            if (a.f89898c != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (dVar == null) {
                return false;
            }
            a.f89898c = dVar;
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
                int iInstallPackageAsUser = installPackageAsUser(parcel.readInt() != 0 ? MindPackageSettings.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(iInstallPackageAsUser);
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                int iInstallPackageAsExist = installPackageAsExist(parcel.readInt() != 0 ? MindPackageSettings.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(iInstallPackageAsExist);
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                int iUninstallPackageAsUser = uninstallPackageAsUser(parcel.readInt() != 0 ? MindPackageSettings.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0, parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(iUninstallPackageAsUser);
                return true;
            }
            if (i10 != 4) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            int iUpdatePackage = updatePackage(parcel.readInt() != 0 ? MindPackageSettings.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            parcel2.writeInt(iUpdatePackage);
            return true;
        }
    }

    int installPackageAsExist(MindPackageSettings mindPackageSettings, int i10) throws RemoteException;

    int installPackageAsUser(MindPackageSettings mindPackageSettings, int i10) throws RemoteException;

    int uninstallPackageAsUser(MindPackageSettings mindPackageSettings, boolean z10, int i10) throws RemoteException;

    int updatePackage(MindPackageSettings mindPackageSettings) throws RemoteException;
}
