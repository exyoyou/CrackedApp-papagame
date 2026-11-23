package com.beizi.ad.v2.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.beizi.ad.internal.activity.BeiZiDownloadDialogActivity;
import com.beizi.ad.internal.d.a;
import com.beizi.ad.internal.e.h;
import com.beizi.ad.internal.e.k;
import com.beizi.ad.internal.e.n;
import com.beizi.ad.internal.e.u;
import com.beizi.ad.internal.view.b;
import com.beizi.ad.lance.ApkBean;
import com.beizi.ad.lance.a.i;
import com.beizi.ad.lance.a.l;
import com.beizi.ad.lance.a.r;
import com.beizi.ad.model.c;
import com.beizi.ad.model.j;
import com.beizi.fusion.R;
import com.beizi.fusion.tool.ai;
import com.bykv.vk.component.ttvideo.player.C;
import com.haima.hmcp.Constants;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class BeiZiLandingActivity extends Activity {
    private String A;
    private String B;
    private String C;
    private String D;
    private String E;
    private String F;
    private String G;
    private String H;
    private String I;
    private String J;
    private String K;
    private boolean L;
    private int M;
    private boolean N;
    private int O;
    private String P;
    private String Q;
    private String R;
    private String S;
    private boolean T;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WebView f9708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ProgressBar f9709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9710c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f9711d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f9712e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9713f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f9714g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private c.b.C0229b f9715h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f9716i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private j f9718k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f9719l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private RelativeLayout f9720m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ImageView f9721n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f9722o;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f9730w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private a f9731x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f9732y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f9733z;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f9717j = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f9723p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f9724q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f9725r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f9726s = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f9727t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f9728u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f9729v = 0;

    private boolean h() {
        if (TextUtils.isEmpty(this.f9733z) || TextUtils.isEmpty(this.F) || TextUtils.isEmpty(this.E) || TextUtils.isEmpty(this.I) || TextUtils.isEmpty(this.K)) {
            return false;
        }
        if (TextUtils.isEmpty(this.H) && TextUtils.isEmpty(this.G)) {
            return false;
        }
        int i10 = this.f9732y;
        return i10 == 2 || i10 == 5;
    }

    private boolean i() {
        int i10 = this.f9732y;
        if (i10 == 2) {
            return !TextUtils.isEmpty(this.D) && this.D.startsWith("http");
        }
        return i10 == 5 && !TextUtils.isEmpty(this.D);
    }

    private void j() {
        try {
            if (h() && i()) {
                int i10 = this.f9732y;
                if (i10 == 2) {
                    if (!i.a(this, this.A)) {
                        a(this, 1);
                        return;
                    }
                    i.b(this, this.A);
                    c.b.C0229b c0229b = this.f9715h;
                    if (c0229b != null) {
                        List<String> listA = c0229b.a();
                        this.f9715h.a(null);
                        k.a(listA);
                        return;
                    }
                    return;
                }
                if (i10 == 5) {
                    if (!TextUtils.isEmpty(this.B) && i.a(this, this.B)) {
                        i.b(this, this.B);
                        return;
                    }
                    if (!l.a(this, this.D)) {
                        k();
                        return;
                    }
                    if (!this.L && this.M != 0) {
                        a(this, 2);
                        return;
                    }
                    a(this.D, this);
                    c.b.C0229b c0229b2 = this.f9715h;
                    if (c0229b2 != null) {
                        List<String> listA2 = c0229b2.a();
                        this.f9715h.a(null);
                        k.a(listA2);
                        return;
                    }
                    return;
                }
                return;
            }
            k();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void k() {
        c.b.C0229b c0229b;
        c.b.C0229b c0229b2;
        try {
            if (this.O == 0) {
                return;
            }
            if (!TextUtils.isEmpty(this.P) && !TextUtils.isEmpty(this.Q)) {
                if (!r.a(this, this.P, this.Q, this.R) || (c0229b2 = this.f9715h) == null) {
                    return;
                }
                List<String> listK = c0229b2.k();
                this.f9715h.r(null);
                k.a(listK);
                return;
            }
            if (TextUtils.isEmpty(this.S) || !r.a(this, this.S) || (c0229b = this.f9715h) == null) {
                return;
            }
            List<String> listK2 = c0229b.k();
            this.f9715h.r(null);
            k.a(listK2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            RelativeLayout relativeLayout = this.f9720m;
            if (relativeLayout == null || relativeLayout.getVisibility() != 0) {
                WebView webView = this.f9708a;
                if (webView == null || !webView.canGoBack()) {
                    f();
                } else {
                    this.f9708a.goBack();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        try {
            super.onCreate(bundle);
            setContentView(R.layout.activtiy_beizi_landingpage);
            a aVar = a.f8843b;
            this.f9731x = aVar;
            if (aVar == null) {
                finish();
                return;
            }
            a();
            b();
            this.N = true;
            e();
            this.N = false;
            d();
        } catch (Exception e10) {
            e10.printStackTrace();
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        List<String> listF;
        super.onResume();
        try {
            if (!this.f9717j) {
                this.f9716i = false;
                c.b.C0229b c0229b = this.f9715h;
                if (c0229b != null && (listF = c0229b.f()) != null && listF.size() > 0) {
                    List<String> listJ = this.f9715h.j();
                    this.f9715h.q(null);
                    k.a(listJ);
                }
            }
            if (this.f9727t == 1 && System.currentTimeMillis() - this.f9730w < this.f9728u) {
                e();
            }
            this.f9730w = 0L;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f9717j = false;
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        try {
            this.f9730w = System.currentTimeMillis();
            if (this.f9716i) {
                c.b.C0229b c0229b = this.f9715h;
                if (c0229b != null) {
                    List<String> listF = c0229b.f();
                    this.f9715h.m(null);
                    k.a(listF);
                }
                g();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void d() {
        if (this.f9708a == null || TextUtils.isEmpty(this.f9712e)) {
            return;
        }
        WebView webView = this.f9708a;
        if (webView != null) {
            webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.v2.activity.BeiZiLandingActivity.5
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() != 0) {
                        return false;
                    }
                    BeiZiLandingActivity.this.f9714g = true;
                    return false;
                }
            });
        }
        u.a(this.f9708a);
        this.f9708a.loadUrl(this.f9712e, com.beizi.ad.lance.a.k.a());
        this.f9708a.setWebViewClient(new WebViewClient() { // from class: com.beizi.ad.v2.activity.BeiZiLandingActivity.6
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                BeiZiLandingActivity.this.c();
            }

            @Override // android.webkit.WebViewClient
            @RequiresApi(api = 21)
            public boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                try {
                    Uri url = webResourceRequest.getUrl();
                    if (url == null) {
                        return false;
                    }
                    String string = url.toString();
                    if (!string.startsWith("http")) {
                        if (BeiZiLandingActivity.this.b(string) && !BeiZiLandingActivity.this.d(string)) {
                            BeiZiLandingActivity.this.a(string);
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
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return true;
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                if (str.startsWith("http")) {
                    return false;
                }
                if (!BeiZiLandingActivity.this.b(str) || BeiZiLandingActivity.this.d(str)) {
                    return true;
                }
                BeiZiLandingActivity.this.a(str);
                return true;
            }
        });
        this.f9708a.setWebChromeClient(new b(this) { // from class: com.beizi.ad.v2.activity.BeiZiLandingActivity.7
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
                if (BeiZiLandingActivity.this.f9709b == null) {
                    return;
                }
                if (i10 < 100 && BeiZiLandingActivity.this.f9709b.getVisibility() == 8) {
                    BeiZiLandingActivity.this.f9709b.setVisibility(0);
                }
                BeiZiLandingActivity.this.f9709b.setProgress(i10);
                if (i10 == 100) {
                    BeiZiLandingActivity.this.f9709b.setVisibility(8);
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
                        BeiZiLandingActivity.this.setContentView(videoView);
                        videoView.start();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            if (!this.N && !this.f9722o) {
                int i10 = this.f9729v + 1;
                this.f9729v = i10;
                int i11 = this.f9723p;
                if (i11 <= 1 && this.f9725r <= 0) {
                    g();
                    return;
                }
                if (this.f9725r == 1) {
                    if (i11 == 1) {
                        if (i10 >= this.f9726s + 1) {
                            g();
                            return;
                        }
                        return;
                    } else {
                        if (i10 >= this.f9726s) {
                            g();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (TextUtils.isEmpty(this.f9711d)) {
                if (this.N) {
                    j();
                }
                int i12 = this.f9729v + 1;
                this.f9729v = i12;
                int i13 = this.f9723p;
                if (i13 <= 1 && this.f9725r <= 0) {
                    g();
                    return;
                }
                if (this.f9725r == 1) {
                    if (i13 == 1) {
                        if (i12 >= this.f9726s + 1) {
                            g();
                            return;
                        }
                        return;
                    } else {
                        if (i12 >= this.f9726s) {
                            g();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            this.f9716i = true;
            this.f9713f = true;
            Uri uri = Uri.parse(this.f9711d);
            if (uri.getScheme() != null && uri.getScheme().equals("bzopen") && !TextUtils.isEmpty(uri.getHost()) && uri.getPathSegments().size() > 0) {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.MAIN");
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                intent.addCategory("android.intent.category.LAUNCHER");
                String queryParameter = uri.getQueryParameter("flags");
                if (!TextUtils.isEmpty(queryParameter)) {
                    try {
                        if (queryParameter.startsWith("0x") || queryParameter.startsWith("0X")) {
                            intent.setFlags(Integer.parseInt(queryParameter.substring(2), 16));
                        } else {
                            intent.setFlags(Integer.parseInt(queryParameter));
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
                startActivity(intent);
            } else if (this.f9711d.startsWith("hwpps://landingpage")) {
                Intent intent2 = new Intent();
                intent2.setData(uri);
                intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                startActivity(intent2);
            } else if (this.f9711d.startsWith(Constants.WS_MESSAGE_TYPE_INTENT)) {
                Intent uri2 = Intent.parseUri(this.f9711d, 1);
                uri2.addFlags(C.ENCODING_PCM_MU_LAW);
                startActivity(uri2);
            } else {
                Intent intent3 = new Intent("android.intent.action.VIEW", uri);
                intent3.addFlags(805339136);
                startActivity(intent3);
            }
            c.b.C0229b c0229b = this.f9715h;
            if (c0229b != null) {
                List<String> listH = c0229b.h();
                this.f9715h.o(null);
                k.a(listH);
                List<String> listE = this.f9715h.e();
                this.f9715h.l(null);
                k.a(listE);
            }
            int i14 = this.f9729v + 1;
            this.f9729v = i14;
            int i15 = this.f9723p;
            if (i15 > 1 || this.f9725r > 0) {
                if (this.f9725r == 1) {
                    if (i15 == 1) {
                        if (i14 < this.f9726s + 1) {
                        }
                    } else {
                        if (i14 < this.f9726s) {
                        }
                    }
                }
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                c.b.C0229b c0229b2 = this.f9715h;
                if (c0229b2 != null) {
                    List<String> listG = c0229b2.g();
                    this.f9715h.n(null);
                    k.a(listG);
                }
                if (this.N) {
                    j();
                }
                this.f9729v++;
                if (this.f9723p > 1 || this.f9725r > 0) {
                }
            } finally {
                int i16 = this.f9729v + 1;
                this.f9729v = i16;
                int i17 = this.f9723p;
                if (i17 <= 1 && this.f9725r <= 0) {
                    g();
                } else if (this.f9725r == 1) {
                    if (i17 == 1) {
                        if (i16 >= this.f9726s + 1) {
                            g();
                        }
                    } else if (i16 >= this.f9726s) {
                        g();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        try {
            WebView webView = this.f9708a;
            if (webView != null) {
                webView.destroy();
            }
            finish();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void g() {
        try {
            RelativeLayout relativeLayout = this.f9720m;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
                this.f9720m.setOnClickListener(null);
            }
            View view = this.f9719l;
            if (view != null) {
                view.setVisibility(8);
                this.f9719l.setOnClickListener(null);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void b() {
        try {
            this.f9708a = (WebView) findViewById(R.id.lp_web_view);
            ((ImageView) findViewById(R.id.lp_close_iv)).setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiLandingActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BeiZiLandingActivity.this.f();
                }
            });
            this.f9709b = (ProgressBar) findViewById(R.id.lp_progress_bar);
            this.f9719l = findViewById(R.id.lp_mask_view);
            this.f9720m = (RelativeLayout) findViewById(R.id.lp_dialog_container_rl);
            this.f9721n = (ImageView) findViewById(R.id.lp_dialog_iv);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.f9718k == null || TextUtils.isEmpty(this.f9711d) || this.T) {
            return;
        }
        this.T = true;
        String strB = this.f9718k.b();
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        boolean zA = ai.a(this.f9718k.a());
        this.f9722o = zA;
        if (zA) {
            int iC = this.f9718k.c();
            View view = this.f9719l;
            if (view != null && iC == 1) {
                view.setVisibility(0);
                this.f9719l.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiLandingActivity.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                    }
                });
            }
            this.f9723p = this.f9718k.d();
            this.f9724q = this.f9718k.e();
            this.f9725r = this.f9718k.f();
            this.f9726s = this.f9718k.g();
            this.f9727t = this.f9718k.h();
            this.f9728u = this.f9718k.i();
            if (!TextUtils.isEmpty(strB)) {
                RelativeLayout relativeLayout = this.f9720m;
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(0);
                }
                this.f9720m.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiLandingActivity.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        BeiZiLandingActivity.this.e();
                    }
                });
                h.a(this).a(strB, new h.a() { // from class: com.beizi.ad.v2.activity.BeiZiLandingActivity.4
                    @Override // com.beizi.ad.internal.e.h.a
                    public void a() {
                    }

                    @Override // com.beizi.ad.internal.e.h.a
                    public void a(Bitmap bitmap) {
                        if (bitmap != null) {
                            if (BeiZiLandingActivity.this.f9721n != null) {
                                BeiZiLandingActivity.this.f9721n.setImageBitmap(bitmap);
                            }
                            if (BeiZiLandingActivity.this.f9723p == 1 && BeiZiLandingActivity.this.f9724q == 1) {
                                BeiZiLandingActivity.this.e();
                            }
                        }
                    }
                });
                return;
            }
            RelativeLayout relativeLayout2 = this.f9720m;
            if (relativeLayout2 != null) {
                relativeLayout2.setVisibility(8);
            }
        }
    }

    private void a() {
        try {
            Bundle bundleExtra = getIntent().getBundleExtra("data");
            if (bundleExtra != null && bundleExtra.containsKey("deeplinkUrl")) {
                this.f9711d = bundleExtra.getString("deeplinkUrl");
            }
            c.d dVarA = this.f9731x.a(0);
            if (dVarA == null) {
                finish();
                return;
            }
            c.b bVarB = dVarA.b();
            if (bVarB == null) {
                return;
            }
            this.f9712e = bVarB.a();
            this.f9732y = bVarB.c();
            this.f9733z = bVarB.d();
            this.A = bVarB.e();
            this.C = bVarB.f();
            this.D = bVarB.g();
            this.E = bVarB.k();
            this.F = bVarB.l();
            this.G = bVarB.m();
            this.H = bVarB.n();
            this.I = bVarB.o();
            this.J = bVarB.p();
            this.K = bVarB.q();
            c.b.a aVarR = bVarB.r();
            if (aVarR != null) {
                if (aVarR.a() == 1) {
                    this.f9710c = true;
                }
                if (aVarR.b() == 1) {
                    this.L = true;
                }
            }
            this.f9715h = bVarB.i();
            this.f9718k = this.f9731x.ah();
            this.O = bVarB.w();
            this.P = bVarB.s();
            this.Q = bVarB.t();
            this.R = bVarB.u();
            this.S = bVarB.v();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(String str) {
        try {
            List<String> listL = com.beizi.ad.internal.c.a().l();
            if (listL == null || listL.size() <= 0) {
                return false;
            }
            Iterator<String> it2 = listL.iterator();
            while (it2.hasNext()) {
                if (str.contains(it2.next())) {
                    return true;
                }
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        return !c(str) || this.f9710c;
    }

    private boolean c(String str) {
        List<String> listI = com.beizi.ad.internal.c.a().i();
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
    public void a(String str) {
        if (this.f9722o) {
            if (this.f9713f && !this.f9714g) {
                return;
            } else {
                this.f9713f = true;
            }
        }
        Uri uri = n.a(str) ? null : Uri.parse(str);
        if (uri == null) {
            return;
        }
        this.f9716i = true;
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        try {
            startActivity(intent);
            c.b.C0229b c0229b = this.f9715h;
            if (c0229b != null) {
                List<String> listH = c0229b.h();
                this.f9715h.o(null);
                k.a(listH);
                List<String> listE = this.f9715h.e();
                this.f9715h.l(null);
                k.a(listE);
            }
        } catch (Exception unused) {
        }
    }

    private void a(String str, Context context) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            startActivity(intent);
        } catch (Exception unused) {
        }
    }

    private void a(Context context, int i10) {
        try {
            File fileA = i.a(context);
            String absolutePath = fileA != null ? fileA.getAbsolutePath() : "";
            ApkBean apkBean = new ApkBean(this.D, this.A + ".apk", this.A, absolutePath, this.f9733z, this.C, context.getPackageName() + ".fileprovider", this.f9715h, this.E, this.F, this.G, this.H, this.I, this.J, this.K);
            apkBean.setSendLocalBroadcast(true);
            Bundle bundle = new Bundle();
            bundle.putSerializable("apkBean", apkBean);
            bundle.putInt("type", i10);
            bundle.putBoolean("isCanJump", this.f9710c);
            bundle.putBoolean("isDownload", h());
            if (i10 == 2) {
                c.b.C0229b c0229b = this.f9715h;
                if (c0229b != null) {
                    bundle.putStringArrayList("openList", (ArrayList) c0229b.a());
                }
                bundle.putString("landingPageUrl", this.f9712e);
            }
            if (!TextUtils.isEmpty(this.f9711d)) {
                bundle.putString("deeplinkUrl", this.f9711d);
            }
            Serializable serializable = this.f9718k;
            if (serializable != null) {
                bundle.putSerializable("lpOptimizeModule", serializable);
            }
            bundle.putBoolean("isForbidOpenLandingPage", true);
            Intent intent = new Intent(context, (Class<?>) BeiZiDownloadDialogActivity.class);
            intent.putExtra("data", bundle);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
