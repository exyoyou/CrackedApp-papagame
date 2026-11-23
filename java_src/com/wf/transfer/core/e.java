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
public interface e extends IInterface {
    public static final String D1 = "com.wf.transfer.core.IFileTransfer";

    public static class a implements e {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.wf.transfer.core.e
        public FileInfo checkFile(String str) throws RemoteException {
            return null;
        }

        @Override // com.wf.transfer.core.e
        public void copyDir(String str, String str2) throws RemoteException {
        }

        @Override // com.wf.transfer.core.e
        public void copyFile(String str, String str2) throws RemoteException {
        }

        @Override // com.wf.transfer.core.e
        public void deleteFileOrDir(String str) throws RemoteException {
        }

        @Override // com.wf.transfer.core.e
        public void initSourceBinder(String str, String str2, String str3) throws RemoteException {
        }

        @Override // com.wf.transfer.core.e
        public List<FileInfo> listFiles(String str) throws RemoteException {
            return null;
        }

        @Override // com.wf.transfer.core.e
        public ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException {
            return null;
        }
    }

    public static abstract class b extends Binder implements e {
        static final int TRANSACTION_checkFile = 2;
        static final int TRANSACTION_copyDir = 4;
        static final int TRANSACTION_copyFile = 3;
        static final int TRANSACTION_deleteFileOrDir = 5;
        static final int TRANSACTION_initSourceBinder = 7;
        static final int TRANSACTION_listFiles = 1;
        static final int TRANSACTION_openAsParcelFile = 6;

        private static class a implements e {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f85818b;

            a(IBinder iBinder) {
                this.f85818b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f85818b;
            }

            @Override // com.wf.transfer.core.e
            public FileInfo checkFile(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(e.D1);
                    parcelObtain.writeString(str);
                    this.f85818b.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (FileInfo) c.c(parcelObtain2, FileInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.wf.transfer.core.e
            public void copyDir(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(e.D1);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.f85818b.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.wf.transfer.core.e
            public void copyFile(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(e.D1);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.f85818b.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.wf.transfer.core.e
            public void deleteFileOrDir(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(e.D1);
                    parcelObtain.writeString(str);
                    this.f85818b.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.wf.transfer.core.e
            public void initSourceBinder(String str, String str2, String str3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(e.D1);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    this.f85818b.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.wf.transfer.core.e
            public List<FileInfo> listFiles(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(e.D1);
                    parcelObtain.writeString(str);
                    this.f85818b.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(FileInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.wf.transfer.core.e
            public ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(e.D1);
                    parcelObtain.writeString(str);
                    this.f85818b.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (ParcelFileDescriptor) c.c(parcelObtain2, ParcelFileDescriptor.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String u() {
                return e.D1;
            }
        }

        public b() {
            attachInterface(this, e.D1);
        }

        public static e asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(e.D1);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e)) ? new a(iBinder) : (e) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(e.D1);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(e.D1);
                return true;
            }
            switch (i10) {
                case 1:
                    List<FileInfo> listListFiles = listFiles(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listListFiles);
                    return true;
                case 2:
                    FileInfo fileInfoCheckFile = checkFile(parcel.readString());
                    parcel2.writeNoException();
                    c.d(parcel2, fileInfoCheckFile, 1);
                    return true;
                case 3:
                    copyFile(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    copyDir(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    deleteFileOrDir(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    ParcelFileDescriptor parcelFileDescriptorOpenAsParcelFile = openAsParcelFile(parcel.readString());
                    parcel2.writeNoException();
                    c.d(parcel2, parcelFileDescriptorOpenAsParcelFile, 1);
                    return true;
                case 7:
                    initSourceBinder(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
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

    FileInfo checkFile(String str) throws RemoteException;

    void copyDir(String str, String str2) throws RemoteException;

    void copyFile(String str, String str2) throws RemoteException;

    void deleteFileOrDir(String str) throws RemoteException;

    void initSourceBinder(String str, String str2, String str3) throws RemoteException;

    List<FileInfo> listFiles(String str) throws RemoteException;

    ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException;
}
