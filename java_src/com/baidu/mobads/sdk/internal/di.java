package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.baidu.mobads.sdk.api.BaiduHybridAdViewListener;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IXHybridAdRenderer;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class di extends bj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WebView f7856a;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private BaiduHybridAdViewListener f7857t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private IXHybridAdRenderer f7858u;

    public di(WebView webView) {
        super(webView.getContext());
        this.f7856a = webView;
        webView.removeJavascriptInterface("searchBoxJavaBridge_");
        this.f7856a.removeJavascriptInterface("accessibility");
        this.f7856a.removeJavascriptInterface("accessibilityTraversal");
        this.f7856a.getSettings().setAllowContentAccess(false);
        this.f7856a.getSettings().setSavePassword(false);
        this.f7856a.getSettings().setAllowFileAccess(false);
    }

    public void a(BaiduHybridAdViewListener baiduHybridAdViewListener) {
        this.f7857t = baiduHybridAdViewListener;
    }

    public boolean b(WebView webView, String str) {
        IXHybridAdRenderer iXHybridAdRenderer = this.f7858u;
        if (iXHybridAdRenderer == null) {
            return false;
        }
        return iXHybridAdRenderer.shouldOverrideUrlLoading(webView, str);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void h() {
        IXHybridAdRenderer iXHybridAdRenderer = (IXHybridAdRenderer) av.a(z.f8069k, bu.a(this.f7573i), (Class<?>[]) new Class[]{Context.class}, this.f7573i);
        this.f7858u = iXHybridAdRenderer;
        this.f7577m = iXHybridAdRenderer;
        if (this.f7578n) {
            return;
        }
        a();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void q() {
        super.q();
        BaiduHybridAdViewListener baiduHybridAdViewListener = this.f7857t;
        if (baiduHybridAdViewListener != null) {
            baiduHybridAdViewListener.onAdShow(0, null);
        }
    }

    public void a(WebView webView, String str, Bitmap bitmap) {
        IXHybridAdRenderer iXHybridAdRenderer = this.f7858u;
        if (iXHybridAdRenderer != null) {
            iXHybridAdRenderer.onPageStarted(webView, str, bitmap);
        }
    }

    public void a(WebView webView, String str) {
        IXHybridAdRenderer iXHybridAdRenderer = this.f7858u;
        if (iXHybridAdRenderer != null) {
            iXHybridAdRenderer.onPageFinished(webView, str);
        }
    }

    public void a(WebView webView, int i10, String str, String str2) {
        IXHybridAdRenderer iXHybridAdRenderer = this.f7858u;
        if (iXHybridAdRenderer != null) {
            iXHybridAdRenderer.onReceivedError(webView, i10, str, str2);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void h(IOAdEvent iOAdEvent) {
        super.h(iOAdEvent);
        BaiduHybridAdViewListener baiduHybridAdViewListener = this.f7857t;
        if (baiduHybridAdViewListener != null) {
            baiduHybridAdViewListener.onAdClick(0, null);
        }
    }

    public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        IXHybridAdRenderer iXHybridAdRenderer = this.f7858u;
        if (iXHybridAdRenderer != null) {
            iXHybridAdRenderer.onReceivedSslError(webView, sslErrorHandler, sslError);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a() {
        if (this.f7858u == null) {
            this.f7578n = false;
            return;
        }
        this.f7578n = true;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(IAdInterListener.AdReqParam.PROD, IAdInterListener.AdProdType.PRODUCT_JSSDK);
            this.f7858u.createProdHandler(jSONObject3);
            m();
            if (!TextUtils.isEmpty(this.f7581q)) {
                jSONObject.put("appid", this.f7581q);
            }
            jSONObject.put(IAdInterListener.AdReqParam.PROD, IAdInterListener.AdProdType.PRODUCT_JSSDK);
            jSONObject2.put("timeout", 10000);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        this.f7858u.loadAd(jSONObject, jSONObject2);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(IOAdEvent iOAdEvent) {
        this.f7858u.setCustomerWebView(this.f7856a);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(String str, int i10, String str2) {
        super.a(str, i10, str2);
        BaiduHybridAdViewListener baiduHybridAdViewListener = this.f7857t;
        if (baiduHybridAdViewListener != null) {
            baiduHybridAdViewListener.onAdFailed(0, "", str);
        }
    }
}
