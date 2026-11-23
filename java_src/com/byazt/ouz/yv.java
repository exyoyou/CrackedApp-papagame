package com.byazt.ouz;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.byazt.aas.cu;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.aas.qp;
import com.byazt.el.SSWebView;
import com.byazt.ete.ic;
import com.byazt.ete.pu;
import com.byazt.omf.d;
import com.byazt.xv.ThemeStatusBroadcastReceiver;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 499})
public class yv extends com.byazt.ol.c implements yp, z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, com.byazt.pop.ve> f18529a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.rbg.c f18530da;
    public com.byazt.xl.i gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ic f18531i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f18532m;
    public sp my;
    public com.byazt.aas.c nu;
    public long qy;
    public com.byazt.zb.x rh;
    public m rl;
    public String sl;
    public Context sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.ddx.a f18533t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public d f18534u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f18535x;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f18536z;

    public yv(Context context, com.byazt.xl.u uVar, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, com.byazt.rbg.c cVar, ic icVar, com.byazt.xl.i iVar, m mVar) {
        super(context, uVar, themeStatusBroadcastReceiver);
        this.f18529a = Collections.synchronizedMap(new HashMap());
        this.yp = 8;
        this.f18536z = true;
        this.f18532m = true;
        this.qy = -1L;
        this.sp = context;
        this.f18535x = uVar.a();
        this.f18531i = icVar;
        this.f18530da = cVar;
        this.f17886c = uVar.n();
        String strC = c(icVar);
        this.sl = strC;
        this.gt = iVar;
        this.rl = mVar;
        c(qp.ve(qp.tt(strC)));
        themeStatusBroadcastReceiver.c(this);
        t();
        u();
        yp();
    }

    private void m() {
        if (this.f18531i == null || this.ve == null) {
            return;
        }
        if (TextUtils.equals(this.f18535x, "rewarded_video") || TextUtils.equals(this.f18535x, "fullscreen_interstitial_ad")) {
            String strRl = this.f18531i.rl();
            if (TextUtils.isEmpty(strRl)) {
                return;
            }
            com.byazt.nl.c.c(strRl, this.ve.getInnerIWebView());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void my() {
        com.byazt.kp.c.c(this.f18534u, this.yp == 0, this.f18536z, this.f18532m);
    }

    private boolean nu() {
        return !TextUtils.isEmpty(this.f18535x) && this.f18535x.equals("splash_ad");
    }

    private void rh() {
        if (this.f18534u == null || ((ViewGroup) this.ve.getParent()) == null) {
            return;
        }
        d dVar = this.f18534u;
        dVar.c(new p(this.ve, dVar, this.f18531i));
    }

    @Override // com.byazt.ouz.z
    public d J_() {
        return this.f18534u;
    }

    @Override // com.byazt.xv.c
    public void b_(int i10) {
        if (this.f18534u == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", i10);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
        this.f18534u.tt("themeChange", jSONObject);
    }

    @Override // com.byazt.ol.c
    public void da() {
        super.da();
        com.byazt.aas.c cVar = this.nu;
        if (cVar != null) {
            cVar.tt(this);
        }
    }

    @Override // com.byazt.ol.c
    public void i() {
        com.byazt.aas.c cVarVe = com.byazt.omf.x.m().ve();
        this.nu = cVarVe;
        cVarVe.c(this);
    }

    public void t() {
        if (this.ve == null) {
            return;
        }
        m();
        d dVar = new d(this.sp);
        this.f18534u = dVar;
        dVar.tt(this.ve).c(this.f18531i).tt(this.f18531i.uj()).uj(this.f18531i.w_()).c(this.f18535x).ve(nb.uj(this.f18535x)).n(nb.my(this.f18531i)).c(this).uj(this.f17886c).c(this.rl).c(this.ve).c(this.f18530da);
    }

    public void u() {
        SSWebView sSWebView = this.ve;
        if (sSWebView == null) {
            return;
        }
        sSWebView.setMaterialMeta(cu.c(this.f18531i));
        try {
            this.ve.setBackgroundColor(0);
            this.ve.setBackgroundResource(17170445);
        } catch (Exception unused) {
        }
        c(this.ve);
        if (c() != null) {
            this.f18533t = new com.byazt.ddx.a(this.f18531i, c()).tt(false);
        }
        this.f18533t.c(this.f18530da);
        this.ve.setWebChromeClient(new com.byazt.jwd.ve(this.f18534u, this.f18533t));
        this.ve.setDownloadListener(new DownloadListener() { // from class: com.byazt.ouz.yv.1
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j10) {
                if (!yv.this.f18529a.containsKey(str)) {
                    com.byazt.pop.ve veVarC = com.byazt.yih.x.c(yv.this.sp, str, yv.this.f18531i, yv.this.f18535x);
                    yv.this.f18529a.put(str, veVarC);
                    veVarC.c(nb.qy(yv.this.f18531i), false);
                } else {
                    com.byazt.pop.ve veVar = (com.byazt.pop.ve) yv.this.f18529a.get(str);
                    if (veVar != null) {
                        veVar.c(nb.qy(yv.this.f18531i), false);
                    }
                }
            }
        });
        if ("rewarded_video".equals(this.f18535x) || "fullscreen_interstitial_ad".equals(this.f18535x)) {
            pf.c((com.byazt.nl.uj) this.ve);
        }
        com.byazt.ol.n.c().c(this.ve, this.f18534u);
    }

    @Override // com.byazt.ol.c, com.byazt.ouz.yp
    public void x() {
        super.x();
        if (this.f18534u == null) {
            return;
        }
        rh();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("expressShow", true);
            this.f18534u.tt("expressShow", jSONObject);
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    public void yp() {
        if (this.ve == null || this.rh != null) {
            return;
        }
        com.byazt.vgp.ve veVar = new com.byazt.vgp.ve();
        com.byazt.vgp.uj ujVar = new com.byazt.vgp.uj();
        com.byazt.vgp.n nVar = new com.byazt.vgp.n(this.f18534u);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cid", this.f18531i.uj());
            jSONObject.put("log_extra", this.f18531i.w_());
        } catch (Throwable unused) {
        }
        HashSet hashSet = new HashSet();
        hashSet.add("subscribe_app_ad");
        hashSet.add("adInfo");
        hashSet.add("webview_time_track");
        hashSet.add("download_app_ad");
        hashSet.add("sendReward");
        this.rh = veVar.c(com.byazt.omf.gt.getContext(), this.ve, nVar, ujVar, hashSet, com.byazt.dyf.tt.AD_TAG_FEED.equals(this.f18535x) ? com.byazt.zb.x.c.FEED : com.byazt.zb.x.c.OTHER).n(this.sl).uj(com.byazt.fh.c.x()).c(com.byazt.fh.c.c()).n(jSONObject).c("sdkEdition", com.byazt.fh.c.ve()).tt(com.byazt.fh.c.a()).ve(com.byazt.fh.c.n()).ve(false);
        sp spVar = new sp(this.sp, this.f18534u, this.f18531i, this.f18533t, nu(), this.rh, sl());
        this.my = spVar;
        this.ve.setWebViewClient(spVar);
        com.byazt.xl.i iVar = this.gt;
        if (iVar instanceof da) {
            ((da) iVar).c(this.rh);
        }
        Set<String> setDa = this.rh.da();
        if (this.f18534u == null || setDa == null || setDa.size() <= 0) {
            return;
        }
        final WeakReference weakReference = new WeakReference(this.rh);
        Iterator<String> it2 = setDa.iterator();
        while (it2.hasNext()) {
            this.f18534u.a().c(it2.next(), (com.byazt.pct.n<?, ?>) new com.byazt.pct.n<JSONObject, JSONObject>() { // from class: com.byazt.ouz.yv.2
                @Override // com.byazt.pct.n
                public JSONObject c(JSONObject jSONObject2, com.byazt.pct.a aVar) throws Exception {
                    try {
                        com.byazt.zb.x xVar = (com.byazt.zb.x) weakReference.get();
                        if (xVar == null) {
                            return null;
                        }
                        return xVar.uj(c(), jSONObject2);
                    } catch (Throwable unused2) {
                        return null;
                    }
                }
            });
        }
    }

    public sp z() {
        return this.my;
    }

    @Override // com.byazt.ol.c
    public void a() {
        d dVar = this.f18534u;
        if (dVar == null) {
            return;
        }
        dVar.tt("expressWebviewRecycle", (JSONObject) null);
    }

    @Override // com.byazt.ol.c
    public void n() {
        if (c() == null) {
            return;
        }
        try {
            c().resumeTimers();
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.ol.c
    public void uj() {
        if (this.f17889n.get()) {
            return;
        }
        com.byazt.ddx.a aVar = this.f18533t;
        if (aVar != null) {
            aVar.a();
        }
        SSWebView sSWebView = this.ve;
        if (sSWebView != null) {
            sSWebView.O_();
            this.ve.setOnShakeListener(null);
        }
        d dVar = this.f18534u;
        if (dVar != null) {
            dVar.n();
        }
        super.uj();
        this.f18529a.clear();
        this.f18534u = null;
        com.byazt.zb.x xVar = this.rh;
        if (xVar == null) {
            return;
        }
        xVar.or();
    }

    public static String c(ic icVar) {
        return com.byazt.six.tt.tt(pu.x(icVar) ? "v3" : null);
    }

    @Override // com.byazt.ol.c, com.byazt.ouz.yp
    public void tt(final int i10) {
        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.ouz.yv.3
            @Override // java.lang.Runnable
            public void run() {
                yv.this.ve(i10);
                yv.this.uj(i10);
                if (i10 == yv.this.yp) {
                    return;
                }
                yv.this.yp = i10;
                yv.this.uj(i10 == 0);
                yv.this.my();
            }
        });
    }

    @Override // com.byazt.ol.c, com.byazt.xl.uj
    public int ve() {
        return pu.tt(this.f18531i);
    }

    public void tt(final boolean z10) {
        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.ouz.yv.4
            @Override // java.lang.Runnable
            public void run() {
                yv.this.f18536z = z10;
                yv.this.my();
            }
        });
    }

    public void ve(final boolean z10) {
        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.ouz.yv.5
            @Override // java.lang.Runnable
            public void run() {
                boolean z11 = yv.this.f18532m;
                boolean z12 = z10;
                if (z11 != (!z12)) {
                    yv.this.f18532m = !z12;
                    yv.this.my();
                }
            }
        });
    }

    public static void c(Map<String, Object> map, ic icVar, NativeExpressView nativeExpressView) {
        try {
            map.put("dynamic_show_type", Integer.valueOf(nativeExpressView.getDynamicShowType()));
            byte showDLFactorsEventParams = nativeExpressView.getShowDLFactorsEventParams();
            if (showDLFactorsEventParams != -1) {
                map.put("biz_type", Byte.valueOf(showDLFactorsEventParams));
            }
            int renderEngineCacheType = nativeExpressView.getRenderEngineCacheType();
            if (pu.a(icVar) != null && !TextUtils.isEmpty(pu.a(icVar).sl())) {
                map.put("engine_version", pu.a(icVar).sl());
            }
            map.put("engine_type", Integer.valueOf(renderEngineCacheType));
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve(int i10) {
        com.byazt.zb.x xVar = this.rh;
        if (xVar == null) {
            return;
        }
        if (i10 == 0) {
            xVar.tt(true);
            this.rh.c(false);
        } else {
            xVar.tt(false);
            this.rh.c(true);
        }
    }

    private void c(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        try {
            com.byazt.jwd.tt.c(this.sp).c(false).c(sSWebView);
            sSWebView.setVerticalScrollBarEnabled(false);
            sSWebView.setHorizontalScrollBarEnabled(false);
            if (com.byazt.omf.gt.tt().xo()) {
                sSWebView.clearCache(true);
            }
            sSWebView.clearHistory();
            com.byazt.aas.gt.c(sSWebView, com.byazt.omf.p.uj, ic.n(this.f18531i));
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
            com.byazt.nr.m.uj("WebViewRender", e10.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj(boolean z10) {
        if (this.f18534u == null || this.ve == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("adVisible", z10);
            this.f18534u.tt("expressAdShow", jSONObject);
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj(int i10) {
        try {
            if (com.byazt.omf.p.c() && i10 == 0) {
                long jGk = com.byazt.omf.gt.tt().gk();
                if (this.qy != -1 && System.currentTimeMillis() - this.qy > jGk) {
                    SSWebView sSWebViewC = c();
                    WebView webView = sSWebViewC.getWebView();
                    sSWebViewC.removeView(webView);
                    sSWebViewC.addView(webView);
                }
                this.qy = -1L;
                return;
            }
            this.qy = System.currentTimeMillis();
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.ol.c
    public SSWebView c() {
        return this.ve;
    }

    @Override // com.byazt.ol.c
    public void c(boolean z10, int i10) {
        super.c(z10, i10);
        com.byazt.rbg.c cVar = this.f18530da;
        if (cVar != null) {
            cVar.c(z10, i10);
            this.f18530da.tt(false);
        }
    }

    @Override // com.byazt.ol.c
    public void c(float f10, float f11) {
        float f12 = this.sp.getResources().getDisplayMetrics().density;
        float f13 = Resources.getSystem().getDisplayMetrics().density;
        super.c(pf.tt(f12, pf.c(f13, f10)), pf.tt(f12, pf.c(f13, f11)));
    }
}
