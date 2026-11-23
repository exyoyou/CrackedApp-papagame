package com.switfpass.pay.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.webkit.WebSettings;
import com.switfpass.pay.bean.RequestMsg;

/* JADX INFO: loaded from: classes2.dex */
public class QQWapPayWebView extends BasePayActivity {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f82493c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WebViewEx f82494d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f82495e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f82496f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f82497g;

    public static void startActivity(Activity activity, String str) {
        Intent intent = new Intent();
        intent.putExtra("url", str);
        intent.setClass(activity, QQWapPayWebView.class);
        activity.startActivityForResult(intent, 1);
    }

    @Override // com.switfpass.pay.activity.BasePayActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        WebSettings.ZoomDensity zoomDensity;
        super.onCreate(bundle);
        this.f82493c = true;
        WebViewEx webViewEx = new WebViewEx(this);
        this.f82494d = webViewEx;
        WebSettings settings = webViewEx.getSettings();
        settings.setLoadWithOverviewMode(true);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i10 = displayMetrics.densityDpi;
        if (i10 == 120) {
            zoomDensity = WebSettings.ZoomDensity.CLOSE;
        } else {
            if (i10 != 160) {
                if (i10 == 240) {
                    zoomDensity = WebSettings.ZoomDensity.FAR;
                }
                settings.setUseWideViewPort(true);
                settings.setLoadWithOverviewMode(true);
                this.f82494d.setWebChromeClient(new h());
                this.f82494d.setWebViewClient(new g(this));
                this.f82497g = getIntent().getStringExtra("url");
                this.f82495e = getIntent().getStringExtra("tokenId");
                this.f82496f = getIntent().getStringExtra("outTradeNo");
                this.f82494d.loadUrl(this.f82497g);
                this.f82494d.getSettings().setJavaScriptEnabled(true);
            }
            zoomDensity = WebSettings.ZoomDensity.MEDIUM;
        }
        settings.setDefaultZoom(zoomDensity);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        this.f82494d.setWebChromeClient(new h());
        this.f82494d.setWebViewClient(new g(this));
        this.f82497g = getIntent().getStringExtra("url");
        this.f82495e = getIntent().getStringExtra("tokenId");
        this.f82496f = getIntent().getStringExtra("outTradeNo");
        this.f82494d.loadUrl(this.f82497g);
        this.f82494d.getSettings().setJavaScriptEnabled(true);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        a();
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        a();
        if (this.f82493c) {
            this.f82493c = false;
        } else {
            String str = this.f82495e;
            String str2 = this.f82496f;
            RequestMsg requestMsg = new RequestMsg();
            requestMsg.setTokenId(str);
            requestMsg.setOutTradeNo(str2);
            com.switfpass.pay.service.d.d().i(requestMsg, new f(this));
        }
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    public static void startActivity(Activity activity, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.putExtra("url", str);
        intent.putExtra("tokenId", str2);
        intent.putExtra("outTradeNo", str3);
        intent.setClass(activity, QQWapPayWebView.class);
        activity.startActivityForResult(intent, 1);
    }
}
