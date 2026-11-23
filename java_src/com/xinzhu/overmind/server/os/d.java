package com.xinzhu.overmind.server.os;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.storage.StorageVolume;

/* JADX INFO: loaded from: classes8.dex */
public interface d extends IInterface {

    public static class a implements d {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.d
        public Uri getUriForFile(String str) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.d
        public StorageVolume[] getVolumeList(int i10, String str, int i11, int i12) throws RemoteException {
            return null;
        }
    }

    public static abstract class b extends Binder implements d {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.os.IMindStorageManagerService";
        static final int TRANSACTION_getUriForFile = 2;
        static final int TRANSACTION_getVolumeList = 1;

        private static class a implements d {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static d f89724c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f89725b;

            a(IBinder iBinder) {
                this.f89725b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f89725b;
            }

            @Override // com.xinzhu.overmind.server.os.d
            public Uri getUriForFile(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.f89725b.transact(2, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getUriForFile(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.os.d
            public StorageVolume[] getVolumeList(int i10, String str, int i11, int i12) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    if (!this.f89725b.transact(1, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getVolumeList(i10, str, i11, i12);
                    }
                    parcelObtain2.readException();
                    return (StorageVolume[]) parcelObtain2.createTypedArray(StorageVolume.CREATOR);
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

        public static d asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof d)) ? new a(iBinder) : (d) iInterfaceQueryLocalInterface;
        }

        public static d getDefaultImpl() {
            return a.f89724c;
        }

        public static boolean setDefaultImpl(d dVar) {
            if (a.f89724c != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (dVar == null) {
                return false;
            }
            a.f89724c = dVar;
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
                StorageVolume[] volumeList = getVolumeList(parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeTypedArray(volumeList, 1);
                return true;
            }
            if (i10 != 2) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            Uri uriForFile = getUriForFile(parcel.readString());
            parcel2.writeNoException();
            if (uriForFile != null) {
                parcel2.writeInt(1);
                uriForFile.writeToParcel(parcel2, 1);
            } else {
                parcel2.writeInt(0);
            }
            return true;
        }
    }

    Uri getUriForFile(String str) throws RemoteException;

    StorageVolume[] getVolumeList(int i10, String str, int i11, int i12) throws RemoteException;
}
