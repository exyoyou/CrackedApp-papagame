package com.byazt.ouz;

import android.app.Dialog;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Color;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.el.SSWebView;
import com.byazt.ete.h;
import com.byazt.ete.ic;
import com.byazt.ete.pu;
import com.byazt.ete.v;
import com.byazt.omf.d;
import com.byazt.omf.zb;
import com.byazt.ui.UpieImageView;
import com.byazt.xv.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 2233})
public class NativeExpressView extends FrameLayout implements com.byazt.kn.uj, com.byazt.xv.c, com.byazt.xl.x, com.byazt.xl.z, m, sl, com.byazt.qdk.tt {
    public static int my = 500;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f18384a;
    public Runnable aw;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public com.byazt.xl.a f18385b;
    public final Runnable bm;
    public final AtomicBoolean bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f18386c;
    public FrameLayout cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f18387d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f18388da;
    public float dz;
    public v eo;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f18389f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public View f18390g;
    public com.byazt.hkv.tt gr;
    public boolean gt;
    public com.byazt.hkv.c gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public com.byazt.rbg.c f18391h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public final Runnable f18392hd;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ic f18393i;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public final ViewTreeObserver.OnScrollChangedListener f18394ic;
    public long ir;
    public boolean iu;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SparseArray<com.byazt.hkv.uj.c> f18395j;
    public volatile com.byazt.xl.yp kk;
    public com.byazt.xl.tt kp;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ThemeStatusBroadcastReceiver f18396l;
    public yv lo;
    public final Runnable lr;
    public com.byazt.xl.da.c lt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f18397m;

    /* JADX INFO: renamed from: ma, reason: collision with root package name */
    public float f18398ma;
    public float md;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public c f18399n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public final com.byazt.ddx.n f18400nb;
    public com.byazt.xl.ve nu;
    public FrameLayout or;
    public com.byazt.xl.u os;
    public nu oz;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f18401p;
    public final AtomicBoolean pf;
    public com.byazt.atv.sp pu;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public com.byazt.atv.a f18402q;
    public FrameLayout qp;
    public boolean qy;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f18403r;
    public boolean rh;
    public FrameLayout rl;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public qy f18404s;
    public ExpressVideoView sl;
    public String sp;
    public FrameLayout sv;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.dh.ve.uj f18405t;
    public com.byazt.xl.m tk;
    public List<com.byazt.xl.da> to;
    public int tt;
    public com.byazt.xl.i tx;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.byazt.dh.ve.InterfaceC0292ve f18406u;
    public Dialog uj;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public com.byazt.xl.uj<? extends View> f18407v;
    public com.byazt.dyf.tt ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.dj.tt f18408x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public com.byazt.but.ve f18409y;
    public float yf;
    public FrameLayout yp;
    public String yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f18410z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public com.byazt.qmz.c f18411zb;
    public final AtomicBoolean zm;

    public NativeExpressView(Context context, ic icVar, com.byazt.dj.tt ttVar, String str) {
        super(context);
        this.f18386c = true;
        this.tt = 0;
        this.sp = com.byazt.dyf.tt.AD_TAG_FEED;
        this.zm = new AtomicBoolean(false);
        this.yv = null;
        this.f18397m = false;
        this.rh = false;
        this.gt = false;
        this.f18387d = false;
        this.pf = new AtomicBoolean(false);
        this.qy = false;
        this.bx = new AtomicBoolean(false);
        this.f18394ic = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.byazt.ouz.NativeExpressView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                NativeExpressView.this.a(57);
                NativeExpressView nativeExpressView = NativeExpressView.this;
                nativeExpressView.removeCallbacks(nativeExpressView.f18392hd);
                NativeExpressView nativeExpressView2 = NativeExpressView.this;
                nativeExpressView2.postDelayed(nativeExpressView2.f18392hd, 500L);
            }
        };
        this.f18392hd = new Runnable() { // from class: com.byazt.ouz.NativeExpressView.5
            @Override // java.lang.Runnable
            public void run() {
                if (!zb.tt(NativeExpressView.this, 0, 5)) {
                    NativeExpressView.this.sp(8);
                } else {
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.sp(nativeExpressView.getVisibility());
                }
            }
        };
        this.bm = new Runnable() { // from class: com.byazt.ouz.NativeExpressView.6
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.sp(0);
            }
        };
        this.lr = new Runnable() { // from class: com.byazt.ouz.NativeExpressView.7
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.sp(8);
            }
        };
        this.f18395j = new SparseArray<>();
        this.dz = -1.0f;
        this.f18398ma = -1.0f;
        this.yf = -1.0f;
        this.f18389f = -1.0f;
        this.ir = 0L;
        this.sp = str;
        this.f18384a = context;
        this.f18393i = icVar;
        this.f18400nb = new com.byazt.ddx.n(icVar, str);
        this.f18408x = ttVar;
        sl();
    }

    private void d() {
        if (yp()) {
            return;
        }
        gr();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eo() {
        com.byazt.rbg.c cVar = this.f18391h;
        if (cVar instanceof com.byazt.ddx.da) {
            ((com.byazt.ddx.da) cVar).tt(this.os.x());
        }
        this.f18391h.c();
        this.lt.c(this);
        this.lt.c();
    }

    private int getRenderThread() {
        if (md() && com.byazt.omf.gt.tt().x(nb.t(this.f18393i)) == 4) {
            return 1;
        }
        if ((com.byazt.by.n.c().t() & 2) == 2) {
            return 1;
        }
        return pu.uj(this.f18393i);
    }

    private void gr() {
        try {
            if (this.f18396l == null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.bytedance.openadsdk.themeTypeChangeReceiver");
            this.f18384a.registerReceiver(this.f18396l, intentFilter, nb.p(), null);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    private void gu() {
        com.byazt.dj.tt ttVar;
        if (TextUtils.equals(this.sp, "splash_ad") && (ttVar = this.f18408x) != null && this.md == ttVar.sp() && this.f18401p == this.f18408x.a()) {
            this.md = pf.uj(this.f18384a, this.md);
            int iUj = pf.uj(this.f18384a);
            float f10 = this.f18401p;
            float f11 = iUj;
            if (f10 < f11) {
                this.f18401p = pf.uj(this.f18384a, f11);
            } else {
                this.f18401p = pf.uj(this.f18384a, f10);
            }
        }
    }

    private void h() {
        this.tt = pu.tt(this.f18393i);
        if (md() && pu.c(this.f18393i) == 1) {
            this.tt = 1000;
        }
        com.byazt.vu.c cVar = new com.byazt.vu.c(this.f18393i, new WeakReference(this));
        int i10 = this.tt;
        if (i10 == 3) {
            com.byazt.xl.tt ttVar = new com.byazt.xl.tt(this.f18384a, this.os, this.f18396l, this.gt, new com.byazt.du.sp(), this, cVar);
            this.kp = ttVar;
            this.to.add(ttVar);
            this.kp.c(com.byazt.omf.gt.tt().ra());
        } else if (i10 == 7) {
            com.byazt.atv.n nVar = new com.byazt.atv.n(this.f18384a, this.f18393i, (com.byazt.atv.tt) this.os, this);
            this.f18387d = nVar.da();
            com.byazt.atv.a aVar = new com.byazt.atv.a(this.f18384a, nVar, this, this.os, this);
            this.f18402q = aVar;
            this.to.add(aVar);
        } else if (i10 == 10) {
            com.byazt.atv.sp spVar = new com.byazt.atv.sp(this.f18384a, this.f18393i, (com.byazt.atv.tt) this.os, this);
            this.pu = spVar;
            this.f18387d = spVar.da();
            this.f18402q = new com.byazt.atv.a(this.f18384a, this.pu, this, this.os, this);
            if (pu.c(nb.sl(this.f18393i))) {
                this.pu.c(new com.byazt.sz.x() { // from class: com.byazt.ouz.NativeExpressView.8
                    @Override // com.byazt.sz.x
                    public void c(com.byazt.sz.i.c cVar2) {
                        try {
                            uj.c(cVar2.n(), NativeExpressView.this.os.n());
                        } catch (Exception unused) {
                        }
                    }

                    @Override // com.byazt.sz.x
                    public void tt(com.byazt.sz.i.c cVar2) {
                    }
                });
            }
            this.to.add(this.f18402q);
        } else if (i10 != 1000) {
            yv yvVar = new yv(this.f18384a, this.os, this.f18396l, this.f18391h, this.f18393i, this.tx, this);
            this.lo = yvVar;
            com.byazt.xl.m mVar = new com.byazt.xl.m(this.f18384a, this.os, yvVar, this);
            this.tk = mVar;
            this.to.add(mVar);
        }
        int iVe = pu.ve(this.f18393i);
        if (iVe > 0 && yv() && TextUtils.equals(this.sp, com.byazt.dyf.tt.AD_TAG_FEED)) {
            this.to.add(new com.byazt.atv.a(this.f18384a, new com.byazt.ouc.ve(this.f18384a, this.f18393i, (com.byazt.atv.tt) this.os, this), this, this.os, this));
        } else {
            boolean z10 = iVe == 1;
            this.f18386c = z10;
            if (z10 || this.tt == 1000) {
                com.byazt.xl.a aVar2 = new com.byazt.xl.a(this.f18384a, this.os, new my(this, this.f18396l, this.os));
                this.f18385b = aVar2;
                this.to.add(aVar2);
            } else if (com.byazt.ouc.c.tt(this.f18393i)) {
                this.to.add(new com.byazt.atv.a(this.f18384a, new com.byazt.ouc.ve(this.f18384a, this.f18393i, (com.byazt.atv.tt) this.os, this), this, this.os, this));
            }
        }
        this.lt = new com.byazt.xl.t(this.to, this.tx);
    }

    private boolean md() {
        return TextUtils.equals(this.sp, "splash_ad") || TextUtils.equals(this.sp, "cache_splash_ad");
    }

    private boolean p() {
        if (TextUtils.equals(this.sp, "rewarded_video") || TextUtils.equals(this.sp, "fullscreen_interstitial_ad")) {
            return this.f18393i.fe();
        }
        return true;
    }

    private void u() {
        ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver = new ThemeStatusBroadcastReceiver();
        this.f18396l = themeStatusBroadcastReceiver;
        themeStatusBroadcastReceiver.c(this);
    }

    private boolean yp() {
        return md() && pu.c(this.f18393i) == 1;
    }

    private boolean yv() {
        com.byazt.dj.tt ttVar = this.f18408x;
        return ttVar != null && com.byazt.omf.p.uj >= 5900 && ttVar.yv();
    }

    private boolean zb() {
        ic icVar = this.f18393i;
        return icVar != null && icVar.vp() == 1 && ic.ve(this.f18393i);
    }

    private void zm() {
        com.byazt.xl.u.c cVar;
        List<com.byazt.ete.zb> listPa;
        com.byazt.ete.zb zbVar;
        boolean zX = pu.x(this.f18393i);
        JSONObject jSONObjectC = null;
        if (!yp()) {
            boolean z10 = pu.tt(this.f18393i) == 9 || pu.tt(this.f18393i) == 0;
            if (zX) {
                jSONObjectC = com.byazt.jlk.tt.c(this.f18393i, com.byazt.jlk.tt.c(this.f18401p, this.md, this.f18397m), com.byazt.jlk.tt.c(this.f18393i), false, this.f18388da, z10);
            } else if (!pu.da(this.f18393i)) {
                jSONObjectC = com.byazt.jlk.tt.c(this.f18401p, this.md, this.f18397m, this.f18393i, z10);
            } else if (pu.a(this.f18393i) != null && !TextUtils.isEmpty(pu.a(this.f18393i).i())) {
                jSONObjectC = com.byazt.xs.da.c(pu.a(this.f18393i).i(), pu.a(this.f18393i).da(), (com.byazt.xs.ve) null);
            }
            if (pu.a(this.f18393i) != null) {
                com.byazt.omf.uj.c().c(pu.a(this.f18393i).tt());
            }
            if (pu.sp(this.f18393i) != null) {
                com.byazt.omf.uj.c().c(pu.sp(this.f18393i).c());
            }
        }
        this.f18391h = tt(jSONObjectC);
        if (yp()) {
            this.tx = new gt();
        } else {
            this.tx = new da(this.f18391h, this.sp, this.f18393i, this.yv);
        }
        boolean zP = p();
        if (pu.da(this.f18393i) || pu.t(this.f18393i) || com.byazt.ouc.c.tt(this.f18393i) || yv()) {
            com.byazt.atv.tt.c cVar2 = new com.byazt.atv.tt.c();
            cVar2.n(com.byazt.xs.da.c(this.f18393i, (View) this, false));
            cVar2.c((com.byazt.sz.qy) this.tx);
            cVar2.c(this.f18401p);
            cVar2.tt(this.md);
            cVar2.n(yv());
            cVar2.sl(1);
            cVar = cVar2;
        } else {
            cVar = new com.byazt.xl.u.c();
        }
        cVar.ve(zX);
        if (TextUtils.equals(this.sp, "splash_ad")) {
            cVar.a(com.byazt.bzd.sl.n());
        }
        if (pu.tt(this.f18393i) == 3 && com.byazt.ic.c.uj(this.f18393i) && (listPa = this.f18393i.pa()) != null && !listPa.isEmpty() && (zbVar = listPa.get(0)) != null) {
            cVar.i(zbVar.c());
            cVar.c(new UpieImageView(this.f18384a, com.byazt.ic.c.i(this.f18393i), com.byazt.nj.c.c(this.f18393i), com.byazt.ic.c.da(this.f18393i)));
        }
        this.os = cVar.c(this.sp).tt(this.f18393i.uj()).ve(nb.my(this.f18393i)).uj(this.f18393i.w_()).c(jSONObjectC).c(this.tx).c(com.byazt.omf.gt.tt().c(this.sp, pu.tt(this.f18393i))).tt(zP).tt(this.f18393i.vi()).ve(this.f18393i.i()).n(com.byazt.jlk.tt.uj(this.f18393i)).c(com.byazt.jlk.tt.n(this.f18393i)).uj(getRenderThread()).n(this.f18393i.ge()).a(this.f18393i.tw()).sp(this.f18393i.br()).tt(this.f18393i.lv()).ve(this.f18393i.cy()).uj(this.f18393i.yx()).i(this.f18393i.pe()).x(this.f18393i.e()).sp(this.f18393i.dn()).x("https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/").c(com.byazt.omf.x.m().uj()).da(this.f18393i.eo()).uj(com.byazt.omf.gt.tt().tw()).c();
    }

    @Override // com.byazt.xl.z
    public void a_(final int i10) {
        this.iu = true;
        if (!this.f18386c) {
            this.tx.sl();
        }
        this.tx.t();
        com.byazt.xl.i iVar = this.tx;
        if (iVar instanceof da) {
            ((da) iVar).yp();
        }
        if (this.f18399n != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f18399n.c(this, com.byazt.omf.sp.c(i10), i10);
            } else {
                com.byazt.omf.rh.a().post(new Runnable() { // from class: com.byazt.ouz.NativeExpressView.4
                    @Override // java.lang.Runnable
                    public void run() {
                        if (NativeExpressView.this.f18399n != null) {
                            NativeExpressView.this.f18399n.c(NativeExpressView.this, com.byazt.omf.sp.c(i10), i10);
                        }
                    }
                });
            }
        }
    }

    @Override // com.byazt.xv.c
    public void b_(int i10) {
        com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
        if (ujVar == null || !(ujVar instanceof yp)) {
            return;
        }
        ((yp) ujVar).b_(i10);
    }

    public long c() {
        return 0L;
    }

    public void da() {
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int i10;
        com.byazt.hkv.c cVar = this.gu;
        if (cVar != null) {
            cVar.ve(motionEvent.getDeviceId());
            this.gu.tt(motionEvent.getSource());
            this.gu.uj(motionEvent.getToolType(0));
        }
        com.byazt.hkv.tt ttVar = this.gr;
        if (ttVar != null) {
            ttVar.ve(motionEvent.getDeviceId());
            this.gr.tt(motionEvent.getSource());
            this.gr.uj(motionEvent.getToolType(0));
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.dz = motionEvent.getRawX();
            this.f18398ma = motionEvent.getRawY();
            this.ir = System.currentTimeMillis();
            i10 = 0;
        } else if (actionMasked == 1) {
            i10 = 3;
        } else if (actionMasked != 2) {
            i10 = actionMasked != 3 ? -1 : 4;
        } else {
            this.yf += Math.abs(motionEvent.getX() - this.dz);
            this.f18389f += Math.abs(motionEvent.getY() - this.f18398ma);
            this.dz = motionEvent.getX();
            this.f18398ma = motionEvent.getY();
            i10 = (System.currentTimeMillis() - this.ir <= 200 || (this.yf <= 8.0f && this.f18389f <= 8.0f)) ? 2 : 1;
        }
        SparseArray<com.byazt.hkv.uj.c> sparseArray = this.f18395j;
        if (sparseArray != null) {
            sparseArray.put(motionEvent.getActionMasked(), new com.byazt.hkv.uj.c(i10, motionEvent.getSize(), motionEvent.getPressure(), System.currentTimeMillis()));
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public com.byazt.ddx.n getAdShowTime() {
        return this.f18400nb;
    }

    public com.byazt.hkv.c getClickCreativeListener() {
        return this.gu;
    }

    public com.byazt.hkv.tt getClickListener() {
        return this.gr;
    }

    public int getDynamicShowType() {
        com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
        if (ujVar != null) {
            return ujVar.ve();
        }
        return 0;
    }

    public FrameLayout getEasyPlayableLayout() {
        return this.qp;
    }

    public int getExpectExpressHeight() {
        return Float.valueOf(this.md).intValue();
    }

    public int getExpectExpressWidth() {
        return Float.valueOf(this.f18401p).intValue();
    }

    public c getExpressInteractionListener() {
        return this.f18399n;
    }

    public d getJsObject() {
        yv yvVar = this.lo;
        if (yvVar != null) {
            return yvVar.J_();
        }
        return null;
    }

    public int getRenderEngineCacheType() {
        sp spVarZ;
        com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
        if (!(ujVar instanceof yv) || (spVarZ = ((yv) ujVar).z()) == null) {
            return 0;
        }
        return spVarZ.c();
    }

    public byte getShowDLFactorsEventParams() {
        if (!com.byazt.wz.x.a(this.f18393i)) {
            return (byte) -1;
        }
        boolean zUj = com.byazt.yih.c.uj(this.f18393i);
        boolean z10 = this.bx.get();
        if (zUj) {
            if (z10) {
                return (byte) 3;
            }
            if (!rl()) {
                return (byte) 1;
            }
        } else if (z10) {
            return (byte) 2;
        }
        return (byte) 0;
    }

    public com.byazt.atv.sp getUGenV3Render() {
        return this.pu;
    }

    public ViewGroup getVideoContainer() {
        return this.yp;
    }

    public com.byazt.dh.ve getVideoController() {
        return null;
    }

    public SSWebView getWebView() {
        yv yvVar = this.lo;
        if (yvVar == null) {
            return null;
        }
        return yvVar.c();
    }

    public void gt() {
        com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
        if (!(ujVar instanceof com.byazt.atv.n) || (ujVar instanceof com.byazt.atv.sp)) {
            return;
        }
        ((com.byazt.atv.n) ujVar).uj();
    }

    public void i() {
        Dialog dialog = this.uj;
        if (dialog != null) {
            dialog.show();
            return;
        }
        com.byazt.dyf.tt ttVar = this.ve;
        if (ttVar != null) {
            ttVar.showDislikeDialog();
        } else {
            TTDelegateActivity.c(getContext(), this.f18393i);
        }
    }

    public void m() {
        if (!com.byazt.omf.gt.tt().uv() || !this.iu) {
            if (com.byazt.omf.gt.tt().ra() && com.byazt.bzd.x.c()) {
                com.byazt.nr.da.ve().post(new Runnable() { // from class: com.byazt.ouz.NativeExpressView.10
                    @Override // java.lang.Runnable
                    public void run() {
                        NativeExpressView.this.eo();
                    }
                });
                return;
            } else {
                eo();
                return;
            }
        }
        if (this.f18399n != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f18399n.c(this, com.byazt.omf.sp.c(-16), -16);
            } else {
                com.byazt.omf.rh.a().post(new Runnable() { // from class: com.byazt.ouz.NativeExpressView.9
                    @Override // java.lang.Runnable
                    public void run() {
                        if (NativeExpressView.this.f18399n != null) {
                            NativeExpressView.this.f18399n.c(NativeExpressView.this, com.byazt.omf.sp.c(-16), -16);
                        }
                    }
                });
            }
        }
    }

    public void my() {
        try {
            FrameLayout frameLayout = this.yp;
            if (frameLayout == null || frameLayout.getParent() == null) {
                return;
            }
            removeView(this.yp);
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.ouz.sl
    public void n() {
    }

    public void nu() {
        yv yvVar = this.lo;
        if (yvVar == null || yvVar.sp() == null) {
            return;
        }
        this.lo.n();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.byazt.nr.m.uj("webviewpool", "onAttachedToWindow+++");
        a(51);
        getViewTreeObserver().addOnScrollChangedListener(this.f18394ic);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            com.byazt.rbg.c cVar = this.f18391h;
            if (cVar != null) {
                cVar.tt(true);
            }
            getViewTreeObserver().removeOnScrollChangedListener(this.f18394ic);
        } catch (Exception unused) {
        }
        com.byazt.nr.m.uj("webviewpool", "onDetachedFromWindow===");
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        com.byazt.nr.m.uj("webviewpool", "onFinishTemporaryDetach+++");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        nu nuVar;
        return (!yv() || (nuVar = this.oz) == null) ? super.onInterceptTouchEvent(motionEvent) : nuVar.c(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        a(55);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        com.byazt.nr.m.uj("webviewpool", "onStartTemporaryDetach===");
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        nu nuVar;
        return (!yv() || (nuVar = this.oz) == null) ? super.onTouchEvent(motionEvent) : nuVar.tt(motionEvent);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        a(z10 ? 53 : 54);
        if (Build.VERSION.SDK_INT < 28) {
            onWindowVisibilityChanged(z10 ? getVisibility() : 8);
        }
        yv yvVar = this.lo;
        if (yvVar != null) {
            yvVar.tt(z10);
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        removeCallbacks(this.lr);
        removeCallbacks(this.bm);
        if (i10 == 0) {
            postDelayed(this.bm, 50L);
        } else {
            postDelayed(this.lr, 50L);
        }
    }

    public void qy() {
        qy qyVar = this.f18404s;
        if (qyVar != null) {
            qyVar.uj();
        }
    }

    public void rh() {
        com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
        if (ujVar instanceof com.byazt.atv.n) {
            ((com.byazt.atv.n) ujVar).nu();
        }
    }

    public boolean rl() {
        com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
        return ujVar != null && ujVar.ve() == 1;
    }

    public void setBackupListener(com.byazt.xl.ve veVar) {
        this.nu = veVar;
        com.byazt.xl.a aVar = this.f18385b;
        if (aVar != null) {
            aVar.c(veVar);
        }
    }

    public void setClickCreativeListener(com.byazt.hkv.c cVar) {
        this.gu = cVar;
    }

    public void setClickListener(com.byazt.hkv.tt ttVar) {
        this.gr = ttVar;
    }

    public void setDislike(com.byazt.dyf.tt ttVar) {
        BackupView backupView;
        com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
        if (ujVar != null && (ujVar instanceof my) && (backupView = (BackupView) ujVar.sp()) != null) {
            backupView.setDislikeInner(ttVar);
        }
        this.ve = ttVar;
        ic icVar = this.f18393i;
        if (icVar != null) {
            com.byazt.omf.rl.tt(icVar.lw(), ttVar, com.byazt.dyf.tt.class);
        }
    }

    public void setDynamicSkipListener(com.byazt.but.ve veVar) {
        this.f18409y = veVar;
    }

    public void setEasyPlayableSender(com.byazt.sy.sp spVar) {
        ExpressVideoView expressVideoView = this.sl;
        if (expressVideoView == null) {
            return;
        }
        expressVideoView.setEasyPlayableEventSender(spVar);
    }

    public void setExpressInteractionListener(c cVar) {
        this.f18399n = cVar;
    }

    public void setOuterDislike(Dialog dialog) {
        BackupView backupView;
        com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
        if (ujVar != null && (ujVar instanceof my) && (backupView = (BackupView) ujVar.sp()) != null) {
            backupView.setDislikeOuter(dialog);
        }
        this.uj = dialog;
        ic icVar = this.f18393i;
        if (icVar != null) {
            com.byazt.omf.rl.tt(icVar.lw(), dialog, Dialog.class);
        }
    }

    public void setPauseFromExpressView(boolean z10) {
    }

    @Override // com.byazt.kn.uj
    public void setSoundMute(boolean z10) {
        this.gt = z10;
        com.byazt.xl.tt ttVar = this.kp;
        if (ttVar != null && ttVar.tt() != null) {
            this.kp.tt().setSoundMute(z10);
        }
        com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
        if (ujVar == null || ujVar.ve() != 7) {
            return;
        }
        com.byazt.xl.uj<? extends View> ujVar2 = this.f18407v;
        if (ujVar2 instanceof com.byazt.atv.n) {
            ((com.byazt.kn.uj) ujVar2).setSoundMute(z10);
        }
    }

    public void setTimeUpdate(int i10) {
    }

    public void setVideoAdInteractionListener(com.byazt.dh.ve.InterfaceC0292ve interfaceC0292ve) {
        this.f18406u = interfaceC0292ve;
    }

    public void setVideoAdListener(com.byazt.dh.ve.uj ujVar) {
        this.f18405t = ujVar;
    }

    public void sl() {
        this.rl = new FrameLayout(this.f18384a);
        this.cu = new FrameLayout(this.f18384a);
        this.qp = new FrameLayout(this.f18384a);
        addView(this.rl);
        addView(this.cu);
        addView(this.qp);
        this.to = new ArrayList();
        com.byazt.dj.tt ttVar = this.f18408x;
        if (ttVar != null) {
            this.f18401p = ttVar.x();
            this.md = this.f18408x.i();
            gu();
            this.yv = this.f18408x.uj();
        }
        if (!yp()) {
            setBackgroundColor(0);
            setBackgroundResource(17170445);
            u();
        }
        zm();
        h();
        com.byazt.xl.m mVar = this.tk;
        if (mVar != null) {
            this.lo = (yv) mVar.tt();
        }
        if (yv()) {
            this.oz = new nu(this);
        }
    }

    public void t() {
        ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver;
        try {
            com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
            if (ujVar instanceof com.byazt.atv.n) {
                ((com.byazt.atv.n) ujVar).m();
            }
            removeAllViews();
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            Iterator<com.byazt.xl.da> it2 = this.to.iterator();
            while (it2.hasNext()) {
                it2.next().c();
            }
            this.ve = null;
            this.uj = null;
            this.f18408x = null;
            this.f18393i = null;
            this.gu = null;
            this.nu = null;
            this.gr = null;
            this.f18405t = null;
            this.f18406u = null;
            this.f18399n = null;
            Context context = this.f18384a;
            if (context != null && (themeStatusBroadcastReceiver = this.f18396l) != null) {
                context.unregisterReceiver(themeStatusBroadcastReceiver);
            }
            ExpressVideoView expressVideoView = this.sl;
            if (expressVideoView != null) {
                expressVideoView.gt();
            }
            View view = this.f18390g;
            if (view != null) {
                view.removeCallbacks(this.aw);
            }
            this.f18400nb.c(56);
        } catch (Throwable th) {
            com.byazt.nr.m.ve("NativeExpressView", "detach error", th);
        }
    }

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

    public void x() {
    }

    public void z() {
        com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
        if (ujVar instanceof yp) {
            ((yp) ujVar).x();
        } else if (ujVar instanceof com.byazt.atv.n) {
            ((com.byazt.atv.n) ujVar).z();
        }
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10) {
        if (this.pf.get() && this.f18400nb.c()) {
            this.f18400nb.c(zb.tt(this), i10);
        }
    }

    public void c(float f10) {
    }

    public void n(int i10) {
    }

    public void sp(int i10) {
        com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
        if (ujVar == null || !(ujVar instanceof yp)) {
            return;
        }
        ((yp) ujVar).tt(i10);
    }

    @Override // com.byazt.ouz.sl
    public void tt(int i10) {
    }

    public void uj(int i10) {
    }

    public void ve(int i10) {
    }

    public void x(int i10) {
        this.os.c(i10);
    }

    public void c(float f10, float f11, float f12, float f13, int i10) {
    }

    private void a(final ic icVar) {
        if (icVar == null) {
            tt(false);
            return;
        }
        if (com.byazt.wz.x.c(icVar) == 0) {
            tt(icVar, (com.byazt.ete.uj) null);
            return;
        }
        com.byazt.ete.uj ujVarC = com.byazt.yih.c.c(icVar);
        if (ujVarC != null) {
            if (ujVarC.sp()) {
                tt(icVar, ujVarC);
                return;
            } else {
                tt(false);
                return;
            }
        }
        final com.byazt.ete.n nVarZ = icVar.z();
        if (nVarZ == null) {
            tt(false);
        } else {
            com.byazt.bzd.x.c(new com.byazt.bwm.sp("pl_dlf") { // from class: com.byazt.ouz.NativeExpressView.12
                @Override // java.lang.Runnable
                public void run() {
                    final com.byazt.ete.uj ujVarC2 = com.byazt.omf.gt.c().c(NativeExpressView.this.f18393i, nVarZ.tt());
                    com.byazt.bzd.x.c((Runnable) new com.byazt.bwm.sp("pl_udlf") { // from class: com.byazt.ouz.NativeExpressView.12.1
                        @Override // java.lang.Runnable
                        public void run() {
                            com.byazt.ete.uj ujVar = ujVarC2;
                            if (ujVar == null || !ujVar.sp()) {
                                NativeExpressView.this.tt(false);
                                return;
                            }
                            try {
                                AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                                NativeExpressView.this.tt(icVar, ujVarC2);
                            } catch (Exception e10) {
                                com.byazt.ukr.yp.c().c("express_dl", e10);
                                NativeExpressView.this.tt(false);
                            }
                        }
                    });
                }
            });
        }
    }

    private void n(ic icVar) {
        try {
            if (com.byazt.wz.x.a(icVar) && !uj(icVar)) {
                if (!com.byazt.yih.c.uj(icVar)) {
                    tt(false);
                    return;
                } else {
                    a(icVar);
                    return;
                }
            }
            tt(false);
        } catch (Exception e10) {
            com.byazt.ukr.yp.c().c("express_dl", e10);
            tt(false);
        }
    }

    private com.byazt.rbg.c tt(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        com.byazt.ddx.da daVar = new com.byazt.ddx.da(this.sp, this.f18393i, jSONObject2, jSONObject);
        daVar.c(jSONObject2, "webview_source", (Object) 1);
        return daVar;
    }

    private boolean uj(ic icVar) {
        if (icVar == null) {
            return true;
        }
        if (nb.sl(icVar) != 8) {
            return this.md == 0.0f;
        }
        if (icVar.fr() == 0.0f || icVar.fr() == 100.0f) {
            return ((float) (this.cu.getHeight() == 0 ? pf.ve(getContext(), this.md) : this.cu.getHeight())) <= 0.0f;
        }
        return true;
    }

    public void c(int i10) {
    }

    public void ve(boolean z10) {
        yv yvVar = this.lo;
        if (yvVar != null) {
            yvVar.ve(z10);
        }
    }

    public void c(int i10, String str) {
    }

    public void sp() {
        if (yv() && TextUtils.equals(this.sp, com.byazt.dyf.tt.AD_TAG_FEED)) {
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            com.byazt.vo.tt ttVar = new com.byazt.vo.tt(this.f18393i.yg(), com.byazt.tl.uj.c());
            ttVar.tt("dislike");
            com.byazt.pr.c.c().c(this.f18384a, ttVar, "close_success");
        }
    }

    private float ve(ic icVar) {
        return (com.byazt.wz.x.n(icVar) && com.byazt.yih.c.uj(icVar)) ? 56.0f : 0.0f;
    }

    @Override // com.byazt.ouz.sl
    public void c(ic icVar) {
    }

    private void ve(ic icVar, Context context, String str) {
        if (icVar == null || context == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.aas.n.c(context, icVar, str);
    }

    @Override // com.byazt.qdk.tt
    public void c(String str) {
    }

    public void tt(View view, int i10, com.byazt.sr.ve veVar, int i11) {
        if (i10 == -1 || veVar == null) {
            return;
        }
        com.byazt.ete.gr grVar = (com.byazt.ete.gr) veVar;
        com.byazt.ete.da daVar = new com.byazt.ete.da();
        daVar.c(grVar.nu);
        daVar.c(grVar.f13648c);
        daVar.tt(grVar.tt);
        daVar.ve(grVar.ve);
        daVar.uj(grVar.uj);
        daVar.tt(grVar.f13656z);
        JSONObject jSONObjectC = grVar.c();
        int iOptInt = jSONObjectC.optInt("convertActionType", Integer.MIN_VALUE);
        daVar.uj(jSONObjectC.optBoolean("is_compliant_download"));
        if (iOptInt == 1) {
            if (i10 == 2) {
                this.gu.ve();
            } else {
                this.gr.ve();
            }
        } else if (iOptInt == 2) {
            if (i10 == 2) {
                this.gu.uj();
            } else {
                this.gr.uj();
            }
        }
        View view2 = view == null ? this : view;
        com.byazt.hkv.c cVar = this.gu;
        if (cVar != null) {
            cVar.n(getDynamicShowType());
        }
        com.byazt.hkv.tt ttVar = this.gr;
        if (ttVar != null) {
            ttVar.n(getDynamicShowType());
        }
        ic icVar = this.f18393i;
        int i12 = icVar != null ? icVar.i() : 0;
        switch (i10) {
            case 1:
                FrameLayout frameLayout = this.yp;
                if (frameLayout != null) {
                    frameLayout.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                }
                c(view2, i11, grVar, daVar, i12);
                break;
            case 2:
                tt(view2, i11, grVar, daVar, i12);
                break;
            case 3:
                i();
                break;
            case 4:
                FrameLayout frameLayout2 = this.yp;
                if (frameLayout2 != null) {
                    frameLayout2.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                }
                nb.gr(this.f18393i);
                if (com.byazt.dyf.tt.AD_TAG_FEED.equals(this.sp) && zb() && !this.f18410z && nb.gr(this.f18393i)) {
                    tt(view2, i11, grVar, daVar, i12);
                } else {
                    c(view2, i11, grVar, daVar, i12);
                }
                break;
            case 5:
                c(!this.gt);
                break;
            case 6:
                a();
                break;
            case 8:
                sp();
                break;
        }
    }

    public void c(View view, int i10, com.byazt.sr.ve veVar, v vVar) {
        this.eo = vVar;
        c(view, i10, veVar, -1);
        this.eo = null;
    }

    public void a() {
        com.byazt.but.ve veVar = this.f18409y;
        if (veVar != null) {
            veVar.c();
        }
    }

    @Override // com.byazt.qdk.tt
    public boolean c(String str, com.byazt.xj.ve veVar, com.byazt.qdk.ve veVar2) {
        str.hashCode();
        switch (str) {
            case "clickEvent":
            case "convert":
                c(veVar, veVar2, 2);
                return true;
            case "resumeVideo":
                c(3);
                return true;
            case "pauseVideo":
                c(2);
                return true;
            case "skip":
                a();
                return true;
            case "close":
                sp();
                return true;
            case "videoControl":
                c(veVar, veVar2, 4);
                return true;
            case "muteVideo":
                c(!this.gt);
                return true;
            case "interactiveFinish":
                c(veVar2);
                return true;
            case "dislike":
                i();
                return true;
            default:
                return false;
        }
    }

    private void c(com.byazt.xj.ve veVar, com.byazt.qdk.ve veVar2, int i10) {
        CharSequence text;
        com.byazt.ete.da daVar = (com.byazt.ete.da) veVar2.c("ugen_click_event_params", com.byazt.ete.da.class);
        com.byazt.ete.gr.c cVarC = new com.byazt.ete.gr.c().uj(daVar.nu()).ve(daVar.rh()).tt(daVar.my()).c(daVar.gt()).c(veVar.eo()).tt(daVar.z()).c(daVar.m()).c(com.byazt.atv.sp.tt(veVar2.c("v3_trigger_name")));
        JSONObject jSONObject = new JSONObject();
        int iC = veVar2.c("convert_action_type", 0);
        if (iC > 0) {
            try {
                jSONObject.put("convertActionType", iC);
            } catch (Throwable unused) {
            }
        }
        View viewI = veVar.i();
        try {
            if ((viewI instanceof TextView) && (text = ((TextView) viewI).getText()) != null && text.toString().contains("下载")) {
                jSONObject.put("is_compliant_download", true);
            }
        } catch (JSONException unused2) {
        }
        cVarC.c(jSONObject);
        c(viewI, i10, cVarC.c(), -1);
    }

    public NativeExpressView(boolean z10, Context context, ic icVar, com.byazt.dj.tt ttVar, String str, boolean z11) {
        super(context);
        this.f18386c = true;
        this.tt = 0;
        this.sp = com.byazt.dyf.tt.AD_TAG_FEED;
        this.zm = new AtomicBoolean(false);
        this.yv = null;
        this.f18397m = false;
        this.rh = false;
        this.gt = false;
        this.f18387d = false;
        this.pf = new AtomicBoolean(false);
        this.qy = false;
        this.bx = new AtomicBoolean(false);
        this.f18394ic = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.byazt.ouz.NativeExpressView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                NativeExpressView.this.a(57);
                NativeExpressView nativeExpressView = NativeExpressView.this;
                nativeExpressView.removeCallbacks(nativeExpressView.f18392hd);
                NativeExpressView nativeExpressView2 = NativeExpressView.this;
                nativeExpressView2.postDelayed(nativeExpressView2.f18392hd, 500L);
            }
        };
        this.f18392hd = new Runnable() { // from class: com.byazt.ouz.NativeExpressView.5
            @Override // java.lang.Runnable
            public void run() {
                if (!zb.tt(NativeExpressView.this, 0, 5)) {
                    NativeExpressView.this.sp(8);
                } else {
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.sp(nativeExpressView.getVisibility());
                }
            }
        };
        this.bm = new Runnable() { // from class: com.byazt.ouz.NativeExpressView.6
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.sp(0);
            }
        };
        this.lr = new Runnable() { // from class: com.byazt.ouz.NativeExpressView.7
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.sp(8);
            }
        };
        this.f18395j = new SparseArray<>();
        this.dz = -1.0f;
        this.f18398ma = -1.0f;
        this.yf = -1.0f;
        this.f18389f = -1.0f;
        this.ir = 0L;
        this.sp = str;
        this.f18384a = context;
        this.f18393i = icVar;
        this.f18400nb = new com.byazt.ddx.n(icVar, str);
        this.f18408x = ttVar;
        this.f18397m = z10;
        this.gt = z11;
        sl();
    }

    private void tt(View view, int i10, com.byazt.ete.gr grVar, com.byazt.ete.da daVar, int i11) {
        if (ic.a(this.f18393i)) {
            return;
        }
        com.byazt.hkv.c cVar = this.gu;
        if (cVar != null) {
            c(((com.byazt.nat.c) cVar.c(com.byazt.nat.c.class)).c(), i10);
            this.gu.c(grVar);
            this.gu.c(daVar);
            this.gu.c(view, daVar);
        }
        c cVar2 = this.f18399n;
        if (cVar2 != null) {
            cVar2.c(this, i11);
        }
    }

    public void c(View view, int i10, com.byazt.sr.ve veVar, int i11) {
        com.byazt.ete.da daVar;
        com.byazt.vis.c cVar;
        com.byazt.hkv.c cVar2;
        com.byazt.hkv.tt ttVar;
        if (i10 == -1 || veVar == null) {
            return;
        }
        com.byazt.ete.gr grVar = (com.byazt.ete.gr) veVar;
        com.byazt.hkv.c cVar3 = this.gu;
        if (cVar3 != null) {
            cVar3.n(getDynamicShowType());
        }
        com.byazt.hkv.tt ttVar2 = this.gr;
        if (ttVar2 != null) {
            ttVar2.n(getDynamicShowType());
        }
        if (i10 != 1 || (ttVar = this.gr) == null) {
            daVar = null;
            cVar = null;
        } else {
            daVar = ttVar.tt();
            cVar = (com.byazt.vis.c) this.gr.c(com.byazt.vis.c.class);
            cVar.c(cVar.n());
        }
        if (i10 == 2 && (cVar2 = this.gu) != null) {
            daVar = cVar2.tt();
            cVar = (com.byazt.vis.c) this.gu.c(com.byazt.vis.c.class);
            cVar.c(cVar.n());
        }
        try {
            Object obj = grVar.c().get("click_extra_map");
            if (cVar != null && (obj instanceof Map)) {
                cVar.c((Map<String, Object>) obj);
            }
        } catch (JSONException unused) {
        }
        if (daVar == null) {
            daVar = new com.byazt.ete.da();
        }
        if (this.eo != null) {
            daVar.tt(this);
        }
        daVar.c(grVar.f13648c);
        daVar.tt(grVar.tt);
        daVar.ve(grVar.ve);
        daVar.uj(grVar.uj);
        daVar.tt(grVar.f13656z);
        daVar.sp(grVar.my);
        daVar.c(com.byazt.ete.qy.c(this.f18393i, grVar.rh));
        daVar.tt(grVar.rh);
        daVar.c(grVar.f13651m);
        daVar.tt(getShowDLFactorsEventParams());
        SparseArray<com.byazt.hkv.uj.c> sparseArray = grVar.nu;
        if (sparseArray == null || sparseArray.size() == 0) {
            sparseArray = this.f18395j;
        }
        daVar.c(sparseArray);
        JSONObject jSONObjectC = grVar.c();
        daVar.uj(jSONObjectC.optBoolean("is_compliant_download"));
        String strOptString = jSONObjectC.optString("uchain_event_name");
        daVar.ve(strOptString);
        daVar.c(this.qy);
        int iOptInt = jSONObjectC.optInt("convertActionType", Integer.MIN_VALUE);
        if (iOptInt == 1) {
            if (i10 == 2) {
                com.byazt.hkv.c cVar4 = this.gu;
                if (cVar4 != null) {
                    cVar4.ve();
                }
            } else {
                com.byazt.hkv.tt ttVar3 = this.gr;
                if (ttVar3 != null) {
                    ttVar3.ve();
                }
            }
        } else if (iOptInt == 2) {
            if (i10 == 2) {
                com.byazt.hkv.c cVar5 = this.gu;
                if (cVar5 != null) {
                    cVar5.uj();
                }
            } else {
                com.byazt.hkv.tt ttVar4 = this.gr;
                if (ttVar4 != null) {
                    ttVar4.uj();
                }
            }
        }
        View view2 = view == null ? this : view;
        String str = grVar.sl;
        ic icVar = this.f18393i;
        int i12 = icVar != null ? icVar.i() : 0;
        switch (i10) {
            case 1:
                FrameLayout frameLayout = this.yp;
                if (frameLayout != null) {
                    frameLayout.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                }
                c(view2, grVar, daVar, 0, str, i12, i11);
                break;
            case 2:
                c(view2, grVar, daVar, str, i12, i11);
                break;
            case 3:
                i();
                break;
            case 4:
                FrameLayout frameLayout2 = this.yp;
                if (frameLayout2 != null) {
                    frameLayout2.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                }
                nb.gr(this.f18393i);
                if (com.byazt.dyf.tt.AD_TAG_FEED.equals(this.sp) && zb() && !this.f18410z && nb.gr(this.f18393i)) {
                    c(view2, grVar, daVar, str, i12, i11);
                } else {
                    c(view2, grVar, daVar, 0, str, i12, i11);
                }
                break;
            case 5:
                c(!this.gt);
                break;
            case 6:
                a();
                break;
            case 7:
                if (!nb.c(strOptString, this.f18393i, this.f18384a)) {
                    com.byazt.aas.n.c(this.f18384a, this.f18393i);
                }
                break;
            case 8:
                sp();
                break;
            case 9:
                tt(this.f18393i, this.f18384a, this.sp);
                break;
            case 10:
                c(this.f18393i, this.f18384a, this.sp);
                break;
            case 12:
                ve(this.f18393i, this.f18384a, this.sp);
                break;
            case 13:
                String strOptString2 = jSONObjectC.optString("openCommonWebUrl", "");
                String strOptString3 = jSONObjectC.optString("openCommonWebTitle", "");
                if (!TextUtils.isEmpty(strOptString2)) {
                    TTDelegateActivity.uj(this.f18384a, strOptString2, strOptString3);
                }
                break;
        }
    }

    private void tt(com.byazt.pop.ve veVar, int i10) {
        if (veVar == null) {
            return;
        }
        if (veVar instanceof com.byazt.wz.c) {
            ((com.byazt.wz.c) veVar).x().tt(i10);
        }
        veVar.uj(this.bx.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(ic icVar, com.byazt.ete.uj ujVar) {
        c(icVar, ujVar);
        tt(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(final boolean z10) {
        d dVarJ_;
        this.bx.set(z10);
        FrameLayout frameLayout = this.sv;
        if (frameLayout != null) {
            frameLayout.postDelayed(new Runnable() { // from class: com.byazt.ouz.NativeExpressView.2
                @Override // java.lang.Runnable
                public void run() {
                    if (NativeExpressView.this.sv != null) {
                        NativeExpressView.this.sv.setVisibility(z10 ? 0 : 8);
                    }
                }
            }, 10L);
        }
        com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
        if (ujVar == null || !(ujVar instanceof yv) || (dVarJ_ = ((yv) ujVar).J_()) == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("result", z10);
            dVarJ_.tt("isShow7Factors", jSONObject);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    public NativeExpressView(Context context, ic icVar, com.byazt.dj.tt ttVar, String str, boolean z10) {
        super(context);
        this.f18386c = true;
        this.tt = 0;
        this.sp = com.byazt.dyf.tt.AD_TAG_FEED;
        this.zm = new AtomicBoolean(false);
        this.yv = null;
        this.f18397m = false;
        this.rh = false;
        this.gt = false;
        this.f18387d = false;
        this.pf = new AtomicBoolean(false);
        this.qy = false;
        this.bx = new AtomicBoolean(false);
        this.f18394ic = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.byazt.ouz.NativeExpressView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                NativeExpressView.this.a(57);
                NativeExpressView nativeExpressView = NativeExpressView.this;
                nativeExpressView.removeCallbacks(nativeExpressView.f18392hd);
                NativeExpressView nativeExpressView2 = NativeExpressView.this;
                nativeExpressView2.postDelayed(nativeExpressView2.f18392hd, 500L);
            }
        };
        this.f18392hd = new Runnable() { // from class: com.byazt.ouz.NativeExpressView.5
            @Override // java.lang.Runnable
            public void run() {
                if (!zb.tt(NativeExpressView.this, 0, 5)) {
                    NativeExpressView.this.sp(8);
                } else {
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.sp(nativeExpressView.getVisibility());
                }
            }
        };
        this.bm = new Runnable() { // from class: com.byazt.ouz.NativeExpressView.6
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.sp(0);
            }
        };
        this.lr = new Runnable() { // from class: com.byazt.ouz.NativeExpressView.7
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.sp(8);
            }
        };
        this.f18395j = new SparseArray<>();
        this.dz = -1.0f;
        this.f18398ma = -1.0f;
        this.yf = -1.0f;
        this.f18389f = -1.0f;
        this.ir = 0L;
        this.sp = str;
        this.f18384a = context;
        this.f18393i = icVar;
        this.f18400nb = new com.byazt.ddx.n(icVar, str);
        this.f18408x = ttVar;
        this.gt = z10;
        if (ttVar.gt() == 9) {
            this.f18397m = ttVar.z() == 2;
        }
        sl();
    }

    public void tt(com.byazt.xl.uj<? extends View> ujVar, com.byazt.xl.yp ypVar) {
        int iVe;
        try {
            this.f18407v = ujVar;
            this.kk = ypVar;
            if (ujVar.ve() != 1) {
                View viewSp = ujVar.sp();
                this.f18390g = viewSp;
                if (viewSp.getParent() != null) {
                    ((ViewGroup) this.f18390g.getParent()).removeView(this.f18390g);
                }
                this.cu.addView(this.f18390g);
                if (ypVar.tt() == 10) {
                    if (ypVar.n() == 0.0d) {
                        int iC = (int) pu.c(this.f18393i, ypVar.uj());
                        if (iC <= 0) {
                            iVe = pf.n(getContext());
                        } else {
                            iVe = pf.ve(getContext(), iC);
                        }
                        this.f18390g.setLayoutParams(new FrameLayout.LayoutParams(-1, iVe));
                    }
                    if (this.f18393i.rm() == 1) {
                        Runnable runnable = new Runnable() { // from class: com.byazt.ouz.NativeExpressView.3
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    if (NativeExpressView.this.f18390g != null) {
                                        View childAt = ((ViewGroup) NativeExpressView.this.f18390g).getChildAt(0);
                                        View childAt2 = ((ViewGroup) childAt).getChildAt(0);
                                        if (childAt2.getMeasuredHeight() < childAt.getMeasuredHeight()) {
                                            NativeExpressView.this.f18390g.setLayoutParams(new FrameLayout.LayoutParams(-1, childAt2.getHeight()));
                                            NativeExpressView.this.cu.requestLayout();
                                        }
                                    }
                                } catch (Exception unused) {
                                }
                            }
                        };
                        this.aw = runnable;
                        this.f18390g.post(runnable);
                    }
                }
                ViewGroup.LayoutParams layoutParams = this.f18390g.getLayoutParams();
                if (layoutParams instanceof FrameLayout.LayoutParams) {
                    ((FrameLayout.LayoutParams) layoutParams).gravity = 1;
                }
                n(this.f18393i);
                if (this.f18404s != null && (ujVar instanceof com.byazt.atv.n) && !(ujVar instanceof com.byazt.atv.sp)) {
                    this.f18404s.c(((com.byazt.atv.n) ujVar).i());
                    this.f18404s.c(this);
                }
            }
            com.byazt.xl.i iVar = this.tx;
            if (iVar instanceof da) {
                ((da) iVar).yp();
            }
            if (this.f18391h != null && ujVar.ve() != 0) {
                this.f18391h.c(ujVar.ve(), ypVar.sl(), ypVar.da());
            }
            com.byazt.xl.uj<? extends View> ujVar2 = this.f18407v;
            if ((ujVar2 instanceof z) && ((z) ujVar2).J_() != null) {
                ((z) this.f18407v).J_().c((sl) this);
            }
            if (ypVar.tt() == 10 && (ypVar instanceof com.byazt.atv.ve)) {
                this.f18411zb = ((com.byazt.atv.ve) ypVar).rh();
            }
            c cVar = this.f18399n;
            if (cVar != null) {
                cVar.c(this, (float) ypVar.uj(), (float) ypVar.n());
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public NativeExpressView(Context context, ic icVar, com.byazt.dj.tt ttVar, String str, boolean z10, String str2) {
        super(context);
        this.f18386c = true;
        this.tt = 0;
        this.sp = com.byazt.dyf.tt.AD_TAG_FEED;
        this.zm = new AtomicBoolean(false);
        this.yv = null;
        this.f18397m = false;
        this.rh = false;
        this.gt = false;
        this.f18387d = false;
        this.pf = new AtomicBoolean(false);
        this.qy = false;
        this.bx = new AtomicBoolean(false);
        this.f18394ic = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.byazt.ouz.NativeExpressView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                NativeExpressView.this.a(57);
                NativeExpressView nativeExpressView = NativeExpressView.this;
                nativeExpressView.removeCallbacks(nativeExpressView.f18392hd);
                NativeExpressView nativeExpressView2 = NativeExpressView.this;
                nativeExpressView2.postDelayed(nativeExpressView2.f18392hd, 500L);
            }
        };
        this.f18392hd = new Runnable() { // from class: com.byazt.ouz.NativeExpressView.5
            @Override // java.lang.Runnable
            public void run() {
                if (!zb.tt(NativeExpressView.this, 0, 5)) {
                    NativeExpressView.this.sp(8);
                } else {
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.sp(nativeExpressView.getVisibility());
                }
            }
        };
        this.bm = new Runnable() { // from class: com.byazt.ouz.NativeExpressView.6
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.sp(0);
            }
        };
        this.lr = new Runnable() { // from class: com.byazt.ouz.NativeExpressView.7
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.sp(8);
            }
        };
        this.f18395j = new SparseArray<>();
        this.dz = -1.0f;
        this.f18398ma = -1.0f;
        this.yf = -1.0f;
        this.f18389f = -1.0f;
        this.ir = 0L;
        this.sp = str;
        this.f18384a = context;
        this.f18393i = icVar;
        this.f18400nb = new com.byazt.ddx.n(icVar, str);
        this.f18388da = str2;
        this.f18408x = ttVar;
        this.gt = z10;
        if (ttVar.gt() == 9) {
            this.f18397m = ttVar.z() == 2;
        }
        sl();
    }

    private void tt(ic icVar, Context context, String str) {
        if (icVar == null || context == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.aas.n.tt(icVar, context, str);
    }

    public void tt(int i10, String str) {
        d dVarJ_;
        com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
        if (ujVar == null || !(ujVar instanceof yv) || (dVarJ_ = ((yv) ujVar).J_()) == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("time", i10);
            jSONObject.put("flag", str);
            dVarJ_.tt("onVideoPaused", jSONObject);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.ouz.m
    public void tt(ic icVar) {
        if (icVar != null) {
            n(icVar);
        }
    }

    private void c(View view, com.byazt.ete.gr grVar, com.byazt.ete.da daVar, String str, int i10, int i11) {
        if (ic.a(this.f18393i)) {
            return;
        }
        com.byazt.hkv.c cVar = this.gu;
        if (cVar != null) {
            cVar.c(grVar);
            tt(((com.byazt.nat.c) this.gr.c(com.byazt.nat.c.class)).c(), i11);
            com.byazt.vis.c cVar2 = (com.byazt.vis.c) this.gu.c(com.byazt.vis.c.class);
            c(cVar2);
            cVar2.tt(str);
            this.gu.c(daVar);
            Map<String, Object> mapC = com.byazt.rv.c.c().c(this.f18393i.hashCode() + this.f18393i.qy());
            mapC.put("convert_tag", grVar.rh);
            mapC.put("dpa_convert", com.byazt.ete.qy.uj(this.f18393i.u(), grVar.rh));
            c(grVar, mapC);
            this.gu.c(view, daVar);
        }
        c cVar3 = this.f18399n;
        if (cVar3 != null) {
            cVar3.c(this, i10);
        }
    }

    public void c(com.byazt.ete.gr grVar, Map<String, Object> map) {
        try {
            map.put("live_saas_interaction_type", Integer.valueOf(grVar.c().optInt("live_saas_param_interaction_type", -1)));
        } catch (Exception unused) {
        }
    }

    private void c(com.byazt.vis.c cVar) {
        v vVar = this.eo;
        if (vVar != null) {
            HashMap map = new HashMap();
            map.put("custom_express_gesture", 1);
            map.put("express_gesture_type", Integer.valueOf(vVar.tt()));
            map.put("express_slide_direction", Integer.valueOf(vVar.uj()));
            map.put("express_slide_threshold", Double.valueOf(vVar.ve()));
            cVar.c(map);
        }
    }

    private void c(View view, com.byazt.ete.gr grVar, com.byazt.ete.da daVar, int i10, String str, int i11, int i12) {
        if (ic.a(this.f18393i)) {
            return;
        }
        com.byazt.hkv.tt ttVar = this.gr;
        if (ttVar != null) {
            ttVar.c(grVar);
            tt(((com.byazt.nat.c) this.gr.c(com.byazt.nat.c.class)).c(), i12);
            com.byazt.vis.c cVar = (com.byazt.vis.c) this.gr.c(com.byazt.vis.c.class);
            c(cVar);
            cVar.tt(str);
            this.gr.c(daVar);
            Map<String, Object> mapC = com.byazt.rv.c.c().c(this.f18393i.hashCode() + this.f18393i.qy());
            mapC.put("convert_tag", grVar.rh);
            mapC.put("dpa_convert", com.byazt.ete.qy.uj(this.f18393i.u(), grVar.rh));
            c(grVar, mapC);
            this.gr.c(view, daVar);
        }
        c cVar2 = this.f18399n;
        if (cVar2 != null) {
            cVar2.c(this, i11);
        }
    }

    private void c(View view, int i10, com.byazt.ete.gr grVar, com.byazt.ete.da daVar, int i11) {
        if (ic.a(this.f18393i)) {
            return;
        }
        com.byazt.hkv.tt ttVar = this.gr;
        if (ttVar != null) {
            c(((com.byazt.nat.c) ttVar.c(com.byazt.nat.c.class)).c(), i10);
            this.gr.c(grVar);
            this.gr.c(daVar);
            this.gr.c(view, daVar);
        }
        c cVar = this.f18399n;
        if (cVar != null) {
            cVar.c(this, i11);
        }
    }

    private void c(com.byazt.pop.ve veVar, int i10) {
        if (veVar == null) {
            return;
        }
        if (veVar instanceof com.byazt.wz.c) {
            com.byazt.yzg.ve veVarX = ((com.byazt.wz.c) veVar).x();
            veVarX.tt(true);
            veVarX.c(i10);
        }
        veVar.uj(this.bx.get());
    }

    @Override // com.byazt.xl.z
    public void c(final com.byazt.xl.uj<? extends View> ujVar, final com.byazt.xl.yp ypVar) {
        this.iu = true;
        this.pf.set(true);
        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.ouz.NativeExpressView.11
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.tt(ujVar, ypVar);
            }
        });
    }

    private void c(ic icVar, com.byazt.ete.uj ujVar) {
        FrameLayout frameLayout = this.sv;
        if (frameLayout != null && frameLayout.getParent() != null) {
            removeView(this.sv);
        }
        int iSl = nb.sl(icVar);
        FrameLayout frameLayoutC = com.byazt.wz.x.c(getContext(), icVar, ujVar, iSl);
        this.sv = frameLayoutC;
        frameLayoutC.setBackgroundColor(Color.parseColor("#161823"));
        float fVe = ve(icVar);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, pf.ve(getContext(), fVe));
        float f10 = this.md;
        float f11 = (f10 - fVe) / f10;
        layoutParams.gravity = iSl == 8 ? 48 : 80;
        int iVe = pf.ve(getContext(), this.md);
        this.sv.setVisibility(4);
        removeView(this.rl);
        removeView(this.cu);
        FrameLayout frameLayout2 = this.or;
        if (frameLayout2 != null) {
            frameLayout2.removeAllViews();
            removeView(this.or);
        } else {
            this.or = new FrameLayout(this.f18384a);
        }
        this.or.addView(this.rl);
        this.or.addView(this.cu);
        addView(this.or, 0);
        this.or.setBackgroundColor(0);
        this.or.setPivotX(0.0f);
        if (this.cu.getHeight() != 0) {
            iVe = this.cu.getHeight();
        }
        this.or.setPivotY(iSl == 8 ? iVe : 0.0f);
        this.or.setScaleY(f11);
        addView(this.sv, layoutParams);
    }

    public void c(MotionEvent motionEvent) {
        View view = this.f18390g;
        if (view != null) {
            view.dispatchTouchEvent(motionEvent);
        }
    }

    @Override // com.byazt.kn.uj
    public void c(CharSequence charSequence, int i10, int i11, boolean z10) {
        c(Integer.parseInt(String.valueOf(charSequence)), i10, z10);
    }

    public void c(int i10, int i11, boolean z10) {
        int iUj;
        if (TextUtils.equals(this.sp, "fullscreen_interstitial_ad")) {
            iUj = (!h.c(this.f18393i) || h.tt(this.f18393i) <= 0) ? com.byazt.omf.gt.tt().n(Integer.parseInt(this.yv)) : 0;
        } else if (!TextUtils.equals(this.sp, "rewarded_video")) {
            return;
        } else {
            iUj = com.byazt.omf.gt.tt().uj(Integer.parseInt(this.yv));
        }
        int i12 = (i11 >= iUj || z10) ? 1 : 0;
        int i13 = i11 <= iUj ? iUj - i11 : 0;
        com.byazt.xl.tt ttVar = this.kp;
        if (ttVar != null && ttVar.tt() != null) {
            this.kp.tt().c(String.valueOf(i10), i12, i13, z10);
        }
        com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
        if (ujVar != null) {
            if (ujVar.ve() == 7 || this.f18407v.ve() == 10) {
                com.byazt.xl.uj<? extends View> ujVar2 = this.f18407v;
                if (ujVar2 instanceof com.byazt.atv.n) {
                    ((com.byazt.kn.uj) ujVar2).c(String.valueOf(i10), i12, i13, z10);
                }
            }
        }
    }

    private void c(ic icVar, Context context, String str) {
        if (icVar == null || context == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.aas.n.ve(icVar, context, str);
    }

    private void c(com.byazt.qdk.ve veVar) {
        tt(com.byazt.qx.gu.c(this.f18393i, veVar.c("reduce_duration", 0)));
    }

    public void c(boolean z10) {
        if (this.f18407v.ve() == 7) {
            com.byazt.xl.uj<? extends View> ujVar = this.f18407v;
            if (ujVar instanceof com.byazt.atv.n) {
                ((com.byazt.kn.uj) ujVar).setSoundMute(z10);
            }
        }
    }

    public void c(JSONObject jSONObject) {
        boolean zGu = com.byazt.omf.gt.tt().gu();
        this.f18403r = zGu;
        if (zGu && nb.uj(this.f18393i)) {
            this.f18404s = new qy(this.f18393i, jSONObject, this);
        }
    }

    public void c(int i10, int i11) {
        com.byazt.qmz.c cVar = this.f18411zb;
        if (cVar != null) {
            cVar.c(i10, i11);
        }
    }
}
