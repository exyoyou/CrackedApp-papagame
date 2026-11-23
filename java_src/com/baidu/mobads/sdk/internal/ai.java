package com.baidu.mobads.sdk.internal;

import android.webkit.WebView;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
class ai implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ JSONObject f7405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ WebView f7406b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ ae f7407c;

    ai(ae aeVar, JSONObject jSONObject, WebView webView) {
        this.f7407c = aeVar;
        this.f7405a = jSONObject;
        this.f7406b = webView;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f7405a == null || this.f7406b == null) {
            return;
        }
        this.f7406b.loadUrl("javascript:window.sdkCallback.userInteractCb(\"" + this.f7405a.toString().replace(x.a.f97579g, "\\\"") + "\")");
    }
}
