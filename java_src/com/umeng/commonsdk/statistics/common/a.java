package com.umeng.commonsdk.statistics.common;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: com.umeng.commonsdk.statistics.common.a$a, reason: collision with other inner class name */
    private static final class C1059a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f85354a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f85355b;

        C1059a(String str, boolean z10) {
            this.f85354a = str;
            this.f85355b = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String b() {
            return this.f85354a;
        }

        public boolean a() {
            return this.f85355b;
        }
    }

    private static final class b implements ServiceConnection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f85356a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f85357b;

        private b() {
            this.f85356a = false;
            this.f85357b = new LinkedBlockingQueue<>(1);
        }

        public IBinder a() throws InterruptedException {
            if (this.f85356a) {
                throw new IllegalStateException();
            }
            this.f85356a = true;
            return this.f85357b.take();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f85357b.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static String a(Context context) {
        try {
            C1059a c1059aC = c(context);
            if (c1059aC != null && !c1059aC.a()) {
                return c1059aC.b();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static String b(Context context) {
        try {
            C1059a c1059aC = c(context);
            if (c1059aC == null) {
                return null;
            }
            return c1059aC.b();
        } catch (Exception unused) {
            return null;
        }
    }

    private static C1059a c(Context context) throws Exception {
        if (Looper.myLooper() == Looper.getMainLooper() || com.umeng.commonsdk.utils.b.a().a(context, na.d.f94512e, 0) == null) {
            return null;
        }
        b bVar = new b();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage(na.d.f94510c);
        try {
            if (!context.bindService(intent, bVar, 1)) {
                throw new IOException("Google Play connection failed");
            }
            try {
                c cVar = new c(bVar.a());
                boolean zA = cVar.a(true);
                C1059a c1059a = new C1059a(zA ? "" : cVar.a(), zA);
                context.unbindService(bVar);
                return c1059a;
            } catch (Exception e10) {
                throw e10;
            }
        } catch (Throwable th) {
            context.unbindService(bVar);
            throw th;
        }
    }

    private static final class c implements IInterface {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private IBinder f85358a;

        public c(IBinder iBinder) {
            this.f85358a = iBinder;
        }

        public String a() throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f85358a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f85358a;
        }

        public boolean a(boolean z10) throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(z10 ? 1 : 0);
                this.f85358a.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }
}
