package com.switfpass.pay.activity;

/* JADX INFO: loaded from: classes2.dex */
final class l0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ k0 f82525b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82526c;

    l0(k0 k0Var, Object obj) {
        this.f82525b = k0Var;
        this.f82526c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f82526c != null) {
            this.f82525b.f82523a.showToastInfo(this.f82526c.toString());
        }
        d8.a.b(6, 8, "支付状态：该笔订单未支付");
        this.f82525b.f82523a.finish();
    }
}
