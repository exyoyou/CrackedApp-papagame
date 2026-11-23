package com.byazt.cj;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.webkit.DownloadListener;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.byazt.aas.gt;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.el.SSWebView;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.hv.TTDownloadField;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.omf.cu;
import com.byazt.omf.d;
import com.byazt.omf.p;
import com.haima.hmcp.beans.ClipBoardItemData;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.ls.tt
@com.byazt.zqa.c(c = {0, 1, 55, 42})
public class i implements com.byazt.kkb.ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f12429a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @com.byazt.ls.c(c = TTDownloadField.TT_ACTIVITY)
    public TTBaseVideoActivity f12430c;
    public double cu;
    public double eo;

    @com.byazt.ls.c(c = "show_type")
    public int gr;

    @com.byazt.ls.c(c = "is_reward")
    public boolean gt;

    @com.byazt.ls.c(c = "download_listener")
    public DownloadListener gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @com.byazt.ls.c(c = "action_type")
    public int f12433h;

    @com.byazt.ls.c(c = "end_card_height")
    public int md;

    @com.byazt.ls.c(c = "event_tag")
    public String my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.ddx.da f12436n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public boolean f12437nb;

    @com.byazt.ls.c(c = "web_view")
    public WeakReference<SSWebView> nu;
    public double or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @com.byazt.ls.c(c = "end_card_width")
    public int f12438p;
    public String qp;

    @com.byazt.ls.c(c = "close_button")
    public View qy;

    @com.byazt.ls.c(c = "material_meta")
    public ic rh;

    @com.byazt.ls.c(c = "extra_map")
    public Map<String, Object> rl;
    public com.byazt.jwd.uj sp;
    public d uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.ddx.a f12441x;

    @com.byazt.ls.c(c = "orientation")
    public int yv;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public double f12443zb;

    @com.byazt.ls.c(c = "end_card_param")
    public com.byazt.mr.c zm;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<String, Bitmap> f12431d = new HashMap();
    public int tt = 0;
    public int ve = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12434i = 0;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f12432da = "";
    public boolean sl = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f12439t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final AtomicBoolean f12440u = new AtomicBoolean(true);
    public Handler pf = new Handler(Looper.myLooper()) { // from class: com.byazt.cj.i.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 1:
                    i.this.u();
                    break;
                case 2:
                    i.this.n();
                    break;
                case 3:
                    i.this.sp();
                    break;
                case 4:
                    i.this.x();
                    break;
                case 5:
                    i.this.i();
                    break;
                case 6:
                    i.this.da();
                    break;
                case 7:
                    i.this.sl();
                    break;
                case 8:
                    i.this.t();
                    break;
                case 9:
                    i.this.yp();
                    break;
                case 10:
                    i.this.z();
                    break;
                case 11:
                    i.this.m();
                    break;
                case 12:
                    i.this.nu();
                    break;
                case 13:
                    i.this.rh();
                    break;
                case 14:
                    i.this.my();
                    break;
            }
        }
    };
    public AtomicBoolean yp = new AtomicBoolean(false);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public com.byazt.at.c f12442z = new com.byazt.at.c() { // from class: com.byazt.cj.i.6
        @Override // com.byazt.at.c
        public int c() {
            SSWebView sSWebView = i.this.nu != null ? (SSWebView) i.this.nu.get() : null;
            int measuredHeight = sSWebView != null ? sSWebView.getMeasuredHeight() : -1;
            return measuredHeight <= 0 ? pf.n((Context) i.this.f12430c) : measuredHeight;
        }

        @Override // com.byazt.at.c
        public int tt() {
            SSWebView sSWebView = i.this.nu != null ? (SSWebView) i.this.nu.get() : null;
            int measuredWidth = sSWebView != null ? sSWebView.getMeasuredWidth() : -1;
            return measuredWidth <= 0 ? pf.uj((Context) i.this.f12430c) : measuredWidth;
        }
    };

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.byazt.at.sp f12435m = new com.byazt.at.sp() { // from class: com.byazt.cj.i.7
        @Override // com.byazt.at.sp
        public void c() {
            SSWebView sSWebView = i.this.nu != null ? (SSWebView) i.this.nu.get() : null;
            if (sSWebView == null) {
                return;
            }
            sSWebView.onPause();
        }

        @Override // com.byazt.at.sp
        public void tt() {
            SSWebView sSWebView = i.this.nu != null ? (SSWebView) i.this.nu.get() : null;
            if (sSWebView == null) {
                return;
            }
            sSWebView.pauseTimers();
        }
    };
    public final com.byazt.at.tt bx = new com.byazt.at.tt() { // from class: com.byazt.cj.i.8
        @Override // com.byazt.at.tt
        public void c(boolean z10, int i10, String str) {
            if (z10) {
                i iVar = i.this;
                iVar.f12439t = true;
                if (iVar.f12437nb) {
                    i iVar2 = i.this;
                    iVar2.c(iVar2.eo, i.this.f12443zb, i.this.or, i.this.cu, i.this.qp);
                    i.this.f12437nb = false;
                }
            }
            if (xd.sl(i.this.rh)) {
                i.this.c(z10, i10, str);
            }
        }
    };
    public final com.byazt.bd.c sv = new com.byazt.bd.c() { // from class: com.byazt.cj.i.9
        @Override // com.byazt.bd.c
        public void c() {
            i.this.f12430c.x(1);
        }
    };

    private void gr() {
        d dVar = this.uj;
        if (dVar == null) {
            return;
        }
        dVar.c(new SSWebView.tt() { // from class: com.byazt.cj.i.5
            @Override // com.byazt.el.SSWebView.tt
            public void c(int i10) {
                d dVar2 = i.this.uj;
                if (dVar2 != null) {
                    dVar2.c(i10);
                }
            }
        });
    }

    private void gt() {
        com.byazt.mr.c cVar = this.zm;
        if (cVar == null) {
            return;
        }
        cVar.c(new com.byazt.mr.c() { // from class: com.byazt.cj.i.10
        });
    }

    private void gu() {
        WeakReference<SSWebView> weakReference;
        final SSWebView sSWebView;
        if (this.yp.getAndSet(true) || (weakReference = this.nu) == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(sSWebView, "translationY", 0.0f, pf.n((Context) this.f12430c));
        objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.cj.i.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                pf.c((View) sSWebView, 8);
                i.this.yp.set(false);
            }
        });
        objectAnimatorOfFloat.start();
    }

    private void qy() {
        WeakReference<SSWebView> weakReference;
        if (this.yp.getAndSet(true) || (weakReference = this.nu) == null) {
            return;
        }
        try {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(weakReference.get(), "translationY", pf.n((Context) this.f12430c), 0.0f);
            objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
            objectAnimatorOfFloat.setDuration(1000L);
            objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.cj.i.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    i.this.yp.set(false);
                }
            });
            objectAnimatorOfFloat.start();
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    private void rl() {
        this.f12429a = xd.i(this.rh);
        float fFr = this.rh.fr();
        if (TextUtils.isEmpty(this.f12429a)) {
            return;
        }
        if (this.yv == 1) {
            if (this.f12429a.contains("?")) {
                this.f12429a += "&orientation=portrait";
            } else {
                this.f12429a += "?orientation=portrait";
            }
        }
        if (this.f12429a.contains("?")) {
            this.f12429a += "&height=" + this.md + "&width=" + this.f12438p + "&aspect_ratio=" + fFr;
        } else {
            this.f12429a += "?height=" + this.md + "&width=" + this.f12438p + "&aspect_ratio=" + fFr;
        }
        this.f12429a = com.byazt.biq.c.c(this.f12429a);
    }

    public void da() {
        WeakReference<SSWebView> weakReference = this.nu;
        SSWebView sSWebView = weakReference != null ? weakReference.get() : null;
        if (sSWebView != null) {
            sSWebView.onResume();
        }
        d dVar = this.uj;
        if (dVar != null) {
            dVar.h();
            if (sSWebView != null) {
                if (sSWebView.getVisibility() == 0) {
                    this.uj.a(true);
                    c(true);
                    c(false, true);
                } else {
                    this.uj.a(false);
                    c(false);
                    c(true, false);
                }
            }
        }
        com.byazt.ddx.a aVar = this.f12441x;
        if (aVar != null) {
            aVar.uj();
        }
        com.byazt.jwd.uj ujVar = this.sp;
        if (ujVar != null) {
            ujVar.tt(false);
        }
    }

    public void i() {
        this.f12436n = null;
    }

    public void m() {
        com.byazt.ddx.da daVar = this.f12436n;
        if (daVar != null) {
            daVar.sl();
        }
    }

    public void my() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.nu;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        sSWebView.loadUrl("about:blank");
    }

    public void nu() {
        com.byazt.ddx.da daVar = this.f12436n;
        if (daVar != null) {
            daVar.t();
        }
    }

    public void rh() {
        com.byazt.ddx.da daVar = this.f12436n;
        if (daVar != null) {
            daVar.ve();
            this.f12436n.uj();
        }
    }

    public void sl() {
        WeakReference<SSWebView> weakReference = this.nu;
        SSWebView sSWebView = weakReference != null ? weakReference.get() : null;
        if (sSWebView != null) {
            sSWebView.onPause();
        }
        d dVar = this.uj;
        if (dVar != null) {
            dVar.d();
            this.uj.a(false);
            c(false);
            c(true, false);
        }
        com.byazt.jwd.uj ujVar = this.sp;
        if (ujVar != null) {
            ujVar.ve();
        }
    }

    public void t() {
        com.byazt.ddx.a aVar = this.f12441x;
        if (aVar != null) {
            aVar.n();
        }
    }

    public void u() {
        WeakReference<SSWebView> weakReference = this.nu;
        SSWebView sSWebView = weakReference != null ? weakReference.get() : null;
        if (sSWebView != null) {
            cu.c(this.f12430c, sSWebView);
            cu.c(sSWebView);
            sSWebView.destroy();
        }
        WeakReference<SSWebView> weakReference2 = this.nu;
        if (weakReference2 != null) {
            weakReference2.clear();
        }
        d dVar = this.uj;
        if (dVar != null) {
            dVar.eo();
        }
        com.byazt.ddx.da daVar = this.f12436n;
        if (daVar != null) {
            daVar.c(true);
            this.f12436n.m();
        }
        com.byazt.ddx.a aVar = this.f12441x;
        if (aVar != null) {
            aVar.a();
        }
        this.f12431d.clear();
    }

    public void yp() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.nu;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        sSWebView.onResume();
        sSWebView.resumeTimers();
        pf.c((View) sSWebView, 1.0f);
        gr();
    }

    public void z() {
        com.byazt.ddx.da daVar = this.f12436n;
        if (daVar != null) {
            daVar.i();
        }
    }

    public void a() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.nu;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        pf.c((View) sSWebView, 0);
        if (this.gr == 1) {
            pf.c((View) sSWebView, 0.0f);
        }
        if (this.gr == 2) {
            qy();
        }
        d dVar = this.uj;
        if (dVar != null) {
            dVar.c(nb.my(this.rh), false);
        }
        c(true);
        tt(true);
        c(false, true);
    }

    public void n() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.nu;
        if (weakReference == null || (sSWebView = weakReference.get()) == null || this.sl) {
            return;
        }
        sSWebView.loadUrl(this.f12429a);
        this.sl = true;
    }

    public void sp() {
        com.byazt.ddx.a aVar = this.f12441x;
        if (aVar != null) {
            aVar.c(System.currentTimeMillis());
        }
    }

    public void tt() {
        SSWebView sSWebView;
        String str;
        WeakReference<SSWebView> weakReference = this.nu;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        com.byazt.ddx.da daVar = new com.byazt.ddx.da(this.my, this.rh, jSONObject, null);
        this.f12436n = daVar;
        daVar.c(jSONObject, "webview_source", (Object) 2);
        com.byazt.ddx.a aVarTt = new com.byazt.ddx.a(this.rh, sSWebView).tt(true);
        this.f12441x = aVarTt;
        aVarTt.c(true);
        rl();
        com.byazt.ddx.a aVar = this.f12441x;
        if (uj()) {
            str = "landingpage_endcard";
        } else {
            str = this.gt ? "reward_endcard" : "fullscreen_endcard";
        }
        aVar.c(str);
        d dVar = new d(this.f12430c) { // from class: com.byazt.cj.i.12
        };
        this.uj = dVar;
        dVar.tt(sSWebView).c(this.rh).tt(this.rh.uj()).uj(this.rh.w_()).ve(this.gt ? 7 : 5).c(this.f12442z).n(nb.my(this.rh)).c(sSWebView).tt(com.byazt.wz.x.c(this.rh)).c(this.f12436n).c(this.my).c(this.rl).c(this.f12435m).c(this.qy).c(this.sv);
        this.uj.c(this.bx);
    }

    public boolean uj() {
        String str = this.f12429a;
        if (str == null) {
            return false;
        }
        try {
            return Uri.parse(str).getQueryParameterNames().contains("show_landingpage");
        } catch (Exception unused) {
            return false;
        }
    }

    public void ve() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.nu;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        com.byazt.jwd.uj ujVar = new com.byazt.jwd.uj(this.f12430c, this.uj, this.rh.uj(), this.f12441x) { // from class: com.byazt.cj.i.13
            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                com.byazt.ddx.da daVar = i.this.f12436n;
                if (daVar != null) {
                    daVar.sp();
                }
                super.onPageFinished(webView, str);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                com.byazt.ddx.da daVar = i.this.f12436n;
                if (daVar != null) {
                    daVar.a();
                }
                super.onPageStarted(webView, str, bitmap);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i10, String str, String str2) {
                i.this.f12440u.set(false);
                i iVar = i.this;
                iVar.f12434i = i10;
                iVar.f12432da = str;
                if (iVar.f12436n != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (Build.VERSION.SDK_INT >= 23) {
                            jSONObject.put("code", i10);
                            jSONObject.put("msg", str);
                        }
                        i.this.f12436n.tt(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                super.onReceivedError(webView, i10, str, str2);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            @TargetApi(21)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (i.this.f12436n != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", webResourceResponse.getStatusCode());
                        jSONObject.put("msg", webResourceResponse.getReasonPhrase());
                        i.this.f12436n.tt(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                if (i.this.f12429a.equals(String.valueOf(webResourceRequest.getUrl()))) {
                    if (webResourceRequest.isForMainFrame()) {
                        i.this.f12440u.set(false);
                    }
                    if (webResourceResponse != null) {
                        i.this.f12434i = webResourceResponse.getStatusCode();
                        i.this.f12432da = "onReceivedHttpError";
                    }
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                WebResourceResponse webResourceResponseC = i.this.c(str);
                return webResourceResponseC != null ? webResourceResponseC : super.shouldInterceptRequest(webView, str);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                try {
                    String string = webResourceRequest.getUrl().toString();
                    if (i.this.rh != null) {
                        WebResourceResponse webResourceResponseC = i.this.c(string);
                        if (webResourceResponseC != null) {
                            return webResourceResponseC;
                        }
                        if (TextUtils.isEmpty(i.this.rh.ve())) {
                            return super.shouldInterceptRequest(webView, string);
                        }
                        i.this.tt++;
                        return super.shouldInterceptRequest(webView, string);
                    }
                    return super.shouldInterceptRequest(webView, string);
                } catch (Throwable unused) {
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (webResourceRequest.isForMainFrame()) {
                    i.this.f12440u.set(false);
                }
                if (i.this.f12436n != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (Build.VERSION.SDK_INT >= 23) {
                            jSONObject.put("code", webResourceError.getErrorCode());
                            jSONObject.put("msg", webResourceError.getDescription());
                        }
                        i.this.f12436n.tt(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                i.this.f12434i = webResourceError.getErrorCode();
                i.this.f12432da = String.valueOf(webResourceError.getDescription());
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }
        };
        this.sp = ujVar;
        sSWebView.setWebViewClient(ujVar);
        c(sSWebView);
        sSWebView.setBackgroundColor(-1);
        sSWebView.setDisplayZoomControls(false);
        sSWebView.setWebChromeClient(new com.byazt.jwd.ve(this.uj, this.f12441x) { // from class: com.byazt.cj.i.2
            @Override // com.byazt.jwd.ve, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i10) {
                super.onProgressChanged(webView, i10);
            }
        });
        sSWebView.setDownloadListener(this.gu);
    }

    public void x() {
        if (this.f12430c.to() instanceof com.byazt.fcd.x) {
            gu();
            return;
        }
        WeakReference<SSWebView> weakReference = this.nu;
        if (weakReference == null) {
            return;
        }
        pf.c((View) weakReference.get(), 8);
    }

    @Override // com.byazt.kkb.ve
    public boolean c(Map<String, Object> map, Map<String, Object> map2, com.byazt.cq.c cVar) {
        if (this.f12433h != 0) {
            a();
            return true;
        }
        c();
        tt();
        ve();
        gt();
        return true;
    }

    public void c(boolean z10, int i10, String str) {
        com.byazt.ddx.da daVar = this.f12436n;
        if (daVar == null) {
            return;
        }
        if (z10) {
            daVar.tt();
        } else {
            daVar.c(i10, str);
        }
    }

    public void c() {
        final SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.nu;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        sSWebView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.cj.i.11
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                SSWebView sSWebView2 = sSWebView;
                if (sSWebView2 == null || sSWebView2.getViewTreeObserver() == null) {
                    return;
                }
                sSWebView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                int measuredWidth = sSWebView.getMeasuredWidth();
                int measuredHeight = sSWebView.getMeasuredHeight();
                if (sSWebView.getVisibility() == 0) {
                    i.this.c(measuredWidth, measuredHeight);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, int i11) {
        if (this.uj == null || this.f12430c.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", i10);
            jSONObject.put("height", i11);
            this.uj.tt("resize", jSONObject);
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    public void c(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        com.byazt.jwd.tt.c(this.f12430c).c(false).tt(false).c(sSWebView);
        gt.c(sSWebView, p.uj, ic.n(this.rh));
        pf.c((com.byazt.nl.uj) sSWebView);
        int i10 = Build.VERSION.SDK_INT;
        sSWebView.setMixedContentMode(0);
        if (i10 < 24) {
            sSWebView.setLayerType(0, null);
        }
    }

    public void tt(boolean z10) {
        if (this.uj == null || this.f12430c.isFinishing()) {
            return;
        }
        try {
            this.uj.a(z10);
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    public void c(boolean z10) {
        if (this.uj == null || this.f12430c.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("viewStatus", z10 ? 1 : 0);
            this.uj.tt("viewableChange", jSONObject);
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    public void c(boolean z10, boolean z11) {
        if (this.uj == null || this.f12430c.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z10);
            jSONObject.put("endcard_show", z11);
            this.uj.tt("endcard_control_event", jSONObject);
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    public void c(double d10, double d11, double d12, double d13, String str) {
        if (this.uj == null || this.f12430c.isFinishing()) {
            return;
        }
        if (!this.f12439t) {
            this.eo = d10;
            this.f12443zb = d11;
            this.cu = d13;
            this.or = d12;
            this.qp = str;
            this.f12437nb = true;
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("x", d10);
            jSONObject.put("y", d11);
            jSONObject.put("width", d12);
            jSONObject.put("height", d13);
            jSONObject.put("videoFrameKey", str);
            this.uj.tt("endcardTransform", jSONObject);
        } catch (JSONException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WebResourceResponse c(String str) {
        if (!str.startsWith("csjclientimg://")) {
            return null;
        }
        Bitmap bitmap = this.f12431d.get(str.replace("csjclientimg://", ""));
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return new WebResourceResponse(ClipBoardItemData.TYPE_TEXT_HTML, "UTF-8", new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
    }
}
