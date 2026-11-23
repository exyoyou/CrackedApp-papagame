package com.alipay.sdk.app;

import android.webkit.SslErrorHandler;

/* JADX INFO: loaded from: classes7.dex */
final class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ SslErrorHandler f7044b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ b f7045c;

    c(b bVar, SslErrorHandler sslErrorHandler) {
        this.f7045c = bVar;
        this.f7044b = sslErrorHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.alipay.sdk.widget.d.b(this.f7045c.f7038a, "安全警告", "安全连接证书校验无效，将无法保证访问数据的安全性，可能存在风险，请选择是否继续？", "继续", new d(this), "退出", new e(this));
    }
}
