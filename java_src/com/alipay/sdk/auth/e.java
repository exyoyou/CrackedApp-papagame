package com.alipay.sdk.auth;

/* JADX INFO: loaded from: classes7.dex */
final class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f7108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ AuthActivity f7109c;

    e(AuthActivity authActivity, String str) {
        this.f7109c = authActivity;
        this.f7108b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f7109c.f7093b.loadUrl("javascript:" + this.f7108b);
        } catch (Exception unused) {
        }
    }
}
