package com.beizi.ad.internal.download;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RequiresApi;
import com.beizi.ad.internal.c;
import com.beizi.ad.internal.e.n;
import com.bykv.vk.component.ttvideo.player.C;
import com.haima.hmcp.Constants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class BeiZiWebView extends WebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, Object> f8892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f8893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f8894c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f8895d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f8896e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8897f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f8898g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f8899h;

    public BeiZiWebView(Context context) {
        super(context);
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        if (this.f8899h) {
            if (this.f8897f && !this.f8898g) {
                return;
            } else {
                this.f8897f = true;
            }
        }
        Uri uri = n.a(str) ? null : Uri.parse(str);
        if (uri == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        try {
            getContext().startActivity(intent);
        } catch (Exception unused) {
        }
    }

    public BeiZiWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    private void b() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setBuiltInZoomControls(false);
        settings.setEnableSmoothTransition(true);
        settings.setLightTouchEnabled(false);
        settings.setPluginState(WebSettings.PluginState.ON);
        settings.setLoadsImagesAutomatically(true);
        settings.setSavePassword(false);
        settings.setSupportZoom(false);
        settings.setUseWideViewPort(false);
        int i10 = Build.VERSION.SDK_INT;
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setMixedContentMode(0);
        WebView.setWebContentsDebuggingEnabled(false);
        if (i10 <= 33) {
            settings.setAppCachePath(getContext().getCacheDir().getAbsolutePath());
            settings.setAppCacheEnabled(true);
        }
        settings.setCacheMode(-1);
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setGeolocationEnabled(false);
        CookieManager cookieManager = CookieManager.getInstance();
        if (cookieManager != null) {
            cookieManager.setAcceptThirdPartyCookies(this, true);
        }
        setHorizontalScrollbarOverlay(false);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setScrollBarStyle(0);
        setWebViewClient(new WebViewClient() { // from class: com.beizi.ad.internal.download.BeiZiWebView.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                if (BeiZiWebView.this.f8892a != null) {
                    BeiZiWebView.this.c();
                }
            }

            @Override // android.webkit.WebViewClient
            @RequiresApi(api = 21)
            public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                try {
                    Uri url = webResourceRequest.getUrl();
                    if (url == null) {
                        return false;
                    }
                    String string = url.toString();
                    if (string.startsWith("http")) {
                        if (BeiZiWebView.this.f8892a != null && BeiZiWebView.this.a(string)) {
                            BeiZiWebView.this.c(string);
                        }
                        return false;
                    }
                    if (BeiZiWebView.this.f8892a == null) {
                        return true;
                    }
                    Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
                    if (requestHeaders == null || requestHeaders.size() == 0) {
                        requestHeaders = new HashMap<>();
                    }
                    requestHeaders.put("X-Requested-With", "");
                    webView.loadUrl(string, requestHeaders);
                    return true;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return false;
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (str.startsWith("http")) {
                    return false;
                }
                if (BeiZiWebView.this.f8892a == null || !BeiZiWebView.this.a(str)) {
                    return true;
                }
                BeiZiWebView.this.c(str);
                return true;
            }
        });
        Map<String, Object> map = this.f8892a;
        if (map != null) {
            if (map.containsKey("isRedirectionCanJump") && (obj5 = this.f8892a.get("isRedirectionCanJump")) != null && (obj5 instanceof Boolean)) {
                this.f8893b = ((Boolean) obj5).booleanValue();
            }
            if (this.f8892a.containsKey("isDownload") && (obj4 = this.f8892a.get("isDownload")) != null && (obj4 instanceof Boolean)) {
                this.f8894c = ((Boolean) obj4).booleanValue();
            }
            if (this.f8892a.containsKey("landingPageUrl") && (obj3 = this.f8892a.get("landingPageUrl")) != null && (obj3 instanceof String)) {
                this.f8896e = (String) obj3;
            }
            if (this.f8892a.containsKey("deeplinkUrl") && (obj2 = this.f8892a.get("deeplinkUrl")) != null && (obj2 instanceof String)) {
                this.f8895d = (String) obj2;
            }
            if (this.f8892a.containsKey("webDeepLink") && (obj = this.f8892a.get("webDeepLink")) != null && (obj instanceof Boolean)) {
                this.f8899h = ((Boolean) obj).booleanValue();
            }
        }
        if (this.f8899h) {
            setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.internal.download.BeiZiWebView.2
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() != 0) {
                        return false;
                    }
                    BeiZiWebView.this.f8898g = true;
                    return false;
                }
            });
        }
    }

    private void a() {
        try {
            b();
        } catch (Throwable unused) {
        }
    }

    public BeiZiWebView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        return !b(str) || this.f8893b;
    }

    public BeiZiWebView(Context context, Map<String, Object> map) {
        super(context);
        this.f8892a = map;
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            if (this.f8899h && !this.f8897f && !TextUtils.isEmpty(this.f8895d)) {
                this.f8897f = true;
                Uri uri = Uri.parse(this.f8895d);
                if (uri.getScheme() != null && uri.getScheme().equals("bzopen") && !TextUtils.isEmpty(uri.getHost()) && uri.getPathSegments().size() > 0) {
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.MAIN");
                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                    intent.addCategory("android.intent.category.LAUNCHER");
                    String queryParameter = uri.getQueryParameter("flags");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        try {
                            if (!queryParameter.startsWith("0x") && !queryParameter.startsWith("0X")) {
                                intent.setFlags(Integer.parseInt(queryParameter));
                            } else {
                                intent.setFlags(Integer.parseInt(queryParameter.substring(2), 16));
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                    intent.setComponent(new ComponentName(uri.getHost(), uri.getPathSegments().get(0)));
                    String queryParameter2 = uri.getQueryParameter("rect");
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        try {
                            String[] strArrSplit = queryParameter2.split(":");
                            if (strArrSplit.length == 4) {
                                Rect rect = new Rect();
                                rect.set(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]));
                                intent.setSourceBounds(rect);
                            }
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    }
                    getContext().startActivity(intent);
                    return;
                }
                if (this.f8895d.startsWith("hwpps://landingpage")) {
                    Intent intent2 = new Intent();
                    intent2.setData(uri);
                    intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                    getContext().startActivity(intent2);
                    return;
                }
                if (this.f8895d.startsWith(Constants.WS_MESSAGE_TYPE_INTENT)) {
                    Intent uri2 = Intent.parseUri(this.f8895d, 1);
                    uri2.addFlags(C.ENCODING_PCM_MU_LAW);
                    getContext().startActivity(uri2);
                } else {
                    Intent intent3 = new Intent("android.intent.action.VIEW", uri);
                    intent3.addFlags(805339136);
                    getContext().startActivity(intent3);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private boolean b(String str) {
        List<String> listI = c.a().i();
        if (listI != null && listI.size() > 0) {
            Iterator<String> it2 = listI.iterator();
            while (it2.hasNext()) {
                if (str.contains(it2.next())) {
                    return true;
                }
            }
        }
        return false;
    }
}
