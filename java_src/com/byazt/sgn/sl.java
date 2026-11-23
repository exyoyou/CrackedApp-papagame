package com.byazt.sgn;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.el.SSWebView;
import com.byazt.nr.h;
import com.byazt.omf.gt;
import com.haima.hmcp.Constants;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 211, 158})
public class sl extends AlertDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile AtomicInteger f19685c = new AtomicInteger(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f19686a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public ImageView f19687da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public RelativeLayout f19688i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f19689n;
    public ImageView sl;
    public String sp;
    public SSWebView tt;
    public TextView uj;
    public Context ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public RelativeLayout f19690x;

    public interface c {
        void c(Dialog dialog);
    }

    public sl(Context context, String str) {
        super(context);
        this.sp = str;
        this.ve = context;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        f19685c.set(0);
        c cVar = this.f19686a;
        if (cVar != null) {
            cVar.c(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        com.byazt.vfu.sp.tt(this);
        setContentView(com.byazt.vfu.a.sv(this.ve));
        tt();
        c();
    }

    public void c() {
        String strFk = gt.tt().fk();
        if (TextUtils.isEmpty(strFk)) {
            this.f19689n = "https://www.pangle.cn/privacy/partner";
        } else {
            this.f19689n = strFk;
        }
        if (TextUtils.isEmpty(this.sp)) {
            return;
        }
        if (this.f19689n.contains("?")) {
            this.f19689n += "&ad_info=" + this.sp;
            return;
        }
        this.f19689n += "?ad_info=" + this.sp;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void tt() {
        this.tt = (SSWebView) findViewById(2114387763);
        TextView textView = (TextView) findViewById(2114387652);
        this.uj = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.sl.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (sl.this.f19686a != null) {
                    sl.this.f19686a.c(sl.this);
                }
            }
        });
        setCanceledOnTouchOutside(false);
        this.tt.setWebViewClient(new com.byazt.jwd.uj(this.ve, null, 0 == true ? 1 : 0) { // from class: com.byazt.sgn.sl.2
            @Override // com.byazt.jwd.uj
            public boolean c(WebView webView, WebResourceRequest webResourceRequest) {
                this.f15943x = sl.f19685c;
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
                    String lowerCase = scheme.toLowerCase(Locale.US);
                    if (!lowerCase.contains("http") && !lowerCase.contains("https")) {
                        return true;
                    }
                    webView.loadUrl(str);
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            }

            @Override // com.byazt.jwd.uj
            public boolean c(WebView webView, String str) {
                this.f15943x = sl.f19685c;
                return super.c(webView, str);
            }
        });
        this.tt.setJavaScriptEnabled(true);
        this.tt.setDisplayZoomControls(false);
        this.tt.setCacheMode(2);
        this.tt.loadUrl(this.f19689n);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(2114387883);
        this.f19690x = relativeLayout;
        relativeLayout.setVisibility(0);
        RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(2114387894);
        this.f19688i = relativeLayout2;
        relativeLayout2.setVisibility(8);
        this.uj.setVisibility(8);
        this.f19687da = (ImageView) findViewById(2114387813);
        this.sl = (ImageView) findViewById(2114387836);
        this.f19687da.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.sl.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (sl.this.f19686a != null) {
                    sl.this.f19686a.c(sl.this);
                    sl.f19685c.set(0);
                }
            }
        });
        this.sl.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.sl.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    ((ClipboardManager) sl.this.ve.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setPrimaryClip(ClipData.newPlainText(null, sl.this.f19689n));
                    h.c(sl.this.ve, "链接复制成功", 1);
                } catch (Throwable th) {
                    com.byazt.nr.m.c(th);
                    h.c(sl.this.ve, "链接复制失败", 1);
                }
            }
        });
    }

    public sl c(c cVar) {
        this.f19686a = cVar;
        return this;
    }
}
