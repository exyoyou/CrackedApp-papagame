package com.cmic.gen.sdk.view;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.cmic.gen.sdk.auth.GenAuthnHelper;

/* JADX INFO: loaded from: classes9.dex */
public class d extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WebView f24629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f24630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f24631c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinearLayout f24632d;

    public d(Context context, int i10, String str, String str2) {
        super(context, i10);
        try {
            this.f24631c = str;
            this.f24630b = str2;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private ViewGroup c() {
        View viewFindViewById;
        try {
            LinearLayout linearLayout = new LinearLayout(getContext());
            this.f24632d = linearLayout;
            linearLayout.setOrientation(1);
            this.f24632d.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            GenAuthThemeConfig authThemeConfig = GenAuthnHelper.getInstance(getContext()).getAuthThemeConfig();
            int clauseLayoutResID = authThemeConfig.getClauseLayoutResID();
            String str = TextUtils.isEmpty(this.f24631c) ? com.cmic.gen.sdk.c.f24333d[authThemeConfig.getAppLanguageType()] : this.f24631c;
            if (clauseLayoutResID != -1) {
                RelativeLayout relativeLayoutA = e.a(getContext(), getLayoutInflater().inflate(clauseLayoutResID, (ViewGroup) this.f24632d, false), 1118481, 0, str, (View.OnClickListener) null);
                String clauseLayoutReturnID = authThemeConfig.getClauseLayoutReturnID();
                if (!TextUtils.isEmpty(clauseLayoutReturnID) && (viewFindViewById = relativeLayoutA.findViewById(c.a(getContext(), clauseLayoutReturnID))) != null) {
                    viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.cmic.gen.sdk.view.d.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            d.this.f24629a.stopLoading();
                            d.this.b();
                        }
                    });
                }
                this.f24632d.addView(relativeLayoutA);
            } else {
                this.f24632d.addView(e.a(getContext(), (View) null, 1118481, 2236962, str, new View.OnClickListener() { // from class: com.cmic.gen.sdk.view.d.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        d.this.f24629a.stopLoading();
                        d.this.b();
                    }
                }));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return this.f24632d;
    }

    private void d() {
        GenAuthThemeConfig authThemeConfig = GenAuthnHelper.getInstance(getContext()).getAuthThemeConfig();
        WebView webView = new WebView(getContext());
        this.f24629a = webView;
        WebSettings settings = webView.getSettings();
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setSavePassword(false);
        settings.setDomStorageEnabled(authThemeConfig.getWebStorage());
        settings.setJavaScriptEnabled(true);
        this.f24632d.addView(this.f24629a, new LinearLayout.LayoutParams(-1, -1));
        this.f24629a.setWebViewClient(new WebViewClient());
        this.f24629a.loadUrl(this.f24630b);
    }

    public void b() {
        if (this.f24629a.canGoBack()) {
            this.f24629a.goBack();
        } else {
            dismiss();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        WebView webView = this.f24629a;
        if (webView != null) {
            webView.stopLoading();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        if (this.f24632d == null) {
            a();
        }
        if (this.f24629a == null) {
            d();
        }
        super.show();
    }

    protected void a() {
        requestWindowFeature(1);
        getWindow().setFeatureDrawableAlpha(0, 0);
        GenAuthThemeConfig authThemeConfig = GenAuthnHelper.getInstance(getContext()).getAuthThemeConfig();
        int i10 = Build.VERSION.SDK_INT;
        if (authThemeConfig.getStatusBarColor() != 0) {
            getWindow().addFlags(Integer.MIN_VALUE);
            getWindow().clearFlags(67108864);
            getWindow().setStatusBarColor(authThemeConfig.getStatusBarColor());
            getWindow().setNavigationBarColor(authThemeConfig.getStatusBarColor());
        }
        if (i10 >= 23) {
            if (authThemeConfig.isLightColor()) {
                getWindow().getDecorView().setSystemUiVisibility(8192);
            } else {
                getWindow().getDecorView().setSystemUiVisibility(0);
            }
        }
        setContentView(c());
    }
}
