package com.kwad.sdk.liteapi.oaid.helpers;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.Keep;
import com.kwad.sdk.liteapi.LiteApiLogger;
import com.kwad.sdk.liteapi.oaid.interfaces.SamsungIDInterface;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class SamsungDeviceIDHelper {
    private static final String TAG = "SamsungDeviceIDHelper";
    private Context mContext;
    private final LinkedBlockingQueue<IBinder> linkedBlockingQueue = new LinkedBlockingQueue<>(1);
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.kwad.sdk.liteapi.oaid.helpers.SamsungDeviceIDHelper.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                SamsungDeviceIDHelper.this.linkedBlockingQueue.put(iBinder);
            } catch (Exception e10) {
                LiteApiLogger.printStackTrace(e10);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    };

    public SamsungDeviceIDHelper(Context context) {
        this.mContext = context;
    }

    public String getOAID() {
        Context context;
        ServiceConnection serviceConnection;
        String id2 = "";
        try {
            Intent intent = new Intent();
            intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
            try {
                if (this.mContext.bindService(intent, this.serviceConnection, 1)) {
                    try {
                        id2 = new SamsungIDInterface.a(this.linkedBlockingQueue.take()).getID();
                        LiteApiLogger.i(TAG, "getOAID oaid:" + id2);
                        context = this.mContext;
                        serviceConnection = this.serviceConnection;
                    } catch (Exception e10) {
                        LiteApiLogger.printStackTrace(e10);
                        context = this.mContext;
                        serviceConnection = this.serviceConnection;
                    }
                    context.unbindService(serviceConnection);
                }
            } catch (Throwable th) {
                this.mContext.unbindService(this.serviceConnection);
                throw th;
            }
        } catch (Exception e11) {
            LiteApiLogger.i(TAG, "getOAID service not found");
            LiteApiLogger.printStackTrace(e11);
        }
        return id2;
    }
}
