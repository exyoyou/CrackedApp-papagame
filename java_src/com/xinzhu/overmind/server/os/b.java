package com.xinzhu.overmind.server.os;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface b extends IInterface {

    public static class a implements b {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.b
        public List<MindShareFileInfo> listFiles(String str) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.os.b
        public ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException {
            return null;
        }
    }

    /* JADX INFO: renamed from: com.xinzhu.overmind.server.os.b$b, reason: collision with other inner class name */
    public static abstract class AbstractBinderC1134b extends Binder implements b {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.os.IMindFileShareService";
        static final int TRANSACTION_listFiles = 1;
        static final int TRANSACTION_openAsParcelFile = 2;

        /* JADX INFO: renamed from: com.xinzhu.overmind.server.os.b$b$a */
        private static class a implements b {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static b f89720c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f89721b;

            a(IBinder iBinder) {
                this.f89721b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f89721b;
            }

            @Override // com.xinzhu.overmind.server.os.b
            public List<MindShareFileInfo> listFiles(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC1134b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.f89721b.transact(1, parcelObtain, parcelObtain2, 0) && AbstractBinderC1134b.getDefaultImpl() != null) {
                        return AbstractBinderC1134b.getDefaultImpl().listFiles(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(MindShareFileInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.os.b
            public ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC1134b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.f89721b.transact(2, parcelObtain, parcelObtain2, 0) && AbstractBinderC1134b.getDefaultImpl() != null) {
                        return AbstractBinderC1134b.getDefaultImpl().openAsParcelFile(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String u() {
                return AbstractBinderC1134b.DESCRIPTOR;
            }
        }

        public AbstractBinderC1134b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static b asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        public static b getDefaultImpl() {
            return a.f89720c;
        }

        public static boolean setDefaultImpl(b bVar) {
            if (a.f89720c != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (bVar == null) {
                return false;
            }
            a.f89720c = bVar;
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
                List<MindShareFileInfo> listListFiles = listFiles(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(listListFiles);
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
            ParcelFileDescriptor parcelFileDescriptorOpenAsParcelFile = openAsParcelFile(parcel.readString());
            parcel2.writeNoException();
            if (parcelFileDescriptorOpenAsParcelFile != null) {
                parcel2.writeInt(1);
                parcelFileDescriptorOpenAsParcelFile.writeToParcel(parcel2, 1);
            } else {
                parcel2.writeInt(0);
            }
            return true;
        }
    }

    List<MindShareFileInfo> listFiles(String str) throws RemoteException;

    ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException;
}
