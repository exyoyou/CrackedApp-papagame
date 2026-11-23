package com.xinzhu.overmind.server;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes8.dex */
public interface f extends IInterface {

    public static class a implements f {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class b extends Binder implements f {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.IMindWidgetManagerService";

        private static class a implements f {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static f f89663c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f89664b;

            a(IBinder iBinder) {
                this.f89664b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f89664b;
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
            return a.f89663c;
        }

        public static boolean setDefaultImpl(f fVar) {
            if (a.f89663c != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (fVar == null) {
                return false;
            }
            a.f89663c = fVar;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }
}
