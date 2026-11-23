package com.switfpass.pay.utils;

import android.widget.Toast;

/* JADX INFO: loaded from: classes2.dex */
final class r0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ q0 f82837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82838c;

    r0(q0 q0Var, Object obj) {
        this.f82837b = q0Var;
        this.f82838c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Toast.makeText(this.f82837b.f82833a.f82745b, this.f82838c.toString(), 1).show();
    }
}
