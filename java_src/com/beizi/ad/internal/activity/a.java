package com.beizi.ad.internal.activity;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.graphics.Rect;
import android.net.Uri;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.CookieSyncManager;
import android.webkit.DownloadListener;
import android.webkit.GeolocationPermissions;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.VideoView;
import com.beizi.ad.AdActivity;
import com.beizi.ad.internal.c;
import com.beizi.ad.internal.e.t;
import com.beizi.ad.internal.view.b;
import com.beizi.ad.lance.a.n;
import com.beizi.fusion.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.haima.hmcp.Constants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class a implements AdActivity.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static LinkedList<WebView> f8727a = new LinkedList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Activity f8728b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WebView f8729c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f8730d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f8731e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8732f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f8733g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f8734h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f8735i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f8736j;

    public a(Activity activity, boolean z10, boolean z11, String str, int i10) {
        this.f8728b = activity;
        this.f8731e = z10;
        this.f8732f = z11;
        this.f8733g = str;
        this.f8736j = i10 == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            if (this.f8736j && !this.f8734h && !TextUtils.isEmpty(this.f8733g)) {
                this.f8734h = true;
                Uri uri = Uri.parse(this.f8733g);
                if (uri.getScheme() == null || !uri.getScheme().equals("bzopen") || TextUtils.isEmpty(uri.getHost()) || uri.getPathSegments().size() <= 0) {
                    if (this.f8733g.startsWith("hwpps://landingpage")) {
                        Intent intent = new Intent();
                        intent.setData(uri);
                        intent.addFlags(C.ENCODING_PCM_MU_LAW);
                        this.f8728b.startActivity(intent);
                        return;
                    }
                    if (this.f8733g.startsWith(Constants.WS_MESSAGE_TYPE_INTENT)) {
                        Intent uri2 = Intent.parseUri(this.f8733g, 1);
                        uri2.addFlags(C.ENCODING_PCM_MU_LAW);
                        this.f8728b.startActivity(uri2);
                        return;
                    } else {
                        Intent intent2 = new Intent("android.intent.action.VIEW", uri);
                        intent2.addFlags(805339136);
                        this.f8728b.startActivity(intent2);
                        return;
                    }
                }
                Intent intent3 = new Intent();
                intent3.setAction("android.intent.action.MAIN");
                intent3.setFlags(C.ENCODING_PCM_MU_LAW);
                intent3.addCategory("android.intent.category.LAUNCHER");
                String queryParameter = uri.getQueryParameter("flags");
                if (!TextUtils.isEmpty(queryParameter)) {
                    try {
                        if (queryParameter.startsWith("0x") || queryParameter.startsWith("0X")) {
                            intent3.setFlags(Integer.parseInt(queryParameter.substring(2), 16));
                        } else {
                            intent3.setFlags(Integer.parseInt(queryParameter));
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                intent3.setComponent(new ComponentName(uri.getHost(), uri.getPathSegments().get(0)));
                String queryParameter2 = uri.getQueryParameter("rect");
                if (!TextUtils.isEmpty(queryParameter2)) {
                    try {
                        String[] strArrSplit = queryParameter2.split(":");
                        if (strArrSplit.length == 4) {
                            Rect rect = new Rect();
                            rect.set(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]));
                            intent3.setSourceBounds(rect);
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
                this.f8728b.startActivity(intent3);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        Activity activity = this.f8728b;
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // com.beizi.ad.AdActivity.a
    public WebView d() {
        return this.f8729c;
    }

    @Override // com.beizi.ad.AdActivity.a
    public void c() {
        WebView webView = this.f8729c;
        if (webView == null) {
            return;
        }
        t.a(webView);
        this.f8729c.destroy();
    }

    @Override // com.beizi.ad.AdActivity.a
    public void b() {
        n.a("lance", "...........................backPressed...........................");
        if (this.f8729c.canGoBack()) {
            this.f8729c.goBack();
            n.a("lance", " mWebView.goBack()");
        } else {
            f();
        }
    }

    @Override // com.beizi.ad.AdActivity.a
    @SuppressLint({"SetJavaScriptEnabled", "NewApi"})
    @TargetApi(17)
    public void a() {
        this.f8728b.setTheme(R.style.BeiZiTheme);
        this.f8728b.setContentView(R.layout.activity_in_app_browser);
        WebView webViewPoll = f8727a.poll();
        this.f8729c = webViewPoll;
        if (webViewPoll != null && webViewPoll.getSettings() != null) {
            if (this.f8729c.getContext() instanceof MutableContextWrapper) {
                ((MutableContextWrapper) this.f8729c.getContext()).setBaseContext(this.f8728b);
            }
            WebView webView = (WebView) this.f8728b.findViewById(R.id.web_view);
            webView.getSettings().setSavePassword(false);
            ViewGroup.LayoutParams layoutParams = webView.getLayoutParams();
            ViewGroup viewGroup = (ViewGroup) webView.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(webView);
            viewGroup.removeView(webView);
            t.a(this.f8729c);
            this.f8729c.setLayoutParams(layoutParams);
            this.f8729c.getSettings().setUseWideViewPort(true);
            this.f8729c.getSettings().setLoadWithOverviewMode(true);
            this.f8729c.getSettings().setJavaScriptEnabled(true);
            this.f8729c.getSettings().setGeolocationEnabled(false);
            WebView.setWebContentsDebuggingEnabled(false);
            viewGroup.addView(this.f8729c, iIndexOfChild);
            final ProgressBar progressBar = (ProgressBar) this.f8728b.findViewById(R.id.progress_bar);
            try {
                if (this.f8736j) {
                    this.f8729c.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.internal.activity.a.1
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            if (motionEvent.getAction() != 0) {
                                return false;
                            }
                            a.this.f8735i = true;
                            return false;
                        }
                    });
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f8729c.setDownloadListener(new DownloadListener() { // from class: com.beizi.ad.internal.activity.a.2
                @Override // android.webkit.DownloadListener
                public void onDownloadStart(String str, String str2, String str3, String str4, long j10) {
                }
            });
            this.f8729c.setWebViewClient(new WebViewClient() { // from class: com.beizi.ad.internal.activity.a.3
                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView2, String str) {
                    CookieSyncManager cookieSyncManager = CookieSyncManager.getInstance();
                    if (cookieSyncManager != null) {
                        cookieSyncManager.sync();
                    }
                    a.this.e();
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                    try {
                        Uri url = webResourceRequest.getUrl();
                        if (url == null) {
                            return false;
                        }
                        String string = url.toString();
                        if (!string.startsWith("http")) {
                            if (a.this.b(string)) {
                                a.this.a(string);
                            }
                            return true;
                        }
                        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
                        if (requestHeaders == null || requestHeaders.size() == 0) {
                            requestHeaders = new HashMap<>();
                        }
                        requestHeaders.put("X-Requested-With", "");
                        webView2.loadUrl(string, requestHeaders);
                        return true;
                    } catch (Exception e11) {
                        e11.printStackTrace();
                        return true;
                    }
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                    if (str.startsWith("http")) {
                        return false;
                    }
                    if (!a.this.b(str)) {
                        return true;
                    }
                    a.this.a(str);
                    return true;
                }
            });
            this.f8729c.setWebChromeClient(new b(this.f8728b) { // from class: com.beizi.ad.internal.activity.a.4
                @Override // com.beizi.ad.internal.view.a, android.webkit.WebChromeClient
                public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                    return true;
                }

                @Override // com.beizi.ad.internal.view.b, android.webkit.WebChromeClient
                public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
                    if (callback != null) {
                        try {
                            callback.invoke(str, false, false);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                }

                @Override // com.beizi.ad.internal.view.a, android.webkit.WebChromeClient
                public boolean onJsAlert(WebView webView2, String str, String str2, JsResult jsResult) {
                    jsResult.confirm();
                    return true;
                }

                @Override // android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView2, int i10) {
                    if (i10 < 100 && progressBar.getVisibility() == 8) {
                        progressBar.setVisibility(0);
                    }
                    progressBar.setProgress(i10);
                    if (i10 == 100) {
                        progressBar.setVisibility(8);
                    }
                }

                @Override // com.beizi.ad.internal.view.b, android.webkit.WebChromeClient
                public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                    super.onShowCustomView(view, customViewCallback);
                    if (view instanceof FrameLayout) {
                        FrameLayout frameLayout = (FrameLayout) view;
                        if (frameLayout.getFocusedChild() instanceof VideoView) {
                            VideoView videoView = (VideoView) frameLayout.getFocusedChild();
                            frameLayout.removeView(videoView);
                            if (a.this.f8729c.getContext() instanceof Activity) {
                                ((Activity) a.this.f8729c.getContext()).setContentView(videoView);
                            }
                            videoView.start();
                        }
                    }
                }
            });
            ImageView imageView = (ImageView) this.f8728b.findViewById(R.id.close_iv);
            this.f8730d = imageView;
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.internal.activity.a.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    a.this.f();
                }
            });
            return;
        }
        f();
    }

    private boolean c(String str) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        return !c(str) || this.f8731e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (this.f8736j) {
            if (this.f8734h && !this.f8735i) {
                return;
            } else {
                this.f8734h = true;
            }
        }
        Uri uri = com.beizi.ad.internal.e.n.a(str) ? null : Uri.parse(str);
        if (uri == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        try {
            this.f8728b.startActivity(intent);
            c();
            f();
        } catch (Exception unused) {
        }
    }
}
