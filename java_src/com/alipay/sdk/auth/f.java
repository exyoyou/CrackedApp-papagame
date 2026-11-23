package com.alipay.sdk.auth;

/* JADX INFO: loaded from: classes7.dex */
final class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ AuthActivity f7110b;

    f(AuthActivity authActivity) {
        this.f7110b = authActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AuthActivity.p(this.f7110b);
    }
}
