package com.switfpass.pay.utils;

import android.widget.Toast;

/* JADX INFO: loaded from: classes2.dex */
final class j1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ i1 f82806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82807c;

    j1(i1 i1Var, Object obj) {
        this.f82806b = i1Var;
        this.f82807c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Toast.makeText(this.f82806b.f82801a.f82745b, this.f82807c.toString(), 1).show();
    }
}
