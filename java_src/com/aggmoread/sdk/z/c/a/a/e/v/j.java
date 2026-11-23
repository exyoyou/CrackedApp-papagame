package com.aggmoread.sdk.z.c.a.a.e.v;

import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;

/* JADX INFO: loaded from: classes7.dex */
public class j extends Application {
    public j(Context context) {
        attachBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Context getApplicationContext() {
        return this;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getPackageName() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("proxyContext", "ProxyApplication#getPackageName enter," + super.getPackageName());
        return super.getPackageName();
    }

    @Override // android.app.Application, android.content.ContextWrapper, android.content.Context
    public void registerComponentCallbacks(ComponentCallbacks componentCallbacks) {
        super.registerComponentCallbacks(componentCallbacks);
    }
}
