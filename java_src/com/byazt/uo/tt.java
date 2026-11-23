package com.byazt.uo;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.bzd.x;
import com.byazt.cc.TsView;
import com.byazt.dh.ve;
import com.byazt.ete.gr;
import com.byazt.ete.ic;
import com.byazt.ete.ir;
import com.byazt.ete.iu;
import com.byazt.ete.p;
import com.byazt.ete.pu;
import com.byazt.ete.s;
import com.byazt.ete.u;
import com.byazt.ete.xd;
import com.byazt.gat.uj;
import com.byazt.im.i;
import com.byazt.im.sp;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.ouz.NativeExpressVideoView;
import com.byazt.ouz.NativeExpressView;
import com.byazt.ouz.SplashExpressBackupView;
import com.byazt.ouz.a;
import com.byazt.ouz.yv;
import com.byazt.sy.n;
import com.byazt.ukr.yp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 139, 13})
public class tt extends c implements ve.uj, ve.InterfaceC0292ve, c.tt, com.byazt.ua.c.InterfaceC0445c {
    public Context aw;
    public int bm;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public String f20923hd;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public com.byazt.dj.tt f20924ic;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public WeakReference<ViewGroup> f20925l;
    public n lo;
    public volatile a lt;
    public SlideInterceptView pu;
    public NativeExpressView sv;
    public volatile com.byazt.ouz.n to;
    public final AtomicBoolean lr = new AtomicBoolean(false);
    public final SlideInterceptView.c tk = new SlideInterceptView.c() { // from class: com.byazt.uo.tt.1
        @Override // com.byazt.uo.SlideInterceptView.c
        public void c(View view, gr grVar) {
            if (tt.this.sv != null) {
                tt.this.sv.c(view, 2, grVar, -1);
            }
            tt.this.a();
        }

        @Override // com.byazt.uo.SlideInterceptView.c
        public com.byazt.ouz.n c() {
            return tt.this.to;
        }
    };

    public tt(Context context, com.byazt.dj.tt ttVar, String str, int i10, com.byazt.im.ve veVar, uj<i, sp> ujVar, com.byazt.tdq.c cVar) {
        if (veVar != null) {
            this.tt = veVar.tt();
            initLifecycle(veVar.tt(), veVar.sp());
        }
        this.aw = context;
        this.f20924ic = ttVar;
        this.f20923hd = str;
        this.bm = i10;
        this.sp = this;
        c(veVar, ujVar, cVar);
        tt(ujVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        final s sVarMf = this.tt.mf();
        if (sVarMf == null || ((c) this).f20883c == null) {
            return;
        }
        if ((this.f20894nb.get() != 1 || sVarMf.nu() == 1) && sVarMf.m() > 0.0f) {
            ((c) this).f20883c.postDelayed(new Runnable() { // from class: com.byazt.uo.tt.5
                @Override // java.lang.Runnable
                public void run() {
                    int iZm;
                    View rootView = ((c) tt.this).f20883c.getRootView();
                    if (rootView instanceof FrameLayout) {
                        ViewGroup viewGroup = (ViewGroup) rootView;
                        int height = ((c) tt.this).f20883c.getHeight();
                        int iX = pf.x(tt.this.aw);
                        if (sVarMf.m() >= 1.0f) {
                            float f10 = iX;
                            if (height <= sVarMf.m() * f10 && !tt.this.sl) {
                                if (sVarMf.gt() == 1) {
                                    iZm = iX - height;
                                } else {
                                    iZm = sVarMf.zm() > 0.0f ? (int) (f10 * sVarMf.zm()) : 0;
                                }
                                tt.this.pu = new SlideInterceptView(tt.this.aw, sVarMf, tt.this.tk);
                                if (iZm <= 0) {
                                    iZm = -1;
                                }
                                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, iZm);
                                layoutParams.gravity = 80;
                                viewGroup.addView(tt.this.pu, layoutParams);
                            }
                        }
                    }
                }
            }, sVarMf.rl());
        }
    }

    private void u() {
        if (this.cu > 0) {
            return;
        }
        if (this.or == 1) {
            this.cu = 1;
        } else {
            this.cu = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void yp() {
        NativeExpressView nativeExpressView = this.sv;
        if (nativeExpressView == null) {
            return;
        }
        nativeExpressView.c(this.f20899t, 0);
        this.sv.setDynamicSkipListener(new com.byazt.but.ve() { // from class: com.byazt.uo.tt.7
            @Override // com.byazt.but.ve
            public void c() {
                tt.this.c();
            }
        });
        ((c) this).f20883c.tt();
        com.byazt.but.tt ttVar = new com.byazt.but.tt();
        this.pf = ttVar;
        ttVar.c(this.f20899t);
        this.pf.c(new com.byazt.but.tt.c() { // from class: com.byazt.uo.tt.8
            @Override // com.byazt.but.tt.c
            public void c() {
                tt.this.uj();
            }

            @Override // com.byazt.but.tt.c
            public void c(int i10) {
                if (tt.this.sv != null) {
                    tt.this.sv.c(tt.this.f20899t, i10);
                }
            }
        });
        if (this.qp.get()) {
            this.pf.tt();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        this.lo = new n(this.tt, new com.byazt.sy.c() { // from class: com.byazt.uo.tt.9
            @Override // com.byazt.ouz.sl
            public long c() {
                return 0L;
            }

            @Override // com.byazt.ouz.sl
            public void n() {
            }

            @Override // com.byazt.ouz.sl
            public void setPauseFromExpressView(boolean z10) {
            }

            @Override // com.byazt.ouz.sl
            public int tt() {
                return 0;
            }

            @Override // com.byazt.ouz.sl
            public void uj() {
            }

            @Override // com.byazt.ouz.sl
            public int ve() {
                return 0;
            }

            @Override // com.byazt.ouz.sl
            public void c(float f10) {
            }

            @Override // com.byazt.ouz.sl
            public void tt(int i10) {
            }

            @Override // com.byazt.ouz.sl
            public void uj(int i10) {
            }

            @Override // com.byazt.ouz.sl
            public void ve(int i10) {
            }

            @Override // com.byazt.ouz.sl
            public void c(int i10) {
            }

            @Override // com.byazt.ouz.sl
            public void c(int i10, String str) {
            }

            @Override // com.byazt.ouz.sl
            public void c(ic icVar) {
            }

            @Override // com.byazt.sy.c
            public void c(View view) {
                tt.this.i();
                tt ttVar = tt.this;
                com.byazt.vw.c cVar = ttVar.f20902x;
                if (cVar != null) {
                    cVar.tt(ttVar);
                }
                ic icVar = tt.this.tt;
                com.byazt.sy.ve.tt(icVar, p.sp(icVar), true, null);
            }

            @Override // com.byazt.sy.c
            public void c(View view, int i10, com.byazt.sr.ve veVar, ir irVar) {
                if (tt.this.sv != null) {
                    tt.this.sv.c(view, i10, veVar, -1);
                }
                com.byazt.sy.ve.c(tt.this.tt, (u) irVar, false, (JSONObject) null, veVar instanceof gr ? ((gr) veVar).c().optBoolean("isLottieInternalClick", false) : false);
                tt.this.a();
            }

            @Override // com.byazt.sy.c
            public void c(View view, int i10, com.byazt.sr.ve veVar, int i11) {
                if (tt.this.sv != null) {
                    tt.this.sv.c(view, i10, veVar, i11);
                }
                tt.this.a();
            }

            @Override // com.byazt.sy.c
            public void c(ViewGroup viewGroup) {
                if (p.x(tt.this.tt).sl()) {
                    TextView textView = new TextView(tt.this.aw);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                    textView.setTextSize(1, 20.0f);
                    int iVe = pf.ve(gt.getContext(), 80.0f);
                    textView.setText("跳转至详情页或第三方应用");
                    layoutParams.bottomMargin = iVe;
                    int i10 = iVe / 3;
                    layoutParams.leftMargin = i10;
                    layoutParams.rightMargin = i10;
                    layoutParams.gravity = 81;
                    textView.setTextColor(-1);
                    int i11 = iVe / 6;
                    textView.setPadding(0, i11, 0, i11);
                    textView.setGravity(17);
                    textView.setLayoutParams(layoutParams);
                    textView.setClickable(true);
                    textView.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.uo.tt.9.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (tt.this.sv != null) {
                                tt.this.sv.c(view, 2, new gr.c().c(), -1);
                            }
                        }
                    });
                    textView.bringToFront();
                    viewGroup.addView(textView);
                }
            }
        });
    }

    @Override // com.byazt.uo.c
    public void bindDownloadAdapterToClickListener(com.byazt.pop.ve veVar) {
        super.bindDownloadAdapterToClickListener(veVar);
        if (this.lt != null) {
            ((com.byazt.nat.c) this.lt.c(com.byazt.nat.c.class)).c(veVar);
        }
        if (this.to != null) {
            ((com.byazt.nat.c) this.to.c(com.byazt.nat.c.class)).c(veVar);
        }
        if (this.ve != null) {
            this.ve.c(this);
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rgb.tt.ve(getLifecycleId(), 3);
    }

    @Override // com.byazt.ua.c.InterfaceC0445c
    public boolean getHasUseCustomizeVideo() {
        return false;
    }

    @Override // com.byazt.uo.c, com.byazt.nc.tt
    public View getSplashView() {
        if (this.cu == -1) {
            this.cu = 0;
        }
        ic icVar = this.tt;
        if (icVar != null) {
            com.byazt.iyp.tt.c(icVar.c());
        }
        return ((c) this).f20883c;
    }

    @Override // com.byazt.ua.c.InterfaceC0445c
    public com.byazt.ua.c getVideoModel() {
        NativeExpressView nativeExpressView;
        com.byazt.ua.c cVar = new com.byazt.ua.c();
        ve videoController = this.eo;
        if (videoController == null && (nativeExpressView = this.sv) != null) {
            videoController = nativeExpressView.getVideoController();
        }
        if (videoController != null) {
            cVar.sp = videoController.sl();
            cVar.f20527c = videoController.gt();
            cVar.f20529x = videoController.my();
        }
        return cVar;
    }

    public void onClickSkip() {
    }

    public void onCountDownEnd() {
    }

    public void onCountDownPause() {
    }

    public void onCountDownStart() {
    }

    @Override // com.byazt.uo.c, com.byazt.cc.TsView.c
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NativeExpressView nativeExpressView = this.sv;
        if (nativeExpressView != null) {
            nativeExpressView.t();
        }
        this.sv = null;
        this.sp = null;
        this.f20881a = null;
        Map<String, Object> map = this.f20885da;
        if (map != null) {
            map.clear();
        }
        n nVar = this.lo;
        if (nVar != null) {
            nVar.tt();
        }
        a();
        c(false);
        n();
    }

    @Override // com.byazt.dh.ve.InterfaceC0292ve
    public void onProgressUpdate(long j10, long j11) {
    }

    @Override // com.byazt.uo.c.tt
    public void onShow() {
        ic icVar = this.tt;
        if (icVar == null || this.my == null) {
            return;
        }
        if (pu.c(icVar) == 2) {
            if (this.lr.get()) {
                NativeExpressView nativeExpressView = this.sv;
                if (nativeExpressView != null) {
                    nativeExpressView.z();
                    yv.c(this.my, this.tt, this.sv);
                }
                this.my.put("splash_show_type", 3);
            }
        } else if (this.f20886h) {
            if (TextUtils.isEmpty(xd.c(this.tt))) {
                this.my.put("splash_show_type", 2);
            }
            this.my.put("splash_show_type", 1);
        } else {
            this.my.put("splash_show_type", 0);
        }
        c(this.tt);
    }

    @Override // com.byazt.dh.ve.InterfaceC0292ve
    public void onVideoAdContinuePlay() {
    }

    @Override // com.byazt.dh.ve.InterfaceC0292ve
    public void onVideoAdPaused() {
    }

    @Override // com.byazt.dh.ve.InterfaceC0292ve
    public void onVideoAdStartPlay() {
    }

    @Override // com.byazt.dh.ve.InterfaceC0292ve
    public void onVideoComplete() {
        com.byazt.rgb.tt.ve(getLifecycleId(), 1);
        this.gu = false;
        com.byazt.ddx.uj.tt(this.f20892m, this.tt);
        com.byazt.vw.c cVar = this.f20902x;
        if (cVar != null) {
            this.sl = true;
            cVar.c(this, 4);
            c(false);
        }
        n();
    }

    @Override // com.byazt.dh.ve.uj
    public void onVideoError(int i10, int i11) {
        this.gu = false;
    }

    @Override // com.byazt.dh.ve.uj
    public void onVideoLoad() {
    }

    public void renderExpressAd() {
        NativeExpressView nativeExpressView = this.sv;
        if (nativeExpressView == null) {
            return;
        }
        nativeExpressView.x(this.bm);
        this.sv.m();
    }

    public void renderSplash(com.byazt.im.ve veVar, uj<i, sp> ujVar) {
        this.f20900u = 3;
        ve(ujVar);
        renderExpressAd();
    }

    public void setExpressTimeOut(int i10) {
        this.bm = i10;
    }

    @Override // com.byazt.uo.c, com.byazt.nc.tt
    public void showSplashView(ViewGroup viewGroup) {
        x();
        if (viewGroup == null) {
            m.uj(MediationConstant.RIT_TYPE_SPLASH, "展示开屏的容器不能为空");
            return;
        }
        ic icVar = this.tt;
        if (icVar != null) {
            com.byazt.iyp.tt.c(icVar.c());
        }
        u();
        WeakReference<ViewGroup> weakReference = new WeakReference<>(viewGroup);
        this.f20925l = weakReference;
        if (!this.yv.get() || ((c) this).f20883c == null) {
            this.f20895p.set(true);
        } else {
            c(weakReference);
        }
    }

    private void da() {
        if (this.tt.by() == 2) {
            this.sv = new NativeExpressView(true, this.aw, this.tt, this.f20924ic, this.f20923hd, true);
        } else {
            this.sv = new NativeExpressView(false, this.aw, this.tt, this.f20924ic, this.f20923hd, true);
        }
    }

    private void sl() {
        if (this.tt.by() == 2) {
            this.sv = new NativeExpressVideoView(true, this.aw, this.tt, this.f20924ic, this.f20923hd);
        } else {
            this.sv = new NativeExpressVideoView(false, this.aw, this.tt, this.f20924ic, this.f20923hd);
        }
        if (this.sv.getVideoController() instanceof com.byazt.un.uj) {
            this.eo = (com.byazt.un.uj) this.sv.getVideoController();
        }
        this.sv.setVideoAdListener(this);
        this.sv.setVideoAdInteractionListener(this);
    }

    private void tt(final uj<i, sp> ujVar) {
        try {
            com.byazt.cc.n.c(new Runnable() { // from class: com.byazt.uo.tt.2
                @Override // java.lang.Runnable
                public void run() {
                    System.currentTimeMillis();
                    tt.this.c(ujVar);
                    tt.this.z();
                    System.currentTimeMillis();
                }
            });
        } catch (Throwable th) {
            m.uj("splrender", th.getMessage());
        }
    }

    private void ve(final uj<i, sp> ujVar) {
        if (ujVar == null || this.tt == null) {
            return;
        }
        if (this.f20886h) {
            this.rl = true;
            sl();
        } else {
            this.rl = false;
            da();
        }
        sp spVar = this.zm;
        if (spVar != null) {
            spVar.c(this);
        }
        NativeExpressView nativeExpressView = this.sv;
        if (nativeExpressView == null) {
            this.zm.tt(3);
            this.zm.c("no render express");
            ujVar.c(this.zm);
        } else {
            nativeExpressView.setBackupListener(new com.byazt.xl.ve() { // from class: com.byazt.uo.tt.3
                @Override // com.byazt.xl.ve
                public boolean c(ViewGroup viewGroup, int i10) {
                    try {
                        SplashExpressBackupView splashExpressBackupView = new SplashExpressBackupView(tt.this.aw);
                        tt ttVar = tt.this;
                        splashExpressBackupView.c(ttVar.md, ttVar.tt, (NativeExpressView) viewGroup);
                        if (splashExpressBackupView.getVideoController() instanceof com.byazt.un.uj) {
                            tt.this.eo = (com.byazt.un.uj) splashExpressBackupView.getVideoController();
                        }
                        splashExpressBackupView.setVideoAdListener(tt.this);
                        tt.this.ve();
                        TsView tsView = ((c) tt.this).f20883c;
                        if (tsView == null) {
                            return true;
                        }
                        tsView.c();
                        return true;
                    } catch (Exception unused) {
                        return false;
                    }
                }
            });
            this.f20900u = 3;
            this.sv.setExpressInteractionListener(new com.byazt.ouz.c() { // from class: com.byazt.uo.tt.4
                @Override // com.byazt.ouz.c
                public void c(View view, int i10) {
                    tt.this.i();
                    tt ttVar = tt.this;
                    com.byazt.ddx.uj.tt(ttVar.f20892m, ttVar.tt);
                    tt ttVar2 = tt.this;
                    com.byazt.vw.c cVar = ttVar2.f20902x;
                    if (cVar != null) {
                        cVar.tt(ttVar2);
                    }
                    tt.this.tt();
                    tt.this.a();
                }

                @Override // com.byazt.ouz.c
                public void c(View view, final String str, int i10) {
                    final Runnable runnable = new Runnable() { // from class: com.byazt.uo.tt.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                m.uj(MediationConstant.RIT_TYPE_SPLASH, "onRenderFail:" + str);
                                tt.this.zm.tt(3);
                                tt.this.zm.c("render splash express fail");
                                AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                ujVar.c(tt.this.zm);
                            } catch (Throwable th) {
                                m.c(th);
                            }
                        }
                    };
                    com.byazt.cc.n.c(new Runnable() { // from class: com.byazt.uo.tt.4.2
                        @Override // java.lang.Runnable
                        public void run() {
                            x.c(runnable);
                        }
                    });
                }

                @Override // com.byazt.ouz.c
                public void c(final View view, final float f10, final float f11) {
                    com.byazt.dz.c.c("Splash_FullLink", "CSJSplashExpressRender- onRenderSuccess");
                    final Runnable runnable = new Runnable() { // from class: com.byazt.uo.tt.4.3
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                com.byazt.dz.c.c("Splash_FullLink", "CSJSplashExpressRender- runOnUiThread - onRenderSuccess");
                                if (view == null || f10 <= 0.0f || f11 <= 0.0f) {
                                    tt.this.zm.tt(3);
                                    tt.this.zm.c("render splash view error");
                                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                    ujVar.c(tt.this.zm);
                                    return;
                                }
                                i iVar = new i(tt.this.f20905zb.get(), tt.this);
                                boolean zRl = tt.this.sv.rl();
                                if (tt.this.sv != null && !zRl) {
                                    ((c) tt.this).f20883c.setComplianceBarVisibility(8);
                                }
                                iVar.c(zRl);
                                tt.this.f20894nb.set(zRl ? 1 : 2);
                                tt.this.yv.set(true);
                                tt ttVar = tt.this;
                                ((c) ttVar).f20883c.setExpressView(ttVar.sv);
                                tt.this.lr.set(true);
                                if (tt.this.f20895p.get()) {
                                    tt ttVar2 = tt.this;
                                    ttVar2.c((WeakReference<ViewGroup>) ttVar2.f20925l);
                                    tt.this.f20895p.set(false);
                                }
                                if (!tt.this.f20888i.get() && !zRl && iu.c(tt.this.tt)) {
                                    tt.this.yp();
                                }
                                ujVar.tt(iVar);
                                tt.this.lo.c(((c) tt.this).f20883c.getEasyPlayableLayout(), tt.this.sv.getVideoContainer());
                                tt.this.t();
                            } catch (Throwable th) {
                                m.c(th);
                                m.uj(MediationConstant.RIT_TYPE_SPLASH, "onRenderFail:" + th.getMessage());
                            }
                        }
                    };
                    com.byazt.cc.n.c(new Runnable() { // from class: com.byazt.uo.tt.4.4
                        @Override // java.lang.Runnable
                        public void run() {
                            x.c(runnable);
                        }
                    });
                }
            });
        }
    }

    @Override // com.byazt.uo.c
    public void a() {
        try {
            SlideInterceptView slideInterceptView = this.pu;
            if (slideInterceptView == null) {
                return;
            }
            slideInterceptView.c();
            if (((ViewGroup) this.pu.getParent()) == null) {
                return;
            }
            this.pu.post(new Runnable() { // from class: com.byazt.uo.tt.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ViewGroup viewGroup = (ViewGroup) tt.this.pu.getParent();
                        if (viewGroup == null) {
                            return;
                        }
                        viewGroup.removeView(tt.this.pu);
                    } catch (Exception unused) {
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    private void c(JSONArray jSONArray, View view) {
        if (view == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("name", view.getClass().getSimpleName());
            jSONObject.put("id", view.getId());
            if (view instanceof ViewGroup) {
                JSONArray jSONArray2 = new JSONArray();
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    c(jSONArray2, viewGroup.getChildAt(i10));
                }
                jSONObject.put("children", jSONArray2);
            }
            jSONArray.put(jSONObject);
        } catch (JSONException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(WeakReference<ViewGroup> weakReference) {
        ViewGroup viewGroup;
        if (weakReference == null || (viewGroup = weakReference.get()) == null) {
            return;
        }
        if (((c) this).f20883c.getParent() != null) {
            ((ViewGroup) ((c) this).f20883c.getParent()).removeView(((c) this).f20883c);
        }
        try {
            viewGroup.addView(((c) this).f20883c);
        } catch (Exception e10) {
            try {
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                c(jSONArray, ((c) this).f20883c);
                jSONObject.put("root", jSONArray);
                m.uj(MediationConstant.RIT_TYPE_SPLASH, "showTsView.addView:" + e10.getMessage());
                yp.c().c("splash_add_view_error", jSONObject, e10);
            } catch (JSONException unused) {
            }
        }
    }

    private void c(ic icVar) {
        if (this.sv == null || icVar == null) {
            return;
        }
        Context context = this.aw;
        String str = this.f20923hd;
        this.lt = new a(context, icVar, str, nb.uj(str));
        this.lt.c(this.sv);
        ((com.byazt.nat.c) this.lt.c(com.byazt.nat.c.class)).c(this.ve);
        ((com.byazt.vis.c) this.lt.c(com.byazt.vis.c.class)).c(this.f20885da);
        this.sv.setClickListener(this.lt);
        Context context2 = this.aw;
        String str2 = this.f20923hd;
        this.to = new com.byazt.ouz.n(context2, icVar, str2, nb.uj(str2));
        ((com.byazt.nat.c) this.to.c(com.byazt.nat.c.class)).c(this);
        this.to.c(this.sv);
        ((com.byazt.nat.c) this.to.c(com.byazt.nat.c.class)).c(this.ve);
        ((com.byazt.vis.c) this.to.c(com.byazt.vis.c.class)).c(this.f20885da);
        this.sv.setClickCreativeListener(this.to);
        if (this.ve != null) {
            this.ve.c(this);
        }
    }
}
