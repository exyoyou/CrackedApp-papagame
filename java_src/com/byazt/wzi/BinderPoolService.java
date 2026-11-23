package com.byazt.wzi;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1656, 2231})
public class BinderPoolService extends Service {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Binder f21765c = new c.BinderC0479c();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f21765c;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }
}
