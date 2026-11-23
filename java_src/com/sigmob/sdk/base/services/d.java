package com.sigmob.sdk.base.services;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import com.join.mgps.receiver.BootReceiver_;

/* JADX INFO: loaded from: classes5.dex */
public class d implements f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c f79684a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    g f79685b = g.STOP;

    public d() {
        if (this.f79684a == null) {
            this.f79684a = new c();
        }
    }

    public void a(Context context) {
        com.sigmob.sdk.base.utils.g.a(context, (BroadcastReceiver) this.f79684a, new IntentFilter(BootReceiver_.f72259f), true);
    }

    public void b(Context context) {
        context.unregisterReceiver(this.f79684a);
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public boolean e() {
        a(com.sigmob.sdk.b.e());
        this.f79685b = g.RUNNING;
        return false;
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public g f() {
        return null;
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public void g() {
        b(com.sigmob.sdk.b.e());
        this.f79685b = g.STOP;
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public Error h() {
        return null;
    }
}
