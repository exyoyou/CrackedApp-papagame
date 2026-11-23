package com.czhj.sdk.common.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.czhj.sdk.logger.SigmobLog;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes9.dex */
public class PlayServicesUtil {

    private static final class AdvertisingConnection implements ServiceConnection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f25658a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f25659b;

        private AdvertisingConnection() {
            this.f25658a = false;
            this.f25659b = new LinkedBlockingQueue<>(1);
        }

        IBinder a() throws InterruptedException {
            if (this.f25658a) {
                throw new IllegalStateException();
            }
            this.f25658a = true;
            return this.f25659b.take();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f25659b.put(iBinder);
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static class AdvertisingInfo {
        public final String advertisingId;
        public final boolean limitAdTracking;

        AdvertisingInfo(String str, boolean z10) {
            this.advertisingId = str;
            this.limitAdTracking = z10;
        }
    }

    private static final class AdvertisingInterface implements IInterface {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final IBinder f25660a;

        AdvertisingInterface(IBinder iBinder) {
            this.f25660a = iBinder;
        }

        String a() throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f25660a;
        }

        boolean b() throws RemoteException {
            return false;
        }
    }

    public static AdvertisingInfo getAdvertisingIdInfo(Context context) throws Exception {
        Looper.myLooper();
        Looper.getMainLooper();
        return null;
    }
}
