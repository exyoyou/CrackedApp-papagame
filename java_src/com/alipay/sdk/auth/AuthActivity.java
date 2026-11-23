package com.alipay.sdk.auth;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.webkit.ConsoleMessage;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import java.lang.reflect.Method;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"SetJavaScriptEnabled", "DefaultLocale"})
public class AuthActivity extends Activity {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final String f7091i = "params";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final String f7092j = "redirectUri";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WebView f7093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f7094c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.alipay.sdk.widget.a f7095d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f7096e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f7097f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f7098g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Runnable f7099h = new f(this);

    private class a extends WebChromeClient {
        private a() {
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            String strMessage = consoleMessage.message();
            if (TextUtils.isEmpty(strMessage)) {
                return super.onConsoleMessage(consoleMessage);
            }
            String strReplaceFirst = strMessage.startsWith("h5container.message: ") ? strMessage.replaceFirst("h5container.message: ", "") : null;
            if (TextUtils.isEmpty(strReplaceFirst)) {
                return super.onConsoleMessage(consoleMessage);
            }
            AuthActivity.i(AuthActivity.this, strReplaceFirst);
            return super.onConsoleMessage(consoleMessage);
        }

        /* synthetic */ a(AuthActivity authActivity, byte b10) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class b extends WebViewClient {
        private b() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            AuthActivity.p(AuthActivity.this);
            AuthActivity.this.f7096e.removeCallbacks(AuthActivity.this.f7099h);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            AuthActivity.m(AuthActivity.this);
            AuthActivity.this.f7096e.postDelayed(AuthActivity.this.f7099h, 30000L);
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i10, String str, String str2) {
            AuthActivity.d(AuthActivity.this);
            super.onReceivedError(webView, i10, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            if (!AuthActivity.this.f7097f) {
                AuthActivity.this.runOnUiThread(new g(this, sslErrorHandler));
            } else {
                sslErrorHandler.proceed();
                AuthActivity.this.f7097f = false;
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (!str.toLowerCase().startsWith(u.a.f97407i.toLowerCase()) && !str.toLowerCase().startsWith(u.a.f97408j.toLowerCase())) {
                if (!AuthActivity.e(AuthActivity.this, str)) {
                    return super.shouldOverrideUrlLoading(webView, str);
                }
                webView.stopLoading();
                return true;
            }
            try {
                com.alipay.sdk.util.j.a aVarC = com.alipay.sdk.util.j.c(AuthActivity.this, com.alipay.sdk.util.j.f7245b);
                if (aVarC != null) {
                    String strF = com.alipay.sdk.util.j.f(aVarC.f7247a);
                    if (strF != null && !TextUtils.equals(strF, u.a.f97406h)) {
                        com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f7066l, com.alipay.sdk.app.statistic.c.f7073s, strF);
                        return true;
                    }
                    if (str.startsWith("intent://platformapi/startapp")) {
                        str = str.replaceFirst(u.a.f97408j, u.a.f97407i);
                    }
                    AuthActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                }
            } catch (Throwable unused) {
            }
            return true;
        }

        /* synthetic */ b(AuthActivity authActivity, byte b10) {
            this();
        }
    }

    private void a() {
        try {
            if (this.f7095d == null) {
                this.f7095d = new com.alipay.sdk.widget.a(this, com.alipay.sdk.widget.a.f7251d);
            }
            this.f7095d.c();
        } catch (Exception unused) {
            this.f7095d = null;
        }
    }

    static /* synthetic */ void b(AuthActivity authActivity, com.alipay.sdk.authjs.a aVar) {
        if (authActivity.f7093b == null || aVar == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.alipay.sdk.authjs.a.f7126k, aVar.f7130a);
            jSONObject.put(com.alipay.sdk.authjs.a.f7128m, aVar.f7132c);
            jSONObject.put(com.alipay.sdk.authjs.a.f7127l, aVar.f7134e);
            jSONObject.put(com.alipay.sdk.authjs.a.f7129n, aVar.f7133d);
            authActivity.runOnUiThread(new e(authActivity, String.format("AlipayJSBridge._invokeJS(%s)", jSONObject.toString())));
        } catch (JSONException unused) {
        }
    }

    private void c(com.alipay.sdk.authjs.a aVar) {
        if (this.f7093b == null || aVar == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.alipay.sdk.authjs.a.f7126k, aVar.f7130a);
            jSONObject.put(com.alipay.sdk.authjs.a.f7128m, aVar.f7132c);
            jSONObject.put(com.alipay.sdk.authjs.a.f7127l, aVar.f7134e);
            jSONObject.put(com.alipay.sdk.authjs.a.f7129n, aVar.f7133d);
            runOnUiThread(new e(this, String.format("AlipayJSBridge._invokeJS(%s)", jSONObject.toString())));
        } catch (JSONException unused) {
        }
    }

    static /* synthetic */ boolean d(AuthActivity authActivity) {
        authActivity.f7098g = true;
        return true;
    }

    static /* synthetic */ boolean e(AuthActivity authActivity, String str) {
        if (TextUtils.isEmpty(str) || str.startsWith("http://") || str.startsWith("https://")) {
            return false;
        }
        if (!"SDKLite://h5quit".equalsIgnoreCase(str)) {
            if (TextUtils.equals(str, authActivity.f7094c)) {
                str = str + "?resultCode=150";
            }
            j.d(authActivity, str);
        }
        authActivity.finish();
        return true;
    }

    private boolean g(String str) {
        if (TextUtils.isEmpty(str) || str.startsWith("http://") || str.startsWith("https://")) {
            return false;
        }
        if (!"SDKLite://h5quit".equalsIgnoreCase(str)) {
            if (TextUtils.equals(str, this.f7094c)) {
                str = str + "?resultCode=150";
            }
            j.d(this, str);
        }
        finish();
        return true;
    }

    private void h() {
        com.alipay.sdk.widget.a aVar = this.f7095d;
        if (aVar != null) {
            aVar.f();
        }
        this.f7095d = null;
    }

    static /* synthetic */ void i(AuthActivity authActivity, String str) {
        com.alipay.sdk.authjs.d dVar = new com.alipay.sdk.authjs.d(authActivity.getApplicationContext(), new d(authActivity));
        String str2 = null;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString(com.alipay.sdk.authjs.a.f7126k);
            try {
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject(com.alipay.sdk.authjs.a.f7127l);
                JSONObject jSONObject3 = jSONObject2 instanceof JSONObject ? jSONObject2 : null;
                String string2 = jSONObject.getString(com.alipay.sdk.authjs.a.f7128m);
                String string3 = jSONObject.getString(com.alipay.sdk.authjs.a.f7125j);
                com.alipay.sdk.authjs.a aVar = new com.alipay.sdk.authjs.a("call");
                aVar.f7131b = string3;
                aVar.f7132c = string2;
                aVar.f7134e = jSONObject3;
                aVar.f7130a = string;
                dVar.c(aVar);
            } catch (Exception unused) {
                str2 = string;
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                try {
                    dVar.g(str2, com.alipay.sdk.authjs.a.EnumC0203a.RUNTIME_ERROR);
                } catch (JSONException unused2) {
                }
            }
        } catch (Exception unused3) {
        }
    }

    private void j(String str) {
        com.alipay.sdk.authjs.d dVar = new com.alipay.sdk.authjs.d(getApplicationContext(), new d(this));
        String str2 = null;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString(com.alipay.sdk.authjs.a.f7126k);
            try {
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject(com.alipay.sdk.authjs.a.f7127l);
                JSONObject jSONObject3 = jSONObject2 instanceof JSONObject ? jSONObject2 : null;
                String string2 = jSONObject.getString(com.alipay.sdk.authjs.a.f7128m);
                String string3 = jSONObject.getString(com.alipay.sdk.authjs.a.f7125j);
                com.alipay.sdk.authjs.a aVar = new com.alipay.sdk.authjs.a("call");
                aVar.f7131b = string3;
                aVar.f7132c = string2;
                aVar.f7134e = jSONObject3;
                aVar.f7130a = string;
                dVar.c(aVar);
            } catch (Exception unused) {
                str2 = string;
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                try {
                    dVar.g(str2, com.alipay.sdk.authjs.a.EnumC0203a.RUNTIME_ERROR);
                } catch (JSONException unused2) {
                }
            }
        } catch (Exception unused3) {
        }
    }

    static /* synthetic */ void m(AuthActivity authActivity) {
        try {
            if (authActivity.f7095d == null) {
                authActivity.f7095d = new com.alipay.sdk.widget.a(authActivity, com.alipay.sdk.widget.a.f7251d);
            }
            authActivity.f7095d.c();
        } catch (Exception unused) {
            authActivity.f7095d = null;
        }
    }

    static /* synthetic */ void p(AuthActivity authActivity) {
        com.alipay.sdk.widget.a aVar = authActivity.f7095d;
        if (aVar != null) {
            aVar.f();
        }
        authActivity.f7095d = null;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (!this.f7093b.canGoBack()) {
            j.d(this, this.f7094c + "?resultCode=150");
            finish();
            return;
        }
        if (this.f7098g) {
            j.d(this, this.f7094c + "?resultCode=150");
            finish();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                finish();
                return;
            }
            try {
                this.f7094c = extras.getString(f7092j);
                String string = extras.getString("params");
                if (!com.alipay.sdk.util.j.m(string)) {
                    finish();
                    return;
                }
                super.requestWindowFeature(1);
                this.f7096e = new Handler(getMainLooper());
                LinearLayout linearLayout = new LinearLayout(this);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                linearLayout.setOrientation(1);
                setContentView(linearLayout, layoutParams);
                WebView webView = new WebView(this);
                this.f7093b = webView;
                layoutParams.weight = 1.0f;
                byte b10 = 0;
                webView.setVisibility(0);
                linearLayout.addView(this.f7093b, layoutParams);
                WebSettings settings = this.f7093b.getSettings();
                settings.setUserAgentString(settings.getUserAgentString() + com.alipay.sdk.util.j.o(getApplicationContext()));
                settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
                settings.setSupportMultipleWindows(true);
                settings.setJavaScriptEnabled(true);
                settings.setSavePassword(false);
                settings.setJavaScriptCanOpenWindowsAutomatically(true);
                settings.setMinimumFontSize(settings.getMinimumFontSize() + 8);
                settings.setAllowFileAccess(false);
                settings.setTextSize(WebSettings.TextSize.NORMAL);
                this.f7093b.setVerticalScrollbarOverlay(true);
                this.f7093b.setWebViewClient(new b(this, b10));
                this.f7093b.setWebChromeClient(new a(this, b10));
                this.f7093b.setDownloadListener(new c(this));
                this.f7093b.loadUrl(string);
                try {
                    Method method = this.f7093b.getSettings().getClass().getMethod("setDomStorageEnabled", Boolean.TYPE);
                    if (method != null) {
                        method.invoke(this.f7093b.getSettings(), Boolean.TRUE);
                    }
                } catch (Exception unused) {
                }
                try {
                    try {
                        this.f7093b.removeJavascriptInterface("searchBoxJavaBridge_");
                        this.f7093b.removeJavascriptInterface("accessibility");
                        this.f7093b.removeJavascriptInterface("accessibilityTraversal");
                    } catch (Throwable unused2) {
                    }
                } catch (Throwable unused3) {
                    Method method2 = this.f7093b.getClass().getMethod("removeJavascriptInterface", new Class[0]);
                    if (method2 != null) {
                        method2.invoke(this.f7093b, "searchBoxJavaBridge_");
                        method2.invoke(this.f7093b, "accessibility");
                        method2.invoke(this.f7093b, "accessibilityTraversal");
                    }
                }
                this.f7093b.getSettings().setCacheMode(1);
            } catch (Exception unused4) {
                finish();
            }
        } catch (Exception unused5) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        WebView webView = this.f7093b;
        if (webView != null) {
            webView.removeAllViews();
            try {
                this.f7093b.destroy();
            } catch (Throwable unused) {
            }
            this.f7093b = null;
        }
    }
}
