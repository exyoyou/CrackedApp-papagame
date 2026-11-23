package com.byazt.ac;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.Patterns;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.webkit.DownloadListener;
import android.webkit.URLUtil;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.at.sp;
import com.byazt.ddx.a;
import com.byazt.ddx.da;
import com.byazt.el.SSWebView;
import com.byazt.ete.ic;
import com.byazt.fcd.x;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.nr.m;
import com.byazt.omf.cu;
import com.byazt.omf.d;
import com.byazt.omf.gt;
import com.byazt.omf.p;
import java.net.URL;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 89, 20})
public abstract class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TTBaseVideoActivity f11530c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f11531da;
    public int gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public da f11532i;
    public int my;
    public AtomicInteger rh;
    public int rl;
    public com.byazt.jwd.uj sl;
    public SSWebView sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public a f11535t;
    public ic tt;
    public boolean uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public d f11537x;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11534n = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f11529a = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f11536u = 0;
    public String yp = "";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f11538z = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f11533m = false;
    public final AtomicBoolean nu = new AtomicBoolean(true);
    public AtomicBoolean qy = new AtomicBoolean(false);
    public com.byazt.at.c gu = new com.byazt.at.c() { // from class: com.byazt.ac.c.1
        @Override // com.byazt.at.c
        public int c() {
            SSWebView sSWebView = c.this.sp;
            int measuredHeight = sSWebView != null ? sSWebView.getMeasuredHeight() : -1;
            m.c("TTAndroidObject", "mWebView>>>>height=".concat(String.valueOf(measuredHeight)));
            return measuredHeight <= 0 ? pf.n((Context) c.this.f11530c) : measuredHeight;
        }

        @Override // com.byazt.at.c
        public int tt() {
            SSWebView sSWebView = c.this.sp;
            int measuredWidth = sSWebView != null ? sSWebView.getMeasuredWidth() : -1;
            m.c("TTAndroidObject", "mWebView>>>>width=".concat(String.valueOf(measuredWidth)));
            return measuredWidth <= 0 ? pf.uj((Context) c.this.f11530c) : measuredWidth;
        }
    };
    public sp gr = new sp() { // from class: com.byazt.ac.c.2
        @Override // com.byazt.at.sp
        public void c() {
            SSWebView sSWebView = c.this.sp;
            if (sSWebView == null) {
                return;
            }
            sSWebView.onPause();
        }

        @Override // com.byazt.at.sp
        public void tt() {
            SSWebView sSWebView = c.this.sp;
            if (sSWebView == null) {
                return;
            }
            sSWebView.pauseTimers();
        }
    };

    public c(TTBaseVideoActivity tTBaseVideoActivity, ic icVar, String str, int i10, int i11, boolean z10) {
        this.f11530c = tTBaseVideoActivity;
        this.tt = icVar;
        this.ve = str;
        this.my = icVar.by();
        if (gt.tt().qe()) {
            float f10 = this.f11530c.getResources().getDisplayMetrics().density;
            float f11 = Resources.getSystem().getDisplayMetrics().density;
            this.gt = pf.tt(f11, pf.c(f10, i10));
            this.rl = pf.tt(f11, pf.c(f10, i11));
        } else {
            this.gt = i10;
            this.rl = i11;
        }
        this.uj = z10;
    }

    private void md() {
        if (this.qy.getAndSet(true)) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.sp, "translationY", 0.0f, pf.n((Context) this.f11530c));
        objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.ac.c.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                pf.c((View) c.this.sp, 8);
                c.this.qy.set(false);
            }
        });
        objectAnimatorOfFloat.start();
    }

    private void p() {
        if (this.qy.getAndSet(true)) {
            return;
        }
        try {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.sp, "translationY", pf.n((Context) this.f11530c), 0.0f);
            objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
            objectAnimatorOfFloat.setDuration(1000L);
            objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.ac.c.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    c.this.qy.set(false);
                }
            });
            objectAnimatorOfFloat.start();
        } catch (Throwable th) {
            m.c(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(int i10, int i11) {
        if (this.f11537x == null || this.f11530c.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", i10);
            jSONObject.put("height", i11);
            this.f11537x.tt("resize", jSONObject);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public void a() {
        if (this.f11530c.to() instanceof x) {
            md();
        } else {
            pf.c((View) this.sp, 8);
        }
    }

    public abstract void c(DownloadListener downloadListener, com.byazt.hkv.tt ttVar);

    public abstract void c(boolean z10, Map<String, Object> map, View view);

    public int da() {
        return this.f11536u;
    }

    public abstract String gr();

    public void gt() {
        da daVar = this.f11532i;
        if (daVar != null) {
            daVar.ve();
            this.f11532i.uj();
        }
    }

    public void gu() {
        SSWebView sSWebView = this.sp;
        if (sSWebView != null) {
            sSWebView.loadUrl("about:blank");
        }
    }

    public void i() {
        this.f11532i = null;
    }

    public void m() {
        SSWebView sSWebView = this.sp;
        if (sSWebView != null) {
            sSWebView.onResume();
            this.sp.resumeTimers();
            pf.c((View) this.sp, 1.0f);
            yv();
        }
    }

    public void my() {
        da daVar = this.f11532i;
        if (daVar != null) {
            daVar.t();
        }
    }

    public void n() {
        a aVar = this.f11535t;
        if (aVar != null) {
            aVar.c(System.currentTimeMillis());
        }
    }

    public void nu() {
        da daVar = this.f11532i;
        if (daVar != null) {
            daVar.i();
        }
    }

    public boolean qy() {
        return c(this.f11531da);
    }

    public void rh() {
        da daVar = this.f11532i;
        if (daVar != null) {
            daVar.sl();
        }
    }

    public boolean rl() {
        d dVar = this.f11537x;
        if (dVar == null) {
            return false;
        }
        return dVar.gu();
    }

    public String sl() {
        return this.yp;
    }

    public boolean sp() {
        SSWebView sSWebView = this.sp;
        if (sSWebView != null) {
            return sSWebView.canGoBack();
        }
        return false;
    }

    public void t() {
        SSWebView sSWebView = this.sp;
        if (sSWebView != null) {
            sSWebView.onResume();
        }
        d dVar = this.f11537x;
        if (dVar != null) {
            dVar.h();
            SSWebView sSWebView2 = this.sp;
            if (sSWebView2 != null) {
                if (sSWebView2.getVisibility() == 0) {
                    this.f11537x.a(true);
                    c(true);
                    c(false, true);
                } else {
                    this.f11537x.a(false);
                    c(false);
                    c(true, false);
                }
            }
        }
        a aVar = this.f11535t;
        if (aVar != null) {
            aVar.uj();
        }
        com.byazt.jwd.uj ujVar = this.sl;
        if (ujVar != null) {
            ujVar.tt(false);
        }
    }

    public void u() {
        SSWebView sSWebView = this.sp;
        if (sSWebView != null) {
            sSWebView.onPause();
        }
        d dVar = this.f11537x;
        if (dVar != null) {
            dVar.d();
            this.f11537x.a(false);
            c(false);
            c(true, false);
        }
        com.byazt.jwd.uj ujVar = this.sl;
        if (ujVar != null) {
            ujVar.ve();
        }
    }

    public void uj(boolean z10) {
    }

    public void ve(boolean z10) {
        if (this.f11537x == null || this.f11530c.isFinishing()) {
            return;
        }
        try {
            this.f11537x.a(z10);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public void x() {
        SSWebView sSWebView = this.sp;
        if (sSWebView == null || !sSWebView.canGoBack()) {
            return;
        }
        this.sp.goBack();
    }

    public void yp() {
        a aVar = this.f11535t;
        if (aVar != null) {
            aVar.n();
        }
    }

    public void yv() {
        d dVar = this.f11537x;
        if (dVar == null) {
            return;
        }
        dVar.c(new SSWebView.tt() { // from class: com.byazt.ac.c.6
            @Override // com.byazt.el.SSWebView.tt
            public void c(int i10) {
                d dVar2 = c.this.f11537x;
                if (dVar2 != null) {
                    dVar2.c(i10);
                }
            }
        });
    }

    public void z() {
        d dVar = this.f11537x;
        if (dVar != null) {
            dVar.eo();
        }
        da daVar = this.f11532i;
        if (daVar != null) {
            daVar.c(true);
            this.f11532i.m();
        }
        a aVar = this.f11535t;
        if (aVar != null) {
            aVar.a();
        }
        SSWebView sSWebView = this.sp;
        if (sSWebView != null) {
            cu.c(this.f11530c, sSWebView);
            cu.c(this.sp);
            this.sp.destroy();
        }
        this.sp = null;
    }

    public void zm() {
    }

    public void c() {
        SSWebView sSWebView = this.sp;
        if (sSWebView != null) {
            sSWebView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.ac.c.3
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    SSWebView sSWebView2 = c.this.sp;
                    if (sSWebView2 == null || sSWebView2.getViewTreeObserver() == null) {
                        return;
                    }
                    c.this.sp.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    int measuredWidth = c.this.sp.getMeasuredWidth();
                    int measuredHeight = c.this.sp.getMeasuredHeight();
                    if (c.this.sp.getVisibility() == 0) {
                        c.this.tt(measuredWidth, measuredHeight);
                    }
                }
            });
        }
    }

    public boolean uj() {
        return this.f11538z;
    }

    public boolean ve() {
        if (!qy()) {
            return false;
        }
        AtomicInteger atomicInteger = this.rh;
        if (atomicInteger == null || atomicInteger.get() == 0) {
            return this.nu.get();
        }
        return true;
    }

    public void c(boolean z10) {
        if (this.f11537x == null || this.f11530c.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("viewStatus", z10 ? 1 : 0);
            this.f11537x.tt("viewableChange", jSONObject);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public void tt(boolean z10) {
        if (this.f11537x == null || this.f11530c.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z10);
            this.f11537x.tt("volumeChange", jSONObject);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public void c(boolean z10, boolean z11) {
        if (this.f11537x == null || this.f11530c.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z10);
            jSONObject.put("endcard_show", z11);
            this.f11537x.tt("endcard_control_event", jSONObject);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public boolean tt() {
        return this.f11533m;
    }

    public void c(int i10, int i11) {
        if (this.f11537x == null || this.f11530c.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("downloadStatus", i10);
            jSONObject.put("downloadProcessRate", i11);
            this.f11537x.ve("showDownloadStatus", jSONObject);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public void c(long j10, long j11, int i10) {
        if (j11 > 0) {
            c(i10, (int) ((j10 * 100) / j11));
        }
    }

    public void c(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        com.byazt.jwd.tt.c(this.f11530c).c(false).tt(false).c(sSWebView);
        com.byazt.aas.gt.c(sSWebView, p.uj, ic.n(this.tt));
        pf.c((com.byazt.nl.uj) sSWebView);
        int i10 = Build.VERSION.SDK_INT;
        sSWebView.setMixedContentMode(0);
        if (i10 < 24) {
            this.sp.setLayerType(0, null);
        }
        com.byazt.nl.c.c(this.tt.rl(), this.sp.getInnerIWebView());
    }

    public void c(int i10) {
        pf.c((View) this.sp, 0);
        if (i10 == 1) {
            pf.c((View) this.sp, 0.0f);
        }
        if (i10 == 2) {
            p();
        }
        d dVar = this.f11537x;
        if (dVar != null) {
            dVar.c(this.f11530c.my());
            this.f11537x.c(nb.my(this.tt), false);
        }
    }

    public void c(Map<String, Object> map) {
        da daVar = this.f11532i;
        if (daVar != null) {
            daVar.da();
        }
    }

    public void c(boolean z10, int i10, String str) {
        da daVar = this.f11532i;
        if (daVar == null) {
            return;
        }
        if (z10) {
            daVar.tt();
        } else {
            daVar.c(i10, str);
        }
    }

    private boolean c(String str) {
        try {
            new URL(str);
            return URLUtil.isValidUrl(str) && Patterns.WEB_URL.matcher(str).matches();
        } catch (Exception unused) {
        }
    }

    public void c(JSONObject jSONObject) {
        d dVar = this.f11537x;
        if (dVar == null) {
            m.uj("BaseEndCard", "mJsObject is null!");
        } else {
            dVar.tt("showPlayAgainEntrance", jSONObject);
        }
    }

    public void c(ic icVar) {
        this.tt = icVar;
        this.f11538z = false;
    }
}
