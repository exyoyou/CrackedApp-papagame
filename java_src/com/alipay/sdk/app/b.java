package com.alipay.sdk.app;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alipay.sdk.util.j;

/* JADX INFO: loaded from: classes7.dex */
public final class b extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f7038a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f7040c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.alipay.sdk.widget.a f7041d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f7042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Runnable f7043f = new f(this);

    public b(Activity activity) {
        this.f7038a = activity;
        this.f7040c = new Handler(this.f7038a.getMainLooper());
    }

    private void d() {
        if (this.f7041d == null) {
            this.f7041d = new com.alipay.sdk.widget.a(this.f7038a, com.alipay.sdk.widget.a.f7251d);
        }
        this.f7041d.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        com.alipay.sdk.widget.a aVar = this.f7041d;
        if (aVar != null) {
            aVar.f();
        }
        this.f7041d = null;
    }

    public final boolean b() {
        return this.f7042e;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        f();
        this.f7040c.removeCallbacks(this.f7043f);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (this.f7041d == null) {
            this.f7041d = new com.alipay.sdk.widget.a(this.f7038a, com.alipay.sdk.widget.a.f7251d);
        }
        this.f7041d.c();
        this.f7040c.postDelayed(this.f7043f, 30000L);
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i10, String str, String str2) {
        this.f7042e = true;
        super.onReceivedError(webView, i10, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        com.alipay.sdk.app.statistic.a.c("net", com.alipay.sdk.app.statistic.c.f7070p, "证书错误");
        if (!this.f7039b) {
            this.f7038a.runOnUiThread(new c(this, sslErrorHandler));
        } else {
            sslErrorHandler.proceed();
            this.f7039b = false;
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return j.j(webView, str, this.f7038a);
    }
}
