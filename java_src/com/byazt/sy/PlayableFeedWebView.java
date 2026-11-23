package com.byazt.sy;

import android.content.Context;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.el.SSWebView;
import com.byazt.ete.ic;
import com.byazt.ete.m;
import com.byazt.ete.p;
import com.byazt.omf.d;
import com.byazt.omf.gt;
import com.byazt.xl.yp;
import com.czhj.sdk.common.Database.SQLiteMTAHelper;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 528, TypedValues.Custom.TYPE_REFERENCE})
public class PlayableFeedWebView extends SSWebView implements com.byazt.nl.ve.c, com.byazt.kyz.tt, i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f19969a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final ViewGroup f19970da;
    public m gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public m f19971i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Runnable f19972m;
    public m my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Context f19973n;
    public com.byazt.zb.x nu;
    public com.byazt.xl.sl rh;
    public double rl;
    public boolean sl;
    public final ic sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.sy.c f19974t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f19975u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.kyz.c f19976x;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final Runnable f19977z;

    public PlayableFeedWebView(com.byazt.kyz.c cVar, ViewGroup viewGroup) {
        super(cVar.getContext());
        this.sl = false;
        this.f19975u = false;
        this.yp = 8;
        this.f19977z = new Runnable() { // from class: com.byazt.sy.PlayableFeedWebView.1
            @Override // java.lang.Runnable
            public void run() {
                PlayableFeedWebView.this.tt(0);
            }
        };
        this.f19972m = new Runnable() { // from class: com.byazt.sy.PlayableFeedWebView.2
            @Override // java.lang.Runnable
            public void run() {
                PlayableFeedWebView.this.tt(8);
            }
        };
        this.rh = new com.byazt.xl.sl() { // from class: com.byazt.sy.PlayableFeedWebView.3
            @Override // com.byazt.xl.sl
            public void c(yp ypVar) {
            }

            @Override // com.byazt.xl.sl
            public void tt(View view, int i10, com.byazt.sr.ve veVar, int i11) {
            }

            @Override // com.byazt.xl.sl
            public void c(View view, int i10, com.byazt.sr.ve veVar, int i11) {
                com.byazt.rgb.a.uj(com.byazt.ip.sp.c(PlayableFeedWebView.this.sp));
                PlayableFeedWebView.this.f19974t.c(view, i10, veVar, i11);
            }
        };
        this.f19976x = cVar;
        this.f19973n = cVar.getContext();
        this.sp = cVar.c();
        this.f19970da = viewGroup;
        setVisibility(4);
        setTag("easy_pfwv");
        setTouchEventListener(this);
    }

    private void da() {
        d dVar = new d(this.f19973n);
        this.f19969a = dVar;
        dVar.tt(this).c(this.sp).tt(this.sp.uj()).uj(this.sp.w_()).c(nb.tt(this.sp)).n(nb.my(this.sp)).c((i) this).uj(com.byazt.jlk.tt.c(0.0f, 0.0f, false, this.sp, true)).c(this.rh).c((SSWebView) this);
    }

    private void i() {
        com.byazt.vgp.ve veVar = new com.byazt.vgp.ve();
        com.byazt.vgp.n nVar = new com.byazt.vgp.n(this.f19969a);
        com.byazt.vgp.uj ujVar = new com.byazt.vgp.uj();
        HashSet hashSet = new HashSet();
        hashSet.add("subscribe_app_ad");
        hashSet.add("adInfo");
        hashSet.add("webview_time_track");
        hashSet.add("download_app_ad");
        com.byazt.zb.x xVarVe = veVar.c(gt.getContext(), this, nVar, ujVar, hashSet, com.byazt.zb.x.c.OTHER).n(getUrl()).uj(com.byazt.fh.c.x()).c(com.byazt.fh.c.c()).c("sdkEdition", com.byazt.fh.c.ve()).tt(com.byazt.fh.c.a()).ve(com.byazt.fh.c.n()).ve(false);
        this.nu = xVarVe;
        Set<String> setDa = xVarVe.da();
        if (this.f19969a == null || setDa == null || setDa.size() <= 0) {
            return;
        }
        final WeakReference weakReference = new WeakReference(this.nu);
        Iterator<String> it2 = setDa.iterator();
        while (it2.hasNext()) {
            this.f19969a.a().c(it2.next(), (com.byazt.pct.n<?, ?>) new com.byazt.pct.n<JSONObject, JSONObject>() { // from class: com.byazt.sy.PlayableFeedWebView.4
                @Override // com.byazt.pct.n
                public JSONObject c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
                    try {
                        com.byazt.zb.x xVar = (com.byazt.zb.x) weakReference.get();
                        if (xVar == null) {
                            return null;
                        }
                        return xVar.uj(c(), jSONObject);
                    } catch (Throwable unused) {
                        return null;
                    }
                }
            });
        }
    }

    private void sl() {
        setBackgroundColor(0);
        setBackgroundResource(17170445);
        c((SSWebView) this);
        if (this.sp != null) {
            Context context = this.f19973n;
            d dVar = this.f19969a;
            ic icVar = this.sp;
            setWebViewClient(new c(context, dVar, icVar, icVar.uj()));
        }
        com.byazt.ol.n.c().c(this, this.f19969a);
        setWebChromeClient(new com.byazt.jwd.ve(this.f19969a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        c(Integer.MIN_VALUE, Integer.MIN_VALUE, this.f19970da.getWidth(), this.f19970da.getHeight());
        da();
        i();
        sl();
        loadUrl(p.sp(this.sp).c(this.f19970da.getWidth() <= this.f19970da.getHeight()));
        setExpressVideoListener(this.f19974t);
    }

    @Override // com.byazt.sy.i
    public boolean K_() {
        return this.f19975u;
    }

    @Override // com.byazt.sy.i
    public void L_() {
        if (this.f19969a == null || ((ViewGroup) getParent()) == null) {
            return;
        }
        setOnShakeListener(new com.byazt.ouz.p(this, this.f19969a, this.sp));
        if (this.f19976x != null) {
            this.f19976x.c(true, getMaxRectJson());
        }
        tt(getVisibility());
    }

    public void a() {
        this.f19975u = true;
        d dVar = this.f19969a;
        if (dVar != null) {
            dVar.cu();
        }
    }

    @Override // com.byazt.el.SSWebView, com.byazt.qg.BizWebView, com.byazt.qg.MultiWebview, com.byazt.nl.uj
    public void destroy() {
        this.f19974t = null;
        O_();
        setOnShakeListener(null);
        d dVar = this.f19969a;
        if (dVar != null) {
            dVar.n();
            this.f19969a.c((SSWebView.tt) null);
        }
        this.f19969a = null;
        super.destroy();
    }

    @Override // com.byazt.el.SSWebView, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rgb.a.uj(com.byazt.ip.sp.c(this.sp), 2);
    }

    @Override // com.byazt.kyz.tt
    public JSONObject getActualRectJson() {
        return m.c(this.gt);
    }

    @Override // com.byazt.sy.i
    public JSONObject getContainerInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            int left = this.f19970da.getLeft();
            int top = this.f19970da.getTop();
            jSONArray.put(0, pf.uj(getContext(), left));
            jSONArray.put(1, pf.uj(getContext(), top));
            jSONObject.put(SQLiteMTAHelper.TABLE_POINT, jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            int measuredWidth = this.f19970da.getMeasuredWidth();
            int measuredHeight = this.f19970da.getMeasuredHeight();
            jSONArray2.put(0, pf.uj(getContext(), measuredWidth));
            jSONArray2.put(1, pf.uj(getContext(), measuredHeight));
            jSONObject.put("size", jSONArray2);
            return jSONObject;
        } catch (Exception e10) {
            com.byazt.nr.m.uj("xeasy", e10.getMessage());
            return null;
        }
    }

    @Override // com.byazt.sy.i
    public JSONObject getCreativeVideoViewInfo() {
        return new JSONObject();
    }

    @Override // com.byazt.sy.i
    public JSONObject getEstimatedInteractionAreaInfo() {
        com.byazt.kyz.c cVar = this.f19976x;
        if (cVar != null) {
            return cVar.tt();
        }
        return null;
    }

    @Override // com.byazt.kyz.tt
    public double getExceedAreaRate() {
        return this.rl;
    }

    public d getJsObject() {
        return this.f19969a;
    }

    @Override // com.byazt.kyz.tt
    public JSONObject getMaxRectJson() {
        return m.c(this.my);
    }

    @Override // com.byazt.qg.BizWebView, com.byazt.nl.uj
    public void loadUrl(String str) {
        super.loadUrl(str);
    }

    @Override // com.byazt.el.SSWebView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        c(i10 == 0);
    }

    @Override // com.byazt.el.SSWebView, android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        c(z10);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        removeCallbacks(this.f19972m);
        removeCallbacks(this.f19977z);
        if (i10 == 0) {
            postDelayed(this.f19977z, 50L);
        } else {
            postDelayed(this.f19972m, 50L);
        }
    }

    @Override // com.byazt.sy.i
    public void setEasyPlayInteractionAreaInfo(m mVar) {
        this.gt = mVar;
    }

    public void setEasyPlayableListener(com.byazt.sy.c cVar) {
        this.f19974t = cVar;
    }

    public void setExpressVideoListener(com.byazt.ouz.sl slVar) {
        d dVar = this.f19969a;
        if (dVar != null) {
            dVar.c(slVar);
        }
    }

    public void sp() {
        if (this.sl) {
            return;
        }
        this.sl = true;
        postDelayed(new Runnable() { // from class: com.byazt.sy.PlayableFeedWebView.5
            @Override // java.lang.Runnable
            public void run() {
                PlayableFeedWebView.this.update();
            }
        }, 100L);
    }

    @Override // com.byazt.sy.i
    public void uj() {
        com.byazt.rgb.a.uj(com.byazt.ip.sp.c(this.sp));
        com.byazt.sy.c cVar = this.f19974t;
        if (cVar != null) {
            cVar.c((View) this);
        }
    }

    public void x() {
        c(false);
    }

    @Override // com.byazt.sy.i
    public void c(m mVar, double d10) {
        this.my = mVar;
        this.rl = d10;
        this.f19971i = mVar;
    }

    @Override // com.byazt.sy.i
    public void tt() {
        com.byazt.rgb.a.uj(com.byazt.ip.sp.c(this.sp), 1);
        com.byazt.kyz.c cVar = this.f19976x;
        if (cVar != null) {
            cVar.ve();
        }
    }

    @Override // com.byazt.sy.i
    public void ve() {
        if (this.f19976x != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("error_code", 1);
            } catch (JSONException e10) {
                com.byazt.nr.m.tt("xeasy", e10.getMessage());
            }
            this.f19976x.c(false, jSONObject);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 528, 548})
    public static class c extends com.byazt.jwd.uj {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ic f19985c;

        public c(Context context, d dVar, ic icVar, String str) {
            super(context, dVar, str);
            this.f19985c = icVar;
        }

        @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(final WebView webView, String str) {
            try {
                com.byazt.six.c cVarC = com.byazt.jlk.c.c(webView, this.f19985c, str, new com.byazt.jlk.c.InterfaceC0349c() { // from class: com.byazt.sy.PlayableFeedWebView.c.1
                    @Override // com.byazt.jlk.c.InterfaceC0349c
                    public boolean c() {
                        return false;
                    }

                    @Override // com.byazt.jlk.c.InterfaceC0349c
                    public com.byazt.six.c c(String str2, com.byazt.or.da.c cVar, String str3) {
                        com.byazt.six.c cVar2 = new com.byazt.six.c();
                        cVar2.c(5);
                        cVar2.c(com.byazt.tlc.tt.tt().c(webView, cVar, str2));
                        return cVar2;
                    }
                });
                if (cVarC != null && cVarC.c() != null) {
                    return cVarC.c();
                }
            } catch (Throwable unused) {
            }
            return super.shouldInterceptRequest(webView, str);
        }

        @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
        @RequiresApi(api = 21)
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            try {
                return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
            } catch (Throwable th) {
                com.byazt.nr.m.ve("xeasy", "shouldInterceptRequest error1", th);
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }
        }
    }

    @Override // com.byazt.sy.i
    public void c(final int i10, final int i11, final int i12, final int i13) {
        com.byazt.bzd.x.c((Runnable) new com.byazt.bwm.sp("changeFrame") { // from class: com.byazt.sy.PlayableFeedWebView.6
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i12, i13);
                int i14 = i10;
                if (i14 == Integer.MIN_VALUE && i11 == Integer.MIN_VALUE) {
                    layoutParams.gravity = 17;
                }
                if (i14 != Integer.MIN_VALUE) {
                    PlayableFeedWebView.this.setTranslationX(i14);
                }
                int i15 = i11;
                if (i15 != Integer.MIN_VALUE) {
                    PlayableFeedWebView.this.setTranslationY(i15);
                }
                PlayableFeedWebView.this.setLayoutParams(layoutParams);
            }
        });
    }

    public void tt(int i10) {
        if (i10 == this.yp) {
            return;
        }
        this.yp = i10;
        if (this.f19969a != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("adVisible", i10 == 0);
                this.f19969a.tt("expressAdShow", jSONObject);
            } catch (Exception e10) {
                com.byazt.nr.m.c(e10);
            }
        }
        com.byazt.kp.c.c(this.f19969a, i10 == 0, true, true);
    }

    private void c(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        try {
            com.byazt.jwd.tt.c(this.f19973n).c(false).c(sSWebView);
            sSWebView.setVerticalScrollBarEnabled(false);
            sSWebView.setHorizontalScrollBarEnabled(false);
            com.byazt.aas.gt.c(sSWebView, com.byazt.omf.p.uj, ic.n(this.sp));
            sSWebView.setMixedContentMode(0);
            sSWebView.setJavaScriptEnabled(true);
            sSWebView.setJavaScriptCanOpenWindowsAutomatically(true);
            sSWebView.setDomStorageEnabled(true);
            sSWebView.setDatabaseEnabled(true);
            sSWebView.setAppCacheEnabled(true);
            sSWebView.setAllowFileAccess(false);
            sSWebView.setSupportZoom(true);
            sSWebView.setBuiltInZoomControls(true);
            sSWebView.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
            sSWebView.setUseWideViewPort(true);
        } catch (Exception e10) {
            com.byazt.nr.m.uj("xeasy", e10.toString());
        }
    }

    public void c(boolean z10) {
        d dVar = this.f19969a;
        if (dVar != null) {
            dVar.sl(z10);
        }
    }

    @Override // com.byazt.nl.ve.c
    public Pair<Boolean, Boolean> c(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return null;
        }
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        int iUj = pf.uj(getContext(), x10);
        int iUj2 = pf.uj(getContext(), y10);
        m mVar = this.f19971i;
        if (mVar == null || mVar.c(iUj, iUj2)) {
            return null;
        }
        com.byazt.kyz.c cVar = this.f19976x;
        if (cVar != null) {
            cVar.c(this.sp, iUj, iUj2, 2);
        }
        return new Pair<>(Boolean.TRUE, Boolean.FALSE);
    }
}
