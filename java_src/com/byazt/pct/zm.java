package com.byazt.pct;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 124, 482})
public class zm extends c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ boolean f18674i = true;
    public String sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.nl.uj f18675x;

    @Override // com.byazt.pct.c
    public String c() {
        return this.f18675x.getUrl();
    }

    @Override // com.byazt.pct.c
    public Context getContext(da daVar) {
        Context context = daVar.f18632n;
        if (context != null) {
            return context;
        }
        com.byazt.nl.uj ujVar = daVar.f18628c;
        if (ujVar != null) {
            View view = ujVar.getView();
            if (view != null) {
                return view.getContext();
            }
            WebView webView = daVar.f18628c.getWebView();
            if (webView != null) {
                return webView.getContext();
            }
        }
        throw new IllegalStateException("WebView cannot be null!");
    }

    @Override // com.byazt.pct.c
    @JavascriptInterface
    public void invokeMethod(String str) {
        super.invokeMethod(str);
    }

    public void n() {
        com.byazt.nl.uj ujVar = this.f18675x;
        if (ujVar != null) {
            ujVar.removeJavascriptInterface(this.sp);
        }
    }

    @SuppressLint({"AddJavascriptInterface"})
    public void uj() {
        if (!f18674i && this.f18675x == null) {
            throw new AssertionError();
        }
        com.byazt.nl.uj ujVar = this.f18675x;
        if (ujVar != null) {
            ujVar.addJavascriptInterface(this, this.sp);
        }
    }

    @Override // com.byazt.pct.c
    public void ve() {
        super.ve();
        n();
    }

    @Override // com.byazt.pct.c
    @SuppressLint({"JavascriptInterface", "AddJavascriptInterface"})
    public void c(da daVar) {
        this.f18675x = daVar.f18628c;
        this.sp = daVar.ve;
        if (daVar.yp) {
            return;
        }
        uj();
    }

    @Override // com.byazt.pct.c
    public void c(String str, m mVar) {
        if (mVar != null && !TextUtils.isEmpty(mVar.f18645x)) {
            String str2 = mVar.f18645x;
            c(str, String.format("javascript:(function(){   const iframe = document.querySelector(atob('%s'));   if (iframe && iframe.contentWindow) {        iframe.contentWindow.postMessage(%s, atob('%s'));   }})()", Base64.encodeToString(String.format("iframe[src=\"%s\"", str2).getBytes(), 2), str, Base64.encodeToString(str2.getBytes(), 2)));
            return;
        }
        super.c(str, mVar);
    }

    @Override // com.byazt.pct.c
    public void c(String str) {
        c(str, "javascript:" + this.sp + "._handleMessageFromToutiao(" + str + ")");
    }

    private void c(String str, String str2) {
        if (this.f18624n || TextUtils.isEmpty(str2) || this.f18624n) {
            return;
        }
        try {
            this.f18675x.evaluateJavascript(str2, null);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }
}
