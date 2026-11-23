package com.netease.nis.quicklogin.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.netease.nis.quicklogin.R;
import com.netease.nis.quicklogin.helper.UnifyUiConfig;
import com.netease.nis.quicklogin.utils.LoginUiHelper;
import com.netease.nis.quicklogin.utils.h;
import com.netease.nis.quicklogin.utils.i;

/* JADX INFO: loaded from: classes2.dex */
public class ProtocolDetailActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f76086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private UnifyUiConfig f76087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WebView f76088c;

    class a extends WebViewClient {
        a(ProtocolDetailActivity protocolDetailActivity) {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return false;
        }
    }

    class b extends WebChromeClient {

        class a extends WebViewClient {
            a() {
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                ProtocolDetailActivity.this.f76088c.loadUrl(str);
                return true;
            }
        }

        b() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z10, boolean z11, Message message) {
            WebView webView2 = new WebView(webView.getContext());
            webView2.setWebViewClient(new a());
            ((WebView.WebViewTransport) message.obj).setWebView(webView2);
            message.sendToTarget();
            return true;
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void b() {
        WebSettings settings = this.f76088c.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        settings.setAllowFileAccess(false);
        settings.setGeolocationEnabled(false);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setBuiltInZoomControls(false);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSupportMultipleWindows(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        this.f76088c.setWebViewClient(new a(this));
        this.f76088c.setWebChromeClient(new b());
    }

    private void c() {
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.yd_rl_navigation);
        if (relativeLayout != null) {
            if (this.f76087b.getProtocolNavColor() != 0) {
                relativeLayout.setBackgroundColor(this.f76087b.getProtocolNavColor());
            }
            if (this.f76087b.getProtocolNavHeight() != 0) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) relativeLayout.getLayoutParams();
                layoutParams.height = i.a(this, this.f76087b.getProtocolNavHeight());
                relativeLayout.setLayoutParams(layoutParams);
            }
        }
        TextView textView = (TextView) findViewById(R.id.yd_tv_navigation);
        if (textView != null) {
            if (this.f76087b.getProtocolNavTitleSize() != 0) {
                textView.setTextSize(this.f76087b.getProtocolNavTitleSize());
            } else if (this.f76087b.getProtocolNavTitleDpSize() != 0) {
                textView.setTextSize(1, this.f76087b.getProtocolNavTitleDpSize());
            }
            if (this.f76087b.getProtocolNavTitleColor() != 0) {
                textView.setTextColor(this.f76087b.getProtocolNavTitleColor());
            }
        }
        ImageView imageView = (ImageView) findViewById(R.id.yd_iv_navigation);
        if (imageView != null) {
            if (this.f76087b.getProtocolNavBackIconDrawable() != null) {
                imageView.setImageDrawable(this.f76087b.getProtocolNavBackIconDrawable());
            } else if (!TextUtils.isEmpty(this.f76087b.getProtocolNavBackIcon())) {
                imageView.setImageDrawable(this.f76086a.b(this.f76087b.getProtocolNavBackIcon()));
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
            if (this.f76087b.getProtocolNavBackIconWidth() != 0) {
                layoutParams2.width = i.a(this, this.f76087b.getProtocolNavBackIconWidth());
            }
            if (this.f76087b.getProtocolNavBackIconHeight() != 0) {
                layoutParams2.height = i.a(this, this.f76087b.getProtocolNavBackIconHeight());
            }
            if (this.f76087b.getProtocolNavBackIconMargin() != 0) {
                layoutParams2.setMargins(i.a(this, this.f76087b.getProtocolNavBackIconMargin()), 0, 0, 0);
            }
            imageView.setLayoutParams(layoutParams2);
        }
    }

    private void d() {
        i.a((Activity) this, this.f76087b.getStatusBarColor());
        i.b(this, this.f76087b.isStatusBarDarkColor());
    }

    public void back(View view) {
        WebView webView = this.f76088c;
        if (webView == null || !webView.canGoBack()) {
            finish();
        } else {
            this.f76088c.goBack();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f76087b = LoginUiHelper.a().c();
        setContentView(R.layout.yd_activity_protocol_detail);
        this.f76086a = h.a(getApplicationContext());
        a();
        b();
        a(getIntent());
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        WebView webView = this.f76088c;
        if (webView != null) {
            ViewParent parent = webView.getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(this.f76088c);
            }
            this.f76088c.stopLoading();
            this.f76088c.getSettings().setJavaScriptEnabled(false);
            this.f76088c.clearHistory();
            this.f76088c.clearView();
            this.f76088c.removeAllViews();
            this.f76088c.destroy();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        WebView webView;
        if (i10 != 4 || (webView = this.f76088c) == null || !webView.canGoBack()) {
            return super.onKeyDown(i10, keyEvent);
        }
        this.f76088c.goBack();
        return true;
    }

    private void a() {
        this.f76088c = (WebView) findViewById(R.id.yd_wv_protocol);
        UnifyUiConfig unifyUiConfig = this.f76087b;
        if (unifyUiConfig == null) {
            return;
        }
        if (unifyUiConfig.isProtocolDialogMode()) {
            i.a(this, this.f76087b.getDialogWidth(), this.f76087b.getDialogHeight(), this.f76087b.getDialogX(), this.f76087b.getDialogY(), this.f76087b.isBottomDialog());
        }
        if (!TextUtils.isEmpty(this.f76087b.getProtocolBackgroundImage())) {
            findViewById(R.id.yd_ll_root_detail).setBackgroundResource(this.f76086a.c(this.f76087b.getProtocolBackgroundImage()));
        }
        d();
        c();
    }

    private void a(Intent intent) {
        TextView textView;
        String stringExtra = intent.getStringExtra("url");
        String stringExtra2 = intent.getStringExtra("title");
        if (!TextUtils.isEmpty(stringExtra2) && (textView = (TextView) findViewById(R.id.yd_tv_navigation)) != null) {
            textView.setText(stringExtra2);
        }
        this.f76088c.loadUrl(stringExtra);
    }
}
