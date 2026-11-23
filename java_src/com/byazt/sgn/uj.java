package com.byazt.sgn;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.TextView;
import com.byazt.el.SSWebView;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 211, 15})
public class uj extends AlertDialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile AtomicInteger f19725a = new AtomicInteger(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SSWebView f19726c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public c f19727n;
    public String sp;
    public Context tt;
    public String uj;
    public TextView ve;

    public interface c {
        void c(Dialog dialog);
    }

    public uj(Context context, String str, String str2) {
        super(context);
        this.tt = context;
        this.sp = str2;
        this.uj = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c() {
        this.f19726c = (SSWebView) findViewById(2114387839);
        this.ve = (TextView) findViewById(2114387912);
        ((TextView) findViewById(2114387696)).setText(this.sp);
        this.ve.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.uj.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                uj.f19725a.set(0);
                uj ujVar = uj.this;
                c cVar = ujVar.f19727n;
                if (cVar != null) {
                    cVar.c(ujVar);
                }
            }
        });
        setCanceledOnTouchOutside(false);
        this.f19726c.setWebViewClient(new com.byazt.jwd.uj(this.tt, null, 0 == true ? 1 : 0) { // from class: com.byazt.sgn.uj.2
            @Override // com.byazt.jwd.uj
            public boolean c(WebView webView, WebResourceRequest webResourceRequest) {
                this.f15943x = uj.f19725a;
                return super.c(webView, webResourceRequest);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (webView == null) {
                    return true;
                }
                try {
                    if (TextUtils.isEmpty(str)) {
                        return true;
                    }
                    String scheme = Uri.parse(str).getScheme();
                    if (TextUtils.isEmpty(scheme)) {
                        return true;
                    }
                    String lowerCase = scheme.toLowerCase(Locale.getDefault());
                    if (!lowerCase.contains("http") && !lowerCase.contains("https")) {
                        return true;
                    }
                    webView.loadUrl(str);
                    return true;
                } catch (Exception e10) {
                    com.byazt.nr.m.c(e10);
                    return true;
                }
            }

            @Override // com.byazt.jwd.uj
            public boolean c(WebView webView, String str) {
                this.f15943x = uj.f19725a;
                return super.c(webView, str);
            }
        });
        this.f19726c.setJavaScriptEnabled(true);
        this.f19726c.setDisplayZoomControls(false);
        this.f19726c.setCacheMode(2);
        this.f19726c.loadUrl(this.uj);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        f19725a.set(0);
        c cVar = this.f19727n;
        if (cVar != null) {
            cVar.c(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        com.byazt.vfu.sp.tt(this);
        setContentView(com.byazt.vfu.a.to(getContext()));
        c();
    }

    public uj c(c cVar) {
        this.f19727n = cVar;
        return this;
    }
}
