package com.switfpass.pay.activity;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: loaded from: classes2.dex */
final class y extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ WebViewEx f82551a;

    private y(WebViewEx webViewEx) {
        this.f82551a = webViewEx;
    }

    @Override // android.webkit.WebViewClient
    public final void doUpdateVisitedHistory(WebView webView, String str, boolean z10) {
        WebViewEx.a(this.f82551a, webView);
        super.doUpdateVisitedHistory(webView, str, z10);
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        WebViewEx.a(this.f82551a, webView);
        super.onLoadResource(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        WebViewEx.a(this.f82551a, webView);
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        WebViewEx.a(this.f82551a, webView);
        super.onPageStarted(webView, str, bitmap);
    }

    /* synthetic */ y(WebViewEx webViewEx, byte b10) {
        this(webViewEx);
    }
}
