package com.alipay.sdk.util;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.alipay.android.app.IAlixPay;

/* JADX INFO: loaded from: classes7.dex */
final class g implements ServiceConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ f f7242b;

    g(f fVar) {
        this.f7242b = fVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f7242b.f7237c) {
            this.f7242b.f7236b = IAlixPay.Stub.asInterface(iBinder);
            this.f7242b.f7237c.notify();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f7242b.f7236b = null;
    }
}
