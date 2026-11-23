package com.aggmoread.sdk.z.a.u;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes7.dex */
public class o extends WebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private n f4173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f4174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f4175c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f4176d;

    private class b extends WebChromeClient {
        private b() {
        }

        @Override // android.webkit.WebChromeClient
        public Bitmap getDefaultVideoPoster() {
            try {
                return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
            } catch (Exception unused) {
                return super.getDefaultVideoPoster();
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i10) {
            if (i10 >= 95) {
                o.this.f4173a.setVisibility(8);
                o.this.f4176d.a();
            } else {
                o.this.f4173a.b(i10);
            }
            super.onProgressChanged(webView, i10);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            if (o.this.f4175c != null) {
                o.this.f4175c.setText(str);
            }
        }
    }

    private class c extends WebViewClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Method f4178a;

        public c() {
            this.f4178a = null;
            try {
                this.f4178a = Class.forName("android.webkit.SslErrorHandler").getDeclaredMethod(a(), new Class[0]);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        private String a() {
            return "proce".concat("ed");
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            Method method = this.f4178a;
            if (method != null) {
                try {
                    method.invoke(sslErrorHandler, new Object[0]);
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            sslErrorHandler.cancel();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str == null || str.equals("about:blank")) {
                return false;
            }
            try {
                if (str.startsWith("http:") || str.startsWith("https:")) {
                    return false;
                }
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                    com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "context " + o.this.f4174b);
                    o.this.f4174b.startActivity(intent);
                } catch (Exception e10) {
                    com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "should o err  " + e10.getMessage());
                }
                return true;
            } catch (Exception unused) {
                return true;
            }
        }
    }

    public interface d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final d f4180a = new a();

        static class a implements d {
            a() {
            }

            @Override // com.aggmoread.sdk.z.a.u.o.d
            public void a() {
            }
        }

        void a();
    }

    public o(Context context) {
        super(context);
        this.f4176d = d.f4180a;
        this.f4174b = context;
        a();
    }

    private int a(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if ((action == 0 || action == 1) && !hasFocus()) {
            requestFocus();
        }
        return super.onTouchEvent(motionEvent);
    }

    private void b() {
        WebSettings settings = getSettings();
        int i10 = Build.VERSION.SDK_INT;
        settings.setMediaPlaybackRequiresUserGesture(false);
        if (i10 >= 26) {
            settings.setSafeBrowsingEnabled(false);
        }
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setNeedInitialFocus(false);
        settings.setSavePassword(false);
        settings.setAllowFileAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        String path = this.f4174b.getApplicationContext().getDir("jhad_database", 0).getPath();
        try {
            settings.setDomStorageEnabled(true);
            settings.setDatabaseEnabled(true);
            settings.setDatabasePath(path);
        } catch (Exception unused) {
        }
        try {
            com.aggmoread.sdk.z.c.a.a.e.j.a(settings, "setAppCacheEnabled", (Class<?>[]) new Class[]{Boolean.class}, Boolean.TRUE);
            com.aggmoread.sdk.z.c.a.a.e.j.a(settings, "setAppCachePath", (Class<?>[]) new Class[]{String.class}, path);
            com.aggmoread.sdk.z.c.a.a.e.j.a(settings, "setAppCacheMaxSize", (Class<?>[]) new Class[]{Long.class}, 10485760);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            settings.setGeolocationEnabled(true);
            settings.setGeolocationDatabasePath(path);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        settings.setSupportZoom(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setDomStorageEnabled(true);
        settings.setMixedContentMode(0);
        CookieManager.getInstance().setAcceptThirdPartyCookies(this, true);
    }

    private void a() {
        n nVar = new n(this.f4174b);
        this.f4173a = nVar;
        nVar.setLayoutParams(new ViewGroup.LayoutParams(-1, a(this.f4174b, 2.0f)));
        this.f4173a.a(-16776961);
        this.f4173a.b(10);
        addView(this.f4173a);
        try {
            removeJavascriptInterface("searchBoxJavaBridge_");
            removeJavascriptInterface("accessibility");
            removeJavascriptInterface("accessibilityTraversal");
        } catch (Exception unused) {
        }
        b();
        setWebChromeClient(new b());
        setWebViewClient(new c());
    }

    public void a(TextView textView) {
        this.f4175c = textView;
    }

    public void a(d dVar) {
        if (dVar != null) {
            this.f4176d = dVar;
        }
    }
}
