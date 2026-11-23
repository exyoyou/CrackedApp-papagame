package com.switfpass.pay.activity;

/* JADX INFO: loaded from: classes2.dex */
final class z implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ BasePayActivity f82552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ int f82553c;

    z(BasePayActivity basePayActivity, int i10) {
        this.f82552b = basePayActivity;
        this.f82553c = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.switfpass.pay.utils.c0 c0Var = new com.switfpass.pay.utils.c0();
        BasePayActivity basePayActivity = this.f82552b;
        c0Var.a(basePayActivity, basePayActivity.getString(this.f82553c));
    }
}
