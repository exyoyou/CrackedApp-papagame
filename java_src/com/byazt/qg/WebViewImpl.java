package com.byazt.qg;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Paint;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.app.NotificationCompat;
import com.alipay.sdk.authjs.a;
import com.byazt.el.SSWebView;
import com.byazt.nl.uj;
import com.byazt.nl.ve;
import com.byazt.nr.da;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CUR_UI_FPS, 1772})
public class WebViewImpl extends BaseWebView implements uj {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f19082d;
    public Map<String, c> eo;
    public final com.byazt.nl.tt or;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public volatile boolean f19083zb;

    public WebViewImpl(com.byazt.nl.tt ttVar, Context context) {
        super(c(context));
        this.f19083zb = false;
        this.or = ttVar;
        tt(context);
    }

    private void ve(Context context) {
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    @SuppressLint({"JavascriptInterface"})
    public void addJavascriptInterface(final Object obj, final String str) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.19
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (WebViewImpl.this.eo == null) {
                        WebViewImpl.this.eo = new HashMap();
                    }
                    tt ttVar = new tt(obj, str, WebViewImpl.this.or, WebViewImpl.this);
                    WebViewImpl.this.hashCode();
                    WebViewImpl.super.addJavascriptInterface(ttVar, str);
                    WebViewImpl.this.eo.put(str, ttVar);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public boolean canGoBack() {
        if (!c()) {
            return false;
        }
        try {
            return super.canGoBack();
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // android.webkit.WebView
    public boolean canGoBackOrForward(int i10) {
        try {
            return super.canGoBackOrForward(i10);
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // android.webkit.WebView
    public boolean canGoForward() {
        try {
            return super.canGoForward();
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public void clearCache(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.clearCache(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    public void clearFormData() {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.clearFormData();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public void clearHistory() {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.10
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.clearHistory();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public void clearView() {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.47
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.clearView();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, android.view.View, com.byazt.nl.uj
    public void computeScroll() {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.16
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.computeScroll();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.qg.BaseWebView, android.webkit.WebView
    public void destroy() {
        if (this.f19083zb) {
            return;
        }
        com.byazt.nl.c.c(this);
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.27
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (WebViewImpl.this.f19083zb) {
                        return;
                    }
                    WebViewImpl.this.tt();
                    if (WebViewImpl.this.eo != null) {
                        Iterator it2 = WebViewImpl.this.eo.keySet().iterator();
                        while (it2.hasNext()) {
                            WebViewImpl.super.removeJavascriptInterface((String) it2.next());
                        }
                        WebViewImpl.this.eo = null;
                    }
                    WebViewImpl.super.destroy();
                    WebViewImpl.this.hashCode();
                    WebViewImpl.this.or.hashCode();
                    WebViewImpl.this.f19083zb = true;
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public void evaluateJavascript(final String str, final ValueCallback<String> valueCallback) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.26
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.evaluateJavascript(str, valueCallback);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.qg.BaseWebView
    public WebChromeClient getChromeClient() {
        return this.ve;
    }

    @Override // com.byazt.qg.BaseWebView
    public com.byazt.el.tt getClient() {
        return this.tt;
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public int getContentHeight() {
        if (c()) {
            try {
                return super.getContentHeight();
            } catch (Throwable unused) {
                return 1;
            }
        }
        final Object obj = new Object();
        final int[] iArr = {-1};
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.7
            @Override // java.lang.Runnable
            public void run() {
                iArr[0] = WebViewImpl.super.getContentHeight();
                synchronized (obj) {
                    obj.notifyAll();
                }
            }
        });
        try {
            if (iArr[0] < 0) {
                synchronized (obj) {
                    obj.wait(5000L);
                }
            }
        } catch (InterruptedException unused2) {
        }
        return iArr[0];
    }

    @Override // com.byazt.qg.BaseWebView
    public Map<String, c> getJavascriptInterfaces() {
        return this.eo;
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public int getProgress() {
        if (c()) {
            try {
                return super.getProgress();
            } catch (Throwable unused) {
                return 100;
            }
        }
        final Object obj = new Object();
        final int[] iArr = {-1};
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.6
            @Override // java.lang.Runnable
            public void run() {
                iArr[0] = WebViewImpl.super.getProgress();
                synchronized (obj) {
                    obj.notifyAll();
                }
            }
        });
        try {
            if (iArr[0] < 0) {
                synchronized (obj) {
                    obj.wait(5000L);
                }
            }
        } catch (InterruptedException unused2) {
        }
        return iArr[0];
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public String getUrl() {
        if (c()) {
            try {
                return super.getUrl();
            } catch (Throwable unused) {
            }
        }
        com.byazt.el.tt ttVar = this.tt;
        if (ttVar != null) {
            return ttVar.tt();
        }
        return null;
    }

    @Override // com.byazt.nl.uj
    public String getUserAgentString() {
        if (c()) {
            try {
                return getSettings().getUserAgentString();
            } catch (Throwable unused) {
                return "";
            }
        }
        final Object obj = new Object();
        final String[] strArr = {""};
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.25
            @Override // java.lang.Runnable
            public void run() {
                strArr[0] = WebViewImpl.this.getSettings().getUserAgentString();
                synchronized (obj) {
                    obj.notifyAll();
                }
            }
        });
        try {
            String str = strArr[0];
            if (str == null || str.length() == 0) {
                synchronized (obj) {
                    obj.wait(5000L);
                }
            }
        } catch (InterruptedException unused2) {
        }
        return strArr[0];
    }

    @Override // com.byazt.nl.uj
    public View getView() {
        return this;
    }

    @Override // com.byazt.nl.uj
    public WebView getWebView() {
        return this;
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public void goBack() {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.goBack();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    public void goBackOrForward(final int i10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.goBackOrForward(i10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    public void goForward() {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.goForward();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.webkit.WebView
    public void loadData(final String str, final String str2, final String str3) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.56
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.loadData(str, str2, str3);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(final String str, final String str2, final String str3, final String str4, final String str5) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.58
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.setJavaScriptEnabled(str);
                    WebViewImpl.super.loadDataWithBaseURL(str, str2, str3, str4, str5);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    @TargetApi(19)
    public void loadUrl(final String str, final Map<String, String> map) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.23
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.setJavaScriptEnabled(str);
                    WebViewImpl.super.loadUrl(str, map);
                    com.byazt.el.tt ttVar = WebViewImpl.this.tt;
                    if (ttVar != null) {
                        ttVar.c(str);
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public void onPause() {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.24
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.onPause();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public void onResume() {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.4
            @Override // java.lang.Runnable
            public void run() {
                WebViewImpl.super.onResume();
            }
        });
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Pair<Boolean, Boolean> pairC;
        ve.c cVar = this.f19025h;
        return (cVar == null || (pairC = cVar.c(this, motionEvent)) == null || !((Boolean) pairC.first).booleanValue()) ? super.onTouchEvent(motionEvent) : ((Boolean) pairC.second).booleanValue();
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public void pauseTimers() {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.48
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.pauseTimers();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    public void postUrl(final String str, final byte[] bArr) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.45
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.setJavaScriptEnabled(str);
                    WebViewImpl.super.postUrl(str, bArr);
                    com.byazt.el.tt ttVar = WebViewImpl.this.tt;
                    if (ttVar != null) {
                        ttVar.c(str);
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    public void reload() {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.60
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.reload();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.view.ViewGroup, com.byazt.nl.uj
    public void removeAllViews() {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.50
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.removeAllViews();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public void removeJavascriptInterface(final String str) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.28
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (WebViewImpl.this.f19083zb) {
                        return;
                    }
                    WebViewImpl.this.hashCode();
                    WebViewImpl.super.removeJavascriptInterface(str);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public void resumeTimers() {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.49
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.resumeTimers();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setAllowFileAccess(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.46
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f19030t = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setAllowFileAccess(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setAllowFileAccessFromFileURLs(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.52
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f19024da = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setAllowFileAccessFromFileURLs(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setAllowUniversalAccessFromFileURLs(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.53
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f19026i = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setAllowUniversalAccessFromFileURLs(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.view.View, com.byazt.nl.uj
    public void setAlpha(final float f10) {
        super.setAlpha(f10);
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.44
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.setAlpha(f10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setAppCacheEnabled(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.29
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.gr = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setAppCacheEnabled(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, android.view.View, com.byazt.nl.uj
    public void setBackgroundColor(final int i10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.15
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f19028n = Integer.valueOf(i10);
                    WebViewImpl.super.setBackgroundColor(i10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setBlockNetworkImage(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.51
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.sl = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setBlockNetworkImage(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setBuiltInZoomControls(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.35
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.my = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setBuiltInZoomControls(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setCacheMode(final int i10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.22
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.zm = Integer.valueOf(i10);
                    WebViewImpl.this.getSettings().setCacheMode(i10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setDatabaseEnabled(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.42
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f19031u = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setDatabaseEnabled(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setDefaultFontSize(final int i10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.40
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f19033z = Integer.valueOf(i10);
                    WebViewImpl.this.getSettings().setDefaultFontSize(i10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setDefaultTextEncodingName(final String str) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.39
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl webViewImpl = WebViewImpl.this;
                    webViewImpl.f19027m = str;
                    webViewImpl.getSettings().setDefaultTextEncodingName(str);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setDisplayZoomControls(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.21
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.yv = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setDisplayZoomControls(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setDomStorageEnabled(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.33
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.gt = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setDomStorageEnabled(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public void setDownloadListener(final DownloadListener downloadListener) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.13
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl webViewImpl = WebViewImpl.this;
                    DownloadListener downloadListener2 = downloadListener;
                    webViewImpl.uj = downloadListener2;
                    WebViewImpl.super.setDownloadListener(downloadListener2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setJavaScriptCanOpenWindowsAutomatically(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.32
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.rl = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setJavaScriptCanOpenWindowsAutomatically(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setJavaScriptEnabled(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.20
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f19029p = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setJavaScriptEnabled(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, android.view.View, com.byazt.nl.uj
    public void setLayerType(final int i10, final Paint paint) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.17
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.setLayerType(i10, paint);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setLayoutAlgorithm(final WebSettings.LayoutAlgorithm layoutAlgorithm) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.36
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl webViewImpl = WebViewImpl.this;
                    webViewImpl.rh = layoutAlgorithm;
                    webViewImpl.getSettings().setLayoutAlgorithm(layoutAlgorithm);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setLoadWithOverviewMode(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.37
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.nu = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setLoadWithOverviewMode(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setMediaPlaybackRequiresUserGesture(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.55
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.sp = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setMediaPlaybackRequiresUserGesture(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setMixedContentMode(final int i10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.41
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.yp = Integer.valueOf(i10);
                    WebViewImpl.this.getSettings().setMixedContentMode(i10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public void setNetworkAvailable(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.12
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.md = Boolean.valueOf(z10);
                    WebViewImpl.super.setNetworkAvailable(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.view.View, com.byazt.nl.uj
    public void setOnScrollChangeListener(final View.OnScrollChangeListener onScrollChangeListener) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.57
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (Build.VERSION.SDK_INT >= 23) {
                        WebViewImpl webViewImpl = WebViewImpl.this;
                        View.OnScrollChangeListener onScrollChangeListener2 = onScrollChangeListener;
                        webViewImpl.f19022a = onScrollChangeListener2;
                        WebViewImpl.super.setOnScrollChangeListener(onScrollChangeListener2);
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, android.view.View, com.byazt.nl.uj
    public void setOverScrollMode(final int i10) {
        super.setOverScrollMode(i10);
        da.tt().post(new Runnable() { // from class: com.byazt.qg.WebViewImpl.18
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.setOverScrollMode(i10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setSavePassword(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.54
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.f19032x = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setSavePassword(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setSupportZoom(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.30
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.qy = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setSupportZoom(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.ve
    public void setTouchEventListener(ve.c cVar) {
        this.f19025h = cVar;
    }

    @Override // com.byazt.nl.uj
    public void setUseWideViewPort(final boolean z10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.31
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.gu = Boolean.valueOf(z10);
                    WebViewImpl.this.getSettings().setUseWideViewPort(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.nl.uj
    public void setUserAgentString(final String str) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.38
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.getSettings().setUserAgentString(str);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.view.View, com.byazt.nl.uj
    public void setVisibility(final int i10) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.43
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.setVisibility(i10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public void setWebChromeClient(final WebChromeClient webChromeClient) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.14
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl webViewImpl = WebViewImpl.this;
                    WebChromeClient webChromeClient2 = webChromeClient;
                    webViewImpl.ve = webChromeClient2;
                    WebViewImpl.super.setWebChromeClient(webChromeClient2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public void setWebViewClient(final WebViewClient webViewClient) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.11
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewClient webViewClientC = webViewClient;
                    if (webViewClientC == null) {
                        webViewClientC = new SSWebView.c();
                    } else if (webViewClientC instanceof com.byazt.el.tt) {
                        webViewClientC = ((com.byazt.el.tt) webViewClientC).c();
                    }
                    WebViewImpl.this.tt = new com.byazt.el.tt(webViewClientC);
                    WebViewImpl webViewImpl = WebViewImpl.this;
                    WebViewImpl.super.setWebViewClient(webViewImpl.tt);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.59
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.super.stopLoading();
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setJavaScriptEnabled(String str) {
        WebSettings settings;
        try {
            if (TextUtils.isEmpty(str) || (settings = getSettings()) == null || f19082d) {
                return;
            }
            if (Uri.parse(str).getScheme().equals("file")) {
                settings.setJavaScriptEnabled(false);
            } else {
                settings.setJavaScriptEnabled(true);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.webkit.WebView, com.byazt.nl.uj
    public void loadUrl(final String str) {
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.34
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewImpl.this.setJavaScriptEnabled(str);
                    WebViewImpl.super.loadUrl(str);
                    com.byazt.el.tt ttVar = WebViewImpl.this.tt;
                    if (ttVar != null) {
                        ttVar.c(str);
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void uj() {
        try {
            WebSettings settings = getSettings();
            if (settings != null) {
                settings.setSavePassword(false);
            }
        } catch (Throwable unused) {
        }
    }

    public WebViewImpl(com.byazt.nl.tt ttVar, Context context, AttributeSet attributeSet) {
        super(c(context), attributeSet);
        this.f19083zb = false;
        this.or = ttVar;
        tt(context);
    }

    private void tt(Context context) {
        ve(context);
        uj();
        ve();
    }

    private void ve() {
        try {
            removeJavascriptInterface("searchBoxJavaBridge_");
            removeJavascriptInterface("accessibility");
            removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.qg.BaseWebView
    public void tt() {
        super.tt();
        c(new Runnable() { // from class: com.byazt.qg.WebViewImpl.1
            @Override // java.lang.Runnable
            @SuppressLint({"[ByDesign3.3]AvoidContentOrFileExecuteJS", "SetJavaScriptEnabled"})
            public void run() {
                try {
                    WebSettings settings = WebViewImpl.this.getSettings();
                    WebViewImpl.this.removeAllViews();
                    WebViewImpl.this.stopLoading();
                    WebViewImpl.this.setWebChromeClient(null);
                    WebViewImpl.this.setWebViewClient(null);
                    WebViewImpl.this.setDownloadListener(null);
                    settings.setJavaScriptEnabled(true);
                    settings.setAppCacheEnabled(false);
                    settings.setSupportZoom(false);
                    settings.setUseWideViewPort(true);
                    settings.setJavaScriptCanOpenWindowsAutomatically(true);
                    settings.setDomStorageEnabled(true);
                    settings.setBuiltInZoomControls(false);
                    settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
                    settings.setLoadWithOverviewMode(false);
                    settings.setDefaultTextEncodingName("UTF-8");
                    settings.setDefaultFontSize(16);
                    if (WebViewImpl.this.eo != null) {
                        Iterator it2 = WebViewImpl.this.eo.keySet().iterator();
                        while (it2.hasNext()) {
                            WebViewImpl.this.removeJavascriptInterface((String) it2.next());
                        }
                        WebViewImpl.this.eo = null;
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    public WebViewImpl(com.byazt.nl.tt ttVar, Context context, AttributeSet attributeSet, int i10) {
        super(c(context), attributeSet, i10);
        this.f19083zb = false;
        this.or = ttVar;
        tt(context);
    }

    private static Context c(Context context) {
        return Build.VERSION.SDK_INT < 23 ? context.createConfigurationContext(new Configuration()) : context;
    }

    @Override // com.byazt.nl.uj
    public void c(String str, String str2, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt(NotificationCompat.CATEGORY_EVENT, str2);
            jSONObject.putOpt(a.f7127l, obj);
            tt(str, "csjEventListener", jSONObject);
        } catch (JSONException unused) {
        }
    }
}
