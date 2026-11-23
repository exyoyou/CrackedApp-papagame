package com.byazt.gi;

import android.annotation.SuppressLint;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.byazt.gq.t;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public interface ve extends IInterface {

    @com.byazt.zqa.c(c = {0, 1, 678, 24})
    public static abstract class c extends Binder implements ve {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static String f14543c = "";

        /* JADX INFO: renamed from: com.byazt.gi.ve$c$c, reason: collision with other inner class name */
        @com.byazt.zqa.c(c = {0, 1, 678, 1241})
        private static class C0320c implements ve {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public IBinder f14544c;

            public C0320c(IBinder iBinder) {
                if (TextUtils.isEmpty(c.f14543c)) {
                    JSONObject jSONObjectI = t.i();
                    String unused = c.f14543c = com.byazt.i.ve.c(jSONObjectI.optString("r"), jSONObjectI.optString("s"));
                }
                this.f14544c = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f14544c;
            }

            @Override // com.byazt.gi.ve
            public void c(tt ttVar, uj ujVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(c.f14543c);
                    if (ttVar != null) {
                        parcelObtain.writeInt(1);
                        ttVar.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(ujVar != null ? ujVar.asBinder() : null);
                    this.f14544c.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        @Override // android.os.Binder
        @SuppressLint({"WrongConstant"})
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1598968902) {
                parcel2.writeString(f14543c);
                return true;
            }
            if (i10 != 1) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel.enforceInterface(f14543c);
            c(parcel.readInt() != 0 ? tt.CREATOR.createFromParcel(parcel) : null, uj.c.c(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        public static ve c(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f14543c);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ve)) {
                return (ve) iInterfaceQueryLocalInterface;
            }
            return new C0320c(iBinder);
        }
    }

    void c(tt ttVar, uj ujVar) throws RemoteException;
}
