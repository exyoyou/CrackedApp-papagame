package com.byazt.ac;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.aas.rl;
import com.byazt.at.n;
import com.byazt.cty.BaseLandingPageActivity;
import com.byazt.ddx.a;
import com.byazt.dna.qp;
import com.byazt.el.SSWebView;
import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.ete.my;
import com.byazt.go.AbstractEndCardFrameLayout;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.nr.d;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.rpt.PlayableEndcardFrameLayout;
import com.byazt.ukr.yp;
import com.byazt.xzj.RewardLpBottomView;
import com.byazt.zb.sp;
import com.byazt.zb.x;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 89, 54})
public class ve extends com.byazt.ac.c implements qp.c, a.tt {
    public static final sp.c bm = new sp.c() { // from class: com.byazt.ac.ve.2
        @Override // com.byazt.zb.sp.c
        public void c(String str, String str2, Throwable th) {
            m.ve(str, str2, th);
        }
    };
    public com.byazt.ua.c aw;
    public RewardLpBottomView bx;
    public x cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f11556d;
    public FrameLayout eo;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f11557h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public com.byazt.kcl.tt.c f11558hd;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public final c f11559ic;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final com.byazt.at.tt f11560l;
    public final com.byazt.at.ve lo;
    public final n lr;
    public com.byazt.hkv.tt lt;
    public final d md;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public com.byazt.kcl.tt.InterfaceC0357tt f11561nb;
    public com.byazt.ddx.sp or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final AtomicBoolean f11562p;
    public PlayableEndcardFrameLayout pf;
    public DownloadListener pu;
    public boolean qp;
    public final com.byazt.ab.c sv;
    public String to;
    public final AtomicBoolean yv;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public com.byazt.pg.ve f11563zb;
    public final AtomicBoolean zm;

    public interface c {
        void c(WebView webView, String str);

        void c(WebView webView, String str, Bitmap bitmap);
    }

    public ve(TTBaseVideoActivity tTBaseVideoActivity, ic icVar, String str, int i10, int i11, boolean z10, AbstractEndCardFrameLayout abstractEndCardFrameLayout) {
        super(tTBaseVideoActivity, icVar, str, i10, i11, z10);
        this.zm = new AtomicBoolean(false);
        this.yv = new AtomicBoolean(false);
        this.f11562p = new AtomicBoolean(false);
        this.f11556d = new AtomicBoolean(false);
        this.md = new d(Looper.getMainLooper(), this);
        this.f11557h = 0L;
        this.f11559ic = new c() { // from class: com.byazt.ac.ve.1
            @Override // com.byazt.ac.ve.c
            public void c(WebView webView, String str2) {
                if (ve.this.f11530c.to() instanceof com.byazt.fcd.x) {
                    return;
                }
                ve.this.md.removeMessages(101);
                if (ve.this.zm.getAndSet(true)) {
                    return;
                }
                if (rl.ve(ve.this.tt) || ve.this.qp) {
                    if (ve.this.qy()) {
                        ve.this.c(0);
                    } else if (ve.this.f11558hd != null) {
                        ve.this.f11558hd.c();
                    }
                }
            }

            @Override // com.byazt.ac.ve.c
            public void c(WebView webView, String str2, Bitmap bitmap) {
                if (rl.ve(ve.this.tt)) {
                    if (ve.this.tt.ka() == 1 || my.u(ve.this.tt)) {
                        ve.this.ve(1);
                        ve.this.md.sendEmptyMessageDelayed(101, 10000L);
                    }
                    if (ve.this.yv.getAndSet(true)) {
                        return;
                    }
                    ve.this.f11557h = System.currentTimeMillis();
                    ve.this.f11561nb.c();
                }
            }
        };
        this.lr = new n() { // from class: com.byazt.ac.ve.3
            @Override // com.byazt.at.n
            public void c(int i12) {
                ve.this.f11537x.i(true);
                if (my.u(ve.this.tt)) {
                    ve.this.f11561nb.tt();
                }
                ve.this.f11530c.ve(i12);
            }

            @Override // com.byazt.at.n
            public void tt() {
                if (!my.c(ve.this.tt) || my.u(ve.this.tt)) {
                    return;
                }
                ve.this.f11530c.c(1);
            }

            @Override // com.byazt.at.n
            public void c() {
                if (kp.sl(ve.this.tt)) {
                    ve.this.f11530c.uj(3);
                }
            }
        };
        this.f11560l = new com.byazt.at.tt() { // from class: com.byazt.ac.ve.4
            @Override // com.byazt.at.tt
            public void c(boolean z11, int i12, String str2) {
                if (z11) {
                    ve.this.f11533m = true;
                }
            }
        };
        this.lo = new com.byazt.at.ve() { // from class: com.byazt.ac.ve.5
            @Override // com.byazt.at.ve
            public void c() {
                ve.this.md.removeMessages(101);
            }
        };
        this.sp = abstractEndCardFrameLayout.getPlayableWebView();
        this.eo = (FrameLayout) this.f11530c.findViewById(2114387919);
        this.pf = (PlayableEndcardFrameLayout) this.f11530c.findViewById(2114387675);
        this.bx = (RewardLpBottomView) this.f11530c.findViewById(2114387824);
        this.sv = new com.byazt.ab.c(this.ve, tTBaseVideoActivity, icVar, rl.ve(this.tt) ? 2 : 1, tTBaseVideoActivity.to().qp(), abstractEndCardFrameLayout.getVideoArea());
        c();
    }

    private void bx() {
        this.md.sendMessage(tt(3));
        pf();
        this.f11530c.ve(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cu() {
        this.f11533m = true;
        this.f11562p.set(true);
        this.md.sendMessage(tt(4));
        TTBaseVideoActivity tTBaseVideoActivity = this.f11530c;
        if (tTBaseVideoActivity != null) {
            tTBaseVideoActivity.u(8);
        }
        com.byazt.kcl.tt.InterfaceC0357tt interfaceC0357tt = this.f11561nb;
        if (interfaceC0357tt != null) {
            interfaceC0357tt.c();
        }
    }

    private void nb() {
        this.f11531da = rl.c(this.tt);
        float fFr = this.tt.fr();
        if (TextUtils.isEmpty(this.f11531da)) {
            return;
        }
        String strTrim = this.f11531da.trim();
        this.f11531da = strTrim;
        Uri.Builder builderBuildUpon = Uri.parse(strTrim).buildUpon();
        if (this.my == 1) {
            builderBuildUpon.appendQueryParameter("orientation", "portrait");
        }
        this.f11531da = builderBuildUpon.appendQueryParameter("height", String.valueOf(this.rl)).appendQueryParameter("width", String.valueOf(this.gt)).appendQueryParameter("aspect_ratio", String.valueOf(fFr)).toString();
    }

    private void pf() {
        com.byazt.kcl.tt.c cVar = this.f11558hd;
        if (cVar != null) {
            cVar.c();
            ve(2);
        }
    }

    private void qp() {
        RewardLpBottomView rewardLpBottomView;
        if (!rl.sp(this.tt)) {
            this.bx = null;
            return;
        }
        if (my.uj(this.tt)) {
            this.bx = null;
            return;
        }
        if (!my.sp(this.tt)) {
            this.bx = null;
        } else {
            if (this.pf == null || (rewardLpBottomView = this.bx) == null) {
                return;
            }
            rewardLpBottomView.c(this.tt, this.ve);
            this.pf.c(new PlayableEndcardFrameLayout.c() { // from class: com.byazt.ac.ve.7
                @Override // com.byazt.rpt.PlayableEndcardFrameLayout.c
                public void c() {
                    if (ve.this.bx != null) {
                        ve.this.bx.tt();
                    }
                    TTBaseVideoActivity tTBaseVideoActivity = ve.this.f11530c;
                    if (tTBaseVideoActivity != null) {
                        tTBaseVideoActivity.da(1);
                    }
                }
            });
        }
    }

    private void sv() {
        if (this.f11530c.pu() == null) {
            return;
        }
        long jM = !this.f11530c.pu().c() ? this.f11530c.pu().m() : 0L;
        boolean zU = this.f11530c.pu().u();
        if (!(this.f11530c.to() instanceof com.byazt.fcd.x)) {
            x xVar = this.cu;
            zU = xVar != null && xVar.sp();
        }
        this.sv.c(jM, zU);
    }

    public boolean d() {
        com.byazt.omf.d dVar = this.f11537x;
        if (dVar != null) {
            return dVar.sl();
        }
        return true;
    }

    public com.byazt.omf.d eo() {
        return this.f11537x;
    }

    @Override // com.byazt.ac.c
    public String gr() {
        return "playable";
    }

    public long h() {
        return System.currentTimeMillis() - this.f11557h;
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        int i10 = message.what;
        if (i10 == 101) {
            bx();
            return;
        }
        if (i10 != 102) {
            return;
        }
        this.md.removeMessages(102);
        this.f11561nb.ve().c(true);
        this.f11530c.b();
        int i11 = message.arg1;
        if (i11 == 2) {
            pf();
        } else if (i11 == 0 || i11 == 1) {
            md();
        }
    }

    public void md() {
        c(true);
        x xVar = this.cu;
        if (xVar != null) {
            xVar.tt(true);
        }
        ve(true);
        c(false, true);
        com.byazt.jwd.uj ujVar = this.sl;
        if (ujVar != null) {
            ujVar.tt(false);
        }
    }

    public void or() {
        if (this.sp == null || this.cu != null) {
            return;
        }
        if (com.byazt.omf.x.m().hd()) {
            sp.c(bm);
        }
        com.byazt.vgp.ve veVar = new com.byazt.vgp.ve();
        uj ujVar = new uj(this.lr);
        com.byazt.vgp.n nVar = new com.byazt.vgp.n(this.f11537x);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cid", this.tt.uj());
            jSONObject.put("log_extra", this.tt.w_());
        } catch (Throwable unused) {
        }
        HashSet hashSet = new HashSet();
        hashSet.add("subscribe_app_ad");
        hashSet.add("adInfo");
        hashSet.add("webview_time_track");
        hashSet.add("download_app_ad");
        x xVarC = veVar.c(gt.getContext(), this.sp, nVar, ujVar, hashSet, x.c.LAND_PAGE).n(this.f11531da).uj(com.byazt.fh.c.x()).c(com.byazt.fh.c.c()).n(jSONObject).c("sdkEdition", com.byazt.fh.c.ve()).tt(com.byazt.fh.c.a()).ve(com.byazt.fh.c.n()).c(10L).tt(10L).ve(false).c(false);
        this.cu = xVarC;
        Set<String> setDa = xVarC.da();
        if (this.f11537x == null || setDa == null || setDa.size() <= 0) {
            return;
        }
        final WeakReference weakReference = new WeakReference(this.cu);
        Iterator<String> it2 = setDa.iterator();
        while (it2.hasNext()) {
            this.f11537x.a().c(it2.next(), (com.byazt.pct.n<?, ?>) new com.byazt.pct.n<JSONObject, JSONObject>() { // from class: com.byazt.ac.ve.9
                @Override // com.byazt.pct.n
                public JSONObject c(JSONObject jSONObject2, com.byazt.pct.a aVar) throws Exception {
                    try {
                        x xVar = (x) weakReference.get();
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

    public void p() {
        SSWebView sSWebView;
        if (this.f11538z || (sSWebView = this.sp) == null || sSWebView.getWebView() == null) {
            return;
        }
        this.sp.loadUrl(this.f11531da);
        this.f11538z = true;
        x xVar = this.cu;
        if (xVar != null) {
            xVar.a(this.f11531da);
        }
    }

    @Override // com.byazt.ac.c
    public void t() {
        super.t();
        if (this.cu != null && pf.uj(this.sp)) {
            this.cu.tt(true);
        }
        com.byazt.pg.ve veVar = this.f11563zb;
        if (veVar != null) {
            veVar.ve();
        }
        com.byazt.ddx.sp spVar = this.or;
        if (spVar != null) {
            spVar.ve();
        }
    }

    @Override // com.byazt.ac.c
    public void u() {
        super.u();
        x xVar = this.cu;
        if (xVar != null) {
            xVar.tt(false);
        }
        com.byazt.pg.ve veVar = this.f11563zb;
        if (veVar != null) {
            veVar.tt();
        }
    }

    @Override // com.byazt.ac.c
    public void yp() {
        super.yp();
        com.byazt.ddx.sp spVar = this.or;
        if (spVar != null) {
            spVar.c(0);
        }
    }

    @Override // com.byazt.ac.c
    public void z() {
        super.z();
        x xVar = this.cu;
        if (xVar != null) {
            xVar.or();
        }
        a aVar = this.f11535t;
        if (aVar != null) {
            aVar.c((a.tt) null);
        }
        this.sv.uj();
        com.byazt.pg.ve veVar = this.f11563zb;
        if (veVar != null) {
            veVar.uj();
        }
        com.byazt.ddx.sp spVar = this.or;
        if (spVar != null) {
            spVar.uj();
        }
        this.pu = null;
    }

    public boolean zb() {
        return !this.f11562p.get();
    }

    @Override // com.byazt.ac.c
    public void zm() {
        super.zm();
        this.sv.ve();
        com.byazt.pg.ve veVar = this.f11563zb;
        if (veVar != null) {
            veVar.ve();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(boolean z10, Map<String, Object> map, View view) {
        SSWebView sSWebView = this.sp;
        if (sSWebView == null) {
            return;
        }
        a aVarTt = new a(this.tt, sSWebView).tt(true);
        this.f11535t = aVarTt;
        aVarTt.c(this);
        this.f11535t.c(true);
        this.f11535t.c(z10 ? "reward_endcard" : "fullscreen_endcard");
        com.byazt.omf.d dVar = new com.byazt.omf.d(this.f11530c);
        this.f11537x = dVar;
        dVar.tt(this.sp).c(this.tt).tt(this.tt.uj()).uj(this.tt.w_()).ve(z10 ? 7 : 5).c(this.gu).n(nb.my(this.tt)).c(this.sp).tt(com.byazt.wz.x.c(this.tt)).c(this.ve).c(map).c(this.gr).c(view).ve(this.f11530c.c()).c(this.lr);
        if (!rl.ve(this.tt)) {
            this.f11537x.x(true);
        }
        this.f11537x.c(this.f11560l);
        this.f11537x.c(this.lo);
        qp();
        nb();
        or();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve(int i10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", i10);
        } catch (Exception unused) {
        }
        yp.c().ve(jSONObject);
    }

    @Override // com.byazt.ac.c
    public void a() {
        SSWebView sSWebView = this.sp;
        if (sSWebView != null && sSWebView.getVisibility() == 0) {
            this.f11561nb.ve().c(true);
        }
        super.a();
        this.sv.c();
        x xVar = this.cu;
        if (xVar != null) {
            xVar.tt(false);
        }
        c(true, false);
    }

    public void n(boolean z10) {
        if (this.f11537x == null || this.f11530c.isFinishing()) {
            return;
        }
        try {
            this.f11537x.sp(z10);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isReward", z10);
            this.f11537x.tt("isVerifyReward", jSONObject);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.ac.c
    public void uj(boolean z10) {
        super.uj(z10);
        if (!z10) {
            this.sv.tt();
        }
        com.byazt.pg.ve veVar = this.f11563zb;
        if (veVar != null) {
            veVar.tt();
        }
    }

    public void c(com.byazt.ua.c cVar) {
        this.aw = cVar;
    }

    @Override // com.byazt.ac.c
    public void c(boolean z10, Map<String, Object> map, View view) {
        if (nb.gu(this.tt) && this.eo != null) {
            c(map, view);
        } else {
            tt(z10, map, view);
        }
    }

    public void a(boolean z10) {
        if (this.f11537x == null || this.f11530c.isFinishing()) {
            return;
        }
        this.qp = z10;
    }

    private void c(final Map<String, Object> map, final View view) {
        com.byazt.ddx.sp spVar = new com.byazt.ddx.sp(this.tt);
        this.or = spVar;
        spVar.c(true);
        this.or.c();
        this.eo.setVisibility(0);
        TTBaseVideoActivity tTBaseVideoActivity = this.f11530c;
        FrameLayout frameLayout = this.eo;
        com.byazt.ddx.sp spVar2 = this.or;
        ic icVar = this.tt;
        String str = this.ve;
        com.byazt.pg.ve veVar = new com.byazt.pg.ve(tTBaseVideoActivity, frameLayout, spVar2, icVar, str, nb.uj(str), this.aw);
        this.f11563zb = veVar;
        veVar.c();
        this.f11563zb.c(new com.byazt.qj.c() { // from class: com.byazt.ac.ve.6
            @Override // com.byazt.qj.c
            public void c(View view2) {
                ve.this.cu();
            }

            @Override // com.byazt.qj.c
            public void c(int i10) {
                ve.this.f11563zb = null;
                da.tt().post(new Runnable() { // from class: com.byazt.ac.ve.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ve.this.eo != null) {
                            ve.this.eo.setVisibility(8);
                        }
                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                        ve veVar2 = ve.this;
                        veVar2.f11538z = false;
                        veVar2.tt(veVar2.uj, map, view);
                        ve veVar3 = ve.this;
                        veVar3.tt(veVar3.pu, ve.this.lt);
                        ve.this.pu = null;
                        ve.this.p();
                    }
                });
            }
        });
    }

    @Override // com.byazt.ac.c
    public void c(DownloadListener downloadListener, com.byazt.hkv.tt ttVar) {
        this.pu = downloadListener;
        this.lt = ttVar;
        tt(downloadListener, ttVar);
    }

    private void c(com.byazt.hkv.tt ttVar) {
        RewardLpBottomView rewardLpBottomView;
        if (!rl.sp(this.tt) || (rewardLpBottomView = this.bx) == null) {
            return;
        }
        rewardLpBottomView.setDownLoadClickListener(ttVar);
    }

    @Override // com.byazt.ac.c
    public void c(int i10) {
        super.c(i10);
        sv();
    }

    public void c(com.byazt.kcl.tt.InterfaceC0357tt interfaceC0357tt) {
        this.f11561nb = interfaceC0357tt;
    }

    @Override // com.byazt.ddx.a.tt
    public void c(String str) {
        if (TextUtils.isEmpty(this.to)) {
            this.to = str;
        }
        if (TextUtils.equals(this.to, str)) {
            return;
        }
        this.to = str;
        this.f11530c.da(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(DownloadListener downloadListener, com.byazt.hkv.tt ttVar) {
        if (this.sp == null) {
            return;
        }
        this.lt = null;
        com.byazt.jwd.uj ujVar = new com.byazt.jwd.uj(this.f11530c, this.f11537x, this.tt.uj(), this.f11535t) { // from class: com.byazt.ac.ve.8

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final long f11572i = System.currentTimeMillis();

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                if (ve.this.cu != null && str != null && !str.contains("about:blank")) {
                    ve.this.cu.sp(str);
                }
                super.onPageFinished(webView, str);
                ve.this.f11559ic.c(webView, str);
                if (ve.this.bx != null) {
                    ve.this.bx.c();
                }
                if (webView == null || !my.c(ve.this.tt)) {
                    return;
                }
                webView.evaluateJavascript(BaseLandingPageActivity.c(this.f11572i), null);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                ve.this.f11562p.set(true);
                ve.this.f11559ic.c(webView, str, bitmap);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i10, String str, String str2) {
                ve.this.nu.set(false);
                ve.this.rh = this.f15943x;
                ve veVar = ve.this;
                veVar.f11536u = i10;
                veVar.yp = str;
                if (veVar.cu != null) {
                    ve.this.cu.c(i10, str, str2);
                }
                super.onReceivedError(webView, i10, str, str2);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            @TargetApi(21)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (ve.this.cu != null) {
                    try {
                        ve.this.cu.c(webResourceRequest.isForMainFrame(), webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode());
                    } catch (Throwable unused) {
                    }
                }
                if (ve.this.f11531da.equals(String.valueOf(webResourceRequest.getUrl()))) {
                    if (webResourceRequest.isForMainFrame()) {
                        ve.this.nu.set(false);
                        ve.this.rh = this.f15943x;
                    }
                    if (webResourceResponse != null) {
                        ve.this.f11536u = webResourceResponse.getStatusCode();
                        ve.this.yp = "onReceivedHttpError";
                    }
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                return super.shouldInterceptRequest(webView, str);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            @TargetApi(21)
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                try {
                    String string = webResourceRequest.getUrl().toString();
                    ic icVar = ve.this.tt;
                    if (icVar == null) {
                        return super.shouldInterceptRequest(webView, string);
                    }
                    if (TextUtils.isEmpty(icVar.ve())) {
                        return super.shouldInterceptRequest(webView, string);
                    }
                    ve.this.f11534n++;
                    return super.shouldInterceptRequest(webView, string);
                } catch (Throwable th) {
                    m.ve("PlayableEndCard", "shouldInterceptRequest error1", th);
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (webResourceRequest.isForMainFrame()) {
                    ve.this.nu.set(false);
                    ve.this.rh = this.f15943x;
                }
                ve.this.f11536u = webResourceError.getErrorCode();
                ve.this.yp = String.valueOf(webResourceError.getDescription());
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }
        };
        this.sl = ujVar;
        this.sp.setWebViewClient(ujVar);
        this.sp.setWebChromeClient(new com.byazt.jwd.ve(this.f11537x, this.f11535t));
        c(this.sp);
        this.sp.setBackgroundColor(-16777216);
        this.sp.setDisplayZoomControls(false);
        this.sp.setDownloadListener(downloadListener);
        c(ttVar);
    }

    public void c(com.byazt.kcl.tt.c cVar) {
        this.f11558hd = cVar;
    }

    @Override // com.byazt.ac.c
    public void c(Map<String, Object> map) {
        com.byazt.ddx.da daVar = this.f11532i;
        if (daVar != null) {
            daVar.da();
        }
        if (map == null || !rl.ve(this.tt)) {
            return;
        }
        map.put("duration", Long.valueOf(h()));
    }

    public void tt(int i10, int i11) {
        if (this.f11537x == null || this.f11530c.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("skip_remain_time", i10);
            if (this.uj) {
                jSONObject.put("reward_remain_time", i11);
            }
            this.f11537x.tt("reward_button_status", jSONObject);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.ac.c
    public void tt(boolean z10) {
        x xVar = this.cu;
        if (xVar != null) {
            xVar.c(z10);
        }
        this.sv.c(z10);
    }

    private Message tt(int i10) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 102;
        messageObtain.arg1 = i10;
        return messageObtain;
    }
}
