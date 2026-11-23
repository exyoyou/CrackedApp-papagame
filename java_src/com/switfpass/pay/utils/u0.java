package com.switfpass.pay.utils;

import android.widget.Toast;

/* JADX INFO: loaded from: classes2.dex */
final class u0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ t0 f82850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82851c;

    u0(t0 t0Var, Object obj) {
        this.f82850b = t0Var;
        this.f82851c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Toast.makeText(this.f82850b.f82846a.f82745b, this.f82851c.toString(), 1).show();
    }
}
