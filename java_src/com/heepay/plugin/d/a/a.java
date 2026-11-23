package com.heepay.plugin.d.a;

import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes5.dex */
public class a extends WebChromeClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f34305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f34306b;

    public a(String str, Class cls) {
        this.f34305a = new c(str, cls);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        jsResult.confirm();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return super.onJsConfirm(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        jsPromptResult.confirm(this.f34305a.a(webView, str2));
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i10) {
        if (i10 <= 25) {
            this.f34306b = false;
        } else if (!this.f34306b) {
            webView.loadUrl(this.f34305a.a());
            this.f34306b = true;
            com.heepay.plugin.c.c.b("---->", " inject js interface completely on progress " + i10);
        }
        super.onProgressChanged(webView, i10);
    }
}
