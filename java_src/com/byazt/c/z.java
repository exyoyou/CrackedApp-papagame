package com.byazt.c;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes6.dex */
public interface z extends IInterface {

    @com.byazt.zqa.c(c = {0, 1, 20, 1205})
    public static abstract class c extends Binder implements z {

        /* JADX INFO: renamed from: com.byazt.c.z$c$c, reason: collision with other inner class name */
        @com.byazt.zqa.c(c = {0, 1, 20, 872})
        private static class C0277c implements z {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static z f12226c;
            public IBinder tt;

            public C0277c(IBinder iBinder) {
                this.tt = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.tt;
            }

            @Override // com.byazt.c.z
            public void c() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlCallback");
                    if (this.tt.transact(1, parcelObtain, parcelObtain2, 0) || c.tt() == null) {
                        parcelObtain2.readException();
                    } else {
                        c.tt().c();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public c() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlCallback");
        }

        public static z c(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof z)) ? new C0277c(iBinder) : (z) iInterfaceQueryLocalInterface;
        }

        public static z tt() {
            return C0277c.f12226c;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 1) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlCallback");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlCallback");
            c();
            parcel2.writeNoException();
            return true;
        }
    }

    void c() throws RemoteException;
}
