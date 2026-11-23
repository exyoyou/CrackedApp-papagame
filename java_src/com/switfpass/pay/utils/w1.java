package com.switfpass.pay.utils;

import android.widget.Toast;

/* JADX INFO: loaded from: classes2.dex */
final class w1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ v1 f82857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82858c;

    w1(v1 v1Var, Object obj) {
        this.f82857b = v1Var;
        this.f82858c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Toast.makeText(this.f82857b.f82854a.f82745b, this.f82858c.toString(), 1).show();
    }
}
