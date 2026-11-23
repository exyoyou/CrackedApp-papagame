package com.sigmob.sdk.mraid;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.czhj.volley.toolbox.StringUtil;
import java.io.ByteArrayInputStream;

/* JADX INFO: loaded from: classes3.dex */
public class w extends com.sigmob.sdk.base.l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f81120c = "MraidWebViewClient";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f81121d;

    private WebResourceResponse a() {
        return new WebResourceResponse("text/javascript", "UTF-8", new ByteArrayInputStream(b().getBytes()));
    }

    private String b() {
        if (this.f81121d == null) {
            this.f81121d = j.INJECTION_JAVASCRIPT.replaceAll("xxx", StringUtil.decode(StringUtil.f25852s));
        }
        return this.f81121d;
    }

    @Override // com.sigmob.sdk.base.l, android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView view, String url) {
        if (com.sigmob.sdk.base.utils.y.a(url)) {
            return null;
        }
        if (com.sigmob.sdk.base.l.a(url)) {
            try {
                return a();
            } catch (Exception e10) {
                com.sigmob.sdk.base.utils.k.f(f81120c, "shouldInterceptRequest: error = " + e10.getMessage(), new Object[0]);
            }
        }
        return super.shouldInterceptRequest(view, url);
    }
}
