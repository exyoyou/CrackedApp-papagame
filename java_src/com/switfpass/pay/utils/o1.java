package com.switfpass.pay.utils;

import android.widget.Toast;

/* JADX INFO: loaded from: classes2.dex */
final class o1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ n1 f82827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82828c;

    o1(n1 n1Var, Object obj) {
        this.f82827b = n1Var;
        this.f82828c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Toast.makeText(this.f82827b.f82821a.f82745b, this.f82828c.toString(), 1).show();
    }
}
