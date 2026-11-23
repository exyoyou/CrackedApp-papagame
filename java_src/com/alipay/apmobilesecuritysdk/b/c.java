package com.alipay.apmobilesecuritysdk.b;

import c0.d;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ b f6996b;

    public c(b bVar) {
        this.f6996b = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f6996b.b();
        } catch (Throwable th) {
            d.c(th);
        }
    }
}
