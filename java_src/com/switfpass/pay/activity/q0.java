package com.switfpass.pay.activity;

/* JADX INFO: loaded from: classes2.dex */
final class q0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ p0 f82539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82540c;

    q0(p0 p0Var, Object obj) {
        this.f82539b = p0Var;
        this.f82540c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f82540c != null) {
            this.f82539b.f82533a.showToastInfo(this.f82540c.toString());
            this.f82539b.f82533a.finish();
        }
    }
}
