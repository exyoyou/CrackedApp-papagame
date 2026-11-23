package com.wf.transfer.core;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public interface d extends IInterface {
    public static final String C1 = "com.wf.transfer.core.IFileSource";

    public static class a implements d {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.wf.transfer.core.d
        public List<FileInfo> listFiles(String str) throws RemoteException {
            return null;
        }

        @Override // com.wf.transfer.core.d
        public ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException {
            return null;
        }
    }

    public static abstract class b extends Binder implements d {
        static final int TRANSACTION_listFiles = 1;
        static final int TRANSACTION_openAsParcelFile = 2;

        private static class a implements d {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f85817b;

            a(IBinder iBinder) {
                this.f85817b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f85817b;
            }

            @Override // com.wf.transfer.core.d
            public List<FileInfo> listFiles(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(d.C1);
                    parcelObtain.writeString(str);
                    this.f85817b.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(FileInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.wf.transfer.core.d
            public ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(d.C1);
                    parcelObtain.writeString(str);
                    this.f85817b.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (ParcelFileDescriptor) c.c(parcelObtain2, ParcelFileDescriptor.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String u() {
                return d.C1;
            }
        }

        public b() {
            attachInterface(this, d.C1);
        }

        public static d asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(d.C1);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof d)) ? new a(iBinder) : (d) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(d.C1);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(d.C1);
                return true;
            }
            if (i10 == 1) {
                List<FileInfo> listListFiles = listFiles(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(listListFiles);
            } else {
                if (i10 != 2) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                ParcelFileDescriptor parcelFileDescriptorOpenAsParcelFile = openAsParcelFile(parcel.readString());
                parcel2.writeNoException();
                c.d(parcel2, parcelFileDescriptorOpenAsParcelFile, 1);
            }
            return true;
        }
    }

    public static class c {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T c(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void d(Parcel parcel, T t10, int i10) {
            if (t10 == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                t10.writeToParcel(parcel, i10);
            }
        }
    }

    List<FileInfo> listFiles(String str) throws RemoteException;

    ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException;
}
