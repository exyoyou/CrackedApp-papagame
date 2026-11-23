package com.alipay.sdk.auth;

import android.webkit.SslErrorHandler;

/* JADX INFO: loaded from: classes7.dex */
final class g implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ SslErrorHandler f7111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ AuthActivity.b f7112c;

    g(AuthActivity.b bVar, SslErrorHandler sslErrorHandler) {
        this.f7112c = bVar;
        this.f7111b = sslErrorHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.alipay.sdk.widget.d.b(AuthActivity.this, "安全警告", "由于您的设备缺少根证书，将无法校验该访问站点的安全性，可能存在风险，请选择是否继续？", "继续", new h(this), "退出", new i(this));
    }
}
