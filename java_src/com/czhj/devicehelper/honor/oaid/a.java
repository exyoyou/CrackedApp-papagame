package com.czhj.devicehelper.honor.oaid;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes9.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: com.czhj.devicehelper.honor.oaid.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0542a extends Binder implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final String f25355a = "com.hihonor.cloudservice.oaid.IOAIDCallBack";

        public AbstractBinderC0542a() {
            attachInterface(this, f25355a);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface(f25355a);
                int i12 = parcel.readInt();
                long j10 = parcel.readLong();
                boolean z10 = parcel.readInt() != 0;
                a(i12, j10, z10, parcel.readFloat(), parcel.readDouble(), parcel.readString());
            } else {
                if (i10 != 2) {
                    if (i10 != 1598968902) {
                        return super.onTransact(i10, parcel, parcel2, i11);
                    }
                    parcel2.writeString(f25355a);
                    return true;
                }
                parcel.enforceInterface(f25355a);
                a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void a(int i10, long j10, boolean z10, float f10, double d10, String str);

    void a(int i10, Bundle bundle);
}
