package com.heepay.plugin.d;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.heepay.plugin.activity.HyNotityActivity;
import com.heepay.plugin.c.d;

/* JADX INFO: loaded from: classes5.dex */
public class c extends com.heepay.plugin.d.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HyNotityActivity f34316a;

    public c(HyNotityActivity hyNotityActivity) {
        super(hyNotityActivity);
        this.f34316a = hyNotityActivity;
    }

    @Override // com.heepay.plugin.d.a.b, android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (((HyNotityActivity) webView.getContext()).f34255f.equals("10") && webView.getVisibility() == 8) {
            webView.setVisibility(0);
        }
        d.a("----->onPageFinished" + str);
        com.heepay.plugin.c.c.a("---->onPageFinished:" + str);
    }

    @Override // com.heepay.plugin.d.a.b, android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        HyNotityActivity hyNotityActivity;
        boolean z10;
        d.a("----->onPageStarted" + str);
        com.heepay.plugin.c.c.a("---->onPageStarted:" + str);
        if (!str.startsWith("wei_xin:".replace("_", "")) && !str.startsWith("ali_payqr:".replace("_", "")) && !str.startsWith("ali_pays:".replace("_", ""))) {
            com.heepay.plugin.c.c.b("setWebViewClient_isNeedQuery", "-1--" + this.f34316a.f34259j);
            super.onPageStarted(webView, str, bitmap);
            return;
        }
        if (this.f34316a.f34255f.equals("10")) {
            hyNotityActivity = this.f34316a;
            z10 = false;
        } else {
            hyNotityActivity = this.f34316a;
            z10 = true;
        }
        hyNotityActivity.f34259j = z10;
        if (((HyNotityActivity) webView.getContext()).f34263n) {
            ((HyNotityActivity) webView.getContext()).h();
            com.heepay.plugin.c.c.b("----->关闭启动loading", "---");
        }
        this.f34316a.b(str);
        com.heepay.plugin.c.c.b("setWebViewClient_isNeedQuery", "-2--" + this.f34316a.f34259j);
        webView.stopLoading();
    }

    @Override // com.heepay.plugin.d.a.b, android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i10, String str, String str2) {
        super.onReceivedError(webView, i10, str, str2);
        d.a("----->onReceivedError" + str2);
        com.heepay.plugin.c.c.a("---->onReceivedError:" + str2 + ",errorCode:" + i10);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("---->onReceivedError:");
        sb2.append(str2);
        com.heepay.plugin.c.c.a(sb2.toString());
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(23)
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        d.a("----->onReceivedHttpError:" + webView.getUrl());
        com.heepay.plugin.c.c.a("---->onReceivedHttpError:" + webView.getUrl() + ",errorCode:" + webResourceResponse.getStatusCode());
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        d.a("----->shouldOverrideUrlLoading" + str);
        com.heepay.plugin.c.c.a("---->shouldOverrideUrlLoading:" + str);
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
