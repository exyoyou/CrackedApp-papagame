package com.umeng.analytics.pro;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
class bb implements ax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f84367a = "";

    private static final class a implements ServiceConnection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f84368a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f84369b;

        public IBinder a() throws InterruptedException {
            if (this.f84368a) {
                throw new IllegalStateException();
            }
            this.f84368a = true;
            return this.f84369b.poll(5L, TimeUnit.SECONDS);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f84369b.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        private a() {
            this.f84368a = false;
            this.f84369b = new LinkedBlockingQueue<>();
        }
    }

    private static final class b extends com.umeng.analytics.pro.b.AbstractBinderC1052b {
        @Override // com.umeng.analytics.pro.b
        public void a(int i10, long j10, boolean z10, float f10, double d10, String str) throws RemoteException {
        }

        private b() {
        }

        @Override // com.umeng.analytics.pro.b
        public void a(int i10, Bundle bundle) throws RemoteException {
            if (i10 != 0 || bundle == null) {
                return;
            }
            String unused = bb.f84367a = bundle.getString(c.f84371b);
        }
    }

    interface c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f84370a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f84371b = "oa_id_flag";
    }

    bb() {
    }

    @Override // com.umeng.analytics.pro.ax
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        a aVar = new a();
        Intent intent = new Intent();
        intent.setAction("com.hihonor.id.HnOaIdService");
        intent.setPackage("com.hihonor.id");
        if (context.bindService(intent, aVar, 1)) {
            try {
                com.umeng.analytics.pro.c.b.a(aVar.a()).a(new b());
                return f84367a;
            } catch (Exception unused) {
            } finally {
                context.unbindService(aVar);
            }
        }
        return null;
    }
}
