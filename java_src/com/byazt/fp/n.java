package com.byazt.fp;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes6.dex */
public interface n extends IInterface {

    @com.byazt.zqa.c(c = {0, 1, 218, 151})
    public static abstract class c extends Binder implements n {

        /* JADX INFO: renamed from: com.byazt.fp.n$c$c, reason: collision with other inner class name */
        @com.byazt.zqa.c(c = {0, 1, 218, 156})
        private static class C0311c implements n {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public IBinder f14224c;

            public C0311c(IBinder iBinder) {
                this.f14224c = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f14224c;
            }

            @Override // com.byazt.fp.n
            public String c(String str, String str2, String str3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    this.f14224c.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static n c(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof n)) ? new C0311c(iBinder) : (n) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 1) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString("com.heytap.openid.IOpenID");
                return true;
            }
            parcel.enforceInterface("com.heytap.openid.IOpenID");
            String strC = c(parcel.readString(), parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeString(strC);
            return true;
        }
    }

    String c(String str, String str2, String str3) throws RemoteException;
}
