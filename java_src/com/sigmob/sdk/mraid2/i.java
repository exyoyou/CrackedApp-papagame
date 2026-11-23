package com.sigmob.sdk.mraid2;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.ByteArrayInputStream;

/* JADX INFO: loaded from: classes3.dex */
public class i extends com.sigmob.sdk.base.l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f81221c = "Mraid2WebViewClient";

    private WebResourceResponse a() {
        return new WebResourceResponse("text/javascript", "UTF-8", new ByteArrayInputStream(g.INJECTION_JAVASCRIPT.getBytes()));
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
                com.sigmob.sdk.base.utils.k.f(f81221c, "shouldInterceptRequest: error = " + e10.getMessage(), new Object[0]);
            }
        }
        return super.shouldInterceptRequest(view, url);
    }
}
