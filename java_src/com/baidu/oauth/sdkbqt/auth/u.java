package com.baidu.oauth.sdkbqt.auth;

import android.app.AlertDialog;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes6.dex */
class u extends WebChromeClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f8246a;

    u(i iVar) {
        this.f8246a = iVar;
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i10, String str2) {
        com.baidu.oauth.sdkbqt.a.d.a(str + " -- From line " + i10 + " of " + str2, new Object[0]);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        AlertDialog.Builder positiveButton = new AlertDialog.Builder(this.f8246a.getContext()).setTitle("JavaScript Message").setMessage(str2).setPositiveButton("ok", new v(this, jsResult));
        positiveButton.setCancelable(false);
        positiveButton.create();
        positiveButton.show();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        this.f8246a.post(new w(this, str2, jsPromptResult, new String[]{""}));
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i10) {
        if (this.f8246a.f8208l != null) {
            if (i10 == 100) {
                this.f8246a.f8208l.setVisibility(8);
            } else {
                if (this.f8246a.f8208l.getVisibility() == 8) {
                    this.f8246a.f8208l.setVisibility(0);
                }
                this.f8246a.f8208l.setProgress(i10);
            }
        }
        super.onProgressChanged(webView, i10);
    }
}
