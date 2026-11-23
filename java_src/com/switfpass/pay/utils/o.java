package com.switfpass.pay.utils;

import android.widget.Toast;

/* JADX INFO: loaded from: classes2.dex */
final class o implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ n f82823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82824c;

    o(n nVar, Object obj) {
        this.f82823b = nVar;
        this.f82824c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Toast.makeText(this.f82823b.f82819a.f82745b, this.f82824c.toString(), 1).show();
    }
}
