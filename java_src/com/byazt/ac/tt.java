package com.byazt.ac;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.byazt.aas.nb;
import com.byazt.aas.qp;
import com.byazt.ddx.a;
import com.byazt.ddx.da;
import com.byazt.el.SSWebView;
import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.ete.xd;
import com.byazt.fcd.n;
import com.byazt.go.AbstractEndCardFrameLayout;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.nr.m;
import com.byazt.omf.d;
import com.byazt.wz.x;
import com.byazt.xl.yp;
import com.haima.hmcp.beans.ClipBoardItemData;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 89, 13})
public class tt extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public double f11545d;
    public double eo;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public double f11546h;
    public double md;
    public boolean or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final com.byazt.at.tt f11547p;
    public final com.byazt.bd.c yv;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public String f11548zb;
    public final Map<String, Bitmap> zm;

    public tt(TTBaseVideoActivity tTBaseVideoActivity, ic icVar, String str, int i10, int i11, boolean z10, AbstractEndCardFrameLayout abstractEndCardFrameLayout) {
        super(tTBaseVideoActivity, icVar, str, i10, i11, z10);
        this.zm = new HashMap();
        this.yv = new com.byazt.bd.c() { // from class: com.byazt.ac.tt.1
            @Override // com.byazt.bd.c
            public void c() {
                tt.this.f11530c.x(1);
            }
        };
        this.f11547p = new com.byazt.at.tt() { // from class: com.byazt.ac.tt.2
            @Override // com.byazt.at.tt
            public void c(boolean z11, int i12, String str2) {
                if (z11) {
                    tt ttVar = tt.this;
                    ttVar.f11533m = true;
                    if (ttVar.or) {
                        tt ttVar2 = tt.this;
                        ttVar2.c(ttVar2.md, tt.this.f11546h, tt.this.f11545d, tt.this.eo, tt.this.f11548zb);
                        tt.this.or = false;
                    }
                }
                if (xd.sl(tt.this.tt)) {
                    tt.this.c(z11, i12, str2);
                }
                SSWebView sSWebView = tt.this.sp;
                if (sSWebView != null) {
                    if (sSWebView.getVisibility() == 0) {
                        tt.this.f11537x.a(true);
                        tt.this.c(true);
                        tt.this.c(false, true);
                    } else {
                        tt.this.f11537x.a(false);
                        tt.this.c(false);
                        tt.this.c(true, false);
                    }
                }
            }
        };
        this.sp = abstractEndCardFrameLayout.getEndCardWebView();
        c();
    }

    private void h() {
        float fFr = this.tt.fr();
        String strI = xd.i(this.tt);
        this.f11531da = strI;
        if (TextUtils.isEmpty(strI)) {
            return;
        }
        String strTrim = this.f11531da.trim();
        this.f11531da = strTrim;
        Uri.Builder builderBuildUpon = Uri.parse(strTrim).buildUpon();
        if (this.my == 1) {
            builderBuildUpon.appendQueryParameter("orientation", "portrait");
        }
        String string = builderBuildUpon.appendQueryParameter("height", String.valueOf(this.rl)).appendQueryParameter("width", String.valueOf(this.gt)).appendQueryParameter("aspect_ratio", String.valueOf(fFr)).toString();
        this.f11531da = string;
        String strC = com.byazt.biq.c.c(string);
        this.f11531da = strC;
        this.f11531da = qp.ve(strC);
    }

    @Override // com.byazt.ac.c
    public String gr() {
        return "endcard";
    }

    public void md() {
        SSWebView sSWebView;
        if (this.f11538z || (sSWebView = this.sp) == null || sSWebView.getWebView() == null) {
            return;
        }
        this.sp.loadUrl(this.f11531da);
        this.f11538z = true;
    }

    public boolean p() {
        String str = this.f11531da;
        if (str == null) {
            return false;
        }
        try {
            return Uri.parse(str).getQueryParameterNames().contains("show_landingpage");
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.byazt.ac.c
    public void z() {
        super.z();
        this.zm.clear();
    }

    @Override // com.byazt.ac.c
    public void c(boolean z10, Map<String, Object> map, View view) {
        String str;
        if (this.sp == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        da daVar = new da(this.ve, this.tt, jSONObject, null);
        this.f11532i = daVar;
        daVar.c(jSONObject, "webview_source", (Object) 2);
        a aVarTt = new a(this.tt, this.sp).tt(true);
        this.f11535t = aVarTt;
        aVarTt.c(true);
        h();
        a aVar = this.f11535t;
        if (p()) {
            str = "landingpage_endcard";
        } else {
            str = z10 ? "reward_endcard" : "fullscreen_endcard";
        }
        aVar.c(str);
        d dVar = new d(this.f11530c);
        this.f11537x = dVar;
        dVar.tt(this.sp).c(this.tt).tt(this.tt.uj()).uj(this.tt.w_()).ve(z10 ? 7 : 5).c(this.gu).n(nb.my(this.tt)).c(this.sp).tt(x.c(this.tt)).c(this.f11532i).c(this.ve).c(map).c(this.gr).c(view).ve(this.f11530c.c()).c(this.yv);
        this.f11537x.c(this.f11547p);
    }

    @Override // com.byazt.ac.c
    public void c(DownloadListener downloadListener, com.byazt.hkv.tt ttVar) {
        if (this.sp == null) {
            return;
        }
        com.byazt.jwd.uj ujVar = new com.byazt.jwd.uj(this.f11530c, this.f11537x, this.tt.uj(), this.f11535t) { // from class: com.byazt.ac.tt.3
            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                da daVar = tt.this.f11532i;
                if (daVar != null) {
                    daVar.sp();
                }
                super.onPageFinished(webView, str);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                da daVar = tt.this.f11532i;
                if (daVar != null) {
                    daVar.a();
                }
                super.onPageStarted(webView, str, bitmap);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i10, String str, String str2) {
                tt.this.nu.set(false);
                tt.this.rh = this.f15943x;
                tt ttVar2 = tt.this;
                ttVar2.f11536u = i10;
                ttVar2.yp = str;
                if (ttVar2.f11532i != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (Build.VERSION.SDK_INT >= 23) {
                            jSONObject.put("code", i10);
                            jSONObject.put("msg", str);
                        }
                        tt.this.f11532i.tt(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                super.onReceivedError(webView, i10, str, str2);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            @TargetApi(21)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (tt.this.f11532i != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", webResourceResponse.getStatusCode());
                        jSONObject.put("msg", webResourceResponse.getReasonPhrase());
                        tt.this.f11532i.tt(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                if (tt.this.f11531da.equals(String.valueOf(webResourceRequest.getUrl()))) {
                    if (webResourceRequest.isForMainFrame()) {
                        tt.this.nu.set(false);
                        tt.this.rh = this.f15943x;
                    }
                    if (webResourceResponse != null) {
                        tt.this.f11536u = webResourceResponse.getStatusCode();
                        tt.this.yp = "onReceivedHttpError";
                    }
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                WebResourceResponse webResourceResponseC = tt.this.c(str);
                return webResourceResponseC != null ? webResourceResponseC : super.shouldInterceptRequest(webView, str);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                try {
                    String string = webResourceRequest.getUrl().toString();
                    tt ttVar2 = tt.this;
                    if (ttVar2.tt != null) {
                        WebResourceResponse webResourceResponseC = ttVar2.c(string);
                        if (webResourceResponseC != null) {
                            return webResourceResponseC;
                        }
                        if (TextUtils.isEmpty(tt.this.tt.ve())) {
                            return super.shouldInterceptRequest(webView, string);
                        }
                        tt.this.f11534n++;
                        return super.shouldInterceptRequest(webView, string);
                    }
                    return super.shouldInterceptRequest(webView, string);
                } catch (Throwable th) {
                    m.ve("CommonEndCard", "shouldInterceptRequest error1", th);
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (webResourceRequest.isForMainFrame()) {
                    tt.this.nu.set(false);
                    tt.this.rh = this.f15943x;
                }
                if (tt.this.f11532i != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (Build.VERSION.SDK_INT >= 23) {
                            jSONObject.put("code", webResourceError.getErrorCode());
                            jSONObject.put("msg", webResourceError.getDescription());
                        }
                        tt.this.f11532i.tt(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                tt.this.f11536u = webResourceError.getErrorCode();
                tt.this.yp = String.valueOf(webResourceError.getDescription());
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }
        };
        this.sl = ujVar;
        this.sp.setWebViewClient(ujVar);
        c(this.sp);
        this.sp.setBackgroundColor(-1);
        this.sp.setDisplayZoomControls(false);
        this.sp.setWebChromeClient(new com.byazt.jwd.ve(this.f11537x, this.f11535t) { // from class: com.byazt.ac.tt.4
            @Override // com.byazt.jwd.ve, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i10) {
                super.onProgressChanged(webView, i10);
            }
        });
        this.sp.setDownloadListener(downloadListener);
    }

    @Override // com.byazt.ac.c
    public void c(int i10) {
        super.c(i10);
        c(true);
        ve(true);
        c(false, true);
    }

    public void c(double d10, double d11, double d12, double d13, String str) {
        if (this.f11537x == null || this.f11530c.isFinishing()) {
            return;
        }
        if (!this.f11533m) {
            this.md = d10;
            this.f11546h = d11;
            this.eo = d13;
            this.f11545d = d12;
            this.f11548zb = str;
            this.or = true;
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("x", d10);
            jSONObject.put("y", d11);
            jSONObject.put("width", d12);
            jSONObject.put("height", d13);
            jSONObject.put("videoFrameKey", str);
            this.f11537x.tt("endcardTransform", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void c(yp ypVar) {
        double dX;
        double dI;
        double d10;
        double dSp;
        if (kp.gr(this.tt)) {
            double d11 = this.gt;
            double d12 = this.rl;
            if (ypVar == null || !this.f11530c.to().sp() || (ypVar.x() == 0.0d && ypVar.i() == 0.0d)) {
                dX = d11;
                dI = d12;
                d10 = 0.0d;
                dSp = 0.0d;
            } else {
                double dA = ypVar.a();
                d10 = dA;
                dSp = ypVar.sp();
                dX = ypVar.x();
                dI = ypVar.i();
            }
            c(d10, dSp, dX, dI, null);
            if (this.f11530c.to() instanceof n) {
                return;
            }
            final double d13 = d10;
            final double d14 = dSp;
            final double d15 = dX;
            final double d16 = dI;
            com.byazt.vv.tt.c(2147483647L, xd.c(this.tt), new com.byazt.vv.tt.InterfaceC0466tt() { // from class: com.byazt.ac.tt.5
                @Override // com.byazt.vv.tt.InterfaceC0466tt
                public void c(Bitmap bitmap) {
                    if (bitmap != null) {
                        String strValueOf = String.valueOf(bitmap.hashCode());
                        tt.this.zm.put(strValueOf, bitmap);
                        tt.this.c(d13, d14, d15, d16, strValueOf);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WebResourceResponse c(String str) {
        if (!str.startsWith("csjclientimg://")) {
            return null;
        }
        Bitmap bitmap = this.zm.get(str.replace("csjclientimg://", ""));
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return new WebResourceResponse(ClipBoardItemData.TYPE_TEXT_HTML, "UTF-8", new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
    }
}
