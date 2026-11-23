package com.join.mgps.wrapper.SystemUiHider;

import android.R;
import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.app.FragmentTransaction;
import android.content.Context;
import android.net.http.SslError;
import android.view.View;
import android.webkit.GeolocationPermissions;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public abstract class d {

    private static class a extends TabHost {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WebView f73392b;

        /* JADX INFO: renamed from: com.join.mgps.wrapper.SystemUiHider.d$a$a, reason: collision with other inner class name */
        class C0754a extends WebChromeClient {
            C0754a() {
            }

            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsShowPrompt(String origin, GeolocationPermissions.Callback callback) {
                super.onGeolocationPermissionsShowPrompt(origin, callback);
                callback.invoke(origin, true, false);
            }

            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView view, int progress) {
            }
        }

        class b extends WebViewClient {
            b() {
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
                int primaryError = error.getPrimaryError();
                if (primaryError == 3 || primaryError == 5) {
                    handler.proceed();
                }
                handler.cancel();
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                if (!url.startsWith("http://") && !url.startsWith("https://")) {
                    return false;
                }
                view.loadUrl(url);
                return true;
            }
        }

        class c implements TabHost.TabContentFactory {
            c() {
            }

            @Override // android.widget.TabHost.TabContentFactory
            public View createTabContent(String tag) {
                return a.this.f73392b;
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.wrapper.SystemUiHider.d$a$d, reason: collision with other inner class name */
        class C0755d implements TabHost.OnTabChangeListener {
            C0755d() {
            }

            @Override // android.widget.TabHost.OnTabChangeListener
            public void onTabChanged(String tabId) {
                a.this.f73392b.loadUrl(tabId);
            }
        }

        public a(Context a10, String[][] tabs) {
            super(a10);
            WebView webView = new WebView(a10);
            this.f73392b = webView;
            webView.getSettings().setNeedInitialFocus(false);
            WebSettings settings = webView.getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setDomStorageEnabled(true);
            settings.setBuiltInZoomControls(false);
            settings.setMixedContentMode(0);
            try {
                Method method = Class.forName("android.webkit.WebView").getMethod("setWebContentsDebuggingEnabled", Boolean.TYPE);
                if (method != null) {
                    method.setAccessible(true);
                    method.invoke(null, Boolean.TRUE);
                }
            } catch (Exception unused) {
            }
            this.f73392b.setFocusable(true);
            this.f73392b.setDrawingCacheEnabled(true);
            this.f73392b.setScrollBarStyle(0);
            this.f73392b.setWebChromeClient(new C0754a());
            this.f73392b.setWebViewClient(new b());
            TabHost.TabContentFactory cVar = new c();
            TabHost.OnTabChangeListener c0755d = new C0755d();
            LinearLayout linearLayout = new LinearLayout(a10);
            linearLayout.setOrientation(1);
            TabWidget tabWidget = new TabWidget(a10);
            tabWidget.setId(R.id.tabs);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2));
            FrameLayout frameLayout = new FrameLayout(a10);
            frameLayout.setId(R.id.tabcontent);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, -1));
            addView(linearLayout);
            setOnTabChangedListener(c0755d);
            setup();
            for (String[] strArr : tabs) {
                addTab(newTabSpec(strArr[0]).setIndicator(strArr[1]).setContent(cVar));
            }
        }
    }

    @TargetApi(11)
    private static class b extends WebView {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ActionBar f73397b;

        class a implements ActionBar.TabListener {
            a() {
            }

            @Override // android.app.ActionBar.TabListener
            public void onTabReselected(ActionBar.Tab tab, FragmentTransaction ft) {
            }

            @Override // android.app.ActionBar.TabListener
            public void onTabSelected(ActionBar.Tab tab, FragmentTransaction ft) {
                b.this.loadUrl((String) tab.getTag());
            }

            @Override // android.app.ActionBar.TabListener
            public void onTabUnselected(ActionBar.Tab tab, FragmentTransaction ft) {
            }
        }

        public b(Activity a10, String[][] tabs) {
            super(a10);
            getSettings().setNeedInitialFocus(false);
            new a();
        }
    }

    public static View a(Activity a10, String[][] urls) {
        return com.join.mgps.wrapper.a.f73400b < 11 ? new a(a10, urls) : new b(a10, urls);
    }
}
