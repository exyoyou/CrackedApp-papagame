package com.byazt.jwd;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.byazt.bzd.x;
import com.byazt.nr.m;
import com.haima.hmcp.proto.GSSDK;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_B_VALUE, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<Context> f15934c;
    public boolean tt = true;
    public boolean ve = true;
    public boolean uj = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f15935n = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f15933a = true;
    public boolean sp = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f15936x = true;

    private tt(Context context) {
        this.f15934c = new WeakReference<>(context);
    }

    public static tt c(Context context) {
        return new tt(context);
    }

    public tt tt(boolean z10) {
        this.ve = z10;
        return this;
    }

    private void tt(WebView webView) {
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable th) {
            m.ve(th.toString());
        }
    }

    public tt c(boolean z10) {
        this.f15936x = z10;
        return this;
    }

    public void c(final com.byazt.nl.uj ujVar) {
        x.c(new Runnable() { // from class: com.byazt.jwd.tt.1
            @Override // java.lang.Runnable
            public void run() {
                tt.this.c(ujVar.getWebView());
            }
        });
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void c(WebView webView) {
        if (webView == null || this.f15934c.get() == null) {
            return;
        }
        tt(webView);
        WebSettings settings = webView.getSettings();
        c(settings);
        if (settings == null) {
            return;
        }
        try {
            settings.setJavaScriptEnabled(true);
        } catch (Exception e10) {
            m.c(e10);
        }
        try {
            if (this.ve) {
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
            } else {
                settings.setSupportZoom(false);
            }
        } catch (Throwable th) {
            m.c(th);
        }
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(this.uj);
        settings.setDomStorageEnabled(this.f15935n);
        settings.setAllowFileAccess(false);
        settings.setBlockNetworkImage(true ^ this.sp);
        settings.setDisplayZoomControls(false);
        if (Build.VERSION.SDK_INT < 28) {
            this.f15936x = false;
        }
        try {
            boolean z10 = this.f15936x;
            if (!z10) {
                webView.setLayerType(0, null);
            } else if (z10) {
                webView.setLayerType(2, null);
            }
        } catch (Throwable th2) {
            m.c(th2);
        }
    }

    private void c(WebSettings webSettings) {
        try {
            webSettings.setMediaPlaybackRequiresUserGesture(false);
        } catch (Throwable th) {
            m.ve(th.toString());
        }
    }

    public static String c(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || "0".equals(str2) || !str.contains("{{ad_id}}")) {
            return null;
        }
        return "javascript:(function () {    var JS_ACTLOG_URL = '" + str.replace("{{ad_id}}", str2) + "';    var head = document.getElementsByTagName('head')[0];    var script = document.createElement('script');    script.type = 'text/javascript';    script.src = JS_ACTLOG_URL;    head?.appendChild(script);})();";
    }
}
