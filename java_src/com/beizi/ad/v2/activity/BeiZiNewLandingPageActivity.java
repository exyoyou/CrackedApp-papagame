package com.beizi.ad.v2.activity;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
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
import android.widget.TextView;
import android.widget.VideoView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.beizi.ad.internal.activity.BeiZiDownloadDialogActivity;
import com.beizi.ad.internal.activity.DownloadAppInfoActivity;
import com.beizi.ad.internal.c.a;
import com.beizi.ad.internal.e.h;
import com.beizi.ad.internal.e.k;
import com.beizi.ad.internal.e.t;
import com.beizi.ad.internal.e.u;
import com.beizi.ad.internal.view.CustomRoundImageView;
import com.beizi.ad.internal.view.b;
import com.beizi.ad.lance.ApkBean;
import com.beizi.ad.lance.a.i;
import com.beizi.ad.lance.a.l;
import com.beizi.ad.lance.a.n;
import com.beizi.ad.lance.a.r;
import com.beizi.ad.model.a.e;
import com.beizi.ad.model.c;
import com.beizi.ad.model.f;
import com.beizi.ad.model.j;
import com.beizi.ad.model.o;
import com.beizi.ad.model.q;
import com.beizi.fusion.R;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.tool.ae;
import com.beizi.fusion.tool.ai;
import com.beizi.fusion.tool.au;
import com.beizi.fusion.widget.BZCarouselView;
import com.bykv.vk.component.ttvideo.player.C;
import com.haima.hmcp.Constants;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class BeiZiNewLandingPageActivity extends Activity {
    private q A;
    private List<c.d> D;
    private List<e> E;
    private BZCarouselView G;
    private TextView H;
    private float I;
    private float J;
    private float K;
    private float L;
    private boolean M;
    private int N;
    private String O;
    private String P;
    private String Q;
    private String R;
    private String S;
    private String T;
    private String U;
    private String V;
    private String W;
    private String X;
    private String Y;
    private String Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WebView f9826a;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f9827aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private int f9828ab;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private c.d f9829ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private int f9830ad;
    private String ae;
    private String af;
    private String ag;
    private String ah;
    private ae ai;
    private com.beizi.ad.a.a.e aj;
    private View ak;
    private RelativeLayout al;
    private CustomRoundImageView am;
    private ImageView an;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ProgressBar f9831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9832c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f9833d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f9834e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f9835f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f9836g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9837h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f9838i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private j f9840k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f9841l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private RelativeLayout f9842m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ImageView f9843n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f9844o;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f9852w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private RelativeLayout f9853x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private FrameLayout f9854y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private a f9855z;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f9839j = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f9845p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f9846q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f9847r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f9848s = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f9849t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f9850u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f9851v = 0;
    private int B = 0;
    private int C = 3;
    private int F = 0;

    @Override // android.app.Activity
    public void onBackPressed() {
        WebView webView;
        try {
            RelativeLayout relativeLayout = this.f9842m;
            if ((relativeLayout == null || relativeLayout.getVisibility() != 0) && (webView = this.f9826a) != null && webView.canGoBack()) {
                this.f9826a.goBack();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R.layout.activtiy_beizi_new_landingpage);
            a aVar = a.f8787a;
            this.f9855z = aVar;
            if (aVar == null) {
                finish();
                return;
            }
            this.f9828ab = aVar.u();
            q qVarV = this.f9855z.v();
            this.A = qVarV;
            if (qVarV != null) {
                this.B = qVarV.b();
                int iA = this.A.a();
                this.C = iA;
                if (iA <= 0) {
                    this.C = 3;
                }
            }
            c.d dVarB = this.f9855z.b(0);
            if (dVarB == null) {
                finish();
            } else {
                b(dVarB);
                a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            ae aeVar = this.ai;
            if (aeVar != null) {
                aeVar.b();
            }
            com.beizi.ad.a.a.e eVar = this.aj;
            if (eVar != null) {
                eVar.d();
            }
            this.aj = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        com.beizi.ad.a.a.e eVar = this.aj;
        if (eVar != null) {
            eVar.b();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        List<String> listF;
        super.onResume();
        try {
            if (this.f9855z == null) {
                finish();
                return;
            }
            if (!this.f9839j) {
                this.f9838i = false;
                c.b.C0229b c0229bL = l();
                if (c0229bL != null && (listF = c0229bL.f()) != null && listF.size() > 0) {
                    List<String> listJ = c0229bL.j();
                    c0229bL.q(null);
                    k.a(listJ);
                }
                b();
                if (!TextUtils.isEmpty(this.f9835f) && !TextUtils.isEmpty(this.f9834e) && !this.f9834e.equals(this.f9835f)) {
                    this.f9826a.loadUrl(this.f9834e, com.beizi.ad.lance.a.k.a());
                }
            }
            if (this.f9849t == 1 && System.currentTimeMillis() - this.f9852w < this.f9850u) {
                f();
            }
            this.f9852w = 0L;
            com.beizi.ad.a.a.e eVar = this.aj;
            if (eVar != null) {
                eVar.a();
            }
            this.f9839j = false;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        try {
            this.f9852w = System.currentTimeMillis();
            if (this.f9838i) {
                this.f9835f = null;
                c.b.C0229b c0229bL = l();
                if (c0229bL != null) {
                    List<String> listF = c0229bL.f();
                    c0229bL.m(null);
                    k.a(listF);
                }
                h();
            }
            c();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void e() {
        WebView webView = this.f9826a;
        if (webView == null) {
            return;
        }
        u.a(webView);
        if (!TextUtils.isEmpty(this.f9834e)) {
            this.f9826a.loadUrl(this.f9834e, com.beizi.ad.lance.a.k.a());
        }
        this.f9826a.setWebViewClient(new WebViewClient() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.3
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                BeiZiNewLandingPageActivity.this.d();
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
                        if (BeiZiNewLandingPageActivity.this.b(string) && !BeiZiNewLandingPageActivity.this.d(string)) {
                            BeiZiNewLandingPageActivity.this.a(string);
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
                if (!BeiZiNewLandingPageActivity.this.b(str) || BeiZiNewLandingPageActivity.this.d(str)) {
                    return true;
                }
                BeiZiNewLandingPageActivity.this.a(str);
                return true;
            }
        });
        this.f9826a.setWebChromeClient(new b(this) { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.4
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
                if (BeiZiNewLandingPageActivity.this.f9831b == null) {
                    return;
                }
                if (i10 < 100 && BeiZiNewLandingPageActivity.this.f9831b.getVisibility() == 8) {
                    BeiZiNewLandingPageActivity.this.f9831b.setVisibility(0);
                }
                BeiZiNewLandingPageActivity.this.f9831b.setProgress(i10);
                if (i10 == 100) {
                    BeiZiNewLandingPageActivity.this.f9831b.setVisibility(8);
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
                        BeiZiNewLandingPageActivity.this.setContentView(videoView);
                        videoView.start();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        c.b.C0229b c0229bL = l();
        try {
            if (!this.f9844o) {
                int i10 = this.f9851v + 1;
                this.f9851v = i10;
                int i11 = this.f9845p;
                if (i11 <= 1 && this.f9847r <= 0) {
                    h();
                    return;
                }
                if (this.f9847r == 1) {
                    if (i11 == 1) {
                        if (i10 >= this.f9848s + 1) {
                            h();
                            return;
                        }
                        return;
                    } else {
                        if (i10 >= this.f9848s) {
                            h();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (TextUtils.isEmpty(this.f9833d)) {
                int i12 = this.f9851v + 1;
                this.f9851v = i12;
                int i13 = this.f9845p;
                if (i13 <= 1 && this.f9847r <= 0) {
                    h();
                    return;
                }
                if (this.f9847r == 1) {
                    if (i13 == 1) {
                        if (i12 >= this.f9848s + 1) {
                            h();
                            return;
                        }
                        return;
                    } else {
                        if (i12 >= this.f9848s) {
                            h();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            this.f9838i = true;
            this.f9836g = true;
            Uri uri = Uri.parse(this.f9833d);
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
            } else if (this.f9833d.startsWith("hwpps://landingpage")) {
                Intent intent2 = new Intent();
                intent2.setData(uri);
                intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                startActivity(intent2);
            } else if (this.f9833d.startsWith(Constants.WS_MESSAGE_TYPE_INTENT)) {
                Intent uri2 = Intent.parseUri(this.f9833d, 1);
                uri2.addFlags(C.ENCODING_PCM_MU_LAW);
                startActivity(uri2);
            } else {
                Intent intent3 = new Intent("android.intent.action.VIEW", uri);
                intent3.addFlags(805339136);
                startActivity(intent3);
            }
            if (c0229bL != null) {
                List<String> listH = c0229bL.h();
                c0229bL.o(null);
                k.a(listH);
                List<String> listE = c0229bL.e();
                c0229bL.l(null);
                k.a(listE);
            }
            int i14 = this.f9851v + 1;
            this.f9851v = i14;
            int i15 = this.f9845p;
            if (i15 > 1 || this.f9847r > 0) {
                if (this.f9847r == 1) {
                    if (i15 == 1) {
                        if (i14 < this.f9848s + 1) {
                        }
                    } else {
                        if (i14 < this.f9848s) {
                        }
                    }
                }
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                if (c0229bL != null) {
                    List<String> listG = c0229bL.g();
                    c0229bL.n(null);
                    k.a(listG);
                }
                this.f9851v++;
                if (this.f9845p > 1 || this.f9847r > 0) {
                }
            } finally {
                int i16 = this.f9851v + 1;
                this.f9851v = i16;
                int i17 = this.f9845p;
                if (i17 <= 1 && this.f9847r <= 0) {
                    h();
                } else if (this.f9847r == 1) {
                    if (i17 == 1) {
                        if (i16 >= this.f9848s + 1) {
                            h();
                        }
                    } else if (i16 >= this.f9848s) {
                        h();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        try {
            WebView webView = this.f9826a;
            if (webView != null) {
                webView.destroy();
            }
            finish();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void h() {
        try {
            RelativeLayout relativeLayout = this.f9842m;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
                this.f9842m.setOnClickListener(null);
            }
            View view = this.f9841l;
            if (view != null) {
                view.setVisibility(8);
                this.f9841l.setOnClickListener(null);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean i() {
        if (TextUtils.isEmpty(this.O) || TextUtils.isEmpty(this.U) || TextUtils.isEmpty(this.T) || TextUtils.isEmpty(this.X) || TextUtils.isEmpty(this.Z)) {
            return false;
        }
        if (TextUtils.isEmpty(this.W) && TextUtils.isEmpty(this.V)) {
            return false;
        }
        int i10 = this.N;
        return i10 == 2 || i10 == 5;
    }

    private boolean j() {
        int i10 = this.N;
        if (i10 == 2) {
            return !TextUtils.isEmpty(this.S) && this.S.startsWith("http");
        }
        return i10 == 5 && !TextUtils.isEmpty(this.S);
    }

    private void k() {
        try {
            if (i() && j()) {
                c.b.C0229b c0229bL = l();
                int i10 = this.N;
                if (i10 == 2) {
                    if (!i.a(this, this.P)) {
                        a((Context) this, 1);
                        return;
                    }
                    i.b(this, this.P);
                    if (c0229bL != null) {
                        List<String> listA = c0229bL.a();
                        c0229bL.a(null);
                        k.a(listA);
                        return;
                    }
                    return;
                }
                if (i10 == 5) {
                    if (!TextUtils.isEmpty(this.Q) && i.a(this, this.Q)) {
                        i.b(this, this.Q);
                        return;
                    }
                    if (!l.a(this, this.S)) {
                        o();
                        return;
                    }
                    if (!this.f9827aa && this.f9828ab != 0) {
                        a((Context) this, 2);
                        return;
                    }
                    a(this.S, this);
                    if (c0229bL != null) {
                        List<String> listA2 = c0229bL.a();
                        c0229bL.a(null);
                        k.a(listA2);
                        return;
                    }
                    return;
                }
                return;
            }
            o();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private c.b.C0229b l() {
        c.d dVar;
        c.b bVarB;
        try {
            if (this.f9855z == null || (dVar = this.f9829ac) == null || (bVarB = dVar.b()) == null) {
                return null;
            }
            return bVarB.i();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void m() {
        a aVar;
        com.beizi.ad.model.l lVarR;
        e eVarE;
        try {
            if (this.f9853x == null || (aVar = this.f9855z) == null || (lVarR = aVar.r()) == null || this.f9855z.q()) {
                return;
            }
            final c.d dVarB = this.f9855z.b(2);
            if (dVarB == null) {
                dVarB = this.f9855z.b(0);
            }
            if (dVarB == null) {
                return;
            }
            List<c.a> listE = dVarB.e();
            if (listE != null && listE.size() > 0 && (eVarE = e(listE.get(0).b())) != null) {
                String strD = eVarE.d();
                if (!TextUtils.isEmpty(strD)) {
                    lVarR.a(strD);
                }
                String strB = eVarE.b();
                if (!TextUtils.isEmpty(strB)) {
                    lVarR.b(strB);
                }
                String strC = eVarE.c();
                if (!TextUtils.isEmpty(strC)) {
                    lVarR.c(strC);
                }
            }
            this.ai = new ae();
            this.ai.a(this.f9853x, com.beizi.ad.lance.a.q.f(this), com.beizi.ad.lance.a.q.g(this), lVarR, new ae.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.5
                @Override // com.beizi.fusion.tool.ae.a
                public void a() {
                    try {
                        if (BeiZiNewLandingPageActivity.this.f9855z != null) {
                            BeiZiNewLandingPageActivity.this.f9855z.c(true);
                        }
                        BeiZiNewLandingPageActivity beiZiNewLandingPageActivity = BeiZiNewLandingPageActivity.this;
                        beiZiNewLandingPageActivity.a(dVarB, beiZiNewLandingPageActivity.f9854y);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }

                @Override // com.beizi.fusion.tool.ae.a
                public void b() {
                    BeiZiNewLandingPageActivity.this.c(dVarB);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n() {
        a aVar;
        final c.d dVarB;
        List<c.a> listE;
        e eVarE;
        try {
            if (this.B != 1 || (aVar = this.f9855z) == null || (dVarB = aVar.b(4)) == null || (listE = dVarB.e()) == null || listE.isEmpty() || (eVarE = e(listE.get(0).b())) == null) {
                return false;
            }
            String strD = eVarE.d();
            if (TextUtils.isEmpty(strD)) {
                return false;
            }
            this.al = (RelativeLayout) findViewById(R.id.lp_new_privilege_container_rl);
            this.am = (CustomRoundImageView) findViewById(R.id.lp_new_privilege_iv);
            this.an = (ImageView) findViewById(R.id.lp_new_privilege_close_iv);
            this.al.setVisibility(0);
            this.am.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        if (BeiZiNewLandingPageActivity.this.al != null) {
                            BeiZiNewLandingPageActivity.this.al.setVisibility(8);
                        }
                        BeiZiNewLandingPageActivity beiZiNewLandingPageActivity = BeiZiNewLandingPageActivity.this;
                        beiZiNewLandingPageActivity.a(dVarB, String.valueOf(beiZiNewLandingPageActivity.I), String.valueOf(BeiZiNewLandingPageActivity.this.J), String.valueOf(BeiZiNewLandingPageActivity.this.K), String.valueOf(BeiZiNewLandingPageActivity.this.L), String.valueOf(BeiZiNewLandingPageActivity.this.I), String.valueOf(BeiZiNewLandingPageActivity.this.J), String.valueOf(BeiZiNewLandingPageActivity.this.K), String.valueOf(BeiZiNewLandingPageActivity.this.L), 0);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
            h.a(this).a(strD, new h.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.8
                @Override // com.beizi.ad.internal.e.h.a
                public void a() {
                }

                @Override // com.beizi.ad.internal.e.h.a
                public void a(Bitmap bitmap) {
                    try {
                        int width = bitmap.getWidth();
                        int height = bitmap.getHeight();
                        if (BeiZiNewLandingPageActivity.this.am != null) {
                            int iM = au.m(BeiZiNewLandingPageActivity.this) - au.a(BeiZiNewLandingPageActivity.this, 60.0f);
                            int iN = au.n(BeiZiNewLandingPageActivity.this) - au.a(BeiZiNewLandingPageActivity.this, 120.0f);
                            if (width > iM) {
                                width = iM;
                            }
                            if (height > iN) {
                                height = iN;
                            }
                            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(width, height);
                            layoutParams.addRule(13);
                            BeiZiNewLandingPageActivity.this.am.setLayoutParams(layoutParams);
                            BeiZiNewLandingPageActivity.this.am.setRectRadius(t.a(BeiZiNewLandingPageActivity.this, 6.0f));
                            BeiZiNewLandingPageActivity.this.am.setImageBitmap(bitmap);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
            this.an.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        if (BeiZiNewLandingPageActivity.this.al != null) {
                            BeiZiNewLandingPageActivity.this.al.setVisibility(8);
                        }
                        if (BeiZiNewLandingPageActivity.this.A != null && BeiZiNewLandingPageActivity.this.A.c() == 1) {
                            BeiZiNewLandingPageActivity.this.A.c(0);
                            if (BeiZiNewLandingPageActivity.this.f9855z != null) {
                                BeiZiNewLandingPageActivity.this.f9855z.a(BeiZiNewLandingPageActivity.this.A);
                            }
                            BeiZiNewLandingPageActivity beiZiNewLandingPageActivity = BeiZiNewLandingPageActivity.this;
                            beiZiNewLandingPageActivity.a(dVarB, String.valueOf(beiZiNewLandingPageActivity.I), String.valueOf(BeiZiNewLandingPageActivity.this.J), String.valueOf(BeiZiNewLandingPageActivity.this.K), String.valueOf(BeiZiNewLandingPageActivity.this.L), String.valueOf(BeiZiNewLandingPageActivity.this.I), String.valueOf(BeiZiNewLandingPageActivity.this.J), String.valueOf(BeiZiNewLandingPageActivity.this.K), String.valueOf(BeiZiNewLandingPageActivity.this.L), 0);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
            this.al.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.10
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() != 0) {
                        return false;
                    }
                    BeiZiNewLandingPageActivity.this.I = motionEvent.getX();
                    BeiZiNewLandingPageActivity.this.J = motionEvent.getY();
                    BeiZiNewLandingPageActivity.this.K = motionEvent.getX();
                    BeiZiNewLandingPageActivity.this.L = motionEvent.getY();
                    return false;
                }
            });
            a(dVarB, this.al);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private void o() {
        c.b.C0229b c0229bL;
        c.b.C0229b c0229bL2;
        try {
            if (this.f9830ad == 0) {
                return;
            }
            if (!TextUtils.isEmpty(this.ae) && !TextUtils.isEmpty(this.af)) {
                if (!r.a(this, this.ae, this.af, this.ag) || (c0229bL2 = l()) == null) {
                    return;
                }
                List<String> listK = c0229bL2.k();
                c0229bL2.r(null);
                k.a(listK);
                return;
            }
            if (TextUtils.isEmpty(this.ah) || !r.a(this, this.ah) || (c0229bL = l()) == null) {
                return;
            }
            List<String> listK2 = c0229bL.k();
            c0229bL.r(null);
            k.a(listK2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f9840k == null || TextUtils.isEmpty(this.f9833d) || this.M) {
            return;
        }
        this.M = true;
        String strB = this.f9840k.b();
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        boolean zA = ai.a(this.f9840k.a());
        this.f9844o = zA;
        if (zA) {
            WebView webView = this.f9826a;
            if (webView != null) {
                webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.16
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() != 0) {
                            return false;
                        }
                        BeiZiNewLandingPageActivity.this.f9837h = true;
                        return false;
                    }
                });
            }
            int iC = this.f9840k.c();
            View view = this.f9841l;
            if (view != null && iC == 1) {
                view.setVisibility(0);
                this.f9841l.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.17
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                    }
                });
            }
            this.f9845p = this.f9840k.d();
            this.f9846q = this.f9840k.e();
            this.f9847r = this.f9840k.f();
            this.f9848s = this.f9840k.g();
            this.f9849t = this.f9840k.h();
            this.f9850u = this.f9840k.i();
            if (!TextUtils.isEmpty(strB)) {
                RelativeLayout relativeLayout = this.f9842m;
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(0);
                }
                this.f9842m.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.18
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        BeiZiNewLandingPageActivity.this.f();
                    }
                });
                h.a(this).a(strB, new h.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.2
                    @Override // com.beizi.ad.internal.e.h.a
                    public void a() {
                    }

                    @Override // com.beizi.ad.internal.e.h.a
                    public void a(Bitmap bitmap) {
                        if (bitmap != null) {
                            if (BeiZiNewLandingPageActivity.this.f9843n != null) {
                                BeiZiNewLandingPageActivity.this.f9843n.setImageBitmap(bitmap);
                            }
                            if (BeiZiNewLandingPageActivity.this.f9845p == 1 && BeiZiNewLandingPageActivity.this.f9846q == 1) {
                                BeiZiNewLandingPageActivity.this.f();
                            }
                        }
                    }
                });
            } else {
                RelativeLayout relativeLayout2 = this.f9842m;
                if (relativeLayout2 != null) {
                    relativeLayout2.setVisibility(8);
                }
            }
            if (this.f9845p == 1) {
                int i10 = this.f9846q;
                if (i10 == 0 || i10 == 2) {
                    f();
                }
            }
        }
    }

    private void c() {
        try {
            BZCarouselView bZCarouselView = this.G;
            if (bZCarouselView != null) {
                bZCarouselView.stopCarousel();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void b() {
        try {
            BZCarouselView bZCarouselView = this.G;
            if (bZCarouselView != null) {
                bZCarouselView.startCarousel();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
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

    private e e(String str) {
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("{")) {
                JSONObject jSONObject = new JSONObject(str);
                String strC = jSONObject.has("title") ? com.beizi.ad.internal.e.j.c(jSONObject, "title") : null;
                String strC2 = jSONObject.has("desc") ? com.beizi.ad.internal.e.j.c(jSONObject, "desc") : null;
                String strC3 = jSONObject.has("appIcon") ? com.beizi.ad.internal.e.j.c(jSONObject, "appIcon") : null;
                String strC4 = jSONObject.has("Image") ? com.beizi.ad.internal.e.j.c(jSONObject, "Image") : null;
                e eVar = new e();
                eVar.b(strC);
                eVar.c(strC2);
                eVar.a(strC3);
                eVar.d(strC4);
                return eVar;
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        return !c(str) || this.f9832c;
    }

    private void a() {
        List<c.a> listE;
        e eVarE;
        try {
            if (this.f9855z == null) {
                return;
            }
            this.f9853x = (RelativeLayout) findViewById(R.id.lp_new_root_container_rl);
            this.H = (TextView) findViewById(R.id.lp_new_group_download_tv);
            List<c.d> listS = this.f9855z.s();
            this.D = new ArrayList();
            if (listS != null && listS.size() > 0) {
                for (c.d dVar : listS) {
                    if (dVar != null) {
                        if (dVar.t() == 0) {
                            this.D.add(0, dVar);
                        }
                        if (dVar.t() == 1) {
                            this.D.add(dVar);
                        }
                    }
                }
            }
            int iM = au.m(this);
            int i10 = (int) (((double) iM) * 0.5625d);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iM, i10);
            List<c.d> list = this.D;
            if (list != null && list.size() > 0) {
                FrameLayout frameLayout = (FrameLayout) findViewById(R.id.lp_new_group_image_container_fl);
                this.f9854y = frameLayout;
                frameLayout.setVisibility(0);
                this.f9854y.setLayoutParams(layoutParams);
                ArrayList arrayList = null;
                for (c.d dVar2 : this.D) {
                    if (dVar2 != null && (listE = dVar2.e()) != null && listE.size() > 0 && (eVarE = e(listE.get(0).b())) != null) {
                        String strD = eVarE.d();
                        if (!TextUtils.isEmpty(strD)) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(strD);
                            if (this.E == null) {
                                this.E = new ArrayList();
                            }
                            c.b bVarB = dVar2.b();
                            if (bVarB != null) {
                                eVarE.e(bVarB.d());
                                eVarE.a(bVarB.c());
                                eVarE.f(bVarB.l());
                                eVarE.g(bVarB.k());
                                eVarE.i(bVarB.m());
                                eVarE.h(bVarB.n());
                                eVarE.j(bVarB.o());
                                eVarE.k(bVarB.q());
                                eVarE.m(bVarB.b());
                                eVarE.l(bVarB.g());
                            }
                            this.E.add(eVarE);
                        }
                    }
                }
                a(arrayList, iM, i10);
            }
            this.f9826a = (WebView) findViewById(R.id.lp_new_web_view);
            ((ImageView) findViewById(R.id.lp_new_close_iv)).setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        boolean zN = BeiZiNewLandingPageActivity.this.B == 1 ? BeiZiNewLandingPageActivity.this.n() : false;
                        BeiZiNewLandingPageActivity.this.B = 0;
                        if (BeiZiNewLandingPageActivity.this.A != null) {
                            BeiZiNewLandingPageActivity.this.A.b(0);
                            if (BeiZiNewLandingPageActivity.this.f9855z != null) {
                                BeiZiNewLandingPageActivity.this.f9855z.a(BeiZiNewLandingPageActivity.this.A);
                            }
                        }
                        if (zN) {
                            return;
                        }
                        BeiZiNewLandingPageActivity.this.g();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
            this.f9831b = (ProgressBar) findViewById(R.id.lp_new_progress_bar);
            this.f9841l = findViewById(R.id.lp_new_mask_view);
            this.f9842m = (RelativeLayout) findViewById(R.id.lp_new_dialog_container_rl);
            this.f9843n = (ImageView) findViewById(R.id.lp_new_dialog_iv);
            e();
            WebView webView = this.f9826a;
            if (webView != null) {
                webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.11
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() != 0) {
                            return false;
                        }
                        BeiZiNewLandingPageActivity.this.f9837h = true;
                        return false;
                    }
                });
            }
            m();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(c.d dVar) {
        try {
            int[] iArr = new int[2];
            int width = this.f9854y.getWidth();
            int height = this.f9854y.getHeight();
            this.f9854y.getLocationOnScreen(iArr);
            int[] iArrA = ai.a(width / 2, height / 2);
            a(dVar, String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void b(c.d dVar) {
        this.f9829ac = dVar;
        a(dVar);
        if (!TextUtils.isEmpty(this.f9833d)) {
            c.b.C0229b c0229bL = l();
            try {
                this.f9836g = true;
                this.f9838i = true;
                Uri uri = Uri.parse(this.f9833d);
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
                    startActivity(intent);
                } else if (this.f9833d.startsWith("hwpps://landingpage")) {
                    Intent intent2 = new Intent();
                    intent2.setData(uri);
                    intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                    startActivity(intent2);
                } else if (this.f9833d.startsWith(Constants.WS_MESSAGE_TYPE_INTENT)) {
                    Intent uri2 = Intent.parseUri(this.f9833d, 1);
                    uri2.addFlags(C.ENCODING_PCM_MU_LAW);
                    startActivity(uri2);
                } else {
                    Intent intent3 = new Intent("android.intent.action.VIEW", uri);
                    intent3.addFlags(805339136);
                    startActivity(intent3);
                }
                if (c0229bL != null) {
                    List<String> listH = c0229bL.h();
                    c0229bL.o(null);
                    k.a(listH);
                    List<String> listE = c0229bL.e();
                    c0229bL.l(null);
                    k.a(listE);
                    return;
                }
                return;
            } catch (Throwable th) {
                th.printStackTrace();
                if (c0229bL != null) {
                    List<String> listG = c0229bL.g();
                    c0229bL.n(null);
                    k.a(listG);
                }
                k();
                return;
            }
        }
        k();
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
    public void d(final c.d dVar) {
        o oVarW;
        FrameLayout frameLayout;
        try {
            View view = this.ak;
            if (view != null && (frameLayout = this.f9854y) != null) {
                frameLayout.removeView(view);
                this.ak = null;
            }
            com.beizi.ad.a.a.e eVar = this.aj;
            if (eVar != null) {
                eVar.d();
                this.aj = null;
            }
            if (dVar == null || com.beizi.fusion.c.b.a().p() || (oVarW = dVar.w()) == null) {
                return;
            }
            int iA = oVarW.a();
            int iD = oVarW.d();
            double dB = oVarW.b();
            double dC = oVarW.c();
            int iE = oVarW.e();
            int iJ = oVarW.j();
            double dH = oVarW.h();
            double dI = oVarW.i();
            int iK = oVarW.k();
            int iG = oVarW.g();
            final int iF = oVarW.f();
            boolean z10 = true;
            if (iG != 1 || iJ <= 0 || dH <= 0.0d || dI <= 0.0d) {
                z10 = false;
            }
            boolean zW = this.f9855z.w();
            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = new AdSpacesBean.BuyerBean.ShakeViewBean();
            if (zW && z10) {
                shakeViewBean.setShakeCount(iJ);
                shakeViewBean.setShakeStartAmplitude(dH);
                shakeViewBean.setShakeEndAmplitude(dI);
                shakeViewBean.setRegulatoryAngle(iK);
            } else {
                shakeViewBean.setShakeCount(iD);
                shakeViewBean.setShakeStartAmplitude(dB);
                shakeViewBean.setShakeEndAmplitude(dC);
                shakeViewBean.setRegulatoryAngle(iE);
            }
            com.beizi.ad.a.a.e eVar2 = new com.beizi.ad.a.a.e(this, shakeViewBean, null, dVar.a());
            this.aj = eVar2;
            View viewB = eVar2.b(this.f9854y);
            this.ak = viewB;
            if (viewB != null) {
                if (iA == 0) {
                    viewB.setVisibility(4);
                } else {
                    viewB.setVisibility(0);
                }
            }
            this.aj.a(new com.beizi.ad.a.a.e.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.6
                @Override // com.beizi.ad.a.a.e.a
                public void a() {
                    n.a("BeiZisAd", "handleShakeViewContent click");
                    try {
                        if (BeiZiNewLandingPageActivity.this.f9855z != null) {
                            BeiZiNewLandingPageActivity.this.f9855z.d(true);
                        }
                        if (iF == 1) {
                            if (BeiZiNewLandingPageActivity.this.ak != null && BeiZiNewLandingPageActivity.this.f9854y != null) {
                                BeiZiNewLandingPageActivity.this.f9854y.removeView(BeiZiNewLandingPageActivity.this.ak);
                                BeiZiNewLandingPageActivity.this.ak = null;
                            }
                            if (BeiZiNewLandingPageActivity.this.aj != null) {
                                BeiZiNewLandingPageActivity.this.aj.d();
                                BeiZiNewLandingPageActivity.this.aj = null;
                            }
                        }
                        BeiZiNewLandingPageActivity.this.a(dVar, "", "", "", "", "", "", "", "", 2);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(List<String> list, int i10, int i11) {
        if (list == null || list.isEmpty() || this.f9855z == null) {
            return;
        }
        BZCarouselView bZCarouselView = new BZCarouselView(this);
        this.G = bZCarouselView;
        bZCarouselView.setOnContentChangeListener(new BZCarouselView.a() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.12
            @Override // com.beizi.fusion.widget.BZCarouselView.a
            public void a(int i12) {
                try {
                    BeiZiNewLandingPageActivity.this.F = i12;
                    c.d dVar = (c.d) BeiZiNewLandingPageActivity.this.D.get(i12);
                    BeiZiNewLandingPageActivity beiZiNewLandingPageActivity = BeiZiNewLandingPageActivity.this;
                    beiZiNewLandingPageActivity.a(dVar, beiZiNewLandingPageActivity.f9854y);
                    BeiZiNewLandingPageActivity.this.d(dVar);
                    BeiZiNewLandingPageActivity beiZiNewLandingPageActivity2 = BeiZiNewLandingPageActivity.this;
                    beiZiNewLandingPageActivity2.a((e) beiZiNewLandingPageActivity2.E.get(i12));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        });
        this.G.setImageUrls(list, i10, i11);
        this.G.setScrollInterval(this.C);
        this.f9854y.setVisibility(0);
        this.f9854y.addView(this.G);
        this.f9854y.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    BeiZiNewLandingPageActivity.this.f9838i = true;
                    c.d dVar = (c.d) BeiZiNewLandingPageActivity.this.D.get(BeiZiNewLandingPageActivity.this.F);
                    BeiZiNewLandingPageActivity beiZiNewLandingPageActivity = BeiZiNewLandingPageActivity.this;
                    beiZiNewLandingPageActivity.a(dVar, String.valueOf(beiZiNewLandingPageActivity.I), String.valueOf(BeiZiNewLandingPageActivity.this.J), String.valueOf(BeiZiNewLandingPageActivity.this.K), String.valueOf(BeiZiNewLandingPageActivity.this.L), String.valueOf(BeiZiNewLandingPageActivity.this.I), String.valueOf(BeiZiNewLandingPageActivity.this.J), String.valueOf(BeiZiNewLandingPageActivity.this.K), String.valueOf(BeiZiNewLandingPageActivity.this.L), 0);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        });
        this.f9854y.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.14
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0) {
                    return false;
                }
                BeiZiNewLandingPageActivity.this.I = motionEvent.getX();
                BeiZiNewLandingPageActivity.this.J = motionEvent.getY();
                BeiZiNewLandingPageActivity.this.K = motionEvent.getX();
                BeiZiNewLandingPageActivity.this.L = motionEvent.getY();
                return false;
            }
        });
        if (list.size() == 1) {
            a(this.E.get(0));
        }
        b();
    }

    public void a(e eVar) {
        try {
            TextView textView = this.H;
            if (textView == null) {
                return;
            }
            if (eVar == null) {
                textView.setVisibility(8);
                return;
            }
            if (!eVar.e()) {
                this.H.setVisibility(8);
                return;
            }
            int iF = eVar.f();
            if (iF != 2 && iF != 5) {
                this.H.setVisibility(8);
                return;
            }
            this.H.setVisibility(0);
            final String strG = eVar.g();
            String strH = eVar.h();
            String strI = eVar.i();
            String strJ = eVar.j();
            final String strK = !TextUtils.isEmpty(strJ) ? strJ : eVar.k();
            final String strL = eVar.l();
            final String strM = eVar.m();
            this.H.setText(Html.fromHtml("应用名称：" + strG + " | 开发者：" + strH + " | 应用版本：" + strI + " | <u>权限详情</u> | <u>隐私协议</u> | <u>功能介绍</u>"));
            this.H.setTextColor(Color.parseColor("#999999"));
            this.H.setShadowLayer(1.0f, 1.0f, 1.0f, Color.parseColor("#333333"));
            this.H.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiNewLandingPageActivity.15
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        Intent intent = new Intent(BeiZiNewLandingPageActivity.this, (Class<?>) DownloadAppInfoActivity.class);
                        intent.putExtra("title_content_key", strG);
                        intent.putExtra("privacy_content_key", strL);
                        intent.putExtra("permission_content_key", strK);
                        intent.putExtra("intro_content_key", strM);
                        intent.setFlags(C.ENCODING_PCM_MU_LAW);
                        BeiZiNewLandingPageActivity.this.startActivity(intent);
                    } catch (Exception unused) {
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (!this.f9836g || this.f9837h) {
            this.f9836g = true;
            Uri uri = com.beizi.ad.internal.e.n.a(str) ? null : Uri.parse(str);
            if (uri == null) {
                return;
            }
            this.f9838i = true;
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            try {
                startActivity(intent);
                c.b.C0229b c0229bL = l();
                if (c0229bL != null) {
                    List<String> listH = c0229bL.h();
                    c0229bL.o(null);
                    k.a(listH);
                    List<String> listE = c0229bL.e();
                    c0229bL.l(null);
                    k.a(listE);
                }
            } catch (Exception unused) {
            }
        }
    }

    private void a(c.d dVar) {
        c.b bVarB;
        a aVar;
        this.f9835f = this.f9834e;
        this.f9832c = false;
        this.N = 0;
        this.O = null;
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = null;
        this.T = null;
        this.U = null;
        this.V = null;
        this.W = null;
        this.X = null;
        this.Y = null;
        this.Z = null;
        this.f9827aa = false;
        this.f9834e = null;
        this.f9833d = null;
        this.f9830ad = 0;
        this.ae = null;
        this.af = null;
        this.ag = null;
        this.ah = null;
        if (this.f9855z == null || dVar == null || (bVarB = dVar.b()) == null) {
            return;
        }
        this.f9834e = bVarB.a();
        if (TextUtils.isEmpty(this.f9835f)) {
            this.f9835f = this.f9834e;
        }
        this.f9833d = bVarB.b();
        this.N = bVarB.c();
        this.O = bVarB.d();
        this.P = bVarB.e();
        if (this.f9829ac.t() == 0 && (aVar = this.f9855z) != null) {
            this.Q = aVar.o();
        }
        this.R = bVarB.f();
        this.S = bVarB.g();
        this.T = bVarB.k();
        this.U = bVarB.l();
        this.V = bVarB.m();
        this.W = bVarB.n();
        this.X = bVarB.o();
        this.Y = bVarB.p();
        this.Z = bVarB.q();
        c.b.a aVarR = bVarB.r();
        if (aVarR != null) {
            if (aVarR.a() == 1) {
                this.f9832c = true;
            }
            if (aVarR.b() == 1) {
                this.f9827aa = true;
            }
        }
        this.f9830ad = bVarB.w();
        this.ae = bVarB.s();
        this.af = bVarB.t();
        this.ag = bVarB.u();
        this.ah = bVarB.v();
    }

    private void a(Context context, int i10) {
        try {
            File fileA = i.a(context);
            String absolutePath = fileA != null ? fileA.getAbsolutePath() : "";
            c.b.C0229b c0229bL = l();
            ApkBean apkBean = new ApkBean(this.S, this.P + ".apk", this.P, absolutePath, this.O, this.R, context.getPackageName() + ".fileprovider", c0229bL, this.T, this.U, this.V, this.W, this.X, this.Y, this.Z);
            apkBean.setSendLocalBroadcast(true);
            Bundle bundle = new Bundle();
            bundle.putSerializable("apkBean", apkBean);
            bundle.putInt("type", i10);
            bundle.putBoolean("isCanJump", this.f9832c);
            bundle.putBoolean("isDownload", i());
            if (i10 == 2) {
                if (c0229bL != null) {
                    bundle.putStringArrayList("openList", (ArrayList) c0229bL.a());
                }
                bundle.putString("landingPageUrl", this.f9834e);
            }
            if (!TextUtils.isEmpty(this.f9833d)) {
                bundle.putString("deeplinkUrl", this.f9833d);
            }
            Serializable serializable = this.f9840k;
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

    private boolean a(String str, Context context) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        try {
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c.d dVar, ViewGroup viewGroup) {
        a aVar;
        if (dVar == null) {
            return;
        }
        try {
            if (dVar.t() == 0 || (aVar = this.f9855z) == null || viewGroup == null) {
                return;
            }
            aVar.a(dVar, viewGroup);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c.d dVar, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i10) {
        if (dVar == null) {
            return;
        }
        try {
            if (this.f9855z == null) {
                return;
            }
            if (dVar.t() != 0) {
                f fVar = new f();
                fVar.a(str);
                fVar.e(str5);
                fVar.b(str2);
                fVar.f(str6);
                fVar.c(str3);
                fVar.g(str7);
                fVar.d(str4);
                fVar.h(str8);
                this.f9855z.a(dVar, this.f9854y, fVar, String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis() + 10), i10);
            }
            b(dVar);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
