package com.xinzhu.overmind.client;

import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes8.dex */
public interface c extends IInterface {

    public static class a implements c {
        @Override // com.xinzhu.overmind.client.c
        public IBinder acquireContentProviderClient(ProviderInfo providerInfo) throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.client.c
        public void bindApplication() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.client.c
        public void finishActivity(IBinder iBinder) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.client.c
        public IBinder getActivityThread() throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.client.c
        public void handleNewIntent(IBinder iBinder, Intent intent) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.client.c
        public IBinder peekService(Intent intent) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.client.c
        public void restartJobService(String str) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.client.c
        public void stopService(Intent intent) throws RemoteException {
        }
    }

    public static abstract class b extends Binder implements c {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.client.IOverlord";
        static final int TRANSACTION_acquireContentProviderClient = 5;
        static final int TRANSACTION_bindApplication = 2;
        static final int TRANSACTION_finishActivity = 7;
        static final int TRANSACTION_getActivityThread = 1;
        static final int TRANSACTION_handleNewIntent = 8;
        static final int TRANSACTION_peekService = 6;
        static final int TRANSACTION_restartJobService = 4;
        static final int TRANSACTION_stopService = 3;

        private static class a implements c {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static c f89188c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f89189b;

            a(IBinder iBinder) {
                this.f89189b = iBinder;
            }

            @Override // com.xinzhu.overmind.client.c
            public IBinder acquireContentProviderClient(ProviderInfo providerInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (providerInfo != null) {
                        parcelObtain.writeInt(1);
                        providerInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f89189b.transact(5, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().acquireContentProviderClient(providerInfo);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f89189b;
            }

            @Override // com.xinzhu.overmind.client.c
            public void bindApplication() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (this.f89189b.transact(2, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().bindApplication();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.client.c
            public void finishActivity(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (this.f89189b.transact(7, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().finishActivity(iBinder);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.client.c
            public IBinder getActivityThread() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f89189b.transact(1, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getActivityThread();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.client.c
            public void handleNewIntent(IBinder iBinder, Intent intent) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f89189b.transact(8, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().handleNewIntent(iBinder, intent);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.client.c
            public IBinder peekService(Intent intent) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f89189b.transact(6, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().peekService(intent);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.client.c
            public void restartJobService(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (this.f89189b.transact(4, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().restartJobService(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.client.c
            public void stopService(Intent intent) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f89189b.transact(3, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().stopService(intent);
                    }
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

        public static c asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }

        public static c getDefaultImpl() {
            return a.f89188c;
        }

        public static boolean setDefaultImpl(c cVar) {
            if (a.f89188c != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (cVar == null) {
                return false;
            }
            a.f89188c = cVar;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i10) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    IBinder activityThread = getActivityThread();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(activityThread);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    bindApplication();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopService(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    restartJobService(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    IBinder iBinderAcquireContentProviderClient = acquireContentProviderClient(parcel.readInt() != 0 ? (ProviderInfo) ProviderInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iBinderAcquireContentProviderClient);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    IBinder iBinderPeekService = peekService(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iBinderPeekService);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    finishActivity(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    handleNewIntent(parcel.readStrongBinder(), parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    IBinder acquireContentProviderClient(ProviderInfo providerInfo) throws RemoteException;

    void bindApplication() throws RemoteException;

    void finishActivity(IBinder iBinder) throws RemoteException;

    IBinder getActivityThread() throws RemoteException;

    void handleNewIntent(IBinder iBinder, Intent intent) throws RemoteException;

    IBinder peekService(Intent intent) throws RemoteException;

    void restartJobService(String str) throws RemoteException;

    void stopService(Intent intent) throws RemoteException;
}
