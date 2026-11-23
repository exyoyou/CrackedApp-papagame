package com.czhj.devicehelper.honor.oaid;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes9.dex */
public interface b extends IInterface {

    public static abstract class a extends Binder implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final String f25356a = "com.hihonor.cloudservice.oaid.IOAIDService";

        /* JADX INFO: renamed from: com.czhj.devicehelper.honor.oaid.b$a$a, reason: collision with other inner class name */
        public static class C0543a implements b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f25357a;

            public C0543a(IBinder iBinder) {
                this.f25357a = iBinder;
            }

            @Override // com.czhj.devicehelper.honor.oaid.b
            public void a(com.czhj.devicehelper.honor.oaid.a.AbstractBinderC0542a abstractBinderC0542a) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcel = null;
                try {
                    Parcel parcelObtain2 = Parcel.obtain();
                    try {
                        parcelObtain2.writeInterfaceToken(a.f25356a);
                        if (abstractBinderC0542a == null) {
                            abstractBinderC0542a = null;
                        }
                        parcelObtain2.writeStrongBinder(abstractBinderC0542a);
                        this.f25357a.transact(2, parcelObtain2, parcelObtain, 0);
                        parcelObtain.readException();
                        parcelObtain.recycle();
                        parcelObtain2.recycle();
                    } catch (Throwable th) {
                        th = th;
                        parcel = parcelObtain2;
                        parcelObtain.recycle();
                        parcel.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f25357a;
            }

            @Override // com.czhj.devicehelper.honor.oaid.b
            public void b(com.czhj.devicehelper.honor.oaid.a.AbstractBinderC0542a abstractBinderC0542a) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcel = null;
                try {
                    Parcel parcelObtain2 = Parcel.obtain();
                    try {
                        parcelObtain2.writeInterfaceToken(a.f25356a);
                        if (abstractBinderC0542a == null) {
                            abstractBinderC0542a = null;
                        }
                        parcelObtain2.writeStrongBinder(abstractBinderC0542a);
                        this.f25357a.transact(3, parcelObtain2, parcelObtain, 0);
                        parcelObtain.readException();
                        parcelObtain.recycle();
                        parcelObtain2.recycle();
                    } catch (Throwable th) {
                        th = th;
                        parcel = parcelObtain2;
                        parcelObtain.recycle();
                        parcel.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
    }

    void a(com.czhj.devicehelper.honor.oaid.a.AbstractBinderC0542a abstractBinderC0542a) throws RemoteException;

    void b(com.czhj.devicehelper.honor.oaid.a.AbstractBinderC0542a abstractBinderC0542a) throws RemoteException;
}
