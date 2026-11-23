package com.switfpass.pay.activity;

/* JADX INFO: loaded from: classes2.dex */
final class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ d f82511b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82512c;

    e(d dVar, Object obj) {
        this.f82511b = dVar;
        this.f82512c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f82511b.f82507a.U.dismiss();
        if (this.f82512c != null) {
            this.f82511b.f82507a.showToastInfo(this.f82512c.toString());
        }
        d8.a.b(6, 8, "支付状态：未支付");
        this.f82511b.f82507a.finish();
    }
}
