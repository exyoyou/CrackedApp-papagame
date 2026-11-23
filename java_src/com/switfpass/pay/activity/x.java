package com.switfpass.pay.activity;

import android.webkit.JsPromptResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes2.dex */
final class x extends WebChromeClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ WebViewEx f82549a;

    private x(WebViewEx webViewEx) {
        this.f82549a = webViewEx;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        if ((webView instanceof WebViewEx) && this.f82549a.f(str2, jsPromptResult)) {
            return true;
        }
        return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i10) {
        WebViewEx.a(this.f82549a, webView);
        super.onProgressChanged(webView, i10);
    }

    @Override // android.webkit.WebChromeClient
    public final void onReceivedTitle(WebView webView, String str) {
        WebViewEx.a(this.f82549a, webView);
    }

    /* synthetic */ x(WebViewEx webViewEx, byte b10) {
        this(webViewEx);
    }
}
