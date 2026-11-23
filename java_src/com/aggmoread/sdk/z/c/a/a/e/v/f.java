package com.aggmoread.sdk.z.c.a.a.e.v;

import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes7.dex */
public class f extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<Context> f5296a;

    public f(Context context) {
        super(context);
        this.f5296a = new WeakReference<>(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public PackageManager getPackageManager() {
        PackageManager packageManagerA = com.aggmoread.sdk.z.c.a.a.d.b.n.a();
        if (packageManagerA == null) {
            return super.getPackageManager();
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("pm_impl", "hc getPackageManager");
        return packageManagerA;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void sendBroadcast(Intent intent) {
        com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.sendBroadcast(intent);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.startActivity(intent);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ComponentName startService(Intent intent) {
        return com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.startService(intent);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent, @Nullable Bundle bundle) {
        Context context = this.f5296a.get();
        if (context != null) {
            context.startActivity(intent, bundle);
        } else {
            com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.startActivity(intent);
        }
    }
}
