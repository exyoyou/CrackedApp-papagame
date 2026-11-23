package com.xinzhu.overmind.server.content;

import android.database.IContentObserver;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes8.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: com.xinzhu.overmind.server.content.a$a, reason: collision with other inner class name */
    public static class C1129a implements a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.content.a
        public void notifyChange(Uri uri, IContentObserver iContentObserver, boolean z10, boolean z11, int i10, int i11) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.content.a
        public void registerContentObserver(Uri uri, boolean z10, IContentObserver iContentObserver, int i10, int i11) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.content.a
        public void unregisterContentObserver(IContentObserver iContentObserver) throws RemoteException {
        }
    }

    public static abstract class b extends Binder implements a {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.content.IMindContentService";
        static final int TRANSACTION_notifyChange = 3;
        static final int TRANSACTION_registerContentObserver = 2;
        static final int TRANSACTION_unregisterContentObserver = 1;

        /* JADX INFO: renamed from: com.xinzhu.overmind.server.content.a$b$a, reason: collision with other inner class name */
        private static class C1130a implements a {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static a f89645c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f89646b;

            C1130a(IBinder iBinder) {
                this.f89646b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f89646b;
            }

            @Override // com.xinzhu.overmind.server.content.a
            public void notifyChange(Uri uri, IContentObserver iContentObserver, boolean z10, boolean z11, int i10, int i11) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    int i12 = 1;
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iContentObserver != null ? iContentObserver.asBinder() : null);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    if (!z11) {
                        i12 = 0;
                    }
                    parcelObtain.writeInt(i12);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    try {
                        if (this.f89646b.transact(3, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                            parcelObtain2.readException();
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        } else {
                            b.getDefaultImpl().notifyChange(uri, iContentObserver, z10, z11, i10, i11);
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        }
                    } catch (Throwable th) {
                        th = th;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // com.xinzhu.overmind.server.content.a
            public void registerContentObserver(Uri uri, boolean z10, IContentObserver iContentObserver, int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    int i12 = 1;
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z10) {
                        i12 = 0;
                    }
                    parcelObtain.writeInt(i12);
                    parcelObtain.writeStrongBinder(iContentObserver != null ? iContentObserver.asBinder() : null);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.f89646b.transact(2, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().registerContentObserver(uri, z10, iContentObserver, i10, i11);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String u() {
                return b.DESCRIPTOR;
            }

            @Override // com.xinzhu.overmind.server.content.a
            public void unregisterContentObserver(IContentObserver iContentObserver) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iContentObserver != null ? iContentObserver.asBinder() : null);
                    if (this.f89646b.transact(1, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().unregisterContentObserver(iContentObserver);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static a asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C1130a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a getDefaultImpl() {
            return C1130a.f89645c;
        }

        public static boolean setDefaultImpl(a aVar) {
            if (C1130a.f89645c != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (aVar == null) {
                return false;
            }
            C1130a.f89645c = aVar;
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
                unregisterContentObserver(IContentObserver.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                registerContentObserver(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0, IContentObserver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 3) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            notifyChange(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, IContentObserver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }

    void notifyChange(Uri uri, IContentObserver iContentObserver, boolean z10, boolean z11, int i10, int i11) throws RemoteException;

    void registerContentObserver(Uri uri, boolean z10, IContentObserver iContentObserver, int i10, int i11) throws RemoteException;

    void unregisterContentObserver(IContentObserver iContentObserver) throws RemoteException;
}
